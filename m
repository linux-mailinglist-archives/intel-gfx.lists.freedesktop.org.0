Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 940239CE29
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 13:33:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DE726E07F;
	Mon, 26 Aug 2019 11:33:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 535ED6E07F
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 11:33:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Aug 2019 04:33:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; d="scan'208";a="191710201"
Received: from aborowie-mobl.ger.corp.intel.com (HELO [10.249.35.21])
 ([10.249.35.21])
 by orsmga002.jf.intel.com with ESMTP; 26 Aug 2019 04:33:06 -0700
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Manasi Navare <manasi.d.navare@intel.com>
References: <20190821133221.29456-1-maarten.lankhorst@linux.intel.com>
 <20190821133221.29456-2-maarten.lankhorst@linux.intel.com>
 <20190821170548.GA31411@intel.com> <877e74b2z8.fsf@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <f66389ec-58bd-f0f6-d9e6-2e06f1210a4f@linux.intel.com>
Date: Mon, 26 Aug 2019 13:33:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <877e74b2z8.fsf@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 01/10] drm/i915/dp: Fix dsc bpp calculations.
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMjMtMDgtMjAxOSBvbSAxMjoxNyBzY2hyZWVmIEphbmkgTmlrdWxhOgo+IE9uIFdlZCwgMjEg
QXVnIDIwMTksIE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+IHdyb3Rl
Ogo+PiBPbiBXZWQsIEF1ZyAyMSwgMjAxOSBhdCAwMzozMjoxMlBNICswMjAwLCBNYWFydGVuIExh
bmtob3JzdCB3cm90ZToKPj4+IFRoZXJlIHdhcyBhIGludGVnZXIgd3JhcGFyb3VuZCB3aGVuIG1v
ZGVfY2xvY2sgYmVjYW1lIHRvbyBoaWdoLAo+Pj4gYW5kIHdlIGRpZG4ndCBjb3JyZWN0IGZvciB0
aGUgRkVDIG92ZXJoZWFkIGZhY3RvciB3aGVuIGRpdmlkaW5nLAo+Pj4gYWxzbyB0aGUgY2FsY3Vs
YXRpb25zIHdvdWxkIGJyZWFrIGF0IEhCUjMuCj4+IEJ1dCB0aGUgbW9kZV9jbG9jayBpcyBvYnRh
aW5lZCBmcm9tIHRoZSBhZHVzdGVkX21vZGUtPmNydGNfY2xvY2sgd2hpY2ggaXMKPj4gZGVmaW5l
ZCBhcyBhbiBpbnQgaW4gZHJtX21vZGVfY29uZmlnIHN0cnVjdCwgZG9lcyB0aGF0IG5lZWQgdG8g
Y2hhbmdlIGFsc28/Cj4+Cj4+PiBBcyBhIHJlc3VsdCBvdXIgY2FsY3VsYXRlZCBicHAgd2FzIHdh
eSB0b28gaGlnaCwgYW5kIHRoZSBsaW5rIHdpZHRoCj4+PiBicHAgbGltaXRhdGlvbiBuZXZlciBj
YW1lIGludG8gZWZmZWN0Lgo+Pj4KPj4+IFByaW50IG91dCB0aGUgcmVzdWx0aW5nIGJwcCBjYWxj
dWx1bGF0aW9ucyBhcyBhIHNhbml0eSBjaGVjaywganVzdAo+Pj4gaW4gY2FzZSB3ZSBldmVyIGhh
dmUgdG8gZGVidWcgaXQgbGF0ZXIgb24gYWdhaW4uCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogTWFh
cnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPj4+IEZp
eGVzOiBkOTIxOGM4ZjZjZjQgKCJkcm0vaTkxNS9kcDogQWRkIGhlbHBlcnMgZm9yIENvbXByZXNz
ZWQgQlBQIGFuZCBTbGljZSBDb3VudCBmb3IgRFNDIikKPj4+IENjOiA8c3RhYmxlQHZnZXIua2Vy
bmVsLm9yZz4gIyB2NS4wKwo+Pj4gQ2M6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBp
bnRlbC5jb20+Cj4+PiAtLS0KPj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmMgfCAxNiArKysrKysrKystLS0tLS0tCj4+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5oIHwgIDQgKystLQo+Pj4gIDIgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0
aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jCj4+PiBpbmRleCA5MjFhZDBhMmY3YmEuLjYxNGEyNTkxMWYwNyAxMDA2NDQK
Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+Pj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4+PiBAQCAtNDMyMywx
MCArNDMyMywxMCBAQCBpbnRlbF9kcF9nZXRfc2lua19pcnFfZXNpKHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHAsIHU4ICpzaW5rX2lycV92ZWN0b3IpCj4+PiAgCQlEUF9EUFJYX0VTSV9MRU47Cj4+
PiAgfQo+Pj4gIAo+Pj4gLXUxNiBpbnRlbF9kcF9kc2NfZ2V0X291dHB1dF9icHAoaW50IGxpbmtf
Y2xvY2ssIHU4IGxhbmVfY291bnQsCj4+PiAtCQkJCWludCBtb2RlX2Nsb2NrLCBpbnQgbW9kZV9o
ZGlzcGxheSkKPj4+ICt1MTYgaW50ZWxfZHBfZHNjX2dldF9vdXRwdXRfYnBwKHUzMiBsaW5rX2Ns
b2NrLCB1OCBsYW5lX2NvdW50LAo+Pj4gKwkJCQl1MzIgbW9kZV9jbG9jaywgdTMyIG1vZGVfaGRp
c3BsYXkpCj4+PiAgewo+Pj4gLQl1MTYgYml0c19wZXJfcGl4ZWwsIG1heF9icHBfc21hbGxfam9p
bmVyX3JhbTsKPj4+ICsJdTMyIGJpdHNfcGVyX3BpeGVsLCBtYXhfYnBwX3NtYWxsX2pvaW5lcl9y
YW07Cj4+IEJ1dCBiaXRzX3Blcl9waXhlbCBpcyBhIDE2IGJpdCB2YWx1ZSBmb3IgRFNDIFBQUywg
d2h5IGRvZXMgdGhpcyBuZWVkIHRvIGJlIHUzMj8KPiBJIHdvdWxkIHVzZSBpbnQgZm9yICphbGwq
IG9mIHRoZSBwYXJhbWV0ZXJzIGFuZCBsb2NhbCB2YXJzLiBEb24ndCB0cnkgdG8KPiBzYXZlIHNw
YWNlIG9yIGxpbWl0IHRoZSByYW5nZSBieSB1bnNpZ25lZCBvciBmaXhlZCBzaXplLiBPbmx5IHVz
ZSB0aGUKPiBmaXhlZCBzaXplIHR5cGVzIGZvciB3aGVuIHRoZSBzaXplIHJlYWxseSBtYXR0ZXJz
LCBpLmUuIHNlcmlhbGl6YXRpb24KPiBhbmQgbG90cyBvZiBkYXRhLiBJTU8gYWxtb3N0IGV2ZXJ5
dGhpbmcgZWxzZSBpcyB0cm91YmxlIGluIEMuCgpIbW0sIGxvb2tpbmcgYXQgdGhlIHNvdXJjZSBk
cm1fbW9kZV9tb2RlaW5mbyBpdCdzIGludGVuZGVkIHRvIGJlIHVuc2lnbmVkLgoKV2Ugd2lsbCBk
ZWZpbml0ZWx5IG5lZWQgYSA2NC1iaXRzIGJlY2F1c2UgMTAwMCAqIDEgR2h6IGNsb2NrIG92ZXJm
bG93cyB1MzIuCgpJIHdpbGwgc2VlIGlmIEkgY2FuIG1ha2UgdGhpcyB0byB3b3JrIHdpdGggbXVs
X3UzMl91MzIgZm9yIHRoZSBub21pbmF0b3IgYW5kIGRlbm9taW5hdG9yLgoKCj4gQlIsCj4gSmFu
aS4KPgo+Cj4+PiAgCWludCBpOwo+Pj4gIAo+Pj4gIAkvKgo+Pj4gQEAgLTQzMzUsMTMgKzQzMzUs
MTQgQEAgdTE2IGludGVsX2RwX2RzY19nZXRfb3V0cHV0X2JwcChpbnQgbGlua19jbG9jaywgdTgg
bGFuZV9jb3VudCwKPj4+ICAJICogRkVDT3ZlcmhlYWQgPSAyLjQlLCBmb3IgU1NUIC0+IFRpbWVT
bG90c1Blck1UUCBpcyAxLAo+Pj4gIAkgKiBmb3IgTVNUIC0+IFRpbWVTbG90c1Blck1UUCBoYXMg
dG8gYmUgY2FsY3VsYXRlZAo+Pj4gIAkgKi8KPj4+IC0JYml0c19wZXJfcGl4ZWwgPSAobGlua19j
bG9jayAqIGxhbmVfY291bnQgKiA4ICoKPj4+IC0JCQkgIERQX0RTQ19GRUNfT1ZFUkhFQURfRkFD
VE9SKSAvCj4+PiAtCQltb2RlX2Nsb2NrOwo+Pj4gKwliaXRzX3Blcl9waXhlbCA9IGRpdl91NjQo
KHU2NClsaW5rX2Nsb2NrICogbGFuZV9jb3VudCAqIDggKgo+Pj4gKwkJCQkgRFBfRFNDX0ZFQ19P
VkVSSEVBRF9GQUNUT1IsIDEwMDBVTEwgKiBtb2RlX2Nsb2NrKTsKPj4gVGhhbmtzIGZvciBjYXRj
aGluZyB0aGlzLCB0aGlzIGhhZCB0aGUgMTAwMCBpbiB0aGUgZGVub21pbmF0b3IgaW4gbXkgb3Jp
Z2luYWwgcGF0Y2hlcyA6aHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy80
NzUxNC8jcmV2Mwo+PiBBbmQgIHRoZW4gdGhlIG5leCByZXYgbG9zdCBpdCBzb21laG93LCBzbyB0
aGFua3MgZm9yIGNhdGNoaW5nIHRoaXMgCj4+Cj4+IE1hbmFzaQo+Pgo+Pj4gKwlEUk1fREVCVUdf
S01TKCJNYXggbGluayBicHA6ICV1XG4iLCBiaXRzX3Blcl9waXhlbCk7Cj4+PiAgCj4+PiAgCS8q
IFNtYWxsIEpvaW5lciBDaGVjazogb3V0cHV0IGJwcCA8PSBqb2luZXIgUkFNIChiaXRzKSAvIEhv
cml6LiB3aWR0aCAqLwo+Pj4gIAltYXhfYnBwX3NtYWxsX2pvaW5lcl9yYW0gPSBEUF9EU0NfTUFY
X1NNQUxMX0pPSU5FUl9SQU1fQlVGRkVSIC8KPj4+ICAJCW1vZGVfaGRpc3BsYXk7Cj4+PiArCURS
TV9ERUJVR19LTVMoIk1heCBzbWFsbCBqb2luZXIgYnBwOiAldVxuIiwgbWF4X2JwcF9zbWFsbF9q
b2luZXJfcmFtKTsKPj4+ICAKPj4+ICAJLyoKPj4+ICAJICogR3JlYXRlc3QgYWxsb3dlZCBEU0Mg
QlBQID0gTUlOIChvdXRwdXQgQlBQIGZyb20gYXZhaWFsYmxlIExpbmsgQlcKPj4+IEBAIC00MzUx
LDcgKzQzNTIsOCBAQCB1MTYgaW50ZWxfZHBfZHNjX2dldF9vdXRwdXRfYnBwKGludCBsaW5rX2Ns
b2NrLCB1OCBsYW5lX2NvdW50LAo+Pj4gIAo+Pj4gIAkvKiBFcnJvciBvdXQgaWYgdGhlIG1heCBi
cHAgaXMgbGVzcyB0aGFuIHNtYWxsZXN0IGFsbG93ZWQgdmFsaWQgYnBwICovCj4+PiAgCWlmIChi
aXRzX3Blcl9waXhlbCA8IHZhbGlkX2RzY19icHBbMF0pIHsKPj4+IC0JCURSTV9ERUJVR19LTVMo
IlVuc3VwcG9ydGVkIEJQUCAlZFxuIiwgYml0c19wZXJfcGl4ZWwpOwo+Pj4gKwkJRFJNX0RFQlVH
X0tNUygiVW5zdXBwb3J0ZWQgQlBQICV1LCBtaW4gJXVcbiIsCj4+PiArCQkJICAgICAgYml0c19w
ZXJfcGl4ZWwsIHZhbGlkX2RzY19icHBbMF0pOwo+Pj4gIAkJcmV0dXJuIDA7Cj4+PiAgCX0KPj4+
ICAKPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgKPj4+IGluZGV4IDY1
N2JiYjFmNWVkMC4uMDA3ZDE5ODFhMzNiIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwLmgKPj4+IEBAIC0xMDIsOCArMTAyLDggQEAgYm9vbCBpbnRlbF9kcF9z
b3VyY2Vfc3VwcG9ydHNfaGJyMihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsKPj4+ICBib29s
IGludGVsX2RwX3NvdXJjZV9zdXBwb3J0c19oYnIzKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAp
Owo+Pj4gIGJvb2wKPj4+ICBpbnRlbF9kcF9nZXRfbGlua19zdGF0dXMoc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCwgdTggKmxpbmtfc3RhdHVzKTsKPj4+IC11MTYgaW50ZWxfZHBfZHNjX2dldF9v
dXRwdXRfYnBwKGludCBsaW5rX2Nsb2NrLCB1OCBsYW5lX2NvdW50LAo+Pj4gLQkJCQlpbnQgbW9k
ZV9jbG9jaywgaW50IG1vZGVfaGRpc3BsYXkpOwo+Pj4gK3UxNiBpbnRlbF9kcF9kc2NfZ2V0X291
dHB1dF9icHAodTMyIGxpbmtfY2xvY2ssIHU4IGxhbmVfY291bnQsCj4+PiArCQkJCXUzMiBtb2Rl
X2Nsb2NrLCB1MzIgbW9kZV9oZGlzcGxheSk7Cj4+PiAgdTggaW50ZWxfZHBfZHNjX2dldF9zbGlj
ZV9jb3VudChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLCBpbnQgbW9kZV9jbG9jaywKPj4+ICAJ
CQkJaW50IG1vZGVfaGRpc3BsYXkpOwo+Pj4gIAo+Pj4gLS0gCj4+PiAyLjIwLjEKPj4+Cj4+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEludGVsLWdm
eCBtYWlsaW5nIGxpc3QKPj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+PiBodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
