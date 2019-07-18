Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADF86D47C
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 21:13:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 589C58968D;
	Thu, 18 Jul 2019 19:13:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA8CD8968D
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 19:13:56 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jul 2019 12:13:55 -0700
X-IronPort-AV: E=Sophos;i="5.64,279,1559545200"; d="scan'208";a="162167979"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga008-auth.jf.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Jul 2019 12:13:55 -0700
Date: Thu, 18 Jul 2019 12:14:30 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Message-ID: <20190718191430.GB30177@intel.com>
References: <20190717223451.2595-1-dhinakaran.pandiyan@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190717223451.2595-1-dhinakaran.pandiyan@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/vbt: Fix VBT parsing for the PSR
 section
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBKdWwgMTcsIDIwMTkgYXQgMDM6MzQ6NTFQTSAtMDcwMCwgRGhpbmFrYXJhbiBQYW5k
aXlhbiB3cm90ZToKPiBBIHNpbmdsZSAzMi1iaXQgUFNSMiB0cmFpbmluZyBwYXR0ZXJuIGZpZWxk
IGZvbGxvd3MgdGhlIHNpeHRlZW4gZWxlbWVudAo+IGFycmF5IG9mIFBTUiB0YWJsZSBlbnRyaWVz
IGluIHRoZSBWQlQgc3BlYy4gQnV0LCB3ZSBpbmNvcnJlY3RseSBkZWZpbmUKPiB0aGlzIFBTUjIg
ZmllbGQgZm9yIGVhY2ggb2YgdGhlIFBTUiB0YWJsZSBlbnRyaWVzLiBBcyBhIHJlc3VsdCwgdGhl
IFBTUjEKPiB0cmFpbmluZyBwYXR0ZXJuIGR1cmF0aW9uIGZvciBhbnkgcGFuZWxfdHlwZSAhPSAw
IHdpbGwgYmUgcGFyc2VkCj4gaW5jb3JyZWN0bHkuIFNlY29uZGx5LCBQU1IyIHRyYWluaW5nIHBh
dHRlcm4gZHVyYXRpb25zIGZvciBWQlRzIHdpdGggYmRiCj4gdmVyc2lvbiA+PSAyMjYgd2lsbCBh
bHNvIGJlIHdyb25nLgo+IAo+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5j
b20+Cj4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+
IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcg
I3Y1LjIKPiBGaXhlczogODhhMGQ5NjA2YWZmICgiZHJtL2k5MTUvdmJ0OiBQYXJzZSBhbmQgdXNl
IHRoZSBuZXcgZmllbGQgd2l0aCBQU1IyIFRQMi8zIHdha2V1cCB0aW1lIikKPiBCdWd6aWxsYTog
aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMDg4Cj4gQnVn
emlsbGE6IGh0dHBzOi8vYnVnemlsbGEua2VybmVsLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MjA0MTgz
Cj4gU2lnbmVkLW9mZi1ieTogRGhpbmFrYXJhbiBQYW5kaXlhbiA8ZGhpbmFrYXJhbi5wYW5kaXlh
bkBpbnRlbC5jb20+Cj4gUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+Cj4gUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEg
PGpvc2Uuc291emFAaW50ZWwuY29tPgo+IEFja2VkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28u
dml2aUBpbnRlbC5jb20+Cj4gVGVzdGVkLWJ5OiBGcmFuw6dvaXMgR3VlcnJheiA8a3Vicmlja0Bm
Z3Y2Lm5ldD4KCnB1c2hlZCwgdGhhbmtzIGZvciB0aGUgcGF0Y2hlcywgcmV2aWV3cyBhbmQgdGVz
dHMuCgo+IC0tLQo+ICBEcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyAg
ICAgfCAyICstCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMu
aCB8IDYgKysrLS0tCj4gIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0
aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Jpb3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCj4g
aW5kZXggMjE1MDFkNTY1MzI3Li5iNDE2YjM5NGI2NDEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwo+IEBAIC03NjYsNyArNzY2LDcgQEAgcGFyc2VfcHNy
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgY29uc3Qgc3RydWN0IGJkYl9oZWFk
ZXIgKmJkYikKPiAgCX0KPiAgCj4gIAlpZiAoYmRiLT52ZXJzaW9uID49IDIyNikgewo+IC0JCXUz
MiB3YWtldXBfdGltZSA9IHBzcl90YWJsZS0+cHNyMl90cDJfdHAzX3dha2V1cF90aW1lOwo+ICsJ
CXUzMiB3YWtldXBfdGltZSA9IHBzci0+cHNyMl90cDJfdHAzX3dha2V1cF90aW1lOwo+ICAKPiAg
CQl3YWtldXBfdGltZSA9ICh3YWtldXBfdGltZSA+PiAoMiAqIHBhbmVsX3R5cGUpKSAmIDB4MzsK
PiAgCQlzd2l0Y2ggKHdha2V1cF90aW1lKSB7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfdmJ0X2RlZnMuaAo+IGluZGV4IDkzZjVjOWQyMDRkNi4uMDljZDM3ZmIwYjFj
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2Rl
ZnMuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMu
aAo+IEBAIC00ODEsMTMgKzQ4MSwxMyBAQCBzdHJ1Y3QgcHNyX3RhYmxlIHsKPiAgCS8qIFRQIHdh
a2UgdXAgdGltZSBpbiBtdWx0aXBsZSBvZiAxMDAgKi8KPiAgCXUxNiB0cDFfd2FrZXVwX3RpbWU7
Cj4gIAl1MTYgdHAyX3RwM193YWtldXBfdGltZTsKPiAtCj4gLQkvKiBQU1IyIFRQMi9UUDMgd2Fr
ZXVwIHRpbWUgZm9yIDE2IHBhbmVscyAqLwo+IC0JdTMyIHBzcjJfdHAyX3RwM193YWtldXBfdGlt
ZTsKPiAgfSBfX3BhY2tlZDsKPiAgCj4gIHN0cnVjdCBiZGJfcHNyIHsKPiAgCXN0cnVjdCBwc3Jf
dGFibGUgcHNyX3RhYmxlWzE2XTsKPiArCj4gKwkvKiBQU1IyIFRQMi9UUDMgd2FrZXVwIHRpbWUg
Zm9yIDE2IHBhbmVscyAqLwo+ICsJdTMyIHBzcjJfdHAyX3RwM193YWtldXBfdGltZTsKPiAgfSBf
X3BhY2tlZDsKPiAgCj4gIC8qCj4gLS0gCj4gMi4xNy4xCj4gCj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4g
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
