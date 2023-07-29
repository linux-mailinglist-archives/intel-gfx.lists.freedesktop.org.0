Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A723076813B
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Jul 2023 21:10:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A14EA10E117;
	Sat, 29 Jul 2023 19:10:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A72F7892F2
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Jul 2023 19:10:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1690657805;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=YOCFbmaqJDliMmq4qRXmQzpcNBbZ0rghMQxEBFeZeig=;
 b=JEXB2HrUkMgCyeFCzoeQ5LcomrPt1WYJyQMBmhgpUnN6b5jBHpvYXNi2dCZjFTl1wLJlXX
 nd4/8gIYNqPwHNu6+XoQ3wIqO6DN/dv0coPGs6eWkPdwAjWR7hK9o9kjuLtKPYZ6jhtatU
 xuJhTDZB+AFuXBgTeCtUFQEQwJlWhmg=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-55-wlw07iBOPBetjPB0KqVdSQ-1; Sat, 29 Jul 2023 15:10:03 -0400
X-MC-Unique: wlw07iBOPBetjPB0KqVdSQ-1
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-3fd2778f5e4so17100035e9.1
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Jul 2023 12:10:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690657802; x=1691262602;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=YOCFbmaqJDliMmq4qRXmQzpcNBbZ0rghMQxEBFeZeig=;
 b=R0cqgr0O5Os9iRtGRIXfxme55d9O0L4rgxUZ+3HRSCNwP2+h5TH/mM6HgodnyrzXS1
 zVi2fkUFbO0dC6yOhQ8tYusFUCBmPtvJ0t0P2muGUS58Lm+MII4SyqK13jvCRx9cg91C
 jgj2i6/N+wRms5Fs2V72Y3s7bNMfh4x7SXoqDXz0W3xRxas7eBflVuGSTWS7KQ3e6ybu
 x++n31Lz7uvOmGgDDQiHDjVwAa8IUqWZjNDErozhLp3TKpiB8k2z6owaYXcx1kMGWCuM
 /Zk095EcvqsKaNi8Fz6n7GTBhpIiFUQIx2UWYQuaVFDalh3dgkus5f9TFXzHZ8x2Cf6q
 +frw==
X-Gm-Message-State: ABy/qLbvHlQQDhCNvzqKjfrEZcVBv30Id9DZctjFRnBb0VwP1RLItWQx
 frfJOa6DCelS6uYuijSd3FWUQWiMPWDE9RtmQBWdnAAkoO2Bb5kpskuUCw88aadMyy9IWCISFFi
 WCROjliEjbNyikQyhkE9dZFC83usJ
X-Received: by 2002:a05:600c:22c6:b0:3fc:1a6:79a9 with SMTP id
 6-20020a05600c22c600b003fc01a679a9mr4764483wmg.16.1690657802669; 
 Sat, 29 Jul 2023 12:10:02 -0700 (PDT)
X-Google-Smtp-Source: APBJJlHLhWwdb9e5stl9mtFYazDKO5IGT18IwiQdgIdt9oSkXWPDup+CMG32gUcSUxlzRYbRdSzBsA==
X-Received: by 2002:a05:600c:22c6:b0:3fc:1a6:79a9 with SMTP id
 6-20020a05600c22c600b003fc01a679a9mr4764469wmg.16.1690657802420; 
 Sat, 29 Jul 2023 12:10:02 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 x20-20020a1c7c14000000b003fc01f7b415sm9897722wmc.39.2023.07.29.12.10.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 29 Jul 2023 12:10:02 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>, David Airlie
 <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <8b0542c12a2427f34a792c41ac2d2a2922874bfa.1689600102.git.geert+renesas@glider.be>
References: <8b0542c12a2427f34a792c41ac2d2a2922874bfa.1689600102.git.geert+renesas@glider.be>
Date: Sat, 29 Jul 2023 21:10:01 +0200
Message-ID: <877cqiy1o6.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2] drm: Spelling s/sempahore/semaphore/
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
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 Hamza Mahfooz <hamza.mahfooz@amd.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Geert Uytterhoeven <geert+renesas@glider.be> writes:

> Fix misspellings of "semaphore".
>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Reviewed-by: Hamza Mahfooz <hamza.mahfooz@amd.com>
> ---
> v2:
>   - Add Reviewed-by.
> ---

Pushed to drm-misc (drm-misc-next). Thanks!

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

