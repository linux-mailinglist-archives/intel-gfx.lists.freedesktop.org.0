Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEBE7584795
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 23:18:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 634D5113D16;
	Thu, 28 Jul 2022 21:17:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE800112BF4
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 21:17:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1659043070;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=o/OfbOToIOdGriD6UGrknJy8SryGGj67M+1E/6CU+Ec=;
 b=FM0r8cnOPX8IdZtICJgThI9zEfERd0UrYDida+hX9rBrLBJCtu5o7PVrzcwo+KLpXgsCOI
 l/NZLe8IEGAl7cbsY6uzp4rpbBGy/omg38nXR6aEjc3WLMkXXtmdl5RoLK5JGiGtk72rPV
 NXy57MMIRW9PF2rTmOG6DfrJpfsIz9w=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-619-wcT0CR9jOyC3P5UoO9S34w-1; Thu, 28 Jul 2022 17:17:48 -0400
X-MC-Unique: wcT0CR9jOyC3P5UoO9S34w-1
Received: by mail-qt1-f198.google.com with SMTP id
 fz9-20020a05622a5a8900b0031eef501518so1776697qtb.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 14:17:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=o/OfbOToIOdGriD6UGrknJy8SryGGj67M+1E/6CU+Ec=;
 b=3jZE/9EihCiRwM6O5UpQjnCTcPgHwFVMCkO3qn77TqZg9A/P+qiw+W1xEh+efXBZJC
 aHw1mDVOPGxFrdt8JHcntGbhwHyUbajqm09vfPREIpWN61qt0JuUlOjqIV8+ExPiKsy3
 nwNlXdlYt7J9g/IgeMVd7zZyPXGUmMNIxVtbutLZxkt+FcXzcSoSvq28ZIm/z9OnzrnC
 ZC5aLfLJ6jfRjPSrcyZf2hcm1RBnvuTYRIh4a07JbgFnkCkMHbeZTtzyOuIFqd0qCe6I
 xN5KKxaQ7sTRk+lr61KB8MGBArAL+c/Co6g6w5PIrdrIsfRwVWOpTPnj3/dQGicIZURx
 4b+w==
X-Gm-Message-State: ACgBeo1y3lcOlz7LSoJrZPEJ3DkDCJqN0QbTEg3ZqTHzY7zpzj7zW5an
 UoJt7Sg8dTGyn8hEds34tGzMcj7qEDWuEFPWhXbpiX/+vtRTtaQqPx4V6+seGsdnpsekkvbD/2U
 j6GzY6g/xIceX9mh8fR73JBBxYYXR
X-Received: by 2002:a05:6214:d0b:b0:473:6ec:7a88 with SMTP id
 11-20020a0562140d0b00b0047306ec7a88mr745094qvh.15.1659043068301; 
 Thu, 28 Jul 2022 14:17:48 -0700 (PDT)
X-Google-Smtp-Source: AA6agR60uCxaFzrGMtUq5KKxNBTJRHhJG8jPcfbfPtMDcncqIYPU6qs8lx55P8jDBfNQhF2MZEP13g==
X-Received: by 2002:a05:6214:d0b:b0:473:6ec:7a88 with SMTP id
 11-20020a0562140d0b00b0047306ec7a88mr745075qvh.15.1659043068088; 
 Thu, 28 Jul 2022 14:17:48 -0700 (PDT)
Received: from [192.168.8.138] (pool-100-0-245-4.bstnma.fios.verizon.net.
 [100.0.245.4]) by smtp.gmail.com with ESMTPSA id
 u4-20020a05620a0c4400b006b5c5987ff2sm1151388qki.96.2022.07.28.14.17.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Jul 2022 14:17:47 -0700 (PDT)
Message-ID: <6988c4ad3e230b8d252a2edff190502a0b17f4f2.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Christoph Hellwig <hch@lst.de>, Jani Nikula
 <jani.nikula@linux.intel.com>,  Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Ben Skeggs
 <bskeggs@redhat.com>, Karol Herbst <kherbst@redhat.com>
Date: Thu, 28 Jul 2022 17:17:46 -0400
In-Reply-To: <20220711082614.GA29487@lst.de>
References: <20220711082614.GA29487@lst.de>
Organization: Red Hat Inc.
User-Agent: Evolution 3.42.4 (3.42.4-2.fc35)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] susetting the remaining swioltb couplin in DRM
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
Cc: nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi! Sorry about the slow reply to this, been busy with a bunch of other
pressing nouveau work lately.

Anyway, the steps look pretty simple here so I can see if I can write up a
patch shortly :)

On Mon, 2022-07-11 at 10:26 +0200, Christoph Hellwig wrote:
> Hi i915 and nouveau maintainers,
> 
> any chance I could get some help to remove the remaining direct
> driver calls into swiotlb, namely swiotlb_max_segment and
> is_swiotlb_active.  Either should not matter to a driver as they
> should be written to the DMA API.
> 
> In the i915 case it seems like the driver should use
> dma_alloc_noncontiguous and/or dma_alloc_noncoherent to allocate
> DMAable memory instead of using alloc_page and the streaming
> dma mapping helpers.
> 
> For the latter it seems like it should just stop passing
> use_dma_alloc == true to ttm_device_init and/or that function
> should switch to use dma_alloc_noncoherent.
> 

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

