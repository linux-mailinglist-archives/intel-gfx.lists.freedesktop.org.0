Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CBA39B61D
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 20:16:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9153B6ED14;
	Fri, 23 Aug 2019 18:16:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A62536ED14
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 18:16:03 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 11:16:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,422,1559545200"; d="scan'208";a="184280388"
Received: from orsosgc001.ra.intel.com (HELO orsosgc001.amr.corp.intel.com)
 ([10.23.184.150])
 by orsmga006.jf.intel.com with ESMTP; 23 Aug 2019 11:16:02 -0700
Date: Fri, 23 Aug 2019 11:16:02 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190823181602.GA23502@orsosgc001.amr.corp.intel.com>
References: <20190823082055.5992-1-lucas.demarchi@intel.com>
 <20190823082055.5992-19-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190823082055.5992-19-lucas.demarchi@intel.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Subject: Re: [Intel-gfx] [PATCH v3 18/23] drm/i915/tgl/perf: use the same oa
 ctx_id format as icl
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
Cc: Michel Thierry <michel.thierry@intel.com>, intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmV2aWV3ZWQtYnk6IFVtZXNoIE5lcmxpZ2UgUmFtYXBwYSA8dW1lc2gubmVybGlnZS5yYW1hcHBh
QGludGVsLmNvbT4KCk9uIEZyaSwgQXVnIDIzLCAyMDE5IGF0IDAxOjIwOjUwQU0gLTA3MDAsIEx1
Y2FzIERlIE1hcmNoaSB3cm90ZToKPkZyb206IE1pY2hlbCBUaGllcnJ5IDxtaWNoZWwudGhpZXJy
eUBpbnRlbC5jb20+Cj4KPkNvbXBhcmVkIHRvIEljZWxha2UsIFRpZ2VybGFrZSdzIE1BWF9DT05U
RVhUX0hXX0lEIGlzIHNtYWxsZXIgYnkgb25lLCBidXQKPnNpbmNlIHdlIGp1c3QgdXNlIHRoZSB1
cHBlciAzMiBiaXRzIG9mIHRoZSBscmNfZGVzYywgaXQncyBndWFyYW50ZWVkIE9BCj53aWxsIHVz
ZSB0aGUgY29ycmVjdCBvbmUuCj4KPkNjOiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcubGFu
ZHdlcmxpbkBpbnRlbC5jb20+Cj5TaWduZWQtb2ZmLWJ5OiBNaWNoZWwgVGhpZXJyeSA8bWljaGVs
LnRoaWVycnlAaW50ZWwuY29tPgo+U2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNh
cy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4tLS0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Bl
cmYuYyB8IDMgKystCj4gMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQo+Cj5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwo+aW5kZXggZTQyYjg2ODI3ZDZiLi4yYzlm
NDZlMTI2MjIgMTAwNjQ0Cj4tLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwo+
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKPkBAIC0xMjk5LDcgKzEyOTks
OCBAQCBzdGF0aWMgaW50IG9hX2dldF9yZW5kZXJfY3R4X2lkKHN0cnVjdCBpOTE1X3BlcmZfc3Ry
ZWFtICpzdHJlYW0pCj4gCQl9Cj4gCQlicmVhazsKPgo+LQljYXNlIDExOiB7Cj4rCWNhc2UgMTE6
Cj4rCWNhc2UgMTI6IHsKPiAJCXN0cmVhbS0+c3BlY2lmaWNfY3R4X2lkX21hc2sgPQo+IAkJCSgo
MVUgPDwgR0VOMTFfU1dfQ1RYX0lEX1dJRFRIKSAtIDEpIDw8IChHRU4xMV9TV19DVFhfSURfU0hJ
RlQgLSAzMikgfAo+IAkJCSgoMVUgPDwgR0VOMTFfRU5HSU5FX0lOU1RBTkNFX1dJRFRIKSAtIDEp
IDw8IChHRU4xMV9FTkdJTkVfSU5TVEFOQ0VfU0hJRlQgLSAzMikgfAo+LS0gCj4yLjIzLjAKPgo+
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKPkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
