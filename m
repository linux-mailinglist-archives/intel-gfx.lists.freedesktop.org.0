Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6C921F3B6
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 16:16:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B4D46E8B5;
	Tue, 14 Jul 2020 14:16:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A359C6E0CA
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 14:16:42 +0000 (UTC)
IronPort-SDR: butfuc6GcTJ7g8fpn4PhgNs49ylFbWwdWyBXg2CU5tNCefVEJLq8z9ezOcl1Zkn23TpC/rAR1G
 rE/8/hDXgM7Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="210435948"
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="210435948"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2020 07:16:41 -0700
IronPort-SDR: YU6dLP1DNLMURLAnRyH0/ToXPzukvGtC8bpWPbwcPGhBJaSgyj1GfhPu9Ymdxq/gckaOxafLvR
 6xoooXJnMkRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="325852274"
Received: from gruberda-mobl2.ger.corp.intel.com (HELO [10.249.32.254])
 ([10.249.32.254])
 by orsmga007.jf.intel.com with ESMTP; 14 Jul 2020 07:16:38 -0700
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
References: <20200714141216.GA314989@mwanda>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <71508ba9-6cad-45f9-a3b1-b3401ac0a1d5@intel.com>
Date: Tue, 14 Jul 2020 17:16:33 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200714141216.GA314989@mwanda>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftest: Fix an error code in
 live_noa_gpr()
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 kernel-janitors@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMTQvMDcvMjAyMCAxNzoxMiwgRGFuIENhcnBlbnRlciB3cm90ZToKPiBUaGUgZXJyb3IgY29k
ZSBpcyBub3Qgc2V0IG9uIHRoaXMgZXJyb3IgcGF0aC4gIEl0J3MgZWl0aGVyIHplcm8gb3IKPiB1
bmluaXRpYWxpemVkIGF0IHRoaXMgcG9pbnQuCj4KPiBGaXhlczogZWQyNjkwYTljYTg5ICgiZHJt
L2k5MTUvc2VsZnRlc3Q6IENoZWNrIHRoYXQgR1BSIGFyZSByZXN0b3JlZCBhY3Jvc3Mgbm9hX3dh
aXQiKQo+IFNpZ25lZC1vZmYtYnk6IERhbiBDYXJwZW50ZXIgPGRhbi5jYXJwZW50ZXJAb3JhY2xl
LmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3BlcmYu
YyB8IDEgKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfcGVyZi5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfcGVyZi5jCj4gaW5kZXggZGViNmRlYzFiNWFiLi43
YWE3M2JiMDMzODEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3Rz
L2k5MTVfcGVyZi5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVf
cGVyZi5jCj4gQEAgLTMyOSw2ICszMjksNyBAQCBzdGF0aWMgaW50IGxpdmVfbm9hX2dwcih2b2lk
ICphcmcpCj4gICAJY3MgPSBpbnRlbF9yaW5nX2JlZ2luKHJxLCAyICogMzIgKyAyKTsKPiAgIAlp
ZiAoSVNfRVJSKGNzKSkgewo+ICAgCQlpOTE1X3JlcXVlc3RfYWRkKHJxKTsKPiArCQllcnIgPSBQ
VFJfRVJSKGNzKTsKPiAgIAkJZ290byBvdXRfcnE7Cj4gICAJfQo+ICAgCgpMb29rcyBsaWtlIHRo
ZXJlIGlzIGFub3RoZXIgYmVsb3cgOgoKY3MgPSBpbnRlbF9yaW5nX2JlZ2luKHJxLCA0KTsKaWYg
KElTX0VSUihjcykpIHsKIMKgwqDCoMKgwqDCoMKgIGk5MTVfcmVxdWVzdF9hZGQocnEpOwogwqDC
oMKgwqDCoMKgwqAgZ290byBvdXRfcnE7Cn0KCi1MaW9uZWwKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
