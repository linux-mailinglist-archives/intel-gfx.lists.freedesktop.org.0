Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D8364F53
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 01:43:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F389189C0A;
	Wed, 10 Jul 2019 23:43:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3530189C0A
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 23:43:22 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 16:43:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,476,1557212400"; d="scan'208";a="156650899"
Received: from unerlige-desk.ra.intel.com (HELO
 unerlige-desk.amr.corp.intel.com) ([10.10.37.77])
 by orsmga007.jf.intel.com with ESMTP; 10 Jul 2019 16:43:21 -0700
Date: Wed, 10 Jul 2019 16:43:21 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <20190710234321.GA3443@unerlige-desk.amr.corp.intel.com>
References: <20190709123351.5645-1-lionel.g.landwerlin@intel.com>
 <20190709123351.5645-7-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190709123351.5645-7-lionel.g.landwerlin@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH v8 06/13] drm/i915/perf: implement active
 wait for noa configurations
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

T24gVHVlLCBKdWwgMDksIDIwMTkgYXQgMDM6MzM6NDRQTSArMDMwMCwgTGlvbmVsIExhbmR3ZXJs
aW4gd3JvdGU6Cj5OT0EgY29uZmlndXJhdGlvbiB0YWtlIHNvbWUgYW1vdW50IG9mIHRpbWUgdG8g
YXBwbHkuIFRoYXQgYW1vdW50IG9mCj50aW1lIGRlcGVuZHMgb24gdGhlIHNpemUgb2YgdGhlIEdU
LiBUaGVyZSBpcyBubyBkb2N1bWVudGVkIHRpbWUgZm9yCj50aGlzLiBGb3IgZXhhbXBsZSwgcGFz
dCBleHBlcmltZW50YXRpb25zIHdpdGggcG93ZXJnYXRpbmcKPmNvbmZpZ3VyYXRpb24gY2hhbmdl
cyBzZWVtIHRvIGluZGljYXRlIGEgNjB+NzB1cyBkZWxheS4gV2UgZ28gd2l0aAo+NTAwdXMgYXMg
ZGVmYXVsdCBmb3Igbm93IHdoaWNoIHNob3VsZCBiZSBvdmVyIHRoZSByZXF1aXJlZCBhbW91bnQg
b2YKPnRpbWUgKGFjY29yZGluZyB0byBIVyBhcmNoaXRlY3RzKS4KPgo+djI6IERvbid0IGZvcmdl
dCB0byBzYXZlL3Jlc3RvcmUgcmVnaXN0ZXJzIHVzZWQgZm9yIHRoZSB3YWl0IChDaHJpcykKPgo+
djM6IE5hbWUgdXNlZCBDU19HUFIgcmVnaXN0ZXJzIChDaHJpcykKPiAgICBGaXggY29tcGlsZSBp
c3N1ZSBkdWUgdG8gcmViYXNlIChMaW9uZWwpCj4KPlNpZ25lZC1vZmYtYnk6IExpb25lbCBMYW5k
d2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KPlJldmlld2VkLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPi0tLQo+IGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5oIHwgIDI0ICsrCj4gZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaCAgICAgfCAgIDUgKwo+IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZGVidWdmcy5jICAgICAgICAgIHwgIDMxICsrKwo+IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgIHwgICA4ICsKPiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3BlcmYuYyAgICAgICAgICAgICB8IDIyNiArKysrKysrKysrKysrKysrKystCj4gZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgfCAgIDQgKy0KPiA2IGZp
bGVzIGNoYW5nZWQsIDI5NSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Cj5kaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaAo+aW5kZXggZTdlZmY5ZGIz
NDNlLi40YTY2YWYzOGM4N2IgMTAwNjQ0Cj4tLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9ncHVfY29tbWFuZHMuaAo+KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
Z3B1X2NvbW1hbmRzLmgKPkBAIC0xNTEsNiArMTUxLDcgQEAKPiAjZGVmaW5lICAgTUlfQkFUQ0hf
R1RUCQkgICAgKDI8PDYpIC8qIGFsaWFzZWQgd2l0aCAoMTw8Nykgb24gZ2VuNCAqLwo+ICNkZWZp
bmUgTUlfQkFUQ0hfQlVGRkVSX1NUQVJUX0dFTjgJTUlfSU5TVFIoMHgzMSwgMSkKPiAjZGVmaW5l
ICAgTUlfQkFUQ0hfUkVTT1VSQ0VfU1RSRUFNRVIgKDE8PDEwKQo+KyNkZWZpbmUgICBNSV9CQVRD
SF9QUkVESUNBVEUgICAgICAgICAoMSA8PCAxNSkgLyogSFNXKyBvbiBSQ1Mgb25seSovCj4KPiAv
Kgo+ICAqIDNEIGluc3RydWN0aW9ucyB1c2VkIGJ5IHRoZSBrZXJuZWwKPkBAIC0yMjYsNiArMjI3
LDI5IEBACj4gI2RlZmluZSAgIFBJUEVfQ09OVFJPTF9ERVBUSF9DQUNIRV9GTFVTSAkJKDE8PDAp
Cj4gI2RlZmluZSAgIFBJUEVfQ09OVFJPTF9HTE9CQUxfR1RUICgxPDwyKSAvKiBpbiBhZGRyIGR3
b3JkICovCj4KPisjZGVmaW5lIE1JX01BVEgoeCkgTUlfSU5TVFIoMHgxYSwgKHgpLTEpCj4rI2Rl
ZmluZSAgIE1JX0FMVV9PUChvcCwgc3JjMSwgc3JjMikgKCgob3ApIDw8IDIwKSB8ICgoc3JjMSkg
PDwgMTApIHwgKHNyYzIpKQo+Ky8qIG9wZXJhbmRzICovCj4rI2RlZmluZSAgIE1JX0FMVV9PUF9O
T09QICAgICAwCj4rI2RlZmluZSAgIE1JX0FMVV9PUF9MT0FEICAgICAxMjgKPisjZGVmaW5lICAg
TUlfQUxVX09QX0xPQURJTlYgIDExNTIKPisjZGVmaW5lICAgTUlfQUxVX09QX0xPQUQwICAgIDEy
OQo+KyNkZWZpbmUgICBNSV9BTFVfT1BfTE9BRDEgICAgMTE1Mwo+KyNkZWZpbmUgICBNSV9BTFVf
T1BfQUREICAgICAgMjU2Cj4rI2RlZmluZSAgIE1JX0FMVV9PUF9TVUIgICAgICAyNTcKPisjZGVm
aW5lICAgTUlfQUxVX09QX0FORCAgICAgIDI1OAo+KyNkZWZpbmUgICBNSV9BTFVfT1BfT1IgICAg
ICAgMjU5Cj4rI2RlZmluZSAgIE1JX0FMVV9PUF9YT1IgICAgICAyNjAKPisjZGVmaW5lICAgTUlf
QUxVX09QX1NUT1JFICAgIDM4NAo+KyNkZWZpbmUgICBNSV9BTFVfT1BfU1RPUkVJTlYgMTQwOAo+
Ky8qIHNvdXJjZXMgKi8KPisjZGVmaW5lICAgTUlfQUxVX1NSQ19SRUcoeCkgICh4KSAvKiAwIC0+
IDE1ICovCj4rI2RlZmluZSAgIE1JX0FMVV9TUkNfU1JDQSAgICAzMgo+KyNkZWZpbmUgICBNSV9B
TFVfU1JDX1NSQ0IgICAgMzMKPisjZGVmaW5lICAgTUlfQUxVX1NSQ19BQ0NVICAgIDQ5Cj4rI2Rl
ZmluZSAgIE1JX0FMVV9TUkNfWkYgICAgICA1MAo+KyNkZWZpbmUgICBNSV9BTFVfU1JDX0NGICAg
ICAgNTEKPisKPiAvKgo+ICAqIENvbW1hbmRzIHVzZWQgb25seSBieSB0aGUgY29tbWFuZCBwYXJz
ZXIKPiAgKi8KPmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF90
eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaAo+aW5kZXgg
MzU2M2NlOTcwMTAyLi5hMzE0MWI3OWQzNDQgMTAwNjQ0Cj4tLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9ndF90eXBlcy5oCj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9ndF90eXBlcy5oCj5AQCAtNzMsNiArNzMsMTEgQEAgZW51bSBpbnRlbF9ndF9zY3JhdGNo
X2ZpZWxkIHsKPiAJLyogOCBieXRlcyAqLwo+IAlJTlRFTF9HVF9TQ1JBVENIX0ZJRUxEX0NPSEVS
RU5UTDNfV0EgPSAyNTYsCj4KPisJLyogNiAqIDggYnl0ZXMgKi8KPisJSU5URUxfR1RfU0NSQVRD
SF9GSUVMRF9QRVJGX0NTX0dQUiA9IDIwNDgsCj4rCj4rCS8qIDQgYnl0ZXMgKi8KPisJSU5URUxf
R1RfU0NSQVRDSF9GSUVMRF9QRVJGX1BSRURJQ0FURV9SRVNVTFRfMSA9IDIwOTYsCj4gfTsKPgo+
ICNlbmRpZiAvKiBfX0lOVEVMX0dUX1RZUEVTX0hfXyAqLwo+ZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
ZWJ1Z2ZzLmMKPmluZGV4IDNlNGY1OGYxOTM2Mi4uNDZmY2E1M2RmYmRhIDEwMDY0NAo+LS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKPisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZGVidWdmcy5jCj5AQCAtMzY1Myw2ICszNjUzLDM2IEBAIERFRklORV9TSU1Q
TEVfQVRUUklCVVRFKGk5MTVfd2VkZ2VkX2ZvcHMsCj4gCQkJaTkxNV93ZWRnZWRfZ2V0LCBpOTE1
X3dlZGdlZF9zZXQsCj4gCQkJIiVsbHVcbiIpOwo+Cj4rc3RhdGljIGludAo+K2k5MTVfcGVyZl9u
b2FfZGVsYXlfc2V0KHZvaWQgKmRhdGEsIHU2NCB2YWwpCj4rewo+KwlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSA9IGRhdGE7Cj4rCj4rCS8qIFRoaXMgd291bGQgbGVhZCB0byBpbmZpbml0
ZSB3YWl0cyBhcyB3ZSdyZSBkb2luZyB0aW1lc3RhbXAKPisJICogZGlmZmVyZW5jZSBvbiB0aGUg
Q1Mgd2l0aCBvbmx5IDMyYml0cy4KPisJICovCj4rCWlmICh2YWwgPiAoKDF1bCA8PCAzMikgLSAx
KSAqIFJVTlRJTUVfSU5GTyhpOTE1KS0+Y3NfdGltZXN0YW1wX2ZyZXF1ZW5jeV9raHopCj4rCQly
ZXR1cm4gLUVJTlZBTDsKPisKPisJYXRvbWljNjRfc2V0KCZpOTE1LT5wZXJmLm9hLm5vYV9wcm9n
cmFtbWluZ19kZWxheSwgdmFsKTsKPisJcmV0dXJuIDA7Cj4rfQo+Kwo+K3N0YXRpYyBpbnQKPitp
OTE1X3BlcmZfbm9hX2RlbGF5X2dldCh2b2lkICpkYXRhLCB1NjQgKnZhbCkKPit7Cj4rCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZGF0YTsKPisKPisJKnZhbCA9IGF0b21pYzY0X3Jl
YWQoJmk5MTUtPnBlcmYub2Eubm9hX3Byb2dyYW1taW5nX2RlbGF5KTsKPisJcmV0dXJuIDA7Cj4r
fQo+Kwo+K0RFRklORV9TSU1QTEVfQVRUUklCVVRFKGk5MTVfcGVyZl9ub2FfZGVsYXlfZm9wcywK
PisJCQlpOTE1X3BlcmZfbm9hX2RlbGF5X2dldCwKPisJCQlpOTE1X3BlcmZfbm9hX2RlbGF5X3Nl
dCwKPisJCQkiJWxsdVxuIik7Cj4rCj4rCj4gI2RlZmluZSBEUk9QX1VOQk9VTkQJQklUKDApCj4g
I2RlZmluZSBEUk9QX0JPVU5ECUJJVCgxKQo+ICNkZWZpbmUgRFJPUF9SRVRJUkUJQklUKDIpCj5A
QCAtNDQxOCw2ICs0NDQ4LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpOTE1X2RlYnVnZnNfZmls
ZXMgewo+IAljb25zdCBjaGFyICpuYW1lOwo+IAljb25zdCBzdHJ1Y3QgZmlsZV9vcGVyYXRpb25z
ICpmb3BzOwo+IH0gaTkxNV9kZWJ1Z2ZzX2ZpbGVzW10gPSB7Cj4rCXsiaTkxNV9wZXJmX25vYV9k
ZWxheSIsICZpOTE1X3BlcmZfbm9hX2RlbGF5X2ZvcHN9LAo+IAl7Imk5MTVfd2VkZ2VkIiwgJmk5
MTVfd2VkZ2VkX2ZvcHN9LAo+IAl7Imk5MTVfY2FjaGVfc2hhcmluZyIsICZpOTE1X2NhY2hlX3No
YXJpbmdfZm9wc30sCj4gCXsiaTkxNV9nZW1fZHJvcF9jYWNoZXMiLCAmaTkxNV9kcm9wX2NhY2hl
c19mb3BzfSwKPmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+aW5kZXggMDQxOWRmZDBkZWEzLi5iM2M2
ZGQ3MmM3YTEgMTAwNjQ0Cj4tLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4r
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj5AQCAtMTgzNCw2ICsxODM0LDE0
IEBAIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlIHsKPgo+IAkJCXN0cnVjdCBpOTE1X29hX29wcyBv
cHM7Cj4gCQkJY29uc3Qgc3RydWN0IGk5MTVfb2FfZm9ybWF0ICpvYV9mb3JtYXRzOwo+Kwo+KwkJ
CS8qKgo+KwkJCSAqIEEgYmF0Y2ggYnVmZmVyIGRvaW5nIGEgd2FpdCBvbiB0aGUgR1BVIGZvciB0
aGUgTk9BCj4rCQkJICogbG9naWMgdG8gYmUgcmVwcm9ncmFtbWVkLgo+KwkJCSAqLwo+KwkJCXN0
cnVjdCBpOTE1X3ZtYSAqbm9hX3dhaXQ7Cj4rCj4rCQkJYXRvbWljNjRfdCBub2FfcHJvZ3JhbW1p
bmdfZGVsYXk7Cj4gCQl9IG9hOwo+IAl9IHBlcmY7Cj4KPmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3BlcmYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5j
Cj5pbmRleCA4ODJkNzA1NmFlYzMuLmFiZmE0MzdhOTViNyAxMDA2NDQKPi0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3BlcmYuYwo+QEAgLTE5Nyw2ICsxOTcsNyBAQAo+Cj4gI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9j
b250ZXh0LmgiCj4gI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9wbS5oIgo+KyNpbmNsdWRlICJndC9p
bnRlbF9ndC5oIgo+ICNpbmNsdWRlICJndC9pbnRlbF9scmNfcmVnLmgiCj4KPiAjaW5jbHVkZSAi
aTkxNV9kcnYuaCIKPkBAIC00MjksNyArNDMwLDcgQEAgc3RhdGljIGludCBhbGxvY19vYV9jb25m
aWdfYnVmZmVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+IAkJCQkJICAgICAgTUlf
TE9BRF9SRUdJU1RFUl9JTU1fTUFYX1JFR1MpICogNDsKPiAJCWNvbmZpZ19sZW5ndGggKz0gb2Ff
Y29uZmlnLT5mbGV4X3JlZ3NfbGVuICogODsKPiAJfQo+LQljb25maWdfbGVuZ3RoICs9IDQ7IC8q
IE1JX0JBVENIX0JVRkZFUl9FTkQgKi8KPisJY29uZmlnX2xlbmd0aCArPSAxMjsgLyogTUlfQkFU
Q0hfQlVGRkVSX1NUQVJUIGludG8gbm9hX3dhaXQgbG9vcCAqLwo+IAljb25maWdfbGVuZ3RoID0g
QUxJR04oY29uZmlnX2xlbmd0aCwgSTkxNV9HVFRfUEFHRV9TSVpFKTsKPgo+IAlibyA9IGk5MTVf
Z2VtX29iamVjdF9jcmVhdGVfc2htZW0oaTkxNSwgY29uZmlnX2xlbmd0aCk7Cj5AQCAtNDQ2LDcg
KzQ0NywxMiBAQCBzdGF0aWMgaW50IGFsbG9jX29hX2NvbmZpZ19idWZmZXIoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUsCj4gCWNzID0gd3JpdGVfY3NfbWlfbHJpKGNzLCBvYV9jb25maWct
PmJfY291bnRlcl9yZWdzLCBvYV9jb25maWctPmJfY291bnRlcl9yZWdzX2xlbik7Cj4gCWNzID0g
d3JpdGVfY3NfbWlfbHJpKGNzLCBvYV9jb25maWctPmZsZXhfcmVncywgb2FfY29uZmlnLT5mbGV4
X3JlZ3NfbGVuKTsKPgo+LQkqY3MrKyA9IE1JX0JBVENIX0JVRkZFUl9FTkQ7Cj4rCj4rCS8qIEp1
bXAgaW50byB0aGUgTk9BIHdhaXQgYnVzeSBsb29wLiAqLwo+KwkqY3MrKyA9IChJTlRFTF9HRU4o
aTkxNSkgPCA4ID8KPisJCSBNSV9CQVRDSF9CVUZGRVJfU1RBUlQgOiBNSV9CQVRDSF9CVUZGRVJf
U1RBUlRfR0VOOCk7Cj4rCSpjcysrID0gaTkxNV9nZ3R0X29mZnNldChpOTE1LT5wZXJmLm9hLm5v
YV93YWl0KTsKPisJKmNzKysgPSAwOwo+Cj4gCWk5MTVfZ2VtX29iamVjdF9mbHVzaF9tYXAoYm8p
Owo+IAlpOTE1X2dlbV9vYmplY3RfdW5waW5fbWFwKGJvKTsKPkBAIC0xNDY3LDYgKzE0NzMsNyBA
QCBzdGF0aWMgdm9pZCBpOTE1X29hX3N0cmVhbV9kZXN0cm95KHN0cnVjdCBpOTE1X3BlcmZfc3Ry
ZWFtICpzdHJlYW0pCj4gCW11dGV4X2xvY2soJmRldl9wcml2LT5kcm0uc3RydWN0X211dGV4KTsK
PiAJZGV2X3ByaXYtPnBlcmYub2EuZXhjbHVzaXZlX3N0cmVhbSA9IE5VTEw7Cj4gCWRldl9wcml2
LT5wZXJmLm9hLm9wcy5kaXNhYmxlX21ldHJpY19zZXQoZGV2X3ByaXYpOwo+KwlpOTE1X3ZtYV91
bnBpbl9hbmRfcmVsZWFzZSgmZGV2X3ByaXYtPnBlcmYub2Eubm9hX3dhaXQsIDApOwo+IAltdXRl
eF91bmxvY2soJmRldl9wcml2LT5kcm0uc3RydWN0X211dGV4KTsKPgo+IAlmcmVlX29hX2J1ZmZl
cihkZXZfcHJpdik7Cj5AQCAtMTY1Myw2ICsxNjYwLDIwNSBAQCBzdGF0aWMgaW50IGFsbG9jX29h
X2J1ZmZlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gCXJldHVybiByZXQ7
Cj4gfQo+Cj4rc3RhdGljIHUzMiAqc2F2ZV9yZWdpc3RlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSwgdTMyICpjcywKPisJCQkgIGk5MTVfcmVnX3QgcmVnLCB1MzIgb2Zmc2V0LCB1MzIg
ZHdvcmRfY291bnQpCj4rewo+Kwl1aW50MzJfdCBkOwo+Kwo+Kwlmb3IgKGQgPSAwOyBkIDwgZHdv
cmRfY291bnQ7IGQrKykgewo+KwkJKmNzKysgPSBJTlRFTF9HRU4oaTkxNSkgPj0gOCA/Cj4rCQkJ
TUlfU1RPUkVfUkVHSVNURVJfTUVNX0dFTjggOiBNSV9TVE9SRV9SRUdJU1RFUl9NRU07Cj4rCQkq
Y3MrKyA9IGk5MTVfbW1pb19yZWdfb2Zmc2V0KHJlZykgKyA0ICogZDsKPisJCSpjcysrID0gaW50
ZWxfZ3Rfc2NyYXRjaF9vZmZzZXQoJmk5MTUtPmd0LCBvZmZzZXQpICsgNCAqIGQ7Cj4rCQkqY3Mr
KyA9IDA7Cj4rCX0KPisKPisJcmV0dXJuIGNzOwo+K30KPisKPitzdGF0aWMgdTMyICpyZXN0b3Jl
X3JlZ2lzdGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCB1MzIgKmNzLAo+KwkJCSAg
ICAgaTkxNV9yZWdfdCByZWcsIHUzMiBvZmZzZXQsIHUzMiBkd29yZF9jb3VudCkKPit7Cj4rCXVp
bnQzMl90IGQ7Cj4rCj4rCWZvciAoZCA9IDA7IGQgPCBkd29yZF9jb3VudDsgZCsrKSB7Cj4rCQkq
Y3MrKyA9IElOVEVMX0dFTihpOTE1KSA+PSA4ID8KPisJCQlNSV9MT0FEX1JFR0lTVEVSX01FTV9H
RU44IDogTUlfTE9BRF9SRUdJU1RFUl9NRU07Cj4rCQkqY3MrKyA9IGk5MTVfbW1pb19yZWdfb2Zm
c2V0KHJlZyk7Cj4rCQkqY3MrKyA9IGludGVsX2d0X3NjcmF0Y2hfb2Zmc2V0KCZpOTE1LT5ndCwg
b2Zmc2V0KTsKCmFyZSB5b3UgbWlzc2luZyArIDQgKiBkIGluIHRoZSBhYm92ZSAyIGxpbmVzPwoK
UmVnYXJkcywKVW1lc2gKCj4rCQkqY3MrKyA9IDA7Cj4rCX0KPisKPisJcmV0dXJuIGNzOwo+K30K
PisKPitzdGF0aWMgaW50IGFsbG9jX25vYV93YWl0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1KQo+K3sKPisJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKmJvOwo+KwlzdHJ1Y3QgaTkx
NV92bWEgKnZtYTsKPisJY29uc3QgdTY0IGRlbGF5X3RpY2tzID0gMHhmZmZmZmZmZmZmZmZmZmZm
IC0KPisJCURJVjY0X1U2NF9ST1VORF9VUCgKPisJCQlhdG9taWM2NF9yZWFkKCZpOTE1LT5wZXJm
Lm9hLm5vYV9wcm9ncmFtbWluZ19kZWxheSkgKgo+KwkJCVJVTlRJTUVfSU5GTyhpOTE1KS0+Y3Nf
dGltZXN0YW1wX2ZyZXF1ZW5jeV9raHosCj4rCQkJMTAwMDAwMHVsbCk7Cj4rCXUzMiAqYmF0Y2gs
ICp0czAsICpjcywgKmp1bXA7Cj4rCWludCByZXQsIGk7Cj4rCWVudW0geyBTVEFSVF9UUywgTk9X
X1RTLCBERUxUQV9UUywgSlVNUF9QUkVESUNBVEUsIERFTFRBX1RBUkdFVCwgTl9DU19HUFIgfTsK
PisKPisJYm8gPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX2ludGVybmFsKGk5MTUsIDQwOTYpOwo+
KwlpZiAoSVNfRVJSKGJvKSkgewo+KwkJRFJNX0VSUk9SKCJGYWlsZWQgdG8gYWxsb2NhdGUgTk9B
IHdhaXQgYmF0Y2hidWZmZXJcbiIpOwo+KwkJcmV0dXJuIFBUUl9FUlIoYm8pOwo+Kwl9Cj4rCj4r
CS8qCj4rCSAqIFdlIHBpbiBpbiBHR1RUIGJlY2F1c2Ugd2UganVtcCBpbnRvIHRoaXMgYnVmZmVy
IG5vdyBiZWNhdXNlCj4rCSAqIG11bHRpcGxlIE9BIGNvbmZpZyBCT3Mgd2lsbCBoYXZlIGEganVt
cCB0byB0aGlzIGFkZHJlc3MgYW5kIGl0Cj4rCSAqIG5lZWRzIHRvIGJlIGZpeGVkIGR1cmluZyB0
aGUgbGlmZXRpbWUgb2YgdGhlIGk5MTUvcGVyZiBzdHJlYW0uCj4rCSAqLwo+Kwl2bWEgPSBpOTE1
X2dlbV9vYmplY3RfZ2d0dF9waW4oYm8sIE5VTEwsIDAsIDQwOTYsIDApOwo+KwlpZiAoSVNfRVJS
KHZtYSkpIHsKPisJCXJldCA9IFBUUl9FUlIodm1hKTsKPisJCWdvdG8gZXJyX3VucmVmOwo+Kwl9
Cj4rCj4rCWJhdGNoID0gY3MgPSBpOTE1X2dlbV9vYmplY3RfcGluX21hcChibywgSTkxNV9NQVBf
V0IpOwo+KwlpZiAoSVNfRVJSKGJhdGNoKSkgewo+KwkJcmV0ID0gUFRSX0VSUihiYXRjaCk7Cj4r
CQlnb3RvIGVycl91bnBpbjsKPisJfQo+Kwo+KwkvKiBTYXZlIHJlZ2lzdGVycy4gKi8KPisJZm9y
IChpID0gMDsgaSA8IE5fQ1NfR1BSOyBpKyspIHsKPisJCWNzID0gc2F2ZV9yZWdpc3RlcihpOTE1
LCBjcywgSFNXX0NTX0dQUihpKSwKPisJCQkJICAgSU5URUxfR1RfU0NSQVRDSF9GSUVMRF9QRVJG
X0NTX0dQUiArIDggKiBpLCAyKTsKPisJfQo+KwljcyA9IHNhdmVfcmVnaXN0ZXIoaTkxNSwgY3Ms
IE1JX1BSRURJQ0FURV9SRVNVTFRfMSwKPisJCQkgICBJTlRFTF9HVF9TQ1JBVENIX0ZJRUxEX1BF
UkZfUFJFRElDQVRFX1JFU1VMVF8xLCAxKTsKPisKPisJLyogRmlyc3QgdGltZXN0YW1wIHNuYXBz
aG90IGxvY2F0aW9uLiAqLwo+Kwl0czAgPSBjczsKPisKPisJLyoKPisJICogSW5pdGlhbCBzbmFw
c2hvdCBvZiB0aGUgdGltZXN0YW1wIHJlZ2lzdGVyIHRvIGltcGxlbWVudCB0aGUgd2FpdC4KPisJ
ICogV2Ugd29yayB3aXRoIDMyYiB2YWx1ZXMsIHNvIGNsZWFyIG91dCB0aGUgdG9wIDMyYiBiaXRz
IG9mIHRoZQo+KwkgKiByZWdpc3RlciBiZWNhdXNlIHRoZSBBTFUgd29ya3MgNjRiaXRzLgo+Kwkg
Ki8KPisJKmNzKysgPSBNSV9MT0FEX1JFR0lTVEVSX0lNTSgxKTsKPisJKmNzKysgPSBpOTE1X21t
aW9fcmVnX29mZnNldChIU1dfQ1NfR1BSKFNUQVJUX1RTKSkgKyA0Owo+KwkqY3MrKyA9IDA7Cj4r
CSpjcysrID0gTUlfTE9BRF9SRUdJU1RFUl9SRUcgfCAoMyAtIDIpOwo+KwkqY3MrKyA9IGk5MTVf
bW1pb19yZWdfb2Zmc2V0KFJJTkdfVElNRVNUQU1QKFJFTkRFUl9SSU5HX0JBU0UpKTsKPisJKmNz
KysgPSBpOTE1X21taW9fcmVnX29mZnNldChIU1dfQ1NfR1BSKFNUQVJUX1RTKSk7Cj4rCj4rCS8q
Cj4rCSAqIFRoaXMgaXMgdGhlIGxvY2F0aW9uIHdlJ3JlIGdvaW5nIHRvIGp1bXAgYmFjayBpbnRv
IHVudGlsIHRoZQo+KwkgKiByZXF1aXJlZCBhbW91bnQgb2YgdGltZSBoYXMgcGFzc2VkLgo+Kwkg
Ki8KPisJanVtcCA9IGNzOwo+Kwo+KwkvKgo+KwkgKiBUYWtlIGFub3RoZXIgc25hcHNob3Qgb2Yg
dGhlIHRpbWVzdGFtcCByZWdpc3Rlci4gVGFrZSBjYXJlIHRvIGNsZWFyCj4rCSAqIHVwIHRoZSB0
b3AgMzJiaXRzIG9mIENTX0dQUigxKSBhcyB3ZSdyZSB1c2luZyBpdCBmb3Igb3RoZXIKPisJICog
b3BlcmF0aW9ucyBiZWxvdy4KPisJICovCj4rCSpjcysrID0gTUlfTE9BRF9SRUdJU1RFUl9JTU0o
MSk7Cj4rCSpjcysrID0gaTkxNV9tbWlvX3JlZ19vZmZzZXQoSFNXX0NTX0dQUihOT1dfVFMpKSAr
IDQ7Cj4rCSpjcysrID0gMDsKPisJKmNzKysgPSBNSV9MT0FEX1JFR0lTVEVSX1JFRyB8ICgzIC0g
Mik7Cj4rCSpjcysrID0gaTkxNV9tbWlvX3JlZ19vZmZzZXQoUklOR19USU1FU1RBTVAoUkVOREVS
X1JJTkdfQkFTRSkpOwo+KwkqY3MrKyA9IGk5MTVfbW1pb19yZWdfb2Zmc2V0KEhTV19DU19HUFIo
Tk9XX1RTKSk7Cj4rCj4rCS8qCj4rCSAqIERvIGEgZGlmZiBiZXR3ZWVuIHRoZSAyIHRpbWVzdGFt
cHMgYW5kIHN0b3JlIHRoZSByZXN1bHQgYmFjayBpbnRvCj4rCSAqIENTX0dQUigxKS4KPisJICov
Cj4rCSpjcysrID0gTUlfTUFUSCg1KTsKPisJKmNzKysgPSBNSV9BTFVfT1AoTUlfQUxVX09QX0xP
QUQsIE1JX0FMVV9TUkNfU1JDQSwgTUlfQUxVX1NSQ19SRUcoTk9XX1RTKSk7Cj4rCSpjcysrID0g
TUlfQUxVX09QKE1JX0FMVV9PUF9MT0FELCBNSV9BTFVfU1JDX1NSQ0IsIE1JX0FMVV9TUkNfUkVH
KFNUQVJUX1RTKSk7Cj4rCSpjcysrID0gTUlfQUxVX09QKE1JX0FMVV9PUF9TVUIsIDAsIDApOwo+
KwkqY3MrKyA9IE1JX0FMVV9PUChNSV9BTFVfT1BfU1RPUkUsIE1JX0FMVV9TUkNfUkVHKERFTFRB
X1RTKSwgTUlfQUxVX1NSQ19BQ0NVKTsKPisJKmNzKysgPSBNSV9BTFVfT1AoTUlfQUxVX09QX1NU
T1JFLCBNSV9BTFVfU1JDX1JFRyhKVU1QX1BSRURJQ0FURSksIE1JX0FMVV9TUkNfQ0YpOwo+Kwo+
KwkvKgo+KwkgKiBUcmFuc2ZlciB0aGUgY2FycnkgZmxhZyAoc2V0IHRvIDEgaWYgdHMxIDwgdHMw
LCBtZWFuaW5nIHRoZQo+KwkgKiB0aW1lc3RhbXAgaGF2ZSByb2xsZWQgb3ZlciB0aGUgMzJiaXRz
KSBpbnRvIHRoZSBwcmVkaWNhdGUgcmVnaXN0ZXIKPisJICogdG8gYmUgdXNlZCBmb3IgdGhlIHBy
ZWRpY2F0ZWQganVtcC4KPisJICovCj4rCSpjcysrID0gTUlfTE9BRF9SRUdJU1RFUl9SRUcgfCAo
MyAtIDIpOwo+KwkqY3MrKyA9IGk5MTVfbW1pb19yZWdfb2Zmc2V0KEhTV19DU19HUFIoSlVNUF9Q
UkVESUNBVEUpKTsKPisJKmNzKysgPSBpOTE1X21taW9fcmVnX29mZnNldChNSV9QUkVESUNBVEVf
UkVTVUxUXzEpOwo+Kwo+KwkvKiBSZXN0YXJ0IGZyb20gdGhlIGJlZ2lubmluZyBpZiB3ZSBoYWQg
dGltZXN0YW1wcyByb2xsIG92ZXIuICovCj4rCSpjcysrID0gKElOVEVMX0dFTihpOTE1KSA8IDgg
Pwo+KwkJIE1JX0JBVENIX0JVRkZFUl9TVEFSVCA6IE1JX0JBVENIX0JVRkZFUl9TVEFSVF9HRU44
KSB8Cj4rCQlNSV9CQVRDSF9QUkVESUNBVEU7Cj4rCSpjcysrID0gaTkxNV9nZ3R0X29mZnNldCh2
bWEpICsgKHRzMCAtIGJhdGNoKSAqIDQ7Cj4rCSpjcysrID0gMDsKPisKPisJLyoKPisJICogTm93
IGFkZCB0aGUgZGlmZiBiZXR3ZWVuIHRvIHByZXZpb3VzIHRpbWVzdGFtcHMgYW5kIGFkZCBpdCB0
byA6Cj4rCSAqICAgICAgKCgoMSAqIDw8IDY0KSAtIDEpIC0gZGVsYXlfbnMpCj4rCSAqCj4rCSAq
IFdoZW4gdGhlIENhcnJ5IEZsYWcgY29udGFpbnMgMSB0aGlzIG1lYW5zIHRoZSBlbGFwc2VkIHRp
bWUgaXMKPisJICogbG9uZ2VyIHRoYW4gdGhlIGV4cGVjdGVkIGRlbGF5LCBhbmQgd2UgY2FuIGV4
aXQgdGhlIHdhaXQgbG9vcC4KPisJICovCj4rCSpjcysrID0gTUlfTE9BRF9SRUdJU1RFUl9JTU0o
Mik7Cj4rCSpjcysrID0gaTkxNV9tbWlvX3JlZ19vZmZzZXQoSFNXX0NTX0dQUihERUxUQV9UQVJH
RVQpKTsKPisJKmNzKysgPSBsb3dlcl8zMl9iaXRzKGRlbGF5X3RpY2tzKTsKPisJKmNzKysgPSBp
OTE1X21taW9fcmVnX29mZnNldChIU1dfQ1NfR1BSKERFTFRBX1RBUkdFVCkpICsgNDsKPisJKmNz
KysgPSB1cHBlcl8zMl9iaXRzKGRlbGF5X3RpY2tzKTsKPisKPisJKmNzKysgPSBNSV9NQVRIKDQp
Owo+KwkqY3MrKyA9IE1JX0FMVV9PUChNSV9BTFVfT1BfTE9BRCwgTUlfQUxVX1NSQ19TUkNBLCBN
SV9BTFVfU1JDX1JFRyhERUxUQV9UUykpOwo+KwkqY3MrKyA9IE1JX0FMVV9PUChNSV9BTFVfT1Bf
TE9BRCwgTUlfQUxVX1NSQ19TUkNCLCBNSV9BTFVfU1JDX1JFRyhERUxUQV9UQVJHRVQpKTsKPisJ
KmNzKysgPSBNSV9BTFVfT1AoTUlfQUxVX09QX0FERCwgMCwgMCk7Cj4rCSpjcysrID0gTUlfQUxV
X09QKE1JX0FMVV9PUF9TVE9SRUlOViwgTUlfQUxVX1NSQ19SRUcoSlVNUF9QUkVESUNBVEUpLCBN
SV9BTFVfU1JDX0NGKTsKPisKPisJLyoKPisJICogVHJhbnNmZXIgdGhlIHJlc3VsdCBpbnRvIHRo
ZSBwcmVkaWNhdGUgcmVnaXN0ZXIgdG8gYmUgdXNlZCBmb3IgdGhlCj4rCSAqIHByZWRpY2F0ZWQg
anVtcC4KPisJICovCj4rCSpjcysrID0gTUlfTE9BRF9SRUdJU1RFUl9SRUcgfCAoMyAtIDIpOwo+
KwkqY3MrKyA9IGk5MTVfbW1pb19yZWdfb2Zmc2V0KEhTV19DU19HUFIoSlVNUF9QUkVESUNBVEUp
KTsKPisJKmNzKysgPSBpOTE1X21taW9fcmVnX29mZnNldChNSV9QUkVESUNBVEVfUkVTVUxUXzEp
Owo+Kwo+KwkvKiBQcmVkaWNhdGUgdGhlIGp1bXAuICAqLwo+KwkqY3MrKyA9IChJTlRFTF9HRU4o
aTkxNSkgPCA4ID8KPisJCSBNSV9CQVRDSF9CVUZGRVJfU1RBUlQgOiBNSV9CQVRDSF9CVUZGRVJf
U1RBUlRfR0VOOCkgfAo+KwkJTUlfQkFUQ0hfUFJFRElDQVRFOwo+KwkqY3MrKyA9IGk5MTVfZ2d0
dF9vZmZzZXQodm1hKSArIChqdW1wIC0gYmF0Y2gpICogNDsKPisJKmNzKysgPSAwOwo+Kwo+Kwkv
KiBSZXN0b3JlIHJlZ2lzdGVycy4gKi8KPisJZm9yIChpID0gMDsgaSA8IE5fQ1NfR1BSOyBpKysp
IHsKPisJCWNzID0gcmVzdG9yZV9yZWdpc3RlcihpOTE1LCBjcywgSFNXX0NTX0dQUihpKSwKPisJ
CQkJICAgICAgSU5URUxfR1RfU0NSQVRDSF9GSUVMRF9QRVJGX0NTX0dQUiArIDggKiBpLCAyKTsK
PisJfQo+KwljcyA9IHJlc3RvcmVfcmVnaXN0ZXIoaTkxNSwgY3MsIE1JX1BSRURJQ0FURV9SRVNV
TFRfMSwKPisJCQkgICAgICBJTlRFTF9HVF9TQ1JBVENIX0ZJRUxEX1BFUkZfUFJFRElDQVRFX1JF
U1VMVF8xLCAxKTsKPisKPisJLyogQW5kIHJldHVybiB0byB0aGUgcmluZy4gKi8KPisJKmNzKysg
PSBNSV9CQVRDSF9CVUZGRVJfRU5EOwo+Kwo+KwlHRU1fQlVHX09OKChjcyAtIGJhdGNoKSA+IChQ
QUdFX1NJWkUgLyBzaXplb2YoKmJhdGNoKSkpOwo+Kwo+KwlpOTE1X2dlbV9vYmplY3RfZmx1c2hf
bWFwKGJvKTsKPisJaTkxNV9nZW1fb2JqZWN0X3VucGluX21hcChibyk7Cj4rCj4rCWk5MTUtPnBl
cmYub2Eubm9hX3dhaXQgPSB2bWE7Cj4rCj4rCXJldHVybiAwOwo+Kwo+K2Vycl91bnBpbjoKPisJ
X19pOTE1X3ZtYV91bnBpbih2bWEpOwo+Kwo+K2Vycl91bnJlZjoKPisJaTkxNV9nZW1fb2JqZWN0
X3B1dChibyk7Cj4rCj4rCXJldHVybiByZXQ7Cj4rfQo+Kwo+IHN0YXRpYyB2b2lkIGNvbmZpZ19v
YV9yZWdzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAJCQkgICBjb25zdCBz
dHJ1Y3QgaTkxNV9vYV9yZWcgKnJlZ3MsCj4gCQkJICAgdTMyIG5fcmVncykKPkBAIC0yMjIxLDYg
KzI0MjcsMTIgQEAgc3RhdGljIGludCBpOTE1X29hX3N0cmVhbV9pbml0KHN0cnVjdCBpOTE1X3Bl
cmZfc3RyZWFtICpzdHJlYW0sCj4gCQlnb3RvIGVycl9jb25maWc7Cj4gCX0KPgo+KwlyZXQgPSBh
bGxvY19ub2Ffd2FpdChkZXZfcHJpdik7Cj4rCWlmIChyZXQpIHsKPisJCURSTV9ERUJVRygiVW5h
YmxlIHRvIGFsbG9jYXRlIE5PQSB3YWl0IGJhdGNoIGJ1ZmZlclxuIik7Cj4rCQlnb3RvIGVycl9u
b2Ffd2FpdF9hbGxvYzsKPisJfQo+Kwo+IAkvKiBQUk0gLSBvYnNlcnZhYmlsaXR5IHBlcmZvcm1h
bmNlIGNvdW50ZXJzOgo+IAkgKgo+IAkgKiAgIE9BQ09OVFJPTCwgcGVyZm9ybWFuY2UgY291bnRl
ciBlbmFibGUsIG5vdGU6Cj5AQCAtMjI3Myw2ICsyNDg1LDEzIEBAIHN0YXRpYyBpbnQgaTkxNV9v
YV9zdHJlYW1faW5pdChzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtLAo+IAlpbnRlbF91
bmNvcmVfZm9yY2V3YWtlX3B1dCgmZGV2X3ByaXYtPnVuY29yZSwgRk9SQ0VXQUtFX0FMTCk7Cj4g
CWludGVsX3J1bnRpbWVfcG1fcHV0KCZkZXZfcHJpdi0+cnVudGltZV9wbSwgc3RyZWFtLT53YWtl
cmVmKTsKPgo+KwltdXRleF9sb2NrKCZkZXZfcHJpdi0+ZHJtLnN0cnVjdF9tdXRleCk7Cj4rCWk5
MTVfdm1hX3VucGluX2FuZF9yZWxlYXNlKCZkZXZfcHJpdi0+cGVyZi5vYS5ub2Ffd2FpdCwgMCk7
Cj4rCW11dGV4X3VubG9jaygmZGV2X3ByaXYtPmRybS5zdHJ1Y3RfbXV0ZXgpOwo+Kwo+K2Vycl9u
b2Ffd2FpdF9hbGxvYzoKPisJcHV0X29hX2NvbmZpZyhzdHJlYW0tPm9hX2NvbmZpZyk7Cj4rCj4g
ZXJyX2NvbmZpZzoKPiAJaWYgKHN0cmVhbS0+Y3R4KQo+IAkJb2FfcHV0X3JlbmRlcl9jdHhfaWQo
c3RyZWFtKTsKPkBAIC0zNjU3LDYgKzM4NzYsOSBAQCB2b2lkIGk5MTVfcGVyZl9pbml0KHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAJCW11dGV4X2luaXQoJmRldl9wcml2LT5w
ZXJmLm1ldHJpY3NfbG9jayk7Cj4gCQlpZHJfaW5pdCgmZGV2X3ByaXYtPnBlcmYubWV0cmljc19p
ZHIpOwo+Cj4rCQlhdG9taWM2NF9zZXQoJmRldl9wcml2LT5wZXJmLm9hLm5vYV9wcm9ncmFtbWlu
Z19kZWxheSwKPisJCQkgICAgIDUwMCAqIDEwMDAgLyogNTAwdXMgKi8pOwo+Kwo+IAkJZGV2X3By
aXYtPnBlcmYuaW5pdGlhbGl6ZWQgPSB0cnVlOwo+IAl9Cj4gfQo+ZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oCj5pbmRleCA1ODk4ZjU5ZTNkZDcuLmE3MzQ2NGRkNWU5MSAxMDA2NDQKPi0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmgKPkBAIC01NjcsNyArNTY3LDkgQEAgc3RhdGljIGlubGluZSBib29sIGk5MTVfbW1p
b19yZWdfdmFsaWQoaTkxNV9yZWdfdCByZWcpCj4gI2RlZmluZSBNSV9QUkVESUNBVEVfU1JDMF9V
RFcJX01NSU8oMHgyNDAwICsgNCkKPiAjZGVmaW5lIE1JX1BSRURJQ0FURV9TUkMxCV9NTUlPKDB4
MjQwOCkKPiAjZGVmaW5lIE1JX1BSRURJQ0FURV9TUkMxX1VEVwlfTU1JTygweDI0MDggKyA0KQo+
LQo+KyNkZWZpbmUgTUlfUFJFRElDQVRFX0RBVEEgICAgICAgX01NSU8oMHgyNDEwKQo+KyNkZWZp
bmUgTUlfUFJFRElDQVRFX1JFU1VMVCAgICAgX01NSU8oMHgyNDE4KQo+KyNkZWZpbmUgTUlfUFJF
RElDQVRFX1JFU1VMVF8xICAgX01NSU8oMHgyNDFjKQo+ICNkZWZpbmUgTUlfUFJFRElDQVRFX1JF
U1VMVF8yCV9NTUlPKDB4MjIxNCkKPiAjZGVmaW5lICBMT1dFUl9TTElDRV9FTkFCTEVECSgxIDw8
IDApCj4gI2RlZmluZSAgTE9XRVJfU0xJQ0VfRElTQUJMRUQJKDAgPDwgMCkKPi0tIAo+Mi4yMi4w
Cj4KPl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj5JbnRl
bC1nZnggbWFpbGluZyBsaXN0Cj5JbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj5odHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
