Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F37219F7A
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2019 16:44:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6465E89B99;
	Fri, 10 May 2019 14:44:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAA3C89B99
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2019 14:44:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 May 2019 07:44:54 -0700
X-ExtLoop1: 1
Received: from gaia.fi.intel.com ([10.237.72.169])
 by orsmga003.jf.intel.com with ESMTP; 10 May 2019 07:44:52 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 187385C1ED1; Fri, 10 May 2019 17:44:10 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190508080704.24223-34-chris@chris-wilson.co.uk>
References: <20190508080704.24223-1-chris@chris-wilson.co.uk>
 <20190508080704.24223-34-chris@chris-wilson.co.uk>
Date: Fri, 10 May 2019 17:44:10 +0300
Message-ID: <871s168j45.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 34/40] drm/i915: Rename intel_context.active
 to .inflight
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gUmVuYW1l
IHRoZSBlbmdpbmUgdGhpcyBIVyBjb250ZXh0IGlzIGN1cnJlbnRseSBhY3RpdmUgdXBvbiAodGhh
dCB3ZSBhcmUKPiBmbHlpbmcgdXBvbikgdG8gZGlzYW1iaWd1YXRlIGJldHdlZW4gdGhlIG1peHR1
cmUgb2YgZGlmZmVyZW50IGFjdGl2ZQo+IHRlcm1zIChhbmQgcHJldmVudCBjb25mbGljdCBpbiBm
dXR1cmUgcGF0Y2hlcykuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
Y29udGV4dF90eXBlcy5oIHwgIDIgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
bHJjLmMgICAgICAgICAgIHwgMjIgKysrKysrKysrLS0tLS0tLS0tLQo+ICAyIGZpbGVzIGNoYW5n
ZWQsIDEyIGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHRfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHRfdHlwZXMuaAo+IGluZGV4IDk2M2EzMTI0MzBlNi4u
ODI1ZmNmMGFjOWM0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2NvbnRleHRfdHlwZXMuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2Nv
bnRleHRfdHlwZXMuaAo+IEBAIC0zNyw3ICszNyw3IEBAIHN0cnVjdCBpbnRlbF9jb250ZXh0IHsK
PiAgCj4gIAlzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqZ2VtX2NvbnRleHQ7Cj4gIAlzdHJ1Y3Qg
aW50ZWxfZW5naW5lX2NzICplbmdpbmU7Cj4gLQlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICphY3Rp
dmU7Cj4gKwlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICppbmZsaWdodDsKCkFjdGl2ZV9vbiBjYW1l
IHRvIG15IG1pbmQgd2hlbiBmaXJzdCByZWFkaW5nIHRoaXMuIEFzIGRpc2N1c3NlZAppbiBpcmMg
J2FjdGl2ZScgaXMgYWxyZWFkeSBxdWl0ZSBvdmVybG9hZGVkIHNvIGluZmxpZ2h0IHNlZW1zCmZp
dHRpbmcuCgpSZXZpZXdlZC1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5p
bnRlbC5jb20+Cgo+ICAKPiAgCXN0cnVjdCBsaXN0X2hlYWQgc2lnbmFsX2xpbms7Cj4gIAlzdHJ1
Y3QgbGlzdF9oZWFkIHNpZ25hbHM7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiBp
bmRleCA2NGJkMjVhOWU2ZjUuLjVlNDE4YmY0NmM0NiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2xyYy5jCj4gQEAgLTQ2MCw3ICs0NjAsNyBAQCBfX3Vud2luZF9pbmNvbXBsZXRlX3Jl
cXVlc3RzKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgaW50IGJvb3N0KQo+ICAJCV9f
aTkxNV9yZXF1ZXN0X3Vuc3VibWl0KHJxKTsKPiAgCQl1bndpbmRfd2FfdGFpbChycSk7Cj4gIAo+
IC0JCUdFTV9CVUdfT04ocnEtPmh3X2NvbnRleHQtPmFjdGl2ZSk7Cj4gKwkJR0VNX0JVR19PTihy
cS0+aHdfY29udGV4dC0+aW5mbGlnaHQpOwo+ICAKPiAgCQkvKgo+ICAJCSAqIFB1c2ggdGhlIHJl
cXVlc3QgYmFjayBpbnRvIHRoZSBxdWV1ZSBmb3IgbGF0ZXIgcmVzdWJtaXNzaW9uLgo+IEBAIC01
NTcsMTEgKzU1NywxMSBAQCBleGVjbGlzdHNfdXNlcl9lbmQoc3RydWN0IGludGVsX2VuZ2luZV9l
eGVjbGlzdHMgKmV4ZWNsaXN0cykKPiAgc3RhdGljIGlubGluZSB2b2lkCj4gIGV4ZWNsaXN0c19j
b250ZXh0X3NjaGVkdWxlX2luKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQo+ICB7Cj4gLQlHRU1f
QlVHX09OKHJxLT5od19jb250ZXh0LT5hY3RpdmUpOwo+ICsJR0VNX0JVR19PTihycS0+aHdfY29u
dGV4dC0+aW5mbGlnaHQpOwo+ICAKPiAgCWV4ZWNsaXN0c19jb250ZXh0X3N0YXR1c19jaGFuZ2Uo
cnEsIElOVEVMX0NPTlRFWFRfU0NIRURVTEVfSU4pOwo+ICAJaW50ZWxfZW5naW5lX2NvbnRleHRf
aW4ocnEtPmVuZ2luZSk7Cj4gLQlycS0+aHdfY29udGV4dC0+YWN0aXZlID0gcnEtPmVuZ2luZTsK
PiArCXJxLT5od19jb250ZXh0LT5pbmZsaWdodCA9IHJxLT5lbmdpbmU7Cj4gIH0KPiAgCj4gIHN0
YXRpYyB2b2lkIGtpY2tfc2libGluZ3Moc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCj4gQEAgLTU3
Niw3ICs1NzYsNyBAQCBzdGF0aWMgdm9pZCBraWNrX3NpYmxpbmdzKHN0cnVjdCBpOTE1X3JlcXVl
c3QgKnJxKQo+ICBzdGF0aWMgaW5saW5lIHZvaWQKPiAgZXhlY2xpc3RzX2NvbnRleHRfc2NoZWR1
bGVfb3V0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLCB1bnNpZ25lZCBsb25nIHN0YXR1cykKPiAg
ewo+IC0JcnEtPmh3X2NvbnRleHQtPmFjdGl2ZSA9IE5VTEw7Cj4gKwlycS0+aHdfY29udGV4dC0+
aW5mbGlnaHQgPSBOVUxMOwo+ICAJaW50ZWxfZW5naW5lX2NvbnRleHRfb3V0KHJxLT5lbmdpbmUp
Owo+ICAJZXhlY2xpc3RzX2NvbnRleHRfc3RhdHVzX2NoYW5nZShycSwgc3RhdHVzKTsKPiAgCXRy
YWNlX2k5MTVfcmVxdWVzdF9vdXQocnEpOwo+IEBAIC04MjAsNyArODIwLDcgQEAgc3RhdGljIGJv
b2wgdmlydHVhbF9tYXRjaGVzKGNvbnN0IHN0cnVjdCB2aXJ0dWFsX2VuZ2luZSAqdmUsCj4gIAkJ
CSAgICBjb25zdCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwKPiAgCQkJICAgIGNvbnN0IHN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPiAgewo+IC0JY29uc3Qgc3RydWN0IGludGVsX2Vu
Z2luZV9jcyAqYWN0aXZlOwo+ICsJY29uc3Qgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqaW5mbGln
aHQ7Cj4gIAo+ICAJaWYgKCEocnEtPmV4ZWN1dGlvbl9tYXNrICYgZW5naW5lLT5tYXNrKSkgLyog
V2UgcGVla2VkIHRvbyBzb29uISAqLwo+ICAJCXJldHVybiBmYWxzZTsKPiBAQCAtODM0LDggKzgz
NCw4IEBAIHN0YXRpYyBib29sIHZpcnR1YWxfbWF0Y2hlcyhjb25zdCBzdHJ1Y3QgdmlydHVhbF9l
bmdpbmUgKnZlLAo+ICAJICogd2UgcmV1c2UgdGhlIHJlZ2lzdGVyIG9mZnNldHMpLiBUaGlzIGlz
IGEgdmVyeSBzbWFsbAo+ICAJICogaHlzdGVyc2lzIG9uIHRoZSBncmVlZHkgc2VlbGN0aW9uIGFs
Z29yaXRobS4KPiAgCSAqLwo+IC0JYWN0aXZlID0gUkVBRF9PTkNFKHZlLT5jb250ZXh0LmFjdGl2
ZSk7Cj4gLQlpZiAoYWN0aXZlICYmIGFjdGl2ZSAhPSBlbmdpbmUpCj4gKwlpbmZsaWdodCA9IFJF
QURfT05DRSh2ZS0+Y29udGV4dC5pbmZsaWdodCk7Cj4gKwlpZiAoaW5mbGlnaHQgJiYgaW5mbGln
aHQgIT0gZW5naW5lKQo+ICAJCXJldHVybiBmYWxzZTsKPiAgCj4gIAlyZXR1cm4gdHJ1ZTsKPiBA
QCAtMTAyMyw3ICsxMDIzLDcgQEAgc3RhdGljIHZvaWQgZXhlY2xpc3RzX2RlcXVldWUoc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICAJCQkJdTMyICpyZWdzID0gdmUtPmNvbnRleHQu
bHJjX3JlZ19zdGF0ZTsKPiAgCQkJCXVuc2lnbmVkIGludCBuOwo+ICAKPiAtCQkJCUdFTV9CVUdf
T04oUkVBRF9PTkNFKHZlLT5jb250ZXh0LmFjdGl2ZSkpOwo+ICsJCQkJR0VNX0JVR19PTihSRUFE
X09OQ0UodmUtPmNvbnRleHQuaW5mbGlnaHQpKTsKPiAgCQkJCXZpcnR1YWxfdXBkYXRlX3JlZ2lz
dGVyX29mZnNldHMocmVncywgZW5naW5lKTsKPiAgCj4gIAkJCQlpZiAoIWxpc3RfZW1wdHkoJnZl
LT5jb250ZXh0LnNpZ25hbHMpKQo+IEBAIC0xNTAxLDcgKzE1MDEsNyBAQCBzdGF0aWMgdm9pZCBl
eGVjbGlzdHNfY29udGV4dF91bnBpbihzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCj4gIAkgKiBo
YWQgdGhlIGNoYW5jZSB0byBydW4geWV0OyBsZXQgaXQgcnVuIGJlZm9yZSB3ZSB0ZWFyZG93biB0
aGUKPiAgCSAqIHJlZmVyZW5jZSBpdCBtYXkgdXNlLgo+ICAJICovCj4gLQllbmdpbmUgPSBSRUFE
X09OQ0UoY2UtPmFjdGl2ZSk7Cj4gKwllbmdpbmUgPSBSRUFEX09OQ0UoY2UtPmluZmxpZ2h0KTsK
PiAgCWlmICh1bmxpa2VseShlbmdpbmUpKSB7Cj4gIAkJdW5zaWduZWQgbG9uZyBmbGFnczsKPiAg
Cj4gQEAgLTE1MDksNyArMTUwOSw3IEBAIHN0YXRpYyB2b2lkIGV4ZWNsaXN0c19jb250ZXh0X3Vu
cGluKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKPiAgCQlwcm9jZXNzX2NzYihlbmdpbmUpOwo+
ICAJCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmVuZ2luZS0+dGltZWxpbmUubG9jaywgZmxhZ3Mp
Owo+ICAKPiAtCQlHRU1fQlVHX09OKFJFQURfT05DRShjZS0+YWN0aXZlKSk7Cj4gKwkJR0VNX0JV
R19PTihSRUFEX09OQ0UoY2UtPmluZmxpZ2h0KSk7Cj4gIAl9Cj4gIAo+ICAJaTkxNV9nZW1fY29u
dGV4dF91bnBpbl9od19pZChjZS0+Z2VtX2NvbnRleHQpOwo+IEBAIC0zMTAzLDcgKzMxMDMsNyBA
QCBzdGF0aWMgdm9pZCB2aXJ0dWFsX2NvbnRleHRfZGVzdHJveShzdHJ1Y3Qga3JlZiAqa3JlZikK
PiAgCXVuc2lnbmVkIGludCBuOwo+ICAKPiAgCUdFTV9CVUdfT04odmUtPnJlcXVlc3QpOwo+IC0J
R0VNX0JVR19PTih2ZS0+Y29udGV4dC5hY3RpdmUpOwo+ICsJR0VNX0JVR19PTih2ZS0+Y29udGV4
dC5pbmZsaWdodCk7Cj4gIAo+ICAJZm9yIChuID0gMDsgbiA8IHZlLT5udW1fc2libGluZ3M7IG4r
Kykgewo+ICAJCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKnNpYmxpbmcgPSB2ZS0+c2libGluZ3Nb
bl07Cj4gLS0gCj4gMi4yMC4xCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
