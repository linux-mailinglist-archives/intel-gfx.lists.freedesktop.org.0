Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8972D4A1E5
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 15:18:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD5FD6E17D;
	Tue, 18 Jun 2019 13:18:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com
 [IPv6:2607:f8b0:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73FBB6E177
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 13:18:40 +0000 (UTC)
Received: by mail-ot1-x341.google.com with SMTP id 107so14496807otj.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 06:18:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=w7mRoxH159y56ZyKsGaDkYOmz/Plf/2OqY6972TB5ZU=;
 b=PNjjhuwe/yjGtq0Td1XrkiHQYsBUqRrhELtit0YoGvaBYEK4YY0g5EA0d9wwtErdqY
 I3ZSw4irxQgWcXUkyNeJBq/jPnqh3phbUojbVV1OZc3YINu1goRHQOtcdLRs3YIqQtCx
 2qMm0uHPgddTS+EQbbElEyQKk3ZUIc8zvrhhfpFFIcfvvOKYty/UJ32mN1ux46igMhnL
 jv0cIMunZa56jELj0DEmqw0U5+2UUxTz0I2Ru0tCugsVJH3Xucmll1/lyaoOX3KeSdfc
 0UmbHmhL4nEImLX6hjixWUQJr15+3WnHAep6KkEEinyr3LvG/7/1+iQ8hXWl1zc8Y3gG
 kWUg==
X-Gm-Message-State: APjAAAV9H7l53CZfUEt23JND2z7RbxuJqldiu3i6lt6joO0rQnxFG8Sb
 hOO+qaFB293lZs2uW3IIz1ytFw/10oCcG7l+4q9PMQ==
X-Google-Smtp-Source: APXvYqwR77jsYCcvCaL10UjVcaJ060rGPFfE7otOCW97Mk+KoOif22zG8hlGNuNF7Dfe/eiucd8LOxu14SfWhuSnygI=
X-Received: by 2002:a9d:6e8d:: with SMTP id a13mr4954651otr.303.1560863919713; 
 Tue, 18 Jun 2019 06:18:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
 <20190614203615.12639-49-daniel.vetter@ffwll.ch>
 <156086109226.31375.13709018371564539675@skylake-alporthouse-com>
In-Reply-To: <156086109226.31375.13709018371564539675@skylake-alporthouse-com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 18 Jun 2019 15:18:27 +0200
Message-ID: <CAKMK7uGKK6mUkW9bUxd-vXF9hwfCnCCdio0tLm-GhSSitLHNEg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=w7mRoxH159y56ZyKsGaDkYOmz/Plf/2OqY6972TB5ZU=;
 b=SR7Is7R1vHQ3ISDIQ6IPw5A4QciXWvzuzNh7+WPrti77JzhxYLXlzwMcJ9CZ0DNLT9
 9vvzuKLZtAhwpm8+aI5LRXlvsvBSwe+cRm4omxMCR5kUMcshPxXPiPp15op38FMSpC/w
 WSBI9DmLtrDZoVZhTQhhH+K7hLok7avHfbNY0=
Subject: Re: [Intel-gfx] [PATCH 48/59] drm/vgem: Ditch attach trickery in
 the fence ioctl
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdW4gMTgsIDIwMTkgYXQgMjozMSBQTSBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4gd3JvdGU6Cj4gUXVvdGluZyBEYW5pZWwgVmV0dGVyICgyMDE5LTA2LTE0
IDIxOjM2OjA0KQo+ID4gSXQgbG9va3MgbGlrZSB0aGlzIHdhcyBkb25lIHB1cmVseSB0byBnZXQg
YSBjb25zaXN0ZW50IHBsYWNlIHRvIGxvb2sKPiA+IHVwIHRoZSByZXNlcnZhdGlvbiBvYmplY3Qg
cG9pbnRlci4gV2l0aCB0aGUgZHJtX3ByaW1lLmMgaGVscGVyIGNvZGUKPiA+IG5vdyBhbHNvIHNl
dHRpbmcgZ2VtX29iamVjdC0+cmVzdiBmb3IgaW1wb3J0ZWQgb2JqZWN0cyB3ZSBjYW4ganVzdCB1
c2UKPiA+IHRoYXQgcG9pbnRlciBkaXJlY3RseSwgaW5zdGVhZCBvZiBmaXJzdCBlbnN1cmluZyBh
IGRtYS1idWYgZXhpc3RzLgo+Cj4gT2guIGNvbW1pdCAxYmE2MjcxNDhlZjUgKCJkcm06IEFkZCBy
ZXNlcnZhdGlvbl9vYmplY3QgdG8gZHJtX2dlbV9vYmplY3QiKQo+IGVtYmVkZGVkIGEgcmVzZXJ2
YXRpb25fb2JqZWN0IGludG8gdGhlIHN0cnVjdC4gSSB3YXMgd29uZGVyaW5nIHdoYXQgb24KPiBl
YXJ0aCBJIHdhcyBkb2luZyBpZiB0aGUgY29kZSBzaG91bGQgaGF2ZSBiZWVuIHNvIHNpbXBsZS4K
ClllYWgsIHRoaXMgaXMgdGhlIHRoaW5nIHRoYXQgc3RhcnRlZCBhbGwgdGhpcywgcGx1cyBhIGxv
dCBtb3JlIChhbGwKdGhlIGdlbSBsb2NraW5nIGhlbHBlciBmdW5jdGlvbnMgdGhhdCBwYW5mcm9z
dCBhbmQgdjNkIGFyZSB1c2luZykuCgpJIHRoaW5rIG5leHQgc3RlcHMgbWlnaHQgYmUgdG8gZGl0
Y2ggdHRtX2JvLnJlc3Z8dHRtX3Jlc3YgYW5kCmk5MTVfYm8ucmVzdnxfX2J1aWx0aW5fcmVzdiBp
biBmYXZvdXIgb2YgdGhlIG9uZSBpbiBkcm1fZ2VtX2JvLiBCdXQgbXkKc2VyaWVzIGhlcmUgd2Fz
IGFscmVhZHkgZ2V0dGluZyB3YXkgdG8gYmlnLiBUaGUgdHRtIG9uZSBpcyBvbmx5IHJlYWxseQph
IHByb2JsZW0gZm9yIHZtd2dmeCwgYW5kIHRoYXQncyBlYXN5IHRvIHNvbHZlIGJ5IGdpdmluZyB0
aGVtIGEKc2VwYXJhdGUgcG9pbnRlci4gV2UgbWlnaHQgbmVlZCB0byBrZWVwIHR0bV9iby5yZXN2
IHBvaW50ZXIgdG8gbWFrZQp0cmFuc2l0aW9uaW5nIGVhc2llci4KCj4gUmVmZXJlbmNlczogMWJh
NjI3MTQ4ZWY1ICgiZHJtOiBBZGQgcmVzZXJ2YXRpb25fb2JqZWN0IHRvIGRybV9nZW1fb2JqZWN0
IikKPiA+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwu
Y29tPgo+IFJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KPgo+IFF1aWNrIGxlYXZlIGJlZm9yZSBJIHN0YXJ0IHJhbnRpbmcgYWJvdXQgdGhlIGhvcnJv
cnMgb2YKPiByZXNlcnZhdGlvbl9vYmplY3QuCgo6LSkKCkkgdGhpbmsgaXQncyBhIGNhc2Ugb2Yg
InRoZSBkZXZpbCB3ZSBoYXZlIiBhbmQgYWxsIHRoYXQgLi4uCgpDaGVlcnMsIERhbmllbAotLSAK
RGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KKzQxICgw
KSA3OSAzNjUgNTcgNDggLSBodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
