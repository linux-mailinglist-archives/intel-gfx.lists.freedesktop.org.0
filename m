Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 157A818C68
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2019 16:54:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 625B289D30;
	Thu,  9 May 2019 14:54:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC81889D30
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2019 14:54:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 May 2019 07:54:23 -0700
X-ExtLoop1: 1
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga001.fm.intel.com with ESMTP; 09 May 2019 07:54:23 -0700
Received: from fmsmsx120.amr.corp.intel.com (10.18.124.208) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Thu, 9 May 2019 07:54:23 -0700
Received: from bgsmsx155.gar.corp.intel.com (10.224.48.102) by
 fmsmsx120.amr.corp.intel.com (10.18.124.208) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Thu, 9 May 2019 07:54:22 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.147]) by
 BGSMSX155.gar.corp.intel.com ([169.254.12.162]) with mapi id 14.03.0415.000;
 Thu, 9 May 2019 20:24:19 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/icl: Handle YCbCr to RGB
 conversion for BT2020 case
Thread-Index: AQHVBNWphAr5uBbJPEOm/nC8FA8hjKZfVlcAgABicZD//7cYAIADcDNw
Date: Thu, 9 May 2019 14:54:19 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F81FF2031@BGSMSX104.gar.corp.intel.com>
References: <20190507130257.22837-1-shashank.sharma@intel.com>
 <20190507130257.22837-2-shashank.sharma@intel.com>
 <20190507140646.GO24299@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F81FEF5E1@BGSMSX104.gar.corp.intel.com>
 <20190507153810.GQ24299@intel.com>
In-Reply-To: <20190507153810.GQ24299@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYzcyZTcxZGMtNThiOC00ZDVjLTkwYjctYzEyMDhhMTk0ZmQ5IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiejhQK1RLblQyXC9MZnIzeE9yWFFZTTVcL0c5Wnd4dklDaFlvUWVqQ2lGRGdjK0lmR3hZYWpxUW5OVnI2dUw2emNTIn0=
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/icl: Handle YCbCr to RGB
 conversion for BT2020 case
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
bHRvOnZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tXQo+U2VudDogVHVlc2RheSwgTWF5IDcs
IDIwMTkgOTowOCBQTQo+VG86IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPgo+
Q2M6IFNoYXJtYSwgU2hhc2hhbmsgPHNoYXNoYW5rLnNoYXJtYUBpbnRlbC5jb20+OyBpbnRlbC0K
PmdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPlN1YmplY3Q6IFJlOiBbSW50ZWwtZ2Z4XSBbUEFU
Q0hdIGRybS9pOTE1L2ljbDogSGFuZGxlIFlDYkNyIHRvIFJHQiBjb252ZXJzaW9uIGZvcgo+QlQy
MDIwIGNhc2UKPgo+T24gVHVlLCBNYXkgMDcsIDIwMTkgYXQgMDI6MzU6MTVQTSArMDAwMCwgU2hh
bmthciwgVW1hIHdyb3RlOgo+Pgo+Pgo+PiA+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4g
PkZyb206IEludGVsLWdmeCBbbWFpbHRvOmludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZ10gT24KPj4gPkJlaGFsZiBPZiBWaWxsZSBTeXJqw6Rsw6QKPj4gPlNlbnQ6IFR1ZXNk
YXksIE1heSA3LCAyMDE5IDc6MzcgUE0KPj4gPlRvOiBTaGFybWEsIFNoYXNoYW5rIDxzaGFzaGFu
ay5zaGFybWFAaW50ZWwuY29tPgo+PiA+Q2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKPj4gPlN1YmplY3Q6IFJlOiBbSW50ZWwtZ2Z4XSBbUEFUQ0hdIGRybS9pOTE1L2ljbDogSGFu
ZGxlIFlDYkNyIHRvIFJHQgo+PiA+Y29udmVyc2lvbiBmb3IKPj4gPkJUMjAyMCBjYXNlCj4+ID4K
Pj4gPk9uIFR1ZSwgTWF5IDA3LCAyMDE5IGF0IDA2OjMyOjU3UE0gKzA1MzAsIFNoYXNoYW5rIFNo
YXJtYSB3cm90ZToKPj4gPj4gRnJvbTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNv
bT4KPj4gPj4KPj4gPj4gQ3VycmVudGx5IGlucHV0IGNzYyBmb3IgWUNiQ1IgdG8gUkdCIGNvbnZl
cnNpb24gaGFuZGxlcyBvbmx5Cj4+ID4+IEJUNjAxIGFuZCBCdDcwOS4gRXh0ZW5kaW5nIGl0IHRv
IHN1cHBvcnQgQlQyMDIwIGFzIHdlbGwuCj4+ID4+Cj4+ID4+IFNpZ25lZC1vZmYtYnk6IFVtYSBT
aGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+Cj4+ID4+IFNpZ25lZC1vZmYtYnk6IFNoYXNo
YW5rIFNoYXJtYSA8c2hhc2hhbmsuc2hhcm1hQGludGVsLmNvbT4KPj4gPj4gLS0tCj4+ID4+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zcHJpdGUuYyB8IDI0ICsrKysrKysrKysrKysrKysr
KysrKysrKwo+PiA+PiAgMSBmaWxlIGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKykKPj4gPj4KPj4g
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Nwcml0ZS5jCj4+ID4+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc3ByaXRlLmMKPj4gPj4gaW5kZXggNDRhYWVh
YzFiMmVkLi4yNTM2ZTc1N2JlYzIgMTAwNjQ0Cj4+ID4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3Nwcml0ZS5jCj4+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X3Nwcml0ZS5jCj4+ID4+IEBAIC00MzMsNiArNDMzLDE4IEBAIGljbF9wcm9ncmFtX2lucHV0X2Nz
YyhzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAo+PiA+PiAgCQkJMHg5RUY4LCAweDc4MDAsIDB4
QUJGOCwKPj4gPj4gIAkJCTB4MCwgMHg3ODAwLCAgMHg3RUQ4LAo+PiA+PiAgCQl9LAo+PiA+PiAr
CQkvKgo+PiA+PiArCQkgKiBCVC4yMDIwIGZ1bGwgcmFuZ2UgWUNiQ3IgLT4gZnVsbCByYW5nZSBS
R0IKPj4gPj4gKwkJICogVGhlIG1hdHJpeCByZXF1aXJlZCBpcyA6Cj4+ID4+ICsJCSAqIFsxLjAw
MCwgMC4wMDAsIDEuNDc0LAo+PiA+PiArCQkgKiAgMS4wMDAsIC0wLjE2NDUsIC0wLjU3MTMsCj4+
ID4+ICsJCSAqICAxLjAwMCwgMS44ODE0LCAwLjAwMDBdCj4+ID4+ICsJCSAqLwo+PiA+PiArCQlb
RFJNX0NPTE9SX1lDQkNSX0JUMjAyMF0gPSB7Cj4+ID4+ICsJCQkweDdCQzgsIDB4NzgwMCwgMHgw
LAo+PiA+PiArCQkJMHg4OTI4LCAweDc4MDAsIDB4QUE4OCwKPj4gPj4gKwkJCTB4MCwgMHg3ODAw
LCAweDdGMTAsCj4+ID4+ICsJCX0sCj4+ID4+ICAJfTsKPj4gPj4KPj4gPj4gIAkvKiBNYXRyaXgg
Zm9yIExpbWl0ZWQgUmFuZ2UgdG8gRnVsbCBSYW5nZSBDb252ZXJzaW9uICovIEBAIC00NjEsNgo+
PiA+PiArNDczLDE4IEBAIGljbF9wcm9ncmFtX2lucHV0X2NzYyhzdHJ1Y3QgaW50ZWxfcGxhbmUg
KnBsYW5lLAo+PiA+PiAgCQkJMHg4ODg4LCAweDc5MTgsIDB4QURBOCwKPj4gPj4gIAkJCTB4MCwg
MHg3OTE4LCAgMHg2ODcwLAo+PiA+PiAgCQl9LAo+PiA+PiArCQkvKgo+PiA+PiArCQkgKiBCVC4y
MDIwIExpbWl0ZWQgcmFuZ2UgWUNiQ3IgLT4gZnVsbCByYW5nZSBSR0IKPj4gPj4gKwkJICogVGhl
IG1hdHJpeCByZXF1aXJlZCBpcyA6Cj4+ID4+ICsJCSAqIFsxLjE2NCwgMC4wMDAsIDEuNzE3LAo+
PiA+PiArCQkgKiAgMS4xMzgsIC0wLjE4NzMsIC0wLjY1MDQsCj4+ID4+ICsJCSAqICAxLjEzODAs
IDIuMTQxNywgMC4wMDAwXQo+PiA+Cj4+ID5XaGVyZSBhcmUgdGhvc2UgMS4xMzggY29taW5nIGZy
b20/Cj4+Cj4+IEhpIFZpbGxlLAo+PiBUaGlzIGlzIHRoZSBvcmlnaW5hbCBZQ0JDUiB0byBSR0Ig
QlQyMDIwIG1hdHJpeDoKPj4gewo+PiAgICAgICAgIDEuMDAwMDAwMDAwMDAsICAwLjAwMDAwMDAw
MDAwLCAgMS40NzQ2MDAwMDAwMCwKPj4gICAgICAgICAxLjAwMDAwMDAwMDAwLCAgLTAuMTY0NTUz
MTI2ODQsIC0wLjU3MTM1MzEyNjg0LAo+PiAgICAgICAgIDEuMDAwMDAwMDAwMDAsICAxLjg4MTQw
MDAwMDAwLCAgMC4wMDAwMDAwMDAwMCB9Owo+Pgo+PiBXZSBoYXZlIHRvIGNvbnZlcnQgTGltaXRl
ZCBSYW5nZSBZQ2JDciB0byBGdWxsIFJhbmdlIFJHQi4gSGVuY2Ugd2UgbmVlZCB0bwo+YXBwbHkg
YSBzY2FsZSBmYWN0b3I6Cj4+ICB5c2NhbGVmYWN0b3IgPSAyMTkuMCAqIG5vcm1hbGl6aW5nZmFj
dG9yOyAgY2JjcnNjYWxlZmFjdG9yID0gMjI0LjAgKgo+PiBub3JtYWxpemluZ2ZhY3RvcjsKPj4K
Pj4gIC8qIFNjYWxlIGZhY3RvcnMgYXJlIGludmVydGVkIGZvciBMUiB0byBGUiBjb252ZXJzaW9u
ICovCj4+IHlzY2FsZWZhY3RvciA9IDEuMCAvIHlzY2FsZWZhY3RvcjsgIGNiY3JzY2FsZWZhY3Rv
ciA9IDEuMCAvCj4+IGNiY3JzY2FsZWZhY3RvcjsKPj4KPj4gVGhpcyB5aWVsZHMgdGhlIGFib3Zl
IHJlc3VsdHMuCj4KPlRob3NlIGFyZSB0aGUgY29lZmZpY2llbnRzIGZvciBZLCBzbyB0aGV5IHNo
b3VsZCBzdGlsbCBiZSB0aGUgc2FtZSBmb3IgYWxsIHRocmVlIG91dHB1dAo+Y2hhbm5lbHMuCj4K
PmlndF9jb2xvcl9lbmNvZGluZyBnaXZlcyBtZToKPnwxLjE2NDQsIDAuMDAwMCwgMS42Nzg3LHwK
PnwxLjE2NDQsLTAuMTg3MywtMC42NTA0LHwKPnwxLjE2NDQsIDIuMTQxOCwgMC4wMDAwLHwKCk9r
LCBJIHVzZWQgdGhlIGlndF9jb2xvcl9lbmNvZGluZyBtZXRob2QgYW5kIGFibGUgdG8gZ2V0IHZh
bHVlcyB3aGF0IHlvdSBnb3QuCldpbGwgdXBkYXRlIHRoZSBtYXRyaXguIFRoYW5rcyBWaWxsZS4K
Cj5Mb29rcyBsaWtlIHdlJ3JlIGFsc28gbWlzcHJvZ3JhbW1pbmcgdGhlIFkgcHJlLW9mZnNldCBm
b3IgdGhlIGZ1bGwgcmFuZ2UgWUNiQ3IgY2FzZS4KRm9yIGZ1bGwgcmFuZ2UsIEkgYW0gZ2V0dGlu
ZyBzYW1lIHZhbHVlcyBhcyBwcm9ncmFtbWVkIGFib3ZlLiBMb29rcyBvaywgY2FuIHlvdSBkb3Vi
bGUgY2hlY2suCgpSZWdhcmRzLApVbWEgU2hhbmthcgoKPi0tCj5WaWxsZSBTeXJqw6Rsw6QKPklu
dGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
