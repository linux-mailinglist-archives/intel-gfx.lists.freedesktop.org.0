Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97FFA67867D
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jan 2023 20:37:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8093E10E54F;
	Mon, 23 Jan 2023 19:37:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 383B310E54F
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Jan 2023 19:37:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1674502646;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0vWogAhmj1NvtjWCQKs+r5RRl21/4W7OFkx5SINebkk=;
 b=htwvFvDHjbcaURmolX68XCVE0P5ePiM1/1TuyX2C7Xazj1WOf/3dVeEmvAB0daiJBYeBwA
 qSUDWL9mBQu3ziCA/VRESlZoDqnN67Lm3lOpYIjK0H25FvhwHl5GHkinP04ob0a0U66/86
 rTMVO+ptXrMGSuqTHU6b6s6eLF5Mdik=
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com
 [209.85.166.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-345-WdMccNUMPpGh2nNd2h2GjQ-1; Mon, 23 Jan 2023 14:37:25 -0500
X-MC-Unique: WdMccNUMPpGh2nNd2h2GjQ-1
Received: by mail-il1-f200.google.com with SMTP id
 l13-20020a056e0212ed00b00304c6338d79so9057259iln.21
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Jan 2023 11:37:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=0vWogAhmj1NvtjWCQKs+r5RRl21/4W7OFkx5SINebkk=;
 b=bzhog+u5wosRYFtEo7HBV6K90K9WeCwCSSYJb9MxIxRXDp2u7BgYoJnD/S47oIaVHn
 iUkGLcaMZNHrpfeM8hH/Xd4YO8rMqxWb8wJomkUbSlytXFvAdecQlah+6B9mrdH5O+X4
 J+kkLmayko7eSZk0gIJ8kpKoJbQSl4kVtC1PFKm3/jTStiHq5ooV/6dQsxxiciYWrayU
 A8H8ulih6YoHhAk6JrZ+ToVxTgNDtSkh7wOeBKxSHX0hbfDGwjsZoBXf6in7XD6XuO+O
 WpK73oWCi5hmDy0aLRyDsKD1qFebklDoZGcPG0UMW/ZDKlaoIsCD+4qsE8lZeP2kHZLi
 NMxw==
X-Gm-Message-State: AFqh2kqX0EPDdRFh+RLe/7HJYBSvpW42a6WezgeNq76kdjd4Nqq6BUU1
 paKbwj3k9gisrXFhk9mteFLbop1m9AHsqQVsfCP6Xgm+FPfEMsllHASdrej6XfxcPWd0fMjXmgq
 0rhZDHADCBJhDa9halsbgSSiRQKOe
X-Received: by 2002:a6b:8ed5:0:b0:6dd:83b1:199b with SMTP id
 q204-20020a6b8ed5000000b006dd83b1199bmr18182844iod.16.1674502644470; 
 Mon, 23 Jan 2023 11:37:24 -0800 (PST)
X-Google-Smtp-Source: AMrXdXtu6Ly17bULQyFSGVLnyQUqC5oEfEglCgbjJ55TyAbA0Veuv1+y+vbu15OeDiLpyx1J/bGIWA==
X-Received: by 2002:a6b:8ed5:0:b0:6dd:83b1:199b with SMTP id
 q204-20020a6b8ed5000000b006dd83b1199bmr18182821iod.16.1674502644208; 
 Mon, 23 Jan 2023 11:37:24 -0800 (PST)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 v26-20020a056602059a00b00704c3128817sm7121378iox.43.2023.01.23.11.37.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Jan 2023 11:37:23 -0800 (PST)
Date: Mon, 23 Jan 2023 12:37:03 -0700
From: Alex Williamson <alex.williamson@redhat.com>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20230123123703.35074b2b.alex.williamson@redhat.com>
In-Reply-To: <20230110091009.474427-1-hch@lst.de>
References: <20230110091009.474427-1-hch@lst.de>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] misc mdev tidyups
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
Cc: Tony Krowiak <akrowiak@linux.ibm.com>, Jason Herne <jjherne@linux.ibm.com>,
 kvm@vger.kernel.org, linux-s390@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Halil Pasic <pasic@linux.ibm.com>,
 Kirti Wankhede <kwankhede@nvidia.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 10 Jan 2023 10:10:05 +0100
Christoph Hellwig <hch@lst.de> wrote:

> Hi all,
> 
> this series tidies up the mdev Kconfig interaction and documentation a bit.
> 
> Diffstat:
>  Documentation/driver-api/vfio-mediated-device.rst |  108 ----------------------
>  Documentation/s390/vfio-ap.rst                    |    1 
>  arch/s390/Kconfig                                 |    6 -
>  arch/s390/configs/debug_defconfig                 |    1 
>  arch/s390/configs/defconfig                       |    1 
>  drivers/gpu/drm/i915/Kconfig                      |    2 
>  drivers/vfio/mdev/Kconfig                         |    8 -
>  samples/Kconfig                                   |   16 +--
>  samples/vfio-mdev/README.rst                      |  100 ++++++++++++++++++++
>  9 files changed, 115 insertions(+), 128 deletions(-)
> 

Applied to vfio next branch for v6.3.  Thanks,

Alex

