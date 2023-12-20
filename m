Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03F2B819EA4
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Dec 2023 13:07:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3954210E330;
	Wed, 20 Dec 2023 12:07:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12F2310E330
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Dec 2023 12:07:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1703074022;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=EbOwhVS1ctQSdH2sSKDftBcrjpmqhXvm37wmsRPE+1U=;
 b=SRWipTZV9e0rbFN4CnON0T0U5DoBzW+ZVHr4BJqGd+bMmMbAd2SrGyJ6YzJsymgAGiihJW
 ztsQjUcFVPl/bMfevpndyA3l1ynHAmYQRaPs2vns+IARUCC8KKBXEjDmWjQaojY8Mkuwqa
 1BRQQ2g38iGJgiQdIN9DVS6FAuSP3Gk=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-215-H7iOIIAHPTKC-z6Wdz0JVQ-1; Wed, 20 Dec 2023 07:06:59 -0500
X-MC-Unique: H7iOIIAHPTKC-z6Wdz0JVQ-1
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-40d2fa6b23eso10354365e9.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Dec 2023 04:06:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1703074018; x=1703678818;
 h=content-transfer-encoding:mime-version:message-id:date:references
 :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=EbOwhVS1ctQSdH2sSKDftBcrjpmqhXvm37wmsRPE+1U=;
 b=XLm9cFbsDgj6ybbB0GlPcUX3ZNZubhaFahWKWhlQiXtyuE15suJFo9dCN1s2fuCkcG
 dxFQlXs47JnqW2Tds7P7HgzE9tm1RfkbRBsSYxqBxnNgUHNTrzD3ngtoxZ2i2Pjz9idf
 /mZKfRIEZL+LknIQFJGe02kkZ/UGUaLK5/g2vNtN1J35zAxo7SLRL56FWCMT8hLWE3t1
 xoEUhCQpU9AiG6afXPNWw0cwcfjWrtllyPsvNF2y7/Go0lII76Mp+ETah1VVypZ/2bFg
 4ER3NF8ht8qMSCKJATcbD+p8LuDNWvyOOQNo3Pk5P0o2puU/DvlJEyR6X83akF7Rz0YF
 u9tw==
X-Gm-Message-State: AOJu0YybrDgw9uithq9O1LhFw2zlmdhrn7jZXbvvtZMAbDl2i8UK27tF
 t+mMjdaLlgvKTFxg5dDW6J5sdR4Bh+WJ0Y3MTh8gzz0ob8E7wB2YVxu8ZqL6nkMilBdXFLiGu5n
 GIEcsYzbUDUXuCnGmdbhtWWZxkEdE
X-Received: by 2002:a05:600c:4f11:b0:40c:f3d:f31 with SMTP id
 l17-20020a05600c4f1100b0040c0f3d0f31mr7136022wmq.163.1703074018686; 
 Wed, 20 Dec 2023 04:06:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFBIxugpHBrjRSIo01FYd4FiSMMdtxTl59PiGMbbg8SDogliNn6YN6Znvfza6bQal3C4SeIPw==
X-Received: by 2002:a05:600c:4f11:b0:40c:f3d:f31 with SMTP id
 l17-20020a05600c4f1100b0040c0f3d0f31mr7136017wmq.163.1703074018350; 
 Wed, 20 Dec 2023 04:06:58 -0800 (PST)
Received: from localhost ([195.166.127.210]) by smtp.gmail.com with ESMTPSA id
 i15-20020a05600c354f00b0040d378510adsm1883028wmq.1.2023.12.20.04.06.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Dec 2023 04:06:58 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 2/2] drm: Warn when freeing a framebuffer that's still
 on a list
In-Reply-To: <20231211081625.25704-2-ville.syrjala@linux.intel.com>
References: <20231211081625.25704-1-ville.syrjala@linux.intel.com>
 <20231211081625.25704-2-ville.syrjala@linux.intel.com>
Date: Wed, 20 Dec 2023 13:06:57 +0100
Message-ID: <87a5q55b8e.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ville Syrjala <ville.syrjala@linux.intel.com> writes:

> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Sprinkle some extra WARNs around so that we might catch
> premature framebuffer destruction more readily.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---

Acked-by: Javier Martinez Canillas <javierm@redhat.com>

--=20
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

