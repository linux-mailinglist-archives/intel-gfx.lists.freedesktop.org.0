Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29192399342
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jun 2021 21:10:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01F806EDFB;
	Wed,  2 Jun 2021 19:10:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A11F6E546;
 Wed,  2 Jun 2021 19:10:19 +0000 (UTC)
IronPort-SDR: mWZFaIogw6tPwgm6br2mp4fceM3bDV0D6u7XiVQ3wEcR0CquxQN2gM/yEQCzgeqeAwA8Ifi3qV
 4AzN3aKkLAVA==
X-IronPort-AV: E=McAfee;i="6200,9189,10003"; a="203682239"
X-IronPort-AV: E=Sophos;i="5.83,242,1616482800"; d="scan'208";a="203682239"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2021 12:10:17 -0700
IronPort-SDR: bEKxTlZiVbWC+phq4yJ9EzILe8jU4xiMWqq/nD0BEnYyxCAqDKylAkTAXEhK11Ixz2aMktsXJ9
 CLkZYaVuGGsw==
X-IronPort-AV: E=Sophos;i="5.83,242,1616482800"; d="scan'208";a="438518297"
Received: from ticela-az-103.amr.corp.intel.com (HELO intel.com)
 ([10.254.2.125])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2021 12:10:14 -0700
Date: Wed, 2 Jun 2021 15:10:12 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 tomas.winkler@intel.com
Message-ID: <YLfXlBdCwe6/DWgD@intel.com>
References: <20210525054803.7387-1-daniele.ceraolospurio@intel.com>
 <20210525054803.7387-3-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210525054803.7387-3-daniele.ceraolospurio@intel.com>
Subject: Re: [Intel-gfx] [PATCH v4 02/17] mei: pxp: export pavp client to me
 client bus
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
Cc: intel-gfx@lists.freedesktop.org, Tomas Winkler <tomas.winkler@intel.com>,
 dri-devel@lists.freedesktop.org, Vitaly Lubart <vitaly.lubart@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 24, 2021 at 10:47:48PM -0700, Daniele Ceraolo Spurio wrote:
> From: Vitaly Lubart <vitaly.lubart@intel.com>
> =

> Export PAVP client to work with i915 driver,
> for binding it uses kernel component framework.
> =

> Signed-off-by: Vitaly Lubart <vitaly.lubart@intel.com>
> Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> ---
>  drivers/misc/mei/Kconfig       |   2 +
>  drivers/misc/mei/Makefile      |   1 +
>  drivers/misc/mei/pxp/Kconfig   |  13 ++
>  drivers/misc/mei/pxp/Makefile  |   7 +
>  drivers/misc/mei/pxp/mei_pxp.c | 233 +++++++++++++++++++++++++++++++++
>  drivers/misc/mei/pxp/mei_pxp.h |  18 +++
>  6 files changed, 274 insertions(+)
>  create mode 100644 drivers/misc/mei/pxp/Kconfig
>  create mode 100644 drivers/misc/mei/pxp/Makefile
>  create mode 100644 drivers/misc/mei/pxp/mei_pxp.c
>  create mode 100644 drivers/misc/mei/pxp/mei_pxp.h
> =

> diff --git a/drivers/misc/mei/Kconfig b/drivers/misc/mei/Kconfig
> index f5fd5b786607..0e0bcd0da852 100644
> --- a/drivers/misc/mei/Kconfig
> +++ b/drivers/misc/mei/Kconfig
> @@ -47,3 +47,5 @@ config INTEL_MEI_TXE
>  	  Intel Bay Trail
>  =

>  source "drivers/misc/mei/hdcp/Kconfig"
> +source "drivers/misc/mei/pxp/Kconfig"
> +
> diff --git a/drivers/misc/mei/Makefile b/drivers/misc/mei/Makefile
> index f1c76f7ee804..d8e5165917f2 100644
> --- a/drivers/misc/mei/Makefile
> +++ b/drivers/misc/mei/Makefile
> @@ -26,3 +26,4 @@ mei-$(CONFIG_EVENT_TRACING) +=3D mei-trace.o
>  CFLAGS_mei-trace.o =3D -I$(src)
>  =

>  obj-$(CONFIG_INTEL_MEI_HDCP) +=3D hdcp/
> +obj-$(CONFIG_INTEL_MEI_PXP) +=3D pxp/
> diff --git a/drivers/misc/mei/pxp/Kconfig b/drivers/misc/mei/pxp/Kconfig
> new file mode 100644
> index 000000000000..4029b96afc04
> --- /dev/null
> +++ b/drivers/misc/mei/pxp/Kconfig
> @@ -0,0 +1,13 @@
> +
> +# SPDX-License-Identifier: GPL-2.0
> +# Copyright (c) 2020, Intel Corporation. All rights reserved.
> +#
s> +config INTEL_MEI_PXP
> +	tristate "Intel PXP services of ME Interface"
> +	select INTEL_MEI_ME
> +	depends on DRM_I915
> +	help
> +	  MEI Support for PXP Services on Intel platforms.
> +
> +	  Enables the ME FW services required for PXP support through
> +	  I915 display driver of Intel.
> diff --git a/drivers/misc/mei/pxp/Makefile b/drivers/misc/mei/pxp/Makefile
> new file mode 100644
> index 000000000000..0329950d5794
> --- /dev/null
> +++ b/drivers/misc/mei/pxp/Makefile
> @@ -0,0 +1,7 @@
> +# SPDX-License-Identifier: GPL-2.0
> +#
> +# Copyright (c) 2020, Intel Corporation. All rights reserved.
> +#
> +# Makefile - PXP client driver for Intel MEI Bus Driver.
> +
> +obj-$(CONFIG_INTEL_MEI_PXP) +=3D mei_pxp.o
> diff --git a/drivers/misc/mei/pxp/mei_pxp.c b/drivers/misc/mei/pxp/mei_px=
p.c
> new file mode 100644
> index 000000000000..cacfbedb640a
> --- /dev/null
> +++ b/drivers/misc/mei/pxp/mei_pxp.c
> @@ -0,0 +1,233 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright =A9 2020 Intel Corporation
> + */
> +
> +/**
> + * DOC: MEI_PXP Client Driver
> + *
> + * The mei_pxp driver acts as a translation layer between PXP
> + * protocol  implementer (I915) and ME FW by translating PXP
> + * negotiation messages to ME FW command payloads and vice versa.
> + */
> +
> +#include <linux/module.h>
> +#include <linux/slab.h>
> +#include <linux/uuid.h>
> +#include <linux/mei_cl_bus.h>
> +#include <linux/component.h>
> +#include <drm/drm_connector.h>
> +#include <drm/i915_component.h>
> +#include <drm/i915_pxp_tee_interface.h>
> +
> +#include "mei_pxp.h"
> +
> +/**
> + * mei_pxp_send_message() - Sends a PXP message to ME FW.
> + * @dev: device corresponding to the mei_cl_device
> + * @message: a message buffer to send
> + * @size: size of the message
> + * Return: 0 on Success, <0 on Failure
> + */
> +static int
> +mei_pxp_send_message(struct device *dev, const void *message, size_t siz=
e)
> +{
> +	struct mei_cl_device *cldev;
> +	ssize_t byte;
> +
> +	if (!dev || !message)
> +		return -EINVAL;
> +
> +	cldev =3D to_mei_cl_device(dev);
> +
> +	/* temporary drop const qualifier till the API is fixed */
> +	byte =3D mei_cldev_send(cldev, (u8 *)message, size);
> +	if (byte < 0) {
> +		dev_dbg(dev, "mei_cldev_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	return 0;
> +}
> +
> +/**
> + * mei_pxp_receive_message() - Receives a PXP message from ME FW.
> + * @dev: device corresponding to the mei_cl_device
> + * @buffer: a message buffer to contain the received message
> + * @size: size of the buffer
> + * Return: bytes sent on Success, <0 on Failure
> + */
> +static int
> +mei_pxp_receive_message(struct device *dev, void *buffer, size_t size)
> +{
> +	struct mei_cl_device *cldev;
> +	ssize_t byte;
> +
> +	if (!dev || !buffer)
> +		return -EINVAL;
> +
> +	cldev =3D to_mei_cl_device(dev);
> +
> +	byte =3D mei_cldev_recv(cldev, buffer, size);
> +	if (byte < 0) {
> +		dev_dbg(dev, "mei_cldev_recv failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	return byte;
> +}
> +
> +static const struct i915_pxp_component_ops mei_pxp_ops =3D {
> +	.owner =3D THIS_MODULE,
> +	.send =3D mei_pxp_send_message,
> +	.recv =3D mei_pxp_receive_message,
> +};
> +
> +static int mei_component_master_bind(struct device *dev)
> +{
> +	struct mei_cl_device *cldev =3D to_mei_cl_device(dev);
> +	struct i915_pxp_component *comp_master =3D mei_cldev_get_drvdata(cldev);
> +	int ret;
> +
> +	dev_dbg(dev, "%s\n", __func__);
> +	comp_master->ops =3D &mei_pxp_ops;
> +	comp_master->tee_dev =3D dev;
> +	ret =3D component_bind_all(dev, comp_master);
> +	if (ret < 0)
> +		return ret;
> +
> +	return 0;
> +}
> +
> +static void mei_component_master_unbind(struct device *dev)
> +{
> +	struct mei_cl_device *cldev =3D to_mei_cl_device(dev);
> +	struct i915_pxp_component *comp_master =3D mei_cldev_get_drvdata(cldev);
> +
> +	dev_dbg(dev, "%s\n", __func__);
> +	component_unbind_all(dev, comp_master);
> +}
> +
> +static const struct component_master_ops mei_component_master_ops =3D {
> +	.bind =3D mei_component_master_bind,
> +	.unbind =3D mei_component_master_unbind,
> +};
> +
> +/**
> + * mei_pxp_component_match - compare function for matching mei pxp.
> + *
> + *    The function checks if the driver is i915, the subcomponent is PXP
> + *    and the grand parent of pxp and the parent of i915 are the same
> + *    PCH device.
> + *
> + * @dev: master device
> + * @subcomponent: subcomponent to match (I915_COMPONENT_PXP)
> + * @data: compare data (mei pxp device)
> + *
> + * Return:
> + * * 1 - if components match
> + * * 0 - otherwise
> + */
> +static int mei_pxp_component_match(struct device *dev, int subcomponent,
> +				   void *data)
> +{
> +	struct device *base =3D data;
> +
> +	if (subcomponent !=3D I915_COMPONENT_PXP)
> +		return 0;
> +
> +	if (strcmp(dev->driver->name, "i915") =3D=3D 0) {
> +		base =3D base->parent;
> +		if (!base)
> +			return 0;
> +
> +		base =3D base->parent;
> +		dev =3D dev->parent;
> +		return (base && dev && dev =3D=3D base);
> +	}
> +
> +	return 0;
> +}
> +
> +static int mei_pxp_probe(struct mei_cl_device *cldev,
> +			 const struct mei_cl_device_id *id)
> +{
> +	struct i915_pxp_component *comp_master;
> +	struct component_match *master_match;
> +	int ret;
> +
> +	ret =3D mei_cldev_enable(cldev);
> +	if (ret < 0) {
> +		dev_err(&cldev->dev, "mei_cldev_enable Failed. %d\n", ret);
> +		goto enable_err_exit;
> +	}
> +
> +	comp_master =3D kzalloc(sizeof(*comp_master), GFP_KERNEL);
> +	if (!comp_master) {
> +		ret =3D -ENOMEM;
> +		goto err_exit;
> +	}
> +
> +	master_match =3D NULL;
> +	component_match_add_typed(&cldev->dev, &master_match,
> +				  mei_pxp_component_match, &cldev->dev);
> +	if (IS_ERR_OR_NULL(master_match)) {
> +		ret =3D -ENOMEM;
> +		goto err_exit;
> +	}
> +
> +	mei_cldev_set_drvdata(cldev, comp_master);
> +	ret =3D component_master_add_with_match(&cldev->dev,
> +					      &mei_component_master_ops,
> +					      master_match);
> +	if (ret < 0) {
> +		dev_err(&cldev->dev, "Master comp add failed %d\n", ret);
> +		goto err_exit;
> +	}
> +
> +	return 0;
> +
> +err_exit:
> +	mei_cldev_set_drvdata(cldev, NULL);
> +	kfree(comp_master);
> +	mei_cldev_disable(cldev);
> +enable_err_exit:
> +	return ret;
> +}
> +
> +static void mei_pxp_remove(struct mei_cl_device *cldev)
> +{
> +	struct i915_pxp_component *comp_master =3D mei_cldev_get_drvdata(cldev);
> +	int ret;
> +
> +	component_master_del(&cldev->dev, &mei_component_master_ops);
> +	kfree(comp_master);
> +	mei_cldev_set_drvdata(cldev, NULL);
> +
> +	ret =3D mei_cldev_disable(cldev);
> +	if (ret)
> +		dev_warn(&cldev->dev, "mei_cldev_disable() failed\n");
> +}
> +
> +/* fbf6fcf1-96cf-4e2e-a6a6-1bab8cbe36b1 : PAVP GUID*/
                                                      ^ missing space
> +#define MEI_GUID_PXP GUID_INIT(0xfbf6fcf1, 0x96cf, 0x4e2e, 0xA6, \
> +			       0xa6, 0x1b, 0xab, 0x8c, 0xbe, 0x36, 0xb1)

I don't have the spec to confirm this... that said...

the implementation looks clean and with the very little that I learned
from MEI on the recent months I'm comfortable in adding:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Tomas, ack to get it from drm/drm-intel tree?

> +
> +static struct mei_cl_device_id mei_pxp_tbl[] =3D {
> +	{ .uuid =3D MEI_GUID_PXP, .version =3D MEI_CL_VERSION_ANY },
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(mei, mei_pxp_tbl);
> +
> +static struct mei_cl_driver mei_pxp_driver =3D {
> +	.id_table =3D mei_pxp_tbl,
> +	.name =3D KBUILD_MODNAME,
> +	.probe =3D mei_pxp_probe,
> +	.remove	=3D mei_pxp_remove,
> +};
> +
> +module_mei_cl_driver(mei_pxp_driver);
> +
> +MODULE_AUTHOR("Intel Corporation");
> +MODULE_LICENSE("GPL");
> +MODULE_DESCRIPTION("MEI PXP");
> diff --git a/drivers/misc/mei/pxp/mei_pxp.h b/drivers/misc/mei/pxp/mei_px=
p.h
> new file mode 100644
> index 000000000000..e7b15373fefd
> --- /dev/null
> +++ b/drivers/misc/mei/pxp/mei_pxp.h
> @@ -0,0 +1,18 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright =A9 2020 Intel Corporation
> + *
> + * Authors:
> + * Vitaly Lubart <vitaly.lubart@intel.com>
> + */
> +
> +#ifndef __MEI_PXP_H__
> +#define __MEI_PXP_H__
> +
> +/* me_pxp_status: Enumeration of all PXP Status Codes */
> +enum me_pxp_status {
> +	ME_PXP_STATUS_SUCCESS			=3D 0x0000,
> +
> +};
> +
> +#endif /* __MEI_PXP_H__ */
> -- =

> 2.29.2
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
