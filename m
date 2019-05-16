Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C90120B75
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2019 17:46:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFA4E89722;
	Thu, 16 May 2019 15:46:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18AE089722
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2019 15:46:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 May 2019 08:46:44 -0700
X-ExtLoop1: 1
Received: from fstricch-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.34.28])
 by fmsmga001.fm.intel.com with ESMTP; 16 May 2019 08:46:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <20190516133031.GN24299@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1557985315.git.harish.chegondi@intel.com>
 <55619dbe3b3399292d86420725a0138ced488cca.1557985315.git.harish.chegondi@intel.com>
 <4410fcc9-4989-99eb-dc38-f568056b189f@linux.intel.com>
 <87a7fma79e.fsf@intel.com> <20190516133031.GN24299@intel.com>
Date: Thu, 16 May 2019 18:46:47 +0300
Message-ID: <87k1eq766w.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: skip the second CRC even for
 GEN 7 GPUs
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
Cc: Tomi Sarvela <tomi.p.sarvela@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAxNiBNYXkgMjAxOSwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gT24gVGh1LCBNYXkgMTYsIDIwMTkgYXQgMDM6NTU6MjVQTSAr
MDMwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4+IE9uIFRodSwgMTYgTWF5IDIwMTksIE1hYXJ0ZW4g
TGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+PiA+
IE9wIDE2LTA1LTIwMTkgb20gMDc6NTggc2NocmVlZiBIYXJpc2ggQ2hlZ29uZGk6Cj4+ID4+IGRp
c3BsYXlfcGlwZV9jcmNfaXJxX2hhbmRsZXIoKSBza2lwcyB0aGUgZmlyc3QgQ1JDIGZvciBhbGwg
R1BVcyBhbmQgdGhlCj4+ID4+IHNlY29uZCBDUkMgZm9yIEdFTjgrIEdQVXMuIFRoZSBzZWNvbmQg
Q1JDIGlzIGludmFsaWQgZXZlbiBmb3IgQllUIHdoaWNoCj4+ID4+IGlzIGEgR0VONyBHUFUuIFNv
LCBza2lwIHRoZSBzZWNvbmQgQ1JDIGV2ZW4gZm9yIEdFTjcgR1BVcy4KPj4gPj4KPj4gPj4gQ2M6
IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4+ID4+IENjOiBUb21pIFNhcnZl
bGEgPHRvbWkucC5zYXJ2ZWxhQGludGVsLmNvbT4KPj4gPj4gQ2M6IFBldHJpIExhdHZhbGEgPHBl
dHJpLmxhdHZhbGFAaW50ZWwuY29tPgo+PiA+PiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPj4gPj4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFy
dGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4+ID4+IFNpZ25lZC1vZmYtYnk6IEhhcmlz
aCBDaGVnb25kaSA8aGFyaXNoLmNoZWdvbmRpQGludGVsLmNvbT4KPj4gPj4gUmVmZXJlbmNlczog
aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTAzMTkxCj4+ID4+
IC0tLQo+PiA+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyB8IDQgKystLQo+PiA+
PiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPj4gPj4K
Pj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCj4+ID4+IGluZGV4IDIzMzIxMWZkZTBlYS4uMzgw
OWU5ZjdmYWUyIDEwMDY0NAo+PiA+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2ly
cS5jCj4+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKPj4gPj4gQEAg
LTE3NzUsMTEgKzE3NzUsMTEgQEAgc3RhdGljIHZvaWQgZGlzcGxheV9waXBlX2NyY19pcnFfaGFu
ZGxlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4+ID4+ICAJICogYm9ua2Vy
cy4gU28gbGV0J3MganVzdCB3YWl0IGZvciB0aGUgbmV4dCB2YmxhbmsgYW5kIHJlYWQKPj4gPj4g
IAkgKiBvdXQgdGhlIGJ1Z2d5IHJlc3VsdC4KPj4gPj4gIAkgKgo+PiA+PiAtCSAqIE9uIEdFTjgr
IHNvbWV0aW1lcyB0aGUgc2Vjb25kIENSQyBpcyBib25rZXJzIGFzIHdlbGwsIHNvCj4+ID4+ICsJ
ICogT24gR0VONysgc29tZXRpbWVzIHRoZSBzZWNvbmQgQ1JDIGlzIGJvbmtlcnMgYXMgd2VsbCwg
c28KPj4gPj4gIAkgKiBkb24ndCB0cnVzdCB0aGF0IG9uZSBlaXRoZXIuCj4+ID4+ICAJICovCj4+
ID4+ICAJaWYgKHBpcGVfY3JjLT5za2lwcGVkIDw9IDAgfHwKPj4gPj4gLQkgICAgKElOVEVMX0dF
TihkZXZfcHJpdikgPj0gOCAmJiBwaXBlX2NyYy0+c2tpcHBlZCA9PSAxKSkgewo+PiA+PiArCSAg
ICAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA3ICYmIHBpcGVfY3JjLT5za2lwcGVkID09IDEpKSB7
Cj4+ID4+ICAJCXBpcGVfY3JjLT5za2lwcGVkKys7Cj4+ID4+ICAJCXNwaW5fdW5sb2NrKCZwaXBl
X2NyYy0+bG9jayk7Cj4+ID4+ICAJCXJldHVybjsKPj4gPgo+PiA+IEkgd291bGQgYmUgaW50ZXJl
c3RlZCBpbiB0aGUgcmVzdWx0cywgaGFzd2VsbCBpcyBkaWZmZXJlbnQgZnJvbQo+PiA+IFZMVi4g
SGFzIGl0IGV2ZXIgYmVlbiBvYnNlcnZlZCBvbiB0aGF0IHBsYXRmb3JtPwo+PiAKPj4gR29vZCBw
b2ludC4gSSBsb29rZWQgYXQgWzFdIHdoaWNoIEkgcHJlc3VtZWQgd2FzIG9uIFZMViwgYnV0IGl0
IHNheXMKPj4gbm90aGluZyBhYm91dCBIU1cuCj4KPiBUaGlzIHdob2xlIHRoaW5nIGlzIGp1c3Qg
YSBwaWxlIG9mIGR1Y3QgdGFwZSBhbnl3YXkuIFRoZSByZWFzb24ocykKPiBmb3IgdGhlc2UgZnVu
a3kgY3JjcyBoYXMgbmV2ZXIgYmVlbiBwcm9wZXJseSBhbmFseXNlZC4KCkkgZG9uJ3QgZGlzYWdy
ZWUuIEFuZCB0aGlzIGlzIHBhcnRpYWxseSB3aHkgSSB3YXMgc28gZWFnZXIgdG8gYWNrIHRoZQpw
YXRjaCBhdCBoYW5kLiBBbm90aGVyIHN0cmlwIG9mIGR1Y3QgdGFwZSBkb2VzIG5vIGhhcm0gd2hl
biB5b3UgYWxyZWFkeQpoYXZlIHNvIG11Y2gsIGFuZCB3ZSBjYW4ndCBob2xkIHRoaXMgcGFydGlj
dWxhciBpc3N1ZSBob3N0YWdlIHRvIHJvb3QKY2F1c2UgdGhlIGlzc3Vlcy4KCkJSLApKYW5pLgoK
Ci0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
