Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A4072B88
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 11:37:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 502E16E3F2;
	Wed, 24 Jul 2019 09:37:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31D6F6E3F2
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 09:37:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17559866-1500050 for multiple; Wed, 24 Jul 2019 10:37:21 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190723183842.20372-1-chris@chris-wilson.co.uk>
 <47e0d7f4-71ac-ebb4-41b6-76a71fe59156@linux.intel.com>
 <156396045850.31349.7075365521794770626@skylake-alporthouse-com>
In-Reply-To: <156396045850.31349.7075365521794770626@skylake-alporthouse-com>
Message-ID: <156396103953.31349.6435944267611610210@skylake-alporthouse-com>
Date: Wed, 24 Jul 2019 10:37:19 +0100
Subject: Re: [Intel-gfx] [PATCH 01/23] drm/i915: Move aliasing_ppgtt
 underneath its i915_ggtt
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDctMjQgMTA6Mjc6MzgpCj4gUXVvdGluZyBUdnJ0
a28gVXJzdWxpbiAoMjAxOS0wNy0yNCAwOTo1NjozNCkKPiA+IAo+ID4gT24gMjMvMDcvMjAxOSAx
OTozOCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gPiArc3RhdGljIGludCBfX2NvbnRleHRfcGlu
X3BwZ3R0KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKPiA+ID4gICB7Cj4gPiA+ICAgICAgIHN0
cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtOwo+ID4gPiAgICAgICBpbnQgZXJyID0gMDsKPiA+
ID4gICAKPiA+ID4gLSAgICAgdm0gPSBjdHgtPnZtID86ICZjdHgtPmk5MTUtPm1tLmFsaWFzaW5n
X3BwZ3R0LT52bTsKPiA+ID4gKyAgICAgdm0gPSB2bV9hbGlhcyhjZSk7Cj4gPiA+ICAgICAgIGlm
ICh2bSkKPiA+IAo+ID4gQ2FuJ3QgcmV0dXJuIE5VTEwgaXQgc2VlbXMuIChTYW1lIGJlbG93LikK
PiAKPiBBcmUgeW91IHNvIHN1cmU/Cj4gCj4gY2UtPmdlbV9jb250ZXh0LT52bSBpcyBvbmx5ICFO
VUxMIGlmIHRoZXJlIGlzIGEgZnVsbC1wcGd0dAo+ICZnZ3R0LT5hbGlhcy0+dm0gaXMgb25seSAh
TlVMTCBpZiB0aGVyZSBpcyBhbiBhbGlhc2luZy1wcGd0dAo+IAo+IFRoZXJlIG1heSBiZSBjb250
ZXh0cyB3aXRoIG5laXRoZXIgKGdlbjQsIGdlbjUpLgoKSXQncyBub3QgdW50aWwgdGhlIG5leHQg
cGF0Y2ggd2hlcmUgd2UgYWx3YXlzIHNldCBjZS0+dm0gd2lsbCBpdCBiZQpub24tTlVMTC4gUG9p
bnQgdGFrZW4uCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
