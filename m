Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 214B3358F50
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Apr 2021 23:38:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A413E6E3D8;
	Thu,  8 Apr 2021 21:38:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B74A6E3EC
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Apr 2021 21:38:23 +0000 (UTC)
IronPort-SDR: 9FGztIt1+NDS/YskEm8O2SScKnIAQKcUbKFyliqqCb8SwUGcZsK7RU2BoKf0wW6xMQm4Sgz5Ny
 s+i9e6nQ7C2Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9948"; a="254971750"
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="254971750"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 14:38:22 -0700
IronPort-SDR: Md0SKFF1J6bTq54NgC9DaKUO4WIb0NDLZp3HI4KOJ3NTZeCoxH4NBJm5lfl4VyGL3Wdk96XVhK
 8elXoniopWtw==
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="458992003"
Received: from kmkerns-mobl2.amr.corp.intel.com (HELO intel.com)
 ([10.209.131.159])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 14:38:21 -0700
Date: Thu, 8 Apr 2021 17:38:18 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <YG93ylhtDihPh4Qo@intel.com>
References: <20210328225709.18541-1-daniele.ceraolospurio@intel.com>
 <20210328225709.18541-2-daniele.ceraolospurio@intel.com>
 <44b1a6ba-44fc-4a8d-d35b-c44e59849edf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <44b1a6ba-44fc-4a8d-d35b-c44e59849edf@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 01/16] drm/i915/pxp: Define PXP component
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
Cc: intel-gfx@lists.freedesktop.org, Vitaly Lubart <vitaly.lubart@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 29, 2021 at 03:55:03PM +0200, Michal Wajdeczko wrote:
> =

> =

> On 29.03.2021 00:56, Daniele Ceraolo Spurio wrote:
> > This will be used for communication between the i915 driver and the mei
> > one. Defining it in a stand-alone patch to avoid circualr dependedencies
> =

> typos
> =

> > between the patches modifying the 2 drivers.
> > =

> > Split out from an original patch from  Huang, Sean Z
> > =

> > v2: rename the component struct (Rodrigo)
> > =

> > Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > ---
> >  include/drm/i915_component.h         |  1 +
> >  include/drm/i915_pxp_tee_interface.h | 45 ++++++++++++++++++++++++++++
> >  2 files changed, 46 insertions(+)
> >  create mode 100644 include/drm/i915_pxp_tee_interface.h
> > =

> > diff --git a/include/drm/i915_component.h b/include/drm/i915_component.h
> > index 55c3b123581b..c1e2a43d2d1e 100644
> > --- a/include/drm/i915_component.h
> > +++ b/include/drm/i915_component.h
> > @@ -29,6 +29,7 @@
> >  enum i915_component_type {
> >  	I915_COMPONENT_AUDIO =3D 1,
> >  	I915_COMPONENT_HDCP,
> > +	I915_COMPONENT_PXP
> >  };
> >  =

> >  /* MAX_PORT is the number of port
> > diff --git a/include/drm/i915_pxp_tee_interface.h b/include/drm/i915_px=
p_tee_interface.h
> > new file mode 100644
> > index 000000000000..09b8389152af
> > --- /dev/null
> > +++ b/include/drm/i915_pxp_tee_interface.h
> > @@ -0,0 +1,45 @@
> > +/* SPDX-License-Identifier: MIT */
> > +/*
> > + * Copyright =A9 2020 Intel Corporation
> > + *
> > + * Authors:
> > + * Vitaly Lubart <vitaly.lubart@intel.com>
> =

> shouldn't be at least on cc: ?

yeap, good idea...
let's start cc'ing now...

> =

> > + */
> > +
> > +#ifndef _I915_PXP_TEE_INTERFACE_H_
> > +#define _I915_PXP_TEE_INTERFACE_H_
> > +
> > +#include <linux/mutex.h>
> > +#include <linux/device.h>
> > +
> > +/**
> > + * struct i915_pxp_component_ops - ops for PXP services.
> > + * @owner: Module providing the ops
> > + * @send: sends data to PXP
> > + * @receive: receives data from PXP
> > + */
> > +struct i915_pxp_component_ops {
> > +	/**
> > +	 * @owner: owner of the module provding the ops
> =

> typo
> =

> > +	 */
> > +	struct module *owner;
> =

> hmm, usually ops structs have only function pointers, why do we need
> owner here ? and are you sure is it a right place if still needed ?

it is indeed not used here and for this series it could be removed.

I haven't considered this earlier because this came from TEE directly,
but for now, let's remove if not used.

> =

> > +
> > +	int (*send)(struct device *dev, const void *message, size_t size);
> > +	int (*recv)(struct device *dev, void *buffer, size_t size);
> > +};
> > +
> > +/**
> > + * struct i915_pxp_component - Used for communication between i915 and=
 TEE
> > + * drivers for the PXP services
> > + * @tee_dev: device that provide the PXP service from TEE Bus.
> > + * @pxp_ops: Ops implemented by TEE driver, used by i915 driver.
> > + */
> > +struct i915_pxp_component {
> > +	struct device *tee_dev;
> > +	const struct i915_pxp_component_ops *ops;
> > +
> > +	/* To protect the above members. */
> > +	struct mutex mutex;
> > +};
> > +
> > +#endif /* _I915_TEE_PXP_INTERFACE_H_ */
> > =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
