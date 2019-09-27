Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7989C0ABB
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 20:01:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE49C6E1A7;
	Fri, 27 Sep 2019 18:01:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 145DF6E1A7
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 18:01:43 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Sep 2019 11:01:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,556,1559545200"; d="scan'208";a="184062616"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 27 Sep 2019 11:01:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 Sep 2019 21:01:39 +0300
Date: Fri, 27 Sep 2019 21:01:39 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: James Ausmus <james.ausmus@intel.com>
Message-ID: <20190927180139.GX1208@intel.com>
References: <20190925203352.9827-1-james.ausmus@intel.com>
 <20190925203352.9827-3-james.ausmus@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190925203352.9827-3-james.ausmus@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/tgl: Read SAGV block time from
 PCODE
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
Cc: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@intel.com>,
 intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBTZXAgMjUsIDIwMTkgYXQgMDE6MzM6NTFQTSAtMDcwMCwgSmFtZXMgQXVzbXVzIHdy
b3RlOgo+IFN0YXJ0aW5nIGZyb20gVEdMLCB3ZSBub3cgbmVlZCB0byByZWFkIHRoZSBTQUdWIGJs
b2NrIHRpbWUgdmlhIGEgUENPREUKPiBtYWlsYm94LCByYXRoZXIgdGhhbiBoYXZpbmcgYSBzdGF0
aWMgdmFsdWUuCj4gCj4gQlNwZWM6IDQ5MzI2Cj4gCj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBpbnRlbC5jb20+Cj4gQ2M6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xh
di5saXNvdnNraXlAaW50ZWwuY29tPgo+IENjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFy
Y2hpQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKYW1lcyBBdXNtdXMgPGphbWVzLmF1c211
c0BpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggfCAg
MSArCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgfCAyMCArKysrKysrKysrKysr
KystLS0tLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25z
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gaW5kZXggZTc1MmRlOTQ3MGJkLi44NGFl
NjU1MzQ4NWIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiBAQCAtODg2NSw2ICs4ODY1
LDcgQEAgZW51bSB7Cj4gICNkZWZpbmUgICAgIEdFTjlfU0FHVl9ESVNBQkxFCQkJMHgwCj4gICNk
ZWZpbmUgICAgIEdFTjlfU0FHVl9JU19ESVNBQkxFRAkJMHgxCj4gICNkZWZpbmUgICAgIEdFTjlf
U0FHVl9FTkFCTEUJCQkweDMKPiArI2RlZmluZSBHRU4xMl9QQ09ERV9SRUFEX1NBR1ZfQkxPQ0tf
VElNRV9VUwkweDIzCj4gICNkZWZpbmUgR0VONl9QQ09ERV9EQVRBCQkJCV9NTUlPKDB4MTM4MTI4
KQo+ICAjZGVmaW5lICAgR0VONl9QQ09ERV9GUkVRX0lBX1JBVElPX1NISUZUCTgKPiAgI2RlZmlu
ZSAgIEdFTjZfUENPREVfRlJFUV9SSU5HX1JBVElPX1NISUZUCTE2Cj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9wbS5jCj4gaW5kZXggNWFkNzJkY2IwZmFhLi5jYTJiZWMwOWVkYjUgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3BtLmMKPiBAQCAtMzY2NSwxNiArMzY2NSwyNiBAQCBpbnRlbF9oYXNfc2Fndihz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gIHN0YXRpYyBpbnQKPiAgaW50ZWxf
Z2V0X3NhZ3ZfYmxvY2tfdGltZV91cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
Cj4gIHsKPiAtCWludCBzYWd2X2Jsb2NrX3RpbWVfdXMgPSAxMDAwOyAvKiBEZWZhdWx0IHRvIHVu
dXNhYmxlIGJsb2NrIHRpbWUgKi8KPiArCXVpbnQgdmFsID0gMDsKCnVpbnQ/Cgo+ICsJaW50IHJl
dCwgc2Fndl9ibG9ja190aW1lX3VzID0gMTAwMDsgLyogRGVmYXVsdCB0byB1bnVzYWJsZSBibG9j
ayB0aW1lICovCgp2YWwrcmV0IGNvdWxkIGxpdmUgaW4gYSB0aWdodGVyIHNjb3BlLgoKPiAgCj4g
LQlpZiAoSVNfR0VOKGRldl9wcml2LCAxMSkpCj4gKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+
PSAxMikgewo+ICsJCXJldCA9IHNhbmR5YnJpZGdlX3Bjb2RlX3JlYWQoZGV2X3ByaXYsCj4gKwkJ
CQkJICAgICBHRU4xMl9QQ09ERV9SRUFEX1NBR1ZfQkxPQ0tfVElNRV9VUywKPiArCQkJCQkgICAg
ICZ2YWwsIE5VTEwpOwoKV2Ugc2hvdWxkIHByb2JhYmx5IHN0YXNoIHRoaXMgc29tZXdoZXJlIHNv
IHdlIGRvbid0IGhhdmUgdG8ga2VlcAphc2tpbmcgcGNvZGUgYWJvdXQgaXQgZXZlcnkgc2luZ2xl
IHRpbWUuCgpNYWdpYyBudW1iZXJzIGxvb2sgY29ycmVjdApSZXZpZXdlZC1ieTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCj4gKwkJaWYgKCFyZXQpCj4g
KwkJCXNhZ3ZfYmxvY2tfdGltZV91cyA9IHZhbDsKPiArCQllbHNlCj4gKwkJCURSTV9ERUJVR19E
UklWRVIoIkNvdWxkbid0IHJlYWQgU0FHViBibG9jayB0aW1lIVxuIik7Cj4gKwl9IGVsc2UgaWYg
KElTX0dFTihkZXZfcHJpdiwgMTEpKSB7Cj4gIAkJc2Fndl9ibG9ja190aW1lX3VzID0gMTA7Cj4g
LQllbHNlIGlmIChJU19HRU4oZGV2X3ByaXYsIDEwKSkKPiArCX0gZWxzZSBpZiAoSVNfR0VOKGRl
dl9wcml2LCAxMCkpIHsKPiAgCQlzYWd2X2Jsb2NrX3RpbWVfdXMgPSAyMDsKPiAtCWVsc2UgaWYg
KElTX0dFTihkZXZfcHJpdiwgOSkpCj4gKwl9IGVsc2UgaWYgKElTX0dFTihkZXZfcHJpdiwgOSkp
IHsKPiAgCQlzYWd2X2Jsb2NrX3RpbWVfdXMgPSAzMDsKPiAtCWVsc2UKPiArCX0gZWxzZSB7Cj4g
IAkJTUlTU0lOR19DQVNFKElOVEVMX0dFTihkZXZfcHJpdikpOwo+ICsJfQo+ICAKPiAgCXJldHVy
biBzYWd2X2Jsb2NrX3RpbWVfdXM7Cj4gIH0KPiAtLSAKPiAyLjIyLjEKPiAKPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5n
IGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKCi0tIApWaWxsZSBTeXJq
w6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
