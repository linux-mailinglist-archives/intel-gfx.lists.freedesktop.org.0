Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 683B223BDE1
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Aug 2020 18:14:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1AF26E252;
	Tue,  4 Aug 2020 16:14:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com
 [IPv6:2607:f8b0:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E384E6E252
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Aug 2020 16:14:43 +0000 (UTC)
Received: by mail-ot1-x342.google.com with SMTP id h16so10920281oti.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 Aug 2020 09:14:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=PRagu8tkVhwhGQa/akqU1D9FyDRiF79Ar2yX7OvaM9g=;
 b=POCVjGVKkjetq7BBmWbHLU+cJZMHvFLyWklwVTGKWWEW52ZIVqpvAkmpjUfAaSx+xS
 vxy49uqL45bsPN6FwomKerXWpmxjJUFFPpGPwp+zKi0GhxdbUfBJ07iDPAzAl92e4DGg
 os6CAR7WX4d5aeiDjDnC7OCFTQ/ebFY51thlE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=PRagu8tkVhwhGQa/akqU1D9FyDRiF79Ar2yX7OvaM9g=;
 b=tNEhgBfOz72GiYlPotv0kv9qyOoLC7toW+IxEag5gk633A2kgZ+zPTErM9sXcQGXbk
 aYWzLrt8PL24zsZmYP1mhYPPVqgRxBRSffWvjwcyWTEKflthLWsw5xok+7dSmpDCVUsw
 1I5FlvvTyMn2YD1Li75gBR0W3TbLxYaVwk2zNZyv9cE0J0yMoFt7AZ3pSL8m+o35FV5D
 NrroLEdcuiO+f/xhmHXbSUxkWLlVW/Qt42yMXqPvJlCmTScDTVZMNB9GdAcCxRTNdgnw
 kdKg9koPOlnDmKIQXKKB5t2Mtw3JiQSgnRM/YUe1Z1BgcQCGEgu/ORWXWctAdHfKR/Jn
 TFjw==
X-Gm-Message-State: AOAM530qk9dcitJsteS5C47PB7c3s0cKo4YVx5aKPRBHp3lMlRfsDUkM
 /YSguKOb/29+7FJJYeak9RdiEqYgeEHbyF1473l7wA==
X-Google-Smtp-Source: ABdhPJw1zTjUCV5UEI70ZBw5dsEYQ1A05DyFUAwoFptwS1ZXAErRpzel9OxMKyoLqq4/CDASe54UkTo6JblqQZT2Cfk=
X-Received: by 2002:a9d:7283:: with SMTP id t3mr8553941otj.303.1596557683079; 
 Tue, 04 Aug 2020 09:14:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-11-chris@chris-wilson.co.uk>
 <dabc6756-3ba8-ee58-ca6c-e2ae2f0227ac@shipmail.org>
 <159594782797.665.3798858958968044733@build.alporthouse.com>
 <1804e5f6-7a1a-999b-cdfd-50903cc3cc1d@shipmail.org>
 <159655010494.4193.7855959524648425177@build.alporthouse.com>
In-Reply-To: <159655010494.4193.7855959524648425177@build.alporthouse.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 4 Aug 2020 18:14:31 +0200
Message-ID: <CAKMK7uE7Yp+=p2pUSgY59cwUyvhVAJTx94QGDu2wMnzfosy=Vg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>,
 dri-devel <dri-devel@lists.freedesktop.org>, 
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 Dave Airlie <airlied@redhat.com>
Subject: Re: [Intel-gfx] [PATCH 11/66] drm/i915: Preallocate stashes for vma
 page-directories
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBBdWcgNCwgMjAyMCBhdCA0OjA4IFBNIENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPiB3cm90ZToKPgo+IFF1b3RpbmcgVGhvbWFzIEhlbGxzdHLDtm0gKEludGVs
KSAoMjAyMC0wNy0zMCAxMzoyODoxOSkKPiA+Cj4gPiBPbiA3LzI4LzIwIDQ6NTAgUE0sIENocmlz
IFdpbHNvbiB3cm90ZToKPiA+ID4KPiA+ID4gSXQncyBpbiB0aGUgdXNlciBjcml0aWNhbCBwYXRo
ICh0aGUgc2hvcnRlc3QgcGF0aCB0byBwZXJmb3JtIHRoZWlyCj4gPiA+IHNlcXVlbmNlIG9mIG9w
ZXJhdGlvbnMpLCBidXQgaXQncyBiZWZvcmUgdGhlIGRtYS1mZW5jZSBpdHNlbGYuIEkgc2F5Cj4g
PiA+IHRoYXQncyBhIHBhcnRpY3VsYXJseSBuYXN0eSBmYWxzZSBjbGFpbSB0aGF0IGl0IGlzIG5v
dCBvbiB0aGUgY3JpdGljYWwKPiA+ID4gcGF0aCwgYnV0IGJlaW5nIHdoZXJlIGl0IGlzIGNpcmN1
bXZlbnRzIHRoZSB3aG9sZSBhcmd1bWVudC4KPiA+ID4KPiA+Cj4gPiBDb3VsZG4ndCB0aGUgZm9s
bG93aW5nIHNpdHVhdGlvbiBoYXBwZW4/Cj4gPgo+ID4gMS4gQ1Mgc3Bhd25zIHVzZXJwdHIgcGlu
bmluZyB3b3JrLgo+ID4gMi4gQ1MgY3JlYXRlcyBhbmQgcHVibGlzaGVzIGEgRE1BLWZlbmNlIHRo
YXQgZGVwZW5kcyBvbiB0aGF0IHBpbm5pbmcgd29yay4KPgo+IFRoZXJlJ3MgYSBicmVhayBiZWZv
cmUgMiBpbiB0aGF0IHdlIGRvIG5vdCBwdWJsaXNoIGEgZG1hLWZlbmNlIG9uIHBlbmRpbmcKPiB1
c2VycHRyIHdvcmsuIFRoZXJlJ3Mgbm8gYXN5bmMgd2FpdCBvbiB0aGUgdXNlcnB0ciwgaWYgdGhl
IHBhZ2VzIGFyZSBub3QKPiBhdmFpbGFibGUgYXQgdGhlIHBvaW50IG9mIGFjcXVpcmUsIHdlIGhp
dCBhbiAtRUFHQUlOLCBhbmQgdGFrZSB0aGUKPiBmbHVzaF93b3JrcXVldWUgcGF0aCB1bnRpbCB3
ZSBzdG9wIGhpdHRpbmcgLUVBR0FJTi4KPgo+IFRoYXQgaXMgYXMgcGFpbmZ1bCBhcyBpdCBzb3Vu
ZHMsIGFuZCBJIGNsYWltIHRoYXQgc2l0dGluZyBhbmQgc3Bpbm5pbmcgaW4KPiBhIHVzZXIgcGF0
aCBpcyBubyBiZXR0ZXIgaW4gdGVybXMgb2YgY3JpdGljYWwgcGF0aCB0aGFuIGhhdmluZyBpdCBp
bnNpZGUKPiB0aGUgZG1hLWZlbmNlIHNlY3Rpb24uIEhvd2V2ZXIsIHdpdGggdGhpcyBwcmV0ZW5z
ZSB3ZSBkbyBub3QgdmlvbGF0ZSB0aGF0Cj4gcnVsZS4KCllvdSB0cmFkZSBhIGRlYWRsb2NrIGZv
ciBhIGxpdmVsb2NrLCBhbmQgdGhlIGxpdmVsb2NrIGlzIGxpbWl0ZWQgZnVsbHkKdG8gdGhlIG9m
ZmVuZGluZyBwcm9jZXNzIHVzaW5nICh0b28gbXVjaCkgdXNlcnB0ciwgYW5kIHRoZSB1c2VyIGNh
bgpicmVhayBvdXQgb2YgaXQgd2l0aCBeQy4gVGhhdCdzIGEgZmFpcmx5IHNpZ25pZmljYW50IGRp
ZmZlcmVuY2UuIERvbid0Cm92ZXJydXNlIHVzZXJwdHIgc3RpbGwgYXBwbGllcy4KLURhbmllbAot
LSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0
cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
