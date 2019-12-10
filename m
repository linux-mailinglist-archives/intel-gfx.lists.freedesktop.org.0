Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8F3118A4E
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 15:02:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A35FF6E0CF;
	Tue, 10 Dec 2019 14:01:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 427 seconds by postgrey-1.36 at gabe;
 Tue, 10 Dec 2019 14:01:57 UTC
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E7A06E0CF
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 14:01:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 05:54:49 -0800
X-IronPort-AV: E=Sophos;i="5.69,299,1571727600"; d="scan'208";a="207285868"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.251.82.2])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 05:54:47 -0800
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <46e0b2530f37cb0226006231e273a37aecf98461.1575302334.git.jani.nikula@intel.com>
References: <cover.1575302334.git.jani.nikula@intel.com>
 <46e0b2530f37cb0226006231e273a37aecf98461.1575302334.git.jani.nikula@intel.com>
Message-ID: <157598608411.9435.15464881874218047518@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Tue, 10 Dec 2019 15:54:44 +0200
Subject: Re: [Intel-gfx] [PATCH 04/10] drm/i915: add display engine uncore
 helpers
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0xMi0wMiAxODowMDo1MikKPiBBZGQgY29udmVuaWVu
Y2UgaGVscGVycyBmb3IgdGhlIG1vc3QgY29tbW9uIHVuY29yZSBvcGVyYXRpb25zIHdpdGgKPiBz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqIGFzIGNvbnRleHQgcmF0aGVyIHRoYW4gc3RydWN0IGlu
dGVsX3VuY29yZSAqLgo+IAo+IFRoZSBnb2FsIGlzIHRvIHJlcGxhY2UgYWxsIGluc3RhbmNlcyBv
ZiBJOTE1X1JFQUQoKSwKPiBJOTE1X1BPU1RJTkdfUkVBRCgpLCBJOTE1X1dSSVRFKCksIEk5MTVf
UkVBRF9GVygpLCBhbmQgSTkxNV9XUklURV9GVygpCj4gaW4gZGlzcGxheS8gd2l0aCB0aGVzZSwg
dG8gZmluYWxseSBiZSBhYmxlIHRvIGdldCByaWQgb2YgdGhlIGltcGxpY2l0Cj4gZGV2X3ByaXYg
bG9jYWwgcGFyYW1ldGVyIHVzZS4KPiAKPiBUaGUgaWRlYSBpcyB0aGF0IGFueSBub24tdTMyIHJl
YWRzIG9yIHdyaXRlcyBhcmUgc3BlY2lhbCBlbm91Z2ggdGhhdAo+IHRoZXkgY2FuIHVzZSB0aGUg
aW50ZWxfdW5jb3JlXyogZnVuY3Rpb25zIGRpcmVjdGx5Lgo+IAo+IHYyOgo+IC0gcmVuYW1lIHRo
ZSBmaWxlIGludGVsX2RlLmgKPiAtIG1vdmUgaW50ZWxfZGVfd2FpdF9mb3JfKiB0aGVyZSB0b28K
PiAtIGFsc28gYWRkIGRlIGZ3IGhlbHBlcnMKPiAKPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUu
Y2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxh
aHRpbmVuQGxpbnV4LmludGVsLmNvbT4KPiBDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1h
cmNoaUBpbnRlbC5jb20+Cj4gQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNv
bT4KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4K
PiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+IC0t
LQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RlLmggICAgICAgfCA3MiAr
KysrKysrKysrKysrKysrKysrCj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
dHlwZXMuaCAgICB8ICAxICsKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAg
ICAgICAgICAgIHwgMTQgLS0tLQo+ICAzIGZpbGVzIGNoYW5nZWQsIDczIGluc2VydGlvbnMoKyks
IDE0IGRlbGV0aW9ucygtKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kZS5oCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGUuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGUuaAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi4wMGRh
MTBiZjM1ZjUKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kZS5oCj4gQEAgLTAsMCArMSw3MiBAQAo+ICsvKiBTUERYLUxpY2Vuc2UtSWRl
bnRpZmllcjogTUlUICovCj4gKy8qCj4gKyAqIENvcHlyaWdodCDCqSAyMDE5IEludGVsIENvcnBv
cmF0aW9uCj4gKyAqLwo+ICsKPiArI2lmbmRlZiBfX0lOVEVMX0RFX0hfXwo+ICsjZGVmaW5lIF9f
SU5URUxfREVfSF9fCj4gKwo+ICsjaW5jbHVkZSAiaTkxNV9kcnYuaCIKPiArI2luY2x1ZGUgImk5
MTVfcmVnLmgiCj4gKyNpbmNsdWRlICJpbnRlbF91bmNvcmUuaCIKPiArCj4gK3N0YXRpYyBpbmxp
bmUgdTMyCj4gK2ludGVsX2RlX3JlYWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGk5
MTVfcmVnX3QgcmVnKQoKSXMgdGhlIHBsYW4gdG8gaGF2ZSBzdHJ1Y3QgaW50ZWxfZGUgaW5zaWRl
IGk5MTUgYW5kIHRoZW4gaGF2ZSB0aGF0IGFzCnRoZSBwcmltZSBwYXJhbWV0ZXIgZ29pbmcgZm9y
d2FyZD8KClJlZ2FyZHMsIEpvb25hcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
