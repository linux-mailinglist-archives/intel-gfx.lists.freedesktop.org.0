Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CCF7C92D7
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 22:26:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B6876E193;
	Wed,  2 Oct 2019 20:26:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EB226E193
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 20:26:48 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 13:26:47 -0700
X-IronPort-AV: E=Sophos;i="5.67,249,1566889200"; d="scan'208";a="205425951"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 13:26:45 -0700
Date: Wed, 2 Oct 2019 23:25:39 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20191002202539.GB22579@ideak-desk.fi.intel.com>
References: <20191002140808.12000-1-imre.deak@intel.com>
 <98aabffa976035d5f71f2f43b56bcf08327e05b1.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <98aabffa976035d5f71f2f43b56bcf08327e05b1.camel@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Add the Thunderbolt PLL
 divider values
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
Reply-To: imre.deak@intel.com
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>, "Westerberg,
 Mika" <mika.westerberg@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBPY3QgMDIsIDIwMTkgYXQgMTE6MDc6MjFQTSArMDMwMCwgU291emEsIEpvc2Ugd3Jv
dGU6Cj4gT24gV2VkLCAyMDE5LTEwLTAyIGF0IDE3OjA4ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6
Cj4gPiBUaGUgVGh1bmRlcmJvbHQgUExMIGRpdmlkZXIgdmFsdWVzIG9uIFRHTCBkaWZmZXIgZnJv
bSB0aGUgSUNMIG9uZXMsCj4gPiB1cGRhdGUgdGhlIFBMTCBwYXJhbWV0ZXIgY2FsY3VsYXRpb24g
ZnVuY3Rpb24gYWNjb3JkaW5nbHkuCj4gPiAKPiA+IEJzcGVjOiA0OTIwNAo+ID4gCj4gPiBDYzog
Sm9zZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4gPiBDYzogQ2xpbnRvbiBBIFRheWxv
ciA8Y2xpbnRvbi5hLnRheWxvckBpbnRlbC5jb20+Cj4gPiBDYzogTHVjYXMgRGUgTWFyY2hpIDxs
dWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4gPiBDYzogTWlrYSBXZXN0ZXJiZXJnIDxtaWthLndl
c3RlcmJlcmdAaW50ZWwuY29tPgo+ID4gVGVzdGVkLWJ5OiBNaWthIFdlc3RlcmJlcmcgPG1pa2Eu
d2VzdGVyYmVyZ0BpbnRlbC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUu
ZGVha0BpbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwbGxfbWdyLmMgfCA1MQo+ID4gKysrKysrKysrKysrKysrKysrLQo+ID4gIDEgZmls
ZSBjaGFuZ2VkLCA0OSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jCj4g
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYwo+ID4gaW5k
ZXggYmU2OWEyMzQ0Mjk0Li43YjBiMThkOTViMDcgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYwo+ID4gQEAgLTI1MjAsNiArMjUyMCwy
NCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHNrbF93cnBsbF9wYXJhbXMKPiA+IGljbF90YnRfcGxs
XzE5XzJNSHpfdmFsdWVzID0gewo+ID4gIAkucGRpdiA9IDB4NCAvKiA1ICovLCAua2RpdiA9IDEs
IC5xZGl2X21vZGUgPSAwLCAucWRpdl9yYXRpbyA9Cj4gPiAwLAo+ID4gIH07Cj4gPiAgCj4gPiAr
c3RhdGljIGNvbnN0IHN0cnVjdCBza2xfd3JwbGxfcGFyYW1zIHRnbF90YnRfcGxsXzE5XzJNSHpf
dmFsdWVzID0gewo+ID4gKwkuZGNvX2ludGVnZXIgPSAweDU0LCAuZGNvX2ZyYWN0aW9uID0gMHgz
MDAwLAo+ID4gKwkvKiB0aGUgZm9sbG93aW5nIHBhcmFtcyBhcmUgdW51c2VkICovCj4gPiArCS5w
ZGl2ID0gMCwgLmtkaXYgPSAwLCAucWRpdl9tb2RlID0gMCwgLnFkaXZfcmF0aW8gPSAwLAo+ID4g
K307Cj4gPiArCj4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCBza2xfd3JwbGxfcGFyYW1zIHRnbF90
YnRfcGxsXzI0TUh6X3ZhbHVlcyA9IHsKPiA+ICsJLmRjb19pbnRlZ2VyID0gMHg0MywgLmRjb19m
cmFjdGlvbiA9IDB4NDAwMCwKPiA+ICsJLyogdGhlIGZvbGxvd2luZyBwYXJhbXMgYXJlIHVudXNl
ZCAqLwo+ID4gKwkucGRpdiA9IDAsIC5rZGl2ID0gMCwgLnFkaXZfbW9kZSA9IDAsIC5xZGl2X3Jh
dGlvID0gMCwKPiA+ICt9Owo+ID4gKwo+ID4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgc2tsX3dycGxs
X3BhcmFtcyB0Z2xfdGJ0X3BsbF8yNU1Iel92YWx1ZXMgPSB7Cj4gPiArCS5kY29faW50ZWdlciA9
IDB4NDAsIC5kY29fZnJhY3Rpb24gPSAweDY2NjYsCj4gPiArCS8qIHRoZSBmb2xsb3dpbmcgcGFy
YW1zIGFyZSB1bnVzZWQgKi8KPiA+ICsJLnBkaXYgPSAwLCAua2RpdiA9IDAsIC5xZGl2X21vZGUg
PSAwLCAucWRpdl9yYXRpbyA9IDAsCj4gPiArfTsKPiAKPiAKPiAyNU1IeiByZWZlcmVuY2UgZnJl
cXVlbmN5IGlzIG5vdCBQT1IgaXQgd2FzIGp1c3QgYSB0ZXN0IGJ5IEhXIHRlYW0gYW5kCj4gd2Ug
ZG9uJ3QgZXZlbiBzdXBwb3J0IGl0IGluIGljbF9yZWFkb3V0X3JlZmNsaygpLCBub3Qgc3VyZSBp
ZiB3ZSBzaG91bGQKPiBhZGQgaXQgaGVyZS4KCkFoIHllcywgdGhhbmtzIGZvciBzcG90dGluZyB0
aGF0LCBJIG1pc3NlZCB0aGF0IGluZm8gaW4gYnNwZWMuIFdpbGwKcmVtb3ZlIGl0LgoKPiAKPiBP
dGhlciB0aGFuIHRoYXQsIExHVE06Cj4gCj4gUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUg
U291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+IAo+ID4gKwo+ID4gIHN0YXRpYyBib29sIGlj
bF9jYWxjX2RwX2NvbWJvX3BsbChzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQo+ID4gKmNydGNfc3Rh
dGUsCj4gPiAgCQkJCSAgc3RydWN0IHNrbF93cnBsbF9wYXJhbXMgKnBsbF9wYXJhbXMpCj4gPiAg
ewo+ID4gQEAgLTI1NDcsOCArMjU2NSwzNyBAQCBzdGF0aWMgYm9vbCBpY2xfY2FsY190YnRfcGxs
KHN0cnVjdAo+ID4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiA+ICB7Cj4gPiAgCXN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Y19zdGF0ZS0KPiA+
ID5iYXNlLmNydGMtPmRldik7Cj4gPiAgCj4gPiAtCSpwbGxfcGFyYW1zID0gZGV2X3ByaXYtPmNk
Y2xrLmh3LnJlZiA9PSAyNDAwMCA/Cj4gPiAtCQkJaWNsX3RidF9wbGxfMjRNSHpfdmFsdWVzIDoK
PiA+IGljbF90YnRfcGxsXzE5XzJNSHpfdmFsdWVzOwo+ID4gKwlpZiAoSU5URUxfR0VOKGRldl9w
cml2KSA+PSAxMikgewo+ID4gKwkJc3dpdGNoIChkZXZfcHJpdi0+Y2RjbGsuaHcucmVmKSB7Cj4g
PiArCQlkZWZhdWx0Ogo+ID4gKwkJCU1JU1NJTkdfQ0FTRShkZXZfcHJpdi0+Y2RjbGsuaHcucmVm
KTsKPiA+ICsJCQkvKiBmYWxsLXRocm91Z2ggKi8KPiA+ICsJCWNhc2UgMTkyMDA6Cj4gPiArCQlj
YXNlIDM4NDAwOgo+ID4gKwkJCSpwbGxfcGFyYW1zID0gdGdsX3RidF9wbGxfMTlfMk1Iel92YWx1
ZXM7Cj4gPiArCQkJYnJlYWs7Cj4gPiArCQljYXNlIDI0MDAwOgo+ID4gKwkJCSpwbGxfcGFyYW1z
ID0gdGdsX3RidF9wbGxfMjRNSHpfdmFsdWVzOwo+ID4gKwkJCWJyZWFrOwo+ID4gKwkJY2FzZSAy
NTAwMDoKPiA+ICsJCQkqcGxsX3BhcmFtcyA9IHRnbF90YnRfcGxsXzI1TUh6X3ZhbHVlczsKPiA+
ICsJCQlicmVhazsKPiA+ICsJCX0KPiA+ICsJfSBlbHNlIHsKPiA+ICsJCXN3aXRjaCAoZGV2X3By
aXYtPmNkY2xrLmh3LnJlZikgewo+ID4gKwkJZGVmYXVsdDoKPiA+ICsJCQlNSVNTSU5HX0NBU0Uo
ZGV2X3ByaXYtPmNkY2xrLmh3LnJlZik7Cj4gPiArCQkJLyogZmFsbC10aHJvdWdoICovCj4gPiAr
CQljYXNlIDE5MjAwOgo+ID4gKwkJY2FzZSAzODQwMDoKPiA+ICsJCQkqcGxsX3BhcmFtcyA9IGlj
bF90YnRfcGxsXzE5XzJNSHpfdmFsdWVzOwo+ID4gKwkJCWJyZWFrOwo+ID4gKwkJY2FzZSAyNDAw
MDoKPiA+ICsJCQkqcGxsX3BhcmFtcyA9IGljbF90YnRfcGxsXzI0TUh6X3ZhbHVlczsKPiA+ICsJ
CQlicmVhazsKPiA+ICsJCX0KPiA+ICsJfQo+ID4gKwo+ID4gIAlyZXR1cm4gdHJ1ZTsKPiA+ICB9
Cj4gPiAgCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
