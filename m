Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61CC3127EC2
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 15:50:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16D1F6E452;
	Fri, 20 Dec 2019 14:50:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59F2D6E452
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 14:50:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 06:50:44 -0800
X-IronPort-AV: E=Sophos;i="5.69,336,1571727600"; d="scan'208";a="210832900"
Received: from dtriolet-mobl1.ger.corp.intel.com (HELO [10.251.84.191])
 ([10.251.84.191])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 20 Dec 2019 06:50:43 -0800
To: Ankit Navik <ankit.p.navik@intel.com>, intel-gfx@lists.freedesktop.org
References: <1574743899-17638-1-git-send-email-ankit.p.navik@intel.com>
 <1574743899-17638-4-git-send-email-ankit.p.navik@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <5900890c-2597-d40c-a7cf-0577b370c19f@linux.intel.com>
Date: Fri, 20 Dec 2019 14:50:41 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1574743899-17638-4-git-send-email-ankit.p.navik@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v6 3/3] drm/i915: Predictive governor to
 control slice/subslice/eu
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
Cc: vipin.anand@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDI2LzExLzIwMTkgMDQ6NTEsIEFua2l0IE5hdmlrIHdyb3RlOgo+IEhpZ2ggcmVzb2x1dGlv
biB0aW1lciBpcyB1c2VkIGZvciBwcmVkaWN0aXZlIGdvdmVybm9yIHRvIGNvbnRyb2wKPiBldS9z
bGljZS9zdWJzbGljZSBiYXNlZCBvbiB3b3JrbG9hZHMuCj4gCj4gcGFyYW0gaXMgcHJvdmlkZWQg
dG8gZW5hYmxlL2Rpc2FibGUvdXBkYXRlIHRpbWVyIGNvbmZpZ3VyYXRpb24KPiAKPiBWMjoKPiAg
ICogRml4IGNvZGUgc3R5bGUuCj4gICAqIE1vdmUgcHJlZGljdGl2ZV9sb2FkX3RpbWVyIGludG8g
YSBkcm1faTkxNV9wcml2YXRlCj4gICAgIHN0cnVjdHVyZS4KPiAgICogTWFrZSBnZW5lcmljIGZ1
bmN0aW9uIHRvIHNldCBvcHRpbXVtIGNvbmZpZy4gKFR2cnRrbyBVcnN1bGluKQo+IAo+IFYzOgo+
ICAgKiBSZWJhc2UuCj4gICAqIEZpeCByYWNlIGNvbmRpdGlvbiBmb3IgcHJlZGljdGl2ZSBsb2Fk
IHNldC4KPiAgICogQWRkIHNsYWNrIHRvIHN0YXJ0IGhydGltZXIgZm9yIG1vcmUgcG93ZXIgZWZm
aWNpZW50LiAoVHZydGtvIFVyc3VsaW4pCj4gCj4gVjQ6Cj4gICAqIEZpeCBkYXRhIHR5cGUgYW5k
IGluaXRpYWxpemF0aW9uIG9mIG11dGV4IHRvIHByb3RlY3QgcHJlZGljdGl2ZSBsb2FkCj4gICAg
IHN0YXRlLgo+ICAgKiBNb3ZlIHByZWRpY3RpdmUgdGltZXIgaW5pdCB0byBpOTE1X2dlbV9pbml0
X2Vhcmx5LiAoVHZydGtvIFVyc3VsaW4pCj4gICAqIE1vdmUgZGVidWdmcyB0byBrZXJuZWwgcGFy
YW1ldGVyLgo+IAo+IFY1Ogo+ICAgKiBSZWJhc2UuCj4gICAqIFJlbW92ZSBtdXRleCBmb3IgcHJl
ZF90aW1lcgo+IAo+IFY2Ogo+ICAgKiBSZWJhc2UuCj4gICAqIEZpeCB3YXJuaW5ncy4KPiAKPiBD
YzogVmlwaW4gQW5hbmQgPHZpcGluLmFuYW5kQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBB
bmtpdCBOYXZpayA8YW5raXQucC5uYXZpa0BpbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9NYWtlZmlsZSAgICAgICB8ICAgMSArCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9kZXUuYyB8IDEwNCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysKPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2RldS5oIHwgIDMxICsrKysrKysr
KysrCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICB8ICAgNCArKwo+ICAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyAgICAgfCAgIDQgKysKPiAgIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmMgIHwgICA0ICsrCj4gICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3BhcmFtcy5oICB8ICAgMSArCj4gICA3IGZpbGVzIGNoYW5nZWQsIDE0OSBpbnNl
cnRpb25zKCspCj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZGV1LmMKPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9kZXUuaAo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtl
ZmlsZSBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCj4gaW5kZXggZTBmZDEwYy4uYzFh
OThmMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCj4gQEAgLTc3LDYgKzc3LDcgQEAgb2JqLXkg
Kz0gZ3QvCj4gICBndC15ICs9IFwKPiAgIAlndC9pbnRlbF9icmVhZGNydW1icy5vIFwKPiAgIAln
dC9pbnRlbF9jb250ZXh0Lm8gXAo+ICsJZ3QvaW50ZWxfZGV1Lm8gXAo+ICAgCWd0L2ludGVsX2Vu
Z2luZV9jcy5vIFwKPiAgIAlndC9pbnRlbF9lbmdpbmVfaGVhcnRiZWF0Lm8gXAo+ICAgCWd0L2lu
dGVsX2VuZ2luZV9wbS5vIFwKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZGV1LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9kZXUuYwo+IG5ldyBm
aWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMC4uNmM1YjAxYwo+IC0tLSAvZGV2L251bGwK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9kZXUuYwo+IEBAIC0wLDAgKzEs
MTA0IEBACj4gKy8qCj4gKyAqIENvcHlyaWdodCDCqSAyMDE5IEludGVsIENvcnBvcmF0aW9uCj4g
KyAqCj4gKyAqIFBlcm1pc3Npb24gaXMgaGVyZWJ5IGdyYW50ZWQsIGZyZWUgb2YgY2hhcmdlLCB0
byBhbnkgcGVyc29uIG9idGFpbmluZyBhCj4gKyAqIGNvcHkgb2YgdGhpcyBzb2Z0d2FyZSBhbmQg
YXNzb2NpYXRlZCBkb2N1bWVudGF0aW9uIGZpbGVzICh0aGUgIlNvZnR3YXJlIiksCj4gKyAqIHRv
IGRlYWwgaW4gdGhlIFNvZnR3YXJlIHdpdGhvdXQgcmVzdHJpY3Rpb24sIGluY2x1ZGluZyB3aXRo
b3V0IGxpbWl0YXRpb24KPiArICogdGhlIHJpZ2h0cyB0byB1c2UsIGNvcHksIG1vZGlmeSwgbWVy
Z2UsIHB1Ymxpc2gsIGRpc3RyaWJ1dGUsIHN1YmxpY2Vuc2UsCj4gKyAqIGFuZC9vciBzZWxsIGNv
cGllcyBvZiB0aGUgU29mdHdhcmUsIGFuZCB0byBwZXJtaXQgcGVyc29ucyB0byB3aG9tIHRoZQo+
ICsgKiBTb2Z0d2FyZSBpcyBmdXJuaXNoZWQgdG8gZG8gc28sIHN1YmplY3QgdG8gdGhlIGZvbGxv
d2luZyBjb25kaXRpb25zOgo+ICsgKgo+ICsgKiBUaGUgYWJvdmUgY29weXJpZ2h0IG5vdGljZSBh
bmQgdGhpcyBwZXJtaXNzaW9uIG5vdGljZSAoaW5jbHVkaW5nIHRoZSBuZXh0Cj4gKyAqIHBhcmFn
cmFwaCkgc2hhbGwgYmUgaW5jbHVkZWQgaW4gYWxsIGNvcGllcyBvciBzdWJzdGFudGlhbCBwb3J0
aW9ucyBvZiB0aGUKPiArICogU29mdHdhcmUuCj4gKyAqCj4gKyAqIFRIRSBTT0ZUV0FSRSBJUyBQ
Uk9WSURFRCAiQVMgSVMiLCBXSVRIT1VUIFdBUlJBTlRZIE9GIEFOWSBLSU5ELCBFWFBSRVNTIE9S
Cj4gKyAqIElNUExJRUQsIElOQ0xVRElORyBCVVQgTk9UIExJTUlURUQgVE8gVEhFIFdBUlJBTlRJ
RVMgT0YgTUVSQ0hBTlRBQklMSVRZLAo+ICsgKiBGSVRORVNTIEZPUiBBIFBBUlRJQ1VMQVIgUFVS
UE9TRSBBTkQgTk9OSU5GUklOR0VNRU5ULiAgSU4gTk8gRVZFTlQgU0hBTEwKPiArICogVEhFIEFV
VEhPUlMgT1IgQ09QWVJJR0hUIEhPTERFUlMgQkUgTElBQkxFIEZPUiBBTlkgQ0xBSU0sIERBTUFH
RVMgT1IgT1RIRVIKPiArICogTElBQklMSVRZLCBXSEVUSEVSIElOIEFOIEFDVElPTiBPRiBDT05U
UkFDVCwgVE9SVCBPUiBPVEhFUldJU0UsIEFSSVNJTkcKPiArICogRlJPTSwgT1VUIE9GIE9SIElO
IENPTk5FQ1RJT04gV0lUSCBUSEUgU09GVFdBUkUgT1IgVEhFIFVTRSBPUiBPVEhFUgo+ICsgKiBE
RUFMSU5HUyBJTiBUSEUgU09GVFdBUkUuCj4gKyAqCj4gKyAqIEF1dGhvcnM6Cj4gKyAqICAgIEFu
a2l0IE5hdmlrIDxhbmtpdC5wLm5hdmlrQGludGVsLmNvbT4KPiArICovCj4gKwo+ICsvKioKPiAr
ICogRE9DOiBEeW5hbWljIEVVIENvbnRyb2wgKERFVSkKPiArICoKPiArICogREVVIHRyaWVzIHRv
IHJlLWNvbmZpZ3VyZSBFVSBhbGxvY2F0aW9uIGR1cmluZyBydW50aW1lIGJ5IHByZWRpY3RpdmUg
bG9hZAo+ICsgKiBjYWxjdWxhdGlvbiBvZiBjb21tYW5kIHF1ZXVlIHRvIGdhaW4gcG93ZXIgc2F2
aW5nLgo+ICsgKiBJdCBpcyB0cmFuc3BhcmVudCB0byB1c2VyIHNwYWNlIGFuZCBjb21wbGV0ZWx5
IGhhbmRsZWQgaW4gdGhlIGtlcm5lbC4KPiArICovCj4gKwo+ICsjaW5jbHVkZSAiaW50ZWxfZGV1
LmgiCj4gKyNpbmNsdWRlICJpOTE1X2Rydi5oIgo+ICsjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX2Nv
bnRleHQuaCIKPiArCj4gKy8qCj4gKyAqIEFueXRoaW5nIGFib3ZlIHRocmVzaG9sZCBpcyBjb25z
aWRlcmVkIGFzIEhJR0ggbG9hZCwgbGVzcyBpcyBjb25zaWRlcmVkCj4gKyAqIGFzIExPVyBsb2Fk
IGFuZCBlcXVhbCBpcyBjb25zaWRlcmVkIGFzIE1FRElVTSBsb2FkLgo+ICsgKgo+ICsgKiBUaGUg
dGhyZXNob2xkIHZhbHVlIG9mIHRocmVlIGFjdGl2ZSByZXF1ZXN0cyBwZW5kaW5nLgo+ICsgKi8K
PiArI2RlZmluZSBQRU5ESU5HX1RIUkVTSE9MRF9NRURJVU0gMwo+ICsKPiArI2RlZmluZSBTTEFD
S19USU1FUl9OU0VDIDEwMDAwMDAgLyogVGltZXIgcmFuZ2UgaW4gbmFubyBzZWNvbmQgKi8KPiAr
Cj4gK2VudW0gaHJ0aW1lcl9yZXN0YXJ0IHByZWRpY3RpdmVfbG9hZF9jYihzdHJ1Y3QgaHJ0aW1l
ciAqaHJ0aW1lcikKPiArewo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0K
PiArCQkJY29udGFpbmVyX29mKGhydGltZXIsIHR5cGVvZigqZGV2X3ByaXYpLCBwcmVkX3RpbWVy
KTsKPiArCXN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHg7Cj4gKwllbnVtIGdlbV9sb2FkX3R5
cGUgbG9hZF90eXBlOwo+ICsJdW5zaWduZWQgaW50IHJlcV9wZW5kaW5nOwo+ICsKPiArCWxpc3Rf
Zm9yX2VhY2hfZW50cnkoY3R4LCAmZGV2X3ByaXYtPmdlbS5jb250ZXh0cy5saXN0LCBsaW5rKSB7
Cj4gKwkJcmVxX3BlbmRpbmcgPSBhdG9taWNfcmVhZCgmY3R4LT5yZXFfY250KTsKPiArCgpBbm90
aGVyIHRob3VnaHQgaGVyZS4gU1NFVSBjb25maWd1cmF0aW9uIGlzIGEgc2hhcmVkIHJlc291cmNl
IGFmZmVjdGluZyAKc29tZSBlbmdpbmVzIHdpdGggc29tZSBjb21tYW5kcy4gRm9yIGluc3RhbmNl
IG51bWJlciBvZiByZXF1ZXN0cyAKdGFyZ2V0aW5nIHRoZSBibGl0dGVyIGVuZ2luZSBzb3VuZHMg
Y29tcGxldGVseSBpcnJlbGV2YW50IHRvIHRoaXMgCmRlY2lzaW9uLiBSZXF1ZXN0cyB0YXJnZXRp
bmcgdmlkZW8gZW5naW5lcyBtYXkgb3IgbWF5IG5vdCBiZSByZWxldmFudCwgCmRlcGVuZHMgaWYg
dGhleSBhcmUgdXNpbmcgbWVkaWEgZml4ZWQgZnVuY3Rpb24gb3Igbm9uLWZpeGVkIGZ1bmN0aW9u
IApwaXBlbGluZSAoSSB0aGluayBhdCBsZWFzdCB0aGV5IGNhbiBkbyB0aGlzLikuIFJlbmRlciBp
cyBhbHdheXMgcmVsZXZhbnQuCgpJIGhhZCBzb21lIHBhdGNoZXMgd2hpY2ggY291bnQgcGVyIGVu
Z2luZSwgYnV0IGluIGEgd29ybGQgb2YgdmlydHVhbCAKZW5naW5lcyB0aGF0IGRvZXMgbm90IHdv
cmsgc28gd2VsbC4gTWF5YmUgc29sdXRpb24gaXMgdG8gdHJhY2sgcGVyIApzdHJ1Y3QgaW50ZWxf
Y29udGV4dC4gVGhhdCBzaG91bGQgc29sdmUgdGhlIHZpcnR1YWwgZW5naW5lIHByb2JsZW0sIGJ1
dCAKSSBhbSB1bnN1cmUgaG93IHRvIGRlYWwgd2l0aCB0aGUgbWVkaWEgYW5nbGUuCgpJIGNhbiBz
a2V0Y2ggb3V0IHRoZSBpbnRlbF9jb250ZXh0IHJlcXVlc3QgdHJhY2tpbmcgYWZ0ZXIgdGhlIGhv
bGlkYXkgCmJyZWFrIGFzIGEgc3RhcnRpbmcgcG9pbnQuCgpSZWdhcmRzLAoKVHZydGtvCgo+ICsJ
CS8qCj4gKwkJICogVHJhbnNpdGlvbmluZyB0byBsb3cgc3RhdGUgd2hlbmV2ZXIgcGVuZGluZyBy
ZXF1ZXN0IGlzIHplcm8KPiArCQkgKiB3b3VsZCBjYXVzZSB2YWNpbGxhdGlvbiBiZXR3ZWVuIGxv
dyBhbmQgaGlnaCBzdGF0ZS4KPiArCQkgKi8KPiArCQlpZiAocmVxX3BlbmRpbmcgPT0gMCkKPiAr
CQkJY29udGludWU7Cj4gKwo+ICsJCWlmIChyZXFfcGVuZGluZyA+IFBFTkRJTkdfVEhSRVNIT0xE
X01FRElVTSkKPiArCQkJbG9hZF90eXBlID0gTE9BRF9UWVBFX0hJR0g7Cj4gKwkJZWxzZSBpZiAo
cmVxX3BlbmRpbmcgPT0gUEVORElOR19USFJFU0hPTERfTUVESVVNKQo+ICsJCQlsb2FkX3R5cGUg
PSBMT0FEX1RZUEVfTUVESVVNOwo+ICsJCWVsc2UKPiArCQkJbG9hZF90eXBlID0gTE9BRF9UWVBF
X0xPVzsKPiArCj4gKwkJaTkxNV9nZW1fY29udGV4dF9zZXRfbG9hZF90eXBlKGN0eCwgbG9hZF90
eXBlKTsKPiArCX0KPiArCj4gKwlocnRpbWVyX2ZvcndhcmRfbm93KGhydGltZXIsCj4gKwkJCSAg
ICBtc190b19rdGltZShkZXZfcHJpdi0+cHJlZGljdGl2ZV9sb2FkX2VuYWJsZSkpOwo+ICsKPiAr
CXJldHVybiBIUlRJTUVSX1JFU1RBUlQ7Cj4gK30KPiArCj4gKy8qKgo+ICsgKiBpbnRlbF9kZXVf
aW5pdCAtIEluaXRpYWxpemUgZHluYW1pYyBFVQo+ICsgKiBAZGV2X3ByaXY6IGk5MTUgZGV2aWNl
IGluc3RhbmNlCj4gKyAqCj4gKyAqIFRoaXMgZnVuY3Rpb24gaXMgY2FsbGVkIGF0IGRyaXZlciBs
b2FkCj4gKyAqLwo+ICt2b2lkIGludGVsX2RldV9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdikKPiArewo+ICsJZGV2X3ByaXYtPnByZWRpY3RpdmVfbG9hZF9lbmFibGUgPSBp
OTE1X21vZHBhcmFtcy5kZXVfZW5hYmxlOwo+ICsJaHJ0aW1lcl9pbml0KCZkZXZfcHJpdi0+cHJl
ZF90aW1lciwgQ0xPQ0tfTU9OT1RPTklDLCBIUlRJTUVSX01PREVfUkVMKTsKPiArCWRldl9wcml2
LT5wcmVkX3RpbWVyLmZ1bmN0aW9uID0gcHJlZGljdGl2ZV9sb2FkX2NiOwo+ICsKPiArCWlmIChk
ZXZfcHJpdi0+cHJlZGljdGl2ZV9sb2FkX2VuYWJsZSkgewo+ICsJCWlmICghaHJ0aW1lcl9hY3Rp
dmUoJmRldl9wcml2LT5wcmVkX3RpbWVyKSkKPiArCQkJaHJ0aW1lcl9zdGFydF9yYW5nZV9ucygm
ZGV2X3ByaXYtPnByZWRfdGltZXIsCj4gKwkJCW1zX3RvX2t0aW1lKGRldl9wcml2LT5wcmVkaWN0
aXZlX2xvYWRfZW5hYmxlKSwKPiArCQkJU0xBQ0tfVElNRVJfTlNFQywKPiArCQkJSFJUSU1FUl9N
T0RFX1JFTF9QSU5ORUQpOwo+ICsJfSBlbHNlIHsKPiArCQlocnRpbWVyX2NhbmNlbCgmZGV2X3By
aXYtPnByZWRfdGltZXIpOwo+ICsJfQo+ICt9Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2RldS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZGV1
LmgKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAuLjNiNGIxNmYKPiAtLS0g
L2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZGV1LmgKPiBA
QCAtMCwwICsxLDMxIEBACj4gKy8qCj4gKyAqIENvcHlyaWdodCDCqSAyMDE5IEludGVsIENvcnBv
cmF0aW9uCj4gKyAqCj4gKyAqIFBlcm1pc3Npb24gaXMgaGVyZWJ5IGdyYW50ZWQsIGZyZWUgb2Yg
Y2hhcmdlLCB0byBhbnkgcGVyc29uIG9idGFpbmluZyBhCj4gKyAqIGNvcHkgb2YgdGhpcyBzb2Z0
d2FyZSBhbmQgYXNzb2NpYXRlZCBkb2N1bWVudGF0aW9uIGZpbGVzICh0aGUgIlNvZnR3YXJlIiks
Cj4gKyAqIHRvIGRlYWwgaW4gdGhlIFNvZnR3YXJlIHdpdGhvdXQgcmVzdHJpY3Rpb24sIGluY2x1
ZGluZyB3aXRob3V0IGxpbWl0YXRpb24KPiArICogdGhlIHJpZ2h0cyB0byB1c2UsIGNvcHksIG1v
ZGlmeSwgbWVyZ2UsIHB1Ymxpc2gsIGRpc3RyaWJ1dGUsIHN1YmxpY2Vuc2UsCj4gKyAqIGFuZC9v
ciBzZWxsIGNvcGllcyBvZiB0aGUgU29mdHdhcmUsIGFuZCB0byBwZXJtaXQgcGVyc29ucyB0byB3
aG9tIHRoZQo+ICsgKiBTb2Z0d2FyZSBpcyBmdXJuaXNoZWQgdG8gZG8gc28sIHN1YmplY3QgdG8g
dGhlIGZvbGxvd2luZyBjb25kaXRpb25zOgo+ICsgKgo+ICsgKiBUaGUgYWJvdmUgY29weXJpZ2h0
IG5vdGljZSBhbmQgdGhpcyBwZXJtaXNzaW9uIG5vdGljZSAoaW5jbHVkaW5nIHRoZSBuZXh0Cj4g
KyAqIHBhcmFncmFwaCkgc2hhbGwgYmUgaW5jbHVkZWQgaW4gYWxsIGNvcGllcyBvciBzdWJzdGFu
dGlhbCBwb3J0aW9ucyBvZiB0aGUKPiArICogU29mdHdhcmUuCj4gKyAqCj4gKyAqIFRIRSBTT0ZU
V0FSRSBJUyBQUk9WSURFRCAiQVMgSVMiLCBXSVRIT1VUIFdBUlJBTlRZIE9GIEFOWSBLSU5ELCBF
WFBSRVNTIE9SCj4gKyAqIElNUExJRUQsIElOQ0xVRElORyBCVVQgTk9UIExJTUlURUQgVE8gVEhF
IFdBUlJBTlRJRVMgT0YgTUVSQ0hBTlRBQklMSVRZLAo+ICsgKiBGSVRORVNTIEZPUiBBIFBBUlRJ
Q1VMQVIgUFVSUE9TRSBBTkQgTk9OSU5GUklOR0VNRU5ULiAgSU4gTk8gRVZFTlQgU0hBTEwKPiAr
ICogVEhFIEFVVEhPUlMgT1IgQ09QWVJJR0hUIEhPTERFUlMgQkUgTElBQkxFIEZPUiBBTlkgQ0xB
SU0sIERBTUFHRVMgT1IgT1RIRVIKPiArICogTElBQklMSVRZLCBXSEVUSEVSIElOIEFOIEFDVElP
TiBPRiBDT05UUkFDVCwgVE9SVCBPUiBPVEhFUldJU0UsIEFSSVNJTkcKPiArICogRlJPTSwgT1VU
IE9GIE9SIElOIENPTk5FQ1RJT04gV0lUSCBUSEUgU09GVFdBUkUgT1IgVEhFIFVTRSBPUiBPVEhF
Ugo+ICsgKiBERUFMSU5HUyBJTiBUSEUgU09GVFdBUkUuCj4gKyAqLwo+ICsKPiArI2lmbmRlZiBf
X0lOVEVMX0RFVV9IX18KPiArI2RlZmluZSBfX0lOVEVMX0RFVV9IX18KPiArCj4gK3N0cnVjdCBk
cm1faTkxNV9wcml2YXRlOwo+ICsKPiArdm9pZCBpbnRlbF9kZXVfaW5pdChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwo+ICsKPiArI2VuZGlmIC8qIF9fSU5URUxfREVVX0hfXyAq
Lwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+IGluZGV4IDMwNjRkZGYuLjU1NTM1MzcgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiBAQCAtMTAwMiw2ICsxMDAyLDggQEAgc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgewo+ICAgCS8qIG9wdGltYWwgc2xpY2Uvc3Vic2xpY2UvRVUgY29uZmln
cmF0aW9uIHN0YXRlICovCj4gICAJc3RydWN0IGk5MTVfc3NldV9vcHRpbXVtX2NvbmZpZyAqb3B0
X2NvbmZpZzsKPiAgIAo+ICsJLyogcHJvdGVjdHMgcHJlZGljdGl2ZSBsb2FkIHN0YXRlICovCj4g
KwlzdHJ1Y3QgaHJ0aW1lciBwcmVkX3RpbWVyOwo+ICAgCWludCBwcmVkaWN0aXZlX2xvYWRfZW5h
YmxlOwo+ICAgCj4gICAJdW5zaWduZWQgaW50IGZzYl9mcmVxLCBtZW1fZnJlcSwgaXNfZGRyMzsK
PiBAQCAtMTc2OCw2ICsxNzcwLDggQEAgbG9uZyBpOTE1X2NvbXBhdF9pb2N0bChzdHJ1Y3QgZmls
ZSAqZmlscCwgdW5zaWduZWQgaW50IGNtZCwgdW5zaWduZWQgbG9uZyBhcmcpOwo+ICAgI2VuZGlm
Cj4gICBleHRlcm4gY29uc3Qgc3RydWN0IGRldl9wbV9vcHMgaTkxNV9wbV9vcHM7Cj4gICAKPiAr
ZXh0ZXJuIGVudW0gaHJ0aW1lcl9yZXN0YXJ0IHByZWRpY3RpdmVfbG9hZF9jYihzdHJ1Y3QgaHJ0
aW1lciAqaHJ0aW1lcik7Cj4gKwo+ICAgaW50IGk5MTVfZHJpdmVyX3Byb2JlKHN0cnVjdCBwY2lf
ZGV2ICpwZGV2LCBjb25zdCBzdHJ1Y3QgcGNpX2RldmljZV9pZCAqZW50KTsKPiAgIHZvaWQgaTkx
NV9kcml2ZXJfcmVtb3ZlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsKPiAgIAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW0uYwo+IGluZGV4IDYxMzk1YjAuLmVlNzExY2UgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtLmMKPiBAQCAtNDUsNiArNDUsNyBAQAo+ICAgI2luY2x1ZGUgImdlbS9p
OTE1X2dlbV9jb250ZXh0LmgiCj4gICAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX2lvY3Rscy5oIgo+
ICAgI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9wbS5oIgo+ICsjaW5jbHVkZSAiZ3QvaW50ZWxfZGV1
LmgiCj4gICAjaW5jbHVkZSAiZ3QvaW50ZWxfY29udGV4dC5oIgo+ICAgI2luY2x1ZGUgImd0L2lu
dGVsX2VuZ2luZV91c2VyLmgiCj4gICAjaW5jbHVkZSAiZ3QvaW50ZWxfZ3QuaCIKPiBAQCAtMTQx
Niw2ICsxNDE3LDkgQEAgdm9pZCBpOTE1X2dlbV9pbml0X2Vhcmx5KHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdikKPiAgIAlpOTE1X2dlbV9pbml0X19tbShkZXZfcHJpdik7Cj4gICAK
PiAgIAlzcGluX2xvY2tfaW5pdCgmZGV2X3ByaXYtPmZiX3RyYWNraW5nLmxvY2spOwo+ICsKPiAr
CS8qIER5bmFtaWMgRVUgdGltZXIgaW5pdGlhbGl6YXRpb24gZm9yIHByZWRpY3RpdmUgbG9hZCAq
Lwo+ICsJaW50ZWxfZGV1X2luaXQoZGV2X3ByaXYpOwo+ICAgfQo+ICAgCj4gICB2b2lkIGk5MTVf
Z2VtX2NsZWFudXBfZWFybHkoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuYwo+IGluZGV4IDFkZDFmMzYuLmE1YTNhNmUgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuYwo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmMKPiBAQCAtMTAxLDYgKzEwMSwxMCBAQCBpOTE1
X3BhcmFtX25hbWVkX3Vuc2FmZShkaXNhYmxlX3Bvd2VyX3dlbGwsIGludCwgMDQwMCwKPiAgIAo+
ICAgaTkxNV9wYXJhbV9uYW1lZF91bnNhZmUoZW5hYmxlX2lwcywgaW50LCAwNjAwLCAiRW5hYmxl
IElQUyAoZGVmYXVsdDogdHJ1ZSkiKTsKPiAgIAo+ICtpOTE1X3BhcmFtX25hbWVkX3Vuc2FmZShk
ZXVfZW5hYmxlLCBpbnQsIDA2MDAsCj4gKwkiRW5hYmxlIGR5bmFtaWMgRVUgY29udHJvbCBmb3Ig
cG93ZXIgc2F2aW5ncyAiCj4gKwkiKDA9ZGlzYWJsZSBkZXUgcHJlZGljdGl2ZSB0aW1lciBbZGVm
YXVsdF0sIDE1MD1vcHRpbWFsIGRldSBwcmVkaWN0aXZlIHRpbWVyKSIpOwo+ICsKPiAgIGk5MTVf
cGFyYW1fbmFtZWQoZmFzdGJvb3QsIGludCwgMDYwMCwKPiAgIAkiVHJ5IHRvIHNraXAgdW5uZWNl
c3NhcnkgbW9kZSBzZXRzIGF0IGJvb3QgdGltZSAiCj4gICAJIigwPWRpc2FibGVkLCAxPWVuYWJs
ZWQpICIKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaCBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmgKPiBpbmRleCAzMWI4OGYyLi5jZjA5
MDNiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmgKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oCj4gQEAgLTU0LDYgKzU0LDcg
QEAgc3RydWN0IGRybV9wcmludGVyOwo+ICAgCXBhcmFtKGludCwgZGlzYWJsZV9wb3dlcl93ZWxs
LCAtMSkgXAo+ICAgCXBhcmFtKGludCwgZW5hYmxlX2lwcywgMSkgXAo+ICAgCXBhcmFtKGludCwg
aW52ZXJ0X2JyaWdodG5lc3MsIDApIFwKPiArCXBhcmFtKGludCwgZGV1X2VuYWJsZSwgMCkgXAo+
ICAgCXBhcmFtKGludCwgZW5hYmxlX2d1YywgMCkgXAo+ICAgCXBhcmFtKGludCwgZ3VjX2xvZ19s
ZXZlbCwgLTEpIFwKPiAgIAlwYXJhbShjaGFyICosIGd1Y19maXJtd2FyZV9wYXRoLCBOVUxMKSBc
Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
