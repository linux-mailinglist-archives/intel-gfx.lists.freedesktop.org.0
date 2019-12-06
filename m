Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ECAB1150F5
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2019 14:22:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB2296FA13;
	Fri,  6 Dec 2019 13:22:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A9B76FA13
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2019 13:22:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Dec 2019 05:22:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,284,1571727600"; d="scan'208";a="362233607"
Received: from cfromme-mobl1.ger.corp.intel.com (HELO [10.252.34.238])
 ([10.252.34.238])
 by orsmga004.jf.intel.com with ESMTP; 06 Dec 2019 05:22:45 -0800
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org, Chris Wilson <chris.p.wilson@intel.com>
References: <20191118222432.65399-1-umesh.nerlige.ramappa@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <7d000d56-3685-7bf9-69d2-72f20be3ff42@intel.com>
Date: Fri, 6 Dec 2019 15:22:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191118222432.65399-1-umesh.nerlige.ramappa@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 1/2] drm/i915/perf: Allow non-privileged
 access when OA buffer is not sampled
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

T24gMTkvMTEvMjAxOSAwMDoyNCwgVW1lc2ggTmVybGlnZSBSYW1hcHBhIHdyb3RlOgo+IFNBTVBM
RV9PQV9SRVBPUlQgZW5hYmxlcyBzYW1wbGluZyBvZiBPQSByZXBvcnRzIGZyb20gdGhlIE9BIGJ1
ZmZlci4KPiBTaW5jZSByZXBvcnRzIGZyb20gT0EgYnVmZmVyIGhhZCBzeXN0ZW0gd2lkZSB2aXNp
YmlsaXR5LCBjb2xsZWN0aW5nCj4gc2FtcGxlcyBmcm9tIHRoZSBPQSBidWZmZXIgd2FzIGEgcHJp
dmlsZWdlZCBvcGVyYXRpb24gb24gcHJldmlvdXMKPiBwbGF0Zm9ybXMuIFByaW9yIHRvIFRHTCwg
aXQgd2FzIGFsc28gbmVjZXNzYXJ5IHRvIHNhbXBsZSB0aGUgT0EgYnVmZmVyCj4gdG8gbm9ybWFs
aXplIHJlcG9ydHMgZnJvbSBNSSBSRVBPUlQgUEVSRiBDT1VOVC4KPgo+IFRHTCBoYXMgYSBkZWRp
Y2F0ZWQgT0FSIHVuaXQgdG8gc2FtcGxlIHBlcmYgcmVwb3J0cyBmb3IgYSBzcGVjaWZpYwo+IHJl
bmRlciBjb250ZXh0LiBUaGlzIHJlbW92ZXMgdGhlIG5lY2Vzc2l0eSB0byBzYW1wbGUgT0EgYnVm
ZmVyLgo+Cj4gLSBJZiBub3Qgc2FtcGxpbmcgdGhlIE9BIGJ1ZmZlciwgYWxsb3cgbm9uLXByaXZp
bGVnZWQgYWNjZXNzLiBBbiBlYXJsaWVyCj4gICAgcGF0Y2ggYWxsb3dzIHRoZSBub24tcHJpdmls
ZWdlIGFjY2VzczoKPiAgICBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gv
MzM3NzE2Lz9zZXJpZXM9Njg1ODImcmV2PTEKPiAtIENsZWFyIHVwIHRoZSBwYXRoIGZvciBub24t
cHJpdmlsZWdlZCBhY2Nlc3MgaW4gdGhpcyBwYXRjaAo+Cj4gU2lnbmVkLW9mZi1ieTogVW1lc2gg
TmVybGlnZSBSYW1hcHBhIDx1bWVzaC5uZXJsaWdlLnJhbWFwcGFAaW50ZWwuY29tPgoKUmV2aWV3
ZWQtYnk6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4K
Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyB8IDUgKysrLS0KPiAg
IDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3BlcmYuYwo+IGluZGV4IDYwOGU2YzNmM2MxYS4uY2E1ODUwMmE2N2Q4IDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKPiBAQCAtMjcyMCw3ICsyNzIwLDggQEAgc3Rh
dGljIGludCBpOTE1X29hX3N0cmVhbV9pbml0KHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJl
YW0sCj4gICAJCXJldHVybiAtRUlOVkFMOwo+ICAgCX0KPiAgIAo+IC0JaWYgKCEocHJvcHMtPnNh
bXBsZV9mbGFncyAmIFNBTVBMRV9PQV9SRVBPUlQpKSB7Cj4gKwlpZiAoIShwcm9wcy0+c2FtcGxl
X2ZsYWdzICYgU0FNUExFX09BX1JFUE9SVCkgJiYKPiArCSAgICAoSU5URUxfR0VOKHBlcmYtPmk5
MTUpIDwgMTIgfHwgIXN0cmVhbS0+Y3R4KSkgewo+ICAgCQlEUk1fREVCVUcoIk9ubHkgT0EgcmVw
b3J0IHNhbXBsaW5nIHN1cHBvcnRlZFxuIik7Cj4gICAJCXJldHVybiAtRUlOVkFMOwo+ICAgCX0K
PiBAQCAtMjc1Miw3ICsyNzUzLDcgQEAgc3RhdGljIGludCBpOTE1X29hX3N0cmVhbV9pbml0KHN0
cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0sCj4gICAKPiAgIAlmb3JtYXRfc2l6ZSA9IHBl
cmYtPm9hX2Zvcm1hdHNbcHJvcHMtPm9hX2Zvcm1hdF0uc2l6ZTsKPiAgIAo+IC0Jc3RyZWFtLT5z
YW1wbGVfZmxhZ3MgfD0gU0FNUExFX09BX1JFUE9SVDsKPiArCXN0cmVhbS0+c2FtcGxlX2ZsYWdz
ID0gcHJvcHMtPnNhbXBsZV9mbGFnczsKPiAgIAlzdHJlYW0tPnNhbXBsZV9zaXplICs9IGZvcm1h
dF9zaXplOwo+ICAgCj4gICAJc3RyZWFtLT5vYV9idWZmZXIuZm9ybWF0X3NpemUgPSBmb3JtYXRf
c2l6ZTsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
