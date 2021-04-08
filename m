Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7010C358F97
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Apr 2021 00:02:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8FF76E406;
	Thu,  8 Apr 2021 22:02:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAF606E406
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Apr 2021 22:01:59 +0000 (UTC)
IronPort-SDR: JlScxTo0QQoh/nzq+hA6jR4t6LhlcErw9vP3zt3jJCBVfNtvZvZGg0W1n6eK7y7XhMjHP+4HEG
 9TcxjR6lTjNA==
X-IronPort-AV: E=McAfee;i="6000,8403,9948"; a="257621525"
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="257621525"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 15:01:58 -0700
IronPort-SDR: hMlX1CRPYrtJZYSaTjI5f+tewRFZ0w/S1p2nyZ7Ayt5tFamff+SvOKg9Suw2cNVNiXJUIxC3GX
 YeujA/5LKmGA==
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="598939654"
Received: from kmkerns-mobl2.amr.corp.intel.com (HELO intel.com)
 ([10.209.131.159])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 15:01:56 -0700
Date: Thu, 8 Apr 2021 18:01:54 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <YG99UjRVX+Jju9Hg@intel.com>
References: <20210328225709.18541-1-daniele.ceraolospurio@intel.com>
 <20210328225709.18541-8-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210328225709.18541-8-daniele.ceraolospurio@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 07/16] drm/i915/pxp: Create the arbitrary
 session after boot
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
Cc: Huang@freedesktop.org, intel-gfx@lists.freedesktop.org, "Huang,
 Sean Z" <sean.z.huang@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Mar 28, 2021 at 03:56:59PM -0700, Daniele Ceraolo Spurio wrote:
> From: "Huang, Sean Z" <sean.z.huang@intel.com>
> 
> Create the arbitrary session, with the fixed session id 0xf, after
> system boot, for the case that application allocates the protected
> buffer without establishing any protection session. Because the
> hardware requires at least one alive session for protected buffer
> creation. This arbitrary session will need to be re-created after
> teardown or power event because hardware encryption key won't be
> valid after such cases.
> 
> The session ID is exposed as part of the uapi so it can be used as part
> of userspace commands.
> 
> v2: use gt->uncore->rpm (Chris)
> v3: s/arb_is_in_play/arb_is_valid (Chris), move set-up to the new
>     init_hw function

not sure about "is_valid"... but I don't have better suggestion...

> 
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/Makefile                |  1 +
>  drivers/gpu/drm/i915/pxp/intel_pxp.c         |  3 +
>  drivers/gpu/drm/i915/pxp/intel_pxp.h         |  5 ++
>  drivers/gpu/drm/i915/pxp/intel_pxp_session.c | 74 ++++++++++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_session.h | 15 ++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_tee.c     | 92 ++++++++++++++++++++
>  drivers/gpu/drm/i915/pxp/intel_pxp_tee.h     |  3 +
>  drivers/gpu/drm/i915/pxp/intel_pxp_types.h   | 10 +++
>  include/uapi/drm/i915_drm.h                  |  3 +
>  9 files changed, 206 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_session.c
>  create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_session.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 14795f6a3c86..219095d9b42c 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -273,6 +273,7 @@ i915-y += i915_perf.o
>  # Protected execution platform (PXP) support
>  i915-$(CONFIG_DRM_I915_PXP) += \
>  	pxp/intel_pxp.o \
> +	pxp/intel_pxp_session.o \
>  	pxp/intel_pxp_tee.o
>  
>  # Post-mortem debug and GPU hang state capture
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index c1ad0cf2c664..e496fc4ccf0a 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -3,6 +3,7 @@
>   * Copyright(c) 2020 Intel Corporation.
>   */
>  #include "intel_pxp.h"
> +#include "intel_pxp_session.h"
>  #include "intel_pxp_tee.h"
>  #include "gt/intel_context.h"
>  #include "i915_drv.h"
> @@ -94,6 +95,8 @@ void intel_pxp_fini(struct intel_pxp *pxp)
>  void intel_pxp_init_hw(struct intel_pxp *pxp)
>  {
>  	kcr_pxp_enable(pxp_to_gt(pxp));
> +
> +	intel_pxp_create_arb_session(pxp);
>  }
>  
>  void intel_pxp_fini_hw(struct intel_pxp *pxp)
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> index 5427c3b28aa9..8eeb65af78b1 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -19,6 +19,11 @@ static inline bool intel_pxp_is_enabled(const struct intel_pxp *pxp)
>  	return pxp->ce;
>  }
>  
> +static inline bool intel_pxp_is_active(const struct intel_pxp *pxp)
> +{
> +	return pxp->arb_is_valid;
> +}
> +
>  #ifdef CONFIG_DRM_I915_PXP
>  void intel_pxp_init(struct intel_pxp *pxp);
>  void intel_pxp_fini(struct intel_pxp *pxp);
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
> new file mode 100644
> index 000000000000..3331868f354c
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
> @@ -0,0 +1,74 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#include "drm/i915_drm.h"
> +#include "i915_drv.h"
> +
> +#include "intel_pxp.h"
> +#include "intel_pxp_session.h"
> +#include "intel_pxp_tee.h"
> +#include "intel_pxp_types.h"
> +
> +#define ARB_SESSION I915_PROTECTED_CONTENT_DEFAULT_SESSION /* shorter define */
> +
> +#define GEN12_KCR_SIP _MMIO(0x32260) /* KCR hwdrm session in play 0-31 */
> +
> +static bool intel_pxp_session_is_in_play(struct intel_pxp *pxp, u32 id)
> +{
> +	struct intel_gt *gt = pxp_to_gt(pxp);
> +	intel_wakeref_t wakeref;
> +	u32 sip = 0;
> +
> +	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
> +		sip = intel_uncore_read(gt->uncore, GEN12_KCR_SIP);
> +
> +	return sip & BIT(id);
> +}
> +
> +static int pxp_wait_for_session_state(struct intel_pxp *pxp, u32 id, bool in_play)
> +{
> +	struct intel_gt *gt = pxp_to_gt(pxp);
> +	intel_wakeref_t wakeref;
> +	u32 mask = BIT(id);
> +	int ret;
> +
> +	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
> +		ret = intel_wait_for_register(gt->uncore,
> +					      GEN12_KCR_SIP,
> +					      mask,
> +					      in_play ? mask : 0,
> +					      100);
> +
> +	return ret;
> +}
> +
> +int intel_pxp_create_arb_session(struct intel_pxp *pxp)
> +{
> +	struct intel_gt *gt = pxp_to_gt(pxp);
> +	int ret;
> +
> +	pxp->arb_is_valid = false;
> +
> +	if (intel_pxp_session_is_in_play(pxp, ARB_SESSION)) {
> +		drm_err(&gt->i915->drm, "arb session already in play at creation time\n");
> +		return -EEXIST;
> +	}
> +
> +	ret = intel_pxp_tee_cmd_create_arb_session(pxp, ARB_SESSION);
> +	if (ret) {
> +		drm_err(&gt->i915->drm, "tee cmd for arb session creation failed\n");
> +		return ret;
> +	}
> +
> +	ret = pxp_wait_for_session_state(pxp, ARB_SESSION, true);
> +	if (ret) {
> +		drm_err(&gt->i915->drm, "arb session failed to go in play\n");
> +		return ret;
> +	}
> +
> +	pxp->arb_is_valid = true;
> +
> +	return 0;
> +}
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.h b/drivers/gpu/drm/i915/pxp/intel_pxp_session.h
> new file mode 100644
> index 000000000000..316c3bebed9c
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.h
> @@ -0,0 +1,15 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#ifndef __INTEL_PXP_SESSION_H__
> +#define __INTEL_PXP_SESSION_H__
> +
> +#include <linux/types.h>
> +
> +struct intel_pxp;
> +
> +int intel_pxp_create_arb_session(struct intel_pxp *pxp);
> +
> +#endif /* __INTEL_PXP_SESSION_H__ */
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> index 33130fb7113b..170dd9fa5bb2 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> @@ -8,13 +8,72 @@
>  #include "drm/i915_component.h"
>  #include "i915_drv.h"
>  #include "intel_pxp.h"
> +#include "intel_pxp_session.h"
>  #include "intel_pxp_tee.h"
>  
> +#define PXP_TEE_APIVER 0x40002
> +#define PXP_TEE_ARB_CMDID 0x1e
> +#define PXP_TEE_ARB_PROTECTION_MODE 0x2
> +
> +/* PXP TEE message header */
> +struct pxp_tee_cmd_header {
> +	u32 api_version;
> +	u32 command_id;
> +	u32 status;
> +	/* Length of the message (excluding the header) */
> +	u32 buffer_len;
> +} __packed;
> +
> +/* PXP TEE message input to create a arbitrary session */
> +struct pxp_tee_create_arb_in {
> +	struct pxp_tee_cmd_header header;
> +	u32 protection_mode;
> +	u32 session_id;
> +} __packed;
> +
> +/* PXP TEE message output to create a arbitrary session */
> +struct pxp_tee_create_arb_out {
> +	struct pxp_tee_cmd_header header;
> +} __packed;
> +

wouldn't be helpful (right?) to have this defined in the intel_pxp_tee_interface.h?

>  static inline struct intel_pxp *i915_dev_to_pxp(struct device *i915_kdev)
>  {
>  	return &kdev_to_i915(i915_kdev)->gt.pxp;
>  }
>  
> +static int intel_pxp_tee_io_message(struct intel_pxp *pxp,
> +				    void *msg_in, u32 msg_in_size,
> +				    void *msg_out, u32 msg_out_max_size,
> +				    u32 *msg_out_rcv_size)
> +{
> +	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
> +	struct i915_pxp_component *pxp_component = pxp->pxp_component;
> +	int ret;
> +
> +	ret = pxp_component->ops->send(pxp_component->tee_dev, msg_in, msg_in_size);
> +	if (ret) {
> +		drm_err(&i915->drm, "Failed to send PXP TEE message\n");
> +		return ret;
> +	}
> +
> +	ret = pxp_component->ops->recv(pxp_component->tee_dev, msg_out, msg_out_max_size);
> +	if (ret < 0) {
> +		drm_err(&i915->drm, "Failed to receive PXP TEE message\n");
> +		return ret;
> +	}
> +
> +	if (ret > msg_out_max_size) {
> +		drm_err(&i915->drm,
> +			"Failed to receive PXP TEE message due to unexpected output size\n");
> +		return -ENOSPC;
> +	}
> +
> +	if (msg_out_rcv_size)
> +		*msg_out_rcv_size = ret;
> +
> +	return 0;
> +}
> +
>  /**
>   * i915_pxp_tee_component_bind - bind function to pass the function pointers to pxp_tee
>   * @i915_kdev: pointer to i915 kernel device
> @@ -28,6 +87,7 @@ static inline struct intel_pxp *i915_dev_to_pxp(struct device *i915_kdev)
>  static int i915_pxp_tee_component_bind(struct device *i915_kdev,
>  				       struct device *tee_kdev, void *data)
>  {
> +	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
>  	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
>  
>  	pxp->pxp_component = data;
> @@ -36,6 +96,13 @@ static int i915_pxp_tee_component_bind(struct device *i915_kdev,
>  	/* the component is required to fully start the PXP HW */
>  	intel_pxp_init_hw(pxp);
>  
> +	if (!pxp->arb_is_valid) {
> +		drm_err(&i915->drm, "Failed to create arb session during bind\n");
> +		intel_pxp_fini_hw(pxp);
> +		pxp->pxp_component = NULL;
> +		return -EIO;
> +	}
> +
>  	return 0;
>  }
>  
> @@ -80,3 +147,28 @@ void intel_pxp_tee_component_fini(struct intel_pxp *pxp)
>  
>  	component_del(i915->drm.dev, &i915_pxp_tee_component_ops);
>  }
> +
> +int intel_pxp_tee_cmd_create_arb_session(struct intel_pxp *pxp,
> +					 int arb_session_id)
> +{
> +	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
> +	struct pxp_tee_create_arb_in msg_in = {0};
> +	struct pxp_tee_create_arb_out msg_out = {0};
> +	int ret;
> +
> +	msg_in.header.api_version = PXP_TEE_APIVER;
> +	msg_in.header.command_id = PXP_TEE_ARB_CMDID;
> +	msg_in.header.buffer_len = sizeof(msg_in) - sizeof(msg_in.header);
> +	msg_in.protection_mode = PXP_TEE_ARB_PROTECTION_MODE;
> +	msg_in.session_id = arb_session_id;
> +
> +	ret = intel_pxp_tee_io_message(pxp,
> +				       &msg_in, sizeof(msg_in),
> +				       &msg_out, sizeof(msg_out),
> +				       NULL);
> +
> +	if (ret)
> +		drm_err(&i915->drm, "Failed to send tee msg ret=[%d]\n", ret);
> +
> +	return ret;
> +}
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
> index 23d050a5d3e7..c136053ce340 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
> @@ -11,4 +11,7 @@
>  int intel_pxp_tee_component_init(struct intel_pxp *pxp);
>  void intel_pxp_tee_component_fini(struct intel_pxp *pxp);
>  
> +int intel_pxp_tee_cmd_create_arb_session(struct intel_pxp *pxp,
> +					 int arb_session_id);
> +
>  #endif /* __INTEL_PXP_TEE_H__ */
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> index 3e95d21513e8..b142b8170266 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
> @@ -6,6 +6,9 @@
>  #ifndef __INTEL_PXP_TYPES_H__
>  #define __INTEL_PXP_TYPES_H__
>  
> +#include <linux/types.h>
> +#include <linux/mutex.h>
> +
>  struct intel_context;
>  struct i915_pxp_component;
>  
> @@ -13,6 +16,13 @@ struct intel_pxp {
>  	struct i915_pxp_component *pxp_component;
>  
>  	struct intel_context *ce;
> +
> +	/*
> +	 * After a teardown, the arb session can still be in play on the HW
> +	 * even if the keys are gone, so we can't rely on the HW state of the
> +	 * session to know if it's valid and need to track the status in SW.
> +	 */
> +	bool arb_is_valid;
>  };
>  
>  #endif /* __INTEL_PXP_TYPES_H__ */
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index ddc47bbf48b6..3dcb8fe64ccd 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -2377,6 +2377,9 @@ struct drm_i915_query_perf_config {
>  	__u8 data[];
>  };
>  
> +/* ID of the protected content session managed by i915 when PXP is active */
> +#define I915_PROTECTED_CONTENT_DEFAULT_SESSION 0xf
> +
>  #if defined(__cplusplus)
>  }
>  #endif
> -- 
> 2.29.2
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
