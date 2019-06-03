Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E20C3332A
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2019 17:10:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5404D891CD;
	Mon,  3 Jun 2019 15:10:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88EA4891CD
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2019 15:10:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jun 2019 08:10:20 -0700
X-ExtLoop1: 1
Received: from wuerth-mobl3.ger.corp.intel.com (HELO [10.252.33.134])
 ([10.252.33.134])
 by orsmga007.jf.intel.com with ESMTP; 03 Jun 2019 08:10:19 -0700
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190603142500.25680-1-ville.syrjala@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <4ee3ffa8-4048-d92d-4493-ea5ed1dfb23e@linux.intel.com>
Date: Mon, 3 Jun 2019 17:10:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190603142500.25680-1-ville.syrjala@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix per-pixel alpha with CCS
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMDMtMDYtMjAxOSBvbSAxNjoyNSBzY2hyZWVmIFZpbGxlIFN5cmphbGE6Cj4gRnJvbTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPgo+IFdlIGZvcmdv
dCB0byBzZXQgLmhhc19hbHBoYT10cnVlIGZvciB0aGUgQStDQ1MgZm9ybWF0cyB3aGVuIHRoZSBj
b2RlCj4gc3RhcnRlZCB0byBjb25zdWx0IC5oYXNfYWxwaGEuIFRoaXMgbWFuaWZlc3RzIGFzIEEr
Q0NTIGJlaW5nIHRyZWF0ZWQKPiBhcyBYK0NDUyB3aGljaCBtZWFucyBubyBwZXItcGl4ZWwgYWxw
aGEgYmxlbmRpbmcuIEZpeCB0aGUgZm9ybWF0Cj4gbGlzdCBhcHByb3ByaWF0ZWx5Lgo+Cj4gQ2M6
IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPiBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4u
bGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiBDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJv
cGVyQGludGVsLmNvbT4KPiBDYzogSGVpbnJpY2ggRmluayA8aGVpbnJpY2guZmlua0BkYXFyaS5j
b20+Cj4gUmVwb3J0ZWQtYnk6IEhlaW5yaWNoIEZpbmsgPGhlaW5yaWNoLmZpbmtAZGFxcmkuY29t
Pgo+IEZpeGVzOiBiMjA4MTUyNTU2OTMgKCJkcm0vaTkxNTogQWRkIHBsYW5lIGFscGhhIGJsZW5k
aW5nIHN1cHBvcnQsIHYyLiIpCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZGlzcGxheS5jIHwgMTIgKysrKysrKystLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGlu
c2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlz
cGxheS5jCj4gaW5kZXggYzNlMmIxMTc4ZDU1Li42N2Q3OTZmNDc0N2UgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jCj4gQEAgLTI0NjMsMTAgKzI0NjMsMTQgQEAgc3RhdGlj
IHVuc2lnbmVkIGludCBpbnRlbF9mYl9tb2RpZmllcl90b190aWxpbmcodTY0IGZiX21vZGlmaWVy
KQo+ICAgKiBtYWluIHN1cmZhY2UuCj4gICAqLwo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9m
b3JtYXRfaW5mbyBjY3NfZm9ybWF0c1tdID0gewo+IC0JeyAuZm9ybWF0ID0gRFJNX0ZPUk1BVF9Y
UkdCODg4OCwgLmRlcHRoID0gMjQsIC5udW1fcGxhbmVzID0gMiwgLmNwcCA9IHsgNCwgMSwgfSwg
LmhzdWIgPSA4LCAudnN1YiA9IDE2LCB9LAo+IC0JeyAuZm9ybWF0ID0gRFJNX0ZPUk1BVF9YQkdS
ODg4OCwgLmRlcHRoID0gMjQsIC5udW1fcGxhbmVzID0gMiwgLmNwcCA9IHsgNCwgMSwgfSwgLmhz
dWIgPSA4LCAudnN1YiA9IDE2LCB9LAo+IC0JeyAuZm9ybWF0ID0gRFJNX0ZPUk1BVF9BUkdCODg4
OCwgLmRlcHRoID0gMzIsIC5udW1fcGxhbmVzID0gMiwgLmNwcCA9IHsgNCwgMSwgfSwgLmhzdWIg
PSA4LCAudnN1YiA9IDE2LCB9LAo+IC0JeyAuZm9ybWF0ID0gRFJNX0ZPUk1BVF9BQkdSODg4OCwg
LmRlcHRoID0gMzIsIC5udW1fcGxhbmVzID0gMiwgLmNwcCA9IHsgNCwgMSwgfSwgLmhzdWIgPSA4
LCAudnN1YiA9IDE2LCB9LAo+ICsJeyAuZm9ybWF0ID0gRFJNX0ZPUk1BVF9YUkdCODg4OCwgLmRl
cHRoID0gMjQsIC5udW1fcGxhbmVzID0gMiwKPiArCSAgLmNwcCA9IHsgNCwgMSwgfSwgLmhzdWIg
PSA4LCAudnN1YiA9IDE2LCB9LAo+ICsJeyAuZm9ybWF0ID0gRFJNX0ZPUk1BVF9YQkdSODg4OCwg
LmRlcHRoID0gMjQsIC5udW1fcGxhbmVzID0gMiwKPiArCSAgLmNwcCA9IHsgNCwgMSwgfSwgLmhz
dWIgPSA4LCAudnN1YiA9IDE2LCB9LAo+ICsJeyAuZm9ybWF0ID0gRFJNX0ZPUk1BVF9BUkdCODg4
OCwgLmRlcHRoID0gMzIsIC5udW1fcGxhbmVzID0gMiwKPiArCSAgLmNwcCA9IHsgNCwgMSwgfSwg
LmhzdWIgPSA4LCAudnN1YiA9IDE2LCAuaGFzX2FscGhhID0gdHJ1ZSwgfSwKPiArCXsgLmZvcm1h
dCA9IERSTV9GT1JNQVRfQUJHUjg4ODgsIC5kZXB0aCA9IDMyLCAubnVtX3BsYW5lcyA9IDIsCj4g
KwkgIC5jcHAgPSB7IDQsIDEsIH0sIC5oc3ViID0gOCwgLnZzdWIgPSAxNiwgLmhhc19hbHBoYSA9
IHRydWUsIH0sCj4gIH07Cj4gIAo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9mb3JtYXRfaW5m
byAqCgpNYWtlcyBzZW5zZS4uCgpSZXZpZXdlZC1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0
ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
