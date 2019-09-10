Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FB42AF22B
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 22:07:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCFBF6E991;
	Tue, 10 Sep 2019 20:07:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x944.google.com (mail-ua1-x944.google.com
 [IPv6:2607:f8b0:4864:20::944])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBCCD6E991
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 20:07:16 +0000 (UTC)
Received: by mail-ua1-x944.google.com with SMTP id w16so6000346uap.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 13:07:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Bn4y95J+OpqVLk6eNARbKFhtHmikKM0m5l+CvllcfDE=;
 b=tLw6bS6GQRS+9XifT9G0IpdlDtQrDqdldyRM2Xdg/XnY6cll7L2cZdHnUMrlXxjpZw
 +nbOuPou1+iKFREhhtZheh5KMuWlwKBSc/MYmzVWcdjJYQq+U/NI4lLRHfwXA5lJG5jJ
 jBOrsbURgGjBoMELWI5GcOWzxYuSnxOiFaJk3NxZdXxH+jNfmVaAJ9N3WUmbv+0IDypU
 rMbVv+7CqJwB13TpIBPSWwVOSASChV3EQqbFVhvob6UwTW3p9XlDU4O9ogh7fGLnXgK4
 JGk/XP4sml0O6FhzcvO5cMaLn9wvIkR3ykhl7xf1mjx3bFqaiNFcw8qcZrtwQLcQlwME
 sL/g==
X-Gm-Message-State: APjAAAU+9LzCiU03fenCE+l0qTLXH1vIDdlIo2S21wEbM7vziApHLFD6
 dHQT78ymIToXgFKpZrICi1WUVxE90gb5mc+RKMmvfw==
X-Google-Smtp-Source: APXvYqzODNBsWmK/XEMrIoX7TXBO9oHPOLfZusS6c7rnPWsdbNX0iqkKdHP0jlTcZYMK82BP2f6xik8wR6OYmpHmrwQ=
X-Received: by 2002:ab0:3113:: with SMTP id e19mr308991ual.129.1568146035775; 
 Tue, 10 Sep 2019 13:07:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190902040303.14195-1-chris@chris-wilson.co.uk>
 <20190902040303.14195-10-chris@chris-wilson.co.uk>
In-Reply-To: <20190902040303.14195-10-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 10 Sep 2019 21:06:49 +0100
Message-ID: <CAM0jSHPfbgiM8D9q7qhkz_DpZ5xEuU=-FiumHoOLeY8zAm6deQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=Bn4y95J+OpqVLk6eNARbKFhtHmikKM0m5l+CvllcfDE=;
 b=efubOOjUQc+aIDADIOWdsoLo5fBVXZrU4rt6zL+8TzVXIMy14xkJWVRmjskQCIoahC
 6eTNRU8i23WEna/jTKL2vj4KJ1XXlHuYc7LIx0rDqXz6celYFYMV+rLWKoNJ16oTBYGn
 za+QdBDRnPpSYjI+XyUWwt/G3624TZt9vgJiTHfKkpujl4VP7n9fx2Up76wuzTqxRyiw
 645VCcKyAat0FsE0KfsSs0C1gM/9Qd1fiKKVQVIaK5+RUTQQ79wLVSbThssg0+z3EfQG
 4SQLc6OcIKv5PRUiMC7/HBxCgFG1DH/aw2TbQToabW2/5CKNpwd14LjrBgxEI52USlin
 BsZw==
Subject: Re: [Intel-gfx] [PATCH 10/21] drm/i915: Make i915_vma.flags
 atomic_t for mutex reduction
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyIFNlcCAyMDE5IGF0IDA1OjAzLCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4gd3JvdGU6Cj4KPiBJbiBwcmVwYXJhdGlvbiBmb3IgcmVkdWNpbmcgc3RydWN0
X211dGV4IHN0cmFuZ2xlaG9sZCBhcm91bmQgdGhlIHZtLAo+IG1ha2UgdGhlIHZtYS5mbGFncyBh
dG9taWMgc28gdGhhdCB3ZSBjYW4gYWNxdWlyZSBhIHBpbiBvbiB0aGUgdm1hCj4gYXRvbWljYWxs
eSBiZWZvcmUgZGVjaWRpbmcgaWYgd2UgbmVlZCB0byB0YWtlIHRoZSBtdXRleC4KPgo+IFNpZ25l
ZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdl
ZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
