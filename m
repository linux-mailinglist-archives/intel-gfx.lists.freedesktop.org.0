Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B13E22002
	for <lists+intel-gfx@lfdr.de>; Sat, 18 May 2019 00:03:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C97E98999E;
	Fri, 17 May 2019 22:03:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B71508999E
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 22:03:42 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 15:03:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,481,1549958400"; d="scan'208";a="172950795"
Received: from aswarup-desk.jf.intel.com (HELO aswarup-desk) ([10.54.75.32])
 by fmsmga002.fm.intel.com with ESMTP; 17 May 2019 15:03:41 -0700
Date: Fri, 17 May 2019 14:59:30 -0700
From: Aditya Swarup <aditya.swarup@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20190517215930.GA25107@aswarup-desk>
References: <1558026716-26053-1-git-send-email-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558026716-26053-1-git-send-email-anshuman.gupta@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] Revert "ICL HACK: Disable ACPI idle driver"
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
Cc: daniel.vetter@intel.com, intel-gfx@lists.freedesktop.org,
 ville.syrjala@intel.com, martin.peres@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIHBhdGNoIGxvb2tzIGZpbmUgdG8gbWUuCk9uIFRodSwgTWF5IDE2LCAyMDE5IGF0IDEwOjQx
OjU2UE0gKzA1MzAsIEFuc2h1bWFuIEd1cHRhIHdyb3RlOgo+IFRoaXMgcmV2ZXJ0cyBjb21taXQg
OTliNjlkYjU3NTQ0ZWM3ZWQ0Mjc2MDdmMWEyYTE4NThhN2Q0M2I2MQo+IENvcmUtZm9yLUNJOklD
TF9vbmx5ICBEaXNhYmxlIEFDUEkgaWRsZSBkcml2ZXIuCj4gCj4gVGhpcyBoYWNrIGhhcyBiZWVu
IHByb3ZpZGVkIGNvbnNpZGVyaW5nIHRoZSBCdWcgYXNzZXNzbWVudAo+IHRoYXQgQUNQSSBpZGxl
IGRyaXZlciBwYWdlIGZhdWx0IGNhdXNlcyBiZWxvdyBidWcuCj4gRkRPIGh0dHBzOi8vYnVncy5m
cmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwODg0MAo+IEJ1dCB0aGlzIGJ1ZyBpcyBz
dGlsbCByZXByb2R1Y2libGUgYWZ0ZXIgZGlzYWJsaW5nIEFDUEkgaWRsZSBkcml2ZXIuCj4gCj4g
SXQgbG9va3MgInJjdV9wcmVlbXB0IHNlbGYtZGV0ZWN0ZWQgc3RhbGwgb24gQ1BVIiBjYXVzZXMg
dG8KPiBodW5nIGt3b3JrZXIgYW5kIGZvbGxvd2VkIGJ5IHBhbmljIHJlc3VsdGVkIHRoaXMgYnVn
Lgo+IAo+IEhlbmNlIGl0IG1ha2Ugc2Vuc2UgdG8gcmV2ZXJ0IHRoaXMgcGF0Y2guCj4gCj4gQ2M6
IG1hcnRpbi5wZXJlc0BpbnRlbC5jb20KPiBDYzogZGFuaWVsLnZldHRlckBpbnRlbC5jb20KPiBD
YzogdmlsbGUuc3lyamFsYUBpbnRlbC5jb20KClJldmlld2VkLWJ5OiBBZGl0eWEgU3dhcnVwIDxh
ZGl0eWEuc3dhcnVwQGludGVsLmNvbT4KCj4gU2lnbmVkLW9mZi1ieTogQW5zaHVtYW4gR3VwdGEg
PGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9hY3BpL3Byb2Nlc3Nv
cl9kcml2ZXIuYyB8IDE4ICstLS0tLS0tLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDE3IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Fj
cGkvcHJvY2Vzc29yX2RyaXZlci5jIGIvZHJpdmVycy9hY3BpL3Byb2Nlc3Nvcl9kcml2ZXIuYwo+
IGluZGV4IGVlODQyYTJmLi45ZDZhZmYyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvYWNwaS9wcm9j
ZXNzb3JfZHJpdmVyLmMKPiArKysgYi9kcml2ZXJzL2FjcGkvcHJvY2Vzc29yX2RyaXZlci5jCj4g
QEAgLTM1LDEyICszNSw2IEBACj4gIAo+ICAjaW5jbHVkZSA8YWNwaS9wcm9jZXNzb3IuaD4KPiAg
Cj4gLS8qIE9ubHkgZm9yIENvcmUtZm9yLUNJIHNvIGRvbid0IHdhbnQgaWE2NCB0byBmYWlsIGNv
bXBpbGF0aW9uLiovCj4gLSNpZmRlZiBDT05GSUdfWDg2Cj4gLSNpbmNsdWRlIDxhc20vY3B1X2Rl
dmljZV9pZC5oPgo+IC0jaW5jbHVkZSA8YXNtL2ludGVsLWZhbWlseS5oPgo+IC0jZW5kaWYKPiAt
Cj4gICNpbmNsdWRlICJpbnRlcm5hbC5oIgo+ICAKPiAgI2RlZmluZSBBQ1BJX1BST0NFU1NPUl9O
T1RJRllfUEVSRk9STUFOQ0UgMHg4MAo+IEBAIC02NCwxMyArNTgsNiBAQCBzdGF0aWMgY29uc3Qg
c3RydWN0IGFjcGlfZGV2aWNlX2lkIHByb2Nlc3Nvcl9kZXZpY2VfaWRzW10gPSB7Cj4gIH07Cj4g
IE1PRFVMRV9ERVZJQ0VfVEFCTEUoYWNwaSwgcHJvY2Vzc29yX2RldmljZV9pZHMpOwo+ICAKPiAt
I2RlZmluZSBJQ1BVKG1vZGVsKQl7IFg4Nl9WRU5ET1JfSU5URUwsIDYsIG1vZGVsLCBYODZfRkVB
VFVSRV9BTlksIH0KPiAtc3RhdGljIGNvbnN0IHN0cnVjdCB4ODZfY3B1X2lkIGludGVsX2NwdV9p
ZHNbXSA9IHsKPiAtCUlDUFUoSU5URUxfRkFNNl9JQ0VMQUtFX01PQklMRSksCS8qIElDTCAqLwo+
IC0Je30KPiAtfTsKPiAtTU9EVUxFX0RFVklDRV9UQUJMRSh4ODZjcHUsIGludGVsX2NwdV9pZHMp
Owo+IC0KPiAgc3RhdGljIHN0cnVjdCBkZXZpY2VfZHJpdmVyIGFjcGlfcHJvY2Vzc29yX2RyaXZl
ciA9IHsKPiAgCS5uYW1lID0gInByb2Nlc3NvciIsCj4gIAkuYnVzID0gJmNwdV9zdWJzeXMsCj4g
QEAgLTIzOSw3ICsyMjYsNiBAQCBzdGF0aWMgaW5saW5lIHZvaWQgYWNwaV9wc3NfcGVyZl9leGl0
KHN0cnVjdCBhY3BpX3Byb2Nlc3NvciAqcHIsCj4gIHN0YXRpYyBpbnQgX19hY3BpX3Byb2Nlc3Nv
cl9zdGFydChzdHJ1Y3QgYWNwaV9kZXZpY2UgKmRldmljZSkKPiAgewo+ICAJc3RydWN0IGFjcGlf
cHJvY2Vzc29yICpwciA9IGFjcGlfZHJpdmVyX2RhdGEoZGV2aWNlKTsKPiAtCWNvbnN0IHN0cnVj
dCB4ODZfY3B1X2lkICppZDsKPiAgCWFjcGlfc3RhdHVzIHN0YXR1czsKPiAgCWludCByZXN1bHQg
PSAwOwo+ICAKPiBAQCAtMjUzLDkgKzIzOSw3IEBAIHN0YXRpYyBpbnQgX19hY3BpX3Byb2Nlc3Nv
cl9zdGFydChzdHJ1Y3QgYWNwaV9kZXZpY2UgKmRldmljZSkKPiAgCWlmIChyZXN1bHQgJiYgIUlT
X0VOQUJMRUQoQ09ORklHX0FDUElfQ1BVX0ZSRVFfUFNTKSkKPiAgCQlkZXZfZGJnKCZkZXZpY2Ut
PmRldiwgIkNQUEMgZGF0YSBpbnZhbGlkIG9yIG5vdCBwcmVzZW50XG4iKTsKPiAgCj4gLQlpZCA9
IHg4Nl9tYXRjaF9jcHUoaW50ZWxfY3B1X2lkcyk7Cj4gLQlpZiAoIWlkICYmICghY3B1aWRsZV9n
ZXRfZHJpdmVyKCkgfHwgY3B1aWRsZV9nZXRfZHJpdmVyKCkgPT0KPiAtCQkmYWNwaV9pZGxlX2Ry
aXZlcikpCj4gKwlpZiAoIWNwdWlkbGVfZ2V0X2RyaXZlcigpIHx8IGNwdWlkbGVfZ2V0X2RyaXZl
cigpID09ICZhY3BpX2lkbGVfZHJpdmVyKQo+ICAJCWFjcGlfcHJvY2Vzc29yX3Bvd2VyX2luaXQo
cHIpOwo+ICAKPiAgCXJlc3VsdCA9IGFjcGlfcHNzX3BlcmZfaW5pdChwciwgZGV2aWNlKTsKPiAt
LSAKPiAyLjcuNAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
