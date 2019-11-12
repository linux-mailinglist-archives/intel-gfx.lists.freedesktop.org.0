Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 500DCF8D61
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 11:57:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 113186E3E1;
	Tue, 12 Nov 2019 10:57:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com
 [IPv6:2607:f8b0:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F2DD6E3E1
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 10:57:20 +0000 (UTC)
Received: by mail-ot1-x344.google.com with SMTP id l14so13900994oti.10
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 02:57:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RbmZxFFZ7Nn450livDY2ON/taeh+9krVynuqhl80wy4=;
 b=F0bJKqSUuT82LzKckEFNCHB76sR/70XtJtNtb9bxWZa/NEIWAJ+qqUvS7Fg7RV9vs5
 lLb/ROA7XV0sgzJ00QCwpZxlC6rvojWVpQ087oZiSWgjtH53QJEy/2JRKGu7SU5oHc/8
 5HyMDvkkjcJlXbnofPhQ3O0J8+44CdoFaV7K+EbxT3OfP60YZzd45AQzsSLzEkcv3Vhr
 FXbcRoWc4yrfBk6Ki+jwMvFr4w3uh53O1Zj05DlyTdhUCu0e8tA/kwAlQvXh/VDK8lSD
 44SBzlyZ6osaa9fSRrCwvimNmwdjhds1mRabr0oylV9Lv5GwPCMnb6C6evaMj/HeOjR4
 pxdA==
X-Gm-Message-State: APjAAAUmuI3byF+I8iA+6fdCOTZLUrGuaNKMqGKYZd9OPCygidEPQs9K
 BQENIpNhcN9VSM4OMjd07Xw+pebt6pc3H8z5sNgDqg==
X-Google-Smtp-Source: APXvYqxZtkCDZzGY/0t9bL2y5WOpKPyHPq/MZSc2e04/FatRGcqTvFlPVxn99K2PeClhZav0kCRPg/qhwbDQNVlon64=
X-Received: by 2002:a05:6830:1649:: with SMTP id
 h9mr26137010otr.281.1573556239713; 
 Tue, 12 Nov 2019 02:57:19 -0800 (PST)
MIME-Version: 1.0
References: <20190718145407.21352-1-chris@chris-wilson.co.uk>
 <20190718145407.21352-4-chris@chris-wilson.co.uk>
 <CAKMK7uEgFS8FAatJBzsEid72sy2_h8x2WsyhsZuyyfaoD1Lg0Q@mail.gmail.com>
 <157355174344.9322.13853897964725973571@skylake-alporthouse-com>
In-Reply-To: <157355174344.9322.13853897964725973571@skylake-alporthouse-com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 12 Nov 2019 11:57:08 +0100
Message-ID: <CAKMK7uE8fjc3OXhAnESs-w=fqPhmJUUFOF_n_bKETFaQiQw+GA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=RbmZxFFZ7Nn450livDY2ON/taeh+9krVynuqhl80wy4=;
 b=SbOaHkL3kLOfobV1gHh5SKFiZoMQvl7AVIUHZ6P9j/nfOXdElrRFcB2taS6gSVUz1M
 5krhhBW6wQoyYWXVK9cambBFS7ErcbDF8XL7uNXmX80HPt01zDREDj7y+28dw02M4YpF
 13SZABV4GvydKoUfAKts8THd7pVLgCUBkLNjk=
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Flush stale cachelines on
 set-cache-level
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 stable <stable@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBOb3YgMTIsIDIwMTkgYXQgMTA6NDMgQU0gQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gUXVvdGluZyBEYW5pZWwgVmV0dGVyICgyMDE5LTEx
LTEyIDA5OjA5OjA2KQo+ID4gT24gVGh1LCBKdWwgMTgsIDIwMTkgYXQgNDo1NCBQTSBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cj4gPiA+Cj4gPiA+IEVuc3Vy
ZSB0aGF0IHdlIGZsdXNoIGFueSBjYWNoZSBkaXJ0IG91dCB0byBtYWluIG1lbW9yeSBiZWZvcmUg
dGhlIHVzZXIKPiA+ID4gY2hhbmdlcyB0aGUgY2FjaGUtbGV2ZWwgYXMgdGhleSBtYXkgZWxlY3Qg
dG8gYnlwYXNzIHRoZSBjYWNoZSAoZXZlbiBhZnRlcgo+ID4gPiBkZWNsYXJpbmcgdGhlaXIgYWNj
ZXNzIGNhY2hlLWNvaGVyZW50KSB2aWEgdXNlIG9mIHVucHJpdmlsZWdlZCBNT0NTLgo+ID4gPgo+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KPiA+ID4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVs
LmNvbT4KPiA+ID4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPiA+ID4gLS0tCj4gPiA+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMgfCA1ICsrKysrCj4gPiA+
ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMKPiA+ID4gaW5kZXggMmUzY2UyYTY5NjUz
Li41ZDQxZTc2OWE0MjggMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9kb21haW4uYwo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fZG9tYWluLmMKPiA+ID4gQEAgLTI3Nyw2ICsyNzcsMTEgQEAgaW50IGk5MTVfZ2Vt
X29iamVjdF9zZXRfY2FjaGVfbGV2ZWwoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwK
PiA+ID4KPiA+ID4gICAgICAgICBsaXN0X2Zvcl9lYWNoX2VudHJ5KHZtYSwgJm9iai0+dm1hLmxp
c3QsIG9ial9saW5rKQo+ID4gPiAgICAgICAgICAgICAgICAgdm1hLT5ub2RlLmNvbG9yID0gY2Fj
aGVfbGV2ZWw7Cj4gPiA+ICsKPiA+ID4gKyAgICAgICAvKiBGbHVzaCBhbnkgcHJldmlvdXMgY2Fj
aGUgZGlydCBpbiBjYXNlIG9mIGNhY2hlIGJ5cGFzcyAqLwo+ID4gPiArICAgICAgIGlmIChvYmot
PmNhY2hlX2RpcnR5ICYgfm9iai0+Y2FjaGVfY29oZXJlbnQpCj4gPiA+ICsgICAgICAgICAgICAg
ICBpOTE1X2dlbV9jbGZsdXNoX29iamVjdChvYmosIEk5MTVfQ0xGTFVTSF9TWU5DKTsKPiA+Cj4g
PiBJIHRoaW5rIHdyaXRpbmcgb3V0IHRoZSBiaXQgbG9naWMgaW5zdGVhZCBvZiBpbXBsaWNpdGx5
IHJlbHlpbmcgb24gdGhlCj4gPiAjZGVmaW5lcyB3b3VsZCBiZSBtdWNoIGJldHRlciwgaS5lLiAm
JiAhKGNhY2hlX2NvaGVyZW50ICYKPiA+IENPSEVSRU5UX0ZPUl9SRUFEKS4gUGx1cyBJIHRoaW5r
IHdlIG9ubHkgbmVlZCB0byBzZXQgY2FjaGVfZGlydHkgPQo+ID4gdHJ1ZSBpZiB3ZSBkb24ndCBm
bHVzaCBoZXJlIGFscmVhZHksIHRvIGF2b2lkIGRvdWJsZSBmbHVzaGluZz8KPgo+IE5vLiBUaGUg
bWFzayBpcyBiZWluZyB1cGRhdGVkLCBzbyB5b3UgbmVlZCB0byBmbHVzaCBiZWZvcmUgeW91IGxv
c2UKPiB0cmFjay4gVGhlIGNhY2hlIGlzIHRoZW4gY2xlYXJlZCBvZiB0aGUgZGlydHkgYml0IHNv
IHdvbid0IGJlIGZsdXNoZWQKPiBhZ2FpbiB1bnRpbCBkaXJ0eSBhbmQgbm8gbG9uZ2VyIGNvaGVy
ZW50LiBXZSBuZWVkIHRvIGZsYWcgdGhhdCB0aGUgcGFnZQo+IGlzIG5vIGxvbmdlciBjb2hlcmVu
dCBhdCB0aGUgZW5kIG9mIGl0cyBsaWZldGltZSAocGFzc2luZyBiYWNrIHRvIHRoZQo+IHN5c3Rl
bSkgdG8gZm9yY2UgdGhlIGZsdXNoIHRoZW4uCgpIbSBJIHRoaW5rIEkgb3Zlcmxvb2tlZCB0aGF0
IHdlIG9ubHkgY2xlYXIgY2FjaGVfZGlydHkgaW4KaTkxNV9nZW1fY2xmbHVzaF9vYmplY3Qgd2hl
biBpdCdzIGEgY29oZXJlbnQgbW9kZS4KCkkgYWxzbyBzcG90dGVkIG1vcmUgY2FzZXMgZm9yIChv
YmotPmNhY2hlX2RpcnR5CiZ+b2JqLT5jYWNoZV9jb2hlcmVudCksIHNvIHRoYXQgb2JzY3VyZS9m
cmFnaWxlIHBhdHRlcm4gaXMKcHJlLWV4aXN0aW5nIDotLyBPbmUgb2YgdGhlbSBhbHNvIGNoZWNr
cyBvdXRzaWRlIG9mIHRoZSBvYmplY3QgbG9jaywKd2hpY2ggSSB0aGluayBpcyBob3cgdGhlc2Ug
c3RhdGVzIGFyZSBzdXBwb3NlZCB0byBiZSBwcm90ZWN0ZWQuIFNtZWxscwphIGJpdCBmaXNoeSBz
dGlsbCwgd291bGQgYmUgZ29vZCB0byBtYWtlIGEgYml0IGNsZWFyZXIuCi1EYW5pZWwKLS0gCkRh
bmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCis0MSAoMCkg
NzkgMzY1IDU3IDQ4IC0gaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
