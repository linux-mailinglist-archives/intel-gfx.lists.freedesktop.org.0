Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D7FEC8EB
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 20:12:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB7066E2DC;
	Fri,  1 Nov 2019 19:12:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD72D6E2DC
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Nov 2019 19:12:31 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Nov 2019 12:12:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,256,1569308400"; d="scan'208";a="194765703"
Received: from orsosgc001.ra.intel.com (HELO orsosgc001.amr.corp.intel.com)
 ([10.23.184.150])
 by orsmga008.jf.intel.com with ESMTP; 01 Nov 2019 12:12:31 -0700
Date: Fri, 1 Nov 2019 12:12:31 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191101191231.GA56205@orsosgc001.amr.corp.intel.com>
References: <20191101181820.12932-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101181820.12932-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.12.0 (2019-05-25)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: Reverse a ternary to make
 sparse happy
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBOb3YgMDEsIDIwMTkgYXQgMDY6MTg6MjBQTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+QXZvaWQKPgo+ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmM6MjQ0Mjo4NTog
d2FybmluZzogZHViaW91czogeCB8ICF5Cj4KPnNpbXBseSBieSBpbnZlcnRpbmcgdGhlIHByZWRp
Y2F0ZSBhbmQgcmV2ZXJzaW5nIHRoZSB0ZXJuYXJ5Lgo+Cj5TaWduZWQtb2ZmLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPkNjOiBVbWVzaCBOZXJsaWdlIFJhbWFw
cGEgPHVtZXNoLm5lcmxpZ2UucmFtYXBwYUBpbnRlbC5jb20+Cj5DYzogTGlvbmVsIExhbmR3ZXJs
aW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgo+LS0tCj4gZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9wZXJmLmMgfCAxMCArKysrKy0tLS0tCj4gMSBmaWxlIGNoYW5nZWQsIDUgaW5z
ZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPgo+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcGVyZi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKPmlu
ZGV4IDZlMzViOTI1NTg4Mi4uYWNkNjVkYTUwNjUxIDEwMDY0NAo+LS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wZXJmLmMKPisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVy
Zi5jCj5AQCAtMjQ0MSwxMiArMjQ0MSwxMiBAQCBzdGF0aWMgaW50IGdlbjEyX2VuYWJsZV9tZXRy
aWNfc2V0KHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0pCj4gCQkJICAgX01BU0tFRF9C
SVRfRU5BQkxFKEdFTjEyX09BR19PQV9ERUJVR19ESVNBQkxFX0NMS19SQVRJT19SRVBPUlRTIHwK
PiAJCQkJCSAgICAgIEdFTjEyX09BR19PQV9ERUJVR19JTkNMVURFX0NMS19SQVRJTykgfAo+IAkJ
CSAgIC8qCj4tCQkJICAgICogSWYgdGhlIHVzZXIgZGlkbid0IHJlcXVpcmUgT0EgcmVwb3J0cywg
aW5zdHJ1Y3QgdGhlCj4tCQkJICAgICogaGFyZHdhcmUgbm90IHRvIGVtaXQgY3R4IHN3aXRjaCBy
ZXBvcnRzLgo+KwkJCSAgICAqIElmIHRoZSB1c2VyIGRpZG4ndCByZXF1aXJlIE9BIHJlcG9ydHMs
IGluc3RydWN0Cj4rCQkJICAgICogdGhlIGhhcmR3YXJlIG5vdCB0byBlbWl0IGN0eCBzd2l0Y2gg
cmVwb3J0cy4KPiAJCQkgICAgKi8KPi0JCQkgICAhKHN0cmVhbS0+c2FtcGxlX2ZsYWdzICYgU0FN
UExFX09BX1JFUE9SVCkgPwo+LQkJCSAgIF9NQVNLRURfQklUX0VOQUJMRShHRU4xMl9PQUdfT0Ff
REVCVUdfRElTQUJMRV9DVFhfU1dJVENIX1JFUE9SVFMpIDoKPi0JCQkgICBfTUFTS0VEX0JJVF9E
SVNBQkxFKEdFTjEyX09BR19PQV9ERUJVR19ESVNBQkxFX0NUWF9TV0lUQ0hfUkVQT1JUUykpOwo+
KwkJCSAgIChzdHJlYW0tPnNhbXBsZV9mbGFncyAmIFNBTVBMRV9PQV9SRVBPUlQpID8KPisJCQkg
ICBfTUFTS0VEX0JJVF9ESVNBQkxFKEdFTjEyX09BR19PQV9ERUJVR19ESVNBQkxFX0NUWF9TV0lU
Q0hfUkVQT1JUUykgOgo+KwkJCSAgIF9NQVNLRURfQklUX0VOQUJMRShHRU4xMl9PQUdfT0FfREVC
VUdfRElTQUJMRV9DVFhfU1dJVENIX1JFUE9SVFMpKTsKCm9vcHMsIG1pc3NlZCB0aGF0IG9uZS4K
CkkgdGhvdWdodCBzcGFyc2UgZmxhZ2dlZCBpdCBiZWNhdXNlIG9mIG1pc3NpbmcgYnJhY2VzICgi
fCIgcHJlY2VkZXMgIj86IiAKKS4KCk1heWJlIGV4cGVjdGluZyBhbm90aGVyIGJyYWNlIGFyb3Vu
ZCB0aGUgdGVybmFyeSAtIG1vcmUgbGlrZSB0aGlzPwoKKwkJCSAgICgoc3RyZWFtLT5zYW1wbGVf
ZmxhZ3MgJiBTQU1QTEVfT0FfUkVQT1JUKSA/CisJCQkgICBfTUFTS0VEX0JJVF9ESVNBQkxFKEdF
TjEyX09BR19PQV9ERUJVR19ESVNBQkxFX0NUWF9TV0lUQ0hfUkVQT1JUUykgOgorCQkJICAgX01B
U0tFRF9CSVRfRU5BQkxFKEdFTjEyX09BR19PQV9ERUJVR19ESVNBQkxFX0NUWF9TV0lUQ0hfUkVQ
T1JUUykpKTsKClRoYW5rcywKVW1lc2gKCj4KPiAJaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwg
R0VOMTJfT0FHX09BR0xCQ1RYQ1RSTCwgcGVyaW9kaWMgPwo+IAkJCSAgIChHRU4xMl9PQUdfT0FH
TEJDVFhDVFJMX0NPVU5URVJfUkVTVU1FIHwKPi0tIAo+Mi4yNC4wLnJjMgo+Cl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
