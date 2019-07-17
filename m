Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48BA56BCDD
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 15:19:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A80686E160;
	Wed, 17 Jul 2019 13:18:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE6066E160
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 13:18:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jul 2019 06:18:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,274,1559545200"; d="scan'208";a="158461119"
Received: from esulliva-mobl.ger.corp.intel.com (HELO [10.251.94.109])
 ([10.251.94.109])
 by orsmga007.jf.intel.com with ESMTP; 17 Jul 2019 06:18:57 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190717074644.32724-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <5d0af90c-a448-8a67-c577-0dd61faf1ca4@linux.intel.com>
Date: Wed, 17 Jul 2019 14:18:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190717074644.32724-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove obsolete engine clenaup
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

Ck9uIDE3LzA3LzIwMTkgMDg6NDYsIENocmlzIFdpbHNvbiB3cm90ZToKPiBSZW1vdmUgdGhlIG91
dGVyIGxheWVyIGNsZWFudXAgb2YgZW5naW5lIHN0dWJzOyBpdCBubyBsb25nZXIgdHJpZXMgdG8K
CldobyBpcyAiaXQiPwoKPiBwcmVhbGxvY2F0ZSBhbmQgc28gaXMgbm90IHJlc3BvbnNpYmxlIGZv
ciBlaXRoZXIgdGhlIGFsbG9jYXRpb24gb3IgZnJlZS4KPiBCeSB0aGUgdGltZSB3ZSBjYWxsIHRo
ZSBjbGVhbnVwIGZ1bmN0aW9uLCB3ZSBhbHJlYWR5IGhhdmUgY2xlYW5lZCB1cCB0aGUKPiBlbmdp
bmVzLgoKSSBzZWU6CgppOTE1X2RyaXZlcl9wcm9iZQp7Ci4uLgoJcmV0ID0gaTkxNV9kcml2ZXJf
ZWFybHlfcHJvYmUoZGV2X3ByaXYpOwouLi4KCWk5MTVfZHJpdmVyX21taW9fcHJvYmUgLT4gaW50
ZWxfZW5naW5lc19pbml0X21taW8gLT4gYWxsb2NhdGVzIGVuZ2luZXMKLi4uCgk8bGF0ZXIgc3Rl
cCBmYWlscz4gLT4gd2hvIGZyZWVzIHRoZSBlbmdpbmVzPwp9CgpSZWdhcmRzLAoKVHZydGtvCgo+
IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
Pgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyB8IDE0ICstLS0tLS0t
LS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEzIGRlbGV0aW9ucygt
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+IGluZGV4IDdjMjA5NzQzZTQ3OC4uZTFkNjJi
YTMwNjEyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCj4gQEAgLTg0OCwxNSArODQ4LDYg
QEAgc3RhdGljIGludCBpOTE1X3dvcmtxdWV1ZXNfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYpCj4gICAJcmV0dXJuIC1FTk9NRU07Cj4gICB9Cj4gICAKPiAtc3RhdGljIHZv
aWQgaTkxNV9lbmdpbmVzX2NsZWFudXAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4g
LXsKPiAtCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsKPiAtCWVudW0gaW50ZWxfZW5n
aW5lX2lkIGlkOwo+IC0KPiAtCWZvcl9lYWNoX2VuZ2luZShlbmdpbmUsIGk5MTUsIGlkKQo+IC0J
CWtmcmVlKGVuZ2luZSk7Cj4gLX0KPiAtCj4gICBzdGF0aWMgdm9pZCBpOTE1X3dvcmtxdWV1ZXNf
Y2xlYW51cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gICB7Cj4gICAJZGVz
dHJveV93b3JrcXVldWUoZGV2X3ByaXYtPmhvdHBsdWcuZHBfd3EpOwo+IEBAIC05MjgsNyArOTE5
LDcgQEAgc3RhdGljIGludCBpOTE1X2RyaXZlcl9lYXJseV9wcm9iZShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpCj4gICAKPiAgIAlyZXQgPSBpOTE1X3dvcmtxdWV1ZXNfaW5pdChk
ZXZfcHJpdik7Cj4gICAJaWYgKHJldCA8IDApCj4gLQkJZ290byBlcnJfZW5naW5lczsKPiArCQly
ZXR1cm4gcmV0Owo+ICAgCj4gICAJaW50ZWxfZ3RfaW5pdF9lYXJseSgmZGV2X3ByaXYtPmd0LCBk
ZXZfcHJpdik7Cj4gICAKPiBAQCAtOTYxLDggKzk1Miw2IEBAIHN0YXRpYyBpbnQgaTkxNV9kcml2
ZXJfZWFybHlfcHJvYmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICAgCWk5
MTVfZ2VtX2NsZWFudXBfZWFybHkoZGV2X3ByaXYpOwo+ICAgZXJyX3dvcmtxdWV1ZXM6Cj4gICAJ
aTkxNV93b3JrcXVldWVzX2NsZWFudXAoZGV2X3ByaXYpOwo+IC1lcnJfZW5naW5lczoKPiAtCWk5
MTVfZW5naW5lc19jbGVhbnVwKGRldl9wcml2KTsKPiAgIAlyZXR1cm4gcmV0Owo+ICAgfQo+ICAg
Cj4gQEAgLTk3OCw3ICs5NjcsNiBAQCBzdGF0aWMgdm9pZCBpOTE1X2RyaXZlcl9sYXRlX3JlbGVh
c2Uoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICAgCWludGVsX3VjX2NsZWFu
dXBfZWFybHkoJmRldl9wcml2LT5ndC51Yyk7Cj4gICAJaTkxNV9nZW1fY2xlYW51cF9lYXJseShk
ZXZfcHJpdik7Cj4gICAJaTkxNV93b3JrcXVldWVzX2NsZWFudXAoZGV2X3ByaXYpOwo+IC0JaTkx
NV9lbmdpbmVzX2NsZWFudXAoZGV2X3ByaXYpOwo+ICAgCj4gICAJcG1fcW9zX3JlbW92ZV9yZXF1
ZXN0KCZkZXZfcHJpdi0+c2JfcW9zKTsKPiAgIAltdXRleF9kZXN0cm95KCZkZXZfcHJpdi0+c2Jf
bG9jayk7Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
