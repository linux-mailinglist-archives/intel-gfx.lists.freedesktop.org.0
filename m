Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 163ED82F0A
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 11:49:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2439189A32;
	Tue,  6 Aug 2019 09:49:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com
 [IPv6:2607:f8b0:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D4DF89F33
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 09:49:39 +0000 (UTC)
Received: by mail-ot1-x342.google.com with SMTP id j19so14285697otq.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 06 Aug 2019 02:49:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8iepA3mdEGdJPuSIYYGht7F/IA2R0c7T2n2hJk47IEA=;
 b=IC7Km9LcdAGon6wwMYvuMjGKKk5z/QjfyNZDkOr0W3a4TT7yOX9OhBwt2A06uO5z2F
 XZDUNwfCt2STEAdlHZuIgVmxATNDMrTQpLkhhYwAv0ko6M0nOOr3lAumg9EjMsg9YGeX
 xXidlw2+Uh+wp6UU2k7wofQ7VARIOpSJuE5+6ZGLOORZqz/PXLT5lqPyAQJjBnQgMUS+
 Rtxl9dO2bHhT60hknqZ9VzIUI3Jq+vTw8xrv1su8B69mfs0POuX0TnxK0KojhdGJ5u/s
 2LmOCP1yYXO9kE/4PsIVnugvIVV9mfxFMIvxIOb2uf/dCwbEhs6XCNJOP8WH++YCZMsK
 3F6Q==
X-Gm-Message-State: APjAAAWVA5iIx3W6omLEM19yQmbirPc6UU6aeU2+IiO0KRl+UQls5ae8
 ah89lKsEnwoL+pmZEDNMKVLT2nsjAcbAHm0IA+tg9A==
X-Google-Smtp-Source: APXvYqzV2bTrctNup66XSVTDvRww680IMEIeHeISDjZnQ/CMiVuTqEw8hTVwuaW5NwFjAqllh97Hw8PFlyRDakaTKk4=
X-Received: by 2002:a9d:6e8d:: with SMTP id a13mr2375764otr.303.1565084978615; 
 Tue, 06 Aug 2019 02:49:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190803104719.gwb6hmreeaqyye6n@flea>
 <CAPM=9tygocpAnOzJHy3TW2UQc0_6A86e7CpQT1CCMEhWfjzheg@mail.gmail.com>
 <CAKMK7uEHt2KBJoG21F_zqxbfkyVFRAoir__vZt1yheEFxpwUcg@mail.gmail.com>
 <CACvgo51Do4XDY9wRku-0v5B+mRRzV2+SgD=dvFT3J9TMf8RK9Q@mail.gmail.com>
In-Reply-To: <CACvgo51Do4XDY9wRku-0v5B+mRRzV2+SgD=dvFT3J9TMf8RK9Q@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 6 Aug 2019 11:49:26 +0200
Message-ID: <CAKMK7uEcoQK+y6y2wW6GJzKDjtPZZ5gads3JY6xL+JiP+2QABQ@mail.gmail.com>
To: Emil Velikov <emil.l.velikov@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=8iepA3mdEGdJPuSIYYGht7F/IA2R0c7T2n2hJk47IEA=;
 b=F7UU2BiO7FxsM+/LuiViv/ve5EHgW7paYe8trHdpQ3pGswoWGNArKpE3g6dFB2DFlg
 PBfebr838Quf2wmFy2glMz1VXY02zrFVs02Of9sTY+132EhGbn5FXL+orCJ+yuOa1sth
 oc+aGZZO4KcIf77lOCh88szZ2a0oEOml0MINU=
Subject: Re: [Intel-gfx] [PULL] drm-misc-next
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
Cc: Rob Herring <robh@kernel.org>, "DRM maintainer tools announcements,
 discussion, and development" <dim-tools@lists.freedesktop.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBBdWcgNiwgMjAxOSBhdCAxMTo0MCBBTSBFbWlsIFZlbGlrb3YgPGVtaWwubC52ZWxp
a292QGdtYWlsLmNvbT4gd3JvdGU6Cj4gT24gVHVlLCA2IEF1ZyAyMDE5IGF0IDA4OjM0LCBEYW5p
ZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPiB3cm90ZToKPiA+Cj4gPiBPbiBUdWUs
IEF1ZyA2LCAyMDE5IGF0IDI6MzQgQU0gRGF2ZSBBaXJsaWUgPGFpcmxpZWRAZ21haWwuY29tPiB3
cm90ZToKPiA+ID4KPiA+ID4gT24gU2F0LCAzIEF1ZyAyMDE5IGF0IDIwOjQ3LCBNYXhpbWUgUmlw
YXJkIDxtYXhpbWUucmlwYXJkQGJvb3RsaW4uY29tPiB3cm90ZToKPiA+ID4gPgo+ID4gPiA+IEhp
IERhbmllbCwgRGF2ZSwKPiA+ID4gPgo+ID4gPiA+IEhlcmUgaXMgdGhlIGZpcnN0IChhbmQgcHJl
dHR5IGxhdGUpIGRybS1taXNjLW5leHQgUFIuCj4gPiA+ID4KPiA+ID4gPiBJdCdzIHByZXR0eSBi
aWcgZHVlIHRvIHRoZSBsYXRlbmVzcywgYnV0IHRoZXJlJ3Mgbm90aGluZyByZWFsbHkgbWFqb3IK
PiA+ID4gPiBzaG93aW5nIHVwLiBJdCdzIHByZXR0eSBtdWNoIHRoZSB1c3VhbCBidW5jaCBvZiBy
ZXdvcmtzLCBmaXhlcywgYW5kCj4gPiA+ID4gbmV3IGhlbHBlcnMgYmVpbmcgaW50cm9kdWNlZC4K
PiA+ID4gPgo+ID4gPgo+ID4gPiBkaW06IDQxNWQyZTllMDc1NyAoIlJldmVydCAiZHJtL2dlbTog
UmVuYW1lIGRybV9nZW1fZHVtYl9tYXBfb2Zmc2V0KCkKPiA+ID4gdG8gZHJtX2dlbV9tYXBfb2Zm
c2V0KCkiIik6IG1hbmRhdG9yeSByZXZpZXcgbWlzc2luZy4KPiA+ID4gZGltOiBiZTg1NTM4MmJh
Y2IgKCJSZXZlcnQgImRybS9wYW5mcm9zdDogVXNlIGRybV9nZW1fbWFwX29mZnNldCgpIiIpOgo+
ID4gPiBtYW5kYXRvcnkgcmV2aWV3IG1pc3NpbmcuCj4gPiA+IGRpbTogZTRlZWU5M2QyNTc3ICgi
ZHJtL3ZnZW06IGRyb3AgRFJNX0FVVEggdXNhZ2UgZnJvbSB0aGUgZHJpdmVyIik6Cj4gPiA+IG1h
bmRhdG9yeSByZXZpZXcgbWlzc2luZy4KPiA+ID4gZGltOiA4ODIwOWQyYzUwMzUgKCJkcm0vbXNt
OiBkcm9wIERSTV9BVVRIIHVzYWdlIGZyb20gdGhlIGRyaXZlciIpOgo+ID4gPiBtYW5kYXRvcnkg
cmV2aWV3IG1pc3NpbmcuCj4gPiA+IGRpbTogY2NkYWU0MjU3NTY5ICgiZHJtL25vdXZlYXU6IHJl
bW92ZSBvcGVuLWNvZGVkIGRybV9pbnZhbGlkX29wKCkiKToKPiA+ID4gbWFuZGF0b3J5IHJldmll
dyBtaXNzaW5nLgo+ID4gPgo+ID4gPiBQcmV0dHkgc3VyZSByZXZpZXcgaW4gZHJtLW1pc2MtbmV4
dCBpcyBhIHJ1bGUuIEkgZG9uJ3QgZXZlbiBzZWUgYWNrcwo+ID4gPiBvbiBtb3N0IG9mIHRoZXNl
Lgo+ID4KPiA+IFllcy4gSSBndWVzcyBmb3IgcmV2ZXJ0cyBpdCdzIG5vdCBjb29sLCBidXQgYWxz
byBub3QgdGhlIHdvcnN0LiBTdGlsbAo+ID4gYmV0dGVyIHRvIGdldCBzb21lb25lIHRvIGFjaywg
aGVjayBJIGNhbiBwdWxsIHRoYXQgb2ZmIGZvciBlbWVyZ2VuY3kKPiA+IHJldmVydHMgd2l0aCBh
IGZldyBwaW5ncyBvbiBpcmMsIGFuZCB0aGUgMiByZXZlcnRzIGxhbmRlZCBtdWNoIGxhdGVyLgo+
ID4gQnV0IGZvciBub3JtYWwgcGF0Y2hlcyBpdCdzIGRlZmluaXRlbHkgbm90IG9rIGF0IGFsbC4g
QWxzbyBvbmx5Cj4gPiBwb3NzaWJsZSBpZiBwZW9wbGUgYnlwYXNzIHRoZSB0b29saW5nLCBvciBv
dmVycmlkZSB0aGUgdG9vbGluZyB3aXRoCj4gPiB0aGUgLWYgZmxhZyB0byBmb3JjZSBhIHB1c2gu
Cj4gPgo+ID4gUm9iLCBFbWlsLCB3aGF0J3MgdXAgaGVyZT8KPiA+Cj4gSSd2ZSBnb3Qgd2FzIGFu
ICJUaGFua3MiIFsxXSBmcm9tIEJlbiBvbiB0aGUgbm91dmVhdSBwYXRjaCAtIHNvIEkgbWVyZ2Vk
IGl0Lgo+IFRoZSBtc20gYW5kIHZnZW0gb25lcyBhcmUgbXkgYmFkIC0gbXVzdCBoYXZlIG1pc3Nl
ZCB0aG9zZSBvbmUKPiBpbmJldHdlZW4gdGhlIG90aGVyIHBhdGNoZXMuCgpUaGUgdGhpbmcgaXMs
IGRpbSBwdXNoIHNob3VsZG4ndCBhbGxvdyB5b3UgdG8gZG8gdGhhdC4gQW5kIHRoZSBwYXRjaGVz
CmhhdmUgY2xlYXJseSBiZWVuIGFwcGxpZWQgd2l0aCBkaW0gYXBwbHkgKG9yIGF0IGxlYXN0IHlv
dSBhZGRlZCB0aGUKTGluayksIHVubGlrZSBSb2Igd2hvIHNlZW1zIHRvIGp1c3QgaGF2ZSBwdXNo
ZWQgdGhlIHJldmVydC4KCklmIHlvdSB1c2VkIGdpdCBwdXNoIGRpcmVjdGx5LCB0aGVuIEkgZ3Vl
c3MgeW91IGp1c3Qgdm9sdW50ZWVyZWQgdG8KaW1wbGVtZW50IERhbmllbCBTdG9uZSdzIGlkZWEg
dG8gZW5mb3JjZSBkaW0gdG9vbGluZy4gQWRkaW5nIERhbmllbCwKc2luY2UgSSBndWVzcyB0aGF0
IHdhcyBqdXN0IGFuIGlyYyBjaGF0LgotRGFuaWVsCgo+IFdpbGwgZG91YmxlLWNoZWNrIGFuZCBm
b2xsb3ctdXAgb24gYWxsIG9mIHRob3NlLgo+Cj4gLUVtaWwKPiBbMV0gaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvYXJjaGl2ZXMvZHJpLWRldmVsLzIwMTktTWF5LzIxODgyMy5odG1sCgoK
LS0KRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KKzQx
ICgwKSA3OSAzNjUgNTcgNDggLSBodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
