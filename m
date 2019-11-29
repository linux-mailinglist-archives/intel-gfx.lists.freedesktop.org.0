Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F10E10D49B
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 12:15:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 659066E8D8;
	Fri, 29 Nov 2019 11:15:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 186816E8D8
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 11:15:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Nov 2019 03:15:49 -0800
X-IronPort-AV: E=Sophos;i="5.69,257,1571727600"; d="scan'208";a="203705091"
Received: from kjbrenna-mobl1.ger.corp.intel.com (HELO [10.251.83.147])
 ([10.251.83.147])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 29 Nov 2019 03:15:48 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191129093908.631527-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <375aef03-4aa6-cbbd-3bcd-0eb7a44cc2f4@linux.intel.com>
Date: Fri, 29 Nov 2019 11:15:46 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191129093908.631527-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Serialise i915_active_wait() with
 its retirement
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

Ck9uIDI5LzExLzIwMTkgMDk6MzksIENocmlzIFdpbHNvbiB3cm90ZToKPiBBcyB0aGUgaTkxNV9h
Y3RpdmUucmV0aXJlKCkgbWF5IGJlIHJ1bm5pbmcgb24gYW5vdGhlciBDUFUgYXMgd2UgZGV0ZWN0
Cj4gdGhhdCB0aGUgaTkxNV9hY3RpdmUgaXMgaWRsZSwgd2UgbWF5IG5vdCB3YWl0IGZvciB0aGUg
cmV0aXJlbWVudCBpdHNlbGYuCj4gV2FpdCBmb3IgdGhlIHJlbW90ZSBjYWxsYmFjayBieSB3YWl0
aW5nIGZvciB0aGUgcmV0aXJlbWVudCB3b3JrZXIuCj4gCj4gQnVnemlsbGE6IGh0dHBzOi8vYnVn
cy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMjQyNAo+IFNpZ25lZC1vZmYtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC0tLQo+ICAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuYyB8IDEgKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
YWN0aXZlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jCj4gaW5kZXggNDc5
MTk1ZWNiYzZjLi5lODYzMGVlMzMzMzYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9hY3RpdmUuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZl
LmMKPiBAQCAtNDY5LDYgKzQ2OSw3IEBAIGludCBpOTE1X2FjdGl2ZV93YWl0KHN0cnVjdCBpOTE1
X2FjdGl2ZSAqcmVmKQo+ICAgCWlmICh3YWl0X3Zhcl9ldmVudF9pbnRlcnJ1cHRpYmxlKHJlZiwg
aTkxNV9hY3RpdmVfaXNfaWRsZShyZWYpKSkKPiAgIAkJcmV0dXJuIC1FSU5UUjsKPiAgIAo+ICsJ
Zmx1c2hfd29yaygmcmVmLT53b3JrKTsKPiAgIAlyZXR1cm4gMDsKPiAgIH0KPiAgIAo+IAoKSG0s
IGJ1dCB3YWtlX3VwX3dhciBpcyBpbiB0aGUgd29ya2VyIHNvIGhvdyBkb2VzIHdhaXRfdmFyX2V2
ZW50IHdha2UgdGhlIAp3YWl0ZXIgdXAgYmVmb3JlIGl0IGhhcyBiZWVuIHJldGlyZWQ/CgpSZWdh
cmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
