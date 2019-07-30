Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C77F47A212
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 09:19:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6207888ED6;
	Tue, 30 Jul 2019 07:19:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83FB06E419
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 07:19:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 00:19:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,325,1559545200"; d="scan'208";a="346907526"
Received: from hinestho-mobl1.amr.corp.intel.com (HELO [10.252.1.47])
 ([10.252.1.47])
 by orsmga005.jf.intel.com with ESMTP; 30 Jul 2019 00:19:19 -0700
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190729234727.28286-1-daniele.ceraolospurio@intel.com>
 <20190729234727.28286-3-daniele.ceraolospurio@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <6d6dae02-ceef-1517-e3af-2bc6a8d5c883@linux.intel.com>
Date: Tue, 30 Jul 2019 08:19:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729234727.28286-3-daniele.ceraolospurio@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: move gt_cleanup_early out of
 gem_cleanup_early
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

Ck9uIDMwLzA3LzIwMTkgMDA6NDcsIERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gd3JvdGU6Cj4gV2Ug
ZG9uJ3QgY2FsbCB0aGUgaW5pdF9lYXJseSBmdW5jdGlvbiBmcm9tIHdpdGhpbiB0aGUgZ2VtIGNv
ZGUsIHNvIHdlCj4gc2hvdWxkbid0IGRvIGl0IGZvciB0aGUgY2xlYW51cCBlaXRoZXIuCj4gCj4g
U2lnbmVkLW9mZi1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1
cmlvQGludGVsLmNvbT4KPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBsaW51eC5pbnRlbC5jb20+
Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIHwgMiArKwo+ICAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyB8IDIgLS0KPiAgIDIgZmlsZXMgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
Ywo+IGluZGV4IGYyZDNkNzU0YWYzNy4uOTM0ZTYwNWUyNDY2IDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5jCj4gQEAgLTk1MSw2ICs5NTEsNyBAQCBzdGF0aWMgaW50IGk5MTVfZHJpdmVyX2Vh
cmx5X3Byb2JlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgIAlpbnRlbF91
Y19jbGVhbnVwX2Vhcmx5KCZkZXZfcHJpdi0+Z3QudWMpOwo+ICAgCWk5MTVfZ2VtX2NsZWFudXBf
ZWFybHkoZGV2X3ByaXYpOwo+ICAgZXJyX3dvcmtxdWV1ZXM6Cj4gKwlpbnRlbF9ndF9jbGVhbnVw
X2Vhcmx5KCZkZXZfcHJpdi0+Z3QpOwo+ICAgCWk5MTVfd29ya3F1ZXVlc19jbGVhbnVwKGRldl9w
cml2KTsKPiAgIAlyZXR1cm4gcmV0Owo+ICAgfQo+IEBAIC05NjYsNiArOTY3LDcgQEAgc3RhdGlj
IHZvaWQgaTkxNV9kcml2ZXJfbGF0ZV9yZWxlYXNlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdikKPiAgIAlpbnRlbF9wb3dlcl9kb21haW5zX2NsZWFudXAoZGV2X3ByaXYpOwo+ICAg
CWludGVsX3VjX2NsZWFudXBfZWFybHkoJmRldl9wcml2LT5ndC51Yyk7Cj4gICAJaTkxNV9nZW1f
Y2xlYW51cF9lYXJseShkZXZfcHJpdik7Cj4gKwlpbnRlbF9ndF9jbGVhbnVwX2Vhcmx5KCZkZXZf
cHJpdi0+Z3QpOwo+ICAgCWk5MTVfd29ya3F1ZXVlc19jbGVhbnVwKGRldl9wcml2KTsKPiAgIAo+
ICAgCXBtX3Fvc19yZW1vdmVfcmVxdWVzdCgmZGV2X3ByaXYtPnNiX3Fvcyk7Cj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbS5jCj4gaW5kZXggYWU0ZTdjYzNlM2Y5Li4yYzdkYzM0MDQ3NTkgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtLmMKPiBAQCAtMTY3NCw4ICsxNjc0LDYgQEAgdm9pZCBpOTE1X2dl
bV9jbGVhbnVwX2Vhcmx5KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgIAlH
RU1fQlVHX09OKGF0b21pY19yZWFkKCZkZXZfcHJpdi0+bW0uZnJlZV9jb3VudCkpOwo+ICAgCVdB
Uk5fT04oZGV2X3ByaXYtPm1tLnNocmlua19jb3VudCk7Cj4gICAKPiAtCWludGVsX2d0X2NsZWFu
dXBfZWFybHkoJmRldl9wcml2LT5ndCk7Cj4gLQo+ICAgCWk5MTVfZ2VtZnNfZmluaShkZXZfcHJp
dik7Cj4gICB9Cj4gICAKPiAKCkkgaGF2ZSBhIG5hZ2dpbmcgZmVlbGluZyBpdCB3YXMgbWUgd2hv
IGFkZGVkIHRoaXMgYXN5bW1ldHJ5LgoKUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0
a28udXJzdWxpbkBpbnRlbC5jb20+CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
