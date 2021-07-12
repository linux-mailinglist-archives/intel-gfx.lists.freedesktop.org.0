Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E413C4655
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 11:47:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38FF689B49;
	Mon, 12 Jul 2021 09:47:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 675CE89B49
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 09:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1626083242;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=OsAxr7I5wY3GHXnm0dzu227J/w3T3hi+AUx2iyLrph4=;
 b=BKiR0KwAVB60uBT+Nvxff+VpBN1jQvvQ0//ri02GVUt1+WsvpP+5QqwwWrRBHp/JnXBmJe
 z8qIJDSw+zUrvGtJEue/ZEA6YOeHCmtWoZWYrmVpZ0Ur2tgUCnNbNIiwvoeSlHDRkNfu4a
 yriHFrk9ZKc2oFYrveV8p4TpUWenA5g=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-474--sr_NmoNM3aeiDs5jamaEw-1; Mon, 12 Jul 2021 05:47:20 -0400
X-MC-Unique: -sr_NmoNM3aeiDs5jamaEw-1
Received: by mail-wr1-f70.google.com with SMTP id
 m9-20020a5d4a090000b029013e2b4a9d1eso2616233wrq.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 02:47:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OsAxr7I5wY3GHXnm0dzu227J/w3T3hi+AUx2iyLrph4=;
 b=TA54e+fVPF3G89tdgE/Hmcd5fHanFvk1zbf6YhqnyyWiXyAsqZd+cnAjvZ7nqZn/db
 wJk0K/9EVBOWi5oC8t4EOt78i3bbWL5vr5yiF27mn/aMGkM63ROm6dou+5OYGYa5TZfe
 lXjcxUP9pOyYAq8gj48cwUkPvNh7q8t2oLzGLOF8sIJ2m0FE3NDUseM7U47xI83T1AQl
 G5qY7qGpMwQyztgGEKDeQu8laX/rxXUTp+wAmx44Y1uilvxjHGoUM68mgoPPMnYeqHxl
 mLv4OMZSdUA6hCF1msY/+ig6mKg9HdRSDBkswy+tRWY6O+xq9ZsgHXjfrp0CPvUJgCDp
 FLDQ==
X-Gm-Message-State: AOAM5301e6YwSJ0T2OGVycnnClM+qFSDvP3/fxp/OE11gM7glIMCsL9P
 w+hS9X0DK/1HauqfAlttmBfASVobzW7fGRRIjr9L1QYJc9oP51piieNh0Y5FM56W2hs29+54Pb9
 0dVhvsnMaZ1lGoxsFWiRWB988EPOk0Bfw6GeDGywAuHAh
X-Received: by 2002:adf:ec0c:: with SMTP id x12mr23662119wrn.113.1626083239347; 
 Mon, 12 Jul 2021 02:47:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw3sW8UYSOM/Q6qgJACh2S4VICMKyF4ZwsV6v+fR4fftaOEQT2tUBbmhmNCwT2qSaSR3qFgvPBKqWkCA/b7Jp8=
X-Received: by 2002:adf:ec0c:: with SMTP id x12mr23662105wrn.113.1626083239204; 
 Mon, 12 Jul 2021 02:47:19 -0700 (PDT)
MIME-Version: 1.0
References: <20210703072502.646239-1-gushengxian507419@gmail.com>
 <anhfX5shNJsdNd6vWMeQqNTawyT0AGuoZYI7yRItB-il7fywDu9_Ie1kKL7Wwv2ecVxiYaoymsZHpufnuxUBqvja2uq0_t-Qmhhc4uHT5f0=@emersion.fr>
In-Reply-To: <anhfX5shNJsdNd6vWMeQqNTawyT0AGuoZYI7yRItB-il7fywDu9_Ie1kKL7Wwv2ecVxiYaoymsZHpufnuxUBqvja2uq0_t-Qmhhc4uHT5f0=@emersion.fr>
From: Karol Herbst <kherbst@redhat.com>
Date: Mon, 12 Jul 2021 11:47:08 +0200
Message-ID: <CACO55tvmvcrAHjFjJ9fMgcFspyfMLE2gR7f3Fxe0_cxxrfwaUg@mail.gmail.com>
To: Simon Ser <contact@emersion.fr>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=kherbst@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH] include/uapi/drm: fix spelling mistakes in
 header files
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
Cc: linux-samsung-soc@vger.kernel.org, lima@lists.freedesktop.org,
 gushengxian <gushengxian507419@gmail.com>, David Airlie <airlied@linux.ie>,
 nouveau <nouveau@lists.freedesktop.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Qiang Yu <yuq825@gmail.com>,
 tzimmermann@suse.de, gushengxian <gushengxian@yulong.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Jul 3, 2021 at 11:00 AM Simon Ser <contact@emersion.fr> wrote:
>
> Reviewed-by: Simon Ser <contact@emersion.fr>
>
> But this this touches a lot of different drivers, not sure we can just
> merge this via drm-misc-next?
>
> In any case, please ping me again in a week if this hasn't been merged
> by then.
>

As long as it doesn't touch code I don't see why not. Just in case:
Reviewed-by: Karol Herbst <kherbst@redhat.com>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
