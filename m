Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65061F16BC
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 14:09:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A26CF6ED2A;
	Wed,  6 Nov 2019 13:09:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com
 [IPv6:2607:f8b0:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E95246ED29
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 13:08:58 +0000 (UTC)
Received: by mail-ot1-x342.google.com with SMTP id t4so9289050otr.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 06 Nov 2019 05:08:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xFhsru1L6tzUnwCkLtcYBpDV9IALSPI/5jakVlENkoE=;
 b=YAgUHLQsjcJYAFx9MTtCk0wxPjgEN1xMiwmAcyn6QsWoTolAZUJqkE1St74IATLbYu
 9y1RpqKUP0PIWMAC+jEht5YGdDqyQtLlmAoXvVMgK8WuwJwlfplJyDlccq4tlrT7n+wW
 u5g2v72ClXzbNHgSUE7hfDIK7KZLlsvBW1REVRuIWbWnrCNqEmLTGFJdgy7R3j3mz/3A
 GykwRmvtc7pcqrtQl92g5WecLpWeoATA32k7c6jOGUWQWCtDzWyg8Jr8NMUd8OXcman2
 bvvcKpK0Tc703ZvL4Swn99/5kSpBp+MZNjGo9UIaFKOpcAK1uRrEeYHjDWj6eJOWWNtX
 gDgw==
X-Gm-Message-State: APjAAAUbpsUNQOkEubSVhfBmZb9Z8adKURvAO5m+meC+LR1zTluOiT43
 pUY8/zvzwMKhSpDxa9s4ZZjw+MTi3bL4Ou8KYJtCnA==
X-Google-Smtp-Source: APXvYqzD4gstAEqEsW1PUtsLpvgj/x1n7TM+sTpXnrUQtKlZIhq3m+WhRM0wpshptnzJdHClnorzrqdfNTjGSbjhrUw=
X-Received: by 2002:a9d:62d8:: with SMTP id z24mr1851447otk.188.1573045738128; 
 Wed, 06 Nov 2019 05:08:58 -0800 (PST)
MIME-Version: 1.0
References: <20191106100716.18181-1-chris@chris-wilson.co.uk>
 <20191106101950.GE23790@phenom.ffwll.local>
 <157303600842.24928.8883426579845207112@skylake-alporthouse-com>
 <157303697006.24928.6564122275201085833@skylake-alporthouse-com>
In-Reply-To: <157303697006.24928.6564122275201085833@skylake-alporthouse-com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 6 Nov 2019 14:08:47 +0100
Message-ID: <CAKMK7uGA0B1jbB2sc2WwZS1sON6BPrdvfNxQnWroDPqTuTKULg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=xFhsru1L6tzUnwCkLtcYBpDV9IALSPI/5jakVlENkoE=;
 b=Lr4LIcSBAs82c5PBtoKsU9UXyCzA+l9JYX35tA32P8gLso7L8soEJBngGCBRB5yA+I
 hhbDGMH1dVlOKPJ1yBNYf/iGNsWU4oPn7g5bUUWMLvfhydUhta6gUesishHnq4clwRId
 dFVjp6XOrjUzvsQiv5IbJqjJwexEUEOliL/Gs=
Subject: Re: [Intel-gfx] [PATCH 1/3] drm: Expose a method for creating
 anonymous struct file around drm_minor
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
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBOb3YgNiwgMjAxOSBhdCAxMTo0MyBBTSBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4gd3JvdGU6Cj4KPiBRdW90aW5nIENocmlzIFdpbHNvbiAoMjAxOS0xMS0w
NiAxMDoyNjo0OCkKPiA+IFF1b3RpbmcgRGFuaWVsIFZldHRlciAoMjAxOS0xMS0wNiAxMDoxOTo1
MCkKPiA+ID4gT24gV2VkLCBOb3YgMDYsIDIwMTkgYXQgMTA6MDc6MTRBTSArMDAwMCwgQ2hyaXMg
V2lsc29uIHdyb3RlOgo+ID4gPiA+IFNvbWV0aW1lcyB3ZSBuZWVkIHRvIGNyZWF0ZSBhIHN0cnVj
dCBmaWxlIHRvIHdyYXAgYSBkcm1fZGV2aWNlLCBhcyBpdAo+ID4gPiA+IHRoZSB1c2VyIHdlcmUg
dG8gaGF2ZSBvcGVuZWQgL2Rldi9kcmkvY2FyZDAgYnV0IHRvIGRvIHNvIGFub255bW91c2x5Cj4g
PiA+ID4gKGkuZS4gZm9yIGludGVybmFsIHVzZSkuIFByb3ZpZGUgYSB1dGlsaXR5IG1ldGhvZCB0
byBjcmVhdGUgYSBzdHJ1Y3QKPiA+ID4gPiBmaWxlIHdpdGggdGhlIGRybV9kZXZpY2UtPmRyaXZl
ci5mb3BzLCB0aGF0IHdyYXAgdGhlIGRybV9kZXZpY2UuCj4gPiA+ID4KPiA+ID4gPiBTaWduZWQt
b2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+ID4KPiA+
ID4gRm9yIHByb3BlciBpbnRlcm5hbCBhY2Nlc3Mgd2UgYWxyZWFkeSBoYXZlIGRybV9jbGllbnRf
b3Blbiwgc28gSSB0aGluawo+ID4gPiB0aGlzIGhhcyBsaW1pdGVkIChidXQgZ29vZCB1c2UpIGlu
IHNlbGZ0ZXN0cyBvbmx5LiBTbwo+ID4gPiBFWFBPUlRfU1lNQk9MX0ZPUl9URVNUU19PTkxZIHBs
dXMgbWF5YmUgYSBjbGVhcmVyIG5hbWUgZm9yIHRoZSBpbnRlbmRlZAo+ID4gPiB1c2UgbGlrZSBk
cm1fZmlsZV9tb2NrX29wZW4/Cj4gPgo+ID4gSSBmb3VuZCB0aGUgZXhhbXBsZSBpbiBkcm1fZ2Vt
X3ByaW1lX21tYXAoKSB0aGF0IHdhcyBkb2luZyB0aGUgc2FtZSB0cmljaywKPiA+IGFuZCB0aGUg
dHJpY2sgb2YgYmVpbmcgYWJsZSB0byBpbnN0YW50aWF0ZSBuZXcgc3RydWN0IGZpbGUgYW5kIGlu
c3RhbGwgYQo+ID4gZmQgd2hlbmV2ZXIgc2VlbXMgbGlrZSBpdCB3aWxsIGNvbWUgaW4gaGFuZHku
Li4gSnVzdCBsYWNraW5nIHRoZSB0aGlyZAo+ID4gdXNlciBhdCB0aGUgbW9tZW50IHRvIGNsYWlt
IGdlbmVyYWxpdHkuCj4KPiBUaGUgY2xvc2VzdCBleGFtcGxlIEkgZm91bmQgaW4gdGhlIHNwaXJp
dCBvZiBjcmVhdGluZyBhIG5ldyBkcm1fZGV2aWNlCj4gc3RydWN0IGZpbGUgYW5kIGluc3RhbGxp
bmcgaXQgaXMgZHJtX21vZGVfY3JlYXRlX2xlYXNlX2lvY3RsKCkgdGhhdCB1c2VzCj4gZmlsZV9j
bG9uZV9vcGVuKCkgZm9yIHRoaXMgcHVycG9zZS4gVGhlIGFyZ3VtZW50IHRoZXJlIHdvdWxkIGJl
IHdoZXRoZXIKPiBjbG9uaW5nIHRoZSAoZmlsZS0+Zl9wYXRoLCBmaWxlLT5mX2ZsYWdzLCBmaWxl
LT5mX2NyZWQpIGlzIGFwcHJvcHJpYXRlCj4gdmVyc3VzIGFuIGFub255bW91cyBpbm9kZS4gSSB0
aGluayBjbG9uaW5nIHRoZSBjcmVkZW50aWFscyBzZWVtcyBjb3JyZWN0Cj4gZm9yIGxlYXNpbmcu
CgpIbSAuLi4gSSB0aGluayB3ZSB3YW50IHRoZSBjbG9uZSBmb3IgdGhpcyBvbmUgaGVyZSB0b28u
IE90aGVyd2lzZSB3ZQpnZXQgdGhlIHdyb25nIGlub2RlLCBhbmQgdGhlbiB1bm1hcF9tYXBwaW5n
X3JhbmdlIHdvbnQgd29yayBjb3JyZWN0bHksCmFuZCB3ZSBjYW50IHVzZSB0aGlzIGZvciBzZWxm
dGVzdHMuIFRoYXQncyB0aGUgb25seSBjYXNlIHdoZXJlIEkgdGhpbmsKd2UgZG8gYWN0dWFsbHkg
bmVlZCB0aGUgZmlsZS9pbm9kZSB0byBiZSBmdW5jdGlvbmFsLiBGb3IgYW55dGhpbmcgZWxzZQp0
aGUgZHJtX2NsaWVudCBpbnRlcm5hbCBhcGkgZ2V0cyBhd2F5IHdpdGhvdXQgdGhlIGZpbGUvaW5v
ZGUgc3R1ZmYuCi1EYW5pZWwKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIElu
dGVsIENvcnBvcmF0aW9uCis0MSAoMCkgNzkgMzY1IDU3IDQ4IC0gaHR0cDovL2Jsb2cuZmZ3bGwu
Y2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
