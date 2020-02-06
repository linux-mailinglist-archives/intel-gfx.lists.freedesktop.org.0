Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0807C154BA9
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 20:09:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27DA86FB14;
	Thu,  6 Feb 2020 19:09:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97B766FB14
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 19:09:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 11:09:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,410,1574150400"; d="scan'208";a="379162279"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga004.jf.intel.com with ESMTP; 06 Feb 2020 11:09:40 -0800
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.137.51])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 016J9dUd004884; Thu, 6 Feb 2020 19:09:39 GMT
To: intel-gfx@lists.freedesktop.org, "Daniele Ceraolo Spurio"
 <daniele.ceraolospurio@intel.com>
References: <20200203232838.14822-1-daniele.ceraolospurio@intel.com>
 <20200203232838.14822-10-daniele.ceraolospurio@intel.com>
Date: Thu, 06 Feb 2020 20:09:39 +0100
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.0fkx6dn1xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20200203232838.14822-10-daniele.ceraolospurio@intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH v2 09/10] drm/i915/uc: consolidate firmware
 cleanup
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 04 Feb 2020 00:28:37 +0100, Daniele Ceraolo Spurio  
<daniele.ceraolospurio@intel.com> wrote:

> We are quite trigger happy in cleaning up the firmware blobs, as we do
> so from several error/fini paths in GuC/HuC/uC code. We do have the
> __uc_cleanup_firmwares cleanup function, which unwinds
> __uc_fetch_firmwares and is already called both from the error path of
> gem_init and from gem_driver_release, so let's stop cleaning up from
> all the other paths.
>
> The fact that we're not cleaning the firmware immediately means that
> we can't consider firmware availability as an indication of
> initialization success. A "READY_TO_LOAD" status has been added to

what about s/READY_TO_LOAD/LOADABLE ?

> indicate that the initialization was successful, to be used to
> selectively load HuC only if HuC init has completed (HuC init failure
> is not considered a fatal error).
>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc.c   | 10 ++++------
>  drivers/gpu/drm/i915/gt/uc/intel_huc.c   |  3 ++-
>  drivers/gpu/drm/i915/gt/uc/intel_uc.c    |  2 +-
>  drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c |  7 +++++--
>  drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h | 18 +++++++++++++++---
>  5 files changed, 27 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c  
> b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> index 97b9c71a6fd4..2d05de570bdf 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -333,7 +333,7 @@ int intel_guc_init(struct intel_guc *guc)
> 	ret = intel_uc_fw_init(&guc->fw);
>  	if (ret)
> -		goto err_fetch;
> +		goto out;
> 	ret = intel_guc_log_create(&guc->log);
>  	if (ret)
> @@ -364,6 +364,8 @@ int intel_guc_init(struct intel_guc *guc)
>  	/* We need to notify the guc whenever we change the GGTT */
>  	i915_ggtt_enable_guc(gt->ggtt);
> +	intel_uc_fw_change_status(&guc->fw, INTEL_UC_FIRMWARE_READY_TO_LOAD);
> +
>  	return 0;
> err_ct:
> @@ -374,8 +376,7 @@ int intel_guc_init(struct intel_guc *guc)
>  	intel_guc_log_destroy(&guc->log);
>  err_fw:
>  	intel_uc_fw_fini(&guc->fw);
> -err_fetch:
> -	intel_uc_fw_cleanup_fetch(&guc->fw);
> +out:
>  	i915_probe_error(gt->i915, "failed with %d\n", ret);
>  	return ret;
>  }
> @@ -397,9 +398,6 @@ void intel_guc_fini(struct intel_guc *guc)
>  	intel_guc_ads_destroy(guc);
>  	intel_guc_log_destroy(&guc->log);
>  	intel_uc_fw_fini(&guc->fw);
> -	intel_uc_fw_cleanup_fetch(&guc->fw);
> -
> -	intel_uc_fw_change_status(&guc->fw, INTEL_UC_FIRMWARE_DISABLED);
>  }
> /*
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c  
> b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> index 5f448d0e360b..2e4f4a8e791e 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> @@ -121,12 +121,13 @@ int intel_huc_init(struct intel_huc *huc)
>  	if (err)
>  		goto out_fini;
> +	intel_uc_fw_change_status(&huc->fw, INTEL_UC_FIRMWARE_READY_TO_LOAD);
> +
>  	return 0;
> out_fini:
>  	intel_uc_fw_fini(&huc->fw);
>  out:
> -	intel_uc_fw_cleanup_fetch(&huc->fw);
>  	i915_probe_error(i915, "failed with %d\n", err);
>  	return err;
>  }
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c  
> b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> index a119b7776973..4c55b1285cbc 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> @@ -417,7 +417,7 @@ static int __uc_init_hw(struct intel_uc *uc)
>  	GEM_BUG_ON(!intel_uc_supports_guc(uc));
>  	GEM_BUG_ON(!intel_uc_wants_guc(uc));
> -	if (!intel_uc_fw_is_available(&guc->fw)) {
> +	if (!intel_uc_fw_is_ready_to_load(&guc->fw)) {
>  		ret = __uc_check_hw(uc) ||
>  		      intel_uc_fw_is_overridden(&guc->fw) ||
>  		      intel_uc_wants_guc_submission(uc) ?
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c  
> b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> index c9c094a73399..3759569ec000 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> @@ -501,7 +501,7 @@ int intel_uc_fw_upload(struct intel_uc_fw *uc_fw,  
> u32 dst_offset, u32 dma_flags)
>  	if (err)
>  		return err;
> -	if (!intel_uc_fw_is_available(uc_fw))
> +	if (!intel_uc_fw_is_ready_to_load(uc_fw))
>  		return -ENOEXEC;
> 	/* Call custom loader */
> @@ -544,7 +544,10 @@ int intel_uc_fw_init(struct intel_uc_fw *uc_fw)
> void intel_uc_fw_fini(struct intel_uc_fw *uc_fw)
>  {
> -	intel_uc_fw_cleanup_fetch(uc_fw);
> +	if (i915_gem_object_has_pinned_pages(uc_fw->obj))
> +		i915_gem_object_unpin_pages(uc_fw->obj);
> +
> +	intel_uc_fw_change_status(uc_fw, INTEL_UC_FIRMWARE_AVAILABLE);
>  }
> /**
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h  
> b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
> index 1f30543d0d2d..ba3c362aeca2 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
> @@ -29,8 +29,11 @@ struct intel_gt;
>   * |            |                 SELECTED                          |
>   * +------------+-               /   |   \                         -+
>   * |            |    MISSING <--/    |    \--> ERROR                |
> - * |   fetch    |                    |                              |
> - * |            |        /------> AVAILABLE <---<-----------\       |
> + * |   fetch    |                    V                              |
> + * |            |                 AVAILABLE                         |
> + * |            |                    |                              |

as we change status during "init" phase, we should also mark it here

       +------------+-                                                 -+
       |   init     |                                                   |

> + * |            |                    V                              |
> + * |            |        /----> READY TO LOAD <---<---------\       |
>   * +------------+-       \         /    \        \           \     -+
>   * |            |         FAIL <--<      \--> TRANSFERRED     \     |
>   * |   upload   |                  \           /   \          /     |
> @@ -46,6 +49,7 @@ enum intel_uc_fw_status {
>  	INTEL_UC_FIRMWARE_MISSING, /* blob not found on the system */
>  	INTEL_UC_FIRMWARE_ERROR, /* invalid format or version */
>  	INTEL_UC_FIRMWARE_AVAILABLE, /* blob found and copied in mem */
> +	INTEL_UC_FIRMWARE_READY_TO_LOAD, /* all fw-required objects are ready  
> */
>  	INTEL_UC_FIRMWARE_FAIL, /* failed to xfer or init/auth the fw */
>  	INTEL_UC_FIRMWARE_TRANSFERRED, /* dma xfer done */
>  	INTEL_UC_FIRMWARE_RUNNING /* init/auth done */
> @@ -115,6 +119,8 @@ const char *intel_uc_fw_status_repr(enum  
> intel_uc_fw_status status)
>  		return "ERROR";
>  	case INTEL_UC_FIRMWARE_AVAILABLE:
>  		return "AVAILABLE";
> +	case INTEL_UC_FIRMWARE_READY_TO_LOAD:
> +		return "READY TO LOAD";
>  	case INTEL_UC_FIRMWARE_FAIL:
>  		return "FAIL";
>  	case INTEL_UC_FIRMWARE_TRANSFERRED:
> @@ -143,6 +149,7 @@ static inline int intel_uc_fw_status_to_error(enum  
> intel_uc_fw_status status)
>  	case INTEL_UC_FIRMWARE_SELECTED:
>  		return -ESTALE;
>  	case INTEL_UC_FIRMWARE_AVAILABLE:
> +	case INTEL_UC_FIRMWARE_READY_TO_LOAD:
>  	case INTEL_UC_FIRMWARE_TRANSFERRED:
>  	case INTEL_UC_FIRMWARE_RUNNING:
>  		return 0;
> @@ -184,6 +191,11 @@ static inline bool intel_uc_fw_is_available(struct  
> intel_uc_fw *uc_fw)
>  	return __intel_uc_fw_status(uc_fw) >= INTEL_UC_FIRMWARE_AVAILABLE;
>  }
> +static inline bool intel_uc_fw_is_ready_to_load(struct intel_uc_fw  
> *uc_fw)
> +{
> +	return __intel_uc_fw_status(uc_fw) == INTEL_UC_FIRMWARE_READY_TO_LOAD;
> +}
> +
>  static inline bool intel_uc_fw_is_loaded(struct intel_uc_fw *uc_fw)
>  {
>  	return __intel_uc_fw_status(uc_fw) >= INTEL_UC_FIRMWARE_TRANSFERRED;
> @@ -202,7 +214,7 @@ static inline bool intel_uc_fw_is_overridden(const  
> struct intel_uc_fw *uc_fw)
>  static inline void intel_uc_fw_sanitize(struct intel_uc_fw *uc_fw)
>  {
>  	if (intel_uc_fw_is_loaded(uc_fw))
> -		intel_uc_fw_change_status(uc_fw, INTEL_UC_FIRMWARE_AVAILABLE);
> +		intel_uc_fw_change_status(uc_fw, INTEL_UC_FIRMWARE_READY_TO_LOAD);
>  }
> static inline u32 __intel_uc_fw_get_upload_size(struct intel_uc_fw  
> *uc_fw)

in the future we should never try to hide intermediate states,
with above nits,

Reviewed-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
