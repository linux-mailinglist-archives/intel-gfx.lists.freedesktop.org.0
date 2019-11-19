Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B2010223B
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 11:48:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72D146E190;
	Tue, 19 Nov 2019 10:48:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7E266E190
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 10:48:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 02:48:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,322,1569308400"; d="scan'208";a="407713911"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga006.fm.intel.com with ESMTP; 19 Nov 2019 02:48:38 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id D64D85C1DF4; Tue, 19 Nov 2019 12:48:22 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191119100929.2628356-6-chris@chris-wilson.co.uk>
References: <20191119100929.2628356-1-chris@chris-wilson.co.uk>
 <20191119100929.2628356-6-chris@chris-wilson.co.uk>
Date: Tue, 19 Nov 2019 12:48:22 +0200
Message-ID: <874kz0xhu1.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 06/17] drm/i915/gem: Merge GGTT vma flush
 into a single loop
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gV2Ugb25s
eSBuZWVkIHRoZSBvbmUgbG9vcCB0byBmaW5kIHRoZSBkaXJ0eSB2bWEgZmx1c2ggdGhlbSwgYW5k
IHRoZWlyCj4gY2hpcHNldC4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5A
aW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2Jq
ZWN0LmMgfCAxMiArKystLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygr
KSwgOSBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fb2JqZWN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
b2JqZWN0LmMKPiBpbmRleCBkYjEwM2QzYzg3NjAuLjYzYmQzZmY4NGY1ZSAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMKPiBAQCAtMjc5LDE4ICsyNzks
MTIgQEAgaTkxNV9nZW1fb2JqZWN0X2ZsdXNoX3dyaXRlX2RvbWFpbihzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX29iamVjdCAqb2JqLAo+ICAKPiAgCXN3aXRjaCAob2JqLT53cml0ZV9kb21haW4pIHsKPiAg
CWNhc2UgSTkxNV9HRU1fRE9NQUlOX0dUVDoKPiAtCQlmb3JfZWFjaF9nZ3R0X3ZtYSh2bWEsIG9i
aikKPiAtCQkJaW50ZWxfZ3RfZmx1c2hfZ2d0dF93cml0ZXModm1hLT52bS0+Z3QpOwo+IC0KPiAt
CQlpbnRlbF9mcm9udGJ1ZmZlcl9mbHVzaChvYmotPmZyb250YnVmZmVyLCBPUklHSU5fQ1BVKTsK
PiAtCj4gIAkJZm9yX2VhY2hfZ2d0dF92bWEodm1hLCBvYmopIHsKPiAtCQkJaWYgKHZtYS0+aW9t
YXApCj4gLQkJCQljb250aW51ZTsKPiAtCgpJcyB0aGUgc3Rvcnkgd2l0aCBpb21hcCB0byBqdXN0
IGF2b2lkIGZyYWdpbGl0eSBhbmQKZ28gd2l0aCB0aGUgc2FtZSBwYXRoLCBldmVuIGlmIHRoZSBm
bHVzaGVzIHdvdWxkIGJlCnN1cGVyZmx1b3VzPwoKLU1pa2EKCj4gLQkJCWk5MTVfdm1hX3Vuc2V0
X2dndHRfd3JpdGUodm1hKTsKPiArCQkJaWYgKGk5MTVfdm1hX3Vuc2V0X2dndHRfd3JpdGUodm1h
KSkKPiArCQkJCWludGVsX2d0X2ZsdXNoX2dndHRfd3JpdGVzKHZtYS0+dm0tPmd0KTsKPiAgCQl9
Cj4gIAo+ICsJCWludGVsX2Zyb250YnVmZmVyX2ZsdXNoKG9iai0+ZnJvbnRidWZmZXIsIE9SSUdJ
Tl9DUFUpOwo+ICAJCWJyZWFrOwo+ICAKPiAgCWNhc2UgSTkxNV9HRU1fRE9NQUlOX1dDOgo+IC0t
IAo+IDIuMjQuMApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
