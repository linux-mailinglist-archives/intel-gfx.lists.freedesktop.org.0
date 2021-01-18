Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 995112FA174
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 14:28:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B8B36E1F6;
	Mon, 18 Jan 2021 13:28:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFA9D6E1F6
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 13:28:00 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id r4so13760134wmh.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 05:28:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=CIzsGliBbSopdadL1aItIFfvgfPFm1TH0AYXUH5P8f0=;
 b=EG1bU1Clp69oWVePE+R8+uBrdoblAVGgjD0Rsl1PG7Dtkt1Y5MiFJNJEr4ggev4ueL
 EqMjCrKKFrn3BdgZTy2G2l/JGR8hhIzxHrXcmcyRxs5NhCf0KUwPm42lZ7D10W+TbZyi
 yocTmgFxoWNwmtqj7G+KGa+17F+DHQp48HcJ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=CIzsGliBbSopdadL1aItIFfvgfPFm1TH0AYXUH5P8f0=;
 b=hc0K9iZA3fx+wRIhN/e+z7SceA88htrlRkU22hGcid2mUarPXefB31voZ24dehafkP
 xfVkfWIhk5kmse118PB8OxdTLB36waWsl2xWj7TZ/xjdDDtP4862OxMbk3exLCDZRkJy
 cGiKDc9OG9MHTAm1UluZlCzeaw+rrkXBtQEIrSAdUmxJoMpsHY6jtDnBbDBtVDowF9Q3
 birs9EWCMN62idRb/YeJcnV3YB12bFRMQ5EUqii4pPxg9HJlGBmOanUNiS3LHvkwh3J2
 bbEAyNgTuXubLitlf7XOJi4f6eWDiK8VL42RXSUIeeKsqcB0McoyR3pEWkahY8BlAY7D
 HpNQ==
X-Gm-Message-State: AOAM531k4k+buZ/SJ2UY4d8Nb+nWSRBgkR7g7B7tYCccDq0LetKWZJuG
 vvqvsb33I8b+XHoaLgr1T10WQQ==
X-Google-Smtp-Source: ABdhPJynswhW/jHIjYf7YzQkhm6cv1Qf880du20KnNrjVLb6EYSgnJjXgAOQMSOVVdy6g+3DjqdirA==
X-Received: by 2002:a7b:c5c7:: with SMTP id n7mr576249wmk.140.1610976479503;
 Mon, 18 Jan 2021 05:27:59 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id a130sm25804754wmf.4.2021.01.18.05.27.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Jan 2021 05:27:58 -0800 (PST)
Date: Mon, 18 Jan 2021 14:27:56 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <YAWM3M8sFXB0xeii@phenom.ffwll.local>
References: <20210115130219.3915789-1-daniel.vetter@ffwll.ch>
 <20210115164739.3958206-1-daniel.vetter@ffwll.ch>
 <e2e5a693-6e8a-7712-b5e9-93d7dc1c3c08@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e2e5a693-6e8a-7712-b5e9-93d7dc1c3c08@amd.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH] dma-buf: Add debug option
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>, linaro-mm-sig@lists.linaro.org,
 David Stevens <stevensd@chromium.org>, Daniel Vetter <daniel.vetter@intel.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 15, 2021 at 07:52:53PM +0100, Christian K=F6nig wrote:
> Am 15.01.21 um 17:47 schrieb Daniel Vetter:
> > We have too many people abusing the struct page they can get at but
> > really shouldn't in importers. Aside from that the backing page might
> > simply not exist (for dynamic p2p mappings) looking at it and using it
> > e.g. for mmap can also wreak the page handling of the exporter
> > completely. Importers really must go through the proper interface like
> > dma_buf_mmap for everything.
> > =

> > I'm semi-tempted to enforce this for dynamic importers since those
> > really have no excuse at all to break the rules.
> > =

> > Unfortuantely we can't store the right pointers somewhere safe to make
> > sure we oops on something recognizable, so best is to just wrangle
> > them a bit by flipping all the bits. At least on x86 kernel addresses
> > have all their high bits sets and the struct page array is fairly low
> > in the kernel mapping, so flipping all the bits gives us a very high
> > pointer in userspace and hence excellent chances for an invalid
> > dereference.
> > =

> > v2: Add a note to the @map_dma_buf hook that exporters shouldn't do
> > fancy caching tricks, which would blow up with this address scrambling
> > trick here (Chris)
> > =

> > Enable by default when CONFIG_DMA_API_DEBUG is enabled.
> > =

> > v3: Only one copy of the mangle/unmangle code (Christian)
> > =

> > v4: #ifdef, not #if (0day)
> > =

> > v5: sg_table can also be an ERR_PTR (Chris, Christian)
> > =

> > Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk> (v2)
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Sumit Semwal <sumit.semwal@linaro.org>
> > Cc: "Christian K=F6nig" <christian.koenig@amd.com>
> > Cc: David Stevens <stevensd@chromium.org>
> > Cc: linux-media@vger.kernel.org
> > Cc: linaro-mm-sig@lists.linaro.org
> =

> Reviewed-by: Christian K=F6nig <christian.koenig@amd.com>

Stuffed into drm-misc-next, thanks for reviewing to both of you.
-Daniel
> =

> > ---
> >   drivers/dma-buf/Kconfig   |  8 +++++++
> >   drivers/dma-buf/dma-buf.c | 46 +++++++++++++++++++++++++++++++++++----
> >   include/linux/dma-buf.h   |  6 +++++
> >   3 files changed, 56 insertions(+), 4 deletions(-)
> > =

> > diff --git a/drivers/dma-buf/Kconfig b/drivers/dma-buf/Kconfig
> > index 4f8224a6ac95..4e16c71c24b7 100644
> > --- a/drivers/dma-buf/Kconfig
> > +++ b/drivers/dma-buf/Kconfig
> > @@ -50,6 +50,14 @@ config DMABUF_MOVE_NOTIFY
> >   	  This is marked experimental because we don't yet have a consistent
> >   	  execution context and memory management between drivers.
> > +config DMABUF_DEBUG
> > +	bool "DMA-BUF debug checks"
> > +	default y if DMA_API_DEBUG
> > +	help
> > +	  This option enables additional checks for DMA-BUF importers and
> > +	  exporters. Specifically it validates that importers do not peek at =
the
> > +	  underlying struct page when they import a buffer.
> > +
> >   config DMABUF_SELFTESTS
> >   	tristate "Selftests for the dma-buf interfaces"
> >   	default n
> > diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
> > index 1c9bd51db110..f264b70c383e 100644
> > --- a/drivers/dma-buf/dma-buf.c
> > +++ b/drivers/dma-buf/dma-buf.c
> > @@ -666,6 +666,34 @@ void dma_buf_put(struct dma_buf *dmabuf)
> >   }
> >   EXPORT_SYMBOL_GPL(dma_buf_put);
> > +static void mangle_sg_table(struct sg_table *sg_table)
> > +{
> > +#ifdef CONFIG_DMABUF_DEBUG
> > +	int i;
> > +	struct scatterlist *sg;
> > +
> > +	/* To catch abuse of the underlying struct page by importers mix
> > +	 * up the bits, but take care to preserve the low SG_ bits to
> > +	 * not corrupt the sgt. The mixing is undone in __unmap_dma_buf
> > +	 * before passing the sgt back to the exporter. */
> > +	for_each_sgtable_sg(sg_table, sg, i)
> > +		sg->page_link ^=3D ~0xffUL;
> > +#endif
> > +
> > +}
> > +static struct sg_table * __map_dma_buf(struct dma_buf_attachment *atta=
ch,
> > +				       enum dma_data_direction direction)
> > +{
> > +	struct sg_table *sg_table;
> > +
> > +	sg_table =3D attach->dmabuf->ops->map_dma_buf(attach, direction);
> > +
> > +	if (!IS_ERR_OR_NULL(sg_table))
> > +		mangle_sg_table(sg_table);
> > +
> > +	return sg_table;
> > +}
> > +
> >   /**
> >    * dma_buf_dynamic_attach - Add the device to dma_buf's attachments l=
ist
> >    * @dmabuf:		[in]	buffer to attach device to.
> > @@ -737,7 +765,7 @@ dma_buf_dynamic_attach(struct dma_buf *dmabuf, stru=
ct device *dev,
> >   				goto err_unlock;
> >   		}
> > -		sgt =3D dmabuf->ops->map_dma_buf(attach, DMA_BIDIRECTIONAL);
> > +		sgt =3D __map_dma_buf(attach, DMA_BIDIRECTIONAL);
> >   		if (!sgt)
> >   			sgt =3D ERR_PTR(-ENOMEM);
> >   		if (IS_ERR(sgt)) {
> > @@ -784,6 +812,16 @@ struct dma_buf_attachment *dma_buf_attach(struct d=
ma_buf *dmabuf,
> >   }
> >   EXPORT_SYMBOL_GPL(dma_buf_attach);
> > +static void __unmap_dma_buf(struct dma_buf_attachment *attach,
> > +			    struct sg_table *sg_table,
> > +			    enum dma_data_direction direction)
> > +{
> > +	/* uses XOR, hence this unmangles */
> > +	mangle_sg_table(sg_table);
> > +
> > +	attach->dmabuf->ops->unmap_dma_buf(attach, sg_table, direction);
> > +}
> > +
> >   /**
> >    * dma_buf_detach - Remove the given attachment from dmabuf's attachm=
ents list
> >    * @dmabuf:	[in]	buffer to detach from.
> > @@ -802,7 +840,7 @@ void dma_buf_detach(struct dma_buf *dmabuf, struct =
dma_buf_attachment *attach)
> >   		if (dma_buf_is_dynamic(attach->dmabuf))
> >   			dma_resv_lock(attach->dmabuf->resv, NULL);
> > -		dmabuf->ops->unmap_dma_buf(attach, attach->sgt, attach->dir);
> > +		__unmap_dma_buf(attach, attach->sgt, attach->dir);
> >   		if (dma_buf_is_dynamic(attach->dmabuf)) {
> >   			dma_buf_unpin(attach);
> > @@ -924,7 +962,7 @@ struct sg_table *dma_buf_map_attachment(struct dma_=
buf_attachment *attach,
> >   		}
> >   	}
> > -	sg_table =3D attach->dmabuf->ops->map_dma_buf(attach, direction);
> > +	sg_table =3D __map_dma_buf(attach, direction);
> >   	if (!sg_table)
> >   		sg_table =3D ERR_PTR(-ENOMEM);
> > @@ -987,7 +1025,7 @@ void dma_buf_unmap_attachment(struct dma_buf_attac=
hment *attach,
> >   	if (dma_buf_is_dynamic(attach->dmabuf))
> >   		dma_resv_assert_held(attach->dmabuf->resv);
> > -	attach->dmabuf->ops->unmap_dma_buf(attach, sg_table, direction);
> > +	__unmap_dma_buf(attach, sg_table, direction);
> >   	if (dma_buf_is_dynamic(attach->dmabuf) &&
> >   	    !IS_ENABLED(CONFIG_DMABUF_MOVE_NOTIFY))
> > diff --git a/include/linux/dma-buf.h b/include/linux/dma-buf.h
> > index 628681bf6c99..efdc56b9d95f 100644
> > --- a/include/linux/dma-buf.h
> > +++ b/include/linux/dma-buf.h
> > @@ -154,6 +154,12 @@ struct dma_buf_ops {
> >   	 * On failure, returns a negative error value wrapped into a pointer.
> >   	 * May also return -EINTR when a signal was received while being
> >   	 * blocked.
> > +	 *
> > +	 * Note that exporters should not try to cache the scatter list, or
> > +	 * return the same one for multiple calls. Caching is done either by =
the
> > +	 * DMA-BUF code (for non-dynamic importers) or the importer. Ownership
> > +	 * of the scatter list is transferred to the caller, and returned by
> > +	 * @unmap_dma_buf.
> >   	 */
> >   	struct sg_table * (*map_dma_buf)(struct dma_buf_attachment *,
> >   					 enum dma_data_direction);
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
