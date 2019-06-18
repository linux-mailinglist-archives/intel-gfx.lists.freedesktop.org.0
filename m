Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5CAF4A6B2
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 18:22:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E52B6E183;
	Tue, 18 Jun 2019 16:22:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF4C36E183
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 16:22:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16943349-1500050 for multiple; Tue, 18 Jun 2019 17:22:18 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87muie7u9f.fsf@gaia.fi.intel.com>
References: <20190618074153.16055-1-chris@chris-wilson.co.uk>
 <20190618074153.16055-2-chris@chris-wilson.co.uk>
 <87muie7u9f.fsf@gaia.fi.intel.com>
Message-ID: <156087493879.31375.10592060975763939464@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 18 Jun 2019 17:22:18 +0100
Subject: Re: [Intel-gfx] [PATCH 02/26] drm/i915: Skip shrinking already
 freed pages
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA2LTE4IDE3OjA2OjM2KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3Nocmlua2VyLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fc2hyaW5rZXIuYwo+ID4gaW5kZXggYzg1MWM0MDI5NTk3Li4z
YTkyNmE4NzU1YzYgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fc2hyaW5rZXIuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX3Nocmlua2VyLmMKPiA+IEBAIC0yNDEsNiArMjQxLDkgQEAgaTkxNV9nZW1fc2hyaW5rKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+ID4gICAgICAgICAgICAgICAgICAgICAgIGlm
ICghY2FuX3JlbGVhc2VfcGFnZXMob2JqKSkKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGNvbnRpbnVlOwo+ID4gIAo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGlmICgha3JlZl9n
ZXRfdW5sZXNzX3plcm8oJm9iai0+YmFzZS5yZWZjb3VudCkpCj4gPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBjb250aW51ZTsKPiA+ICsKPiAKPiBUaGUgY29tbWVudCBhYm92ZSwgaW4g
dGhpcyBmdW5jdGlvbiwgc2VlbXMgYSBsaXR0bGUgYml0Cj4gc3RhbGUgb24gdGFsa2luZyBhYm91
dCBzdHJ1Y3QgbXV0ZXguIFN0cmFpZ2h0ZW4gaXQgdXAuCj4gCj4gUmV2aWV3ZWQtYnk6IE1pa2Eg
S3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgoKVGhlcmUncyBhIHNlcmll
cyB3aXRoIHRoZSBnb2FsIG9mIHN0cmFpZ2h0ZW5pbmcgdGhhdCB1cC4gOi1wCi1DaHJpcwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
