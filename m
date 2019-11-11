Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F3E7F7365
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 12:48:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F0EB6E8D3;
	Mon, 11 Nov 2019 11:48:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B28796E8D3
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 11:48:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 03:48:47 -0800
X-IronPort-AV: E=Sophos;i="5.68,292,1569308400"; d="scan'208";a="197644074"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 03:48:45 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Vandita Kulkarni <vandita.kulkarni@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20191111105207.7583-1-vandita.kulkarni@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191111105207.7583-1-vandita.kulkarni@intel.com>
Date: Mon, 11 Nov 2019 13:48:42 +0200
Message-ID: <87woc64orp.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Do not read the transcoder
 register for mipi dsi
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAxMSBOb3YgMjAxOSwgVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBp
bnRlbC5jb20+IHdyb3RlOgo+IEFzIHBlciB0aGUgQnNwZWMgdGhlIHBvcnQgbWFwcGluZyBpcyBm
aXhlZCBmb3IgbWlwaSBkc2kKClRoZSAidGdsIiBpbiB0aGUgcGF0Y2ggc3ViamVjdCBpcyBzbGln
aHRseSBjb25mdXNpbmcsIGJlY2F1c2UgdGhpcyBpc24ndApuZXcgdG8gdGdsLgoKPgo+IFNpZ25l
ZC1vZmYtYnk6IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPgo+
IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDI3
ICsrKysrKysrKysrKysrKystLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCsp
LCA1IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMKPiBpbmRleCBmMTMyOGMwOGY0YWQuLmQ0YTg2MTdkNjE4NSAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gQEAgLTEwMzk3
LDIxICsxMDM5NywzOCBAQCBzdGF0aWMgYm9vbCBieHRfZ2V0X2RzaV90cmFuc2NvZGVyX3N0YXRl
KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAo+ICAJcmV0dXJuIHRyYW5zY29kZXJfaXNfZHNpKHBp
cGVfY29uZmlnLT5jcHVfdHJhbnNjb2Rlcik7Cj4gIH0KPiAgCj4gLXN0YXRpYyB2b2lkIGhhc3dl
bGxfZ2V0X2RkaV9wb3J0X3N0YXRlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAo+IC0JCQkJICAg
ICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZykKPiArc3RhdGljIGVudW0g
cG9ydAo+ICtpbnRlbF90cmFuc2NvZGVyX3RvX3BvcnQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LAo+ICsJCQkgIGVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlcikKClRoaXMg
aXMgYWxzbyBjb25mdXNpbmcgbmFtaW5nIGJlY2F1c2UgdGhpcyBpcyBkZWZpbml0ZWx5IG5vdCB1
bml2ZXJzYWwKYWNyb3NzIHBsYXRmb3Jtcy4KCj4gIHsKPiAtCXN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwo+IC0Jc3RydWN0IGludGVs
X3NoYXJlZF9kcGxsICpwbGw7Cj4gIAllbnVtIHBvcnQgcG9ydDsKPiAgCXUzMiB0bXA7Cj4gIAo+
IC0JdG1wID0gSTkxNV9SRUFEKFRSQU5TX0RESV9GVU5DX0NUTChwaXBlX2NvbmZpZy0+Y3B1X3Ry
YW5zY29kZXIpKTsKPiArCS8qIERTSSB0cmFuc2NvZGVycyBoYXZlIGZpeGVkIGRkaSBtYXBwaW5n
Ki8KPiArCWlmICh0cmFuc2NvZGVyX2lzX2RzaShjcHVfdHJhbnNjb2RlcikpIHsKPiArCQlwb3J0
ID0gKGNwdV90cmFuc2NvZGVyID09IFRSQU5TQ09ERVJfRFNJX0EpID8gUE9SVF9BIDogUE9SVF9C
Owo+ICsJCXJldHVybiBwb3J0Owo+ICsJfQoKSSB0aGluayBJJ2QganVzdCBhZGQgdGhhdCBpbiB0
aGUgZXhpc3RpbmcgaGFzd2VsbF9nZXRfZGRpX3BvcnRfc3RhdGUoKQp3aXRob3V0IGFub3RoZXIg
ZnVuY3Rpb24uCgogICAgICAgIGlmIChkc2kpIHsKICAgICAgICB9IGVsc2UgewoKICAgICAgICBk
byB0aGUgYmVsb3cKPiAgCj4gKwl0bXAgPSBJOTE1X1JFQUQoVFJBTlNfRERJX0ZVTkNfQ1RMKGNw
dV90cmFuc2NvZGVyKSk7Cj4gIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikKPiAgCQlw
b3J0ID0gVEdMX1RSQU5TX0RESV9GVU5DX0NUTF9WQUxfVE9fUE9SVCh0bXApOwo+ICAJZWxzZQo+
ICAJCXBvcnQgPSBUUkFOU19ERElfRlVOQ19DVExfVkFMX1RPX1BPUlQodG1wKTsKPiAgCj4gKwly
ZXR1cm4gcG9ydDsKPiArfQo+ICsKPiArc3RhdGljIHZvaWQgaGFzd2VsbF9nZXRfZGRpX3BvcnRf
c3RhdGUoc3RydWN0IGludGVsX2NydGMgKmNydGMsCj4gKwkJCQkgICAgICAgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKnBpcGVfY29uZmlnKQo+ICt7Cj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKPiArCXN0cnVjdCBpbnRlbF9z
aGFyZWRfZHBsbCAqcGxsOwo+ICsJZW51bSBwb3J0IHBvcnQ7Cj4gKwl1MzIgdG1wOwo+ICsKPiAr
CXBvcnQgPSBpbnRlbF90cmFuc2NvZGVyX3RvX3BvcnQoZGV2X3ByaXYsIHBpcGVfY29uZmlnLT5j
cHVfdHJhbnNjb2Rlcik7Cj4gKwo+ICAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpCj4g
IAkJaWNlbGFrZV9nZXRfZGRpX3BsbChkZXZfcHJpdiwgcG9ydCwgcGlwZV9jb25maWcpOwo+ICAJ
ZWxzZSBpZiAoSVNfQ0FOTk9OTEFLRShkZXZfcHJpdikpCgotLSAKSmFuaSBOaWt1bGEsIEludGVs
IE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
