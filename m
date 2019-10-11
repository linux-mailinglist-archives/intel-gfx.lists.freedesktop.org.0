Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D364D47D5
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 20:47:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59B736EC88;
	Fri, 11 Oct 2019 18:47:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa41.google.com (mail-vk1-xa41.google.com
 [IPv6:2607:f8b0:4864:20::a41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A82A6EC87;
 Fri, 11 Oct 2019 18:47:40 +0000 (UTC)
Received: by mail-vk1-xa41.google.com with SMTP id j21so2342057vki.11;
 Fri, 11 Oct 2019 11:47:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wZ4IIG92ZPx8JtMqNOFM+Gu7ktBwSkJam8WwLmrUOaM=;
 b=ZyQ+dGqg7Uyjlo/nFfBJXeKvVXwzgYhy18t53qLHZV97MtEXHfD5EggEgNcjYxeLZP
 UKNtAtePfzC2vxr0pUu/NkisD6TEzKJIJiVSytCuF0S2gv923JZgbz7pZyJ64Z4gYZEJ
 A4roCOYHkjVqtAL2oDijSIFCACxIuOoqEJGSwHp3c8RGR7nXrCx2QFdF4ryVcCPmzJUC
 yDbWy+FixczcTr9xzUvh9mmLPOO/E/TYXKUEX0s4svtDd9L7Hloa/4ubst0MoWkCUtEy
 DKLpi/0LJF/fAYtCAweLIBQzxMsykVlf8qauDeVG3/Vg/qPEzcp9R+cNmDu3omyhvLVD
 3Q/Q==
X-Gm-Message-State: APjAAAX1FQlas+TmspJhOl1R0ydztL0ZsVAnBnxKw/DcqbkZY35Y3z4A
 zmPln0/AdgVTtnRk8aiWbY3PEKyacb1WIdrKJEv4DNxh
X-Google-Smtp-Source: APXvYqxlEaX8eeExtm3cWnmbQpU7+VXU9QKR2M3TGUB/6MFk3cEzKJuKs1jSg7rm5Je4blsLNW0nWkyUF14azt6PlUg=
X-Received: by 2002:a1f:2ac3:: with SMTP id q186mr9309088vkq.57.1570819659309; 
 Fri, 11 Oct 2019 11:47:39 -0700 (PDT)
MIME-Version: 1.0
References: <20191011183712.8263-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191011183712.8263-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 11 Oct 2019 19:47:12 +0100
Message-ID: <CAM0jSHN0GgKMGTE0cDH-8mW-2pmLUfct3x04F=KxGiH+Zkm9Pw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=wZ4IIG92ZPx8JtMqNOFM+Gu7ktBwSkJam8WwLmrUOaM=;
 b=IR7CvJAQf2BUyfjcMPSjvYCVFrc5HUZFgRzIrcRiOUa+M7fNmrRTiZmIpHUWXDmn+c
 BxnmyZstN9+wgQYmp8uQF9gE9GoaTn6OF0cQ9+2pBqIWHCBkORXY1Db+lpCdqcCUpc46
 zOO6JXwkAulkTsf0VNW9svkkI50x5YqW3r+lX5uaX1zEjALm9wTfZIJ14lgTslmE1quc
 6c0nr7XR9NnRlEAnZLEgKRSvZo2kE0uu4tzJRUvTr7w1PoSt5/RNOWjPnvQ0/K1a+W5r
 dSxxQy4aIsV4LkezMf7AUZnV9tbsOtIr4VQr8rnL+ijai5+frHnZMmAr+Rtie3UXUqvh
 zryA==
Subject: Re: [Intel-gfx] [PATCH i-g-t] debugfs: Define DROP_RCU
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: igt-dev@lists.freedesktop.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAxMSBPY3QgMjAxOSBhdCAxOTozNywgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gQ29ycmVzcG9uZGluZyBrZXJuZWwgY29tbWl0IDU0ODk1
MDEwYTg5MyAoImRybS9pOTE1OiBBZGQgYW4gcmN1X2JhcnJpZXIKPiBvcHRpb24gdG8gaTkxNV9k
cm9wX2NhY2hlcyIpCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KPiBDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LndpbGxpYW0uYXVsZEBn
bWFpbC5jb20+ClJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcud2lsbGlhbS5hdWxk
QGdtYWlsLmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
