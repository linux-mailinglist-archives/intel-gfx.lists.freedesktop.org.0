Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 334A1CC477
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 22:55:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99EB36E330;
	Fri,  4 Oct 2019 20:55:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9488C6E330
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2019 20:55:47 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Oct 2019 13:55:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,257,1566889200"; d="scan'208";a="222273369"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.11.83])
 by fmsmga002.fm.intel.com with ESMTP; 04 Oct 2019 13:55:46 -0700
Date: Fri, 4 Oct 2019 13:55:46 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: James Ausmus <james.ausmus@intel.com>
Message-ID: <20191004205546.xeq43hvktkbs6pzr@ldmartin-desk1>
References: <20190925201353.27565-2-james.ausmus@intel.com>
 <20190927222427.5491-1-james.ausmus@intel.com>
 <20190927222427.5491-2-james.ausmus@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190927222427.5491-2-james.ausmus@intel.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/tgl: Read SAGV block time
 from PCODE
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

T24gRnJpLCBTZXAgMjcsIDIwMTkgYXQgMDM6MjQ6MjdQTSAtMDcwMCwgSmFtZXMgQXVzbXVzIHdy
b3RlOgo+U3RhcnRpbmcgZnJvbSBUR0wsIHdlIG5vdyBuZWVkIHRvIHJlYWQgdGhlIFNBR1YgYmxv
Y2sgdGltZSB2aWEgYSBQQ09ERQo+bWFpbGJveCwgcmF0aGVyIHRoYW4gaGF2aW5nIGEgc3RhdGlj
IHZhbHVlLgo+Cj5CU3BlYzogNDkzMjYKPgo+djI6IEZpeCB1cCBwY29kZSB2YWwgZGF0YSB0eXBl
IChWaWxsZSksIHRpZ2h0ZW4gdmFyaWFibGUgc2NvcGUgKFZpbGxlKQo+Cj5DYzogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPkNjOiBTdGFuaXNsYXYgTGlz
b3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4KPkNjOiBMdWNhcyBEZSBNYXJj
aGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPlNpZ25lZC1vZmYtYnk6IEphbWVzIEF1c211
cyA8amFtZXMuYXVzbXVzQGludGVsLmNvbT4KPlJldmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+LS0tCj4gZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaCB8ICAxICsKPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIHwg
MTUgKysrKysrKysrKysrKystCj4gMiBmaWxlcyBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAx
IGRlbGV0aW9uKC0pCj4KPmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+aW5kZXggMDU4YWE1Y2E4Yjcz
Li42YTQ1ZGY5ZGFkOWMgMTAwNjQ0Cj4tLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oCj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj5AQCAtODg2OSw2ICs4
ODY5LDcgQEAgZW51bSB7Cj4gI2RlZmluZSAgICAgR0VOOV9TQUdWX0RJU0FCTEUJCQkweDAKPiAj
ZGVmaW5lICAgICBHRU45X1NBR1ZfSVNfRElTQUJMRUQJCTB4MQo+ICNkZWZpbmUgICAgIEdFTjlf
U0FHVl9FTkFCTEUJCQkweDMKPisjZGVmaW5lIEdFTjEyX1BDT0RFX1JFQURfU0FHVl9CTE9DS19U
SU1FX1VTCTB4MjMKPiAjZGVmaW5lIEdFTjZfUENPREVfREFUQQkJCQlfTU1JTygweDEzODEyOCkK
PiAjZGVmaW5lICAgR0VONl9QQ09ERV9GUkVRX0lBX1JBVElPX1NISUZUCTgKPiAjZGVmaW5lICAg
R0VONl9QQ09ERV9GUkVRX1JJTkdfUkFUSU9fU0hJRlQJMTYKPmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0u
Ywo+aW5kZXggYjQxM2E3ZjNiYzVkLi4xMzcyMWJhNDQwMTMgMTAwNjQ0Cj4tLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9wbS5jCj5AQCAtMzY0NSw3ICszNjQ1LDIwIEBAIGludGVsX2hhc19zYWd2KHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiBzdGF0aWMgdm9pZAo+IHNrbF9zZXR1cF9zYWd2X2Js
b2NrX3RpbWUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+IHsKPi0JaWYgKElT
X0dFTihkZXZfcHJpdiwgMTEpKSB7Cj4rCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKSB7
CgpzYWd2IHdpbGwgc3RpbGwgbmV2ZXIgYmUgZW5hYmxlZCBmb3IgVEdMLiBBcmUgeW91IGdvaW5n
IHRvIHJldmVydCAKOGZmYTQzOTJhMzJlICgiZHJtL2k5MTUvdGdsOiBkaXNhYmxlIFNBR1YgdGVt
cG9yYXJpbHkiKQppbiBhIHNlcGFyZXRlIHBhdGNoPwoKTHVjYXMgRGUgTWFyY2hpCgo+KwkJdTMy
IHZhbCA9IDA7Cj4rCQlpbnQgcmV0Owo+Kwo+KwkJcmV0ID0gc2FuZHlicmlkZ2VfcGNvZGVfcmVh
ZChkZXZfcHJpdiwKPisJCQkJCSAgICAgR0VOMTJfUENPREVfUkVBRF9TQUdWX0JMT0NLX1RJTUVf
VVMsCj4rCQkJCQkgICAgICZ2YWwsIE5VTEwpOwo+KwkJaWYgKCFyZXQpIHsKPisJCQlkZXZfcHJp
di0+c2Fndl9ibG9ja190aW1lX3VzID0gdmFsOwo+KwkJCXJldHVybjsKPisJCX0KPisKPisJCURS
TV9ERUJVR19EUklWRVIoIkNvdWxkbid0IHJlYWQgU0FHViBibG9jayB0aW1lIVxuIik7Cj4rCX0g
ZWxzZSBpZiAoSVNfR0VOKGRldl9wcml2LCAxMSkpIHsKPiAJCWRldl9wcml2LT5zYWd2X2Jsb2Nr
X3RpbWVfdXMgPSAxMDsKPiAJCXJldHVybjsKPiAJfSBlbHNlIGlmIChJU19HRU4oZGV2X3ByaXYs
IDEwKSkgewo+LS0gCj4yLjIyLjEKPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
