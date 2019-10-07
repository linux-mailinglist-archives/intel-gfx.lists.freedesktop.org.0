Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ECA8CE9EE
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 18:58:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A63E96E218;
	Mon,  7 Oct 2019 16:58:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD74B6E218;
 Mon,  7 Oct 2019 16:58:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 09:58:20 -0700
X-IronPort-AV: E=Sophos;i="5.67,268,1566889200"; d="scan'208";a="344787166"
Received: from hemavenk-mobl1.ger.corp.intel.com (HELO [10.251.81.25])
 ([10.251.81.25])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 07 Oct 2019 09:58:19 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191005081523.27340-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <05edf2d4-d0d2-9b06-4037-40380035ef15@linux.intel.com>
Date: Mon, 7 Oct 2019 17:58:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191005081523.27340-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_softpin: Replace
 constant loop with timeout
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDA1LzEwLzIwMTkgMDk6MTUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBSYXRoZXIgdGhhbiBk
byBhIGZpeGVkIGFtb3VudCBvZiB3b3JrIHRoYXQgdGFrZXMgKmZvcmV2ZXIqLCBydW4gZm9yIGEK
PiBmaXhlZCBhbW91bnQgb2YgdGltZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiAgIHRlc3RzL2k5MTUvZ2VtX3NvZnRw
aW4uYyB8IDYgKysrKy0tCj4gICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2dlbV9zb2Z0cGluLmMgYi90
ZXN0cy9pOTE1L2dlbV9zb2Z0cGluLmMKPiBpbmRleCBjMjkwOTdhZDMuLjAzMjA1NmMwOCAxMDA2
NDQKPiAtLS0gYS90ZXN0cy9pOTE1L2dlbV9zb2Z0cGluLmMKPiArKysgYi90ZXN0cy9pOTE1L2dl
bV9zb2Z0cGluLmMKPiBAQCAtMTAyLDE0ICsxMDIsMTQgQEAgc3RhdGljIHZvaWQgdGVzdF9zb2Z0
cGluKGludCBmZCkKPiAgIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNfb2JqZWN0MiBvYmplY3Q7
Cj4gICAJdWludDY0X3Qgb2Zmc2V0LCBlbmQ7Cj4gICAJdWludDMyX3QgbGFzdF9oYW5kbGU7Cj4g
LQlpbnQgbG9vcDsKPiArCXVuc2lnbmVkIGxvbmcgY291bnQgPSAwOwo+ICAgCj4gICAJbGFzdF9o
YW5kbGUgPSBnZW1fY3JlYXRlKGZkLCBzaXplKTsKPiAgIAo+ICAgCW1lbXNldCgmZXhlY2J1Ziwg
MCwgc2l6ZW9mKGV4ZWNidWYpKTsKPiAgIAlleGVjYnVmLmJ1ZmZlcnNfcHRyID0gdG9fdXNlcl9w
b2ludGVyKCZvYmplY3QpOwo+ICAgCWV4ZWNidWYuYnVmZmVyX2NvdW50ID0gMTsKPiAtCWZvciAo
bG9vcCA9IDA7IGxvb3AgPCAxMDI0OyBsb29wKyspIHsKPiArCWlndF91bnRpbF90aW1lb3V0KDMw
KSB7Cj4gICAJCW1lbXNldCgmb2JqZWN0LCAwLCBzaXplb2Yob2JqZWN0KSk7Cj4gICAJCW9iamVj
dC5oYW5kbGUgPSBnZW1fY3JlYXRlKGZkLCAyKnNpemUpOwo+ICAgCQlnZW1fd3JpdGUoZmQsIG9i
amVjdC5oYW5kbGUsIDAsICZiYmUsIHNpemVvZihiYmUpKTsKPiBAQCAtMTM0LDcgKzEzNCw5IEBA
IHN0YXRpYyB2b2lkIHRlc3Rfc29mdHBpbihpbnQgZmQpCj4gICAJCX0KPiAgIAo+ICAgCQlsYXN0
X2hhbmRsZSA9IG9iamVjdC5oYW5kbGU7Cj4gKwkJY291bnQrKzsKPiAgIAl9Cj4gKwlpZ3RfaW5m
bygiQ29tcGxldGQgJWx1IGN5Y2xlc1xuIiwgY291bnQpOwo+ICAgfQo+ICAgCj4gICBzdGF0aWMg
dm9pZCB0ZXN0X292ZXJsYXAoaW50IGZkKQo+IAoKUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGlu
IDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
