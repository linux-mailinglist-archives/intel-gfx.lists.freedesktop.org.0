Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DEB4E8DB5
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 18:10:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCFF16E49B;
	Tue, 29 Oct 2019 17:10:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D66956E46D
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 17:10:22 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 10:10:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,244,1569308400"; d="scan'208";a="211141048"
Received: from jausmus-gentoo-dev6.jf.intel.com ([10.54.75.43])
 by fmsmga001.fm.intel.com with ESMTP; 29 Oct 2019 10:10:21 -0700
Date: Tue, 29 Oct 2019 10:11:36 -0700
From: James Ausmus <james.ausmus@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20191029171136.GA16742@jausmus-gentoo-dev6.jf.intel.com>
References: <20191029161226.6409-1-stanislav.lisovskiy@intel.com>
 <20191029161226.6409-3-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029161226.6409-3-stanislav.lisovskiy@intel.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
Subject: Re: [Intel-gfx] [PATCH v9 2/2] drm/i915: Restrict qgv points which
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBPY3QgMjksIDIwMTkgYXQgMDY6MTI6MjZQTSArMDIwMCwgU3RhbmlzbGF2IExpc292
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
ICAgICBjYW4ndCBiZSBlbmFibGVkKEJTcGVjKQo+IAo+IHY1Ogo+ICAgICAtIEFkZCBuZXcgbWFp
bGJveCByZXBseSBjb2Rlcywgd2hpY2ggc2VlbXMgdG8gaGFwcGVuIGR1cmluZyBib290Cj4gICAg
ICAgdGltZSBmb3IgVEdMIGFuZCBpbmRpY2F0ZSB0aGF0IFFHViBzZXR0aW5nIGlzIG5vdCB5ZXQg
YXZhaWxhYmxlLgo+IAo+IHY2Ogo+ICAgICAtIEluY3JlYXNlIG51bWJlciBvZiBzdXBwb3J0ZWQg
UUdWIHBvaW50cyB0byBiZSBpbiBzeW5jIHdpdGggQlNwZWMuCj4gCj4gUmV2aWV3ZWQtYnk6IEph
bWVzIEF1c211cyA8amFtZXMuYXVzbXVzQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBTdGFu
aXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4KPiBDYzogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGludGVsLmNvbT4KPiBDYzogSmFtZXMgQXVzbXVz
IDxqYW1lcy5hdXNtdXNAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2F0b21pYy5jICAgfCAgMTYgKysrCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmggICB8ICAgMyArCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYncuYyAgICAgICB8IDExMSArKysrKysrKysrKysrKy0tLS0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5oICAgICAgIHwgICAyICsKPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgIDU3ICsrKysrKysr
LQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgIDMg
Kwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAgfCAgIDIg
Kwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICAgfCAgIDUg
Kwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zaWRlYmFuZC5jICAgICAgICAgfCAgMjcg
KysrKy0KPiAgOSBmaWxlcyBjaGFuZ2VkLCAxOTggaW5zZXJ0aW9ucygrKSwgMjggZGVsZXRpb25z
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
YXRvbWljLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jCj4g
aW5kZXggYzVhNTUyYTY5NzUyLi5iM2Y0ZjAyZjM4MGIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMKPiBAQCAtMjA3LDYgKzIwNywyMiBAQCBpbnRl
bF9jcnRjX2R1cGxpY2F0ZV9zdGF0ZShzdHJ1Y3QgZHJtX2NydGMgKmNydGMpCj4gIAlyZXR1cm4g
JmNydGNfc3RhdGUtPmJhc2U7Cj4gIH0KPiAgCj4gK2ludCBpbnRlbF9hdG9taWNfc2VyaWFsaXpl
X2dsb2JhbF9zdGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKPiArewo+ICsJ
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShzdGF0ZS0+YmFzZS5k
ZXYpOwo+ICsJc3RydWN0IGludGVsX2NydGMgKmNydGM7Cj4gKwo+ICsJZm9yX2VhY2hfaW50ZWxf
Y3J0YygmZGV2X3ByaXYtPmRybSwgY3J0Yykgewo+ICsJCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlOwo+ICsKPiArCQljcnRjX3N0YXRlID0gaW50ZWxfYXRvbWljX2dldF9jcnRj
X3N0YXRlKCZzdGF0ZS0+YmFzZSwgY3J0Yyk7Cj4gKwkJaWYgKElTX0VSUihjcnRjX3N0YXRlKSkK
PiArCQkJcmV0dXJuIFBUUl9FUlIoY3J0Y19zdGF0ZSk7Cj4gKwl9Cj4gKwo+ICsJcmV0dXJuIDA7
Cj4gK30KPiArCj4gIC8qKgo+ICAgKiBpbnRlbF9jcnRjX2Rlc3Ryb3lfc3RhdGUgLSBkZXN0cm95
IGNydGMgc3RhdGUKPiAgICogQGNydGM6IGRybSBjcnRjCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2F0b21pYy5oCj4gaW5kZXggNTgwNjVkMzE2MWEzLi5mZDE3YjNjYTI1
N2YgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9t
aWMuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmgK
PiBAQCAtNyw2ICs3LDcgQEAKPiAgI2RlZmluZSBfX0lOVEVMX0FUT01JQ19IX18KPiAgCj4gICNp
bmNsdWRlIDxsaW51eC90eXBlcy5oPgo+ICsjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV90eXBlcy5o
Igo+ICAKPiAgc3RydWN0IGRybV9hdG9taWNfc3RhdGU7Cj4gIHN0cnVjdCBkcm1fY29ubmVjdG9y
Owo+IEBAIC0zOCw2ICszOSw4IEBAIHZvaWQgaW50ZWxfY3J0Y19kZXN0cm95X3N0YXRlKHN0cnVj
dCBkcm1fY3J0YyAqY3J0YywKPiAgc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKmludGVsX2F0b21p
Y19zdGF0ZV9hbGxvYyhzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KTsKPiAgdm9pZCBpbnRlbF9hdG9t
aWNfc3RhdGVfY2xlYXIoc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRlKTsKPiAgCj4gK2lu
dCBpbnRlbF9hdG9taWNfc2VyaWFsaXplX2dsb2JhbF9zdGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWlj
X3N0YXRlICpzdGF0ZSk7Cj4gKwo+ICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqCj4gIGludGVs
X2F0b21pY19nZXRfY3J0Y19zdGF0ZShzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUsCj4g
IAkJCSAgICBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYncuYwo+IGluZGV4IDIyZTgzZjg1N2RlOC4uNjAyNDlkOTc3NmQxIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYwo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYwo+IEBAIC04LDE0ICs4LDIw
IEBACj4gICNpbmNsdWRlICJpbnRlbF9idy5oIgo+ICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV90
eXBlcy5oIgo+ICAjaW5jbHVkZSAiaW50ZWxfc2lkZWJhbmQuaCIKPiArI2luY2x1ZGUgImludGVs
X2F0b21pYy5oIgo+ICsjaW5jbHVkZSAiaW50ZWxfcG0uaCIKPiAgCj4gIC8qIFBhcmFtZXRlcnMg
Zm9yIFFjbGsgR2V5c2VydmlsbGUgKFFHVikgKi8KPiAgc3RydWN0IGludGVsX3Fndl9wb2ludCB7
Cj4gIAl1MTYgZGNsaywgdF9ycCwgdF9yZHByZSwgdF9yYywgdF9yYXMsIHRfcmNkOwo+ICB9Owo+
ICAKPiArCj4gKy8qIEJTcGVjIHByZWNpc2VseSBkZWZpbmVzIHRoaXMgKi8KPiArI2RlZmluZSBO
VU1fU0FHVl9QT0lOVFMgNAoKQXMgbm90ZWQgYmVmb3JlLCB0aGlzIHNob3VsZCBiZSA4LCBhbmQg
c2hvdWxkIGJlIGRlZmluZWQgaW4gdGhlIC5oIGZpbGUuCgpXaXRoIHRoYXQgYWRkcmVzc2VkLCBt
eSBSLWIgc3RpY2tzIGZvciB0aGlzIHZlcnNpb24uCgpUaGFua3MhCgotSmFtZXMKCj4gKwo+ICBz
dHJ1Y3QgaW50ZWxfcWd2X2luZm8gewo+IC0Jc3RydWN0IGludGVsX3Fndl9wb2ludCBwb2ludHNb
M107Cj4gKwlzdHJ1Y3QgaW50ZWxfcWd2X3BvaW50IHBvaW50c1tOVU1fU0FHVl9QT0lOVFNdOwo+
ICAJdTggbnVtX3BvaW50czsKPiAgCXU4IG51bV9jaGFubmVsczsKPiAgCXU4IHRfYmw7Cj4gQEAg
LTExMyw2ICsxMTksMjcgQEAgc3RhdGljIGludCBpY2xfcGNvZGVfcmVhZF9xZ3ZfcG9pbnRfaW5m
byhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gIAlyZXR1cm4gMDsKPiAgfQo+
ICAKPiAraW50IGljbF9wY29kZV9yZXN0cmljdF9xZ3ZfcG9pbnRzKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiwKPiArCQkJCSAgdTMyIHBvaW50c19tYXNrKQo+ICt7Cj4gKwlpbnQg
cmV0Owo+ICsKPiArCS8qIGJzcGVjIHNheXMgdG8ga2VlcCByZXRyeWluZyBmb3IgYXQgbGVhc3Qg
MSBtcyAqLwo+ICsJcmV0ID0gc2tsX3Bjb2RlX3JlcXVlc3QoZGV2X3ByaXYsIElDTF9QQ09ERV9T
QUdWX0RFX01FTV9TU19DT05GSUcsCj4gKwkJCQlwb2ludHNfbWFzaywKPiArCQkJCUdFTjExX1BD
T0RFX1BPSU5UU19SRVNUUklDVEVEX01BU0ssCj4gKwkJCQlHRU4xMV9QQ09ERV9QT0lOVFNfUkVT
VFJJQ1RFRCwKPiArCQkJCTEpOwo+ICsKPiArCWlmIChyZXQgPCAwKSB7Cj4gKwkJRFJNX0VSUk9S
KCJGYWlsZWQgdG8gZGlzYWJsZSBxZ3YgcG9pbnRzICglZClcbiIsIHJldCk7Cj4gKwkJcmV0dXJu
IHJldDsKPiArCX0KPiArCj4gKwlyZXR1cm4gMDsKPiArfQo+ICsKPiArCj4gIHN0YXRpYyBpbnQg
aWNsX2dldF9xZ3ZfcG9pbnRzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAg
CQkJICAgICAgc3RydWN0IGludGVsX3Fndl9pbmZvICpxaSkKPiAgewo+IEBAIC0yNzAsMjIgKzI5
Nyw2IEBAIHZvaWQgaW50ZWxfYndfaW5pdF9odyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYpCj4gIAkJaWNsX2dldF9id19pbmZvKGRldl9wcml2LCAmaWNsX3NhX2luZm8pOwo+ICB9
Cj4gIAo+IC1zdGF0aWMgdW5zaWduZWQgaW50IGludGVsX21heF9kYXRhX3JhdGUoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+IC0JCQkJCWludCBudW1fcGxhbmVzKQo+IC17Cj4g
LQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkKPiAtCQkvKgo+IC0JCSAqIEZJWE1FIHdp
dGggU0FHViBkaXNhYmxlZCBtYXliZSB3ZSBjYW4gYXNzdW1lCj4gLQkJICogcG9pbnQgMSB3aWxs
IGFsd2F5cyBiZSB1c2VkPyBTZWVtcyB0byBtYXRjaAo+IC0JCSAqIHRoZSBiZWhhdmlvdXIgb2Jz
ZXJ2ZWQgaW4gdGhlIHdpbGQuCj4gLQkJICovCj4gLQkJcmV0dXJuIG1pbjMoaWNsX21heF9idyhk
ZXZfcHJpdiwgbnVtX3BsYW5lcywgMCksCj4gLQkJCSAgICBpY2xfbWF4X2J3KGRldl9wcml2LCBu
dW1fcGxhbmVzLCAxKSwKPiAtCQkJICAgIGljbF9tYXhfYncoZGV2X3ByaXYsIG51bV9wbGFuZXMs
IDIpKTsKPiAtCWVsc2UKPiAtCQlyZXR1cm4gVUlOVF9NQVg7Cj4gLX0KPiAtCj4gIHN0YXRpYyB1
bnNpZ25lZCBpbnQgaW50ZWxfYndfY3J0Y19udW1fYWN0aXZlX3BsYW5lcyhjb25zdCBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiAgewo+ICAJLyoKPiBAQCAtMzc3LDcgKzM4
OCwxMCBAQCBpbnQgaW50ZWxfYndfYXRvbWljX2NoZWNrKHN0cnVjdCBpbnRlbF9hdG9taWNfc3Rh
dGUgKnN0YXRlKQo+ICAJdW5zaWduZWQgaW50IGRhdGFfcmF0ZSwgbWF4X2RhdGFfcmF0ZTsKPiAg
CXVuc2lnbmVkIGludCBudW1fYWN0aXZlX3BsYW5lczsKPiAgCXN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjOwo+IC0JaW50IGk7Cj4gKwlpbnQgaSwgcmV0Owo+ICsJc3RydWN0IGludGVsX3Fndl9pbmZv
IHFpID0ge307Cj4gKwl1MzIgYWxsb3dlZF9wb2ludHMgPSAwOwo+ICsJdW5zaWduZWQgaW50IG1h
eF9id19wb2ludCA9IDAsIG1heF9idyA9IDA7Cj4gIAo+ICAJLyogRklYTUUgZWFybGllciBnZW5z
IG5lZWQgc29tZSBjaGVja3MgdG9vICovCj4gIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA8IDEx
KQo+IEBAIC00MjEsMTYgKzQzNSw2NyBAQCBpbnQgaW50ZWxfYndfYXRvbWljX2NoZWNrKHN0cnVj
dCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQo+ICAJZGF0YV9yYXRlID0gaW50ZWxfYndfZGF0
YV9yYXRlKGRldl9wcml2LCBid19zdGF0ZSk7Cj4gIAludW1fYWN0aXZlX3BsYW5lcyA9IGludGVs
X2J3X251bV9hY3RpdmVfcGxhbmVzKGRldl9wcml2LCBid19zdGF0ZSk7Cj4gIAo+IC0JbWF4X2Rh
dGFfcmF0ZSA9IGludGVsX21heF9kYXRhX3JhdGUoZGV2X3ByaXYsIG51bV9hY3RpdmVfcGxhbmVz
KTsKPiAtCj4gIAlkYXRhX3JhdGUgPSBESVZfUk9VTkRfVVAoZGF0YV9yYXRlLCAxMDAwKTsKPiAg
Cj4gLQlpZiAoZGF0YV9yYXRlID4gbWF4X2RhdGFfcmF0ZSkgewo+IC0JCURSTV9ERUJVR19LTVMo
IkJhbmR3aWR0aCAldSBNQi9zIGV4Y2VlZHMgbWF4IGF2YWlsYWJsZSAlZCBNQi9zICglZCBhY3Rp
dmUgcGxhbmVzKVxuIiwKPiAtCQkJICAgICAgZGF0YV9yYXRlLCBtYXhfZGF0YV9yYXRlLCBudW1f
YWN0aXZlX3BsYW5lcyk7Cj4gKwlyZXQgPSBpY2xfZ2V0X3Fndl9wb2ludHMoZGV2X3ByaXYsICZx
aSk7Cj4gKwlpZiAocmV0IDwgMCkKPiArCQlyZXR1cm4gMDsKPiArCj4gKwlmb3IgKGkgPSAwOyBp
IDwgcWkubnVtX3BvaW50czsgaSsrKSB7Cj4gKwkJbWF4X2RhdGFfcmF0ZSA9IGljbF9tYXhfYnco
ZGV2X3ByaXYsIG51bV9hY3RpdmVfcGxhbmVzLCBpKTsKPiArCQkvKgo+ICsJCSAqIFdlIG5lZWQg
dG8ga25vdyB3aGljaCBxZ3YgcG9pbnQgZ2l2ZXMgdXMKPiArCQkgKiBtYXhpbXVtIGJhbmR3aWR0
aCBpbiBvcmRlciB0byBkaXNhYmxlIFNBR1YKPiArCQkgKiBpZiB3ZSBmaW5kIHRoYXQgd2UgZXhj
ZWVkIFNBR1YgYmxvY2sgdGltZQo+ICsJCSAqIHdpdGggd2F0ZXJtYXJrcy4gQnkgdGhhdCBtb21l
bnQgd2UgYWxyZWFkeQo+ICsJCSAqIGhhdmUgdGhvc2UsIGFzIGl0IGlzIGNhbGN1bGF0ZWQgZWFy
bGllciBpbgo+ICsJCSAqIGludGVsX2F0b21pY19jaGVjaywKPiArCQkgKi8KPiArCQlpZiAobWF4
X2RhdGFfcmF0ZSA+IG1heF9idykgewo+ICsJCQltYXhfYndfcG9pbnQgPSBpOwo+ICsJCQltYXhf
YncgPSBtYXhfZGF0YV9yYXRlOwo+ICsJCX0KPiArCQlpZiAobWF4X2RhdGFfcmF0ZSA+PSBkYXRh
X3JhdGUpCj4gKwkJCWFsbG93ZWRfcG9pbnRzIHw9IDEgPDwgaTsKPiArCQlEUk1fREVCVUdfS01T
KCJRR1YgcG9pbnQgJWQ6IG1heCBidyAlZCByZXF1aXJlZCAlZFxuIiwKPiArCQkJICAgICAgaSwg
bWF4X2RhdGFfcmF0ZSwgZGF0YV9yYXRlKTsKPiArCX0KPiArCj4gKwkvKgo+ICsJICogQlNwZWMg
c3RhdGVzIHRoYXQgd2UgYWx3YXlzIHNob3VsZCBoYXZlIGF0IGxlYXN0IG9uZSBhbGxvd2VkIHBv
aW50Cj4gKwkgKiBsZWZ0LCBzbyBpZiB3ZSBjb3VsZG4ndCAtIHNpbXBseSByZWplY3QgdGhlIGNv
bmZpZ3VyYXRpb24gZm9yIG9idmlvdXMKPiArCSAqIHJlYXNvbnMuCj4gKwkgKi8KPiArCWlmIChh
bGxvd2VkX3BvaW50cyA9PSAwKSB7Cj4gKwkJRFJNX0RFQlVHX0tNUygiQ291bGQgbm90IGZpbmQg
YW55IHN1aXRhYmxlIFFHViBwb2ludHNcbiIpOwo+ICAJCXJldHVybiAtRUlOVkFMOwo+ICAJfQo+
ICAKPiArCS8qCj4gKwkgKiBMZWF2ZSBvbmx5IHNpbmdsZSBwb2ludCB3aXRoIGhpZ2hlc3QgYmFu
ZHdpZHRoLCBpZgo+ICsJICogd2UgY2FuJ3QgZW5hYmxlIFNBR1YgYWNjb3JkaW5nIHRvIEJTcGVj
Lgo+ICsJICovCj4gKwlpZiAoIWludGVsX2Nhbl9lbmFibGVfc2FndihzdGF0ZSkpCj4gKwkJYWxs
b3dlZF9wb2ludHMgPSAxIDw8IG1heF9id19wb2ludDsKPiArCj4gKwkvKgo+ICsJICogV2Ugc3Rv
cmUgdGhlIG9uZXMgd2hpY2ggbmVlZCB0byBiZSBtYXNrZWQgYXMgdGhhdCBpcyB3aGF0IFBDb2Rl
Cj4gKwkgKiBhY3R1YWxseSBhY2NlcHRzIGFzIGEgcGFyYW1ldGVyLgo+ICsJICovCj4gKwlzdGF0
ZS0+cWd2X3BvaW50c19tYXNrID0gKH5hbGxvd2VkX3BvaW50cykgJiAoKDEgPDwgcWkubnVtX3Bv
aW50cykgLSAxKTsKPiArCj4gKwkvKgo+ICsJICogSWYgdGhlIGFjdHVhbCBtYXNrIGhhZCBjaGFu
Z2VkIHdlIG5lZWQgdG8gbWFrZSBzdXJlIHRoYXQKPiArCSAqIHRoZSBjb21taXRzIGFyZSBzZXJp
YWxpemVkKGluIGNhc2UgdGhpcyBpcyBhIG5vbW9kZXNldCwgbm9uYmxvY2tpbmcpCj4gKwkgKi8K
PiArCWlmIChzdGF0ZS0+cWd2X3BvaW50c19tYXNrICE9IGRldl9wcml2LT5xZ3ZfcG9pbnRzX21h
c2spIHsKPiArCQlyZXQgPSBpbnRlbF9hdG9taWNfc2VyaWFsaXplX2dsb2JhbF9zdGF0ZShzdGF0
ZSk7Cj4gKwkJaWYgKHJldCkgewo+ICsJCQlEUk1fREVCVUdfS01TKCJDb3VsZCBub3Qgc2VyaWFs
aXplIGdsb2JhbCBzdGF0ZVxuIik7Cj4gKwkJCXJldHVybiByZXQ7Cj4gKwkJfQo+ICsJfQo+ICsK
PiAgCXJldHVybiAwOwo+ICB9Cj4gIAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2J3LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2J3LmgKPiBpbmRleCA5ZGIxMGFmMDEyZjQuLjY2YmY5YmMxMGI3MyAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmgKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmgKPiBAQCAtMjgsNSArMjgsNyBAQCBpbnQgaW50
ZWxfYndfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwo+ICBpbnQgaW50
ZWxfYndfYXRvbWljX2NoZWNrKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKTsKPiAg
dm9pZCBpbnRlbF9id19jcnRjX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYndfc3RhdGUgKmJ3X3N0YXRl
LAo+ICAJCQkgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKPiAr
aW50IGljbF9wY29kZV9yZXN0cmljdF9xZ3ZfcG9pbnRzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwKPiArCQkJCSAgdTMyIHBvaW50c19tYXNrKTsKPiAgCj4gICNlbmRpZiAvKiBf
X0lOVEVMX0JXX0hfXyAqLwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jCj4gaW5kZXggZDg3MGNlMTcwOWVhLi41MjVlYWVmY2U2YjggMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IEBAIC0xNDQ3MSw2
ICsxNDQ3MSw0OCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9hdG9taWNfY2xlYW51cF93b3JrKHN0cnVj
dCB3b3JrX3N0cnVjdCAqd29yaykKPiAgCWludGVsX2F0b21pY19oZWxwZXJfZnJlZV9zdGF0ZShp
OTE1KTsKPiAgfQo+ICAKPiArc3RhdGljIHZvaWQgaW50ZWxfcWd2X3BvaW50c19tYXNrKHN0cnVj
dCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQo+ICt7Cj4gKwlzdHJ1Y3QgZHJtX2RldmljZSAq
ZGV2ID0gc3RhdGUtPmJhc2UuZGV2Owo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2ID0gdG9faTkxNShkZXYpOwo+ICsJaW50IHJldDsKPiArCXUzMiBuZXdfbWFzayA9IGRldl9w
cml2LT5xZ3ZfcG9pbnRzX21hc2sgfCBzdGF0ZS0+cWd2X3BvaW50c19tYXNrOwo+ICsKPiArCS8q
Cj4gKwkgKiBSZXN0cmljdCByZXF1aXJlZCBxZ3YgcG9pbnRzIGJlZm9yZSB1cGRhdGluZyB0aGUg
Y29uZmlndXJhdGlvbi4KPiArCSAqIEFjY29yZGluZyB0byBCU3BlYyB3ZSBjYW4ndCBtYXNrIGFu
ZCB1bm1hc2sgcWd2IHBvaW50cyBhdCB0aGUgc2FtZQo+ICsJICogdGltZS4gQWxzbyBtYXNraW5n
IHNob3VsZCBiZSBkb25lIGJlZm9yZSB1cGRhdGluZyB0aGUgY29uZmlndXJhdGlvbgo+ICsJICog
YW5kIHVubWFza2luZyBhZnRlcndhcmRzLgo+ICsJICovCj4gKwlyZXQgPSBpY2xfcGNvZGVfcmVz
dHJpY3RfcWd2X3BvaW50cyhkZXZfcHJpdiwgbmV3X21hc2spOwo+ICsJaWYgKHJldCA8IDApCj4g
KwkJRFJNX0RFQlVHX0tNUygiQ291bGQgbm90IHJlc3RyaWN0IHJlcXVpcmVkIHFndiBwb2ludHMo
JWQpXG4iLAo+ICsJCQkgICAgICByZXQpOwo+ICsJZWxzZQo+ICsJCWRldl9wcml2LT5xZ3ZfcG9p
bnRzX21hc2sgPSBuZXdfbWFzazsKPiArfQo+ICsKPiArc3RhdGljIHZvaWQgaW50ZWxfcWd2X3Bv
aW50c191bm1hc2soc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCj4gK3sKPiArCXN0
cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBzdGF0ZS0+YmFzZS5kZXY7Cj4gKwlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRldik7Cj4gKwlpbnQgcmV0Owo+ICsJdTMy
IG5ld19tYXNrID0gZGV2X3ByaXYtPnFndl9wb2ludHNfbWFzayAmIHN0YXRlLT5xZ3ZfcG9pbnRz
X21hc2s7Cj4gKwo+ICsJLyoKPiArCSAqIEFsbG93IHJlcXVpcmVkIHFndiBwb2ludHMgYWZ0ZXIg
dXBkYXRpbmcgdGhlIGNvbmZpZ3VyYXRpb24uCj4gKwkgKiBBY2NvcmRpbmcgdG8gQlNwZWMgd2Ug
Y2FuJ3QgbWFzayBhbmQgdW5tYXNrIHFndiBwb2ludHMgYXQgdGhlIHNhbWUKPiArCSAqIHRpbWUu
IEFsc28gbWFza2luZyBzaG91bGQgYmUgZG9uZSBiZWZvcmUgdXBkYXRpbmcgdGhlIGNvbmZpZ3Vy
YXRpb24KPiArCSAqIGFuZCB1bm1hc2tpbmcgYWZ0ZXJ3YXJkcy4KPiArCSAqLwo+ICsJcmV0ID0g
aWNsX3Bjb2RlX3Jlc3RyaWN0X3Fndl9wb2ludHMoZGV2X3ByaXYsIG5ld19tYXNrKTsKPiArCWlm
IChyZXQgPCAwKQo+ICsJCURSTV9ERUJVR19LTVMoIkNvdWxkIG5vdCByZXN0cmljdCByZXF1aXJl
ZCBxZ3YgcG9pbnRzKCVkKVxuIiwKPiArCQkJICAgICAgcmV0KTsKPiArCWVsc2UKPiArCQlkZXZf
cHJpdi0+cWd2X3BvaW50c19tYXNrID0gbmV3X21hc2s7Cj4gK30KPiArCj4gIHN0YXRpYyB2b2lk
IGludGVsX2F0b21pY19jb21taXRfdGFpbChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0
ZSkKPiAgewo+ICAJc3RydWN0IGRybV9kZXZpY2UgKmRldiA9IHN0YXRlLT5iYXNlLmRldjsKPiBA
QCAtMTQ0OTgsNiArMTQ1NDAsOSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9hdG9taWNfY29tbWl0X3Rh
aWwoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCj4gIAkJfQo+ICAJfQo+ICAKPiAr
CWlmICgoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkpCj4gKwkJaW50ZWxfcWd2X3BvaW50c19t
YXNrKHN0YXRlKTsKPiArCj4gIAlpbnRlbF9jb21taXRfbW9kZXNldF9kaXNhYmxlcyhzdGF0ZSk7
Cj4gIAo+ICAJLyogRklYTUU6IEV2ZW50dWFsbHkgZ2V0IHJpZCBvZiBvdXIgY3J0Yy0+Y29uZmln
IHBvaW50ZXIgKi8KPiBAQCAtMTQ1MTYsOCArMTQ1NjEsOSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9h
dG9taWNfY29tbWl0X3RhaWwoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCj4gIAkJ
ICogU0tMIHdvcmthcm91bmQ6IGJzcGVjIHJlY29tbWVuZHMgd2UgZGlzYWJsZSB0aGUgU0FHViB3
aGVuIHdlCj4gIAkJICogaGF2ZSBtb3JlIHRoZW4gb25lIHBpcGUgZW5hYmxlZAo+ICAJCSAqLwo+
IC0JCWlmICghaW50ZWxfY2FuX2VuYWJsZV9zYWd2KHN0YXRlKSkKPiAtCQkJaW50ZWxfZGlzYWJs
ZV9zYWd2KGRldl9wcml2KTsKPiArCQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA8IDExKQo+ICsJ
CQlpZiAoIWludGVsX2Nhbl9lbmFibGVfc2FndihzdGF0ZSkpCj4gKwkJCQlpbnRlbF9kaXNhYmxl
X3NhZ3YoZGV2X3ByaXYpOwo+ICAKPiAgCQlpbnRlbF9tb2Rlc2V0X3ZlcmlmeV9kaXNhYmxlZChk
ZXZfcHJpdiwgc3RhdGUpOwo+ICAJfQo+IEBAIC0xNDU5OSw4ICsxNDY0NSwxMSBAQCBzdGF0aWMg
dm9pZCBpbnRlbF9hdG9taWNfY29tbWl0X3RhaWwoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAq
c3RhdGUpCj4gIAlpZiAoc3RhdGUtPm1vZGVzZXQpCj4gIAkJaW50ZWxfdmVyaWZ5X3BsYW5lcyhz
dGF0ZSk7Cj4gIAo+IC0JaWYgKHN0YXRlLT5tb2Rlc2V0ICYmIGludGVsX2Nhbl9lbmFibGVfc2Fn
dihzdGF0ZSkpCj4gLQkJaW50ZWxfZW5hYmxlX3NhZ3YoZGV2X3ByaXYpOwo+ICsJaWYgKElOVEVM
X0dFTihkZXZfcHJpdikgPCAxMSkgewo+ICsJCWlmIChzdGF0ZS0+bW9kZXNldCAmJiBpbnRlbF9j
YW5fZW5hYmxlX3NhZ3Yoc3RhdGUpKQo+ICsJCQlpbnRlbF9lbmFibGVfc2FndihkZXZfcHJpdik7
Cj4gKwl9IGVsc2UKPiArCQlpbnRlbF9xZ3ZfcG9pbnRzX3VubWFzayhzdGF0ZSk7Cj4gIAo+ICAJ
ZHJtX2F0b21pY19oZWxwZXJfY29tbWl0X2h3X2RvbmUoJnN0YXRlLT5iYXNlKTsKPiAgCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBl
cy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgK
PiBpbmRleCBmODdmOThiN2VmMGQuLmM2OTc1ZDliNDY5NiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCj4gQEAgLTUyMCw2
ICs1MjAsOSBAQCBzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlIHsKPiAgCXN0cnVjdCBpOTE1X3N3
X2ZlbmNlIGNvbW1pdF9yZWFkeTsKPiAgCj4gIAlzdHJ1Y3QgbGxpc3Rfbm9kZSBmcmVlZDsKPiAr
Cj4gKwkvKiBHZW4xMSsgb25seSAqLwo+ICsJdTMyIHFndl9wb2ludHNfbWFzazsKPiAgfTsKPiAg
Cj4gIHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSB7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4g
aW5kZXggYWE4YmFiZTZiNzdkLi5mZTdkZDYyMTNlNWMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmgKPiBAQCAtMTMzMyw2ICsxMzMzLDggQEAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgewo+
ICAJCXU4IG51bV9wbGFuZXM7Cj4gIAl9IG1heF9id1s2XTsKPiAgCj4gKwl1MzIgcWd2X3BvaW50
c19tYXNrOwo+ICsKPiAgCXN0cnVjdCBkcm1fcHJpdmF0ZV9vYmogYndfb2JqOwo+ICAKPiAgCXN0
cnVjdCBpbnRlbF9ydW50aW1lX3BtIHJ1bnRpbWVfcG07Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
Cj4gaW5kZXggODU1ZGI4ODg1MTZjLi45MzgyMzQ0MzAzNmYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmgKPiBAQCAtODg1OCw2ICs4ODU4LDggQEAgZW51bSB7Cj4gICNkZWZpbmUgICAgIEdF
TjZfUENPREVfVU5JTVBMRU1FTlRFRF9DTUQJMHhGRgo+ICAjZGVmaW5lICAgICBHRU43X1BDT0RF
X1RJTUVPVVQJCQkweDIKPiAgI2RlZmluZSAgICAgR0VON19QQ09ERV9JTExFR0FMX0RBVEEJCTB4
Mwo+ICsjZGVmaW5lICAgICBHRU4xMV9QQ09ERV9NQUlMX0JPWF9MT0NLRUQJCTB4Ngo+ICsjZGVm
aW5lICAgICBHRU4xMV9QQ09ERV9SRUpFQ1RFRAkJMHgxMQo+ICAjZGVmaW5lICAgICBHRU43X1BD
T0RFX01JTl9GUkVRX1RBQkxFX0dUX1JBVElPX09VVF9PRl9SQU5HRSAweDEwCj4gICNkZWZpbmUg
ICBHRU42X1BDT0RFX1dSSVRFX1JDNlZJRFMJCTB4NAo+ICAjZGVmaW5lICAgR0VONl9QQ09ERV9S
RUFEX1JDNlZJRFMJCTB4NQo+IEBAIC04ODc5LDYgKzg4ODEsNyBAQCBlbnVtIHsKPiAgI2RlZmlu
ZSAgIElDTF9QQ09ERV9NRU1fU1VCU1lTWVNURU1fSU5GTwkweGQKPiAgI2RlZmluZSAgICAgSUNM
X1BDT0RFX01FTV9TU19SRUFEX0dMT0JBTF9JTkZPCSgweDAgPDwgOCkKPiAgI2RlZmluZSAgICAg
SUNMX1BDT0RFX01FTV9TU19SRUFEX1FHVl9QT0lOVF9JTkZPKHBvaW50KQkoKChwb2ludCkgPDwg
MTYpIHwgKDB4MSA8PCA4KSkKPiArI2RlZmluZSAgIElDTF9QQ09ERV9TQUdWX0RFX01FTV9TU19D
T05GSUcJMHhlCj4gICNkZWZpbmUgICBHRU42X1BDT0RFX1JFQURfRF9DT01QCQkweDEwCj4gICNk
ZWZpbmUgICBHRU42X1BDT0RFX1dSSVRFX0RfQ09NUAkJMHgxMQo+ICAjZGVmaW5lICAgSFNXX1BD
T0RFX0RFX1dSSVRFX0ZSRVFfUkVRCQkweDE3Cj4gQEAgLTg4OTEsNiArODg5NCw4IEBAIGVudW0g
ewo+ICAjZGVmaW5lICAgICBHRU45X1NBR1ZfSVNfRElTQUJMRUQJCTB4MQo+ICAjZGVmaW5lICAg
ICBHRU45X1NBR1ZfRU5BQkxFCQkJMHgzCj4gICNkZWZpbmUgR0VOMTJfUENPREVfUkVBRF9TQUdW
X0JMT0NLX1RJTUVfVVMJMHgyMwo+ICsjZGVmaW5lIEdFTjExX1BDT0RFX1BPSU5UU19SRVNUUklD
VEVECQkweDAKPiArI2RlZmluZSBHRU4xMV9QQ09ERV9QT0lOVFNfUkVTVFJJQ1RFRF9NQVNLCTB4
MQo+ICAjZGVmaW5lIEdFTjZfUENPREVfREFUQQkJCQlfTU1JTygweDEzODEyOCkKPiAgI2RlZmlu
ZSAgIEdFTjZfUENPREVfRlJFUV9JQV9SQVRJT19TSElGVAk4Cj4gICNkZWZpbmUgICBHRU42X1BD
T0RFX0ZSRVFfUklOR19SQVRJT19TSElGVAkxNgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9zaWRlYmFuZC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc2lk
ZWJhbmQuYwo+IGluZGV4IGUwNmIzNWI4NDRhMC4uZmY5ZGJlZDA5NGQ4IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3NpZGViYW5kLmMKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9zaWRlYmFuZC5jCj4gQEAgLTM3MSw2ICszNzEsMjkgQEAgc3RhdGlj
IGlubGluZSBpbnQgZ2VuN19jaGVja19tYWlsYm94X3N0YXR1cyh1MzIgbWJveCkKPiAgCX0KPiAg
fQo+ICAKPiArc3RhdGljIGlubGluZSBpbnQgZ2VuMTFfY2hlY2tfbWFpbGJveF9zdGF0dXModTMy
IG1ib3gpCj4gK3sKPiArCXN3aXRjaCAobWJveCAmIEdFTjZfUENPREVfRVJST1JfTUFTSykgewo+
ICsJY2FzZSBHRU42X1BDT0RFX1NVQ0NFU1M6Cj4gKwkJcmV0dXJuIDA7Cj4gKwljYXNlIEdFTjZf
UENPREVfSUxMRUdBTF9DTUQ6Cj4gKwkJcmV0dXJuIC1FTlhJTzsKPiArCWNhc2UgR0VON19QQ09E
RV9USU1FT1VUOgo+ICsJCXJldHVybiAtRVRJTUVET1VUOwo+ICsJY2FzZSBHRU43X1BDT0RFX0lM
TEVHQUxfREFUQToKPiArCQlyZXR1cm4gLUVJTlZBTDsKPiArCWNhc2UgR0VON19QQ09ERV9NSU5f
RlJFUV9UQUJMRV9HVF9SQVRJT19PVVRfT0ZfUkFOR0U6Cj4gKwkJcmV0dXJuIC1FT1ZFUkZMT1c7
Cj4gKwljYXNlIEdFTjExX1BDT0RFX01BSUxfQk9YX0xPQ0tFRDoKPiArCQlyZXR1cm4gLUVBR0FJ
TjsKPiArCWNhc2UgR0VOMTFfUENPREVfUkVKRUNURUQ6Cj4gKwkJcmV0dXJuIC1FQUNDRVM7Cj4g
KwlkZWZhdWx0Ogo+ICsJCU1JU1NJTkdfQ0FTRShtYm94ICYgR0VONl9QQ09ERV9FUlJPUl9NQVNL
KTsKPiArCQlyZXR1cm4gMDsKPiArCX0KPiArfQo+ICsKPiAgc3RhdGljIGludCBfX3NhbmR5YnJp
ZGdlX3Bjb2RlX3J3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+ICAJCQkJICB1MzIg
bWJveCwgdTMyICp2YWwsIHUzMiAqdmFsMSwKPiAgCQkJCSAgaW50IGZhc3RfdGltZW91dF91cywK
PiBAQCAtNDA4LDcgKzQzMSw5IEBAIHN0YXRpYyBpbnQgX19zYW5keWJyaWRnZV9wY29kZV9ydyhz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKPiAgCWlmIChpc19yZWFkICYmIHZhbDEpCj4g
IAkJKnZhbDEgPSBpbnRlbF91bmNvcmVfcmVhZF9mdyh1bmNvcmUsIEdFTjZfUENPREVfREFUQTEp
Owo+ICAKPiAtCWlmIChJTlRFTF9HRU4oaTkxNSkgPiA2KQo+ICsJaWYgKElOVEVMX0dFTihpOTE1
KSA+PSAxMSkKPiArCQlyZXR1cm4gZ2VuMTFfY2hlY2tfbWFpbGJveF9zdGF0dXMobWJveCk7Cj4g
KwllbHNlIGlmIChJTlRFTF9HRU4oaTkxNSkgPiA2KQo+ICAJCXJldHVybiBnZW43X2NoZWNrX21h
aWxib3hfc3RhdHVzKG1ib3gpOwo+ICAJZWxzZQo+ICAJCXJldHVybiBnZW42X2NoZWNrX21haWxi
b3hfc3RhdHVzKG1ib3gpOwo+IC0tIAo+IDIuMTcuMQo+IApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
