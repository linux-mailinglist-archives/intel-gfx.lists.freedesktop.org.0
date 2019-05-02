Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D73311A83
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 15:51:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FCAC89449;
	Thu,  2 May 2019 13:51:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0FA689449
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 13:51:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 06:51:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,421,1549958400"; d="scan'208";a="140676271"
Received: from jbartcza-mobl.ger.corp.intel.com (HELO [10.251.88.64])
 ([10.251.88.64])
 by orsmga006.jf.intel.com with ESMTP; 02 May 2019 06:51:31 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190501114541.10077-1-chris@chris-wilson.co.uk>
 <20190501114541.10077-5-chris@chris-wilson.co.uk>
 <0161450d-1058-c313-4f31-5adb1e34092f@linux.intel.com>
 <155680335685.9023.13728003939061967960@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <c004a5e8-4b53-a4ca-26f3-8ba4d2adda82@linux.intel.com>
Date: Thu, 2 May 2019 14:51:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155680335685.9023.13728003939061967960@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 05/14] drm/i915: Remove delay for idle_work
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

Ck9uIDAyLzA1LzIwMTkgMTQ6MjIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA1LTAyIDE0OjE5OjM4KQo+Pgo+PiBPbiAwMS8wNS8yMDE5IDEyOjQ1
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW1fcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX3BtLmMKPj4+
IGluZGV4IDQ5YjBjZTU5NGYyMC4uYWU5MWFkN2NiMzFlIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fcG0uYwo+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW1fcG0uYwo+Pj4gQEAgLTI5LDEyICsyOSwxMiBAQCBzdGF0aWMgdm9pZCBpOTE1
X2dlbV9wYXJrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+Pj4gICAgc3RhdGljIHZv
aWQgaWRsZV93b3JrX2hhbmRsZXIoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQo+Pj4gICAgewo+
Pj4gICAgICAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0KPj4+IC0gICAgICAgICAg
ICAgY29udGFpbmVyX29mKHdvcmssIHR5cGVvZigqaTkxNSksIGdlbS5pZGxlX3dvcmsud29yayk7
Cj4+PiArICAgICAgICAgICAgIGNvbnRhaW5lcl9vZih3b3JrLCB0eXBlb2YoKmk5MTUpLCBnZW0u
aWRsZV93b3JrKTsKPj4+ICAgIAo+Pj4gICAgICAgIG11dGV4X2xvY2soJmk5MTUtPmRybS5zdHJ1
Y3RfbXV0ZXgpOwo+Pj4gICAgCj4+PiAgICAgICAgaW50ZWxfd2FrZXJlZl9sb2NrKCZpOTE1LT5n
dC53YWtlcmVmKTsKPj4+IC0gICAgIGlmICghaW50ZWxfd2FrZXJlZl9hY3RpdmUoJmk5MTUtPmd0
Lndha2VyZWYpKQo+Pj4gKyAgICAgaWYgKCFpbnRlbF93YWtlcmVmX2FjdGl2ZSgmaTkxNS0+Z3Qu
d2FrZXJlZikgJiYgIXdvcmtfcGVuZGluZyh3b3JrKSkKPj4KPj4gV2hhdCBpcyB0aGUgcmVhc29u
IGZvciB0aGUgIXdvcmtfcGVuZGluZyBjaGVjaz8KPiAKPiBKdXN0IHRoYXQgd2UgYXJlIGdvaW5n
IHRvIGJlIGNhbGxlZCBhZ2Fpbiwgc28gd2FpdCB1bnRpbCB0aGUgbmV4dCB0aW1lIHRvCj4gc2Vl
IGlmIHdlIHN0aWxsIG5lZWQgdG8gcGFyay4KCldoZW4gZG9lcyBpdCBnZXQgY2FsbGVkIGFnYWlu
PyBJZiBhIHdob2xlIG5ldyBjeWNsZSBvZiB1bnBhcmstcGFyayAKaGFwcGVuZWQgYmVmb3JlIHRo
ZSBwcmV2aW91cyBwYXJrIHdhcyBhYmxlIHRvIGZpbmlzaD8KClJlZ2FyZHMsCgpUdnJ0a28KCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
