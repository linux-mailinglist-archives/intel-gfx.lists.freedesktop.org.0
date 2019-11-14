Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB91FCBCA
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 18:27:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2E8D6EE39;
	Thu, 14 Nov 2019 17:27:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FB156E3AE
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Nov 2019 17:27:30 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Nov 2019 09:27:29 -0800
X-IronPort-AV: E=Sophos;i="5.68,304,1569308400"; d="scan'208";a="198892949"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.10.167])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Nov 2019 09:27:29 -0800
Date: Thu, 14 Nov 2019 09:27:23 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20191114172723.xobexowa62gjazo3@ldmartin-desk1>
References: <20191108214251.79305-1-lucas.demarchi@intel.com>
 <87sgmq1v7r.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87sgmq1v7r.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: do not warn late about hdmi on
 port A
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBOb3YgMTQsIDIwMTkgYXQgMDI6NDY6NDhQTSArMDIwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj5PbiBGcmksIDA4IE5vdiAyMDE5LCBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hp
QGludGVsLmNvbT4gd3JvdGU6Cj4+IFRoZSB3YXJuaW5nIHNob3VsZCBiZSBqdXN0IGEgd2Fybmlu
Zy4gV2hlcmUgaXQgaXMgY3VycmVudGx5IGlzIHdyb25nCj4+IHNpbmNlIHdlIGFscmVhZHkgcmVn
aXN0ZXJlZCB0aGUgY29ubmVjdG9yIG9uIGRybSwgbWVhbmluZyBpdCBkaWVzIGxhdGVyCj4+IG9u
IGEgTlVMTCBwb2ludGVyIGRlcmVmIGlmIHRoZSBWQlQtb3ZlcnJpZGluZyB3ZSBoYXZlIGlzIHJl
bW92ZWQuIE1vdmUKPj4gdGhlIHdhcm5pbmcgdXAuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEx1Y2Fz
IERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+Cj5EbyAqTk9UKiBtZXJnZSBw
YXRjaGVzIHdpdGhvdXQgZnVsbCBJR1QgcmVzdWx0cy4gQkFUIGlzICpOT1QqIGVub3VnaC4KCllv
dSBhcmUgcmlnaHQsIG15IGJhZC4gSSB3aWxsIGJlIG1vcmUgY2FyZWZ1bCBuZXh0IHRpbWVzLgoK
THVjYXMgRGUgTWFyY2hpCgo+Cj5CUiwKPkphbmkuCj4KPgo+PiAtLS0KPj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jIHwgNSArKystLQo+PiAgMSBmaWxlIGNoYW5n
ZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMKPj4gaW5kZXggZTA4NGMyZjc1Mzc5Li5lZDRhNjhm
YjM1MWYgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
aGRtaS5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5j
Cj4+IEBAIC0zMTQwLDYgKzMxNDAsOSBAQCB2b2lkIGludGVsX2hkbWlfaW5pdF9jb25uZWN0b3Io
c3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQsCj4+ICAJRFJNX0RFQlVH
X0tNUygiQWRkaW5nIEhETUkgY29ubmVjdG9yIG9uIFtFTkNPREVSOiVkOiVzXVxuIiwKPj4gIAkJ
ICAgICAgaW50ZWxfZW5jb2Rlci0+YmFzZS5iYXNlLmlkLCBpbnRlbF9lbmNvZGVyLT5iYXNlLm5h
bWUpOwo+Pgo+PiArCWlmIChXQVJOX09OKHBvcnQgPT0gUE9SVF9BKSkKPj4gKwkJcmV0dXJuOwo+
PiArCj4+ICAJaWYgKFdBUk4oaW50ZWxfZGlnX3BvcnQtPm1heF9sYW5lcyA8IDQsCj4+ICAJCSAi
Tm90IGVub3VnaCBsYW5lcyAoJWQpIGZvciBIRE1JIG9uIFtFTkNPREVSOiVkOiVzXVxuIiwKPj4g
IAkJIGludGVsX2RpZ19wb3J0LT5tYXhfbGFuZXMsIGludGVsX2VuY29kZXItPmJhc2UuYmFzZS5p
ZCwKPj4gQEAgLTMxNTksOCArMzE2Miw2IEBAIHZvaWQgaW50ZWxfaGRtaV9pbml0X2Nvbm5lY3Rv
cihzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdfcG9ydCwKPj4KPj4gIAlpbnRl
bF9oZG1pLT5kZGNfYnVzID0gaW50ZWxfaGRtaV9kZGNfcGluKGRldl9wcml2LCBwb3J0KTsKPj4K
Pj4gLQlpZiAoV0FSTl9PTihwb3J0ID09IFBPUlRfQSkpCj4+IC0JCXJldHVybjsKPj4gIAlpbnRl
bF9lbmNvZGVyLT5ocGRfcGluID0gaW50ZWxfaHBkX3Bpbl9kZWZhdWx0KGRldl9wcml2LCBwb3J0
KTsKPj4KPj4gIAlpZiAoSEFTX0RESShkZXZfcHJpdikpCj4KPi0tIAo+SmFuaSBOaWt1bGEsIElu
dGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
