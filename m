Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24CD4DC7C8
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2019 16:52:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D1366E122;
	Fri, 18 Oct 2019 14:52:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1DC56E122
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Oct 2019 14:52:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Oct 2019 07:52:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,312,1566889200"; d="scan'208";a="202721324"
Received: from alinamex-mobl3.ger.corp.intel.com (HELO [10.252.56.163])
 ([10.252.56.163])
 by FMSMGA003.fm.intel.com with ESMTP; 18 Oct 2019 07:52:53 -0700
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
References: <20191017132105.15528-1-maarten.lankhorst@linux.intel.com>
 <20191017132105.15528-14-maarten.lankhorst@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <6ae55f42-9363-1af7-e39d-fd6cb6a020ff@linux.intel.com>
Date: Fri, 18 Oct 2019 16:52:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191017132105.15528-14-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 14/14] drm/i915: Remove special case slave
 handling during hw programming, v2.
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

T3AgMTctMTAtMjAxOSBvbSAxNToyMSBzY2hyZWVmIE1hYXJ0ZW4gTGFua2hvcnN0Ogo+IE5vdyB0
aGF0IHdlIHNwbGl0IHBsYW5lX3N0YXRlIHdoaWNoIEkgZGlkbid0IHdhbnQgdG8gZG8geWV0LCB3
ZSBjYW4KPiBwcm9ncmFtIHRoZSBzbGF2ZSBwbGFuZSB3aXRob3V0IHJlcXVpcmluZyB0aGUgbWFz
dGVyIHBsYW5lLgo+Cj4gVGhpcyBpcyB1c2VmdWwgZm9yIHByb2dyYW1taW5nIGJpZ2pvaW5lciBz
bGF2ZSBwbGFuZXMgYXMgd2VsbC4gV2UKPiB3aWxsIG5vIGxvbmdlciBuZWVkIHRoZSBtYXN0ZXIn
cyBwbGFuZV9zdGF0ZS4KPgo+IENoYW5nZXMgc2luY2UgdjE6Cj4gLSBzZXQgc3JjL2RzdCByZWN0
YW5nbGVzIGFmdGVyIGNvcHlfdWFwaV90b19od19zdGF0ZS4KPgo+IFNpZ25lZC1vZmYtYnk6IE1h
YXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4gLS0t
Cj4gIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYyB8IDMwICst
LS0tLS0tLS0KPiAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5o
IHwgIDMgLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAg
fCAxOCArKysrKysKPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5o
ICAgIHwgIDYgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUu
YyAgIHwgNTUgKysrKysrLS0tLS0tLS0tLS0tLQo+ICA1IGZpbGVzIGNoYW5nZWQsIDM5IGluc2Vy
dGlvbnMoKyksIDczIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jCj4gaW5kZXggZDliNjVlOWM0NWZjLi41NGQx
MTI0MDg3MTYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9hdG9taWNfcGxhbmUuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYXRvbWljX3BsYW5lLmMKPiBAQCAtMzA5LDE2ICszMDksNiBAQCB2b2lkIGludGVsX3VwZGF0
ZV9wbGFuZShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAo+ICAJcGxhbmUtPnVwZGF0ZV9wbGFu
ZShwbGFuZSwgY3J0Y19zdGF0ZSwgcGxhbmVfc3RhdGUpOwo+ICB9Cj4gIAo+IC12b2lkIGludGVs
X3VwZGF0ZV9zbGF2ZShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAo+IC0JCQljb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiAtCQkJY29uc3Qgc3RydWN0IGludGVs
X3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkKPiAtewo+IC0Jc3RydWN0IGludGVsX2NydGMgKmNy
dGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGkuY3J0Yyk7Cj4gLQo+IC0JdHJhY2Vf
aW50ZWxfdXBkYXRlX3BsYW5lKCZwbGFuZS0+YmFzZSwgY3J0Yyk7Cj4gLQlwbGFuZS0+dXBkYXRl
X3NsYXZlKHBsYW5lLCBjcnRjX3N0YXRlLCBwbGFuZV9zdGF0ZSk7Cj4gLX0KPiAtCj4gIHZvaWQg
aW50ZWxfZGlzYWJsZV9wbGFuZShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAo+ICAJCQkgY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4gIHsKPiBAQCAtMzUxLDI1
ICszNDEsOSBAQCB2b2lkIHNrbF91cGRhdGVfcGxhbmVzX29uX2NydGMoc3RydWN0IGludGVsX2F0
b21pY19zdGF0ZSAqc3RhdGUsCj4gIAkJc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpuZXdfcGxh
bmVfc3RhdGUgPQo+ICAJCQlpbnRlbF9hdG9taWNfZ2V0X25ld19wbGFuZV9zdGF0ZShzdGF0ZSwg
cGxhbmUpOwo+ICAKPiAtCQlpZiAobmV3X3BsYW5lX3N0YXRlLT51YXBpLnZpc2libGUpIHsKPiAr
CQlpZiAobmV3X3BsYW5lX3N0YXRlLT51YXBpLnZpc2libGUgfHwKPiArCQkgICAgbmV3X3BsYW5l
X3N0YXRlLT5wbGFuYXJfc2xhdmUpIHsKPiAgCQkJaW50ZWxfdXBkYXRlX3BsYW5lKHBsYW5lLCBu
ZXdfY3J0Y19zdGF0ZSwgbmV3X3BsYW5lX3N0YXRlKTsKPiAtCQl9IGVsc2UgaWYgKG5ld19wbGFu
ZV9zdGF0ZS0+cGxhbmFyX3NsYXZlKSB7Cj4gLQkJCXN0cnVjdCBpbnRlbF9wbGFuZSAqbWFzdGVy
ID0KPiAtCQkJCW5ld19wbGFuZV9zdGF0ZS0+cGxhbmFyX2xpbmtlZF9wbGFuZTsKPiAtCj4gLQkJ
CS8qCj4gLQkJCSAqIFdlIHVwZGF0ZSB0aGUgc2xhdmUgcGxhbmUgZnJvbSB0aGlzIGZ1bmN0aW9u
IGJlY2F1c2UKPiAtCQkJICogcHJvZ3JhbW1pbmcgaXQgZnJvbSB0aGUgbWFzdGVyIHBsYW5lJ3Mg
dXBkYXRlX3BsYW5lCj4gLQkJCSAqIGNhbGxiYWNrIHJ1bnMgaW50byBpc3N1ZXMgd2hlbiB0aGUg
WSBwbGFuZSBpcwo+IC0JCQkgKiByZWFzc2lnbmVkLCBkaXNhYmxlZCBvciB1c2VkIGJ5IGEgZGlm
ZmVyZW50IHBsYW5lLgo+IC0JCQkgKgo+IC0JCQkgKiBUaGUgc2xhdmUgcGxhbmUgaXMgdXBkYXRl
ZCB3aXRoIHRoZSBtYXN0ZXIgcGxhbmUncwo+IC0JCQkgKiBwbGFuZV9zdGF0ZS4KPiAtCQkJICov
Cj4gLQkJCW5ld19wbGFuZV9zdGF0ZSA9Cj4gLQkJCQlpbnRlbF9hdG9taWNfZ2V0X25ld19wbGFu
ZV9zdGF0ZShzdGF0ZSwgbWFzdGVyKTsKPiAtCj4gLQkJCWludGVsX3VwZGF0ZV9zbGF2ZShwbGFu
ZSwgbmV3X2NydGNfc3RhdGUsIG5ld19wbGFuZV9zdGF0ZSk7Cj4gIAkJfSBlbHNlIHsKPiAgCQkJ
aW50ZWxfZGlzYWJsZV9wbGFuZShwbGFuZSwgbmV3X2NydGNfc3RhdGUpOwo+ICAJCX0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUu
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmgKPiBp
bmRleCAxMjM0MDRhOWNmMjMuLjcyNmVjZWNkNmFiZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5oCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuaAo+IEBAIC0yNSw5ICsyNSw2
IEBAIHZvaWQgaW50ZWxfcGxhbmVfY29weV91YXBpX3RvX2h3X3N0YXRlKHN0cnVjdCBpbnRlbF9w
bGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUsCj4gIHZvaWQgaW50ZWxfdXBkYXRlX3BsYW5lKHN0cnVj
dCBpbnRlbF9wbGFuZSAqcGxhbmUsCj4gIAkJCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlLAo+ICAJCQljb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5l
X3N0YXRlKTsKPiAtdm9pZCBpbnRlbF91cGRhdGVfc2xhdmUoc3RydWN0IGludGVsX3BsYW5lICpw
bGFuZSwKPiAtCQkJY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4g
LQkJCWNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpOwo+ICB2b2lk
IGludGVsX2Rpc2FibGVfcGxhbmUoc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwKPiAgCQkJIGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKPiAgc3RydWN0IGludGVs
X3BsYW5lICppbnRlbF9wbGFuZV9hbGxvYyh2b2lkKTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IGluZGV4IGRlNTIwZDVmMTM3NC4uODhmMTQ5Y2Fj
MTk4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKPiBAQCAtMTE3NjgsNiArMTE3NjgsMjQgQEAgc3RhdGljIGludCBpY2xfY2hlY2tfbnYxMl9w
bGFuZXMoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4gIAkJY3J0Y19zdGF0
ZS0+YWN0aXZlX3BsYW5lcyB8PSBCSVQobGlua2VkLT5pZCk7Cj4gIAkJY3J0Y19zdGF0ZS0+dXBk
YXRlX3BsYW5lcyB8PSBCSVQobGlua2VkLT5pZCk7Cj4gIAkJRFJNX0RFQlVHX0tNUygiVXNpbmcg
JXMgYXMgWSBwbGFuZSBmb3IgJXNcbiIsIGxpbmtlZC0+YmFzZS5uYW1lLCBwbGFuZS0+YmFzZS5u
YW1lKTsKPiArCj4gKwkJLyogQ29weSBwYXJhbWV0ZXJzIHRvIHNsYXZlIHBsYW5lICovCj4gKwkJ
bGlua2VkX3N0YXRlLT5jdGwgPSBwbGFuZV9zdGF0ZS0+Y3RsIHwgUExBTkVfQ1RMX1lVVjQyMF9Z
X1BMQU5FOwo+ICsJCWxpbmtlZF9zdGF0ZS0+Y29sb3JfY3RsID0gcGxhbmVfc3RhdGUtPmNvbG9y
X2N0bDsKPiArCQlsaW5rZWRfc3RhdGUtPmNvbG9yX3BsYW5lWzBdID0gcGxhbmVfc3RhdGUtPmNv
bG9yX3BsYW5lWzBdOwo+ICsKPiArCQlpbnRlbF9wbGFuZV9jb3B5X3VhcGlfdG9faHdfc3RhdGUo
bGlua2VkX3N0YXRlLCBwbGFuZV9zdGF0ZSk7Cj4gKwkJbGlua2VkX3N0YXRlLT51YXBpLnNyYyA9
IHBsYW5lX3N0YXRlLT51YXBpLnNyYzsKPiArCQlsaW5rZWRfc3RhdGUtPnVhcGkuZHN0ID0gcGxh
bmVfc3RhdGUtPnVhcGkuZHN0Owo+ICsKPiArCQlpZiAoaWNsX2lzX2hkcl9wbGFuZShkZXZfcHJp
diwgcGxhbmUtPmlkKSkgewo+ICsJCQlpZiAobGlua2VkLT5pZCA9PSBQTEFORV9TUFJJVEU1KQo+
ICsJCQkJcGxhbmVfc3RhdGUtPmN1c19jdGwgfD0gUExBTkVfQ1VTX1BMQU5FXzc7Cj4gKwkJCWVs
c2UgaWYgKGxpbmtlZC0+aWQgPT0gUExBTkVfU1BSSVRFNCkKPiArCQkJCXBsYW5lX3N0YXRlLT5j
dXNfY3RsIHw9IFBMQU5FX0NVU19QTEFORV82Owo+ICsJCQllbHNlCj4gKwkJCQlNSVNTSU5HX0NB
U0UobGlua2VkLT5pZCk7Cj4gKwkJfQo+ICAJfQo+ICAKPiAgCXJldHVybiAwOwo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCj4gaW5k
ZXggNTM3OWI5M2MyZmFiLi5kYmNhMWIzYzVjNjcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAo+IEBAIC01NTUsNiArNTU1
LDkgQEAgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlIHsKPiAgCS8qIHBsYW5lIGNvbG9yIGNvbnRy
b2wgcmVnaXN0ZXIgKi8KPiAgCXUzMiBjb2xvcl9jdGw7Cj4gIAo+ICsJLyogY2hyb21hIHVwc2Ft
cGxlciBjb250cm9sIHJlZ2lzdGVyICovCj4gKwl1MzIgY3VzX2N0bDsKPiArCj4gIAkvKgo+ICAJ
ICogc2NhbGVyX2lkCj4gIAkgKiAgICA9IC0xIDogbm90IHVzaW5nIGEgc2NhbGVyCj4gQEAgLTEx
MDYsOSArMTEwOSw2IEBAIHN0cnVjdCBpbnRlbF9wbGFuZSB7Cj4gIAl2b2lkICgqdXBkYXRlX3Bs
YW5lKShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAo+ICAJCQkgICAgIGNvbnN0IHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAo+ICAJCQkgICAgIGNvbnN0IHN0cnVjdCBpbnRl
bF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpOwo+IC0Jdm9pZCAoKnVwZGF0ZV9zbGF2ZSkoc3Ry
dWN0IGludGVsX3BsYW5lICpwbGFuZSwKPiAtCQkJICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiAtCQkJICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVf
c3RhdGUgKnBsYW5lX3N0YXRlKTsKPiAgCXZvaWQgKCpkaXNhYmxlX3BsYW5lKShzdHJ1Y3QgaW50
ZWxfcGxhbmUgKnBsYW5lLAo+ICAJCQkgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSk7Cj4gIAlib29sICgqZ2V0X2h3X3N0YXRlKShzdHJ1Y3QgaW50ZWxfcGxh
bmUgKnBsYW5lLCBlbnVtIHBpcGUgKnBpcGUpOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9zcHJpdGUuYwo+IGluZGV4IDAwZjgzZDM3YWJjZi4uMjAxMjNmY2NkMDgxIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCj4gQEAg
LTUyNiw3ICs1MjYsNyBAQCBzdGF0aWMgdm9pZAo+ICBza2xfcHJvZ3JhbV9wbGFuZShzdHJ1Y3Qg
aW50ZWxfcGxhbmUgKnBsYW5lLAo+ICAJCSAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUg
KmNydGNfc3RhdGUsCj4gIAkJICBjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5l
X3N0YXRlLAo+IC0JCSAgaW50IGNvbG9yX3BsYW5lLCBib29sIHNsYXZlLCB1MzIgcGxhbmVfY3Rs
KQo+ICsJCSAgaW50IGNvbG9yX3BsYW5lKQo+ICB7Cj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYgPSB0b19pOTE1KHBsYW5lLT5iYXNlLmRldik7Cj4gIAllbnVtIHBsYW5lX2lk
IHBsYW5lX2lkID0gcGxhbmUtPmlkOwo+IEBAIC01NDEsMTIgKzU0MSwxMiBAQCBza2xfcHJvZ3Jh
bV9wbGFuZShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAo+ICAJdTMyIHkgPSBwbGFuZV9zdGF0
ZS0+Y29sb3JfcGxhbmVbY29sb3JfcGxhbmVdLnk7Cj4gIAl1MzIgc3JjX3cgPSBkcm1fcmVjdF93
aWR0aCgmcGxhbmVfc3RhdGUtPnVhcGkuc3JjKSA+PiAxNjsKPiAgCXUzMiBzcmNfaCA9IGRybV9y
ZWN0X2hlaWdodCgmcGxhbmVfc3RhdGUtPnVhcGkuc3JjKSA+PiAxNjsKPiAtCXN0cnVjdCBpbnRl
bF9wbGFuZSAqbGlua2VkID0gcGxhbmVfc3RhdGUtPnBsYW5hcl9saW5rZWRfcGxhbmU7Cj4gIAlj
b25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiA9IHBsYW5lX3N0YXRlLT5ody5mYjsKPiAg
CXU4IGFscGhhID0gcGxhbmVfc3RhdGUtPmh3LmFscGhhID4+IDg7Cj4gIAl1MzIgcGxhbmVfY29s
b3JfY3RsID0gMDsKPiAgCXVuc2lnbmVkIGxvbmcgaXJxZmxhZ3M7Cj4gIAl1MzIga2V5bXNrLCBr
ZXltYXg7Cj4gKwl1MzIgcGxhbmVfY3RsID0gcGxhbmVfc3RhdGUtPmN0bDsKPiAgCj4gIAlwbGFu
ZV9jdGwgfD0gc2tsX3BsYW5lX2N0bF9jcnRjKGNydGNfc3RhdGUpOwo+ICAKPiBAQCAtNTc4LDI2
ICs1NzgsOCBAQCBza2xfcHJvZ3JhbV9wbGFuZShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAo+
ICAJSTkxNV9XUklURV9GVyhQTEFORV9BVVhfRElTVChwaXBlLCBwbGFuZV9pZCksCj4gIAkJICAg
ICAgKHBsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZVsxXS5vZmZzZXQgLSBzdXJmX2FkZHIpIHwgYXV4
X3N0cmlkZSk7Cj4gIAo+IC0JaWYgKGljbF9pc19oZHJfcGxhbmUoZGV2X3ByaXYsIHBsYW5lX2lk
KSkgewo+IC0JCXUzMiBjdXNfY3RsID0gMDsKPiAtCj4gLQkJaWYgKGxpbmtlZCkgewo+IC0JCQkv
KiBFbmFibGUgYW5kIHVzZSBNUEVHLTIgY2hyb21hIHNpdGluZyAqLwo+IC0JCQljdXNfY3RsID0g
UExBTkVfQ1VTX0VOQUJMRSB8Cj4gLQkJCQlQTEFORV9DVVNfSFBIQVNFXzAgfAo+IC0JCQkJUExB
TkVfQ1VTX1ZQSEFTRV9TSUdOX05FR0FUSVZFIHwKPiAtCQkJCVBMQU5FX0NVU19WUEhBU0VfMF8y
NTsKPiAtCj4gLQkJCWlmIChsaW5rZWQtPmlkID09IFBMQU5FX1NQUklURTUpCj4gLQkJCQljdXNf
Y3RsIHw9IFBMQU5FX0NVU19QTEFORV83Owo+IC0JCQllbHNlIGlmIChsaW5rZWQtPmlkID09IFBM
QU5FX1NQUklURTQpCj4gLQkJCQljdXNfY3RsIHw9IFBMQU5FX0NVU19QTEFORV82Owo+IC0JCQll
bHNlCj4gLQkJCQlNSVNTSU5HX0NBU0UobGlua2VkLT5pZCk7Cj4gLQkJfQo+IC0KPiAtCQlJOTE1
X1dSSVRFX0ZXKFBMQU5FX0NVU19DVEwocGlwZSwgcGxhbmVfaWQpLCBjdXNfY3RsKTsKPiAtCX0K
PiArCWlmIChpY2xfaXNfaGRyX3BsYW5lKGRldl9wcml2LCBwbGFuZV9pZCkpCj4gKwkJSTkxNV9X
UklURV9GVyhQTEFORV9DVVNfQ1RMKHBpcGUsIHBsYW5lX2lkKSwgcGxhbmVfc3RhdGUtPmN1c19j
dGwpOwo+ICAKPiAgCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEwIHx8IElTX0dFTUlOSUxB
S0UoZGV2X3ByaXYpKQo+ICAJCUk5MTVfV1JJVEVfRlcoUExBTkVfQ09MT1JfQ1RMKHBpcGUsIHBs
YW5lX2lkKSwgcGxhbmVfY29sb3JfY3RsKTsKPiBAQCAtNjI3LDcgKzYwOSw3IEBAIHNrbF9wcm9n
cmFtX3BsYW5lKHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsCj4gIAlJOTE1X1dSSVRFX0ZXKFBM
QU5FX1NVUkYocGlwZSwgcGxhbmVfaWQpLAo+ICAJCSAgICAgIGludGVsX3BsYW5lX2dndHRfb2Zm
c2V0KHBsYW5lX3N0YXRlKSArIHN1cmZfYWRkcik7Cj4gIAo+IC0JaWYgKCFzbGF2ZSAmJiBwbGFu
ZV9zdGF0ZS0+c2NhbGVyX2lkID49IDApCj4gKwlpZiAocGxhbmVfc3RhdGUtPnNjYWxlcl9pZCA+
PSAwKQo+ICAJCXNrbF9wcm9ncmFtX3NjYWxlcihwbGFuZSwgY3J0Y19zdGF0ZSwgcGxhbmVfc3Rh
dGUpOwo+ICAKPiAgCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmRldl9wcml2LT51bmNvcmUubG9j
aywgaXJxZmxhZ3MpOwo+IEBAIC02NDAsMjQgKzYyMiwxMyBAQCBza2xfdXBkYXRlX3BsYW5lKHN0
cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsCj4gIHsKPiAgCWludCBjb2xvcl9wbGFuZSA9IDA7Cj4g
IAo+IC0JaWYgKHBsYW5lX3N0YXRlLT5wbGFuYXJfbGlua2VkX3BsYW5lKSB7Cj4gKwlpZiAoZHJt
X2Zvcm1hdF9pbmZvX2lzX3l1dl9zZW1pcGxhbmFyKHBsYW5lX3N0YXRlLT5ody5mYi0+Zm9ybWF0
KSAmJgo+ICsJICAgICFwbGFuZV9zdGF0ZS0+cGxhbmFyX3NsYXZlKQo+ICAJCS8qIFByb2dyYW0g
dGhlIFVWIHBsYW5lICovCj4gIAkJY29sb3JfcGxhbmUgPSAxOwo+IC0JfQpBbmQgZm9yIHByZS1p
Y2wsIHRoaXMgZXhwbGFpbnMgdGhlIHRlc3QgZmFpbHVyZXMsIG5lZWRzIGEgZ2VuMTErIGNoZWNr
Lgo+ICAKPiAtCXNrbF9wcm9ncmFtX3BsYW5lKHBsYW5lLCBjcnRjX3N0YXRlLCBwbGFuZV9zdGF0
ZSwKPiAtCQkJICBjb2xvcl9wbGFuZSwgZmFsc2UsIHBsYW5lX3N0YXRlLT5jdGwpOwo+ICsJc2ts
X3Byb2dyYW1fcGxhbmUocGxhbmUsIGNydGNfc3RhdGUsIHBsYW5lX3N0YXRlLCBjb2xvcl9wbGFu
ZSk7Cj4gIH0KPiAtCj4gLXN0YXRpYyB2b2lkCj4gLWljbF91cGRhdGVfc2xhdmUoc3RydWN0IGlu
dGVsX3BsYW5lICpwbGFuZSwKPiAtCQkgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUsCj4gLQkJIGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3Rh
dGUpCj4gLXsKPiAtCXNrbF9wcm9ncmFtX3BsYW5lKHBsYW5lLCBjcnRjX3N0YXRlLCBwbGFuZV9z
dGF0ZSwgMCwgdHJ1ZSwKPiAtCQkJICBwbGFuZV9zdGF0ZS0+Y3RsIHwgUExBTkVfQ1RMX1lVVjQy
MF9ZX1BMQU5FKTsKPiAtfQo+IC0KPiAgc3RhdGljIHZvaWQKPiAgc2tsX2Rpc2FibGVfcGxhbmUo
c3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwKPiAgCQkgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlKQo+IEBAIC0xODQ0LDYgKzE4MTUsMTQgQEAgc3RhdGljIGludCBz
a2xfcGxhbmVfY2hlY2soc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4gIAkJ
cGxhbmVfc3RhdGUtPmNvbG9yX2N0bCA9IGdsa19wbGFuZV9jb2xvcl9jdGwoY3J0Y19zdGF0ZSwK
PiAgCQkJCQkJCSAgICAgcGxhbmVfc3RhdGUpOwo+ICAKPiArCWlmIChpY2xfaXNfaGRyX3BsYW5l
KGRldl9wcml2LCBwbGFuZS0+aWQpICYmIGZiLT5mb3JtYXQtPmlzX3l1dikKPiArCQkvKiBFbmFi
bGUgYW5kIHVzZSBNUEVHLTIgY2hyb21hIHNpdGluZyAqLwo+ICsJCXBsYW5lX3N0YXRlLT5jdXNf
Y3RsID0gUExBTkVfQ1VTX0VOQUJMRSB8Cj4gKwkJCVBMQU5FX0NVU19IUEhBU0VfMCB8Cj4gKwkJ
CVBMQU5FX0NVU19WUEhBU0VfU0lHTl9ORUdBVElWRSB8IFBMQU5FX0NVU19WUEhBU0VfMF8yNTsK
PiArCWVsc2UKPiArCQlwbGFuZV9zdGF0ZS0+Y3VzX2N0bCA9IDA7CgpuZWVkcyBkcm1fZm9ybWF0
X2luZm9faXNfeXV2X3NlbWlwbGFuYXIoZmItPmZvcm1hdCkgaW5zdGVhZCBvZiBpc195dXYgY2hl
Y2suIFRoaXMgZXhwbGFpbnMgdGhlIHRlc3QgZmFpbHVyZXMgb24gaWNsKy4KCj4gIAlyZXR1cm4g
MDsKPiAgfQo+ICAKPiBAQCAtMjUxMiw4ICsyNDkxLDYgQEAgc2tsX3VuaXZlcnNhbF9wbGFuZV9j
cmVhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ICAJcGxhbmUtPmRpc2Fi
bGVfcGxhbmUgPSBza2xfZGlzYWJsZV9wbGFuZTsKPiAgCXBsYW5lLT5nZXRfaHdfc3RhdGUgPSBz
a2xfcGxhbmVfZ2V0X2h3X3N0YXRlOwo+ICAJcGxhbmUtPmNoZWNrX3BsYW5lID0gc2tsX3BsYW5l
X2NoZWNrOwo+IC0JaWYgKGljbF9pc19udjEyX3lfcGxhbmUocGxhbmVfaWQpKQo+IC0JCXBsYW5l
LT51cGRhdGVfc2xhdmUgPSBpY2xfdXBkYXRlX3NsYXZlOwo+ICAKPiAgCWlmIChJTlRFTF9HRU4o
ZGV2X3ByaXYpID49IDExKQo+ICAJCWZvcm1hdHMgPSBpY2xfZ2V0X3BsYW5lX2Zvcm1hdHMoZGV2
X3ByaXYsIHBpcGUsCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
