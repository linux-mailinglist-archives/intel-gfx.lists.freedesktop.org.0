Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10CB91007F4
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 16:15:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D65846E544;
	Mon, 18 Nov 2019 15:15:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 713886E544
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 15:15:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Nov 2019 07:15:45 -0800
X-IronPort-AV: E=Sophos;i="5.68,320,1569308400"; d="scan'208";a="199998275"
Received: from unknown (HELO [10.252.30.240]) ([10.252.30.240])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 18 Nov 2019 07:15:44 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191118094342.2193485-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <be639e82-c503-4848-13d6-807f66a65a0c@linux.intel.com>
Date: Mon, 18 Nov 2019 15:15:43 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191118094342.2193485-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Add
 intel_gt_driver_late_release for mock device
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

Ck9uIDE4LzExLzIwMTkgMDk6NDMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBIYXZpbmcgY2FsbGVk
IGludGVsX2d0X2luaXRfZWFybHkoKSB0byBzZXR1cCB0aGUgbW9jayBpbnRlbF9ndCwgd2UgbmVl
ZAo+IHRvIGNhbGwgdGhlIGNvcnJlc3BvbmRpbmcgaW50ZWxfZ3RfZHJpdmVyX2xhdGVfcmVsZWFz
ZSgpIHRvIGNsZWFuIHVwLgo+IAo+IFJlZmVyZW5jZXM6IGRlYTM5N2U4MThiMSAoImRybS9pOTE1
L2d0OiBGbHVzaCByZXRpcmUud29yayB0aW1lciBvYmplY3Qgb24gdW5sb2FkIikKPiBSZWZlcmVu
Y2VzOiAyNDYzNWM1MTUyYWYgKCJkcm0vaTkxNTogTW92ZSBpbnRlbF9ndCBpbml0aWFsaXphdGlv
biB0byBhIHNlcGFyYXRlIGZpbGUiKQo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3Vs
aW5AaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL21v
Y2tfZ2VtX2RldmljZS5jIHwgMiArKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygr
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19n
ZW1fZGV2aWNlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19nZW1fZGV2
aWNlLmMKPiBpbmRleCBlNThiMGJjOWNkYjYuLmQxNGJhODQ5OGY1NyAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19nZW1fZGV2aWNlLmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19nZW1fZGV2aWNlLmMKPiBAQCAtNzEs
NiArNzEsNyBAQCBzdGF0aWMgdm9pZCBtb2NrX2RldmljZV9yZWxlYXNlKHN0cnVjdCBkcm1fZGV2
aWNlICpkZXYpCj4gICAJbW9ja19maW5pX2dndHQoJmk5MTUtPmdndHQpOwo+ICAgCWRlc3Ryb3lf
d29ya3F1ZXVlKGk5MTUtPndxKTsKPiAgIAo+ICsJaW50ZWxfZ3RfZHJpdmVyX2xhdGVfcmVsZWFz
ZSgmaTkxNS0+Z3QpOwo+ICAgCWludGVsX21lbW9yeV9yZWdpb25zX2RyaXZlcl9yZWxlYXNlKGk5
MTUpOwo+ICAgCj4gICAJZHJtX21vZGVfY29uZmlnX2NsZWFudXAoJmk5MTUtPmRybSk7Cj4gQEAg
LTIwNCw2ICsyMDUsNyBAQCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqbW9ja19nZW1fZGV2aWNl
KHZvaWQpCj4gICBlcnJfdW5sb2NrOgo+ICAgCWRlc3Ryb3lfd29ya3F1ZXVlKGk5MTUtPndxKTsK
PiAgIGVycl9kcnY6Cj4gKwlpbnRlbF9ndF9kcml2ZXJfbGF0ZV9yZWxlYXNlKCZpOTE1LT5ndCk7
Cj4gICAJaW50ZWxfbWVtb3J5X3JlZ2lvbnNfZHJpdmVyX3JlbGVhc2UoaTkxNSk7Cj4gICAJZHJt
X21vZGVfY29uZmlnX2NsZWFudXAoJmk5MTUtPmRybSk7Cj4gICAJZHJtX2Rldl9maW5pKCZpOTE1
LT5kcm0pOwo+IAoKUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBp
bnRlbC5jb20+CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
