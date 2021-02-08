Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E4003130DC
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 12:29:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D811A6E886;
	Mon,  8 Feb 2021 11:29:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17DDB6E886
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 11:29:52 +0000 (UTC)
IronPort-SDR: DrTGPzmb2iy2HRGWrGkXIv+dw1GKweh0OxqDUnDwuRSYE8wIKb6v4YwMOXXT3UD3jIHz1NJ7BW
 L3bFU25TM8EQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9888"; a="161447473"
X-IronPort-AV: E=Sophos;i="5.81,161,1610438400"; d="scan'208";a="161447473"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 03:29:51 -0800
IronPort-SDR: 8/L6W2fj/3OWvtBU0PZNdaRYQOu+UiQXKnNiNXEcDw5Hzno7tjkM7/1L5tknvMsvM7MwVnwmgs
 EZF0+1+JQNmA==
X-IronPort-AV: E=Sophos;i="5.81,161,1610438400"; d="scan'208";a="377630516"
Received: from anveshag-mobl1.amr.corp.intel.com (HELO intel.com)
 ([10.209.119.193])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 03:29:49 -0800
Date: Mon, 8 Feb 2021 06:29:48 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <20210208112948.GD4798@intel.com>
References: <20210206020925.36729-1-daniele.ceraolospurio@intel.com>
 <20210206020925.36729-2-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210206020925.36729-2-daniele.ceraolospurio@intel.com>
Subject: Re: [Intel-gfx] [RFC 01/14] drm/i915/pxp: Define PXP component
 interface
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 05, 2021 at 06:09:12PM -0800, Daniele Ceraolo Spurio wrote:
> This will be used for communication between the i915 driver and the mei
> one. Defining it in a stand-alone patch to avoid circualr dependedencies
> between the patches modifying the 2 drivers.
> =

> Split out from an original patch from  Huang, Sean Z
> =

> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> ---
>  include/drm/i915_component.h         |  1 +
>  include/drm/i915_pxp_tee_interface.h | 45 ++++++++++++++++++++++++++++
>  2 files changed, 46 insertions(+)
>  create mode 100644 include/drm/i915_pxp_tee_interface.h
> =

> diff --git a/include/drm/i915_component.h b/include/drm/i915_component.h
> index 55c3b123581b..c1e2a43d2d1e 100644
> --- a/include/drm/i915_component.h
> +++ b/include/drm/i915_component.h
> @@ -29,6 +29,7 @@
>  enum i915_component_type {
>  	I915_COMPONENT_AUDIO =3D 1,
>  	I915_COMPONENT_HDCP,
> +	I915_COMPONENT_PXP
>  };
>  =

>  /* MAX_PORT is the number of port
> diff --git a/include/drm/i915_pxp_tee_interface.h b/include/drm/i915_pxp_=
tee_interface.h
> new file mode 100644
> index 000000000000..0efd14702b4b
> --- /dev/null
> +++ b/include/drm/i915_pxp_tee_interface.h
> @@ -0,0 +1,45 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =A9 2020 Intel Corporation
> + *
> + * Authors:
> + * Vitaly Lubart <vitaly.lubart@intel.com>
> + */
> +
> +#ifndef _I915_PXP_TEE_INTERFACE_H_
> +#define _I915_PXP_TEE_INTERFACE_H_
> +
> +#include <linux/mutex.h>
> +#include <linux/device.h>
> +
> +/**
> + * struct i915_pxp_component_ops - ops for PXP services.
> + * @owner: Module providing the ops
> + * @send: sends data to PXP
> + * @receive: receives data from PXP
> + */
> +struct i915_pxp_component_ops {
> +	/**
> +	 * @owner: owner of the module provding the ops
> +	 */
> +	struct module *owner;
> +
> +	int (*send)(struct device *dev, const void *message, size_t size);
> +	int (*recv)(struct device *dev, void *buffer, size_t size);
> +};
> +
> +/**
> + * struct i915_pxp_component_master - Used for communication between i915

Could we have a better name than "master" here?

main? controller?

> + * and TEE drivers for the PXP services
> + * @tee_dev: device that provide the PXP service from TEE Bus.
> + * @pxp_ops: Ops implemented by TEE driver, used by i915 driver.
> + */
> +struct i915_pxp_comp_master {

also use a consistency here:
or we go fully with component or fully with comp...

> +	struct device *tee_dev;
> +	const struct i915_pxp_component_ops *ops;
> +
> +	/* To protect the above members. */
> +	struct mutex mutex;
> +};
> +
> +#endif /* _I915_TEE_PXP_INTERFACE_H_ */
> -- =

> 2.29.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
