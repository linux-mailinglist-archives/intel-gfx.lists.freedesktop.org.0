Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CED955CEA5
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 13:43:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C79D89A98;
	Tue,  2 Jul 2019 11:43:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5325589A98;
 Tue,  2 Jul 2019 11:43:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jul 2019 04:43:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,443,1557212400"; d="scan'208";a="184492965"
Received: from dglazik-mobl2.ger.corp.intel.com (HELO [10.251.94.160])
 ([10.251.94.160])
 by fmsmga001.fm.intel.com with ESMTP; 02 Jul 2019 04:43:18 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190702105034.2535-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <cd9ca6a7-b424-45cb-0c56-45bff12f1b54@linux.intel.com>
Date: Tue, 2 Jul 2019 12:43:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190702105034.2535-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915: Fix
 gem_context_has_engine_map() for older kernels
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

Ck9uIDAyLzA3LzIwMTkgMTE6NTAsIENocmlzIFdpbHNvbiB3cm90ZToKPiBDSSBpcyBjdXJyZW50
bHkgYnJlYWtpbmcgb24gbGludXMvZHJtLWludGVsLWZpeGVzIGR1ZSB0byB0aGUgYXNzZXJ0IHRo
YXQKPiB0aGUga2VybmVsIHN1cHBvcnRzIGNvbnRleHQgZW5naW5lIG1hcHMuIFJlcG9ydCB0aGUg
bGFjayBvZiBtYXBzIG9uCj4gb2xkZXIga2VybmVscyBncmFjZWZ1bGx5IQo+IAo+IFNpZ25lZC1v
ZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICAgbGli
L2k5MTUvZ2VtX2VuZ2luZV90b3BvbG9neS5jIHwgOSArKysrKystLS0KPiAgIDEgZmlsZSBjaGFu
Z2VkLCA2IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2xp
Yi9pOTE1L2dlbV9lbmdpbmVfdG9wb2xvZ3kuYyBiL2xpYi9pOTE1L2dlbV9lbmdpbmVfdG9wb2xv
Z3kuYwo+IGluZGV4IGNhZTVhMDI5Mi4uY2MyYjNmZjZlIDEwMDY0NAo+IC0tLSBhL2xpYi9pOTE1
L2dlbV9lbmdpbmVfdG9wb2xvZ3kuYwo+ICsrKyBiL2xpYi9pOTE1L2dlbV9lbmdpbmVfdG9wb2xv
Z3kuYwo+IEBAIC0zMjEsMTAgKzMyMSwxMyBAQCBib29sIGdlbV9jb250ZXh0X2hhc19lbmdpbmVf
bWFwKGludCBmZCwgdWludDMyX3QgY3R4KQo+ICAgCQkucGFyYW0gPSBJOTE1X0NPTlRFWFRfUEFS
QU1fRU5HSU5FUywKPiAgIAkJLmN0eF9pZCA9IGN0eAo+ICAgCX07Cj4gLQlpbnQgcmV0Owo+ICAg
Cj4gLQlyZXQgPSBfX2dlbV9jb250ZXh0X2dldF9wYXJhbShmZCwgJnBhcmFtKTsKPiAtCWlndF9h
c3NlcnRfZXEocmV0LCAwKTsKPiArCS8qCj4gKwkgKiBJZiB0aGUga2VybmVsIGlzIHRvbyBvbGQg
dG8gc3VwcG9ydCBQQVJBTV9FTkdJTkVTLAo+ICsJICogdGhlbiBuYXR1cmFsbHkgaXMgaGFzIG5v
IGVuZ2luZSBtYXAuCj4gKwkgKi8KPiArCWlmIChfX2dlbV9jb250ZXh0X2dldF9wYXJhbShmZCwg
JnBhcmFtKSkKPiArCQlyZXR1cm4gZmFsc2U7Cj4gICAKPiAgIAlyZXR1cm4gcGFyYW0uc2l6ZTsK
PiAgIH0KPiAKCkJsZXVyZ2gsIHNvcnJ5LiBJIGV2ZW4gaGF2ZSBzb21lIG1lbW9yaWVzIG9mIGNo
ZWNraW5nIHJldCwgb3RoZXJ3aXNlIEkgCndvdWxkbid0IGhhdmUgaGFkIHRoZSBsb2NhbC4gRG9u
J3Qga25vdyB3aGF0IGhhcHBlbmVkIHRoZXJlLi4KClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxp
biA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
