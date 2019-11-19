Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB9E10276F
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 15:56:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 685CE6E932;
	Tue, 19 Nov 2019 14:55:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 002146E932
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 14:55:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 06:55:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,324,1569308400"; d="scan'208";a="237358209"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga002.fm.intel.com with ESMTP; 19 Nov 2019 06:55:43 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id A41725C1DFA; Tue, 19 Nov 2019 16:55:27 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191119112515.2766748-1-chris@chris-wilson.co.uk>
References: <20191119112515.2766748-1-chris@chris-wilson.co.uk>
Date: Tue, 19 Nov 2019 16:55:27 +0200
Message-ID: <871ru3ykyo.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Track ggtt writes from
 userspace on the bound vma
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gV2hlbiB1
c2Vyc3BhY2Ugd3JpdGVzIGludG8gdGhlIEdUVCBpdHNlbGYsIGl0IGlzIHN1cHBvc2VkIHRvIGNh
bGwKPiBzZXQtZG9tYWluIHRvIGxldCB0aGUga2VybmVsIGtlZXAgdHJhY2sgYW5kIHNvIG1hbmFn
ZSB0aGUgQ1BVL0dQVQo+IGNhY2hlcy4gQXMgd2UgdHJhY2sgd3JpdGVzIG9uIHRoZSBpbmRpdmlk
dWFsIGk5MTVfdm1hLCB3ZSBzaG91bGQgYWxzbyBiZQo+IHN1cmUgdG8gbWFyayB0aGVtIGFzIGRp
cnR5Lgo+Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+Cj4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29t
PgoKUmV2aWV3ZWQtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwu
Y29tPgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5j
IHwgOCArKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCj4KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jCj4gaW5kZXggZTJhZjYzYWY2
N2FkLi45YWViY2YyNjMxOTEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2RvbWFpbi5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX2RvbWFpbi5jCj4gQEAgLTE0OSw5ICsxNDksMTcgQEAgaTkxNV9nZW1fb2JqZWN0X3NldF90
b19ndHRfZG9tYWluKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosIGJvb2wgd3JpdGUp
Cj4gIAlHRU1fQlVHX09OKChvYmotPndyaXRlX2RvbWFpbiAmIH5JOTE1X0dFTV9ET01BSU5fR1RU
KSAhPSAwKTsKPiAgCW9iai0+cmVhZF9kb21haW5zIHw9IEk5MTVfR0VNX0RPTUFJTl9HVFQ7Cj4g
IAlpZiAod3JpdGUpIHsKPiArCQlzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKPiArCj4gIAkJb2JqLT5y
ZWFkX2RvbWFpbnMgPSBJOTE1X0dFTV9ET01BSU5fR1RUOwo+ICAJCW9iai0+d3JpdGVfZG9tYWlu
ID0gSTkxNV9HRU1fRE9NQUlOX0dUVDsKPiAgCQlvYmotPm1tLmRpcnR5ID0gdHJ1ZTsKPiArCj4g
KwkJc3Bpbl9sb2NrKCZvYmotPnZtYS5sb2NrKTsKPiArCQlmb3JfZWFjaF9nZ3R0X3ZtYSh2bWEs
IG9iaikKPiArCQkJaWYgKGk5MTVfdm1hX2lzX2JvdW5kKHZtYSwgSTkxNV9WTUFfR0xPQkFMX0JJ
TkQpKQo+ICsJCQkJaTkxNV92bWFfc2V0X2dndHRfd3JpdGUodm1hKTsKPiArCQlzcGluX3VubG9j
aygmb2JqLT52bWEubG9jayk7Cj4gIAl9Cj4gIAo+ICAJaTkxNV9nZW1fb2JqZWN0X3VucGluX3Bh
Z2VzKG9iaik7Cj4gLS0gCj4gMi4yNC4wCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
