Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78EB142897
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2019 16:17:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD554892A4;
	Wed, 12 Jun 2019 14:17:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7956E892A4
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jun 2019 14:17:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16877493-1500050 for multiple; Wed, 12 Jun 2019 15:17:08 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190612093111.11684-1-chris@chris-wilson.co.uk>
 <20190612093111.11684-2-chris@chris-wilson.co.uk>
 <875zpb9bjn.fsf@gaia.fi.intel.com>
 <156034694995.5468.11180105549563398902@skylake-alporthouse-com>
 <8736keao9e.fsf@gaia.fi.intel.com>
In-Reply-To: <8736keao9e.fsf@gaia.fi.intel.com>
Message-ID: <156034902768.27443.4010822823867387758@skylake-alporthouse-com>
Date: Wed, 12 Jun 2019 15:17:07 +0100
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915: Keep contexts pinned until
 after the next kernel context switch
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA2LTEyIDE1OjA5OjQ5KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gPj4gPiAraW50IGk5MTVfYWN0
aXZlX2FjcXVpcmVfcHJlYWxsb2NhdGVfYmFycmllcihzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZiwK
PiA+PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBp
bnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPiA+PiA+ICt7Cj4gPj4gPiArICAgICBzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGVuZ2luZS0+aTkxNTsKPiA+PiA+ICsgICAgIHVuc2lnbmVk
IGxvbmcgdG1wOwo+ID4+ID4gKyAgICAgaW50IGVyciA9IDA7Cj4gPj4gPiArCj4gPj4gPiArICAg
ICBHRU1fQlVHX09OKCFlbmdpbmUtPm1hc2spOwo+ID4+ID4gKyAgICAgZm9yX2VhY2hfZW5naW5l
X21hc2tlZChlbmdpbmUsIGk5MTUsIGVuZ2luZS0+bWFzaywgdG1wKSB7Cj4gPj4gPiArICAgICAg
ICAgICAgIHN0cnVjdCBpbnRlbF9jb250ZXh0ICprY3R4ID0gZW5naW5lLT5rZXJuZWxfY29udGV4
dDsKPiA+PiA+ICsgICAgICAgICAgICAgc3RydWN0IGFjdGl2ZV9ub2RlICpub2RlOwo+ID4+ID4g
Kwo+ID4+ID4gKyAgICAgICAgICAgICBub2RlID0ga21lbV9jYWNoZV9hbGxvYyhnbG9iYWwuc2xh
Yl9jYWNoZSwgR0ZQX0tFUk5FTCk7Cj4gPj4gPiArICAgICAgICAgICAgIGlmICh1bmxpa2VseSgh
bm9kZSkpIHsKPiA+PiA+ICsgICAgICAgICAgICAgICAgICAgICBlcnIgPSAtRU5PTUVNOwo+ID4+
ID4gKyAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+ID4+ID4gKyAgICAgICAgICAgICB9Cj4g
Pj4gPiArCj4gPj4gPiArICAgICAgICAgICAgIGk5MTVfYWN0aXZlX3JlcXVlc3RfaW5pdCgmbm9k
ZS0+YmFzZSwKPiA+PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICh2
b2lkICopZW5naW5lLCBub2RlX3JldGlyZSk7Cj4gCj4gSW4gY29tbWl0IHlvdSBwcm9taXNlIHRo
YXQgeW91IHdpbGwgcXVldWUgYSByZXF1ZXN0IGZvciBrZXJuZWwgY29udGV4dC4KPiBCdXQgaW4g
aGVyZSwgeW91IHNlZW0gdG8gdXNlIChhYnVzZSE/KSB0aGUgYWN0aXZlIHJlcXVlc3QgdG8KPiBt
YWtlIGEgc2hhZG93IG9mIGEgcmVxdWVzdCBhbmQgdXNlIGl0IHRvIGNhbGwgdGhlIGlkbGUgYmFy
cmllcnMuCgpTbyB0aGlzIGlzIHByZWFsbG9jYXRlLCBiZWNhdXNlIHdlIGhhdmUgdG8gcmVzZXJ2
ZSBzb21lIG1lbW9yeSB3aGVuCnBpbm5pbmcgdGhlIGNvbnRleHQgYXMgd2UgY2Fubm90IGFsbG9j
YXRlIGR1cmluZyB1bnBpbm5pbmcgKHdoaWNoIGNhbgpoYXBwZW4gaW5zaWRlIHRoZSBzaHJpbmtl
cikuCgpUaGVuIG9uIGNvbnRleHQgdW5waW4sIHdlIGF0dGFjaCB0aGlzIHByZWFsbG9jYXRlZCBu
b2RlIG9udG8gYSBsaXN0IG9uCnRoZSBlbmdpbmUsIGFsbCB3aGlsZSBrZWVwaW5nIHRoZSBjb250
ZXh0IG1hcmtlZCBhcyBzdGlsbCBhY3RpdmUuCgpMYXRlciBvbiwgd2hlbiB0aGUgZW5naW5lIGlz
IG1hcmtlZCBhcyBpZGxlIHdlIGZsdXNoIHRoZSBiYXJyaWVycyB3aXRoIGEKY29udGV4dCBzd2l0
Y2ggdG8gdGhlIGtlcm5lbCwgc2VlIHN3aXRjaF90b19rZXJuZWxfY29udGV4dCgpIGluCmludGVs
X2VuZ2luZV9wbS5jLCBhbmQgdGhlIGk5MTVfcmVxdWVzdF9hZGRfYmFycmllcnMoKS4KClRoZSBp
bnRlbnRpb24gaXMgdGhhdCB3ZSBhbHNvIGNhbGwgaTkxNV9yZXF1ZXN0X2FkZF9iYXJyaWVycygp
IHdoZW4KZW1pdHRpbmcgdGhlIGhlYXJ0YmVhdCByZXF1ZXN0cyAob25jZSB3ZSBlbGltaW5hdGUg
dGhlIHN0cnVjdF9tdXRleAppbnRlcnBvc2l0aW9uKSBzbyB0aGF0IHRoZXJlIGlzIGEgcmVndWxh
ciBpZGxpbmcgcHVsc2UgYW5kIGNvbnRleHRzIGFyZQpub3QgcGlubmVkIGZvciBhbiBldGVybml0
eS4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
