Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B672DD3B00
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 10:25:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1603288161;
	Fri, 11 Oct 2019 08:25:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 341706E0D1;
 Fri, 11 Oct 2019 08:25:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Oct 2019 01:25:17 -0700
X-IronPort-AV: E=Sophos;i="5.67,283,1566889200"; d="scan'208";a="197515292"
Received: from hemavenk-mobl1.ger.corp.intel.com (HELO [10.251.81.25])
 ([10.251.81.25])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 11 Oct 2019 01:25:16 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191011080642.23061-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <433b70c0-12f9-27fa-9c3d-447247b3d563@linux.intel.com>
Date: Fri, 11 Oct 2019 09:25:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191011080642.23061-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915: Use O_NONBLOCK for faster
 ringsize probing
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDExLzEwLzIwMTkgMDk6MDYsIENocmlzIFdpbHNvbiB3cm90ZToKPiBXaGVuIHRoZSBrZXJu
ZWwgc3VwcG9ydHMgT19OT05CTE9DSyByZXBvcnRpbmcgb2YgYSBmdWxsIGV4ZWNidWYgcXVldWUs
Cj4gdGFrZSBhZHZhbnRhZ2Ugb2YgdGhhdCB0byBpbW1lZGlhdGVseSByZXBvcnQgd2hlbiB0aGUg
b3V0cHV0IHdvdWxkIGJsb2NrCj4gZHVlIHRvIHRoZSByaW5nIGJlaW5nIGZ1bGwuCj4gCj4gU2ln
bmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0t
Cj4gICBsaWIvaTkxNS9nZW1fcmluZy5jIHwgMTMgKysrKysrKysrKy0tLQo+ICAgMSBmaWxlIGNo
YW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L2xpYi9pOTE1L2dlbV9yaW5nLmMgYi9saWIvaTkxNS9nZW1fcmluZy5jCj4gaW5kZXggOWYwOTll
ZGZmLi41Y2EyYTcyOGIgMTAwNjQ0Cj4gLS0tIGEvbGliL2k5MTUvZ2VtX3JpbmcuYwo+ICsrKyBi
L2xpYi9pOTE1L2dlbV9yaW5nLmMKPiBAQCAtMjEsNiArMjEsNyBAQAo+ICAgICogSU4gVEhFIFNP
RlRXQVJFLgo+ICAgICovCj4gICAKPiArI2luY2x1ZGUgPGZjbnRsLmg+Cj4gICAjaW5jbHVkZSA8
c2lnbmFsLmg+Cj4gICAjaW5jbHVkZSA8c3lzL2lvY3RsLmg+Cj4gICAjaW5jbHVkZSA8c3lzL3Rp
bWUuaD4KPiBAQCAtODksMTEgKzkwLDE2IEBAIF9fZ2VtX21lYXN1cmVfcmluZ19pbmZsaWdodChp
bnQgZmQsIHVuc2lnbmVkIGludCBlbmdpbmUsIGVudW0gbWVhc3VyZV9yaW5nX2ZsYWdzCj4gICAK
PiAgIAljb3VudCA9IDA7Cj4gICAJZG8gewo+IC0JCWlmIChfX2V4ZWNidWYoZmQsICZleGVjYnVm
KSA9PSAwKSB7Cj4gKwkJaW50IGVyciA9IF9fZXhlY2J1ZihmZCwgJmV4ZWNidWYpOwo+ICsKPiAr
CQlpZiAoZXJyID09IDApIHsKPiAgIAkJCWNvdW50Kys7Cj4gICAJCQljb250aW51ZTsKPiAgIAkJ
fQo+ICAgCj4gKwkJaWYgKGVyciA9PSAtRVdPVUxEQkxPQ0spCj4gKwkJCWJyZWFrOwo+ICsKPiAg
IAkJaWYgKGxhc3RbMV0gPT0gY291bnQpCj4gICAJCQlicmVhazsKPiAgIAo+IEBAIC0xMDIsOCAr
MTA4LDYgQEAgX19nZW1fbWVhc3VyZV9yaW5nX2luZmxpZ2h0KGludCBmZCwgdW5zaWduZWQgaW50
IGVuZ2luZSwgZW51bSBtZWFzdXJlX3JpbmdfZmxhZ3MKPiAgIAkJbGFzdFsxXSA9IGxhc3RbMF07
Cj4gICAJCWxhc3RbMF0gPSBjb3VudDsKPiAgIAl9IHdoaWxlICgxKTsKPiAtCj4gLQlpZ3RfYXNz
ZXJ0X2VxKF9fZXhlY2J1ZihmZCwgJmV4ZWNidWYpLCAtRUlOVFIpOwo+ICAgCWlndF9hc3NlcnQo
Y291bnQgPiAyKTsKPiAgIAo+ICAgCW1lbXNldCgmaXR2LCAwLCBzaXplb2YoaXR2KSk7Cj4gQEAg
LTE0NSw2ICsxNDksOSBAQCBnZW1fbWVhc3VyZV9yaW5nX2luZmxpZ2h0KGludCBmZCwgdW5zaWdu
ZWQgaW50IGVuZ2luZSwgZW51bSBtZWFzdXJlX3JpbmdfZmxhZ3MgZgo+ICAgCj4gICAJZmQgPSBn
ZW1fcmVvcGVuX2RyaXZlcihmZCk7Cj4gICAKPiArCS8qIFdoZW4gYXZhaWxhYmxlLCBkaXNhYmxl
IGV4ZWNidWYgdGhyb3R0bGluZyAqLwo+ICsJZmNudGwoZmQsIEZfU0VURkQsIGZjbnRsKGZkLCBG
X0dFVEZEKSB8IE9fTk9OQkxPQ0spOwo+ICsKPiAgIAlpZiAoZW5naW5lID09IEFMTF9FTkdJTkVT
KSB7Cj4gICAJCWZvcl9lYWNoX3BoeXNpY2FsX2VuZ2luZShmZCwgZW5naW5lKSB7Cj4gICAJCQl1
bnNpZ25lZCBpbnQgY291bnQgPQo+IAoKUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0
a28udXJzdWxpbkBpbnRlbC5jb20+CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
