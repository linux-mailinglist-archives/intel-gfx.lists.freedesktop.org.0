Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7200FCE195
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 14:26:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D5026E5D0;
	Mon,  7 Oct 2019 12:26:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D7256E5D0
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2019 12:25:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 05:25:58 -0700
X-IronPort-AV: E=Sophos;i="5.67,268,1566889200"; d="scan'208";a="344720085"
Received: from hemavenk-mobl1.ger.corp.intel.com (HELO [10.251.81.25])
 ([10.251.81.25])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 07 Oct 2019 05:25:58 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191006165002.30312-1-chris@chris-wilson.co.uk>
 <20191006165002.30312-3-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <fd8eee4d-a48a-1863-3a5a-404582f6c83c@linux.intel.com>
Date: Mon, 7 Oct 2019 13:25:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191006165002.30312-3-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 03/12] drm/i915/gt: Restore dropped
 'interruptible' flag
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

Ck9uIDA2LzEwLzIwMTkgMTc6NDksIENocmlzIFdpbHNvbiB3cm90ZToKPiBMb3N0IGluIHRoZSBy
ZWJhc2luZyB3YXMgVHZydGtvJ3MgcmVtaW5kZXIgdGhhdCB3ZSBuZWVkIHRvIGtlZXAgYW4KPiB1
bmludGVycnVwdGlibGUgd2FpdCBhcm91bmQgZm9yIHRoZSBJcm9ubGFrZSBWVC1kIHcvYQo+IAo+
IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+
IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IC0tLQo+ICAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcmVxdWVzdHMuYyB8IDIgKy0KPiAgIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9yZXF1ZXN0cy5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcmVxdWVzdHMuYwo+IGluZGV4IDhhZWQ4OWZkMmNk
Yy4uZDY5ZTc4NDc4ZWVhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2d0X3JlcXVlc3RzLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9n
dF9yZXF1ZXN0cy5jCj4gQEAgLTQ4LDcgKzQ4LDcgQEAgbG9uZyBpbnRlbF9ndF9yZXRpcmVfcmVx
dWVzdHNfdGltZW91dChzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCBsb25nIHRpbWVvdXQpCj4gICAJCQlm
ZW5jZSA9IGk5MTVfYWN0aXZlX2ZlbmNlX2dldCgmdGwtPmxhc3RfcmVxdWVzdCk7Cj4gICAJCQlp
ZiAoZmVuY2UpIHsKPiAgIAkJCQl0aW1lb3V0ID0gZG1hX2ZlbmNlX3dhaXRfdGltZW91dChmZW5j
ZSwKPiAtCQkJCQkJCQkgdHJ1ZSwKPiArCQkJCQkJCQkgaW50ZXJydXB0aWJsZSwKPiAgIAkJCQkJ
CQkJIHRpbWVvdXQpOwo+ICAgCQkJCWRtYV9mZW5jZV9wdXQoZmVuY2UpOwo+ICAgCQkJfQo+IAoK
UmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpS
ZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
