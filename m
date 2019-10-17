Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F39ADAD81
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 14:54:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE4CA6E4AE;
	Thu, 17 Oct 2019 12:54:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BFE46E4AE
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2019 12:54:50 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Oct 2019 05:54:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,307,1566889200"; d="scan'208";a="208270623"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 17 Oct 2019 05:54:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Oct 2019 15:54:46 +0300
Date: Thu, 17 Oct 2019 15:54:46 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ramalingam C <ramalingam.c@intel.com>
Message-ID: <20191017125446.GS1208@intel.com>
References: <20191010145127.7487-1-ville.syrjala@linux.intel.com>
 <20191017075828.GE4730@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191017075828.GE4730@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915: Shrink eDRAM ways/sets arrays
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

T24gVGh1LCBPY3QgMTcsIDIwMTkgYXQgMDE6Mjg6MjlQTSArMDUzMCwgUmFtYWxpbmdhbSBDIHdy
b3RlOgo+IE9uIDIwMTktMTAtMTAgYXQgMTc6NTE6MjMgKzAzMDAsIFZpbGxlIFN5cmphbGEgd3Jv
dGU6Cj4gPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgo+ID4gCj4gPiBNYWtlIHRoZSB3YXlzL3NldHMgYXJyYXlzIHN0YXRpYyBjb3NudCB1OCB0
byBzaHJpbmsgdGhpbmdzIGEgYml0Lgo+ID4gCj4gPiAgICAgdGV4dAkgICBkYXRhCSAgICBic3MJ
ICAgIGRlYwkgICAgaGV4CWZpbGVuYW1lCj4gPiAtICAyMzkzNQkgICAgNjI5CSAgICAxMjgJICAy
NDY5MgkgICA2MDc0CWk5MTVfZHJ2Lm8KPiA+ICsgIDIzODE4CSAgICA2MjkJICAgIDEyOAkgIDI0
NTc1CSAgIDVmZmYJaTkxNV9kcnYubwo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyB8IDQgKystLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuYwo+ID4gaW5kZXggZjAyYTM0NzIyMjE3Li4wYjhjMTNhZTQ4NTcgMTAwNjQ0Cj4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5jCj4gPiBAQCAtMTA3Myw4ICsxMDczLDggQEAgaW50ZWxfZ2V0X2Ry
YW1faW5mbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gPiAgCj4gPiAgc3Rh
dGljIHUzMiBnZW45X2VkcmFtX3NpemVfbWIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2LCB1MzIgY2FwKQo+ID4gIHsKPiA+IC0JY29uc3QgdW5zaWduZWQgaW50IHdheXNbOF0gPSB7
IDQsIDgsIDEyLCAxNiwgMTYsIDE2LCAxNiwgMTYgfTsKPiA+IC0JY29uc3QgdW5zaWduZWQgaW50
IHNldHNbNF0gPSB7IDEsIDEsIDIsIDIgfTsKPiA+ICsJc3RhdGljIGNvbnN0IHU4IHdheXNbOF0g
PSB7IDQsIDgsIDEyLCAxNiwgMTYsIDE2LCAxNiwgMTYgfTsKPiA+ICsJc3RhdGljIGNvbnN0IHU4
IHNldHNbNF0gPSB7IDEsIDEsIDIsIDIgfTsKPiBBc2tpbmcgZm9yIG15IHVuZGVyc3RhbmRpbmcu
IHVuc2lnbmVkIGludCAtPiB1OCBtYWtlIHNlbnNlIHRvIHNocmluayB0aGUKPiBzaXplLiBDb3Vs
ZCB5b3UgcGxlYXNlIGFkZCByZWFzb25pbmcgZm9yIGFkZGluZyBzdGF0aWM/IG1vdmluZyBpdCBp
bnRvCj4gZGF0YSBzZWdtZW50IGhlbmNlIHJlZHVjaW5nIHRoZSBzdGFjaz8KClBvc3NpYmx5LiBN
eSB1c3VhbCBhcHByb2FjaCBpcyB0byBqdXN0IG1ha2UgYWxsIHN1Y2ggdGhpbmdzCnN0YXRpYyBj
b25zdCB1bmxlc3MgdGhlcmUgaXMgYSByZWFsIHJlYXNvbiBub3QgdG8uCgo+IAo+IC1SYW0KPiA+
ICAKPiA+ICAJcmV0dXJuIEVEUkFNX05VTV9CQU5LUyhjYXApICoKPiA+ICAJCXdheXNbRURSQU1f
V0FZU19JRFgoY2FwKV0gKgo+ID4gLS0gCj4gPiAyLjIxLjAKPiA+IAo+ID4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+IEludGVsLWdmeCBtYWlsaW5n
IGxpc3QKPiA+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+IGh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgotLSAKVmlsbGUg
U3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
