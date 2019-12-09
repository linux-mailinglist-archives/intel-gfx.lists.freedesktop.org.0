Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4D1116B9B
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 11:59:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 037C26E395;
	Mon,  9 Dec 2019 10:59:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x943.google.com (mail-ua1-x943.google.com
 [IPv6:2607:f8b0:4864:20::943])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B99016E395
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2019 10:59:07 +0000 (UTC)
Received: by mail-ua1-x943.google.com with SMTP id z17so5385369uac.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 09 Dec 2019 02:59:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LMmHIlnWI9qjnPovNm9kUX0b5zuO5Yw7Xsab57CoKqI=;
 b=O5+3lXoLjKehfi0/AF+riz//zP9him/R/MnF8MemIo2hhcElmH0CUBL7sh/tRSrxv2
 w4L0aWU4+TziRi5WfPxwrwJJ/AF63KaPD5lbNzINBTnn52Vgd8ig1/vs4+7zN1iFfeh0
 kK4InRLYmFaBR0ZbF0XPYt1pHsaUAQEczxJCx5CWpmPKqbT+Kawkr2dlQp5BY4aL1NOt
 k1Ccz8hd7CCVszCAgl6ObTEWbi14yQpY8RA3ED0sVaA748Lor0mIQwBdP4JT9ylnNXHL
 +Tdruy1vxYH5jFo/9EDC2QGXsEso9nRW1+4ZFS+y2ieu3AILjVnHRhOVOsuy2+NHD9ab
 Wmow==
X-Gm-Message-State: APjAAAXqNxs/wYF4QlH57eVUV0s1jyoLDyJuDYkUT3Fm7uVHwE7wnFSz
 hXlotYxa6byRPgcQj+m3193qgoTuNs8zgGkdYy3M1A==
X-Google-Smtp-Source: APXvYqxb3hDLsTchpFdaT/rxU0VurEL87iWpG9nR8J6yByH+07UmTy3jdnd4ERY/HcQegXcsO0oqyzOxTU6oZUk9AiI=
X-Received: by 2002:a9f:2635:: with SMTP id 50mr24551350uag.2.1575889146793;
 Mon, 09 Dec 2019 02:59:06 -0800 (PST)
MIME-Version: 1.0
References: <20191208161252.3015727-1-chris@chris-wilson.co.uk>
 <20191208161252.3015727-2-chris@chris-wilson.co.uk>
In-Reply-To: <20191208161252.3015727-2-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 9 Dec 2019 10:58:39 +0000
Message-ID: <CAM0jSHN6VtO=9Habtrsv+K6FjCOFi6XeAsQEVnFetjrgG07-3w@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=LMmHIlnWI9qjnPovNm9kUX0b5zuO5Yw7Xsab57CoKqI=;
 b=kLUBx1bsJW1o4gLaJqgL6D3RJZSho3MHGkvakpcHO949x/Zra2aUDFNt7b/f2vTFU2
 /z9cLgHigD0BPaA8sYcyLewpDtdrg0RtuH1KZ2y57nQ4Ezj7zSQ9CHFs6h4WT0uNu0C8
 JofUbDL91DRh1wCXtrN0aeBBuNUB1J0NsMP5Ahbq8vEOKm/NzThF66xm4SAxvsQYaM9O
 vwhITSOGzGTSN83f7+vuB224L/X1RzH3aMOHTc8E7AT1KvG18OvhIz8FMOiBQe4yPb5X
 veGnTlOqFO1LSjxJvwshRCFjbjliNMVg2X52QJeaSEL3XckrYtMQZWM+Kh6D4RLHeFT8
 AUkg==
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Change i915_vma_unbind() to
 report -EAGAIN on activity
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU3VuLCA4IERlYyAyMDE5IGF0IDE2OjEzLCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4gd3JvdGU6Cj4KPiBJZiBzb21lb25lIGVsc2UgYWNxdWlyZXMgdGhlIGk5MTVf
dm1hIGJlZm9yZSB3ZSBjb21wbGV0ZSBvdXIgd2FpdCBhbmQKPiB1bmJpbmQgaXQsIHdlIGN1cnJl
bnRseSBlcnJvciBvdXQgd2l0aCAtRUJVU1kuIFVzZSAtRUFHQUlOIGluc3RlYWQgc28KPiB0aGF0
IGlmIG5lY2Vzc2FyeSB0aGUgY2FsbGVyIGlzIHByZXBhcmVkIHRvIHRyeSBhZ2Fpbi4KPgo+IFNp
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENj
OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBNYXR0
aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
