Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A6E128B9
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 09:27:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B57FF897F5;
	Fri,  3 May 2019 07:27:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59552897F5
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2019 07:27:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 May 2019 00:27:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,424,1549958400"; d="scan'208";a="170196875"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 03 May 2019 00:27:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Paulo Zanoni <paulo.r.zanoni@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <4619c4b85379a056d4d7876b64a69396508ad21f.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190502082953.31769-1-jani.nikula@intel.com>
 <4619c4b85379a056d4d7876b64a69396508ad21f.camel@intel.com>
Date: Fri, 03 May 2019 10:30:04 +0300
Message-ID: <87a7g4ngg3.fsf@intel.com>
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

T24gVGh1LCAwMiBNYXkgMjAxOSwgUGF1bG8gWmFub25pIDxwYXVsby5yLnphbm9uaUBpbnRlbC5j
b20+IHdyb3RlOgo+IEVtIHF1aSwgMjAxOS0wNS0wMiDDoHMgMTE6MjkgKzAzMDAsIEphbmkgTmlr
dWxhIGVzY3JldmV1Ogo+PiBVc2luZyBhcml0aG1ldGljIG9wZXJhdG9ycyB3aXRoIGJvb2xlYW5z
IGlzIGNvbmZ1c2luZy4gU3dpdGNoIHRvIGxvZ2ljYWwKPj4gb3BlcmF0b3JzLgo+PiAKPj4gQ2M6
IFBhdWxvIFphbm9uaSA8cGF1bG8uci56YW5vbmlAaW50ZWwuY29tPgo+PiBTaWduZWQtb2ZmLWJ5
OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+PiAtLS0KPj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2RwLmMgfCAyICstCj4+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDEgZGVsZXRpb24oLSkKPj4gCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYwo+PiBp
bmRleCA0ZTdiOGQuLmVmNDk5MmYgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2RwLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYwo+PiBA
QCAtNTA5NCw3ICs1MDk0LDcgQEAgc3RhdGljIHZvaWQgaWNsX3VwZGF0ZV90Y19wb3J0X3R5cGUo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+PiAgCWVudW0gcG9ydCBwb3J0ID0g
aW50ZWxfZGlnX3BvcnQtPmJhc2UucG9ydDsKPj4gIAllbnVtIHRjX3BvcnRfdHlwZSBvbGRfdHlw
ZSA9IGludGVsX2RpZ19wb3J0LT50Y190eXBlOwo+PiAgCj4+IC0JV0FSTl9PTihpc19sZWdhY3kg
KyBpc190eXBlYyArIGlzX3RidCAhPSAxKTsKPj4gKwlXQVJOX09OKGlzX2xlZ2FjeSB8fCBpc190
eXBlYyB8fCAhaXNfdGJ0KTsKPgo+IFRoaXMgY2hhbmdlcyB0aGUgbWVhbmluZy4gWW91J3JlIGlu
dGVycHJldGluZyB0aGlzIGFzOgo+Cj4gICAgIFdBUk5fT04oaXNfbGVnYWN5ICsgaXNfdHlwZWMg
KyAoaXNfdGJ0ICE9IDEpKQo+Cj4gd2hpbGUgdGhlIG9yaWdpbmFsIGludGVudCBvZiB0aGUgY29k
ZSBpcyB0byBiZToKPgo+ICAgICBXQVJOX09OKChpc19sZWdhY3kgKyBpc190eXBlYyArIGlzX3Ri
dCkgIT0gMSkKCipibHVzaCoKCj4gYW5kIGEgcXVpY2sgY2hlY2sgb24gb3BlcmF0b3IgcHJlY2Vk
ZW5jZSB0YWJsZXMgbGVhZHMgbWUgdG8gdGhpbmsgdGhlCj4gb3JpZ2luYWwgY29kZSBpcyBpbmRl
ZWQgY29ycmVjdC4KPgo+IFdlJ3JlIGFzc2VydGluZyBleGFjdGx5IG9uZSBvZiB0aGVzZSBib29s
cyBlbmFibGVkLCBzbyB0aGUgbG9naWMKPiBvcGVyYXRpb24gd291bGQgYmUgc29tZXRoaW5nIGxp
a2U6Cj4KPiBXQVJOX09OKChpc19sZWdhY3kgJiYgKGlzX3R5cGVjIHx8IGlzX3RidCkpIHx8Cj4g
ICAgICAgICAoaXNfdHlwZWMgJiYgKGlzX2xlZ2FjeSB8fCBpc190YnQpKSB8fAo+ICAJKGlzX3Ri
dCAmJiAoaXNfbGVnYWN5IHx8IGlzX3R5cGVjKSkgfHwKPiAJKCFpc19sZWdhY3kgJiYgIWlzX3R5
cGVjICYmICFpc190YnQpKQo+Cj4gSSB3b3VsZCBzdGlsbCBwcmVmZXIgdGhlIGFyaXRobWV0aWMg
b3BlcmF0aW9uLgoKQWdyZWVkLgoKSSdsbCBnbyBoaWRlIHVuZGVyIGEgcm9jay4KCgpCUiwKSmFu
aS4KCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
