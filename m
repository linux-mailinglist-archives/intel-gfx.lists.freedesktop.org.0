Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E40BE192FF
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2019 21:38:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C56189C9A;
	Thu,  9 May 2019 19:37:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5895189C9A
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2019 19:37:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 May 2019 12:37:57 -0700
X-ExtLoop1: 1
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by orsmga008.jf.intel.com with ESMTP; 09 May 2019 12:37:57 -0700
Received: from fmsmsx125.amr.corp.intel.com (10.18.125.40) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Thu, 9 May 2019 12:37:57 -0700
Received: from bgsmsx151.gar.corp.intel.com (10.224.48.42) by
 FMSMSX125.amr.corp.intel.com (10.18.125.40) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Thu, 9 May 2019 12:37:57 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.147]) by
 BGSMSX151.gar.corp.intel.com ([169.254.3.73]) with mapi id 14.03.0415.000;
 Fri, 10 May 2019 01:07:54 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH 3/3] drm/i915/icl: Fixed Input CSC Co-efficients for
 BT601/709
Thread-Index: AQHVBpdU8Q9ZSqEdnEuCITnaSB1ghqZi0CIAgABfi8A=
Date: Thu, 9 May 2019 19:37:54 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F81FF22F1@BGSMSX104.gar.corp.intel.com>
References: <1557429108-8004-1-git-send-email-uma.shankar@intel.com>
 <1557429108-8004-4-git-send-email-uma.shankar@intel.com>
 <20190509192402.GK24299@intel.com>
In-Reply-To: <20190509192402.GK24299@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMjZkYTgxODUtZmE1Ni00NDJlLWEwNzAtNTMyYjhjYTMwZWQ4IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiSzBDOHQ4NzdBRjZzb1RJdEJnMFwvXC9WbWFUajJ5NGZKR0lrd2xSZmtQQ0FQdjRwZHJLMlFcL3dhc0prS1JDSHNKNSJ9
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/icl: Fixed Input CSC
 Co-efficients for BT601/709
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cgo+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPkZyb206IFZpbGxlIFN5cmrDpGzDpCBbbWFp
bHRvOnZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tXQo+U2VudDogRnJpZGF5LCBNYXkgMTAs
IDIwMTkgMTI6NTQgQU0KPlRvOiBTaGFua2FyLCBVbWEgPHVtYS5zaGFua2FyQGludGVsLmNvbT4K
PkNjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBtYWFydGVuLmxhbmtob3JzdEBs
aW51eC5pbnRlbC5jb207IFNoYXJtYSwKPlNoYXNoYW5rIDxzaGFzaGFuay5zaGFybWFAaW50ZWwu
Y29tPgo+U3ViamVjdDogUmU6IFtQQVRDSCAzLzNdIGRybS9pOTE1L2ljbDogRml4ZWQgSW5wdXQg
Q1NDIENvLWVmZmljaWVudHMgZm9yIEJUNjAxLzcwOQo+Cj5PbiBGcmksIE1heSAxMCwgMjAxOSBh
dCAxMjo0MTo0OEFNICswNTMwLCBVbWEgU2hhbmthciB3cm90ZToKPj4gSW5wdXQgQ1NDIENvLWVm
ZmljaWVudHMgZm9yIEJUNjAxIGFuZCBCVDcwOSBZQ2JDUiB0byBSR0IgY29udmVyc2lvbgo+PiB3
ZXJlIHNsaWdodGx5IG9mZi4gRml4ZWQgdGhlIHNhbWUuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFVt
YSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+Cj4+IC0tLQo+PiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfc3ByaXRlLmMgfCAyNCArKysrKysrKysrKystLS0tLS0tLS0tLS0KPj4g
IDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKPj4KPj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Nwcml0ZS5jCj4+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc3ByaXRlLmMKPj4gaW5kZXggYzljOTcwZi4uMTIzOTQ1
NyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc3ByaXRlLmMKPj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc3ByaXRlLmMKPj4gQEAgLTQzMCw3ICs0
MzAsNyBAQCBpbnQgaW50ZWxfcGxhbmVfY2hlY2tfc3JjX2Nvb3JkaW5hdGVzKHN0cnVjdAo+aW50
ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQo+PiAgCQkgKi8KPj4gIAkJW0RSTV9DT0xPUl9Z
Q0JDUl9CVDcwOV0gPSB7Cj4+ICAJCQkweDdDOTgsIDB4NzgwMCwgMHgwLAo+PiAtCQkJMHg5RUY4
LCAweDc4MDAsIDB4QUJGOCwKPj4gKwkJCTB4OUVGOCwgMHg3ODAwLCAweEFDMDAsCj4+ICAJCQkw
eDAsIDB4NzgwMCwgIDB4N0VEOCwKPj4gIAkJfSwKPj4gIAkJLyoKPj4gQEAgLTQ1MywyNSArNDUz
LDI1IEBAIGludCBpbnRlbF9wbGFuZV9jaGVja19zcmNfY29vcmRpbmF0ZXMoc3RydWN0Cj5pbnRl
bF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCj4+ICAJCSAqIEJULjYwMSBMaW10ZWQgcmFuZ2Ug
WUNiQ3IgLT4gZnVsbCByYW5nZSBSR0IKPj4gIAkJICogVGhlIG1hdHJpeCByZXF1aXJlZCBpcyA6
Cj4+ICAJCSAqIFsxLjE2NDM4NCwgMC4wMDAsIDEuNTk2MzcwLAo+PiAtCQkgKiAgMS4xMzgzOTMs
IC0wLjM4MjUwMCwgLTAuNzk0NTk4LAo+PiAtCQkgKiAgMS4xMzgzOTMsIDEuOTcxNjk2LCAwLjAw
MDBdCj4+ICsJCSAqICAxLjE2NDM4NCwgLTAuMzgyNTAwLCAtMC43OTQ1OTgsCj4+ICsJCSAqICAx
LjE2NDM4NCwgMS45NzE2OTYsIDAuMDAwMF0KPgo+U3RpbGwgbm90IHF1aXRlIHdoYXQgSSdtIGdl
dHRpbmcgaGVyZToKPjEuMTY0Mzg0ICAwLjAwMDAwMCAgMS41OTYwMjcKPjEuMTY0Mzg0IC0wLjM5
MTc2MiAtMC44MTI5NjgKPjEuMTY0Mzg0ICAyLjAxNzIzMiAgMC4wMDAwMDAKCkhtbSB5ZWFoLCB0
aGUgcmVmZXJlbmNlIG1hdHJpeCBJIHVzZWQgZWFybGllciBpcyBub3QgYWNjdXJhdGUgaXQgc2Vl
bXMuIFdpdGgKaWd0X2NvbG9yX2VuY29kaW5nIEkgYW0gZ2V0dGluZyB3aGF0IHlvdSBnZXQgaGVy
ZS4gV2lsbCB1cGRhdGUgYW5kIHJlc2VuZC4KCgo+PiAgCQkgKi8KPj4gIAkJW0RSTV9DT0xPUl9Z
Q0JDUl9CVDYwMV0gPSB7Cj4+IC0JCQkweDdDQzgsIDB4Nzk1MCwgMHgwLAo+PiAtCQkJMHg4Q0I4
LCAweDc5MTgsIDB4OUM0MCwKPj4gLQkJCTB4MCwgMHg3OTE4LCAweDdGQzgsCj4+ICsJCQkweDdD
ODAsIDB4Nzk1MCwgMHgwLAo+PiArCQkJMHg4Q0I4LCAweDc5NTAsIDB4OUM0MCwKPj4gKwkJCTB4
MCwgMHg3OTUwLCAweDdGQzgsCj4+ICAJCX0sCj4+ICAJCS8qCj4+ICAJCSAqIEJULjcwOSBMaW1p
dGVkIHJhbmdlIFlDYkNyIC0+IGZ1bGwgcmFuZ2UgUkdCCj4+ICAJCSAqIFRoZSBtYXRyaXggcmVx
dWlyZWQgaXMgOgo+PiAtCQkgKiBbMS4xNjQsIDAuMDAwLCAxLjgzMzY3MSwKPj4gLQkJICogIDEu
MTM4MzkzLCAtMC4yMTMyNDksIC0wLjUzMjkwOSwKPj4gLQkJICogIDEuMTM4MzkzLCAyLjExMjQw
MiwgMC4wMDAwXQo+PiArCQkgKiBbMS4xNjQzODQsIDAuMDAwLCAxLjc5Mjc0MSwKPj4gKwkJICog
IDEuMTY0Mzg0LCAtMC4yMTMyNDksIC0wLjUzMjkwOSwKPj4gKwkJICogIDEuMTY0Mzg0LCAyLjEx
MjQwMiwgMC4wMDAwXQo+PiAgCQkgKi8KPgo+VGhpcyBvbmUgbWF0Y2hlcyB3aGF0IEknbSBnZXR0
aW5nLgo+Cj4+ICAJCVtEUk1fQ09MT1JfWUNCQ1JfQlQ3MDldID0gewo+PiAtCQkJMHg3RUE4LCAw
eDc5NTAsIDB4MCwKPj4gLQkJCTB4ODg4OCwgMHg3OTE4LCAweEFEQTgsCj4+IC0JCQkweDAsIDB4
NzkxOCwgIDB4Njg3MCwKPj4gKwkJCTB4N0U1OCwgMHg3OTUwLCAweDAsCj4+ICsJCQkweDg4ODgs
IDB4Nzk1MCwgMHhBREE4LAo+PiArCQkJMHgwLCAweDc5NTAsICAweDY4NzAsCj4+ICAJCX0sCj4+
ICAJCS8qCj4+ICAJCSAqIEJULjIwMjAgTGltaXRlZCByYW5nZSBZQ2JDciAtPiBmdWxsIHJhbmdl
IFJHQgo+PiAtLQo+PiAxLjkuMQo+Cj4tLQo+VmlsbGUgU3lyasOkbMOkCj5JbnRlbApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
