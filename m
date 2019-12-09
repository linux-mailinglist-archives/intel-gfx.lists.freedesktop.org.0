Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B45117D52
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 02:42:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FACB6E5A3;
	Tue, 10 Dec 2019 01:42:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 3606 seconds by postgrey-1.36 at gabe;
 Tue, 10 Dec 2019 01:42:52 UTC
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FD466E5A3
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 01:42:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19519444-1500050 for multiple; Mon, 09 Dec 2019 23:25:53 +0000
MIME-Version: 1.0
To: Andi Shyti <andi@etezian.org>, Intel GFX <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191209223556.3897-2-andi@etezian.org>
References: <20191209223556.3897-1-andi@etezian.org>
 <20191209223556.3897-2-andi@etezian.org>
Message-ID: <157593395225.10362.12592210425691459593@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 09 Dec 2019 23:25:52 +0000
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/rps: Add frequency translation
 helpers
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Andi Shyti (2019-12-09 22:35:55)
> From: Andi Shyti <andi.shyti@intel.com>
> 
> Add two helpers that for reading the actual GT's frequency. The
> two helpers are:
> 
>  - intel_cagf_read: reads the frequency and returns it not
>    normalized
> 
>  - intel_cagf_freq_read: provides the frequency in Hz.
> 
> Use the above helpers in sysfs and debugfs.
> 
> Signed-off-by: Andi Shyti <andi.shyti@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_rps.c | 22 ++++++++++++++++++++++
>  drivers/gpu/drm/i915/gt/intel_rps.h |  2 ++
>  drivers/gpu/drm/i915/i915_debugfs.c | 21 +++++----------------
>  drivers/gpu/drm/i915/i915_sysfs.c   | 14 ++------------
>  4 files changed, 31 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> index 08a38a3b90b0..72c3dd976e32 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -1682,6 +1682,28 @@ u32 intel_get_cagf(struct intel_rps *rps, u32 rpstat)
>         return  cagf;
>  }
>  
> +u32 intel_cagf_read(struct intel_rps *rps)
> +{
> +       struct drm_i915_private *i915 = rps_to_i915(rps);
> +       u32 freq;
> +
> +       if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
> +               vlv_punit_get(i915);
> +               freq = vlv_punit_read(i915, PUNIT_REG_GPU_FREQ_STS);
> +               vlv_punit_put(i915);
> +
> +               return (freq >> 8) & 0xff;
> +       }
> +
> +       return intel_get_cagf(rps, intel_uncore_read(rps_to_gt(rps)->uncore,
> +                                                    GEN6_RPSTAT1));
> +}
> +
> +u32 intel_cagf_freq_read(struct intel_rps *rps)
> +{
> +       return intel_gpu_freq(rps, intel_cagf_read(rps));

Thinking about this far too much, this should be something along the
lines of
	intel_rps_read_actual_frequency(struct intel_rps *rps)
since it operates on the intel_rps object and
	intel_rps_read_cagf()
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
