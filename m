Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26DA49B875
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Aug 2019 00:17:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CDFB6E05D;
	Fri, 23 Aug 2019 22:17:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE8C76E05D
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 22:17:33 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 15:17:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,422,1559545200"; d="scan'208";a="263310511"
Received: from mdroper-desk.fm.intel.com (HELO
 mdroper-desk.amr.corp.intel.com) ([10.105.128.12])
 by orsmga001.jf.intel.com with ESMTP; 23 Aug 2019 15:17:32 -0700
Date: Fri, 23 Aug 2019 15:17:32 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20190823221732.GE13677@mdroper-desk.amr.corp.intel.com>
References: <20190822163133.27587-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190822163133.27587-1-matthew.d.roper@intel.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add 324mhz and 326.4mhz cdclks
 for gen11+
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBBdWcgMjIsIDIwMTkgYXQgMDk6MzE6MzNBTSAtMDcwMCwgTWF0dCBSb3BlciB3cm90
ZToKPiBUaGUgYnNwZWMgd2FzIHJlY2VudGx5IHVwZGF0ZWQgd2l0aCB0aGVzZSBuZXcgY2RjbGsg
dmFsdWVzIGZvciBJQ0wsIEVITCwKPiBhbmQgVEdMLgo+IAo+IEJzcGVjOiAyMDU5OAo+IEJzcGVj
OiA0OTIwMQo+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNv
bT4KPiBDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4gU2ln
bmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KCkxvb2tp
bmcgbW9yZSBjbG9zZWx5LCBJIHRoaW5rIHdlIGFjdHVhbGx5IG5lZWQgYSBiaXQgbW9yZSB0aGFu
IGp1c3QgdGhpcwpwYXRjaC4gIFRoZXNlIG5ldyB2YWx1ZXMgYXJlIHRoZSBvbmx5IG9uZXMgdGhh
dCB1c2UgYSAvMiBDRDJYIGRpdmlkZXIKcmF0aGVyIHRoYW4gYSAvMSBkaXZpZGVyLiAgU28gd2Ug
YWxzbyBuZWVkIHRvIHByb2dyYW0gdGhlIGRpdmlkZXIKcHJvcGVybHkgYXMgd2VsbCAoY3VycmVu
dGx5IHRoZSBJQ0wgY29kZSBhc3N1bWVzIGl0IHdpbGwgYWx3YXlzIGJlIC8xKS4KCgpNYXR0Cgo+
IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgfCA4ICsr
KysrKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2Rj
bGsuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwo+IGluZGV4
IGQwYmM0MmU1MDM5Yy4uMGJlMTM3YTkxMjlhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwo+IEBAIC0xNzQ4LDggKzE3NDgsMTAgQEAgc3RhdGljIHZv
aWQgY25sX3Nhbml0aXplX2NkY2xrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikK
PiAgCj4gIHN0YXRpYyBpbnQgaWNsX2NhbGNfY2RjbGsoaW50IG1pbl9jZGNsaywgdW5zaWduZWQg
aW50IHJlZikKPiAgewo+IC0Jc3RhdGljIGNvbnN0IGludCByYW5nZXNfMjRbXSA9IHsgMTgwMDAw
LCAxOTIwMDAsIDMxMjAwMCwgNTUyMDAwLCA2NDgwMDAgfTsKPiAtCXN0YXRpYyBjb25zdCBpbnQg
cmFuZ2VzXzE5XzM4W10gPSB7IDE3MjgwMCwgMTkyMDAwLCAzMDcyMDAsIDU1NjgwMCwgNjUyODAw
IH07Cj4gKwlzdGF0aWMgY29uc3QgaW50IHJhbmdlc18yNFtdID0geyAxODAwMDAsIDE5MjAwMCwg
MzEyMDAwLCAzMjQwMDAsCj4gKwkJCQkJIDU1MjAwMCwgNjQ4MDAwIH07Cj4gKwlzdGF0aWMgY29u
c3QgaW50IHJhbmdlc18xOV8zOFtdID0geyAxNzI4MDAsIDE5MjAwMCwgMzA3MjAwLCAzMjY0MDAs
Cj4gKwkJCQkJICAgIDU1NjgwMCwgNjUyODAwIH07Cj4gIAljb25zdCBpbnQgKnJhbmdlczsKPiAg
CWludCBsZW4sIGk7Cj4gIAo+IEBAIC0xNzkwLDYgKzE3OTIsNyBAQCBzdGF0aWMgaW50IGljbF9j
YWxjX2NkY2xrX3BsbF92Y28oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBpbnQg
Y2RjbGspCj4gIAkJLyogZmFsbCB0aHJvdWdoICovCj4gIAljYXNlIDE3MjgwMDoKPiAgCWNhc2Ug
MzA3MjAwOgo+ICsJY2FzZSAzMjY0MDA6Cj4gIAljYXNlIDU1NjgwMDoKPiAgCWNhc2UgNjUyODAw
Ogo+ICAJCVdBUk5fT04oZGV2X3ByaXYtPmNkY2xrLmh3LnJlZiAhPSAxOTIwMCAmJgo+IEBAIC0x
Nzk3LDYgKzE4MDAsNyBAQCBzdGF0aWMgaW50IGljbF9jYWxjX2NkY2xrX3BsbF92Y28oc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBpbnQgY2RjbGspCj4gIAkJYnJlYWs7Cj4gIAlj
YXNlIDE4MDAwMDoKPiAgCWNhc2UgMzEyMDAwOgo+ICsJY2FzZSAzMjQwMDA6Cj4gIAljYXNlIDU1
MjAwMDoKPiAgCWNhc2UgNjQ4MDAwOgo+ICAJCVdBUk5fT04oZGV2X3ByaXYtPmNkY2xrLmh3LnJl
ZiAhPSAyNDAwMCk7Cj4gLS0gCj4gMi4yMC4xCj4gCgotLSAKTWF0dCBSb3BlcgpHcmFwaGljcyBT
b2Z0d2FyZSBFbmdpbmVlcgpWVFQtT1NHQyBQbGF0Zm9ybSBFbmFibGVtZW50CkludGVsIENvcnBv
cmF0aW9uCig5MTYpIDM1Ni0yNzk1Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
