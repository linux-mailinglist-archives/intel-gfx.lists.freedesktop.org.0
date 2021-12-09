Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52DDF46F3A6
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 20:10:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ACAD10E224;
	Thu,  9 Dec 2021 19:09:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2265910E221
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 19:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639076998; x=1670612998;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=eJO3nFOV4UhWwjH0OMdiLj3qYoTzORYWo15FUX0wO5w=;
 b=fxYNeoiDxXu64K1h3/PDZ05uiIl59CXXiCUqqIY9zcg+2FPWnILqperj
 Fd2422vpYWWqOeuxU+Cq7Ys+KQlhv+qO0ciwCpSxVMAnQcc5d1SXbhb4o
 ujAjjiMq0e4EKVj3pOMhFLunJJOtFz9vtlG4RI88WTi7LcKqZhvs7/PPB
 tr0hdV+sXpt+x001zBsfz7a7zsNahnN0zJaKUQ8IP6WHo327jvyBx+s4r
 xHuqAdiJXW4/l4SoXztkhYkp2ZUpKlExEGfJMAYkUBhAI0lqQ1GR+rjSl
 7eFuspXJikGwsLReWCVwHLqqXhKz37/TrHDw8NBiQ5R2BFSheC7Gnm3aI w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="324449305"
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="324449305"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 11:09:35 -0800
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="680455331"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 11:09:35 -0800
Date: Thu, 9 Dec 2021 11:04:11 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <20211209190410.GA21453@jons-linux-dev-box>
References: <20211209005610.1499729-1-daniele.ceraolospurio@intel.com>
 <20211209005610.1499729-2-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211209005610.1499729-2-daniele.ceraolospurio@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/uc: correctly track uc_fw init
 failure
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 08, 2021 at 04:56:08PM -0800, Daniele Ceraolo Spurio wrote:
> The FAILURE state of uc_fw currently implies that the fw is loadable
> (i.e init completed), so we can't use it for init failures and instead
> need a dedicated error code.
> 
> Note that this currently does not cause any issues because if we fail to
> init any of the firmwares we abort the load, but better be accurate
> anyway in case things change in the future.
> 
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c |  2 +-
>  drivers/gpu/drm/i915/gt/uc/intel_huc.c    |  2 +-
>  drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c  |  4 ++--
>  drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h  | 17 +++++++++++------
>  4 files changed, 15 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
> index 196424be0998..796483a41353 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
> @@ -164,6 +164,6 @@ int intel_guc_fw_upload(struct intel_guc *guc)
>  	return 0;
>  
>  out:
> -	intel_uc_fw_change_status(&guc->fw, INTEL_UC_FIRMWARE_FAIL);
> +	intel_uc_fw_change_status(&guc->fw, INTEL_UC_FIRMWARE_LOAD_FAIL);
>  	return ret;
>  }
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> index ff4b6869b80b..c10736dddfb4 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> @@ -199,7 +199,7 @@ int intel_huc_auth(struct intel_huc *huc)
>  
>  fail:
>  	i915_probe_error(gt->i915, "HuC: Authentication failed %d\n", ret);
> -	intel_uc_fw_change_status(&huc->fw, INTEL_UC_FIRMWARE_FAIL);
> +	intel_uc_fw_change_status(&huc->fw, INTEL_UC_FIRMWARE_LOAD_FAIL);
>  	return ret;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> index 3aa87be4f2e4..b7fa51aefdff 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> @@ -540,7 +540,7 @@ int intel_uc_fw_upload(struct intel_uc_fw *uc_fw, u32 dst_offset, u32 dma_flags)
>  	i915_probe_error(gt->i915, "Failed to load %s firmware %s (%d)\n",
>  			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
>  			 err);
> -	intel_uc_fw_change_status(uc_fw, INTEL_UC_FIRMWARE_FAIL);
> +	intel_uc_fw_change_status(uc_fw, INTEL_UC_FIRMWARE_LOAD_FAIL);
>  	return err;
>  }
>  
> @@ -558,7 +558,7 @@ int intel_uc_fw_init(struct intel_uc_fw *uc_fw)
>  	if (err) {
>  		DRM_DEBUG_DRIVER("%s fw pin-pages err=%d\n",
>  				 intel_uc_fw_type_repr(uc_fw->type), err);
> -		intel_uc_fw_change_status(uc_fw, INTEL_UC_FIRMWARE_FAIL);
> +		intel_uc_fw_change_status(uc_fw, INTEL_UC_FIRMWARE_INIT_FAIL);
>  	}
>  
>  	return err;
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
> index 1e00bf65639e..fd17abf2ab02 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
> @@ -32,11 +32,12 @@ struct intel_gt;
>   * |            |    MISSING <--/    |    \--> ERROR                |
>   * |   fetch    |                    V                              |
>   * |            |                 AVAILABLE                         |
> - * +------------+-                   |                             -+
> + * +------------+-                   |   \                         -+
> + * |            |                    |    \--> INIT FAIL            |
>   * |   init     |                    V                              |
>   * |            |        /------> LOADABLE <----<-----------\       |
>   * +------------+-       \         /    \        \           \     -+
> - * |            |         FAIL <--<      \--> TRANSFERRED     \     |
> + * |            |    LOAD FAIL <--<      \--> TRANSFERRED     \     |
>   * |   upload   |                  \           /   \          /     |
>   * |            |                   \---------/     \--> RUNNING    |
>   * +------------+---------------------------------------------------+
> @@ -50,8 +51,9 @@ enum intel_uc_fw_status {
>  	INTEL_UC_FIRMWARE_MISSING, /* blob not found on the system */
>  	INTEL_UC_FIRMWARE_ERROR, /* invalid format or version */
>  	INTEL_UC_FIRMWARE_AVAILABLE, /* blob found and copied in mem */
> +	INTEL_UC_FIRMWARE_INIT_FAIL, /* failed to prepare fw objects for load */
>  	INTEL_UC_FIRMWARE_LOADABLE, /* all fw-required objects are ready */
> -	INTEL_UC_FIRMWARE_FAIL, /* failed to xfer or init/auth the fw */
> +	INTEL_UC_FIRMWARE_LOAD_FAIL, /* failed to xfer or init/auth the fw */
>  	INTEL_UC_FIRMWARE_TRANSFERRED, /* dma xfer done */
>  	INTEL_UC_FIRMWARE_RUNNING /* init/auth done */
>  };
> @@ -130,10 +132,12 @@ const char *intel_uc_fw_status_repr(enum intel_uc_fw_status status)
>  		return "ERROR";
>  	case INTEL_UC_FIRMWARE_AVAILABLE:
>  		return "AVAILABLE";
> +	case INTEL_UC_FIRMWARE_INIT_FAIL:
> +		return "INIT FAIL";
>  	case INTEL_UC_FIRMWARE_LOADABLE:
>  		return "LOADABLE";
> -	case INTEL_UC_FIRMWARE_FAIL:
> -		return "FAIL";
> +	case INTEL_UC_FIRMWARE_LOAD_FAIL:
> +		return "LOAD FAIL";
>  	case INTEL_UC_FIRMWARE_TRANSFERRED:
>  		return "TRANSFERRED";
>  	case INTEL_UC_FIRMWARE_RUNNING:
> @@ -155,7 +159,8 @@ static inline int intel_uc_fw_status_to_error(enum intel_uc_fw_status status)
>  		return -ENOENT;
>  	case INTEL_UC_FIRMWARE_ERROR:
>  		return -ENOEXEC;
> -	case INTEL_UC_FIRMWARE_FAIL:
> +	case INTEL_UC_FIRMWARE_INIT_FAIL:
> +	case INTEL_UC_FIRMWARE_LOAD_FAIL:
>  		return -EIO;
>  	case INTEL_UC_FIRMWARE_SELECTED:
>  		return -ESTALE;
> -- 
> 2.25.1
> 
