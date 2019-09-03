Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A75A76B7
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 00:10:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86574898B7;
	Tue,  3 Sep 2019 22:10:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 550C6898B7
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2019 22:10:36 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Sep 2019 15:10:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,464,1559545200"; d="scan'208";a="266439884"
Received: from mdroper-desk.fm.intel.com (HELO
 mdroper-desk.amr.corp.intel.com) ([10.105.128.12])
 by orsmga001.jf.intel.com with ESMTP; 03 Sep 2019 15:10:34 -0700
Date: Tue, 3 Sep 2019 15:10:34 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190903221034.GN13677@mdroper-desk.amr.corp.intel.com>
References: <20190829092554.32198-1-lucas.demarchi@intel.com>
 <20190829092554.32198-7-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829092554.32198-7-lucas.demarchi@intel.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Subject: Re: [Intel-gfx] [PATCH v3 6/7] drm/i915/tgl: add gen12 to stolen
 initialization
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

T24gVGh1LCBBdWcgMjksIDIwMTkgYXQgMDI6MjU6NTNBTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IEFkZCBjYXNlIGZvciBnZW4gPT0gMTIgYW5kIGFkZCBNSVNTSU5HX0NBU0UoKSBm
b3IgZnV0dXJlIGdlbnMuIFdlIHdlcmUKPiBhbHJlYWR5IGhhbmRsaW5nIGdlbjEyIGFzIHRoZSBk
ZWZhdWx0LCBzbyB0aGlzIGRvZXNuJ3QgY2hhbmdlIHRoZQo+IGN1cnJlbnQgYmVoYXZpb3IuCj4g
Cj4gQ2M6IENRIFRhbmcgPGNxLnRhbmdAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEx1Y2Fz
IERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgoKQW5vdGhlciBhcHByb2FjaCB3
b3VsZCBiZSB0byBqdXN0IGNvbnZlcnQgdGhlIHN3aXRjaCB0byBhIG1vcmUKdHJhZGl0aW9uYWwg
aWYvZWxzZSBsYWRkZXIgYXMgd2UgdXNlIHByZXR0eSBtdWNoIGV2ZXJ5d2hlcmUgZWxzZSBpbiB0
aGUKZHJpdmVyICh3aGljaCB3b3VsZCBhbHNvIGFsbG93IHVzIHRvIGhhbmRsZSBzdHVmZiBsaWtl
IHZsdiBhbmQgY2h2CndpdGhvdXQgYW4gZXh0cmEgbGV2ZWwgb2YgbmVzdGluZykuICBCdXQgdGhp
cyB3b3JrcyB0b28sIHNvCgpSZXZpZXdlZC1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVy
QGludGVsLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9z
dG9sZW4uYyB8IDUgKysrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fc3RvbGVuLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc3RvbGVu
LmMKPiBpbmRleCBhYTUzM2I0YWI1ZjUuLjdjZTUyNTlkNzNkNiAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc3RvbGVuLmMKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc3RvbGVuLmMKPiBAQCAtNDI1LDggKzQyNSwxMSBAQCBp
bnQgaTkxNV9nZW1faW5pdF9zdG9sZW4oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQo+ICAJCQliZHdfZ2V0X3N0b2xlbl9yZXNlcnZlZChkZXZfcHJpdiwKPiAgCQkJCQkJJnJlc2Vy
dmVkX2Jhc2UsICZyZXNlcnZlZF9zaXplKTsKPiAgCQlicmVhazsKPiAtCWNhc2UgMTE6Cj4gIAlk
ZWZhdWx0Ogo+ICsJCU1JU1NJTkdfQ0FTRShJTlRFTF9HRU4oZGV2X3ByaXYpKTsKPiArCQkvKiBm
YWxsLXRocm91Z2ggKi8KPiArCWNhc2UgMTE6Cj4gKwljYXNlIDEyOgo+ICAJCWljbF9nZXRfc3Rv
bGVuX3Jlc2VydmVkKGRldl9wcml2LCAmcmVzZXJ2ZWRfYmFzZSwKPiAgCQkJCQkmcmVzZXJ2ZWRf
c2l6ZSk7Cj4gIAkJYnJlYWs7Cj4gLS0gCj4gMi4yMy4wCj4gCgotLSAKTWF0dCBSb3BlcgpHcmFw
aGljcyBTb2Z0d2FyZSBFbmdpbmVlcgpWVFQtT1NHQyBQbGF0Zm9ybSBFbmFibGVtZW50CkludGVs
IENvcnBvcmF0aW9uCig5MTYpIDM1Ni0yNzk1Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
