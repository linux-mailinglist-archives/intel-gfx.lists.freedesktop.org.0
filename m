Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF7B311D35
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 17:30:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06733892B0;
	Thu,  2 May 2019 15:30:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8704E892B0
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 15:30:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 08:30:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,422,1549958400"; d="scan'208";a="296405786"
Received: from przanoni-mobl.amr.corp.intel.com ([10.251.17.152])
 by orsmga004.jf.intel.com with ESMTP; 02 May 2019 08:30:43 -0700
Message-ID: <4619c4b85379a056d4d7876b64a69396508ad21f.camel@intel.com>
From: Paulo Zanoni <paulo.r.zanoni@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Date: Thu, 02 May 2019 08:30:43 -0700
In-Reply-To: <20190502082953.31769-1-jani.nikula@intel.com>
References: <20190502082953.31769-1-jani.nikula@intel.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: use logical operators with
 boolean type
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

RW0gcXVpLCAyMDE5LTA1LTAyIMOgcyAxMToyOSArMDMwMCwgSmFuaSBOaWt1bGEgZXNjcmV2ZXU6
Cj4gVXNpbmcgYXJpdGhtZXRpYyBvcGVyYXRvcnMgd2l0aCBib29sZWFucyBpcyBjb25mdXNpbmcu
IFN3aXRjaCB0byBsb2dpY2FsCj4gb3BlcmF0b3JzLgo+IAo+IENjOiBQYXVsbyBaYW5vbmkgPHBh
dWxvLnIuemFub25pQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFu
aS5uaWt1bGFAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
cC5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24o
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMKPiBpbmRleCA0ZTdiOGQuLmVmNDk5MmYgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYwo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMKPiBAQCAtNTA5NCw3ICs1MDk0LDcgQEAgc3RhdGlj
IHZvaWQgaWNsX3VwZGF0ZV90Y19wb3J0X3R5cGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LAo+ICAJZW51bSBwb3J0IHBvcnQgPSBpbnRlbF9kaWdfcG9ydC0+YmFzZS5wb3J0Owo+
ICAJZW51bSB0Y19wb3J0X3R5cGUgb2xkX3R5cGUgPSBpbnRlbF9kaWdfcG9ydC0+dGNfdHlwZTsK
PiAgCj4gLQlXQVJOX09OKGlzX2xlZ2FjeSArIGlzX3R5cGVjICsgaXNfdGJ0ICE9IDEpOwo+ICsJ
V0FSTl9PTihpc19sZWdhY3kgfHwgaXNfdHlwZWMgfHwgIWlzX3RidCk7CgpUaGlzIGNoYW5nZXMg
dGhlIG1lYW5pbmcuIFlvdSdyZSBpbnRlcnByZXRpbmcgdGhpcyBhczoKCiAgICBXQVJOX09OKGlz
X2xlZ2FjeSArIGlzX3R5cGVjICsgKGlzX3RidCAhPSAxKSkKCndoaWxlIHRoZSBvcmlnaW5hbCBp
bnRlbnQgb2YgdGhlIGNvZGUgaXMgdG8gYmU6CgogICAgV0FSTl9PTigoaXNfbGVnYWN5ICsgaXNf
dHlwZWMgKyBpc190YnQpICE9IDEpCgphbmQgYSBxdWljayBjaGVjayBvbiBvcGVyYXRvciBwcmVj
ZWRlbmNlIHRhYmxlcyBsZWFkcyBtZSB0byB0aGluayB0aGUKb3JpZ2luYWwgY29kZSBpcyBpbmRl
ZWQgY29ycmVjdC4KCldlJ3JlIGFzc2VydGluZyBleGFjdGx5IG9uZSBvZiB0aGVzZSBib29scyBl
bmFibGVkLCBzbyB0aGUgbG9naWMKb3BlcmF0aW9uIHdvdWxkIGJlIHNvbWV0aGluZyBsaWtlOgoK
V0FSTl9PTigoaXNfbGVnYWN5ICYmIChpc190eXBlYyB8fCBpc190YnQpKSB8fAogICAgICAgIChp
c190eXBlYyAmJiAoaXNfbGVnYWN5IHx8IGlzX3RidCkpIHx8CiAJKGlzX3RidCAmJiAoaXNfbGVn
YWN5IHx8IGlzX3R5cGVjKSkgfHwKCSghaXNfbGVnYWN5ICYmICFpc190eXBlYyAmJiAhaXNfdGJ0
KSkKCkkgd291bGQgc3RpbGwgcHJlZmVyIHRoZSBhcml0aG1ldGljIG9wZXJhdGlvbi4gICAgCgo+
ICAKPiAgCWlmIChpc19sZWdhY3kpCj4gIAkJaW50ZWxfZGlnX3BvcnQtPnRjX3R5cGUgPSBUQ19Q
T1JUX0xFR0FDWTsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
