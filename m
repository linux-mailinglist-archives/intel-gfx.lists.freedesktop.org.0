Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F98109B59
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 10:38:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8E936E0BC;
	Tue, 26 Nov 2019 09:38:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7643C6E0BC
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 09:38:33 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id 4so18287627wro.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 01:38:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ObbJv7GSzxV8/W8meKh29ZiGkXnXBHud73QXPQThLLY=;
 b=R5aU+4zx7r+t7G4kZr9uWtfC4T4fv/gvrT9OdDH3Wd0ujn8NJDkWtxkLsYpBnL8YSt
 fy+avCNCNSt3CS8hEDUjmWHxdOpoD8ect8IuLQ9ZblggDtu0pl94rT+XL/uJntWEwuMX
 DtldJXbd+lfiDKXqxKracIMBOPKxXNEP/xjB43ybi7ySkuKtL3GqtLJ85Ss2YB2t8ksL
 hF/BRus59uLkta6s1T8+OsveyvB47j5cl+X+TBxfeFgtm2t9x/5MSkWmepX0wV1APbI6
 xJrwAFkz9h9f01GWswlYX4ANwS/KQkP9Y/5mhmn6AJOIx2bd8CUekzBvUzt2fJEyR3uv
 rs8g==
X-Gm-Message-State: APjAAAV8eTe+p67WoJWJiHSlu6cKy58uDh69oyY3Lxa5gNSTAnLlwdOm
 gD0NAYUgUUekd1NElV2auDSmm8+SUaDhfIaWdsYLxEud
X-Google-Smtp-Source: APXvYqxglOgJLGT9keEcW9B0yhl4FOUvw9bFWi12NsTFzL5qVGOgMx99non1b0klbGu7KmqDJFe1ccLUo48RNE1YtUg=
X-Received: by 2002:adf:9064:: with SMTP id h91mr1746918wrh.289.1574761111975; 
 Tue, 26 Nov 2019 01:38:31 -0800 (PST)
MIME-Version: 1.0
References: <20191122040226.15933-1-ramalingam.c@intel.com>
 <20191122040226.15933-2-ramalingam.c@intel.com>
 <35de6d80-6ea2-9228-efec-54ef7cc30b12@linux.intel.com>
 <157441498323.2524.12613965179682887118@skylake-alporthouse-com>
In-Reply-To: <157441498323.2524.12613965179682887118@skylake-alporthouse-com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Tue, 26 Nov 2019 01:38:20 -0800
Message-ID: <CAKi4VAKNfh5uriVmi6H7wev3XhwMrGrArsaqrGWHJ=qa=vZuzw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=ObbJv7GSzxV8/W8meKh29ZiGkXnXBHud73QXPQThLLY=;
 b=Xef1wtviUhrqzXsF04zsiXIdmUvKdU5a8QH63RtnKT1N5+t5IJu8bvfWDehEle7Wdy
 g/rZKP3QHxG2yTRE/bl124aIRmojW+47DJX4w/tECdd5XPUfXDOQkYKXbp8y1r5/Qajf
 1HbRBeXd4FyOOr72SaKjHeP32OEXR/NKXXNSyzIHrk8LhPLmWU+TuGV500cNVQfUVr8W
 lkAz0loK23bFacNKhRIg6ZBv3dBW0FQ84Nb8Kqn7IV6LuOgfmDhwqaQN8zH53W2OMIU5
 BcJtDaHt38tb0hx1285Ly/JRnW3A7b57Ac2lzk7xA6L7AicL/sHa2a/Qu4P9g8T+Tbi/
 mhFA==
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/tgl: Implement Wa_1604555607
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
Cc: Michel Thierry <michel.thierry@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBOb3YgMjIsIDIwMTkgYXQgMTozMCBBTSBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4gd3JvdGU6Cj4KPiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTEx
LTIyIDA5OjIxOjQ1KQo+ID4KPiA+IE9uIDIyLzExLzIwMTkgMDQ6MDIsIFJhbWFsaW5nYW0gQyB3
cm90ZToKPiA+ID4gQEAgLTU2OCw5ICs1ODEsMjIgQEAgc3RhdGljIHZvaWQgaWNsX2N0eF93b3Jr
YXJvdW5kc19pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKPiA+ID4gICBzdGF0
aWMgdm9pZCB0Z2xfY3R4X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAq
ZW5naW5lLAo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBp
OTE1X3dhX2xpc3QgKndhbCkKPiA+ID4gICB7Cj4gPiA+ICsgICAgIHUzMiB2YWw7Cj4gPiA+ICsK
PiA+ID4gICAgICAgLyogV2FfMTQwOTE0MjI1OTp0Z2wgKi8KPiA+ID4gICAgICAgV0FfU0VUX0JJ
VF9NQVNLRUQoR0VOMTFfQ09NTU9OX1NMSUNFX0NISUNLRU4zLAo+ID4gPiAgICAgICAgICAgICAg
ICAgICAgICAgICBHRU4xMl9ESVNBQkxFX0NQU19BV0FSRV9DT0xPUl9QSVBFKTsKPiA+ID4gKwo+
ID4gPiArICAgICAvKiBXYV8xNjA0NTU1NjA3OnRnbCAqLwo+ID4gPiArICAgICB2YWwgPSBpbnRl
bF91bmNvcmVfcmVhZChlbmdpbmUtPnVuY29yZSwgRkZfTU9ERTIpOwo+ID4gPiArICAgICB2YWwg
Jj0gfkZGX01PREUyX1REU19USU1FUl9NQVNLOwo+ID4gPiArICAgICB2YWwgfD0gRkZfTU9ERTJf
VERTX1RJTUVSXzEyODsKPiA+ID4gKyAgICAgLyoKPiA+ID4gKyAgICAgICogRklYTUU6IEZGX01P
REUyIHJlZ2lzdGVyIGlzIG5vdCByZWFkYWJsZSB0aWxsIFRHTCBCMC4gV2UgY2FuCj4gPiA+ICsg
ICAgICAqIGVuYWJsZSB2ZXJpZmljYXRpb24gb2YgV0EgZnJvbSB0aGUgbGF0ZXIgc3RlcHBpbmdz
LCB3aGljaCBlbmFibGVzCj4gPiA+ICsgICAgICAqIHRoZSByZWFkIG9mIEZGX01PREUyLgo+ID4g
PiArICAgICAgKi8KPiA+ID4gKyAgICAgX193YV93cml0ZV9tYXNrZWRfb3Iod2FsLCBGRl9NT0RF
MiwgRkZfTU9ERTJfVERTX1RJTUVSX01BU0ssIHZhbCwgMCk7Cj4gPgo+ID4gSWYgSSB3YXMgYSBi
ZXR0aW5nIG1hbiBJJ2QgYmV0IG5vIG9uZSB3aWxsIGV2ZXIgcmVtZW1iZXIgdG8gYWRkIHRoZQo+
ID4gdmVyaWZpY2F0aW9uIGJhY2suIFNvIEkgaGF2ZSB0byBzYXkgSSBkaXNhZ3JlZSB3aXRoIEx1
Y2FzIG9uIHRoaXMgcG9pbnQuCj4gPiBTb21lb25lIGRvIGEgY2FzdGluZyB2b3RlIHBsZWFzZS4g
OikKPgo+IEkgd291bGQgZ28gd2l0aCBJU19UR0xfUkVWSUQoQTAsIEEwKSBhcyB3ZSBleHBlY3Qg
aXQgdG8gYmUgcGlja2VkIHVwIGJ5Cgp0aGVuIGl0IGlzIGJyb2tlbiBmcm9tIHN0YXJ0PyBJbiBB
MiBpdCdzIG5vdCBmaXhlZCB5ZXQuLi4uIG5vdCBzdXJlIGlmCkNJIGhhcyBBMi4KQnV0IHdlIHNo
b3VsZCBhZGQgYXQgbGVhc3QgQTIgYW5kIEEzIGFuZCBtYWtlIGl0IHBhc3Mgb24gdGhlc2UuCgoK
THVjYXMgRGUgTWFyY2hpCgo+IHRoZSBzZWxmdGVzdHMgaWYgd2UgaGF2ZSBhIG5ldyBzdGVwcGlu
ZyB0aGF0IGlzIHVuZml4ZWQgLS0gYW5kIGEgYmxpcCBpbgo+IENJIGlzIGEgbXVjaCBjbGVhcmVy
IHJlbWluZGVyIHRvIGNvbWUgYmFjayBhbmQgcmV2aXNpdCB0aGlzIGNvZGUuIFdlCj4gc2hvdWxk
IGJlIGFibGUgdG8gZ28gIm9vcHMsIGxpdmVfd29ya2Fyb3VuZHMgaXMgcmVkLCBmYWlsaW5nIG9u
IGN0eDoweGYwMCIKPiBhbmQgZnJvbSB0aGVyZSBmaW5kIHRoaXMgZml4bWUuIEFuZCBzbyB1cGRh
dGUgZm9yIGEgbmV3IHN0ZXBwaW5nIGluIHRoZQo+IGNvdXJzZSBvZiBhIGRheSAoYmVjYXVzZSB0
aGF0J3MgaG93IGxvbmcgaXQgdGFrZXMgZm9yIENJIHRvIGFwcHJvdmUgYQo+IHBhdGNoKS4KPiAt
Q2hyaXMKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngKCgoKLS0gCkx1Y2FzIERlIE1hcmNoaQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
