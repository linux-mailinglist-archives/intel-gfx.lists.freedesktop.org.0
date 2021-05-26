Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0BB7391630
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 13:32:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 186626EC91;
	Wed, 26 May 2021 11:32:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52E126EC91
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 May 2021 11:32:30 +0000 (UTC)
IronPort-SDR: 8fS8VzNOTNza8siY7ZkGtnX35Q8lvpJjXiexCf3FV7l4v6Tge4Rw0YO/8GiYBP2o+kGu1ip2SG
 zn5CXMnvC3nQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9995"; a="202198350"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="202198350"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 04:32:28 -0700
IronPort-SDR: c7ruXHtEULke4GcymijdPJVrJrPxpeMRhJlT9vlT7vJZW9eoUc3gf+l5YczKt2I6yxZCym8XHl
 kMxIljtyiY9w==
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="476889418"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.21.94])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 04:32:26 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>
Date: Wed, 26 May 2021 13:32:21 +0200
Message-ID: <2871190.Sgy9Pd6rRy@jkrzyszt-mobl1.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <87zgxbzpiu.fsf@intel.com>
References: <20210429134450.302912-1-janusz.krzysztofik@linux.intel.com>
 <87zgxbzpiu.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix wrong name announced on FB
 driver switching
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpPbiBwb25pZWR6aWHFgmVrLCAzIG1hamEgMjAyMSAxOTozODoxNyBDRVNUIEphbmkgTmlr
dWxhIHdyb3RlOgo+IE9uIFRodSwgMjkgQXByIDIwMjEsIEphbnVzeiBLcnp5c3p0b2ZpayA8amFu
dXN6LmtyenlzenRvZmlrQGxpbnV4LmludGVsLmNvbT4gCndyb3RlOgo+ID4gQ29tbWl0IDdhMGY5
ZWY5NzAzZCAoImRybS9pOTE1OiBVc2UgZHJtX2ZiX2hlbHBlcl9maWxsX2luZm8iKQo+ID4gZWZm
ZWN0aXZlbHkgY2hhbmdlZCBvdXIgRkIgZHJpdmVyIG5hbWUgZnJvbSAiaW50ZWxkcm1mYiIgdG8K
PiA+ICJpOTE1ZHJtZmIiLiAgSG93ZXZlciwgd2UgYXJlIHN0aWxsIHVzaW5nIHRoZSBvbGQgbmFt
ZSB3aGVuIGtpY2tpbmcgb3V0Cj4gPiBhIGZpcm13YXJlIGZiZGV2IGRyaXZlciBwb3RlbnRpYWxs
eSBib3VuZCB0byBvdXIgZGV2aWNlLiAgVXNlIHRoZSBuZXcKPiA+IG5hbWUgdG8gYXZvaWQgY29u
ZnVzaW9uLgo+ID4KPiA+IE5vdGU6IHNpbmNlIHRoZSBuZXcgbmFtZSBpcyBhc3NpZ25lZCBieSBh
IERSTSBmYmRldiBoZWxwZXIgY2FsbGVkIGF0Cj4gPiB0aGUgRFJNIGRyaXZlciByZWdpc3RyYXRp
b24gdGltZSwgdGhhdCBuYW1lIGlzIG5vdCBhdmFpbGFibGUgd2hlbiB3ZQo+ID4ga2ljayB0aGUg
b3RoZXIgZHJpdmVyIG91dCBlYXJseSwgaGVuY2UgYSBoYXJkY29kZWQgbmFtZSBtdXN0IGJlIHVz
ZWQKPiA+IHVubGVzcyB0aGUgRFJNIGxheWVyIGV4cG9zZXMgYSBtYWNybyBmb3IgY29udmVydGlu
ZyBhIERSTSBkcml2ZXIgbmFtZQo+ID4gdG8gaXRzIGFzc29jaWF0ZWQgZmJkZXYgZHJpdmVyIG5h
bWUuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogSmFudXN6IEtyenlzenRvZmlrIDxqYW51c3oua3J6
eXN6dG9maWtAbGludXguaW50ZWwuY29tPgo+IAo+IExHVE0sIERhbmllbD8KPiAKPiBSZXZpZXdl
ZC1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KCkFtIEkgc3VwcG9zZWQg
dG8gZG8gc29tZXRoaW5nIHRvIHB1c2ggcHJvY2Vzc2luZyBvZiB0aGlzIHBhdGNoIGZvcndhcmQ/
ICAKUGxlYXNlIG5vdGUgSSBoYXZlIG5vIHB1c2ggcGVybWlzc2lvbnMgc28gY2FuJ3QgbWVyZ2Ug
aXQgbXlzZWxmLgoKPiAKPiAkIGRpbSBmaXhlcyA3YTBmOWVmOTcwM2QKPiBGaXhlczogN2EwZjll
Zjk3MDNkICgiZHJtL2k5MTU6IFVzZSBkcm1fZmJfaGVscGVyX2ZpbGxfaW5mbyIpCj4gQ2M6IE5v
cmFsZiBUcsO4bm5lcyA8bm9yYWxmQHRyb25uZXMub3JnPgo+IENjOiBBbGV4IERldWNoZXIgPGFs
ZXhhbmRlci5kZXVjaGVyQGFtZC5jb20+Cj4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0
ZXJAaW50ZWwuY29tPgo+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAbGludXguaW50ZWwu
Y29tPgo+IENjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5j
b20+Cj4gQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPiBDYzogaW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiA8c3RhYmxlQHZnZXIua2VybmVsLm9y
Zz4gIyB2NS4yKwoKU2hvdWxkIEkgcmVzdWJtaXQgd2l0aCB0aG9zZSB0YWdzIGFwcGVuZGVkPwoK
VGhhbmtzLApKYW51c3oKCj4gCj4gCj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5jIHwgMiArLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvCmk5MTVfZHJ2LmMKPiA+IGluZGV4IDc4NWRj
ZjIwYzc3Yi4uNDYwODI0OTBkYzlhIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+
ID4gQEAgLTU1NCw3ICs1NTQsNyBAQCBzdGF0aWMgaW50IGk5MTVfZHJpdmVyX2h3X3Byb2JlKHN0
cnVjdCAKZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gPiAgCWlmIChyZXQpCj4gPiAgCQln
b3RvIGVycl9wZXJmOwo+ID4gIAo+ID4gLQlyZXQgPSBkcm1fYXBlcnR1cmVfcmVtb3ZlX2NvbmZs
aWN0aW5nX3BjaV9mcmFtZWJ1ZmZlcnMocGRldiwgCiJpbnRlbGRybWZiIik7Cj4gPiArCXJldCA9
IGRybV9hcGVydHVyZV9yZW1vdmVfY29uZmxpY3RpbmdfcGNpX2ZyYW1lYnVmZmVycyhwZGV2LCAK
Imk5MTVkcm1mYiIpOwo+ID4gIAlpZiAocmV0KQo+ID4gIAkJZ290byBlcnJfZ2d0dDsKPiAKPiAK
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
