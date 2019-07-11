Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D6A660EC
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 22:52:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F38686E28B;
	Thu, 11 Jul 2019 20:52:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C69D6E29A
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 20:52:29 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 13:52:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,480,1557212400"; d="scan'208";a="341496718"
Received: from mdroper-desk.fm.intel.com (HELO
 mdroper-desk.amr.corp.intel.com) ([10.105.128.126])
 by orsmga005.jf.intel.com with ESMTP; 11 Jul 2019 13:52:13 -0700
Date: Thu, 11 Jul 2019 13:52:13 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190711205213.GK9024@mdroper-desk.amr.corp.intel.com>
References: <20190711173115.28296-1-lucas.demarchi@intel.com>
 <20190711173115.28296-16-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190711173115.28296-16-lucas.demarchi@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH v3 15/21] drm/i915/tgl: apply Display WA
 #1178 to fix type C dongles
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdWwgMTEsIDIwMTkgYXQgMTA6MzE6MDlBTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IEFkZCBwb3J0IEMgdG8gd29ya2Fyb3VuZCB0byBjb3ZlciBUaWdlciBMYWtlLgo+
IAo+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9m
Zi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4gUmV2aWV3
ZWQtYnk6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPiAtLS0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgfCA3ICsrKysr
KysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgICAgICAg
fCA0ICsrKy0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9wb3dlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3Bvd2VyLmMKPiBpbmRleCAxMmFhOWNlMDhkOTUuLjA2MTQzMjg2MmM3ZCAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5j
Cj4gQEAgLTQ1Myw2ICs0NTMsNyBAQCBpY2xfY29tYm9fcGh5X2F1eF9wb3dlcl93ZWxsX2VuYWJs
ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gIAlpbnQgcHdfaWR4ID0gcG93
ZXJfd2VsbC0+ZGVzYy0+aHN3LmlkeDsKPiAgCWVudW0gcGh5IHBoeSA9IElDTF9BVVhfUFdfVE9f
UEhZKHB3X2lkeCk7Cj4gIAl1MzIgdmFsOwo+ICsJaW50IHdhX2lkeF9tYXg7Cj4gIAo+ICAJdmFs
ID0gSTkxNV9SRUFEKHJlZ3MtPmRyaXZlcik7Cj4gIAlJOTE1X1dSSVRFKHJlZ3MtPmRyaXZlciwg
dmFsIHwgSFNXX1BXUl9XRUxMX0NUTF9SRVEocHdfaWR4KSk7Cj4gQEAgLTQ2Miw2ICs0NjMsMTIg
QEAgaWNsX2NvbWJvX3BoeV9hdXhfcG93ZXJfd2VsbF9lbmFibGUoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2LAo+ICAKPiAgCWhzd193YWl0X2Zvcl9wb3dlcl93ZWxsX2VuYWJsZShk
ZXZfcHJpdiwgcG93ZXJfd2VsbCk7Cj4gIAo+ICsJLyogRGlzcGxheSBXQSAjMTE3ODogaWNsLCB0
Z2wgKi8KPiArCWlmIChJU19USUdFUkxBS0UoZGV2X3ByaXYpKQo+ICsJCXdhX2lkeF9tYXggPSBJ
Q0xfUFdfQ1RMX0lEWF9BVVhfQzsKPiArCWVsc2UKPiArCQl3YV9pZHhfbWF4ID0gSUNMX1BXX0NU
TF9JRFhfQVVYX0I7Cj4gKwo+ICAJLyogRGlzcGxheSBXQSAjMTE3ODogaWNsICovCj4gIAlpZiAo
SVNfSUNFTEFLRShkZXZfcHJpdikgJiYKCkkgdGhpbmsgdGhpcyBuZWVkcyB0byBjaGFuZ2UgdG8g
IWVobCBub3cuCgo+ICAJICAgIHB3X2lkeCA+PSBJQ0xfUFdfQ1RMX0lEWF9BVVhfQSAmJiBwd19p
ZHggPD0gSUNMX1BXX0NUTF9JRFhfQVVYX0IgJiYKCkFuZCB0aGlzIHNob3VsZCB1c2UgeW91ciBu
ZXcgd2FfaWR4X21heCB2YXJpYWJsZQoKCk1hdHQKCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4g
aW5kZXggY2E3MGJlNDBhNDY3Li5hZDk2YzViNDk3NWMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmgKPiBAQCAtOTI0NCw5ICs5MjQ0LDExIEBAIGVudW0gc2tsX3Bvd2VyX2dhdGUgewo+ICAj
ZGVmaW5lIF9JQ0xfQVVYX1JFR19JRFgocHdfaWR4KQkoKHB3X2lkeCkgLSBJQ0xfUFdfQ1RMX0lE
WF9BVVhfQSkKPiAgI2RlZmluZSBfSUNMX0FVWF9BTkFPVlJEMV9BCQkweDE2MjM5OAo+ICAjZGVm
aW5lIF9JQ0xfQVVYX0FOQU9WUkQxX0IJCTB4NkMzOTgKPiArI2RlZmluZSBfVEdMX0FVWF9BTkFP
VlJEMV9DCQkweDE2MDM5OAo+ICAjZGVmaW5lIElDTF9BVVhfQU5BT1ZSRDEocHdfaWR4KQlfTU1J
TyhfUElDSyhfSUNMX0FVWF9SRUdfSURYKHB3X2lkeCksIFwKPiAgCQkJCQkJICAgIF9JQ0xfQVVY
X0FOQU9WUkQxX0EsIFwKPiAtCQkJCQkJICAgIF9JQ0xfQVVYX0FOQU9WUkQxX0IpKQo+ICsJCQkJ
CQkgICAgX0lDTF9BVVhfQU5BT1ZSRDFfQiwgXAo+ICsJCQkJCQkgICAgX1RHTF9BVVhfQU5BT1ZS
RDFfQykpCj4gICNkZWZpbmUgICBJQ0xfQVVYX0FOQU9WUkQxX0xET19CWVBBU1MJKDEgPDwgNykK
PiAgI2RlZmluZSAgIElDTF9BVVhfQU5BT1ZSRDFfRU5BQkxFCSgxIDw8IDApCj4gIAo+IC0tIAo+
IDIuMjEuMAo+IAoKLS0gCk1hdHQgUm9wZXIKR3JhcGhpY3MgU29mdHdhcmUgRW5naW5lZXIKSW9U
RyBQbGF0Zm9ybSBFbmFibGluZyAmIERldmVsb3BtZW50CkludGVsIENvcnBvcmF0aW9uCig5MTYp
IDM1Ni0yNzk1Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
