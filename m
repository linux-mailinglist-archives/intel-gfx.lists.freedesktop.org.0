Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE2AE8C373
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2019 23:19:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE9626E072;
	Tue, 13 Aug 2019 21:19:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A2046E072
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Aug 2019 21:19:07 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id p74so2767037wme.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Aug 2019 14:19:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OvWRjkF2yu5RX0MGUDOYqCf8CDd+vyX8Ot9tB31e0y4=;
 b=Ro5UyO5H2uHyOcj/0P9B0NxXJuYkiSagg1Kytq2HZct3qQTc61xNgYkoBcPqRbzVhp
 M5SMakzCf9jHze9sEJUQm040I7Gc/FtRWCbK9ZGpzoSbxfsEGOkf6dgvIE5/ZrDQLpnV
 wKYrSZHCMqORBxzU/hb8M55kOQN7d36byScO7Qzkc/4Crgihqo5vLlB/7Pqs9VuwW3sn
 PnEMT8ffRuKFh34P6W6UVueUJWfQVd2MB1wrY2ZKRXBU4gxI81H/Zp7fGvdgV85buOWd
 aTZjERvwT6y19EWOy5Z5xAQH4C3PXNS0qUt/0bUqoS7+cL3xb2k1lX8tbykqhE9NBau8
 Esng==
X-Gm-Message-State: APjAAAVeSqmxRPlW93X8Gfqyd1cfnNpcrsVJqkHGC/Ya3c04tKRW31pK
 HEvfwttXnE91a4Nw0zcypqf+FrTDEsxULL1mFfM=
X-Google-Smtp-Source: APXvYqwm1VNP1LYLd1RJwP2/EVkf0cGmwRnaCWRXh1t5PTaed0ffwDpo8OV5FWg0L3Oz9eWEpEkSL02zPOHcHmE8FG0=
X-Received: by 2002:a7b:c383:: with SMTP id s3mr4956664wmj.44.1565731146108;
 Tue, 13 Aug 2019 14:19:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190725235643.6870-1-lucas.demarchi@intel.com>
In-Reply-To: <20190725235643.6870-1-lucas.demarchi@intel.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Tue, 13 Aug 2019 14:18:52 -0700
Message-ID: <CAKi4VAKyv=yVUOpucnLYoWpMOVYKg-kBbdft2drVOsu0Z2u=Uw@mail.gmail.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=OvWRjkF2yu5RX0MGUDOYqCf8CDd+vyX8Ot9tB31e0y4=;
 b=nBSpVMyySZqUCyS7JoKAT8KfH3FwtEYevj8wocDO4O4YXQwocxcseIslrLtUv+9Eef
 eNsZhGf74zoWS5XW8/Cl7mqZqg9CbpLIRi6FOtdtDkMWxr2Ayuc8OhSySVmDxai9uIyt
 P3r8mC98e7Zli4T2wrUDsbsA+s/iO2g0icdw+C8FbD9BXrjJRgcv7Kpl/pq/QtJD1fFQ
 aapDUS72+cND6MYkcY7YW/hOxt9oCo3/McffsRWKZWLX/+sAhaIg0zyLBe/TZPzhlRCD
 049omqrb7ssZL+ZxNE4L+EO3ECA5a7JKO4AAPgTrhw/gBYirjN5ipcfrQkDFYuswfRjs
 enYA==
Subject: Re: [Intel-gfx] [PATCH 0/5] Tiger Lake: DKL phy PLLs
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SSdtIGRyb3BwaW5nIHRoaXMgc2VyaWVzIGFzIENsaW50IGlzIHdvcmtpbmcgb24gdGhpcyBhbmQg
bWF5IGhhdmUgYQpkaWZmZXJlbnQgaW1wbGVtZW50YXRpb24uCgpMdWNhcyBEZSBNYXJjaGkKCk9u
IFRodSwgSnVsIDI1LCAyMDE5IGF0IDQ6NTcgUE0gTHVjYXMgRGUgTWFyY2hpCjxsdWNhcy5kZW1h
cmNoaUBpbnRlbC5jb20+IHdyb3RlOgo+Cj4gTW9zdGx5IHRoZSBzYW1lIHBhdGNoZXMgYXMgaHR0
cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MzY3MC8uCj4gUmViYXNlZC4K
Pgo+IEx1Y2FzIERlIE1hcmNoaSAoMik6Cj4gICBkcm0vaTkxNS90Z2w6IHJlLWluZGVudCBjb2Rl
IHRvIHByZXBhcmUgZm9yIERLTCBjaGFuZ2VzCj4gICBkcm0vaTkxNS90Z2w6IHN0YXJ0IGFkZGlu
ZyB0aGUgREtMIFBMTHMgdG8gdXNlIG9uIFRDIHBvcnRzCj4KPiBWYW5kaXRhIEt1bGthcm5pICgz
KToKPiAgIGRybS9pOTE1L3RnbDogQWRkIERLTCBwaHkgcGxsIHJlZ2lzdGVycwo+ICAgZHJtL2k5
MTUvdGdsOiBBZGQgREtMIHBoeSBwbGwgc3RhdGUgY2FsY3VsYXRpb25zCj4gICBkcm0vaTkxNS90
Z2w6IEFkZCBzdXBwb3J0IGZvciBka2wgcGxsIHdyaXRlCj4KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jIHwgMzM1ICsrKysrKysrKysrKysrLS0tLQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICAgfCAgOTQgKysrKysK
PiAgMiBmaWxlcyBjaGFuZ2VkLCAzNjggaW5zZXJ0aW9ucygrKSwgNjEgZGVsZXRpb25zKC0pCj4K
PiAtLQo+IDIuMjEuMAo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4CgoKCi0tIApMdWNhcyBEZSBNYXJjaGkKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
