Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A621911C755
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 09:20:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDFA96ECA6;
	Thu, 12 Dec 2019 08:20:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 425 seconds by postgrey-1.36 at gabe;
 Thu, 12 Dec 2019 08:20:56 UTC
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97ED76ECA6
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 08:20:56 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 00:13:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,305,1571727600"; d="scan'208";a="220640965"
Received: from linux.fm.intel.com (HELO intel.com) ([10.1.27.42])
 by fmsmga001.fm.intel.com with ESMTP; 12 Dec 2019 00:13:26 -0800
Date: Thu, 12 Dec 2019 00:13:26 -0800
From: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191212081325.GA28505@intel.com>
References: <20191211225039.431594-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211225039.431594-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Mark up ips_mchdev pointer
 access
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

On 19/12/11 10:50, Chris Wilson wrote:
> drivers/gpu/drm/i915/gt/intel_rps.c:1726:24: error: incompatible types in comparison expression (different address spaces):
> drivers/gpu/drm/i915/gt/intel_rps.c:1726:24:    struct drm_i915_private [noderef] <asn:4> *
> drivers/gpu/drm/i915/gt/intel_rps.c:1726:24:    struct drm_i915_private *
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/intel_rps.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> index fd01e4100fc1..106c9fce9d6c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -1723,7 +1723,7 @@ void intel_rps_driver_register(struct intel_rps *rps)
>  
>  void intel_rps_driver_unregister(struct intel_rps *rps)
>  {
> -	if (ips_mchdev == rps_to_i915(rps))
> +	if (rcu_access_pointer(ips_mchdev) == rps_to_i915(rps))
>  		rcu_assign_pointer(ips_mchdev, NULL);
>  }
My bad, I missed to spot this in previous patch.
Can we squash this with the other patch, if it was not merged already?
>  
> -- 
> 2.24.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
