Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 845CB118EBB
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 18:16:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2DFE6E8BE;
	Tue, 10 Dec 2019 17:16:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 426 seconds by postgrey-1.36 at gabe;
 Tue, 10 Dec 2019 17:16:31 UTC
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B819B6E8BE
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 17:16:31 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 09:09:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,300,1571727600"; d="scan'208";a="238238221"
Received: from linux.fm.intel.com (HELO intel.com) ([10.1.27.42])
 by fmsmga004.fm.intel.com with ESMTP; 10 Dec 2019 09:09:15 -0800
Date: Tue, 10 Dec 2019 09:09:15 -0800
From: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191210170915.GA47225@intel.com>
References: <20191210153620.3929372-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210153620.3929372-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Check we are the Ironlake IPS
 provider before deregistering
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 19/12/10 03:36, Chris Wilson wrote:
> Check that we own the global pointer before deregistering.
> 
> Reported-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
> Cc: Andi Shyti <andi.shyti@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_rps.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> index 08a38a3b90b0..fd01e4100fc1 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -1715,6 +1715,7 @@ void intel_rps_driver_register(struct intel_rps *rps)
>  	 * set up, to avoid intel-ips sneaking in and reading bogus values.
>  	 */
>  	if (IS_GEN(gt->i915, 5)) {
> +		GEM_BUG_ON(ips_mchdev);
>  		rcu_assign_pointer(ips_mchdev, gt->i915);
>  		ips_ping_for_i915_load();
>  	}
> @@ -1722,7 +1723,8 @@ void intel_rps_driver_register(struct intel_rps *rps)
>  
>  void intel_rps_driver_unregister(struct intel_rps *rps)
>  {
> -	rcu_assign_pointer(ips_mchdev, NULL);
> +	if (ips_mchdev == rps_to_i915(rps))
> +		rcu_assign_pointer(ips_mchdev, NULL);
>  }
I think its right thing to do, looks good to me.

Reviewed-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
>  
>  static struct drm_i915_private *mchdev_get(void)
> -- 
> 2.24.0
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
