Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39604D8AAA
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 10:17:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 328666E8F0;
	Wed, 16 Oct 2019 08:17:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DF4F6E8F0
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 08:17:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 01:17:02 -0700
X-IronPort-AV: E=Sophos;i="5.67,303,1566889200"; d="scan'208";a="186082297"
Received: from dwiesing-mobl.ger.corp.intel.com (HELO [10.252.31.172])
 ([10.252.31.172])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 16 Oct 2019 01:17:01 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191015085911.10317-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <d3753840-c3cd-ba60-d936-f1af9f6beba5@linux.intel.com>
Date: Wed, 16 Oct 2019 09:16:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191015085911.10317-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Drop stale struct_mutex
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE1LzEwLzIwMTkgMDk6NTksIENocmlzIFdpbHNvbiB3cm90ZToKPiBBIGxhdGVseSBhZGRl
ZCB0ZXN0IHdhcyBtaXNzZWQgd2hlbiBhcHBseWluZyB0aGUgc3RydWN0X211dGV4IHJlbW92YWwK
PiBwYXRjaGVzLiBEbyBzbyBub3cuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9zZWxmdGVzdF9scmMuYyB8IDkgKy0tLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDggZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3NlbGZ0ZXN0X2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRl
c3RfbHJjLmMKPiBpbmRleCAxMjc2ZGEwNTlkYzYuLjljMWYzNGZiNTg4MiAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xyYy5jCj4gQEAgLTEwNyw3ICsxMDcsNiBAQCBzdGF0
aWMgaW50IGxpdmVfdW5saXRlX3Jlc3RvcmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUs
IGludCBwcmlvKQo+ICAgCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsKPiAgIAlzdHJ1
Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4Owo+ICAgCWVudW0gaW50ZWxfZW5naW5lX2lkIGlkOwo+
IC0JaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7Cj4gICAJc3RydWN0IGlndF9zcGlubmVyIHNwaW47
Cj4gICAJaW50IGVyciA9IC1FTk9NRU07Cj4gICAKPiBAQCAtMTE2LDExICsxMTUsOCBAQCBzdGF0
aWMgaW50IGxpdmVfdW5saXRlX3Jlc3RvcmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUs
IGludCBwcmlvKQo+ICAgCSAqIG9uIHRoZSBzYW1lIGVuZ2luZSBmcm9tIHRoZSBzYW1lIHBhcmVu
dCBjb250ZXh0Lgo+ICAgCSAqLwo+ICAgCj4gLQltdXRleF9sb2NrKCZpOTE1LT5kcm0uc3RydWN0
X211dGV4KTsKPiAtCXdha2VyZWYgPSBpbnRlbF9ydW50aW1lX3BtX2dldCgmaTkxNS0+cnVudGlt
ZV9wbSk7Cj4gLQo+ICAgCWlmIChpZ3Rfc3Bpbm5lcl9pbml0KCZzcGluLCAmaTkxNS0+Z3QpKQo+
IC0JCWdvdG8gZXJyX3VubG9jazsKPiArCQlyZXR1cm4gZXJyOwo+ICAgCj4gICAJY3R4ID0ga2Vy
bmVsX2NvbnRleHQoaTkxNSk7Cj4gICAJaWYgKCFjdHgpCj4gQEAgLTI2NCw5ICsyNjAsNiBAQCBz
dGF0aWMgaW50IGxpdmVfdW5saXRlX3Jlc3RvcmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUsIGludCBwcmlvKQo+ICAgCWtlcm5lbF9jb250ZXh0X2Nsb3NlKGN0eCk7Cj4gICBlcnJfc3Bp
bjoKPiAgIAlpZ3Rfc3Bpbm5lcl9maW5pKCZzcGluKTsKPiAtZXJyX3VubG9jazoKPiAtCWludGVs
X3J1bnRpbWVfcG1fcHV0KCZpOTE1LT5ydW50aW1lX3BtLCB3YWtlcmVmKTsKPiAtCW11dGV4X3Vu
bG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7Cj4gICAJcmV0dXJuIGVycjsKPiAgIH0KPiAg
IAo+IAoKUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5j
b20+CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
