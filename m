Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 828DCDB96D
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2019 00:01:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FFD86EA1D;
	Thu, 17 Oct 2019 22:01:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D63076EA1D
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2019 22:01:28 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Oct 2019 15:01:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,309,1566889200"; d="scan'208";a="221541795"
Received: from jausmus-gentoo-dev6.jf.intel.com ([10.54.75.43])
 by fmsmga004.fm.intel.com with ESMTP; 17 Oct 2019 15:01:29 -0700
Date: Thu, 17 Oct 2019 15:02:29 -0700
From: James Ausmus <james.ausmus@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20191017220229.GC10747@jausmus-gentoo-dev6.jf.intel.com>
References: <20191015135013.10630-1-stanislav.lisovskiy@intel.com>
 <20191015135013.10630-3-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191015135013.10630-3-stanislav.lisovskiy@intel.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915: Restrict qgv points which
 don't have enough bandwidth.
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
Cc: intel-gfx@lists.freedesktop.org, martin.peres@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBPY3QgMTUsIDIwMTkgYXQgMDQ6NTA6MTNQTSArMDMwMCwgU3RhbmlzbGF2IExpc292
c2tpeSB3cm90ZToKPiBBY2NvcmRpbmcgdG8gQlNwZWMgNTM5OTgsIHdlIHNob3VsZCB0cnkgdG8K
PiByZXN0cmljdCBxZ3YgcG9pbnRzLCB3aGljaCBjYW4ndCBwcm92aWRlCj4gZW5vdWdoIGJhbmR3
aWR0aCBmb3IgZGVzaXJlZCBkaXNwbGF5IGNvbmZpZ3VyYXRpb24uCj4gCj4gQ3VycmVudGx5IHdl
IGFyZSBqdXN0IGNvbXBhcmluZyBhZ2FpbnN0IGFsbCBvZgo+IHRob3NlIGFuZCB0YWtlIG1pbmlt
dW0od29yc3QgY2FzZSkuCj4gCj4gdjI6IEZpeGVkIHdyb25nIFBDb2RlIHJlcGx5IG1hc2ssIHJl
bW92ZWQgaGFyZGNvZGVkCj4gICAgIHZhbHVlcy4KPiAKPiB2MzogRm9yYmlkIHNpbXVsdGFuZW91
cyBsZWdhY3kgU0FHViBQQ29kZSByZXF1ZXN0cyBhbmQKPiAgICAgcmVzdHJpY3RpbmcgcWd2IHBv
aW50cy4gUHV0IHRoZSBhY3R1YWwgcmVzdHJpY3Rpb24KPiAgICAgdG8gY29tbWl0IGZ1bmN0aW9u
LCBhZGRlZCBzZXJpYWxpemF0aW9uKHRoYW5rcyB0byBWaWxsZSkKPiAgICAgdG8gcHJldmVudCBj
b21taXQgYmVpbmcgYXBwbGllZCBvdXQgb2Ygb3JkZXIgaW4gY2FzZSBvZgo+ICAgICBub25ibG9j
a2luZyBhbmQvb3Igbm9tb2Rlc2V0IGNvbW1pdHMuCj4gCj4gdjQ6Cj4gICAgIC0gTWlub3IgY29k
ZSByZWZhY3RvcmluZywgZml4ZWQgZmV3IHR5cG9zKHRoYW5rcyB0byBKYW1lcyBBdXNtdXMpCj4g
ICAgIC0gQ2hhbmdlIHRoZSBuYW1pbmcgb2YgcWd2IHBvaW50Cj4gICAgICAgbWFza2luZy91bm1h
c2tpbmcgZnVuY3Rpb25zKEphbWVzIEF1c211cykuCj4gICAgIC0gU2ltcGxpZnkgdGhlIG1hc2tp
bmcvdW5tYXNraW5nIG9wZXJhdGlvbiBpdHNlbGYsCj4gICAgICAgYXMgd2UgZG9uJ3QgbmVlZCB0
byBtYXNrIG9ubHkgc2luZ2xlIHBvaW50IHBlciByZXF1ZXN0KEphbWVzIEF1c211cykKPiAgICAg
LSBSZWplY3QgYW5kIHN0aWNrIHRvIGhpZ2hlc3QgYmFuZHdpZHRoIHBvaW50IGlmIFNBR1YKPiAg
ICAgICBjYW4ndCBiZSBlbmFibGVkKEJTcGVjKQo+IAo+IFNpZ25lZC1vZmYtYnk6IFN0YW5pc2xh
diBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPgo+IENjOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAaW50ZWwuY29tPgo+IENjOiBKYW1lcyBBdXNtdXMgPGph
bWVzLmF1c211c0BpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYXRvbWljLmMgICB8ICAxNiArKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9hdG9taWMuaCAgIHwgICAzICsKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9idy5jICAgICAgIHwgMTA1ICsrKysrKysrKysrKysrLS0tLQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmggICAgICAgfCAgIDIgKwo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAgNTggKysrKysrKysrLQo+
ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgIDMgKwo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAgfCAgIDIgKwo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICAgfCAgIDMgKwo+
ICA4IGZpbGVzIGNoYW5nZWQsIDE2NiBpbnNlcnRpb25zKCspLCAyNiBkZWxldGlvbnMoLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMKPiBpbmRleCBj
NWE1NTJhNjk3NTIuLmIzZjRmMDJmMzgwYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9hdG9taWMuYwo+IEBAIC0yMDcsNiArMjA3LDIyIEBAIGludGVsX2NydGNf
ZHVwbGljYXRlX3N0YXRlKHN0cnVjdCBkcm1fY3J0YyAqY3J0YykKPiAgCXJldHVybiAmY3J0Y19z
dGF0ZS0+YmFzZTsKPiAgfQo+ICAKPiAraW50IGludGVsX2F0b21pY19zZXJpYWxpemVfZ2xvYmFs
X3N0YXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQo+ICt7Cj4gKwlzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KHN0YXRlLT5iYXNlLmRldik7Cj4g
KwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsKPiArCj4gKwlmb3JfZWFjaF9pbnRlbF9jcnRjKCZk
ZXZfcHJpdi0+ZHJtLCBjcnRjKSB7Cj4gKwkJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGU7Cj4gKwo+ICsJCWNydGNfc3RhdGUgPSBpbnRlbF9hdG9taWNfZ2V0X2NydGNfc3RhdGUo
JnN0YXRlLT5iYXNlLCBjcnRjKTsKPiArCQlpZiAoSVNfRVJSKGNydGNfc3RhdGUpKQo+ICsJCQly
ZXR1cm4gUFRSX0VSUihjcnRjX3N0YXRlKTsKPiArCX0KPiArCj4gKwlyZXR1cm4gMDsKPiArfQo+
ICsKPiAgLyoqCj4gICAqIGludGVsX2NydGNfZGVzdHJveV9zdGF0ZSAtIGRlc3Ryb3kgY3J0YyBz
dGF0ZQo+ICAgKiBAY3J0YzogZHJtIGNydGMKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYXRvbWljLmgKPiBpbmRleCA1ODA2NWQzMTYxYTMuLmZkMTdiM2NhMjU3ZiAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5oCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuaAo+IEBAIC03
LDYgKzcsNyBAQAo+ICAjZGVmaW5lIF9fSU5URUxfQVRPTUlDX0hfXwo+ICAKPiAgI2luY2x1ZGUg
PGxpbnV4L3R5cGVzLmg+Cj4gKyNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3R5cGVzLmgiCj4gIAo+
ICBzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZTsKPiAgc3RydWN0IGRybV9jb25uZWN0b3I7Cj4gQEAg
LTM4LDYgKzM5LDggQEAgdm9pZCBpbnRlbF9jcnRjX2Rlc3Ryb3lfc3RhdGUoc3RydWN0IGRybV9j
cnRjICpjcnRjLAo+ICBzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqaW50ZWxfYXRvbWljX3N0YXRl
X2FsbG9jKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpOwo+ICB2b2lkIGludGVsX2F0b21pY19zdGF0
ZV9jbGVhcihzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUpOwo+ICAKPiAraW50IGludGVs
X2F0b21pY19zZXJpYWxpemVfZ2xvYmFsX3N0YXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUg
KnN0YXRlKTsKPiArCj4gIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICoKPiAgaW50ZWxfYXRvbWlj
X2dldF9jcnRjX3N0YXRlKHN0cnVjdCBkcm1fYXRvbWljX3N0YXRlICpzdGF0ZSwKPiAgCQkJICAg
IHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9idy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9idy5jCj4gaW5kZXggMjJlODNmODU3ZGU4Li4wOWY3ODZjZmRmYWEgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jCj4gQEAgLTgsNiArOCw4IEBACj4gICNp
bmNsdWRlICJpbnRlbF9idy5oIgo+ICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV90eXBlcy5oIgo+
ICAjaW5jbHVkZSAiaW50ZWxfc2lkZWJhbmQuaCIKPiArI2luY2x1ZGUgImludGVsX2F0b21pYy5o
Igo+ICsjaW5jbHVkZSAiaW50ZWxfcG0uaCIKPiAgCj4gIC8qIFBhcmFtZXRlcnMgZm9yIFFjbGsg
R2V5c2VydmlsbGUgKFFHVikgKi8KPiAgc3RydWN0IGludGVsX3Fndl9wb2ludCB7Cj4gQEAgLTEx
Myw2ICsxMTUsMjcgQEAgc3RhdGljIGludCBpY2xfcGNvZGVfcmVhZF9xZ3ZfcG9pbnRfaW5mbyhz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gIAlyZXR1cm4gMDsKPiAgfQo+ICAK
PiAraW50IGljbF9wY29kZV9yZXN0cmljdF9xZ3ZfcG9pbnRzKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwKPiArCQkJCSAgdTMyIHBvaW50c19tYXNrKQo+ICt7Cj4gKwlpbnQgcmV0
Owo+ICsKPiArCS8qIGJzcGVjIHNheXMgdG8ga2VlcCByZXRyeWluZyBmb3IgYXQgbGVhc3QgMSBt
cyAqLwo+ICsJcmV0ID0gc2tsX3Bjb2RlX3JlcXVlc3QoZGV2X3ByaXYsIElDTF9QQ09ERV9TQUdW
X0RFX01FTV9TU19DT05GSUcsCj4gKwkJCQlwb2ludHNfbWFzaywKPiArCQkJCUdFTjExX1BDT0RF
X1BPSU5UU19SRVNUUklDVEVEX01BU0ssCj4gKwkJCQlHRU4xMV9QQ09ERV9QT0lOVFNfUkVTVFJJ
Q1RFRCwKPiArCQkJCTEpOwo+ICsKPiArCWlmIChyZXQgPCAwKSB7Cj4gKwkJRFJNX0VSUk9SKCJG
YWlsZWQgdG8gZGlzYWJsZSBxZ3YgcG9pbnRzICglZClcbiIsIHJldCk7CgpUaGlzIGNvdWxkIGFs
c28gYmUgZW5hYmxpbmcgcWd2IHBvaW50cywgc28gdGhpcyBtaWdodCBiZXR0ZXIgYmUgIkZhaWxl
ZAp0byBzZXQgcWd2IHBvaW50IG1hc2siLgoKPiArCQlyZXR1cm4gcmV0Owo+ICsJfQo+ICsKPiAr
CXJldHVybiAwOwo+ICt9Cj4gKwo+ICsKPiAgc3RhdGljIGludCBpY2xfZ2V0X3Fndl9wb2ludHMo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ICAJCQkgICAgICBzdHJ1Y3QgaW50
ZWxfcWd2X2luZm8gKnFpKQo+ICB7Cj4gQEAgLTI3MCwyMiArMjkzLDYgQEAgdm9pZCBpbnRlbF9i
d19pbml0X2h3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgCQlpY2xfZ2V0
X2J3X2luZm8oZGV2X3ByaXYsICZpY2xfc2FfaW5mbyk7Cj4gIH0KPiAgCj4gLXN0YXRpYyB1bnNp
Z25lZCBpbnQgaW50ZWxfbWF4X2RhdGFfcmF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsCj4gLQkJCQkJaW50IG51bV9wbGFuZXMpCj4gLXsKPiAtCWlmIChJTlRFTF9HRU4oZGV2
X3ByaXYpID49IDExKQo+IC0JCS8qCj4gLQkJICogRklYTUUgd2l0aCBTQUdWIGRpc2FibGVkIG1h
eWJlIHdlIGNhbiBhc3N1bWUKPiAtCQkgKiBwb2ludCAxIHdpbGwgYWx3YXlzIGJlIHVzZWQ/IFNl
ZW1zIHRvIG1hdGNoCj4gLQkJICogdGhlIGJlaGF2aW91ciBvYnNlcnZlZCBpbiB0aGUgd2lsZC4K
PiAtCQkgKi8KPiAtCQlyZXR1cm4gbWluMyhpY2xfbWF4X2J3KGRldl9wcml2LCBudW1fcGxhbmVz
LCAwKSwKPiAtCQkJICAgIGljbF9tYXhfYncoZGV2X3ByaXYsIG51bV9wbGFuZXMsIDEpLAo+IC0J
CQkgICAgaWNsX21heF9idyhkZXZfcHJpdiwgbnVtX3BsYW5lcywgMikpOwo+IC0JZWxzZQo+IC0J
CXJldHVybiBVSU5UX01BWDsKPiAtfQo+IC0KPiAgc3RhdGljIHVuc2lnbmVkIGludCBpbnRlbF9i
d19jcnRjX251bV9hY3RpdmVfcGxhbmVzKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlKQo+ICB7Cj4gIAkvKgo+IEBAIC0zNzcsNyArMzg0LDEwIEBAIGludCBpbnRlbF9i
d19hdG9taWNfY2hlY2soc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCj4gIAl1bnNp
Z25lZCBpbnQgZGF0YV9yYXRlLCBtYXhfZGF0YV9yYXRlOwo+ICAJdW5zaWduZWQgaW50IG51bV9h
Y3RpdmVfcGxhbmVzOwo+ICAJc3RydWN0IGludGVsX2NydGMgKmNydGM7Cj4gLQlpbnQgaTsKPiAr
CWludCBpLCByZXQ7Cj4gKwlzdHJ1Y3QgaW50ZWxfcWd2X2luZm8gcWkgPSB7fTsKPiArCXUzMiBh
bGxvd2VkX3BvaW50cyA9IDA7Cj4gKwl1bnNpZ25lZCBpbnQgbWF4X2J3X3BvaW50ID0gMCwgbWF4
X2J3ID0gMDsKPiAgCj4gIAkvKiBGSVhNRSBlYXJsaWVyIGdlbnMgbmVlZCBzb21lIGNoZWNrcyB0
b28gKi8KPiAgCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpIDwgMTEpCj4gQEAgLTQyMSwxNiArNDMx
LDY3IEBAIGludCBpbnRlbF9id19hdG9taWNfY2hlY2soc3RydWN0IGludGVsX2F0b21pY19zdGF0
ZSAqc3RhdGUpCj4gIAlkYXRhX3JhdGUgPSBpbnRlbF9id19kYXRhX3JhdGUoZGV2X3ByaXYsIGJ3
X3N0YXRlKTsKPiAgCW51bV9hY3RpdmVfcGxhbmVzID0gaW50ZWxfYndfbnVtX2FjdGl2ZV9wbGFu
ZXMoZGV2X3ByaXYsIGJ3X3N0YXRlKTsKPiAgCj4gLQltYXhfZGF0YV9yYXRlID0gaW50ZWxfbWF4
X2RhdGFfcmF0ZShkZXZfcHJpdiwgbnVtX2FjdGl2ZV9wbGFuZXMpOwo+IC0KPiAgCWRhdGFfcmF0
ZSA9IERJVl9ST1VORF9VUChkYXRhX3JhdGUsIDEwMDApOwo+ICAKPiAtCWlmIChkYXRhX3JhdGUg
PiBtYXhfZGF0YV9yYXRlKSB7Cj4gLQkJRFJNX0RFQlVHX0tNUygiQmFuZHdpZHRoICV1IE1CL3Mg
ZXhjZWVkcyBtYXggYXZhaWxhYmxlICVkIE1CL3MgKCVkIGFjdGl2ZSBwbGFuZXMpXG4iLAo+IC0J
CQkgICAgICBkYXRhX3JhdGUsIG1heF9kYXRhX3JhdGUsIG51bV9hY3RpdmVfcGxhbmVzKTsKPiAr
CXJldCA9IGljbF9nZXRfcWd2X3BvaW50cyhkZXZfcHJpdiwgJnFpKTsKPiArCWlmIChyZXQgPCAw
KQo+ICsJCXJldHVybiAwOwo+ICsKPiArCWZvciAoaSA9IDA7IGkgPCBxaS5udW1fcG9pbnRzOyBp
KyspIHsKPiArCQltYXhfZGF0YV9yYXRlID0gaWNsX21heF9idyhkZXZfcHJpdiwgbnVtX2FjdGl2
ZV9wbGFuZXMsIGkpOwo+ICsJCS8qCj4gKwkJICogV2UgbmVlZCB0byBrbm93IHdoaWNoIHFndiBw
b2ludCBnaXZlcyB1cwo+ICsJCSAqIG1heGltdW0gYmFuZHdpZHRoIGluIG9yZGVyIHRvIGRpc2Fi
bGUgU0FHVgo+ICsJCSAqIGlmIHdlIGZpbmQgdGhhdCB3ZSBleGNlZWQgU0FHViBibG9jayB0aW1l
Cj4gKwkJICogd2l0aCB3YXRlcm1hcmtzLiBCeSB0aGF0IG1vbWVudCB3ZSBhbHJlYWR5Cj4gKwkJ
ICogaGF2ZSB0aG9zZSwgYXMgaXQgaXMgY2FsY3VsYXRlZCBlYXJsaWVyIGluCj4gKwkJICogaW50
ZWxfYXRvbWljX2NoZWNrLAo+ICsJCSAqLwo+ICsJCWlmIChtYXhfZGF0YV9yYXRlID4gbWF4X2J3
KSB7Cj4gKwkJCW1heF9id19wb2ludCA9IGk7Cj4gKwkJCW1heF9idyA9IG1heF9kYXRhX3JhdGU7
Cj4gKwkJfQo+ICsJCWlmIChtYXhfZGF0YV9yYXRlID49IGRhdGFfcmF0ZSkKPiArCQkJYWxsb3dl
ZF9wb2ludHMgfD0gMSA8PCBpOwo+ICsJCURSTV9ERUJVR19LTVMoIlFHViBwb2ludCAlZDogbWF4
IGJ3ICVkIHJlcXVpcmVkICVkXG4iLAo+ICsJCQkgICAgICBpLCBtYXhfZGF0YV9yYXRlLCBkYXRh
X3JhdGUpOwo+ICsJfQo+ICsKPiArCS8qCj4gKwkgKiBCU3BlYyBzdGF0ZXMgdGhhdCB3ZSBhbHdh
eXMgc2hvdWxkIGhhdmUgYXQgbGVhc3Qgb25lIGFsbG93ZWQgcG9pbnQKPiArCSAqIGxlZnQsIHNv
IGlmIHdlIGNvdWxkbid0IC0gc2ltcGx5IHJlamVjdCB0aGUgY29uZmlndXJhdGlvbiBmb3Igb2J2
aW91cwo+ICsJICogcmVhc29ucy4KPiArCSAqLwo+ICsJaWYgKGFsbG93ZWRfcG9pbnRzID09IDAp
IHsKPiArCQlEUk1fREVCVUdfS01TKCJDb3VsZCBub3QgZmluZCBhbnkgc3VpdGFibGUgUUdWIHBv
aW50c1xuIik7Cj4gIAkJcmV0dXJuIC1FSU5WQUw7Cj4gIAl9Cj4gIAo+ICsJLyoKPiArCSAqIExl
YXZlIG9ubHkgc2luZ2xlIHBvaW50IHdpdGggaGlnaGVzdCBiYW5kd2lkdGgsIGlmCj4gKwkgKiB3
ZSBjYW4ndCBlbmFibGUgU0FHViBhY2NvcmRpbmcgdG8gQlNwZWMuCj4gKwkgKi8KPiArCWlmICgh
aW50ZWxfY2FuX2VuYWJsZV9zYWd2KHN0YXRlKSkKPiArCQlhbGxvd2VkX3BvaW50cyA9IDEgPDwg
bWF4X2J3X3BvaW50Owo+ICsKPiArCS8qCj4gKwkgKiBXZSBzdG9yZSB0aGUgb25lcyB3aGljaCBu
ZWVkIHRvIGJlIG1hc2tlZCBhcyB0aGF0IGlzIHdoYXQgUENvZGUKPiArCSAqIGFjdHVhbGx5IGFj
Y2VwdHMgYXMgYSBwYXJhbWV0ZXIuCj4gKwkgKi8KPiArCXN0YXRlLT5xZ3ZfcG9pbnRzX21hc2sg
PSAofmFsbG93ZWRfcG9pbnRzKSAmICgoMSA8PCBxaS5udW1fcG9pbnRzKSAtIDEpOwo+ICsKPiAr
CS8qCj4gKwkgKiBJZiB0aGUgYWN0dWFsIG1hc2sgaGFkIGNoYW5nZWQgd2UgbmVlZCB0byBtYWtl
IHN1cmUgdGhhdAo+ICsJICogdGhlIGNvbW1pdHMgYXJlIHNlcmlhbGl6ZWQoaW4gY2FzZSB0aGlz
IGlzIGEgbm9tb2Rlc2V0LCBub25ibG9ja2luZykKPiArCSAqLwo+ICsJaWYgKHN0YXRlLT5xZ3Zf
cG9pbnRzX21hc2sgIT0gZGV2X3ByaXYtPnFndl9wb2ludHNfbWFzaykgewo+ICsJCXJldCA9IGlu
dGVsX2F0b21pY19zZXJpYWxpemVfZ2xvYmFsX3N0YXRlKHN0YXRlKTsKPiArCQlpZiAocmV0KSB7
Cj4gKwkJCURSTV9ERUJVR19LTVMoIkNvdWxkIG5vdCBzZXJpYWxpemUgZ2xvYmFsIHN0YXRlXG4i
KTsKPiArCQkJcmV0dXJuIHJldDsKPiArCQl9Cj4gKwl9Cj4gKwo+ICAJcmV0dXJuIDA7Cj4gIH0K
PiAgCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncu
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuaAo+IGluZGV4IDlkYjEw
YWYwMTJmNC4uNjZiZjliYzEwYjczIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYncuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYncuaAo+IEBAIC0yOCw1ICsyOCw3IEBAIGludCBpbnRlbF9id19pbml0KHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7Cj4gIGludCBpbnRlbF9id19hdG9taWNfY2hlY2so
c3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpOwo+ICB2b2lkIGludGVsX2J3X2NydGNf
dXBkYXRlKHN0cnVjdCBpbnRlbF9id19zdGF0ZSAqYndfc3RhdGUsCj4gIAkJCSAgY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOwo+ICtpbnQgaWNsX3Bjb2RlX3Jlc3Ry
aWN0X3Fndl9wb2ludHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ICsJCQkJ
ICB1MzIgcG9pbnRzX21hc2spOwo+ICAKPiAgI2VuZGlmIC8qIF9fSU5URUxfQldfSF9fICovCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBpbmRleCBh
ODE2OGUyYWFjZDUuLjRhYWY2Njk1NTE0OSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gQEAgLTE0MDAzLDYgKzE0MDAzLDQ4IEBAIHN0YXRp
YyB2b2lkIGludGVsX2F0b21pY19jbGVhbnVwX3dvcmsoc3RydWN0IHdvcmtfc3RydWN0ICp3b3Jr
KQo+ICAJaW50ZWxfYXRvbWljX2hlbHBlcl9mcmVlX3N0YXRlKGk5MTUpOwo+ICB9Cj4gIAo+ICtz
dGF0aWMgdm9pZCBpbnRlbF9xZ3ZfcG9pbnRzX21hc2soc3RydWN0IGludGVsX2F0b21pY19zdGF0
ZSAqc3RhdGUpCj4gK3sKPiArCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBzdGF0ZS0+YmFzZS5k
ZXY7Cj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRldik7
Cj4gKwlpbnQgcmV0Owo+ICsJdTMyIG5ld19tYXNrID0gZGV2X3ByaXYtPnFndl9wb2ludHNfbWFz
ayB8IHN0YXRlLT5xZ3ZfcG9pbnRzX21hc2s7Cj4gKwo+ICsJLyoKPiArCSAqIFJlc3RyaWN0IHJl
cXVpcmVkIHFndiBwb2ludHMgYmVmb3JlIHVwZGF0aW5nIHRoZSBjb25maWd1cmF0aW9uLgo+ICsJ
ICogQWNjb3JkaW5nIHRvIEJTcGVjIHdlIGNhbid0IG1hc2sgYW5kIHVubWFzayBxZ3YgcG9pbnRz
IGF0IHRoZSBzYW1lCj4gKwkgKiB0aW1lLiBBbHNvIG1hc2tpbmcgc2hvdWxkIGJlIGRvbmUgYmVm
b3JlIHVwZGF0aW5nIHRoZSBjb25maWd1cmF0aW9uCj4gKwkgKiBhbmQgdW5tYXNraW5nIGFmdGVy
d2FyZHMuCj4gKwkgKi8KPiArCXJldCA9IGljbF9wY29kZV9yZXN0cmljdF9xZ3ZfcG9pbnRzKGRl
dl9wcml2LCBuZXdfbWFzayk7Cj4gKwlpZiAocmV0IDwgMCkKPiArCQlEUk1fREVCVUdfS01TKCJD
b3VsZCBub3QgcmVzdHJpY3QgcmVxdWlyZWQgcWd2IHBvaW50cyglZClcbiIsCgpOaXQ6ICJDb3Vs
ZCBub3QgbWFzayB1bnVzYWJsZSBxZ3YgcG9pbnRzIgoKPiArCQkJICAgICAgcmV0KTsKPiArCWVs
c2UKPiArCQlkZXZfcHJpdi0+cWd2X3BvaW50c19tYXNrID0gbmV3X21hc2s7Cj4gK30KPiArCj4g
K3N0YXRpYyB2b2lkIGludGVsX3Fndl9wb2ludHNfdW5tYXNrKHN0cnVjdCBpbnRlbF9hdG9taWNf
c3RhdGUgKnN0YXRlKQo+ICt7Cj4gKwlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gc3RhdGUtPmJh
c2UuZGV2Owo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShk
ZXYpOwo+ICsJaW50IHJldDsKPiArCXUzMiBuZXdfbWFzayA9IGRldl9wcml2LT5xZ3ZfcG9pbnRz
X21hc2sgJiBzdGF0ZS0+cWd2X3BvaW50c19tYXNrOwo+ICsKPiArCS8qCj4gKwkgKiBBbGxvdyBy
ZXF1aXJlZCBxZ3YgcG9pbnRzIGFmdGVyIHVwZGF0aW5nIHRoZSBjb25maWd1cmF0aW9uLgo+ICsJ
ICogQWNjb3JkaW5nIHRvIEJTcGVjIHdlIGNhbid0IG1hc2sgYW5kIHVubWFzayBxZ3YgcG9pbnRz
IGF0IHRoZSBzYW1lCj4gKwkgKiB0aW1lLiBBbHNvIG1hc2tpbmcgc2hvdWxkIGJlIGRvbmUgYmVm
b3JlIHVwZGF0aW5nIHRoZSBjb25maWd1cmF0aW9uCj4gKwkgKiBhbmQgdW5tYXNraW5nIGFmdGVy
d2FyZHMuCj4gKwkgKi8KPiArCXJldCA9IGljbF9wY29kZV9yZXN0cmljdF9xZ3ZfcG9pbnRzKGRl
dl9wcml2LCBuZXdfbWFzayk7Cj4gKwlpZiAocmV0IDwgMCkKPiArCQlEUk1fREVCVUdfS01TKCJD
b3VsZCBub3QgcmVzdHJpY3QgcmVxdWlyZWQgcWd2IHBvaW50cyglZClcbiIsCgpOaXQ6ICJDb3Vs
ZCBub3QgdW5tYXNrIGFsbG93ZWQgcWd2IHBvaW50cyIKCldpdGggdGhvc2U6CgpSZXZpZXdlZC1i
eTogSmFtZXMgQXVzbXVzIDxqYW1lcy5hdXNtdXNAaW50ZWwuY29tPgoKPiArCQkJICAgICAgcmV0
KTsKPiArCWVsc2UKPiArCQlkZXZfcHJpdi0+cWd2X3BvaW50c19tYXNrID0gbmV3X21hc2s7Cj4g
K30KPiArCj4gIHN0YXRpYyB2b2lkIGludGVsX2F0b21pY19jb21taXRfdGFpbChzdHJ1Y3QgaW50
ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKPiAgewo+ICAJc3RydWN0IGRybV9kZXZpY2UgKmRldiA9
IHN0YXRlLT5iYXNlLmRldjsKPiBAQCAtMTQwMzAsNiArMTQwNzIsOSBAQCBzdGF0aWMgdm9pZCBp
bnRlbF9hdG9taWNfY29tbWl0X3RhaWwoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUp
Cj4gIAkJfQo+ICAJfQo+ICAKPiArCWlmICgoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkpCj4g
KwkJaW50ZWxfcWd2X3BvaW50c19tYXNrKHN0YXRlKTsKPiArCj4gIAlpbnRlbF9jb21taXRfbW9k
ZXNldF9kaXNhYmxlcyhzdGF0ZSk7Cj4gIAo+ICAJLyogRklYTUU6IEV2ZW50dWFsbHkgZ2V0IHJp
ZCBvZiBvdXIgY3J0Yy0+Y29uZmlnIHBvaW50ZXIgKi8KPiBAQCAtMTQwNDgsOCArMTQwOTMsOSBA
QCBzdGF0aWMgdm9pZCBpbnRlbF9hdG9taWNfY29tbWl0X3RhaWwoc3RydWN0IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUpCj4gIAkJICogU0tMIHdvcmthcm91bmQ6IGJzcGVjIHJlY29tbWVuZHMg
d2UgZGlzYWJsZSB0aGUgU0FHViB3aGVuIHdlCj4gIAkJICogaGF2ZSBtb3JlIHRoZW4gb25lIHBp
cGUgZW5hYmxlZAo+ICAJCSAqLwo+IC0JCWlmICghaW50ZWxfY2FuX2VuYWJsZV9zYWd2KHN0YXRl
KSkKPiAtCQkJaW50ZWxfZGlzYWJsZV9zYWd2KGRldl9wcml2KTsKPiArCQlpZiAoSU5URUxfR0VO
KGRldl9wcml2KSA8IDExKQo+ICsJCQlpZiAoIWludGVsX2Nhbl9lbmFibGVfc2FndihzdGF0ZSkp
Cj4gKwkJCQlpbnRlbF9kaXNhYmxlX3NhZ3YoZGV2X3ByaXYpOwo+ICAKPiAgCQlpbnRlbF9tb2Rl
c2V0X3ZlcmlmeV9kaXNhYmxlZChkZXZfcHJpdiwgc3RhdGUpOwo+ICAJfQo+IEBAIC0xNDEyNyw4
ICsxNDE3MywxMiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9hdG9taWNfY29tbWl0X3RhaWwoc3RydWN0
IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCj4gIAlpZiAoc3RhdGUtPm1vZGVzZXQpCj4gIAkJ
aW50ZWxfdmVyaWZ5X3BsYW5lcyhzdGF0ZSk7Cj4gIAo+IC0JaWYgKHN0YXRlLT5tb2Rlc2V0ICYm
IGludGVsX2Nhbl9lbmFibGVfc2FndihzdGF0ZSkpCj4gLQkJaW50ZWxfZW5hYmxlX3NhZ3YoZGV2
X3ByaXYpOwo+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPCAxMSkgewo+ICsJCWlmIChzdGF0
ZS0+bW9kZXNldCAmJiBpbnRlbF9jYW5fZW5hYmxlX3NhZ3Yoc3RhdGUpKQo+ICsJCQlpbnRlbF9l
bmFibGVfc2FndihkZXZfcHJpdik7Cj4gKwl9Cj4gKwllbHNlCj4gKwkJaW50ZWxfcWd2X3BvaW50
c191bm1hc2soc3RhdGUpOwo+ICAKPiAgCWRybV9hdG9taWNfaGVscGVyX2NvbW1pdF9od19kb25l
KCZzdGF0ZS0+YmFzZSk7Cj4gIAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCj4gaW5kZXggNDAzOTBkODU1ODE1Li44NzUwYTM0YzNl
MjggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3R5cGVzLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfdHlwZXMuaAo+IEBAIC01MTIsNiArNTEyLDkgQEAgc3RydWN0IGludGVsX2F0b21pY19z
dGF0ZSB7Cj4gIAlzdHJ1Y3QgaTkxNV9zd19mZW5jZSBjb21taXRfcmVhZHk7Cj4gIAo+ICAJc3Ry
dWN0IGxsaXN0X25vZGUgZnJlZWQ7Cj4gKwo+ICsJLyogR2VuMTErIG9ubHkgKi8KPiArCXUzMiBx
Z3ZfcG9pbnRzX21hc2s7Cj4gIH07Cj4gIAo+ICBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgewo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+IGluZGV4IGM0NmIzMzkwNjRjMC4uMGIxYjY0MWEyODBm
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gQEAgLTEzMzUsNiArMTMzNSw4IEBAIHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlIHsKPiAgCQl1OCBudW1fcGxhbmVzOwo+ICAJfSBtYXhfYndb
Nl07Cj4gIAo+ICsJdTMyIHFndl9wb2ludHNfbWFzazsKPiArCj4gIAlzdHJ1Y3QgZHJtX3ByaXZh
dGVfb2JqIGJ3X29iajsKPiAgCj4gIAlzdHJ1Y3QgaW50ZWxfcnVudGltZV9wbSBydW50aW1lX3Bt
Owo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+IGluZGV4IGUyNDk5MWU1NDg5Ny4uMWYzNDAyNTQ3
YmE1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gQEAgLTg4NjksNiArODg2OSw3IEBA
IGVudW0gewo+ICAjZGVmaW5lICAgSUNMX1BDT0RFX01FTV9TVUJTWVNZU1RFTV9JTkZPCTB4ZAo+
ICAjZGVmaW5lICAgICBJQ0xfUENPREVfTUVNX1NTX1JFQURfR0xPQkFMX0lORk8JKDB4MCA8PCA4
KQo+ICAjZGVmaW5lICAgICBJQ0xfUENPREVfTUVNX1NTX1JFQURfUUdWX1BPSU5UX0lORk8ocG9p
bnQpCSgoKHBvaW50KSA8PCAxNikgfCAoMHgxIDw8IDgpKQo+ICsjZGVmaW5lICAgSUNMX1BDT0RF
X1NBR1ZfREVfTUVNX1NTX0NPTkZJRwkweGUKPiAgI2RlZmluZSAgIEdFTjZfUENPREVfUkVBRF9E
X0NPTVAJCTB4MTAKPiAgI2RlZmluZSAgIEdFTjZfUENPREVfV1JJVEVfRF9DT01QCQkweDExCj4g
ICNkZWZpbmUgICBIU1dfUENPREVfREVfV1JJVEVfRlJFUV9SRVEJCTB4MTcKPiBAQCAtODg4MSw2
ICs4ODgyLDggQEAgZW51bSB7Cj4gICNkZWZpbmUgICAgIEdFTjlfU0FHVl9JU19ESVNBQkxFRAkJ
MHgxCj4gICNkZWZpbmUgICAgIEdFTjlfU0FHVl9FTkFCTEUJCQkweDMKPiAgI2RlZmluZSBHRU4x
Ml9QQ09ERV9SRUFEX1NBR1ZfQkxPQ0tfVElNRV9VUwkweDIzCj4gKyNkZWZpbmUgR0VOMTFfUENP
REVfUE9JTlRTX1JFU1RSSUNURUQJCTB4MAo+ICsjZGVmaW5lIEdFTjExX1BDT0RFX1BPSU5UU19S
RVNUUklDVEVEX01BU0sJMHgxCj4gICNkZWZpbmUgR0VONl9QQ09ERV9EQVRBCQkJCV9NTUlPKDB4
MTM4MTI4KQo+ICAjZGVmaW5lICAgR0VONl9QQ09ERV9GUkVRX0lBX1JBVElPX1NISUZUCTgKPiAg
I2RlZmluZSAgIEdFTjZfUENPREVfRlJFUV9SSU5HX1JBVElPX1NISUZUCTE2Cj4gLS0gCj4gMi4x
Ny4xCj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
