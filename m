Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D80F6A80
	for <lists+intel-gfx@lfdr.de>; Sun, 10 Nov 2019 18:14:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 383776E0E7;
	Sun, 10 Nov 2019 17:14:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 960CB6E0E7
 for <intel-gfx@lists.freedesktop.org>; Sun, 10 Nov 2019 17:14:45 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Nov 2019 09:14:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,289,1569308400"; d="scan'208";a="206531463"
Received: from orsosgc001.ra.intel.com (HELO orsosgc001.amr.corp.intel.com)
 ([10.23.184.150])
 by orsmga003.jf.intel.com with ESMTP; 10 Nov 2019 09:14:44 -0800
Date: Sun, 10 Nov 2019 09:14:44 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <20191110171444.GB65581@orsosgc001.amr.corp.intel.com>
References: <20191107233433.6928-1-umesh.nerlige.ramappa@intel.com>
 <76017001-c4aa-089e-367d-11a9d45496af@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <76017001-c4aa-089e-367d-11a9d45496af@intel.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: Configure OAR controls for
 specific context
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris.p.wilson@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBOb3YgMDgsIDIwMTkgYXQgMDk6MjI6MDBBTSArMDIwMCwgTGlvbmVsIExhbmR3ZXJs
aW4gd3JvdGU6Cj5PbiAwOC8xMS8yMDE5IDAxOjM0LCBVbWVzaCBOZXJsaWdlIFJhbWFwcGEgd3Jv
dGU6Cj4+SXQgdHVybnMgb3V0IHRoYXQgdGhlIE9BUiBDT05UUk9MIHJlZ2lzdGVyIGlzIG5vdCBn
ZXR0aW5nIGNvbmZpZ3VyZWQKPj5jb3JyZWN0bHkgaW4gY29uanVuY3Rpb24gd2l0aCB0aGUgY29u
dGV4dCBzYXZlL3Jlc3RvcmUgYml0LiBXaGVuCj4+bWVhc3VyaW5nIHdvcmsgZm9yIGEgc2luZ2xl
IGNvbnRleHQsIHRoZSBPQVIgY291bnRlcnMgZG8gbm90IGluY3JlbWVudC4KPj4KPj4tIENvbmZp
Z3VyZSBPQVIgZm9ybWF0IGFuZCBlbmFibGUgT0FSIGNvdW50ZXJzIGF0IHRoZSBzYW1lIHRpbWUg
YXMKPj4gICBlbmFibGluZyBjb250ZXh0IHNhdmUvcmVzdG9yZSBmb3IgT0FSIGNvdW50ZXJzLgo+
Pi0gTWFrZSBTQU1QTEVfT0FfUkVQT1JUIG9wdGlvbmFsIGZyb20gZ2VuMTIuCj4+Cj4+djI6IFVw
ZGF0ZSBjb21taXQgbWVzc2FnZQo+Pgo+PlNpZ25lZC1vZmYtYnk6IFVtZXNoIE5lcmxpZ2UgUmFt
YXBwYSA8dW1lc2gubmVybGlnZS5yYW1hcHBhQGludGVsLmNvbT4KPj4tLS0KPj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jIHwgMjMgKysrKysrKysrKysrKysrLS0tLS0tLS0KPj4g
IDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQo+Pgo+PmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcGVyZi5jCj4+aW5kZXggMmMzODBhYmExY2U5Li41MjdhMTY2Mzc2ODkg
MTAwNjQ0Cj4+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKPj4rKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwo+PkBAIC0yMjE5LDI2ICsyMjE5LDMzIEBA
IHN0YXRpYyBpbnQgZ2VuOF9jb25maWd1cmVfY29udGV4dChzdHJ1Y3QgaTkxNV9nZW1fY29udGV4
dCAqY3R4LAo+PiAgCXJldHVybiBlcnI7Cj4+ICB9Cj4+LXN0YXRpYyBpbnQgZ2VuMTJfZW1pdF9v
YXJfY29uZmlnKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwgYm9vbCBlbmFibGUpCj4+K3N0YXRp
YyBpbnQgZ2VuMTJfZW1pdF9vYXJfY29uZmlnKHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJl
YW0sIGJvb2wgZW5hYmxlKQo+PiAgewo+PiAgCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxOwo+PisJ
c3RydWN0IGludGVsX2NvbnRleHQgKmNlID0gc3RyZWFtLT5waW5uZWRfY3R4Owo+PiAgCXUzMiAq
Y3M7Cj4+Kwl1MzIgZm9ybWF0ID0gc3RyZWFtLT5vYV9idWZmZXIuZm9ybWF0Owo+PiAgCWludCBl
cnIgPSAwOwo+PiAgCXJxID0gaTkxNV9yZXF1ZXN0X2NyZWF0ZShjZSk7Cj4+ICAJaWYgKElTX0VS
UihycSkpCj4+ICAJCXJldHVybiBQVFJfRVJSKHJxKTsKPj4tCWNzID0gaW50ZWxfcmluZ19iZWdp
bihycSwgNCk7Cj4+KwljcyA9IGludGVsX3JpbmdfYmVnaW4ocnEsIDYpOwo+PiAgCWlmIChJU19F
UlIoY3MpKSB7Cj4+ICAJCWVyciA9IFBUUl9FUlIoY3MpOwo+PiAgCQlnb3RvIG91dDsKPj4gIAl9
Cj4+LQkqY3MrKyA9IE1JX0xPQURfUkVHSVNURVJfSU1NKDEpOwo+PisJKmNzKysgPSBNSV9MT0FE
X1JFR0lTVEVSX0lNTSgyKTsKPj4rCS8qIEVuYWJsZSBjb250ZXh0IHNhdmUvcmVzdG9yZSBvZiBP
QVIgY291bnRlcnMgKi8KPj4gIAkqY3MrKyA9IGk5MTVfbW1pb19yZWdfb2Zmc2V0KFJJTkdfQ09O
VEVYVF9DT05UUk9MKGNlLT5lbmdpbmUtPm1taW9fYmFzZSkpOwo+PiAgCSpjcysrID0gX01BU0tF
RF9GSUVMRChHRU4xMl9DVFhfQ1RSTF9PQVJfQ09OVEVYVF9FTkFCTEUsCj4+ICAJCQkgICAgICBl
bmFibGUgPyBHRU4xMl9DVFhfQ1RSTF9PQVJfQ09OVEVYVF9FTkFCTEUgOiAwKTsKPj4rCS8qIEVu
YWJsZSBPQVIgY291bnRlcnMgKi8KPj4rCSpjcysrID0gaTkxNV9tbWlvX3JlZ19vZmZzZXQoR0VO
MTJfT0FSX09BQ09OVFJPTCk7Cj4+KwkqY3MrKyA9IChmb3JtYXQgPDwgR0VOMTJfT0FSX09BQ09O
VFJPTF9DT1VOVEVSX0ZPUk1BVF9TSElGVCkgfAo+PisJCShlbmFibGUgPyBHRU4xMl9PQVJfT0FD
T05UUk9MX0NPVU5URVJfRU5BQkxFIDogMCk7Cj4+ICAJKmNzKysgPSBNSV9OT09QOwo+Cj4KPkl0
J3MgcHJvYmFibHkgYSBnb29kIGlkZWEgdG8gY29uZmlndXJlIE9BUiBpbiB0aGlzIGZ1bmN0aW9u
IGluZGVlZCA6KQo+Cj4KPkJ1dCB3ZSdyZSBhbHJlYWR5IHN1cHBvc2VkIHRvIHByb2dyYW0gaXQg
dGhyb3VnaCBjb250ZXh0IGltYWdlIAo+bW9kaWZpY2F0aW9uIGluIGxyY19jb25maWd1cmVfYWxs
X2NvbnRleHRzKCkuCj4KPlNvIGl0IHByb2JhYmx5IG1lYW5zIHdlIGhhdmUgdGhlIHdyb25nIG9m
ZnNldD8KPgo+Cj5XZSBzaG91bGQgcHJvYmFibHkgcmVtb3ZlIGl0IGZyb20gbHJjX2NvbmZpZ3Vy
ZV9hbGxfY29udGV4dHMoKSB0aGVuLiAKPkl0J3MgcHJvYmFibHkgdHJhc2hpbmcgc29tZSBvdGhl
ciBiaXQgb2YgdGhlIGNvbnRleHQgaW1hZ2UuCj4KCk9mZnNldCBpcyBjb3JyZWN0LgoKV2hlbiBJ
IHJlbW92ZWQgdGhlIGNvbmZpZ3VyYXRpb24gZnJvbSBscmNfY29uZmlndXJlX2FsbF9jb250ZXh0
cygpLCB0aGUgCnRlc3QgYnJva2UgOiggCgpEZWJ1Z2dpbmcgZnVydGhlciwgaXQgbG9va3MgbGlr
ZSBPQVIgY29uZmlnIChPQVJfT0FDT05UUk9MIGFuZCAKUklOR19DT05URVhUX0NPTlRST0wpIG11
c3QgYmUgYXBwbGllZCB0byBwaW5uZWQgY3R4IGltYWdlIGFzIHdlbGwgYXMgCndpdGggTFJJIHVz
aW5nIGtlcm5lbF9jb250ZXh0CgpGb3IgZ2VuMTIsIGxyY19jb25maWd1cmVfYWxsX2NvbnRleHRz
IG9ubHkgbmVlZHMgdG8gY29uZmlndXJlIHRoZSBzdGFibGUgCnBvd2VyIHN0YXRlLgoKUG9zdGlu
ZyByZXYyLCB2ZXJpZmllZCB3aXRoIHRlc3QgYXMgcG9zdGVkIGhlcmUgLSAKaHR0cHM6Ly9wYXRj
aHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoLzMzOTUxNC8/c2VyaWVzPTY5MTY0JnJldj0xIAoK
VGhlIGV4cGVjdGF0aW9uIGlzIHRoYXQgb2FyIGNvdW50ZXJzIGFyZSBzYXZlZCBhbmQgcmVzdG9y
ZWQgb25seSBmb3IgdGhlIApjb250ZXh0IHBhc3NlZCBpbiBwZXJmIG9wZW4gaW9jdGwuIEFsc28s
IGlmIHNvbWUgb3RoZXIgY29udGV4dCBpc3N1ZXMgCk1JX1JQQywgaXQgc2hvdWxkIGdldCB2YWxp
ZCB0aW1lc3RhbXBzLCBjb250ZXh0IGlkIGV0Yy4uLCBidXQgemVyb2VkIApjb3VudGVyIHJlcG9y
dHMuIExldCBtZSBrbm93IGlmIHRoaXMgaXMgbm90IHRoZSByaWdodCB1bmRlcnN0YW5kaW5nLiAK
Cj4KPgo+PiAgCWludGVsX3JpbmdfYWR2YW5jZShycSwgY3MpOwo+PkBAIC0yNDc0LDggKzI0ODEs
NyBAQCBzdGF0aWMgaW50IGdlbjEyX2VuYWJsZV9tZXRyaWNfc2V0KHN0cnVjdCBpOTE1X3BlcmZf
c3RyZWFtICpzdHJlYW0pCj4+ICAJICogcmVxdWVzdGVkIHRoaXMuCj4+ICAJICovCj4+ICAJaWYg
KHN0cmVhbS0+Y3R4KSB7Cj4+LQkJcmV0ID0gZ2VuMTJfZW1pdF9vYXJfY29uZmlnKHN0cmVhbS0+
cGlubmVkX2N0eCwKPj4tCQkJCQkgICAgb2FfY29uZmlnICE9IE5VTEwpOwo+PisJCXJldCA9IGdl
bjEyX2VtaXRfb2FyX2NvbmZpZyhzdHJlYW0sIG9hX2NvbmZpZyAhPSBOVUxMKTsKPj4gIAkJaWYg
KHJldCkKPj4gIAkJCXJldHVybiByZXQ7Cj4+ICAJfQo+PkBAIC0yNTEzLDcgKzI1MTksNyBAQCBz
dGF0aWMgdm9pZCBnZW4xMl9kaXNhYmxlX21ldHJpY19zZXQoc3RydWN0IGk5MTVfcGVyZl9zdHJl
YW0gKnN0cmVhbSkKPj4gIAkvKiBkaXNhYmxlIHRoZSBjb250ZXh0IHNhdmUvcmVzdG9yZSBvciBP
QVIgY291bnRlcnMgKi8KPj4gIAlpZiAoc3RyZWFtLT5jdHgpCj4+LQkJZ2VuMTJfZW1pdF9vYXJf
Y29uZmlnKHN0cmVhbS0+cGlubmVkX2N0eCwgZmFsc2UpOwo+PisJCWdlbjEyX2VtaXRfb2FyX2Nv
bmZpZyhzdHJlYW0sIGZhbHNlKTsKPj4gIAkvKiBNYWtlIHN1cmUgd2UgZGlzYWJsZSBub2EgdG8g
c2F2ZSBwb3dlci4gKi8KPj4gIAlpbnRlbF91bmNvcmVfcm13KHVuY29yZSwgUlBNX0NPTkZJRzEs
IEdFTjEwX0dUX05PQV9FTkFCTEUsIDApOwo+PkBAIC0yNzEzLDcgKzI3MTksOCBAQCBzdGF0aWMg
aW50IGk5MTVfb2Ffc3RyZWFtX2luaXQoc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSwK
Pj4gIAkJcmV0dXJuIC1FSU5WQUw7Cj4+ICAJfQo+Pi0JaWYgKCEocHJvcHMtPnNhbXBsZV9mbGFn
cyAmIFNBTVBMRV9PQV9SRVBPUlQpKSB7Cj4+KwlpZiAoIShwcm9wcy0+c2FtcGxlX2ZsYWdzICYg
U0FNUExFX09BX1JFUE9SVCkgJiYKPj4rCSAgICAoSU5URUxfR0VOKHBlcmYtPmk5MTUpIDwgMTIg
fHwgIXN0cmVhbS0+Y3R4KSkgewo+Cj4KPkdvb2QgcG9pbnQsIGJ1dCB0aGlzIHNob3VsZCBwcm9i
YWJseSBnbyBpbnRvIGFub3RoZXIgcGF0Y2guCj4KPk5vdGUgdGhhdCB3ZSBjb3VsZCBhbHNvIGNv
bnNpZGVyIG5vdCBzYW1wbGluZyB0aGUgT0EgYnVmZmVyIGEgbm9uIAo+cHJpdmlsZWdlZCBvcGVy
YXRpb24gb24gR2VuMTIrLCBzaW5jZSB0aGUgY291bnRlcnMgYXJlIHBlciBjb250ZXh0IAo+c2F2
ZWQvcmVzdG9yZWQuCj4KClRoZSBUR0wgc3VwcG9ydCBwYXRjaCBhbHJlYWR5IG1ha2VzICdub3Qg
c2FtcGxpbmcgdGhlIE9BIGJ1ZmZlcicgCm5vbi1wcml2aWxlZ2VkLiBUaGVzZSBjaGFuZ2VzIGFy
ZSBvbmx5IGNsZWFyaW5nIHRoZSBwYXRoLiBJIGhhdmUgbW92ZWQgCnRoZW0gdG8gYSBzZXBhcmF0
ZSBwYXRjaCBpbiB2Mi4KClRoYW5rcywKVW1lc2gKCj4KPlRoYW5rcywKPgo+Cj4tTGlvbmVsCj4K
Pj4gIAkJRFJNX0RFQlVHKCJPbmx5IE9BIHJlcG9ydCBzYW1wbGluZyBzdXBwb3J0ZWRcbiIpOwo+
PiAgCQlyZXR1cm4gLUVJTlZBTDsKPj4gIAl9Cj4+QEAgLTI3NDUsNyArMjc1Miw3IEBAIHN0YXRp
YyBpbnQgaTkxNV9vYV9zdHJlYW1faW5pdChzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFt
LAo+PiAgCWZvcm1hdF9zaXplID0gcGVyZi0+b2FfZm9ybWF0c1twcm9wcy0+b2FfZm9ybWF0XS5z
aXplOwo+Pi0Jc3RyZWFtLT5zYW1wbGVfZmxhZ3MgfD0gU0FNUExFX09BX1JFUE9SVDsKPj4rCXN0
cmVhbS0+c2FtcGxlX2ZsYWdzID0gcHJvcHMtPnNhbXBsZV9mbGFnczsKPj4gIAlzdHJlYW0tPnNh
bXBsZV9zaXplICs9IGZvcm1hdF9zaXplOwo+PiAgCXN0cmVhbS0+b2FfYnVmZmVyLmZvcm1hdF9z
aXplID0gZm9ybWF0X3NpemU7Cj4KPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
