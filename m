Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5749D970BB
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 06:07:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23E7B896FA;
	Wed, 21 Aug 2019 04:07:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A525C896FA
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 04:07:17 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 21:07:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,410,1559545200"; d="scan'208";a="172653448"
Received: from genxfsim-desktop.iind.intel.com (HELO intel.com)
 ([10.223.74.120])
 by orsmga008.jf.intel.com with ESMTP; 20 Aug 2019 21:07:14 -0700
Date: Wed, 21 Aug 2019 09:33:56 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: =?utf-8?B?Sm9zw6k=?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20190821040355.GA30506@intel.com>
References: <20190820223325.27490-1-jose.souza@intel.com>
 <20190820223325.27490-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190820223325.27490-2-jose.souza@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v8 2/3] drm/i915: Add transcoder restriction
 to PSR2
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS0wOC0yMCBhdCAxNTozMzoyNCAtMDcwMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3
cm90ZToKPiBBY2NvcmRpbmcgdG8gUFNSMl9DVEwgZGVmaW5pdGlvbiBpbiBCU3BlYyB0aGVyZSBp
cyBvbmx5IG9uZSBpbnN0YW5jZQo+IG9mIFBTUjJfQ1RMLiBQbGF0Zm9ybXMgZ2VuIDwgMTIgd2l0
aCBFRFAgdHJhbnNjb2RlciBvbmx5IHN1cHBvcnQgUFNSMgo+IG9uIFRSQU5TQ09ERVJfRURQIHdo
aWxlIG9uIFRHTCBQU1IyIGlzIG9ubHkgc3VwcG9ydGVkIGJ5Cj4gVFJBTlNDT0RFUl9BLgo+IAo+
IFNpbmNlIEJEVyBQU1IgaXMgYWxsb3dlZCBvbiBhbnkgcG9ydCwgYnV0IHdlIG5lZWQgdG8gcmVz
dHJpY3QgYnkKPiB0cmFuc2NvZGVyLgo+IAo+IHY4OiBSZW5hbWVkIF9wc3IyX3N1cHBvcnRlZF9p
bl90cmFucygpIHRvIHBzcjJfc3VwcG9ydGVkKCkgKEx1Y2FzKQo+IAo+IEJTcGVjOiA3NzEzCj4g
QlNwZWM6IDIwNTg0Cj4gQ2M6IERoaW5ha2FyYW4gUGFuZGl5YW4gPGRoaW5ha2FyYW4ucGFuZGl5
YW5AaW50ZWwuY29tPgo+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+
Cj4gUmV2aWV3ZWQtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29t
Pgo+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50
ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlA
aW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jIHwgMTUgKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25z
KCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gaW5kZXgg
NzcyMzJmNmJjYTE3Li4xZGFmZTMyNmVkZGEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMKPiBAQCAtNTM0LDYgKzUzNCwxNSBAQCBzdGF0aWMgdm9pZCBoc3df
YWN0aXZhdGVfcHNyMihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQo+ICAJSTkxNV9XUklURShF
RFBfUFNSMl9DVEwoZGV2X3ByaXYtPnBzci50cmFuc2NvZGVyKSwgdmFsKTsKPiAgfQo+ICAKPiAr
c3RhdGljIGJvb2wKPiArcHNyMl9zdXBwb3J0ZWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LCBlbnVtIHRyYW5zY29kZXIgdHJhbnMpCj4gK3sKPiArCWlmIChJTlRFTF9HRU4oZGV2
X3ByaXYpID49IDEyKQo+ICsJCXJldHVybiB0cmFucyA9PSBUUkFOU0NPREVSX0E7Cj4gKwllbHNl
Cj4gKwkJcmV0dXJuIHRyYW5zID09IFRSQU5TQ09ERVJfRURQOwo+ICt9Cj4gKwo+ICBzdGF0aWMg
Ym9vbCBpbnRlbF9wc3IyX2NvbmZpZ192YWxpZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAo+
ICAJCQkJICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+ICB7Cj4gQEAg
LTU0NSw2ICs1NTQsMTIgQEAgc3RhdGljIGJvb2wgaW50ZWxfcHNyMl9jb25maWdfdmFsaWQoc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCwKPiAgCWlmICghZGV2X3ByaXYtPnBzci5zaW5rX3BzcjJf
c3VwcG9ydCkKPiAgCQlyZXR1cm4gZmFsc2U7Cj4gIAo+ICsJaWYgKCFwc3IyX3N1cHBvcnRlZChk
ZXZfcHJpdiwgY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXIpKSB7Cj4gKwkJRFJNX0RFQlVHX0tN
UygiUFNSMiBub3Qgc3VwcG9ydGVkIGluIHRyYW5zY29kZXIgJXNcbiIsCj4gKwkJCSAgICAgIHRy
YW5zY29kZXJfbmFtZShjcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlcikpOwo+ICsJCXJldHVybiBm
YWxzZTsKPiArCX0KPiArCkxvb2tzIGdvb2QgdG8gbWUuClJldmlld2VkLWJ5OiBBbnNodW1hbiBH
dXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPgo+ICAJLyoKPiAgCSAqIERTQyBhbmQgUFNS
MiBjYW5ub3QgYmUgZW5hYmxlZCBzaW11bHRhbmVvdXNseS4gSWYgYSByZXF1ZXN0ZWQKPiAgCSAq
IHJlc29sdXRpb24gcmVxdWlyZXMgRFNDIHRvIGJlIGVuYWJsZWQsIHByaW9yaXR5IGlzIGdpdmVu
IHRvIERTQwo+IC0tIAo+IDIuMjIuMQo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
