Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C9417339A
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 10:18:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A134C6EE91;
	Fri, 28 Feb 2020 09:18:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75D9A6EE91
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 09:18:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 01:18:50 -0800
X-IronPort-AV: E=Sophos;i="5.70,495,1574150400"; d="scan'208";a="232182210"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 01:18:49 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200228022843.1936-3-daniele.ceraolospurio@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200228022843.1936-1-daniele.ceraolospurio@intel.com>
 <20200228022843.1936-3-daniele.ceraolospurio@intel.com>
Date: Fri, 28 Feb 2020 11:18:46 +0200
Message-ID: <877e07qdc9.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915/uc: mark structure passed to
 checker functions as const
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

On Thu, 27 Feb 2020, Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com> wrote:
> Follow-up patches will pass const objects from debugfs to some those
> functions, so we need to be ready.
>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Cc: John Harrison <John.C.Harrison@Intel.com>
> Cc: Matthew Brost <matthew.brost@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt.h             |  6 +++---
>  drivers/gpu/drm/i915/gt/uc/intel_guc.h         | 10 +++++-----
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h      |  2 +-
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.h  |  6 +++---
>  drivers/gpu/drm/i915/gt/uc/intel_huc.h         |  8 ++++----
>  drivers/gpu/drm/i915/gt/uc/intel_uc.h          |  2 +-
>  drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h       | 18 +++++++++---------
>  7 files changed, 26 insertions(+), 26 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
> index 4fac043750aa..f9fbe645478d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
> @@ -18,17 +18,17 @@ struct drm_i915_private;
>  		  ##__VA_ARGS__);					\
>  } while (0)
>  
> -static inline struct intel_gt *uc_to_gt(struct intel_uc *uc)
> +static inline struct intel_gt *uc_to_gt(const struct intel_uc *uc)
>  {
>  	return container_of(uc, struct intel_gt, uc);
>  }
>  
> -static inline struct intel_gt *guc_to_gt(struct intel_guc *guc)
> +static inline struct intel_gt *guc_to_gt(const struct intel_guc *guc)
>  {
>  	return container_of(guc, struct intel_gt, uc.guc);
>  }
>  
> -static inline struct intel_gt *huc_to_gt(struct intel_huc *huc)
> +static inline struct intel_gt *huc_to_gt(const struct intel_huc *huc)
>  {
>  	return container_of(huc, struct intel_gt, uc.huc);
>  }

Not fond of the fact that these cast the const away. If you can return
const also, fine, but const in, non-const out is not fine.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
