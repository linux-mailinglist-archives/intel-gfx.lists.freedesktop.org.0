Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FD541C38
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2019 08:29:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5084D8921B;
	Wed, 12 Jun 2019 06:29:37 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42CD48921B
 for <Intel-gfx@lists.freedesktop.org>; Wed, 12 Jun 2019 06:29:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jun 2019 23:29:35 -0700
X-ExtLoop1: 1
Received: from aabuhatz-mobl2.ger.corp.intel.com (HELO [10.252.20.210])
 ([10.252.20.210])
 by orsmga002.jf.intel.com with ESMTP; 11 Jun 2019 23:29:34 -0700
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20190610120608.15477-1-tvrtko.ursulin@linux.intel.com>
 <20190610120608.15477-6-tvrtko.ursulin@linux.intel.com>
 <20190611171125.GH5942@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <016c5053-1915-ef59-0630-a7012579d82d@linux.intel.com>
Date: Wed, 12 Jun 2019 07:29:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190611171125.GH5942@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [CI 6/6] drm/i915: Remove I915_READ64 and
 I915_READ64_32x2
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDExLzA2LzIwMTkgMTg6MTEsIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToKPiBPbiBNb24sIEp1
biAxMCwgMjAxOSBhdCAwMTowNjowOFBNICswMTAwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToKPj4g
RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPj4KPj4gTm93
IHRoYXQgYWxsIHRoZWlyIHVzZXJzIGFyZSBnb25lIHdlIGNhbiByZW1vdmUgdGhlIG1hY3JvcyBh
bmQKPj4gYWNjb21wYW55aW5nIGR1cGxpY2F0ZWQgY29tbWVudC4KPj4KPj4gU2lnbmVkLW9mZi1i
eTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPj4gU3VnZ2VzdGVk
LWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+PiBSZXZpZXdlZC1ieTog
SmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPj4gLS0tCj4+ICAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuaCB8IDE4IC0tLS0tLS0tLS0tLS0tLS0tLQo+PiAgIDEgZmls
ZSBjaGFuZ2VkLCAxOCBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4+
IGluZGV4IDIwZWIzN2I3NjBjNC4uZDNjMDJlMDA5YTk4IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmgKPj4gQEAgLTI4NTEsMjQgKzI4NTEsNiBAQCBleHRlcm4gdm9pZCBpbnRlbF9kaXNw
bGF5X3ByaW50X2Vycm9yX3N0YXRlKHN0cnVjdCBkcm1faTkxNV9lcnJvcl9zdGF0ZV9idWYgKmUs
Cj4+ICAgI2RlZmluZSBJOTE1X1JFQURfTk9UUkFDRShyZWdfXykJIF9fSTkxNV9SRUdfT1AocmVh
ZF9ub3RyYWNlLCBkZXZfcHJpdiwgKHJlZ19fKSkKPj4gICAjZGVmaW5lIEk5MTVfV1JJVEVfTk9U
UkFDRShyZWdfXywgdmFsX18pIF9fSTkxNV9SRUdfT1Aod3JpdGVfbm90cmFjZSwgZGV2X3ByaXYs
IChyZWdfXyksICh2YWxfXykpCj4+ICAgCj4+IC0vKiBCZSB2ZXJ5IGNhcmVmdWwgd2l0aCByZWFk
L3dyaXRlIDY0LWJpdCB2YWx1ZXMuIE9uIDMyLWJpdCBtYWNoaW5lcywgdGhleQo+PiAtICogd2ls
bCBiZSBpbXBsZW1lbnRlZCB1c2luZyAyIDMyLWJpdCB3cml0ZXMgaW4gYW4gYXJiaXRyYXJ5IG9y
ZGVyIHdpdGgKPj4gLSAqIGFuIGFyYml0cmFyeSBkZWxheSBiZXR3ZWVuIHRoZW0uIFRoaXMgY2Fu
IGNhdXNlIHRoZSBoYXJkd2FyZSB0bwo+PiAtICogYWN0IHVwb24gdGhlIGludGVybWVkaWF0ZSB2
YWx1ZSwgcG9zc2libHkgbGVhZGluZyB0byBjb3JydXB0aW9uIGFuZAo+PiAtICogbWFjaGluZSBk
ZWF0aC4gRm9yIHRoaXMgcmVhc29uIHdlIGRvIG5vdCBzdXBwb3J0IEk5MTVfV1JJVEU2NCwgb3IK
Pj4gLSAqIGRldl9wcml2LT51bmNvcmUuZnVuY3MubW1pb193cml0ZXEuCj4+IC0gKgo+PiAtICog
V2hlbiByZWFkaW5nIGEgNjQtYml0IHZhbHVlIGFzIHR3byAzMi1iaXQgdmFsdWVzLCB0aGUgZGVs
YXkgbWF5IGNhdXNlCj4+IC0gKiB0aGUgdHdvIHJlYWRzIHRvIG1pc21hdGNoLCBlLmcuIGEgdGlt
ZXN0YW1wIG92ZXJmbG93aW5nLiBBbHNvIG5vdGUgdGhhdAo+PiAtICogb2NjYXNpb25hbGx5IGEg
NjQtYml0IHJlZ2lzdGVyIGRvZXMgbm90IGFjdHVhbHkgc3VwcG9ydCBhIGZ1bGwgcmVhZHEKPj4g
LSAqIGFuZCBtdXN0IGJlIHJlYWQgdXNpbmcgdHdvIDMyLWJpdCByZWFkcy4KPj4gLSAqCj4+IC0g
KiBZb3UgaGF2ZSBiZWVuIHdhcm5lZC4KPiAKPiBXZSBhcmUgbm8gbG9uZ2VyIHdhcm5lZD8KCkNs
dWUgaXMgaW4gdGhlIHdvcmQgZHVwbGljYXRlZCBpbiB0aGUgY29tbWl0IG1lc3NhZ2UuIDspIFRo
ZSBleGFjdCBzYW1lIApjb21tZW50IGV4aXN0cyBvdmVyIGluIGludGVsX3VuY29yZS5oIGFib3Zl
IDY0LWJpdCBhY2Nlc3NvcnMgYW5kIAppbnRlbF91bmNvcmVfcmVhZF8yeDMyLgoKUmVnYXJkcywK
ClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
