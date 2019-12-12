Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B09311D270
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 17:40:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C56016E081;
	Thu, 12 Dec 2019 16:39:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 567556E081
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 16:39:56 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 08:39:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,306,1571727600"; d="scan'208";a="211172371"
Received: from linux.fm.intel.com (HELO intel.com) ([10.1.27.42])
 by fmsmga008.fm.intel.com with ESMTP; 12 Dec 2019 08:39:55 -0800
Date: Thu, 12 Dec 2019 08:39:55 -0800
From: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191212163955.GB28505@intel.com>
References: <20191212140459.1307617-1-chris@chris-wilson.co.uk>
 <20191212140459.1307617-7-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191212140459.1307617-7-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 07/33] drm/i915/gt: Mark up ips_mchdev
 pointer access
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

On 19/12/12 02:04, Chris Wilson wrote:
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
Right way to access rcu pointer.

Reviewed-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
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
