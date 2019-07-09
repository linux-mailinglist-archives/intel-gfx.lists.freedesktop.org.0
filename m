Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 459206306A
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 08:28:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96A4F89EFF;
	Tue,  9 Jul 2019 06:28:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5253D89EFF
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 06:28:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 23:28:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,469,1557212400"; d="scan'208";a="170503867"
Received: from dawalker-mobl.ger.corp.intel.com (HELO [10.251.80.131])
 ([10.251.80.131])
 by orsmga006.jf.intel.com with ESMTP; 08 Jul 2019 23:28:19 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190708215524.31639-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <9a8b1788-924a-262d-6b9b-6561a352c8ef@linux.intel.com>
Date: Tue, 9 Jul 2019 07:28:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190708215524.31639-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Set igt_spinner.gt for
 early exit
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

Ck9uIDA4LzA3LzIwMTkgMjI6NTUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBTZXQgdXAgYSBkZWZh
dWx0IGd0IHBvaW50ZXIgZm9yIGFuIGVhcmx5IGNsZWFudXAgb2YgaWd0X3NwaW5udGVyLCBiZWZv
cmUKPiBhIHJlcXVlc3QgaXMgY3JlYXRlZCBhbmQgaWd0X3NwaW5uZXIuZ3Qgc2V0IHRvIHRoZSBh
Y3RpdmUgZW5naW5lJ3MuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBp
bnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaWd0X3Nw
aW5uZXIuYyB8IDEgKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pZ3Rfc3Bpbm5lci5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2lndF9zcGlubmVyLmMKPiBpbmRleCAwYzFm
NjUyNjJhNjMuLjg5YjY1NTJhNjQ5NyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9zZWxmdGVzdHMvaWd0X3NwaW5uZXIuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3Nl
bGZ0ZXN0cy9pZ3Rfc3Bpbm5lci5jCj4gQEAgLTE5LDYgKzE5LDcgQEAgaW50IGlndF9zcGlubmVy
X2luaXQoc3RydWN0IGlndF9zcGlubmVyICpzcGluLCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSkKPiAgIAo+ICAgCW1lbXNldChzcGluLCAwLCBzaXplb2YoKnNwaW4pKTsKPiAgIAlzcGlu
LT5pOTE1ID0gaTkxNTsKPiArCXNwaW4tPmd0ID0gJmk5MTUtPmd0Owo+ICAgCj4gICAJc3Bpbi0+
aHdzID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9pbnRlcm5hbChpOTE1LCBQQUdFX1NJWkUpOwo+
ICAgCWlmIChJU19FUlIoc3Bpbi0+aHdzKSkgewo+IAoKSSB0aG91Z2h0IEkgYXVkaXRlZCBhbGwg
Y2FsbCBwYXRocyBidXQgdGhpcyBpcyBjZXJ0YWlubHkgc2FmZXIuIENvdWxkIApkcm9wIHRoZSBj
b25kaXRpb25hbCBzb21ldGhpbmcgd2hpY2ggY2hlY2sgZ3Qgbm93Li4gaG0gaXQncyBub3QgdGhl
cmUuLiAKSSB0aG91Z2h0IEkgcHV0ICJpZiAoc3Bpbi0+Z3QpIGlndF9ndF9jaGlwc2V0X2ZsdXNo
KHNwaW4tPmd0KTsiIG9uIHRoZSAKZW5kIHBhdGguIFN0cmFuZ2UuLgoKUmV2aWV3ZWQtYnk6IFR2
cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpSZWdhcmRzLAoKVHZydGtv
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
