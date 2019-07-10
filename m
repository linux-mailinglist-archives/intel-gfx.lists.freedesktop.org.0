Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8AC8649B3
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 17:34:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 370A289FA6;
	Wed, 10 Jul 2019 15:34:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3968B89FA6
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 15:34:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 08:34:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,475,1557212400"; d="scan'208";a="166104120"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga008.fm.intel.com with ESMTP; 10 Jul 2019 08:34:36 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 3734B5C1EC2; Wed, 10 Jul 2019 18:34:23 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190710143054.610-1-chris@chris-wilson.co.uk>
References: <20190710143054.610-1-chris@chris-wilson.co.uk>
Date: Wed, 10 Jul 2019 18:34:23 +0300
Message-ID: <874l3trji8.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Ensure we don't clamp a
 random offset to 32b
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gU3BlY2lm
eSB0aGF0IHdlIGRvIHdhbnQgYSA2NGIgdmFsdWUgZm9yIHNpemVvZih1MzIpIGFzIHdlIHdhbnQg
dG8KPiBjb21wdXRlIHRoZSBtYXNrIG9mIHRoZSB1cHBlciA2MmJpdHMuCj4KPiBTaWduZWQtb2Zm
LWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogTWlrYSBL
dW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5jIHwgMiArLQo+ICAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5j
Cj4gaW5kZXggM2FiZTE1YTA4YjZkLi4yNzVlYzFiZmMyYmUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYwo+IEBA
IC0xNTM5LDcgKzE1MzksNyBAQCBzdGF0aWMgaW50IGlndF92bV9pc29sYXRpb24odm9pZCAqYXJn
KQo+ICAKPiAgCQkJZGl2NjRfdTY0X3JlbShpOTE1X3ByYW5kb21fdTY0X3N0YXRlKCZwcm5nKSwK
PiAgCQkJCSAgICAgIHZtX3RvdGFsLCAmb2Zmc2V0KTsKPiAtCQkJb2Zmc2V0ICY9IC1zaXplb2Yo
dTMyKTsKPiArCQkJb2Zmc2V0ICY9IC0odTY0KXNpemVvZih1MzIpOwoKVGFraW5nIGEgc2l6ZW9m
IG9mIHNvbWV0aGluZyB3ZSBrbm93IHRoZSBzaXplIG9mLgpPayBlbm91Z2ghIEJhY2sgdG8gYnVz
aW5lc3M6CgpzaG91bGQgYmUgdGhlIHNhbWUgZm9yIDY0Yml0LCBidXQgbWFrZSBzdXJlIGZvciAz
Mi4KClJldmlld2VkLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVs
LmNvbT4KCgo+ICAJCQlvZmZzZXQgKz0gSTkxNV9HVFRfUEFHRV9TSVpFOwo+ICAKPiAgCQkJZXJy
ID0gd3JpdGVfdG9fc2NyYXRjaChjdHhfYSwgZW5naW5lLAo+IC0tIAo+IDIuMjIuMApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
