Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 980939A9A2
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 10:07:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0616F6EBED;
	Fri, 23 Aug 2019 08:07:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBC726EBEB
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 08:07:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 09:46:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,417,1559545200"; d="scan'208";a="208235142"
Received: from anshuma1-mobl1.gar.corp.intel.com (HELO [10.252.69.203])
 ([10.252.69.203])
 by fmsmga002.fm.intel.com with ESMTP; 22 Aug 2019 09:46:27 -0700
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190816080503.28594-1-lucas.demarchi@intel.com>
 <20190816080503.28594-13-lucas.demarchi@intel.com>
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Message-ID: <fb2a84ec-0604-2a29-0a0b-754d7266cf28@intel.com>
Date: Thu, 22 Aug 2019 22:16:26 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190816080503.28594-13-lucas.demarchi@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 12/39] drm/i915/tgl: Add maximum resolution
 supported by PSR2 HW
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
Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA4LzE2LzIwMTkgMTozNCBQTSwgTHVjYXMgRGUgTWFyY2hpIHdyb3RlOgo+IEZyb206IEpv
c8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+IAo+IFRHTCBQU1Iy
IEhXIHN1cHBvcnRzIGEgYmlnZ2VyIHJlc29sdXRpb24sIHNvIGxldHMgYWRkIGl0Cj4gCj4gQ2M6
IERoaW5ha2FyYW4gUGFuZGl5YW4gPGRoaW5ha2FyYW4ucGFuZGl5YW5AaW50ZWwuY29tPgo+IENj
OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTog
Sm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9m
Zi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4gLS0tCj4g
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNSArKysrLQo+ICAg
MSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+IGluZGV4IDg5NGMxNzA5ZTMzMi4u
MzM5MzZmZGQ4ODUxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jCj4gQEAgLTU3NCw3ICs1NzQsMTAgQEAgc3RhdGljIGJvb2wgaW50ZWxfcHNyMl9jb25maWdf
dmFsaWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKPiAgIAkJcmV0dXJuIGZhbHNlOwo+ICAg
CX0KPiAgIAo+IC0JaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTAgfHwgSVNfR0VNSU5JTEFL
RShkZXZfcHJpdikpIHsKPiArCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKSB7Cj4gKwkJ
cHNyX21heF9oID0gNTEyMDsKPiArCQlwc3JfbWF4X3YgPSAzMjAwOwpCLlNwZWNzIDQ5MTk5IG9u
bHkgdGFsa3MgYWJvdXQgUFNSMiBtYXhpbXVtIHBpcGUgaG9yaXpvbnRhbCBhY3RpdmUgc2l6ZSAK
NTEyMCBwaXhlbHMsIGZyb20gd2hlcmUgd2UgZ290IHRoZSBtYXggdmVydGljYWwgc2l6ZS4KPiAr
CX0gZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMCB8fCBJU19HRU1JTklMQUtFKGRl
dl9wcml2KSkgewo+ICAgCQlwc3JfbWF4X2ggPSA0MDk2Owo+ICAgCQlwc3JfbWF4X3YgPSAyMzA0
Owo+ICAgCX0gZWxzZSBpZiAoSVNfR0VOKGRldl9wcml2LCA5KSkgewo+IApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
