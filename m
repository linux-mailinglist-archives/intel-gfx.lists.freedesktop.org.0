Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45C0C115A1E
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Dec 2019 01:28:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96FC96FABB;
	Sat,  7 Dec 2019 00:28:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 897 seconds by postgrey-1.36 at gabe;
 Sat, 07 Dec 2019 00:28:30 UTC
Received: from 8.mo69.mail-out.ovh.net (8.mo69.mail-out.ovh.net
 [46.105.56.233])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2DB16FABB
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Dec 2019 00:28:30 +0000 (UTC)
Received: from player714.ha.ovh.net (unknown [10.108.1.240])
 by mo69.mail-out.ovh.net (Postfix) with ESMTP id E5A456E876
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Dec 2019 01:03:33 +0100 (CET)
Received: from etezian.org (81-175-223-118.bb.dnainternet.fi [81.175.223.118])
 (Authenticated sender: andi@etezian.org)
 by player714.ha.ovh.net (Postfix) with ESMTPSA id 81DCECF1CBBB;
 Sat,  7 Dec 2019 00:03:28 +0000 (UTC)
Date: Sat, 7 Dec 2019 02:03:27 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191207000327.GB1300@jack.zhora.eu>
References: <20191206105527.1130413-1-chris@chris-wilson.co.uk>
 <20191206105527.1130413-5-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191206105527.1130413-5-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Ovh-Tracer-Id: 17029517566392123913
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrudekgedgudefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdqfffguegfifdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjfgesthdtredttdervdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucfkpheptddrtddrtddrtddpkedurddujeehrddvvdefrdduudeknecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejudegrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrghenucevlhhushhtvghrufhiiigvpedt
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Avoid calling
 i915_gem_object_unbind holding object lock
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
Cc: intel-gfx@lists.freedesktop.org, matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQ2hyaXMsCgpbLi4uXQoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2RvbWFpbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2Rv
bWFpbi5jCj4gaW5kZXggODA4ZWIzMjdhMjliLi41M2UyOGU0MTdjYzkgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jCj4gQEAgLTE4NywyMSArMTg3LDIz
IEBAIGludCBpOTE1X2dlbV9vYmplY3Rfc2V0X2NhY2hlX2xldmVsKHN0cnVjdCBkcm1faTkxNV9n
ZW1fb2JqZWN0ICpvYmosCj4gIHsKPiAgCWludCByZXQ7Cj4gIAo+IC0JYXNzZXJ0X29iamVjdF9o
ZWxkKG9iaik7Cj4gLQo+ICAJaWYgKG9iai0+Y2FjaGVfbGV2ZWwgPT0gY2FjaGVfbGV2ZWwpCgp5
b3UncmUgY2hlY2tpbmcgaGVyZS4uLgoKPiAgCQlyZXR1cm4gMDsKPiAgCj4gLQlyZXQgPSBpOTE1
X2dlbV9vYmplY3RfdW5iaW5kKG9iaiwgSTkxNV9HRU1fT0JKRUNUX1VOQklORF9BQ1RJVkUpOwo+
ICsJcmV0ID0gaTkxNV9nZW1fb2JqZWN0X2xvY2tfaW50ZXJydXB0aWJsZShvYmopOwo+ICAJaWYg
KHJldCkKPiAgCQlyZXR1cm4gcmV0Owo+ICAKPiAtCS8qIFRoZSBjYWNoZS1sZXZlbCB3aWxsIGJl
IGFwcGxpZWQgd2hlbiBlYWNoIHZtYSBpcyByZWJvdW5kLiAqLwo+ICsJLyogQWx3YXlzIGludmFs
aWRhdGUgc3RhbGUgY2FjaGVsaW5lcyAqLwo+ICsJaWYgKG9iai0+Y2FjaGVfbGV2ZWwgIT0gY2Fj
aGVfbGV2ZWwpIHsKCi4uLiBhbmQgaGVyZS4uLiB5b3UgbWlnaHQgd2FudCB0byBnZXQgcmlkIG9m
IHRoaXMgb25lPwoKQW5kaQoKPiArCQlpOTE1X2dlbV9vYmplY3Rfc2V0X2NhY2hlX2NvaGVyZW5j
eShvYmosIGNhY2hlX2xldmVsKTsKPiArCQlvYmotPmNhY2hlX2RpcnR5ID0gdHJ1ZTsKPiArCX0K
PiAgCj4gLQlpOTE1X2dlbV9vYmplY3Rfc2V0X2NhY2hlX2NvaGVyZW5jeShvYmosIGNhY2hlX2xl
dmVsKTsKPiAtCW9iai0+Y2FjaGVfZGlydHkgPSB0cnVlOyAvKiBBbHdheXMgaW52YWxpZGF0ZSBz
dGFsZSBjYWNoZWxpbmVzICovCj4gKwlpOTE1X2dlbV9vYmplY3RfdW5sb2NrKG9iaik7Cj4gIAo+
IC0JcmV0dXJuIDA7Cj4gKwkvKiBUaGUgY2FjaGUtbGV2ZWwgd2lsbCBiZSBhcHBsaWVkIHdoZW4g
ZWFjaCB2bWEgaXMgcmVib3VuZC4gKi8KPiArCXJldHVybiBpOTE1X2dlbV9vYmplY3RfdW5iaW5k
KG9iaiwgSTkxNV9HRU1fT0JKRUNUX1VOQklORF9BQ1RJVkUpOwo+ICB9Cl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
