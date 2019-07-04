Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A81C65FE10
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 23:11:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 173E56E2D0;
	Thu,  4 Jul 2019 21:11:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x944.google.com (mail-ua1-x944.google.com
 [IPv6:2607:f8b0:4864:20::944])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A88D6E2D0
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 21:11:52 +0000 (UTC)
Received: by mail-ua1-x944.google.com with SMTP id v18so1503495uad.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 Jul 2019 14:11:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=r4rkvhgnFdpN/Zo+1R8+GJ2/IuO8XWdWVoT1R6JXfzk=;
 b=Xx4SiAQr9mYeij11TZePq2GSMNflXgcLfPaqP2KfnZcpMH3+Lelpn+Sa50qUyWy8xr
 kTH38g9sEKCZtjmEugcCKYQj4fDt5g9fd7+++/tGNbEzNC/vM5VjtfVJcvi5/sGOQlid
 PuFqnG80phENbkIPc9MgzxU8zLNoPW8kzaL0bbn90mSYrug2DLDV4BknVfBdJX94/3OU
 FWFC/vkvp7oghuBDl3uXtHVX7P+Wf+YdPpCtvk4pk556a2m/71os3mXVj8tf/C+O/TRa
 2gGRicwBtx56PU4zpjXaYT2hMe4PhOfaTWQ4GGTchJRDAdxoNa555AT1sCPcgZ89eBv4
 hrbw==
X-Gm-Message-State: APjAAAWqR7h+hpSRbpqfgN5OxQ2uRYs2lWQBuyR0e+M3l94ICgP4U2Bp
 Jr5+2GtB6HxdslIkoq9OBk44cmTFY2CYauAl8L/f37qr
X-Google-Smtp-Source: APXvYqxA+JdjHZzyZm8maD5KoC8xUrAI+2X7E9rBi+IADRflX4VhUb3n1kO8fbNmbQPFAyzAUgkQoeVaUhijH9le2Hw=
X-Received: by 2002:ab0:60ad:: with SMTP id f13mr22279341uam.129.1562274711653; 
 Thu, 04 Jul 2019 14:11:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190704200455.14870-1-chris@chris-wilson.co.uk>
 <20190704200455.14870-2-chris@chris-wilson.co.uk>
In-Reply-To: <20190704200455.14870-2-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 4 Jul 2019 22:11:25 +0100
Message-ID: <CAM0jSHNLssmS3J_xz8S7Oy8PJc4mOHtT59PadMY_+x1UTHqjjA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=r4rkvhgnFdpN/Zo+1R8+GJ2/IuO8XWdWVoT1R6JXfzk=;
 b=FYypDAed/SJwhrgwHeOofOCmYWIylDN4+jdTLeNcP+pN4hfBHPlPjOdsnPWeqHFzgy
 1TScZg7HH9IFWttjsG3FsSZ6tu9A0Z5k7SOksJWG7z/HZhZ2oxQ4NncgIbyko0QH9lh8
 q8MFC+5JzjtZjaUyTP1znHOfcot86EUoV6kdgUodWad0i1nXwj1Au1SJGQKZGJ8k5Wyl
 RePvRjB0syDsbOo7tP0fkaZMtI3AKdHuvA+ElJZAWAizZZp9D62QN0sykxXgm/VktmKM
 Md6VYBPHMzgkiPPhr3QF1IFR5EMK1dBWdKiA3K7vP2J2DRBoOboQsuwMpWng6xScg6KG
 Rb5A==
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/selftests: Be engine agnostic
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

T24gVGh1LCA0IEp1bCAyMDE5IGF0IDIxOjA1LCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4gd3JvdGU6Cj4KPiBXaGVuIHVzaW5nIE1JIG9wZXJhdGlvbnMsIHdlIGRvIG5v
dCBjYXJlIHdoaWNoIGVuZ2luZSB3ZSB1c2UsIHNvIHVzZQo+IHRoZW0gYWxsIHdoZXJlIHBvc3Np
YmxlLCBhbmQgd2hlcmUgaW5jb252ZW5pZW50IGRvdWJsZSBjaGVjayB3ZSBoYXZlIHRoZQo+IGVu
Z2luZSB3ZSBzZWxlY3RlZCBhdCByYW5kb20uCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KCjxzbmlwPgoKPgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5jCj4gaW5k
ZXggYTIzYzZkZjliOWY0Li5lY2I1OWYxNGVjMDEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYwo+IEBAIC0xMDI3
LDcgKzEwMjcsNyBAQCBfX2lndF9jdHhfc3NldShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSwKPiAgICAgICAgIHN0cnVjdCBkcm1fZmlsZSAqZmlsZTsKPiAgICAgICAgIGludCByZXQ7Cj4K
PiAtICAgICAgIGlmIChJTlRFTF9HRU4oaTkxNSkgPCA5KQo+ICsgICAgICAgaWYgKElOVEVMX0dF
TihpOTE1KSA8IDkgfHwgIWVuZ2luZSkKPiAgICAgICAgICAgICAgICAgcmV0dXJuIDA7CgpXZSBh
bHJlYWR5IGRlcmVmZXJlbmNlZCBlbmdpbmUgYWJvdmUuCgpSZXZpZXdlZC1ieTogTWF0dGhldyBB
dWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
