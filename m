Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20BCE2B40E9
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Nov 2020 11:22:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A28FE89DDF;
	Mon, 16 Nov 2020 10:22:28 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F83089DEA
 for <Intel-gfx@lists.freedesktop.org>; Mon, 16 Nov 2020 10:22:27 +0000 (UTC)
IronPort-SDR: 3DRv1bCzRFoqT3cMhO8ErgTBlUNN9HIlcgJm+hHDag6YR8pTQJRHMacl0TEoPRsB1H3s4n0bCz
 RiSrKG0k0XrQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9806"; a="168149585"
X-IronPort-AV: E=Sophos;i="5.77,482,1596524400"; d="scan'208";a="168149585"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 02:22:27 -0800
IronPort-SDR: uhm7cwfxOv3JfzeWQZz8G1+GLCwQ+qQ9O6J0nX7tQIl2MSFFM2PdVmwRrj1qi5V1hrEdxphzdk
 P1Mrhk3LFyEg==
X-IronPort-AV: E=Sophos;i="5.77,482,1596524400"; d="scan'208";a="543549112"
Received: from joejam1x-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.3.39])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 02:22:25 -0800
MIME-Version: 1.0
In-Reply-To: <20201115210815.5272-5-sean.z.huang@intel.com>
References: <20201115210815.5272-1-sean.z.huang@intel.com>
 <20201115210815.5272-5-sean.z.huang@intel.com>
To: "Huang, Sean Z" <sean.z.huang@intel.com>, Intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <160552214303.10586.7473931663804369779@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Mon, 16 Nov 2020 12:22:23 +0200
Subject: Re: [Intel-gfx] [PATCH 05/27] drm/i915/pxp: Enable ioctl action to
 set the ring3 context
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

Quoting Huang, Sean Z (2020-11-15 23:07:53)
> Enable one ioctl action to allow ring3 driver to set its ring3
> context, so ring0 PXP can track the context id through this ring3
> context list.

Overall the patches should refer to "userspace" not "ring3" to avoid
confusion. "kernel" vs "user" not ring0 vs ring3.

> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>

<SNIP>

> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -8,6 +8,63 @@
>  #include "intel_pxp_context.h"
>  #include "intel_pxp_sm.h"
>  
> +int i915_pxp_ops_ioctl(struct drm_device *dev, void *data, struct drm_file *drmfile)
> +{
> +       int ret;
> +       struct pxp_info pxp_info = {0};
> +       struct drm_i915_pxp_ops *pxp_ops = data;
> +       struct drm_i915_private *i915 = to_i915(dev);
> +
> +       if (!i915 || !drmfile || !pxp_ops || pxp_ops->pxp_info_size != sizeof(pxp_info))
> +               return -EINVAL;

See below.

> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -24,6 +24,21 @@ enum pxp_sm_session_req {
>         PXP_SM_REQ_SESSION_TERMINATE
>  };
>  
> +#define PXP_ACTION_SET_R3_CONTEXT 5
> +
> +enum pxp_sm_status {
> +       PXP_SM_STATUS_SUCCESS,
> +       PXP_SM_STATUS_RETRY_REQUIRED,
> +       PXP_SM_STATUS_SESSION_NOT_AVAILABLE,
> +       PXP_SM_STATUS_ERROR_UNKNOWN
> +};
> +
> +struct pxp_info {
> +       u32 action;
> +       u32 sm_status;
> +       u32 set_r3ctx;
> +} __packed;

These are part of the the uAPI, so it should all be in i915_drm.h. No
need to use pointers as that just adds extra layer of indirection. Every
added bit needs a link to an Open Source userspace implementation and
IGT tests.

After applying the IOCTL-per-action model there needs to be strict
rejection of any unrecognized bits in the structs to ensure userspace
does not grow to depend on being able to set bits which may be
re-purposed in the future. 

R3_CONTEXT / set_r3ctx should be using the "user" vs "kernel" naming,
and once they are moved into the userspace API header, "user" becomes a
tautology.

All the fields added to uAPI need documentation, too.

> +++ b/include/uapi/drm/i915_drm.h
> @@ -359,6 +359,7 @@ typedef struct _drm_i915_sarea {
>  #define DRM_I915_QUERY                 0x39
>  #define DRM_I915_GEM_VM_CREATE         0x3a
>  #define DRM_I915_GEM_VM_DESTROY                0x3b
> +#define DRM_I915_PXP_OPS               0x3c
>  /* Must be kept compact -- no holes */
>  
>  #define DRM_IOCTL_I915_INIT            DRM_IOW( DRM_COMMAND_BASE + DRM_I915_INIT, drm_i915_init_t)
> @@ -422,6 +423,7 @@ typedef struct _drm_i915_sarea {
>  #define DRM_IOCTL_I915_QUERY                   DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_QUERY, struct drm_i915_query)
>  #define DRM_IOCTL_I915_GEM_VM_CREATE   DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_VM_CREATE, struct drm_i915_gem_vm_control)
>  #define DRM_IOCTL_I915_GEM_VM_DESTROY  DRM_IOW (DRM_COMMAND_BASE + DRM_I915_GEM_VM_DESTROY, struct drm_i915_gem_vm_control)
> +#define DRM_IOCTL_I915_PXP_OPS         DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_PXP_OPS, struct drm_i915_pxp_ops)

Just to repeat: This should only be added in the last patches of the
series not to break bisecting. The different actions need to be spelled
out, a general purpose IOCTL can't be used.

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
