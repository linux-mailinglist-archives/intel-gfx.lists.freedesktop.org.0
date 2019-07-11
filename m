Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B846620D
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 01:03:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AABC6E294;
	Thu, 11 Jul 2019 23:03:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lb1-smtp-cloud9.xs4all.net (lb1-smtp-cloud9.xs4all.net
 [194.109.24.22])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC9896E294
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 23:03:31 +0000 (UTC)
Received: from xps13 ([83.160.161.190]) by smtp-cloud9.xs4all.net with ESMTPSA
 id li5whH1l5uEBxli61hD6fq; Fri, 12 Jul 2019 01:03:29 +0200
Message-ID: <2c4edfabf49998eb5da3a6adcabc006eb64bfe90.camel@tiscali.nl>
From: Paul Bolle <pebolle@tiscali.nl>
To: James Bottomley <James.Bottomley@HansenPartnership.com>, "Souza, Jose"
 <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "chris@chris-wilson.co.uk"
 <chris@chris-wilson.co.uk>
Date: Fri, 12 Jul 2019 01:03:20 +0200
In-Reply-To: <1562884722.15001.3.camel@HansenPartnership.com>
References: <1561834612.3071.6.camel@HansenPartnership.com>
 <156283735757.12757.8954391372130933707@skylake-alporthouse-com>
 <1562875878.2840.0.camel@HansenPartnership.com>
 <27a5b2ca8cfc79bf617387a363ea7192acc4e1f0.camel@intel.com>
 <1562876880.2840.12.camel@HansenPartnership.com>
 <1562882235.13723.1.camel@HansenPartnership.com>
 <dad073fb4b06cf0abb7ab702a9474b9c443186eb.camel@intel.com>
 <1562884722.15001.3.camel@HansenPartnership.com>
User-Agent: Evolution 3.32.3 (3.32.3-1.fc30) 
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfOOIjo/hjTpw8Kx9HPxKGF/XG3hTHQ2whjx5DOfVVX6gZ/ywNQWp10u4ovlzkiovBTq44u6HroosZSwCFuard1SMXtZhOMHzTTa8DClrW8TVfnmcEkq5
 JvXGh/CFjtshRRVV8gZakccH3jdzYkQ2llJTP5pexWsckFP53hGrxklegBhs2Ql1qaIhhlhc298/+F8zA0jJvXzzBh33q6Eo4xffJJ+GtRkpcJev6V4DWPhw
 iAjwx1i9mPFGKQoeL16F4alYRL/e4461zsUezONXAPcsxkoK3Ugj3kzG+q6RnxflkU/Asolabuelt8KDHlFl2YFZQJUATyt9YzIKljy/pfI=
Subject: Re: [Intel-gfx] screen freeze with 5.2-rc6 Dell XPS-13 skylake i915
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SmFtZXMgQm90dG9tbGV5IHNjaHJlZWYgb3AgZG8gMTEtMDctMjAxOSBvbSAxNTozOCBbLTA3MDBd
Ogo+IE9uIFRodSwgMjAxOS0wNy0xMSBhdCAyMjoyNiArMDAwMCwgU291emEsIEpvc2Ugd3JvdGU6
Cj4gPiBJdCBldmVudHVhbGx5IGNvbWVzIGJhY2sgZnJvbSBzY3JlZW4gZnJlZXplPyBMaWtlIG1v
dmluZyB0aGUgbW91c2Ugb3IKPiA+IHR5cGluZyBicmluZ3MgaXQgYmFjaz8KPiAKPiBObywgaXQg
c2VlbXMgdG8gYmUgZnJvemVuIGZvciBhbGwgdGltZSAoYXQgbGVhc3QgdW50aWwgSSBnb3QgYm9y
ZWQKPiB3YWl0aW5nLCB3aGljaCB3YXMgcHJvYmFibHkgMjAgbWludXRlcykuICBFdmVuIGlmIEkg
cmVib290IHRoZSBtYWNoaW5lLAo+IHRoZSBjdXJyZW50IHNjcmVlbiBzdGF0ZSBzdGF5cyB1bnRp
bCB0aGUgc3lzdGVtIHBvd2VycyBvZmYuCgpBcyBJIG1lbnRpb25lZCBlYXJsaWVyLCBhIHN1c3Bl
bmQvcmVzdW1lIGN5Y2xlIHVuZnJlZXplcyB0aGUgc2NyZWVuLgoKQW5kIEkgc2VlbSB0byByZW1l
bWJlciB0aGF0LCBpZiB0aGUgZ25vbWUgc2NyZWVuLWxvY2tpbmcgZXZlbnR1YWxseSBraWNrcyBp
biwKdW5sb2NraW5nIHRoZSBzY3JlZW4gc3RpbGwgd29ya3MsIGFzIHRoZSBzY3JlZW4gdGhlbiBp
c24ndCBmcm96ZW4gYW55bW9yZS4KClRoYW5rcywKCgpQYXVsIEJvbGxlCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
