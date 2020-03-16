Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C53771866EB
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 09:50:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE1E56E384;
	Mon, 16 Mar 2020 08:50:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A49C46E397
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2020 08:50:19 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id a141so16994537wme.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2020 01:50:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=s5+2p2JtBFJn+06U7OWeCCWEHHOTBFjw9F68Yq461sc=;
 b=aE5eh5kAITHepiGOxbRwJ6sc21TZXh83fXlbpadElGdpVfH98NHHu4KHWyl+xACdSO
 xx0/9Q3+ywQBmnGpNLtR14Bv7MOntI0EMIEOMerU15MXbRF1WFgueCg6cm1fMBxyeeF+
 YV9KO4zM30EDGyZrYuS7gAxe7B0P65P4Yi5RA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=s5+2p2JtBFJn+06U7OWeCCWEHHOTBFjw9F68Yq461sc=;
 b=VRA4lJYak0WaEJHnVgeuaeOh3INf5faxWea+ym5VF5MtbOM3Kdn1PsapoJ2SV9Iq85
 5yP18XWIUg2H0EGKEUE+hsZwdW6/YOkTP02lMvIHURvrdEtfe4qR0SkuqOGAkHJ8bxxG
 uD0eW5/vQrqi7itQt0YAynuV9aWUCWYmFiDuN6/xJvX1/tv8zDoC7Cd5pYlynmX+Hayj
 OSrPvEMrMRCQ8zxvSHDCqlIg00Yr85S9V09GM3WJLiZquW0uNmeqBrN/DKuBL81x0qtT
 Gz7EqbAr8tbsE0Rn6YuknLG1EzBEzZxTeUEo379F2RvZ7ObR9Cz8o2aqkA/KKTRkwvW1
 Bq/Q==
X-Gm-Message-State: ANhLgQ1eTZXn43ti8nVq8bE/smTQ+ZPHMlv+Z3OUJN+FVS/tOiMWEC2X
 TdADM7dRlRgMni4Ml+c8kZOBCUj1U99Uk029
X-Google-Smtp-Source: ADFU+vuAYBZq+FjWjgDFhY0QN8PCp2eAzU0qMHulaSjSlg/aX6n6ET2IVPWgX2Himq02YlgP6cpkHw==
X-Received: by 2002:a1c:4e14:: with SMTP id g20mr25276610wmh.143.1584348618271; 
 Mon, 16 Mar 2020 01:50:18 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id a13sm21798818wrh.80.2020.03.16.01.50.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Mar 2020 01:50:17 -0700 (PDT)
Date: Mon, 16 Mar 2020 09:50:15 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <20200316085015.GF2363188@phenom.ffwll.local>
References: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
 <20200302222631.3861340-4-daniel.vetter@ffwll.ch>
 <3afd6c45-1f32-160e-2546-a502b8f1d743@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3afd6c45-1f32-160e-2546-a502b8f1d743@suse.de>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH 03/51] drm: add managed resources tied to
 drm_device
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
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 11, 2020 at 10:14:03AM +0100, Thomas Zimmermann wrote:
> =

> =

> Am 02.03.20 um 23:25 schrieb Daniel Vetter:
> <...>
> > +
> > +int __drmm_add_action(struct drm_device *dev,
> > +		      drmres_release_t action,
> > +		      void *data, const char *name)
> > +{
> > +	struct drmres *dr;
> > +	void **void_ptr;
> > +
> > +	dr =3D alloc_dr(action, data ? sizeof(void*) : 0,
> > +		      GFP_KERNEL | __GFP_ZERO,
> > +		      dev_to_node(dev->dev));
> > +	if (!dr) {
> > +		drm_dbg_drmres(dev, "failed to add action %s for %p\n",
> > +			       name, data);
> > +		return -ENOMEM;
> > +	}
> > +
> > +	dr->node.name =3D name;
> =

> Maybe do a kstrdup_const() on name and later a kfree_const() during
> release. Just in case someone decides to allocate 'name' dynamically.

Makes sense, but a bit of churn since I need a free_dr() helper now :-)
-Daniel

> =

> > +	if (data) {
> > +		void_ptr =3D (void **)&dr->data;
> > +		*void_ptr =3D data;
> > +	}
> > +
> > +	add_dr(dev, dr);
> > +
> > +	return 0;
> > +}
> > +EXPORT_SYMBOL(__drmm_add_action);
> > +
> > +void *drmm_kmalloc(struct drm_device *dev, size_t size, gfp_t gfp)
> > +{
> > +	struct drmres *dr;
> > +
> > +	dr =3D alloc_dr(NULL, size, gfp, dev_to_node(dev->dev));
> > +	if (!dr) {
> > +		drm_dbg_drmres(dev, "failed to allocate %zu bytes, %u flags\n",
> > +			       size, gfp);
> > +		return NULL;
> > +	}
> > +	dr->node.name =3D "kmalloc";
> > +
> > +	add_dr(dev, dr);
> > +
> > +	return dr->data;
> > +}
> > +EXPORT_SYMBOL(drmm_kmalloc);
> > +
> > +void drmm_kfree(struct drm_device *dev, void *data)
> > +{
> > +	struct drmres *dr_match =3D NULL, *dr;
> > +	unsigned long flags;
> > +
> > +	if (!data)
> > +		return;
> > +
> > +	spin_lock_irqsave(&dev->managed.lock, flags);
> > +	list_for_each_entry(dr, &dev->managed.resources, node.entry) {
> > +		if (dr->data =3D=3D data) {
> > +			dr_match =3D dr;
> > +			del_dr(dev, dr_match);
> > +			break;
> > +		}
> > +	}
> > +	spin_unlock_irqrestore(&dev->managed.lock, flags);
> > +
> > +	if (WARN_ON(!dr_match))
> > +		return;
> > +
> > +	kfree(dr_match);
> > +}
> > +EXPORT_SYMBOL(drmm_kfree);
> > diff --git a/include/drm/drm_device.h b/include/drm/drm_device.h
> > index bb60a949f416..d39132b477dd 100644
> > --- a/include/drm/drm_device.h
> > +++ b/include/drm/drm_device.h
> > @@ -67,6 +67,21 @@ struct drm_device {
> >  	/** @dev: Device structure of bus-device */
> >  	struct device *dev;
> >  =

> > +	/**
> > +	 * @managed:
> > +	 *
> > +	 * Managed resources linked to the lifetime of this &drm_device as
> > +	 * tracked by @ref.
> > +	 */
> > +	struct {
> > +		/** @managed.resources: managed resources list */
> > +		struct list_head resources;
> > +		/** @managed.final_kfree: pointer for final kfree() call */
> > +		void *final_kfree;
> > +		/** @managed.lock: protects @managed.resources */
> > +		spinlock_t lock;
> > +	} managed;
> > +
> >  	/** @driver: DRM driver managing the device */
> >  	struct drm_driver *driver;
> >  =

> > diff --git a/include/drm/drm_managed.h b/include/drm/drm_managed.h
> > new file mode 100644
> > index 000000000000..7b5df7d09b19
> > --- /dev/null
> > +++ b/include/drm/drm_managed.h
> > @@ -0,0 +1,30 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +
> > +#ifndef _DRM_MANAGED_H_
> > +#define _DRM_MANAGED_H_
> > +
> > +#include <linux/gfp.h>
> > +#include <linux/types.h>
> > +
> > +struct drm_device;
> > +
> > +typedef void (*drmres_release_t)(struct drm_device *dev, void *res);
> > +
> > +#define drmm_add_action(dev, action, data) \
> > +	__drmm_add_action(dev, action, data, #action)
> > +
> > +int __must_check __drmm_add_action(struct drm_device *dev,
> > +				   drmres_release_t action,
> > +				   void *data, const char *name);
> > +
> > +void drmm_add_final_kfree(struct drm_device *dev, void *parent);
> > +
> > +void *drmm_kmalloc(struct drm_device *dev, size_t size, gfp_t gfp) __m=
alloc;
> > +static inline void *drmm_kzalloc(struct drm_device *dev, size_t size, =
gfp_t gfp)
> > +{
> > +	return drmm_kmalloc(dev, size, gfp | __GFP_ZERO);
> > +}
> > +
> > +void drmm_kfree(struct drm_device *dev, void *data);
> > +
> > +#endif
> > diff --git a/include/drm/drm_print.h b/include/drm/drm_print.h
> > index ca7cee8e728a..1c9417430d08 100644
> > --- a/include/drm/drm_print.h
> > +++ b/include/drm/drm_print.h
> > @@ -313,6 +313,10 @@ enum drm_debug_category {
> >  	 * @DRM_UT_DP: Used in the DP code.
> >  	 */
> >  	DRM_UT_DP		=3D 0x100,
> > +	/**
> > +	 * @DRM_UT_DRMRES: Used in the drm managed resources code.
> > +	 */
> > +	DRM_UT_DRMRES		=3D 0x200,
> >  };
> >  =

> >  static inline bool drm_debug_enabled(enum drm_debug_category category)
> > @@ -442,6 +446,8 @@ void drm_dev_dbg(const struct device *dev, enum drm=
_debug_category category,
> >  	drm_dev_dbg((drm)->dev, DRM_UT_LEASE, fmt, ##__VA_ARGS__)
> >  #define drm_dbg_dp(drm, fmt, ...)					\
> >  	drm_dev_dbg((drm)->dev, DRM_UT_DP, fmt, ##__VA_ARGS__)
> > +#define drm_dbg_drmres(drm, fmt, ...)					\
> > +	drm_dev_dbg((drm)->dev, DRM_UT_DRMRES, fmt, ##__VA_ARGS__)
> >  =

> >  =

> >  /*
> > =

> =

> -- =

> Thomas Zimmermann
> Graphics Driver Developer
> SUSE Software Solutions Germany GmbH
> Maxfeldstr. 5, 90409 N=FCrnberg, Germany
> (HRB 36809, AG N=FCrnberg)
> Gesch=E4ftsf=FChrer: Felix Imend=F6rffer
> =





-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
