Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01FFB377F33
	for <lists+intel-gfx@lfdr.de>; Mon, 10 May 2021 11:16:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EE0189F97;
	Mon, 10 May 2021 09:16:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68DCD89F97
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 May 2021 09:16:00 +0000 (UTC)
IronPort-SDR: eEwV97UQ1NnP7iYfVXXNtRi7CowvqkuhVRfXEpcAZ76/3TP5wiBs3Zlrf7VjUOWt+xsUsaN6c5
 nvKvU6f8BKAA==
X-IronPort-AV: E=McAfee;i="6200,9189,9979"; a="186285759"
X-IronPort-AV: E=Sophos;i="5.82,287,1613462400"; d="scan'208";a="186285759"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2021 02:15:59 -0700
IronPort-SDR: MiEt864+80gKleXCrgvgW8DU2ir5Uz9x0xo2vd1LVB9/MXKo+2GyHzPsxV9FnZIdtFCCACShlZ
 RbKX4IMfeVhg==
X-IronPort-AV: E=Sophos;i="5.82,287,1613462400"; d="scan'208";a="436060052"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.0.170])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2021 02:15:58 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Mon, 10 May 2021 11:15:55 +0200
Message-ID: <23575374.kmuVQn2iE0@jkrzyszt-mobl1.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <2abba1b7-ac7b-a983-39af-87b1b86b765a@linux.intel.com>
References: <20210507144251.376538-1-janusz.krzysztofik@linux.intel.com>
 <2abba1b7-ac7b-a983-39af-87b1b86b765a@linux.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Do release kernel context if
 breadcrumb measure fails
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgVHZydGtvLAoKT24gcG9uaWVkemlhxYJlaywgMTAgbWFqYSAyMDIxIDExOjE0OjQ2IENFU1Qg
VHZydGtvIFVyc3VsaW4gd3JvdGU6Cj4gCj4gT24gMDcvMDUvMjAyMSAxNTo0MiwgSmFudXN6IEty
enlzenRvZmlrIHdyb3RlOgo+ID4gQ29tbWl0IGZiNTk3MGRhMWI0MiAoImRybS9pOTE1L2d0OiBV
c2UgdGhlIGtlcm5lbF9jb250ZXh0IHRvIG1lYXN1cmUgdGhlCj4gPiBicmVhZGNydW1iIHNpemUi
KSByZW9yZGVyZWQgc29tZSBvcGVyYXRpb25zIGluc2lkZSBlbmdpbmVfaW5pdF9jb21tb24oKQo+
ID4gYW5kIGFkZGVkIGFuIGVycm9yIHVud2luZCBwYXRoIHRvIHRoYXQgZnVuY3Rpb24uICBJbiB0
aGF0IHBhdGgsIGEKPiA+IHJlZmVyZW5jZSB0byBhIGtlcm5lbCBjb250ZXh0IGNhbmRpZGF0ZSBz
dXBwb3NlZCB0byBiZSByZWxlYXNlZCBvbiBlcnJvcgo+ID4gd2FzIHB1dCwgYnV0IHRoZSBjb250
ZXh0LCBwaW5uZWQgd2hlbiBjcmVhdGVkLCB3YXMgbm90IHVucGlubmVkIGZpcnN0Lgo+ID4gRml4
IGl0IGJ5IHJlcGxhY2luZyBpbnRlbF9jb250ZXh0X3B1dCgpIHdpdGggZGVzdHJveV9waW5uZWRf
Y29udGV4dCgpCj4gPiBpbnRyb2R1Y2VkIGxhdGVyIGJ5IGNvbW1pdCBiNDM2YTVmOGI2YzggKCJk
cm0vaTkxNS9ndDogVHJhY2sgYWxsIHRpbWVsaW5lcwo+ID4gY3JlYXRlZCB1c2luZyB0aGUgSFdT
UCIpLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5r
cnp5c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+Cj4gPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Cj4gPiAtLS0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZW5naW5lX2NzLmMgfCAyICstCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMSBkZWxldGlvbigtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9lbmdpbmVfY3MuYwo+ID4gaW5kZXggNmRiZGJkZTAwZjE0Li5lYmEyZGE5Njc5YTUgMTAwNjQ0
Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwo+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKPiA+IEBAIC04
OTgsNyArODk4LDcgQEAgc3RhdGljIGludCBlbmdpbmVfaW5pdF9jb21tb24oc3RydWN0IGludGVs
X2VuZ2luZV9jcyAqZW5naW5lKQo+ID4gICAJcmV0dXJuIDA7Cj4gPiAgIAo+ID4gICBlcnJfY29u
dGV4dDoKPiA+IC0JaW50ZWxfY29udGV4dF9wdXQoY2UpOwo+ID4gKwlkZXN0cm95X3Bpbm5lZF9j
b250ZXh0KGNlKTsKPiA+ICAgCXJldHVybiByZXQ7Cj4gPiAgIH0KPiA+ICAgCj4gPiAKPiAKPiBS
ZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiAK
PiBGb3VuZCBieSBzb21lIHRlc3Qgb3IgY29kZSBpbnNwZWN0aW9uPwoKQ29kZSBpbnNwZWN0aW9u
LgoKVGhhbmtzLApKYW51c3oKCj4gCj4gUmVnYXJkcywKPiAKPiBUdnJ0a28KPiAKCgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
