Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 905D3D700E
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 09:21:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9FBA6E334;
	Tue, 15 Oct 2019 07:21:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C437D6E334
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 07:21:39 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 00:21:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,298,1566889200"; d="scan'208";a="207465801"
Received: from pkumarva-server.ra.intel.com (HELO intel.com) ([10.23.184.130])
 by orsmga002.jf.intel.com with ESMTP; 15 Oct 2019 00:21:38 -0700
Date: Tue, 15 Oct 2019 03:38:36 -0400
From: "Kumar Valsan, Prathap" <prathap.kumar.valsan@intel.com>
To: Chris Wilson <chris.p.wilson@intel.com>
Message-ID: <20191015073836.GL3860@intel.com>
References: <20191007165209.31797-1-prathap.kumar.valsan@intel.com>
 <20191007165209.31797-2-prathap.kumar.valsan@intel.com>
 <157048064079.5063.15601194209529004805@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157048064079.5063.15601194209529004805@skylake-alporthouse-com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH v3 1/1] drm/i915/ehl: Add sysfs interface to
 control class-of-service
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

T24gTW9uLCBPY3QgMDcsIDIwMTkgYXQgMDk6Mzc6MjBQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgUHJhdGhhcCBLdW1hciBWYWxzYW4gKDIwMTktMTAtMDcgMTc6NTI6MDkp
Cj4gPiBUbyBwcm92aWRlIHNoYXJlZCBsYXN0LWxldmVsLWNhY2hlIGlzb2xhdGlvbiB0byBjcHUg
d29ya2xvYWRzIHJ1bm5pbmcKPiA+IGNvbmN1cnJlbnRseSB3aXRoIGdwdSB3b3JrbG9hZHMsIHRo
ZSBncHUgYWxsb2NhdGlvbiBvZiBjYWNoZSBsaW5lcyBuZWVkcwo+ID4gdG8gYmUgcmVzdHJpY3Rl
ZCB0byBjZXJ0YWluIHdheXMuIEN1cnJlbnRseSBHUFUgaGFyZHdhcmUgc3VwcG9ydHMgZm91cgo+
ID4gY2xhc3Mtb2Ytc2VydmljZShDTE9TKSBsZXZlbHMgYW5kIHRoZXJlIGlzIGFuIGFzc29jaWF0
ZWQgd2F5LW1hc2sgZm9yCj4gPiBlYWNoIENMT1MuIEVhY2ggTExDIE1PQ1MgcmVnaXN0ZXIgaGFz
IGEgZmllbGQgdG8gc2VsZWN0IHRoZSBjbG9zIGxldmVsLgo+ID4gU28gaW4tb3JkZXIgdG8gZ2xv
YmFsbHkgc2V0IHRoZSBncHUgdG8gYSBjbG9zIGxldmVsLCBkcml2ZXIgbmVlZHMKPiA+IHRvIHBy
b2dyYW0gZW50aXJlIE1PQ1MgdGFibGUuCj4gPiAKPiA+IEhhcmR3YXJlIHN1cHBvcnRzIHJlYWRp
bmcgc3VwcG9ydGVkIHdheS1tYXNrIGNvbmZpZ3VyYXRpb24gZm9yIEdQVSB1c2luZwo+ID4gYSBi
aW9zIHBjb2RlIGludGVyZmFjZS4gVGhpcyBpbnRlcmZhY2UgaGFzIHR3byBmaWxlcy0tbGxjX2Ns
b3NfbW9kZXMgYW5kCj4gPiBsbGNfY2xvcy4gVGhlIGZpbGUgbGxjX2Nsb3NfbW9kZXMgaXMgcmVh
ZCBvbmx5IGZpbGUgYW5kIHdpbGwgbGlzdCB0aGUKPiA+IGF2YWlsYWJsZSB3YXkgbWFza3MuIFRo
ZSBmaWxlIGxsY19jbG9zIGlzIHJlYWQvd3JpdGUgYW5kIHdpbGwgc2hvdyB0aGUKPiA+IGN1cnJl
bnRseSBhY3RpdmUgd2F5IG1hc2sgYW5kIHdyaXRpbmcgYSBuZXcgd2F5IG1hc2sgd2lsbCB1cGRh
dGUgdGhlCj4gPiBhY3RpdmUgd2F5IG1hc2sgb2YgdGhlIGdwdS4KPiA+IAo+ID4gTm90ZSBvZiBD
YXV0aW9uOiBSZXN0cmljdGluZyBjYWNoZSB3YXlzIHVzaW5nIHRoaXMgbWVjaGFuaXNtIHByZXNl
bnRzIGEKPiA+IGxhcmdlciBhdHRhY2sgc3VyZmFjZSBmb3Igc2lkZS1jaGFubmVsIGF0dGFja3Mu
Cj4gPiAKPiA+IEV4YW1wbGUgdXNhZ2U6Cj4gPiA+IGNhdCAvc3lzL2NsYXNzL2RybS9jYXJkMC9s
bGNfY2xvc19tb2Rlcwo+ID4gMHhmZmYgMHhmYzAgMHhjMDAgMHg4MDAKPiA+IAo+ID4gPmNhdCAv
c3lzL2NsYXNzL2RybS9jYXJkMC9sbGNfY2xvcwo+ID4gMHhmZmYKPiA+IAo+ID4gVXBkYXRlIHRv
IG5ldyBjbG9zCj4gPiBlY2hvICIweDgwMCIgPiAvc3lzL2NsYXNzL2RybS9jYXJkMC9sbGNfY2xv
cwo+IAo+IFNvIHRoZSBmaXJzdCBxdWVzdGlvbiBpcyB3aGV0aGVyIHRoaXMgaXMgZ2xvYmFsIG9u
IHRoZSBkZXZpY2Ugb3IgbG9jYWwKPiB0byB0aGUgR1QuCgpJdCBpcyBnbG9iYWwgdG8gdGhlIGRl
dmljZS4gSSBoYXZlIHNlbnQgdGhlIHVwZGF0ZWQgcGF0Y2gsIHdoaWNoIHdvdWxkCmV4cGxpY2l0
bHkgc3RhdGUgdGhpcyBpbiBjb21taXQgbWVzc2FnZS4KPiAgCj4gPiBTaWduZWQtb2ZmLWJ5OiBQ
cmF0aGFwIEt1bWFyIFZhbHNhbiA8cHJhdGhhcC5rdW1hci52YWxzYW5AaW50ZWwuY29tPgo+ID4g
LS0tCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgICAgIHwgICA3ICsK
PiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmNfcmVnLmggfCAgIDEgKwo+ID4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYyAgICB8IDIxNiArKysrKysrKysr
KysrKysrKysrKysrKy0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmgg
ICAgfCAgIDYgKy0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAg
fCAgIDggKwo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICB8ICAg
MSArCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zeXNmcy5jICAgICAgIHwgMTAwICsr
KysrKysrKysrCj4gPiAgNyBmaWxlcyBjaGFuZ2VkLCAzMzcgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiA+IGluZGV4
IDQ2ODQzOGZiNDdhZi4uMDU0MDUxOTY5ZDAwIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2xyYy5jCj4gPiBAQCAtMjEzNyw2ICsyMTM3LDEzIEBAIF9fZXhlY2xpc3RzX3VwZGF0
ZV9yZWdfc3RhdGUoY29uc3Qgc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAo+ID4gICAgICAgICAg
ICAgICAgICAgICAgICAgaW50ZWxfc3NldV9tYWtlX3JwY3MoZW5naW5lLT5pOTE1LCAmY2UtPnNz
ZXUpOwo+ID4gIAo+ID4gICAgICAgICAgICAgICAgIGk5MTVfb2FfaW5pdF9yZWdfc3RhdGUoY2Us
IGVuZ2luZSk7Cj4gPiArICAgICAgICAgICAgICAgLyoKPiA+ICsgICAgICAgICAgICAgICAgKiBH
ZW4xMSsgd2FudHMgdG8gc3VwcG9ydCB1cGRhdGUgb2YgTExDIGNsYXNzLW9mLXNlcnZpY2Ugdmlh
Cj4gPiArICAgICAgICAgICAgICAgICogc3lzZnMgaW50ZXJmYWNlLiBDTE9TIGlzIGRlZmluZWQg
aW4gTU9DUyByZWdpc3RlcnMgYW5kIGZvcgo+ID4gKyAgICAgICAgICAgICAgICAqIEdlbjExLCBN
T0NTIGlzIHBhcnQgb2YgY29udGV4dCByZXNnaXN0ZXIgc3RhdGUuCj4gPiArICAgICAgICAgICAg
ICAgICovCj4gPiArICAgICAgICAgICAgICAgaWYgKElTX0dFTihlbmdpbmUtPmk5MTUsIDExKSkK
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGludGVsX21vY3NfaW5pdF9yZWdfc3RhdGUoY2Up
Owo+IAo+IERvIHRoZSBmaWx0ZXJpbmcgaW4gaW50ZWxfbW9jc19pbml0X3JlZ19zdGF0ZSgpLiBU
aGUgaW50ZWxfIHByZWZpeCBzYXlzCj4gaXQgc2hvdWxkIGJlIGNvbW1vbiB0byBhbGwuCj4gCj4g
Tm90IElTX0VMS0hBUlRMQUtFKCksIHRoYXQgaXMgaW1wbGllcyBieSBzdWJqZWN0Pwo+IApHZW4x
MSBQQ29kZSBpbXBsZW1lbnRhdGlvbiBoYXMgdGhpcyBzdXBwb3J0IHRvIHJlYWQgd2F5IG1hc2su
IFNvIHVwZGF0ZWQKaXQgdG8gR2VuMTEuCj4gPiArc3RhdGljIGludAo+ID4gK21vY3Nfc3RvcmVf
Y2xvcyhzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwKPiA+ICsgICAgICAgICAgICAgICBzdHJ1Y3Qg
aW50ZWxfY29udGV4dCAqY2UpCj4gPiArewo+ID4gKyAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfbW9j
c190YWJsZSB0Owo+ID4gKyAgICAgICB1bnNpZ25lZCBpbnQgY291bnQsIGFjdGl2ZV9jbG9zLCBp
bmRleDsKPiA+ICsgICAgICAgdTMyIG9mZnNldDsKPiA+ICsgICAgICAgdTMyIHZhbHVlOwo+ID4g
KyAgICAgICB1MzIgKmNzOwo+ID4gKwo+ID4gKyAgICAgICBpZiAoIWdldF9tb2NzX3NldHRpbmdz
KHJxLT5lbmdpbmUtPmd0LCAmdCkpCj4gPiArICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9ERVY7
Cj4gPiArCj4gPiArICAgICAgIGNvdW50ID0gdC5uX2VudHJpZXM7Cj4gPiArICAgICAgIGFjdGl2
ZV9jbG9zID0gcnEtPmk5MTUtPmNsb3MuYWN0aXZlX2Nsb3M7Cj4gPiArICAgICAgIGNzID0gaW50
ZWxfcmluZ19iZWdpbihycSwgNCAqIGNvdW50KTsKPiA+ICsgICAgICAgaWYgKElTX0VSUihjcykp
Cj4gPiArICAgICAgICAgICAgICAgcmV0dXJuIFBUUl9FUlIoY3MpOwo+ID4gKwo+ID4gKyAgICAg
ICBvZmZzZXQgPSBpOTE1X2dndHRfb2Zmc2V0KGNlLT5zdGF0ZSkgKyBMUkNfU1RBVEVfUE4gKiBQ
QUdFX1NJWkU7Cj4gPiArCj4gPiArICAgICAgIGZvciAoaW5kZXggPSAwOyBpbmRleCA8IGNvdW50
OyBpbmRleCsrKSB7Cj4gPiArICAgICAgICAgICAgICAgdmFsdWUgPSBjZS0+bHJjX3JlZ19zdGF0
ZVtjdHhfbW9jc04oaW5kZXgpXTsKPiAKPiBUaGVpciBjb250ZXh0IGltYWdlIGlzIHZvbGF0aWxl
IGF0IHRoaXMgcG9pbnQuIFRoZXkgYXJlIHBpbm5lZCBhbmQKPiBhY3RpdmUuIElmIHlvdSBtdXN0
IGRvIGEgcm13LCBkbyBpdCBvbiB0aGUgR1BVLiBCdXQgZG8gd2Ugbm90IGtub3cgdGhlCj4gZnVs
bCB2YWx1ZSAoYXMgSSBkb24ndCBleHBlY3QgaXQgdG8gYmUgbm9ucHJpdik/IFtJZiBkb2luZyBy
bXcgb24gdGhlCj4gR1BVLCB3ZSdyZSBwcm9iYWJseSBoYXZlIHRvIHVzZSBhIHNlY3VyZSBiYXRj
aCBoZXJlIHRvIGF2b2lkIHJ1bm5pbmcgb3V0Cj4gb2YgcmluZ3NwYWNlLl0KUmlnaHQuIEZpeGVk
Lgo+IAo+ID4gKyAgICAgICAgICAgICAgIHZhbHVlICY9IH5MRV9DT1NfTUFTSzsKPiA+ICsgICAg
ICAgICAgICAgICB2YWx1ZSB8PSBGSUVMRF9QUkVQKExFX0NPU19NQVNLLCBhY3RpdmVfY2xvcyk7
Cj4gPiArCj4gPiArICAgICAgICAgICAgICAgKmNzKysgPSBNSV9TVE9SRV9EV09SRF9JTU1fR0VO
NCB8IE1JX1VTRV9HR1RUOwo+ID4gKyAgICAgICAgICAgICAgICpjcysrID0gb2Zmc2V0ICsgY3R4
X21vY3NOKGluZGV4KSAqIHNpemVvZih1aW50MzJfdCk7Cj4gPiArICAgICAgICAgICAgICAgKmNz
KysgPSAwOwo+ID4gKyAgICAgICAgICAgICAgICpjcysrID0gdmFsdWU7Cj4gPiArICAgICAgIH0K
PiA+ICsKPiA+ICsgICAgICAgaW50ZWxfcmluZ19hZHZhbmNlKHJxLCBjcyk7Cj4gPiArCj4gPiAr
ICAgICAgIHJldHVybiAwOwo+ID4gK30KPiA+ICsKPiA+ICtzdGF0aWMgaW50IG1vZGlmeV9jb250
ZXh0X21vY3Moc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQo+ID4gK3sKPiA+ICsgICAgICAgc3Ry
dWN0IGk5MTVfcmVxdWVzdCAqcnE7Cj4gPiArICAgICAgIGludCBlcnI7Cj4gPiArCj4gPiArICAg
ICAgIGxvY2tkZXBfYXNzZXJ0X2hlbGQoJmNlLT5waW5fbXV0ZXgpOwo+ID4gKwo+ID4gKyAgICAg
ICBycSA9IGk5MTVfcmVxdWVzdF9jcmVhdGUoY2UtPmVuZ2luZS0+a2VybmVsX2NvbnRleHQpOwo+
ID4gKyAgICAgICBpZiAoSVNfRVJSKHJxKSkKPiA+ICsgICAgICAgICAgICAgICByZXR1cm4gUFRS
X0VSUihycSk7Cj4gPiArCj4gPiArICAgICAgIC8qIFNlcmlhbGlzZSB3aXRoIHRoZSByZW1vdGUg
Y29udGV4dCAqLwo+ID4gKyAgICAgICBlcnIgPSBpbnRlbF9jb250ZXh0X3ByZXBhcmVfcmVtb3Rl
X3JlcXVlc3QoY2UsIHJxKTsKPiA+ICsgICAgICAgaWYgKGVyciA9PSAwKQo+ID4gKyAgICAgICAg
ICAgICAgIGVyciA9IG1vY3Nfc3RvcmVfY2xvcyhycSwgY2UpOwo+ID4gKwo+ID4gKyAgICAgICBp
OTE1X3JlcXVlc3RfYWRkKHJxKTsKPiA+ICsgICAgICAgcmV0dXJuIGVycjsKPiA+ICt9Cj4gPiAr
Cj4gPiArc3RhdGljIGludCBpbnRlbF9tb2NzX2NvbmZpZ3VyZV9jb250ZXh0KHN0cnVjdCBpOTE1
X2dlbV9jb250ZXh0ICpjdHgpCj4gPiArewo+ID4gKyAgICAgICBzdHJ1Y3QgaTkxNV9nZW1fZW5n
aW5lc19pdGVyIGl0Owo+ID4gKyAgICAgICBzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2U7Cj4gPiAr
ICAgICAgIGludCBlcnIgPSAwOwo+ID4gKwo+ID4gKyAgICAgICBmb3JfZWFjaF9nZW1fZW5naW5l
KGNlLCBpOTE1X2dlbV9jb250ZXh0X2xvY2tfZW5naW5lcyhjdHgpLCBpdCkgewo+ID4gKyAgICAg
ICAgICAgICAgIEdFTV9CVUdfT04oY2UgPT0gY2UtPmVuZ2luZS0+a2VybmVsX2NvbnRleHQpOwo+
ID4gKwo+ID4gKyAgICAgICAgICAgICAgIGlmIChjZS0+ZW5naW5lLT5jbGFzcyAhPSBSRU5ERVJf
Q0xBU1MpCj4gPiArICAgICAgICAgICAgICAgICAgICAgICBjb250aW51ZTsKPiA+ICsKPiA+ICsg
ICAgICAgICAgICAgICBlcnIgPSBpbnRlbF9jb250ZXh0X2xvY2tfcGlubmVkKGNlKTsKPiA+ICsg
ICAgICAgICAgICAgICBpZiAoZXJyKQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7
Cj4gPiArCj4gPiArICAgICAgICAgICAgICAgaWYgKGludGVsX2NvbnRleHRfaXNfcGlubmVkKGNl
KSkKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGVyciA9IG1vZGlmeV9jb250ZXh0X21vY3Mo
Y2UpOwo+ID4gKwo+ID4gKyAgICAgICAgICAgICAgIGludGVsX2NvbnRleHRfdW5sb2NrX3Bpbm5l
ZChjZSk7Cj4gPiArICAgICAgICAgICAgICAgaWYgKGVycikKPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgIGJyZWFrOwo+ID4gKyAgICAgICB9Cj4gPiArICAgICAgIGk5MTVfZ2VtX2NvbnRleHRf
dW5sb2NrX2VuZ2luZXMoY3R4KTsKPiA+ICsKPiA+ICsgICAgICAgcmV0dXJuIGVycjsKPiA+ICt9
Cj4gPiArCj4gPiArc3RhdGljIGludCBpbnRlbF9tb2NzX2NvbmZpZ3VyZV9hbGxfY29udGV4dHMo
c3RydWN0IGludGVsX2d0ICpndCkKPiAKPiBTbyB0aGlzIG9uIHRoZSBHVCwKPiAKPiA+ICt7Cj4g
PiArICAgICAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZ3QtPmk5MTU7Cj4gPiAr
ICAgICAgIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsKPiA+ICsgICAgICAgc3RydWN0
IGk5MTVfZ2VtX2NvbnRleHQgKmN0eDsKPiA+ICsgICAgICAgZW51bSBpbnRlbF9lbmdpbmVfaWQg
aWQ7Cj4gPiArICAgICAgIGludCBlcnI7Cj4gPiArCj4gPiArICAgICAgIGxvY2tkZXBfYXNzZXJ0
X2hlbGQoJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwo+IAo+IFdyb25nIGxvY2sgZW50aXJlbHks
IHlvdSBuZWVkIHRoZSBjb250ZXh0IGxvY2sgZm9yIHdhbGtpbmcgdGhlCj4gaTkxNS0+Z2VtLmNv
bnRleHRzLmxpc3QuCj4gCj4gPiArICAgICAgIC8qCj4gPiArICAgICAgICAqIE1PQ1MgcmVnaXN0
ZXJzIG9mIHJlbmRlciBlbmdpbmUgYXJlIGNvbnRleHQgc2F2ZWQgYW5kIHJlc3RvcmVkIHRvIGFu
ZAo+ID4gKyAgICAgICAgKiBmcm9tIGEgY29udGV4dCBpbWFnZS4KPiA+ICsgICAgICAgICogU28g
Zm9yIGFueSBNT0NTIHVwZGF0ZSB0byByZWZsZWN0IG9uIHRoZSBleGlzdGluZyBjb250ZXh0cyBy
ZXF1aXJlcwo+ID4gKyAgICAgICAgKiB1cGRhdGluZyB0aGUgY29udGV4dCBpbWFnZS4KPiA+ICsg
ICAgICAgICovCj4gPiArICAgICAgIGxpc3RfZm9yX2VhY2hfZW50cnkoY3R4LCAmaTkxNS0+Z2Vt
LmNvbnRleHRzLmxpc3QsIGxpbmspIHsKPiA+ICsgICAgICAgICAgICAgICBpZiAoY3R4ID09IGk5
MTUtPmtlcm5lbF9jb250ZXh0KQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgY29udGludWU7
Cj4gPiArCj4gPiArICAgICAgICAgICAgICAgZXJyID0gaW50ZWxfbW9jc19jb25maWd1cmVfY29u
dGV4dChjdHgpOwo+IAo+IGJ1dCB0aGlzIGlzIGdsb2JhbCwKPiAKCkV2ZW4gdGhvdWdoIGluIEdl
bjExLCBnbG9iYWwgYW5kIEdUIG1heSBub3QgbWFrZSBtdWNoIGRpZmZlcmVuY2UsIEkgbWFkZQph
biBhdHRlbXB0IHRvIG1vdmUgdGhlIGdsb2JhbCBvdXQgb2YgR1QuCj4gPiArICAgICAgICAgICAg
ICAgaWYgKGVycikKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiBlcnI7Cj4gPiAr
ICAgICAgIH0KPiA+ICsKPiA+ICsgICAgICAgLyoKPiA+ICsgICAgICAgICogQWZ0ZXIgdXBkYXRp
bmcgYWxsIG90aGVyIGNvbnRleHRzLCB1cGRhdGUgcmVuZGVyIGNvbnRleHQgaW1hZ2Ugb2YKPiA+
ICsgICAgICAgICoga2VybmVsIGNvbnRleHQuIEFsc28gdXBkYXRlIHRoZSBNT0NTIG9mIG5vbi1y
ZW5kZXIgZW5naW5lcy4KPiA+ICsgICAgICAgICovCj4gPiArCj4gPiArICAgICAgIGZvcl9lYWNo
X2VuZ2luZShlbmdpbmUsIGk5MTUsIGlkKSB7Cj4gCj4gYW5kIGhlcmUgYWdhaW4geW91IGFyZSBv
biB0aGUgZ3QuCj4gCj4gPiArICAgICAgICAgICAgICAgc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7
Cj4gPiArICAgICAgICAgICAgICAgc3RydWN0IGRybV9pOTE1X21vY3NfdGFibGUgdDsKPiA+ICsK
PiA+ICsgICAgICAgICAgICAgICBycSA9IGk5MTVfcmVxdWVzdF9jcmVhdGUoZW5naW5lLT5rZXJu
ZWxfY29udGV4dCk7Cj4gPiArICAgICAgICAgICAgICAgaWYgKElTX0VSUihycSkpCj4gPiArICAg
ICAgICAgICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUihycSk7Cj4gPiArCj4gPiArICAgICAg
ICAgICAgICAgZ2V0X21vY3Nfc2V0dGluZ3MocnEtPmVuZ2luZS0+Z3QsICZ0KTsKPiA+ICsgICAg
ICAgICAgICAgICBlcnIgPSBlbWl0X21vY3NfY29udHJvbF90YWJsZShycSwgJnQpOwo+ID4gKyAg
ICAgICAgICAgICAgIGlmIChlcnIpIHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGk5MTVf
cmVxdWVzdF9za2lwKHJxLCBlcnIpOwo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgaTkxNV9y
ZXF1ZXN0X2FkZChycSk7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gZXJyOwo+
ID4gKyAgICAgICAgICAgICAgIH0KPiA+ICsKPiA+ICsgICAgICAgICAgICAgICBpOTE1X3JlcXVl
c3RfYWRkKHJxKTsKPiA+ICsgICAgICAgfQo+ID4gKwo+ID4gKyAgICAgICByZXR1cm4gMDsKPiA+
ICt9Cj4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9j
cy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5oCj4gPiBpbmRleCAyYWU4
MTZiN2NhMTkuLjY1NTY2NDU3NDA4ZSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX21vY3MuaAo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbW9jcy5oCj4gPiBAQCAtNDksMTMgKzQ5LDE3IEBACj4gPiAgICogY29udGV4dCBoYW5kbGlu
ZyBrZWVwIHRoZSBNT0NTIGluIHN0ZXAuCj4gPiAgICovCj4gPiAgCj4gPiAtc3RydWN0IGk5MTVf
cmVxdWVzdDsKPiA+ICBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzOwo+ID4gK3N0cnVjdCBpbnRlbF9j
b250ZXh0Owo+ID4gK3N0cnVjdCBpOTE1X3JlcXVlc3Q7Cj4gPiAgc3RydWN0IGludGVsX2d0Owo+
IAo+IE91ciBPQ0QgaXMgdG8ga2VlcCB0aGVzZSBpbiBhbHBoYWJldGljYWwgb3JkZXIuCkZpeGVk
LgoKVGhhbmsgWW91LApQcmF0aGFwCj4gLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
