Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F21E802F1
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Aug 2019 00:46:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A82776E0A2;
	Fri,  2 Aug 2019 22:46:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 974D16E0A2
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Aug 2019 22:46:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Aug 2019 15:46:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,339,1559545200"; d="scan'208";a="257116398"
Received: from jssummer-xeon.ra.intel.com ([10.23.184.90])
 by orsmga001.jf.intel.com with ESMTP; 02 Aug 2019 15:46:49 -0700
Message-ID: <1564786062.4037.2.camel@intel.com>
From: Stuart Summers <stuart.summers@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
Date: Fri, 02 Aug 2019 15:47:42 -0700
In-Reply-To: <156478108903.6598.3286826396951998945@skylake-alporthouse-com>
References: <20190802205134.303-1-stuart.summers@intel.com>
 <20190802205134.303-2-stuart.summers@intel.com>
 <156478108903.6598.3286826396951998945@skylake-alporthouse-com>
X-Mailer: Evolution 3.22.6 (3.22.6-14.el7) 
Mime-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/10] drm/i915: Use variable for debugfs
 device status
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

T24gRnJpLCAyMDE5LTA4LTAyIGF0IDIyOjI0ICswMTAwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4g
UXVvdGluZyBTdHVhcnQgU3VtbWVycyAoMjAxOS0wOC0wMiAyMTo1MToyNSkKPiA+IFVzZSBhIGxv
Y2FsIHZhcmlhYmxlIHRvIGZpbmQgU1NFVSBydW50aW1lIGluZm9ybWF0aW9uCj4gPiBpbiB2YXJp
b3VzIGRlYnVnZnMgZnVuY3Rpb25zLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBTdHVhcnQgU3Vt
bWVycyA8c3R1YXJ0LnN1bW1lcnNAaW50ZWwuY29tPgo+ID4gLS0tCj4gPiBAQCAtMzk2OSwxMCAr
Mzk2OSwxMCBAQCBzdGF0aWMgdm9pZAo+ID4gYnJvYWR3ZWxsX3NzZXVfZGV2aWNlX3N0YXR1cyhz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gPiDCoAo+ID4gwqDCoMKgwqDCoMKg
wqDCoGlmIChzc2V1LT5zbGljZV9tYXNrKSB7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoHNzZXUtPmV1X3Blcl9zdWJzbGljZSA9Cj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoFJVTlRJTUVfSU5GTyhkZXZfcHJpdiktCj4gPiA+c3Nl
dS5ldV9wZXJfc3Vic2xpY2U7Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoGluZm8tPnNzZXUuZXVfcGVyX3N1YnNsaWNlOwo+ID4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBmb3IgKHMgPSAwOyBzIDwgZmxzKHNzZXUtPnNsaWNlX21hc2sp
OyBzKyspIHsKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoHNzZXUtPnN1YnNsaWNlX21hc2tbc10gPQo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgUlVOVElNRV9JTkZPKGRldl9w
cml2KS0KPiA+ID5zc2V1LnN1YnNsaWNlX21hc2tbc107Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbmZvLT5zc2V1LnN1
YnNsaWNlX21hc2tbc107Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoH0KPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3NldS0+ZXVfdG90YWwgPSBzc2V1LT5l
dV9wZXJfc3Vic2xpY2UgKgo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfc3NldV9zdWJzbGljZV90b3RhbChz
c2V1KTsKPiA+IEBAIC0zOTgwLDcgKzM5ODAsNyBAQCBzdGF0aWMgdm9pZAo+ID4gYnJvYWR3ZWxs
X3NzZXVfZGV2aWNlX3N0YXR1cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4g
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qIHN1YnRyYWN0IGZ1c2VkIG9mZiBF
VShzKSBmcm9tIGVuYWJsZWQgc2xpY2UocykKPiA+ICovCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoGZvciAocyA9IDA7IHMgPCBmbHMoc3NldS0+c2xpY2VfbWFzayk7IHMrKykg
ewo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdTgg
c3Vic2xpY2VfN2V1ID0KPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoFJVTlRJTUVfSU5GTyhkZXZfcHJpdiktCj4gPiA+c3Nl
dS5zdWJzbGljZV83ZXVbc107Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbmZvLT5zc2V1LnN1YnNsaWNlXzdldVtzXTsK
PiAKPiBUaGVzZSAzIGNvbmRlbnNlIGJhY2sgdG8gc2luZ2xlIGxpbmVzLgoKVGhhbmtzIGZvciB0
aGUgcmV2aWV3ISBJJ2xsIHJlZHVjZSB0aGVzZSB0byBzaW5nbGUgbGluZXMgaW4gdGhlIG5leHQK
cmV2aXNpb24uCgpUaGFua3MsClN0dWFydAoKPiAKPiBSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLUNocmlzCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
