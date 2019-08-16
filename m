Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B380B9077D
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 20:08:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 829336E96C;
	Fri, 16 Aug 2019 18:08:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B2116E96C
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 18:08:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18166700-1500050 for multiple; Fri, 16 Aug 2019 19:08:10 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190816175130.28624-1-michal.wajdeczko@intel.com>
References: <20190816175130.28624-1-michal.wajdeczko@intel.com>
Message-ID: <156597888736.11610.3331161952422500108@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 16 Aug 2019 19:08:07 +0100
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/uc: Add explicit DISABLED state
 for firmware
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA4LTE2IDE4OjUxOjMwKQo+IFdlIHJlYWxs
eSBuZWVkIHRvIGhhdmUgc2VwYXJhdGUgTk9UX1NVUFBPUlRFRCBzdGF0ZSAoZm9yCj4gbGFjayBv
ZiBoYXJkd2FyZSBzdXBwb3J0KSBhbmQgRElTQUJMRUQgc3RhdGUgKHRvIGluZGljYXRlCj4gdXNl
ciBkZWNpc2lvbikgYXMgd2Ugd2lsbCBoYXZlIHRvIHRha2Ugc3BlY2lhbCBzdGVwcyBldmVuCj4g
aWYgR3VDIGZpcm13YXJlIGlzIG5vdyBkaXNhYmxlZCBidXQgaGFyZHdhcmUgZXhpc3RzIGFuZAo+
IGNvdWxkIGhhdmUgYmVlbiBwcmV2aW91c2x5IHVzZWQuCgpDb3VsZCB5b3UgZ2l2ZSBhIHF1aWNr
IHJ1biBkb3duIG9uIHRoZSB0cmFuc2l0aW9uIHBvaW50cz8KCmRyaXZlcl9wcm9iZSAtPiBVTklO
SVQKICB1Y19wcm9iZSAtPiBTVVBQT1JUUwogICAgdWNfaW5pdCAtPiBFTkFCTEVECgo+ICBzdGF0
aWMgaW5saW5lIGJvb2wgaW50ZWxfZ3VjX2lzX3N1cHBvcnRlZChzdHJ1Y3QgaW50ZWxfZ3VjICpn
dWMpCj4gIHsKPiAtICAgICAgIHJldHVybiBpbnRlbF91Y19md19zdXBwb3J0ZWQoJmd1Yy0+Zncp
Owo+ICsgICAgICAgcmV0dXJuIGludGVsX3VjX2Z3X2lzX3N1cHBvcnRlZCgmZ3VjLT5mdyk7Cj4g
K30KPiArCj4gK3N0YXRpYyBpbmxpbmUgYm9vbCBpbnRlbF9ndWNfaXNfZW5hYmxlZChzdHJ1Y3Qg
aW50ZWxfZ3VjICpndWMpCj4gK3sKPiArICAgICAgIHJldHVybiBpbnRlbF91Y19md19pc19lbmFi
bGVkKCZndWMtPmZ3KTsKPiAgfQoKYW5kIGluY2x1ZGUgaXQgc29tZXdoZXJlIGFyb3VuZCBoZXJl
PwoKSSdtIGZpbmRpbmcgdGhhdCBvdmVydmlldyBoYXJkIHRvIHB1dCB0b2dldGhlciBmcm9tIHRo
ZSBwYXRjaCBjb250ZXh0LgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
