Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 196EF21BE24
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 21:59:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D0A86ED00;
	Fri, 10 Jul 2020 19:59:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FBB26E175
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 19:59:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594411179;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=l5TN9QHAjNdZiuAG8cUtyvnPHbZaUh5OoHW5vfna680=;
 b=fDRp3VKdz6GFzJLxR1l3TMyrXS1TdByxtcZFayBU5BaduDXKHQ6ifj7o+gx35gvambbDDf
 n77E3zCak3dpZrYkRIlX1MRE3k6RjscjClpeuoSza5TWaKh8F+XzQ/yVpr/CMsO6t6KOLX
 yVHpsDnoliNn58e4qWQxirPfhpbAY8E=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-161-eGtuF5rRMZWqZCRGyUdBaw-1; Fri, 10 Jul 2020 15:59:33 -0400
X-MC-Unique: eGtuF5rRMZWqZCRGyUdBaw-1
Received: by mail-qv1-f71.google.com with SMTP id ed5so4410870qvb.9
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 12:59:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=l5TN9QHAjNdZiuAG8cUtyvnPHbZaUh5OoHW5vfna680=;
 b=XapdSQ/NzolkEGf/qKPQQvh8C4k0+Rz+tA0g1ZsCET0FCGMlpnTq/0KM8JM2xOzTCf
 KWd18qPZLlh+1c55Tb6zSonqs2Msux3ZzPpW+TY7QrMd+XSKh5MEhDVYWfsEcaMjd3On
 iIkl48C1dczPhzksNduiRZqMpS5XKsJDytNv8sqN3nyP96FCoz3jaMKSxcjUWZY6Ed8s
 OldLcUVqdUcu272y9cKAhG5TTG2ie2yt1Uvu1SQrsXoQ/8a4wqx6FyJT2Hytm0cohoWY
 AJYJACJmALDrtNCiDQcQ/uhwmwknMFoN+XUpDXRVwG8Y4J2DEZw4Jd3rbWKUUboqzt1n
 RNTw==
X-Gm-Message-State: AOAM5326ZYgZjCtNvdtE4v/PdJvbsWnMmWJdsHo6OCf9yC/kKDjBqt1G
 JHanR14EGgLvMBbyZnKH7tmGUiuxsdtsaTZRxmEgwx//MlkmSe20gWABYWmCL5DpoOZIgWWwpvx
 GTFFbiYtHX7ivy4bIeD3SdIkWxJzq
X-Received: by 2002:a05:620a:2155:: with SMTP id
 m21mr59108882qkm.14.1594411172479; 
 Fri, 10 Jul 2020 12:59:32 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwG1hMF7YwJS/grAtbuBdYAAmLI9uRj26hqCa7wKsS0hx6iBg6P7vdInt73Dwz3+gM/HyjbZw==
X-Received: by 2002:a05:620a:2155:: with SMTP id
 m21mr59108848qkm.14.1594411171961; 
 Fri, 10 Jul 2020 12:59:31 -0700 (PDT)
Received: from Whitewolf.lyude.net
 (pool-108-49-102-102.bstnma.fios.verizon.net. [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id g17sm8219060qto.73.2020.07.10.12.59.30
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jul 2020 12:59:31 -0700 (PDT)
Message-ID: <eb4b3f4b1879d9df7f28a3d672402fadcb949b70.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 15:59:30 -0400
In-Reply-To: <159441110166.20498.13915521800259796048@emeril.freedesktop.org>
References: <20200710193144.94751-1-lyude@redhat.com>
 <159441110166.20498.13915521800259796048@emeril.freedesktop.org>
Organization: Red Hat
User-Agent: Evolution 3.36.3 (3.36.3-1.fc32)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?drm/probe=5Fhelper=2C_i915=3A_Validate_MST_modes_against_PBN_li?=
 =?utf-8?q?mits_=28rev3=29?=
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
Reply-To: lyude@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Huh.
Well, that's definitely not me :)

On Fri, 2020-07-10 at 19:58 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/probe_helper, i915: Validate MST modes against PBN limits (rev3)
> URL   : https://patchwork.freedesktop.org/series/77670/
> State : warning
> 
> == Summary ==
> 
> $ dim sparse --fast origin/drm-tip
> Sparse version: v0.6.0
> Fast mode used, each commit won't be checked separately.
> -
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:1019:47:    expected unsigned
> int [addressable] [usertype] ulClockParams
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:1019:47:    got restricted
> __le32 [usertype]
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:1019:47: warning: incorrect type
> in assignment (different base types)
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:1028:50: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:1029:49: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:1037:47: warning: too many
> warnings
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:184:44: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:283:14: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:320:14: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:323:14: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:326:14: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:329:18: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:330:26: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:338:30: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:340:38: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:342:30: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:346:30: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:348:30: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:353:33: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:367:43: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:369:38: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:374:67: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:375:53: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:378:66: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:389:80: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:395:57: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:402:69: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:403:53: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:406:66: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:414:66: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:423:69: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:424:69: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:473:30: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:476:45: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:477:45: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:484:54: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:52:28: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:531:35: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:53:29: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:533:25: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:54:26: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:55:27: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:56:25: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:57:26: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:577:21: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:581:25: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:58:25: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:583:21: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:586:25: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:590:25: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:59:26: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:598:21: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:600:21: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:617:25: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:621:21: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:623:21: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:630:21: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:632:21: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:644:25: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:648:21: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:650:21: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:657:21: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:659:21: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:662:21: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:664:21: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:676:25: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:688:25: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:691:47: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:697:25: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:796:46: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:797:40: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:800:46: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:801:40: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:804:46: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:805:40: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:812:46: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:813:40: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:816:46: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:817:40: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:820:46: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:821:40: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:828:46: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:829:40: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:832:46: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:833:40: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:836:46: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:837:40: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:844:46: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:845:40: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:848:46: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:849:40: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:852:46: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:853:40: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:916:47: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:918:49: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:920:52: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:934:47: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:936:49: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:938:52: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:956:47: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:958:49: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c:960:52: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:319:34: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:356:34: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:386:25: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:388:25: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:395:25: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:409:40: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:432:40: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:44:21: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:473:53: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:477:33: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:480:61: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:481:64: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:483:54: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:509:17: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:512:21: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:64:25: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:80:17: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:80:17: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:80:17: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:85:30: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:86:24: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c:98:39: warning: cast to
> restricted __le16
> +drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c:222:29: warning: cast to restricted
> __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c:226:37: warning: cast to restricted
> __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c:226:37: warning: cast to restricted
> __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c:226:37: warning: cast to restricted
> __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c:227:37: warning: cast to restricted
> __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c:233:43: warning: cast to restricted
> __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c:236:44: warning: cast to restricted
> __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c:239:51: warning: cast to restricted
> __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c:458:41: warning: cast to restricted
> __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c:458:41: warning: cast to restricted
> __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c:458:41: warning: cast to restricted
> __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c:464:39: warning: cast to restricted
> __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c:465:30: warning: cast to restricted
> __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c:466:39: warning: cast to restricted
> __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_cgs.c:468:24: warning: cast to restricted
> __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:140:26:    expected unsigned long long
> [usertype] *chunk_array_user
> +drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:140:26:    got void [noderef] __user *
> +drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:140:26: warning: incorrect type in
> assignment (different address spaces)
> +drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:141:41:    expected void const
> [noderef] __user *from
> +drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:141:41:    got unsigned long long
> [usertype] *chunk_array_user
> +drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:141:41: warning: incorrect type in
> argument 2 (different address spaces)
> +drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:160:27:    expected struct
> drm_amdgpu_cs_chunk [noderef] __user **chunk_ptr
> +drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:160:27:    got void [noderef] __user *
> +drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:160:27: warning: incorrect type in
> assignment (different address spaces)
> +drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:1613:21:    expected struct
> drm_amdgpu_fence *fences_user
> +drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:1613:21:    got void [noderef] __user
> *
> +drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:1613:21: warning: incorrect type in
> assignment (different address spaces)
> +drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:1614:36:    expected void const
> [noderef] __user *from
> +drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:1614:36:    got struct
> drm_amdgpu_fence *fences_user
> +drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:1614:36: warning: incorrect type in
> argument 2 (different address spaces)
> +drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:161:49:    expected void const
> [noderef] __user *from
> +drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:161:49:    got struct
> drm_amdgpu_cs_chunk [noderef] __user **chunk_ptr
> +drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c:161:49: warning: incorrect type in
> argument 2 (different address spaces)
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1304:25: error: incompatible
> types in comparison expression (different address spaces)
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1305:17: error: incompatible
> types in comparison expression (different address spaces)
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:1361:17: error: incompatible
> types in comparison expression (different address spaces)
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:138:17:    expected restricted
> __poll_t ( *poll )( ... )
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:138:17:    got unsigned int ( *
> )( ... )
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:138:17: warning: incorrect type
> in initializer (different base types)
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:261:29:    expected void const
> volatile [noderef] __user *
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:261:29:    got unsigned int
> [usertype] *
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:261:29: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:261:29: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:261:29: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:261:29: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:261:29: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:261:29: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:261:29: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:261:29: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:261:29: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:261:29: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:261:29: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:261:29: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:261:29: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:261:29: warning: incorrect type
> in argument 1 (different address spaces)
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:263:29:    expected void const
> volatile [noderef] __user *
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:263:29:    got unsigned int
> [usertype] *
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:263:29: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:263:29: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:263:29: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:263:29: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:263:29: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:263:29: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:263:29: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:263:29: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:263:29: warning: incorrect type
> in argument 1 (different address spaces)
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:354:21:    expected void const
> volatile [noderef] __user *
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:354:21:    got unsigned int
> [usertype] *
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:354:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:354:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:354:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:354:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:354:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:354:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:354:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:354:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:354:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:354:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:354:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:354:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:354:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:354:21: warning: incorrect type
> in argument 1 (different address spaces)
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:412:21:    expected void const
> volatile [noderef] __user *
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:412:21:    got unsigned int
> [usertype] *
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:412:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:412:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:412:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:412:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:412:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:412:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:412:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:412:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:412:21: warning: incorrect type
> in argument 1 (different address spaces)
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:473:21:    expected void const
> volatile [noderef] __user *
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:473:21:    got unsigned int
> [usertype] *
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:473:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:473:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:473:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:473:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:473:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:473:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:473:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:473:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:473:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:473:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:473:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:473:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:473:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:473:21: warning: incorrect type
> in argument 1 (different address spaces)
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:531:21:    expected void const
> volatile [noderef] __user *
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:531:21:    got unsigned int
> [usertype] *
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:531:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:531:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:531:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:531:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:531:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:531:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:531:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:531:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:531:21: warning: incorrect type
> in argument 1 (different address spaces)
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:592:21:    expected void const
> volatile [noderef] __user *
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:592:21:    got unsigned int
> [usertype] *
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:592:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:592:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:592:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:592:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:592:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:592:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:592:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:592:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:592:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:592:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:592:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:592:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:592:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:592:21: warning: incorrect type
> in argument 1 (different address spaces)
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:650:21:    expected void const
> volatile [noderef] __user *
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:650:21:    got unsigned int
> [usertype] *
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:650:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:650:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:650:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:650:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:650:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:650:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:650:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:650:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:650:21: warning: incorrect type
> in argument 1 (different address spaces)
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:747:21:    expected void const
> volatile [noderef] __user *
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:747:21:    got unsigned int
> [usertype] *
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:747:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:747:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:747:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:747:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:747:21: warning: cast removes
> address space '__user' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:747:21: warning: incorrect type
> in argument 1 (different address spaces)
> +drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c:747:21: warning: too many
> warnings
> +drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1650:65: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1658:55: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1659:50: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1660:50: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1661:56: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1663:25: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1664:45: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1665:51: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1666:55: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1667:57: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1669:25: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1670:53: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1672:25: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1674:25: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1675:46: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1679:73: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1681:33: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1683:33: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1694:73: warning: cast to
> restricted __le32
> +drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:262:16: error: incompatible types
> in comparison expression (different type sizes)
> +drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:509:39: warning: cast removes
> address space '__iomem' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:529:31: warning: cast removes
> address space '__iomem' of expression
> +drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c:184:13: warning: cast to
> restricted __le32
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
