Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A389AD7ACE
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 18:07:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E950A89870;
	Tue, 15 Oct 2019 16:07:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1150E89870
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 16:07:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18846585-1500050 for multiple; Tue, 15 Oct 2019 17:06:58 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191015154449.10338-1-mika.kuoppala@linux.intel.com>
 <20191015154449.10338-9-mika.kuoppala@linux.intel.com>
In-Reply-To: <20191015154449.10338-9-mika.kuoppala@linux.intel.com>
Message-ID: <157115561641.22469.15142375305476906548@skylake-alporthouse-com>
Date: Tue, 15 Oct 2019 17:06:56 +0100
Subject: Re: [Intel-gfx] [PATCH 09/11] drm/i915/tgl: Wa_1607138336
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTEwLTE1IDE2OjQ0OjQ3KQo+IEF2b2lkIHBvc3Np
YmxlIGRlYWRsb2NrIG9uIGNvbnRleHQgc3dpdGNoLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1pa2Eg
S3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgNSArKysrKwo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgIHwgMiArKwo+ICAyIGZpbGVzIGNo
YW5nZWQsIDcgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfd29ya2Fyb3VuZHMuYwo+IGluZGV4IDRiNzc0MGFhZjNiZi4uM2JhY2YzZDk2ODRlIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gQEAgLTEy
NzYsNiArMTI3NiwxMSBAQCByY3NfZW5naW5lX3dhX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqZW5naW5lLCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCj4gICAgICAgICAgICAgICAgIHdh
X21hc2tlZF9lbih3YWwsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICBHRU45X0NTX0RF
QlVHX01PREUxLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgRkZfRE9QX0NMT0NLX0dB
VEVfRElTQUJMRSk7Cj4gKwo+ICsgICAgICAgICAgICAgICAvKiBXYV8xNjA3MTM4MzM2OnRnbCAq
Lwo+ICsgICAgICAgICAgICAgICB3YV93cml0ZV9vcih3YWwsCj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgIEdFTjlfQ1RYX1BSRUVNUFRfUkVHLAo+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICBHRU4xMl9ESVNBQkxFX1BPU0hfQlVTWV9GRl9ET1BfQ0cpOwo+ICAgICAgICAgfQo+ICAK
PiAgICAgICAgIGlmIChJU19HRU4oaTkxNSwgMTEpKSB7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
Cj4gaW5kZXggNTFjM2U3OTc1ZDZiLi4xOWFjMDEwNTc1MjggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmgKPiBAQCAtNzY3Niw2ICs3Njc2LDggQEAgZW51bSB7Cj4gICNkZWZpbmUgR0VOOV9D
U19ERUJVR19NT0RFMSAgICAgICAgICAgIF9NTUlPKDB4MjBlYykKPiAgICAjZGVmaW5lIEZGX0RP
UF9DTE9DS19HQVRFX0RJU0FCTEUgICAgQklUKDEpCj4gICNkZWZpbmUgR0VOOV9DVFhfUFJFRU1Q
VF9SRUcgICAgICAgICAgIF9NTUlPKDB4MjI0OCkKPiArICAjZGVmaW5lIEdFTjEyX0RJU0FCTEVf
UE9TSF9CVVNZX0ZGX0RPUF9DRyAoMSA8PCAxMSkKClJFR19CSVQoMTEpClJldmlld2VkLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
