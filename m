Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1164DE0B87
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 20:37:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78D0C6E8C6;
	Tue, 22 Oct 2019 18:37:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4F976E8C6
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 18:37:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 11:37:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,217,1569308400"; d="scan'208";a="196529378"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by fmsmga008.fm.intel.com with ESMTP; 22 Oct 2019 11:37:49 -0700
Received: from orsmsx157.amr.corp.intel.com (10.22.240.23) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 22 Oct 2019 11:37:48 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.212]) by
 ORSMSX157.amr.corp.intel.com ([169.254.9.232]) with mapi id 14.03.0439.000;
 Tue, 22 Oct 2019 11:37:48 -0700
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [PATCH v4 10/10] drm/i915/tgl: Add Clear Color supoort for TGL
 Render Decompression
Thread-Index: AQHVguwKKW1KFCwW7U+OO3rUc/swj6dneNkA//+OlXA=
Date: Tue, 22 Oct 2019 18:37:48 +0000
Message-ID: <8C2593290C2B3E488D763E819AF1F02E15F92D21@ORSMSX101.amr.corp.intel.com>
References: <20191015000533.11425-1-radhakrishna.sripada@intel.com>
 <20191015000533.11425-11-radhakrishna.sripada@intel.com>
 <20191022181524.GD18842@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20191022181524.GD18842@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMTRmNDA4MjMtNDRkOC00ZjRmLThlM2UtZWY1YTFiYTBiMmVjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiQkY3a1AwbEhQXC95UU8zUlk0R1JIMmU0dUFkVkY5Sm9LUHpDRkFvMzJJRllMb0M1NXBOUXRyVGNqeUdFOUdrNWwifQ==
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v4 10/10] drm/i915/tgl: Add Clear Color
 supoort for TGL Render Decompression
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
Cc: "Chery, Nanley G" <nanley.g.chery@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Pandiyan,
 Dhinakaran" <dhinakaran.pandiyan@intel.com>, "Syrjala,
 Ville" <ville.syrjala@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgTWF0dCwKCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiBGcm9tOiBSb3BlciwgTWF0
dGhldyBECj4gU2VudDogVHVlc2RheSwgT2N0b2JlciAyMiwgMjAxOSAxMToxNSBBTQo+IFRvOiBT
cmlwYWRhLCBSYWRoYWtyaXNobmEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT4KPiBD
YzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgUGFuZGl5YW4sIERoaW5ha2FyYW4K
PiA8ZGhpbmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+OyBTeXJqYWxhLCBWaWxsZSA8dmlsbGUu
c3lyamFsYUBpbnRlbC5jb20+Owo+IFNoYXJtYSwgU2hhc2hhbmsgPHNoYXNoYW5rLnNoYXJtYUBp
bnRlbC5jb20+OyBBbnRvZ25vbGxpLCBSYWZhZWwKPiA8cmFmYWVsLmFudG9nbm9sbGlAaW50ZWwu
Y29tPjsgQ2hlcnksIE5hbmxleSBHIDxuYW5sZXkuZy5jaGVyeUBpbnRlbC5jb20+Cj4gU3ViamVj
dDogUmU6IFtQQVRDSCB2NCAxMC8xMF0gZHJtL2k5MTUvdGdsOiBBZGQgQ2xlYXIgQ29sb3Igc3Vw
b29ydCBmb3IgVEdMCj4gUmVuZGVyIERlY29tcHJlc3Npb24KPiAKPiBPbiBNb24sIE9jdCAxNCwg
MjAxOSBhdCAwNTowNTozM1BNIC0wNzAwLCBSYWRoYWtyaXNobmEgU3JpcGFkYSB3cm90ZToKPiA+
IFJlbmRlciBEZWNvbXByZXNzaW9uIGlzIHN1cHBvcnRlZCB3aXRoIFktVGlsZWQgbWFpbiBzdXJm
YWNlLiBUaGUgQ0NTCj4gPiBpcyBsaW5lYXIgYW5kIGhhcyA0IGJpdHMgb2YgZGF0YSBmb3IgZWFj
aCBtYWluIHN1cmZhY2UgY2FjaGUgbGluZQo+ID4gcGFpciwgYSByYXRpbyBvZiAxOjI1Ni4gQWRk
aXRpb25hbCBDbGVhciBDb2xvciBpbmZvcm1hdGlvbiBpcyBwYXNzZWQKPiA+IGZyb20gdGhlIHVz
ZXItc3BhY2UgdGhyb3VnaCBhbiBvZmZzZXQgaW4gdGhlIEdFTSBCTy4gQWRkIGEgbmV3Cj4gPiBt
b2RpZmllciB0byBpZGVudGlmeSBhbmQgcGFyc2UgbmV3IENsZWFyIENvbG9yIGluZm9ybWF0aW9u
IGFuZCBleHRlbmQKPiA+IEdlbjEyIHJlbmRlciBkZWNvbXByZXNzaW9uIGZ1bmN0aW9uYWxpdHkg
dG8gdGhlIG5ld2x5IGFkZGVkIG1vZGlmaWVyLgo+ID4KPiA+IHYyOiBGaXggaGFzX2FscGhhIGZs
YWcgZm9yIG1vZGlmaWVycywgb21pdCBDQyBtb2RpZmllciBkdXJpbmcgaW5pdGlhbAo+ID4gICAg
IHBsYW5lIGNvbmZpZyhNYXR0KS4gRml4IExvb2t1cCBlcnJvci4KPiA+IHYzOiBGaXggdGhlIHBh
bmljIHdoaWxlIHJ1bm5pbmcga21zX2N1YmUKPiA+IHY0OiBBZGQgYWxpZ25tZW50IGNoZWNrIGFu
ZCByZXVzZSB0aGUgY29tbWVudHMgZm9yCj4gPiBnZTEyX2Njc19mb3JtYXRzKE1hdHQpCj4gPgo+
ID4gQ2M6IERoaW5ha2FyYW4gUGFuZGl5YW4gPGRoaW5ha2FyYW4ucGFuZGl5YW5AaW50ZWwuY29t
Pgo+ID4gQ2M6IFZpbGxlIFN5cmphbGEgPHZpbGxlLnN5cmphbGFAaW50ZWwuY29tPgo+ID4gQ2M6
IFNoYXNoYW5rIFNoYXJtYSA8c2hhc2hhbmsuc2hhcm1hQGludGVsLmNvbT4KPiA+IENjOiBSYWZh
ZWwgQW50b2dub2xsaSA8cmFmYWVsLmFudG9nbm9sbGlAaW50ZWwuY29tPgo+ID4gQ2M6IE1hdHQg
Um9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4gPiBDYzogTmFubGV5IEcgQ2hlcnkg
PG5hbmxleS5nLmNoZXJ5QGludGVsLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IFJhZGhha3Jpc2hu
YSBTcmlwYWRhIDxyYWRoYWtyaXNobmEuc3JpcGFkYUBpbnRlbC5jb20+Cj4gCj4gT25lIG1pbm9y
IHR5cG8gYW5kIG9uZSBkb2N1bWVudGF0aW9uIHN1Z2dlc3Rpb24sIGJ1dCBhc2lkZSBmcm9tIGZp
eGluZwo+IHRob3NlIHRoaXMgcGF0Y2ggbG9va3MgZ29vZCB0byBtZToKPiAKPiBSZXZpZXdlZC1i
eTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KPiAKVGhhbmtzIGZvciB0
aGUgcmV2aWV3Lgo+IFRoZSBwcmV2aW91cyBwYXRjaCB0aGF0IGFkZHMgdGhlIG1vZGlmaWVyIGxv
b2tzIGZpbmUgdG8gbWUgdG9vLCBidXQgSSBmaWd1cmUKPiB3ZSBzaG91bGQgbGVhdmUgaXQgdG8g
d2hvZXZlciBpcyB3b3JraW5nIG9uIHRoZSBjb3JyZXNwb25kaW5nIHVzZXJzcGFjZQo+IGNvZGUg
dG8gYWNrL3JiIHRoYXQgb25lLgo+IAo+IAo+IE1hdHQKPiAKPiAKPiA+IC0tLQo+ID4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8IDUyICsrKysrKysrKysr
KysrKysrKysKPiA+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgg
ICAgfCAgMyArKwo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRl
LmMgICB8IDExICsrKy0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAg
ICAgICAgICAgfCAxMiArKysrKwo+ID4gIDQgZmlsZXMgY2hhbmdlZCwgNzcgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYwo+ID4gaW5kZXggNDQ4MTY4YTRkNzgwLi44ODM1OTIwY2IwMDUg
MTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKPiA+IEBAIC0xOTE3LDYgKzE5MTcsMTAgQEAgaW50ZWxfdGlsZV93aWR0aF9ieXRlcyhjb25z
dCBzdHJ1Y3QKPiBkcm1fZnJhbWVidWZmZXIgKmZiLCBpbnQgY29sb3JfcGxhbmUpCj4gPiAgCQlp
ZiAoY29sb3JfcGxhbmUgPT0gMSkKPiA+ICAJCQlyZXR1cm4gNjQ7Cj4gPiAgCQkvKiBmYWxsIHRo
cm91Z2ggKi8KPiA+ICsJY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4xMl9SQ19DQ1Nf
Q0M6Cj4gPiArCQlpZiAoY29sb3JfcGxhbmUgPT0gMSB8fCBjb2xvcl9wbGFuZSA9PSAyKQo+ID4g
KwkJCXJldHVybiA2NDsKPiA+ICsJCS8qIGZhbGwgdGhyb3VnaCAqLwo+ID4gIAljYXNlIEk5MTVf
Rk9STUFUX01PRF9ZX1RJTEVEOgo+ID4gIAkJaWYgKElTX0dFTihkZXZfcHJpdiwgMikgfHwKPiBI
QVNfMTI4X0JZVEVfWV9USUxJTkcoZGV2X3ByaXYpKQo+ID4gIAkJCXJldHVybiAxMjg7Cj4gPiBA
QCAtMjA1OCw2ICsyMDYyLDcgQEAgc3RhdGljIHVuc2lnbmVkIGludCBpbnRlbF9zdXJmX2FsaWdu
bWVudChjb25zdAo+IHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiLAo+ID4gIAkJCXJldHVybiAy
NTYgKiAxMDI0Owo+ID4gIAkJcmV0dXJuIDA7Cj4gPiAgCWNhc2UgSTkxNV9GT1JNQVRfTU9EX1lf
VElMRURfR0VOMTJfUkNfQ0NTOgo+ID4gKwljYXNlIEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dF
TjEyX1JDX0NDU19DQzoKPiA+ICAJCXJldHVybiAxNiAqIDEwMjQ7Cj4gPiAgCWNhc2UgSTkxNV9G
T1JNQVRfTU9EX1lfVElMRURfQ0NTOgo+ID4gIAljYXNlIEk5MTVfRk9STUFUX01PRF9ZZl9USUxF
RF9DQ1M6Cj4gPiBAQCAtMjI2MCw2ICsyMjY1LDggQEAgc3RhdGljIGJvb2wgaXNfc3VyZmFjZV9s
aW5lYXIodTY0IG1vZGlmaWVyLCBpbnQKPiBjb2xvcl9wbGFuZSkKPiA+ICAJCXJldHVybiB0cnVl
Owo+ID4gIAljYXNlIEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dFTjEyX1JDX0NDUzoKPiA+ICAJ
CXJldHVybiBjb2xvcl9wbGFuZSA9PSAxOwo+ID4gKwljYXNlIEk5MTVfRk9STUFUX01PRF9ZX1RJ
TEVEX0dFTjEyX1JDX0NDU19DQzoKPiA+ICsJCXJldHVybiBjb2xvcl9wbGFuZSA9PSAxIHx8IGNv
bG9yX3BsYW5lID09IDI7Cj4gPiAgCWNhc2UgSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJf
TUNfQ0NTOgo+ID4gIAkJcmV0dXJuIGNvbG9yX3BsYW5lID09IDEgfHwgY29sb3JfcGxhbmUgPT0g
MzsKPiA+ICAJZGVmYXVsdDoKPiA+IEBAIC0yNDUzLDYgKzI0NjAsNyBAQCBzdGF0aWMgdW5zaWdu
ZWQgaW50Cj4gaW50ZWxfZmJfbW9kaWZpZXJfdG9fdGlsaW5nKHU2NCBmYl9tb2RpZmllcikKPiA+
ICAJY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9DQ1M6Cj4gPiAgCWNhc2UgSTkxNV9GT1JN
QVRfTU9EX1lfVElMRURfR0VOMTJfUkNfQ0NTOgo+ID4gIAljYXNlIEk5MTVfRk9STUFUX01PRF9Z
X1RJTEVEX0dFTjEyX01DX0NDUzoKPiA+ICsJY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9H
RU4xMl9SQ19DQ1NfQ0M6Cj4gPiAgCQlyZXR1cm4gSTkxNV9USUxJTkdfWTsKPiA+ICAJZGVmYXVs
dDoKPiA+ICAJCXJldHVybiBJOTE1X1RJTElOR19OT05FOwo+ID4gQEAgLTI1MDYsNiArMjUxNCwy
MSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9mb3JtYXRfaW5mbwo+IGdlbjEyX2Njc19mb3Jt
YXRzW10gPSB7Cj4gPiAgCSAgLmNwcCA9IHsgMSwgMSwgMiwgMX0sIC5oc3ViID0gMiwgLnZzdWIg
PSAyLCAuaXNfeXV2ID0gdHJ1ZSB9LCAgfTsKPiA+Cj4gPiArLyoKPiA+ICsgKiBTYW1lIGFzIGdl
bjEyX2Njc19mb3JtYXRzW10gYWJvdmUsIGJ1dCB3aXRoIGFkZGl0aW9uYWwgc3VyZmFjZQo+ID4g
K3VzZWQKPiA+ICsgKiB0b3AgcGFzcyBDbGVhciBDb2xvciBpbmZvcm1hdGlvbiBpbiBwbGFuZSAy
IHdpdGggNjQgYml0cyBvZiBkYXRhLgo+IAo+IHMvdG9wL3RvCk9vcHMgd2lsbCBmaXggaXQuCj4g
Cj4gPiArICovCj4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fZm9ybWF0X2luZm8gZ2VuMTJf
Y2NzX2NjX2Zvcm1hdHNbXSA9IHsKPiA+ICsJeyAuZm9ybWF0ID0gRFJNX0ZPUk1BVF9YUkdCODg4
OCwgLmRlcHRoID0gMjQsIC5udW1fcGxhbmVzID0gMywKPiA+ICsJICAuY3BwID0geyA0LCAxLCAw
LCB9LCAuaHN1YiA9IDIsIC52c3ViID0gMzIsIH0sCj4gPiArCXsgLmZvcm1hdCA9IERSTV9GT1JN
QVRfWEJHUjg4ODgsIC5kZXB0aCA9IDI0LCAubnVtX3BsYW5lcyA9IDMsCj4gPiArCSAgLmNwcCA9
IHsgNCwgMSwgMCwgfSwgLmhzdWIgPSAyLCAudnN1YiA9IDMyLCB9LAo+ID4gKwl7IC5mb3JtYXQg
PSBEUk1fRk9STUFUX0FSR0I4ODg4LCAuZGVwdGggPSAzMiwgLm51bV9wbGFuZXMgPSAzLAo+ID4g
KwkgIC5jcHAgPSB7IDQsIDEsIDAsIH0sIC5oc3ViID0gMiwgLnZzdWIgPSAzMiwgLmhhc19hbHBo
YSA9IHRydWUgfSwKPiA+ICsJeyAuZm9ybWF0ID0gRFJNX0ZPUk1BVF9BQkdSODg4OCwgLmRlcHRo
ID0gMzIsIC5udW1fcGxhbmVzID0gMywKPiA+ICsJICAuY3BwID0geyA0LCAxLCAwLCB9LCAuaHN1
YiA9IDIsIC52c3ViID0gMzIsIC5oYXNfYWxwaGEgPSB0cnVlIH0sCj4gPiArfTsKPiA+ICsKPiA+
ICBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9mb3JtYXRfaW5mbyAqICBsb29rdXBfZm9ybWF0X2lu
Zm8oY29uc3QKPiA+IHN0cnVjdCBkcm1fZm9ybWF0X2luZm8gZm9ybWF0c1tdLAo+ID4gIAkJICAg
aW50IG51bV9mb3JtYXRzLCB1MzIgZm9ybWF0KQo+ID4gQEAgLTI1MzMsNiArMjU1NiwxMCBAQCBp
bnRlbF9nZXRfZm9ybWF0X2luZm8oY29uc3Qgc3RydWN0Cj4gZHJtX21vZGVfZmJfY21kMiAqY21k
KQo+ID4gIAkJcmV0dXJuIGxvb2t1cF9mb3JtYXRfaW5mbyhnZW4xMl9jY3NfZm9ybWF0cywKPiA+
ICAJCQkJCSAgQVJSQVlfU0laRShnZW4xMl9jY3NfZm9ybWF0cyksCj4gPiAgCQkJCQkgIGNtZC0+
cGl4ZWxfZm9ybWF0KTsKPiA+ICsJY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4xMl9S
Q19DQ1NfQ0M6Cj4gPiArCQlyZXR1cm4gbG9va3VwX2Zvcm1hdF9pbmZvKGdlbjEyX2Njc19jY19m
b3JtYXRzLAo+ID4gKwkJCQkJICBBUlJBWV9TSVpFKGdlbjEyX2Njc19jY19mb3JtYXRzKSwKPiA+
ICsJCQkJCSAgY21kLT5waXhlbF9mb3JtYXQpOwo+ID4gIAlkZWZhdWx0Ogo+ID4gIAkJcmV0dXJu
IE5VTEw7Cj4gPiAgCX0KPiA+IEBAIC0yNTQyLDYgKzI1NjksNyBAQCBib29sIGlzX2Njc19tb2Rp
Zmllcih1NjQgbW9kaWZpZXIpICB7Cj4gPiAgCXJldHVybiBtb2RpZmllciA9PSBJOTE1X0ZPUk1B
VF9NT0RfWV9USUxFRF9HRU4xMl9SQ19DQ1MgfHwKPiA+ICAJICAgICAgIG1vZGlmaWVyID09IEk5
MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dFTjEyX01DX0NDUyB8fAo+ID4gKwkgICAgICAgbW9kaWZp
ZXIgPT0gSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfUkNfQ0NTX0NDIHx8Cj4gPiAgCSAg
ICAgICBtb2RpZmllciA9PSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9DQ1MgfHwKPiA+ICAJICAg
ICAgIG1vZGlmaWVyID09IEk5MTVfRk9STUFUX01PRF9ZZl9USUxFRF9DQ1M7ICB9IEBAIC0yNzI5
LDYKPiA+ICsyNzU3LDggQEAgc3RhdGljIGJvb2wgaXNfY2NzX3BsYW5lKHU2NCBtb2RpZmllciwg
aW50IGNvbG9yX3BsYW5lKQo+ID4gIAkJcmV0dXJuIGZhbHNlOwo+ID4gIAllbHNlIGlmIChtb2Rp
ZmllciA9PSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4xMl9NQ19DQ1MpCj4gPiAgCQlyZXR1
cm4gY29sb3JfcGxhbmUgPT0gMyB8fCBjb2xvcl9wbGFuZSA9PSAxOwo+ID4gKwllbHNlIGlmICht
b2RpZmllciA9PQo+IEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dFTjEyX1JDX0NDU19DQykKPiA+
ICsJCXJldHVybiBjb2xvcl9wbGFuZSA9PSAxIHx8IGNvbG9yX3BsYW5lID09IDI7Cj4gPiAgCWVs
c2UKPiA+ICAJCXJldHVybiBjb2xvcl9wbGFuZSA9PSAxOwo+ID4gIH0KPiA+IEBAIC0yNzk3LDYg
KzI4MjcsMTggQEAgaW50ZWxfZmlsbF9mYl9pbmZvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlCj4g
KmRldl9wcml2LAo+ID4gIAkJaW50IHgsIHk7Cj4gPiAgCQlpbnQgcmV0Owo+ID4KPiA+ICsJCS8q
Cj4gPiArCQkgKiBQbGFuZSAyIG9mIFJlbmRlciBDb21wcmVzc2lvbiB3aXRoIENsZWFyIENvbG9y
IGZiCj4gbW9kaWZpZXIgaXMgY29uc3VtZWQKPiA+ICsJCSAqIGJ5IHRoZSBkcml2ZXIgYW5kIG5v
dCBwYXNzZWQgdG8gREUuIFNraXAgdGhlIGFyaXRobWV0aWMKPiByZWxhdGVkCj4gPiArdG8KPiAK
PiBUaGVzZSBjb21tZW50IGxpbmVzIGFyZSA+ODAgY2hhcmFjdGVycyBhbmQgc2hvdWxkIGJlIHJl
LXdyYXBwZWQuCj4gCj4gPiArCQkgKiBhbGlnbm1lbnQgYW5kIG9mZnNldCBjYWxjdWxhdGlvbi4K
PiA+ICsJCSAqLwo+ID4gKwkJaWYgKGkgPT0gMiAmJiBmYi0+bW9kaWZpZXIgPT0KPiBJOTE1X0ZP
Uk1BVF9NT0RfWV9USUxFRF9HRU4xMl9SQ19DQ1NfQ0MpIHsKPiA+ICsJCQlpZiAoSVNfQUxJR05F
RChmYi0+b2Zmc2V0c1syXSwgUEFHRV9TSVpFKSkKPiA+ICsJCQkJY29udGludWU7Cj4gPiArCQkJ
ZWxzZQo+ID4gKwkJCQlyZXR1cm4gLUVJTlZBTDsKPiA+ICsJCX0KPiA+ICsKPiA+ICAJCWNwcCA9
IGZiLT5mb3JtYXQtPmNwcFtpXTsKPiA+ICAJCWludGVsX2ZiX3BsYW5lX2RpbXMoJndpZHRoLCAm
aGVpZ2h0LCBmYiwgaSk7Cj4gPgo+ID4gQEAgLTQyNjMsNiArNDMwNSw3IEBAIHN0YXRpYyB1MzIg
c2tsX3BsYW5lX2N0bF90aWxpbmcodTY0IGZiX21vZGlmaWVyKQo+ID4gIAljYXNlIEk5MTVfRk9S
TUFUX01PRF9ZX1RJTEVEOgo+ID4gIAkJcmV0dXJuIFBMQU5FX0NUTF9USUxFRF9ZOwo+ID4gIAlj
YXNlIEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0NDUzoKPiA+ICsJY2FzZSBJOTE1X0ZPUk1BVF9N
T0RfWV9USUxFRF9HRU4xMl9SQ19DQ1NfQ0M6Cj4gPiAgCQlyZXR1cm4gUExBTkVfQ1RMX1RJTEVE
X1kgfAo+IFBMQU5FX0NUTF9SRU5ERVJfREVDT01QUkVTU0lPTl9FTkFCTEU7Cj4gPiAgCWNhc2Ug
STkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfUkNfQ0NTOgo+ID4gIAkJcmV0dXJuIFBMQU5F
X0NUTF9USUxFRF9ZIHwKPiA+IEBAIC0xNDU4Niw2ICsxNDYyOSwxNSBAQCBzdGF0aWMgaW50IGlu
dGVsX3BsYW5lX3Bpbl9mYihzdHJ1Y3QKPiA+IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0
ZSkKPiA+Cj4gPiAgCXBsYW5lX3N0YXRlLT52bWEgPSB2bWE7Cj4gPgo+ID4gKwlpZiAoZmItPm1v
ZGlmaWVyID09Cj4gSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfUkNfQ0NTX0NDKSB7Cj4g
PiArCQl1MzIgKmNjYWRkciA9Cj4ga21hcF9hdG9taWMoaTkxNV9nZW1fb2JqZWN0X2dldF9wYWdl
KGludGVsX2ZiX29iaihmYiksCj4gPiArCQkJCQkJCQkgIGZiLQo+ID5vZmZzZXRzWzJdID4+IFBB
R0VfU0hJRlQpKTsKPiA+ICsKPiA+ICsJCXBsYW5lX3N0YXRlLT5jY3ZhbCA9ICgodTY0KSooY2Nh
ZGRyICsKPiBDQ19WQUxfSElHSEVSX09GRlNFVCkgPDwgMzIpCj4gPiArCQkJCSAgICAgfCAqKGNj
YWRkciArIENDX1ZBTF9MT1dFUl9PRkZTRVQpOwo+IAo+IEkgdGhpbmsgaXQgd291bGQgYmUgZ29v
ZCB0byBkb2N1bWVudCB3aGF0IHRoZSBleHBlY3RlZCBmb3JtYXQgaXMsIGVpdGhlcgo+IHRocm91
Z2ggY29tbWVudHMgYW5kL29yIHRocm91Z2ggYSBzdHJ1Y3R1cmUgZGVmaW5pdGlvbiB0aGF0IGRl
c2NyaWJlcyB0aGUKPiBleGFjdCBsYXlvdXQuICBBcyB5b3UgbWVudGlvbmVkIGJlZm9yZSwgc29t
ZSBvZiB0aGUgYnl0ZXMgcHJvdmlkZWQgYnkgdGhlCj4gcmVuZGVyIGVuZ2luZSBhcmVuJ3QgdXNl
ZCBieSB0aGUgZGlzcGxheSBlbmdpbmUsIHNvIGEgbW9yZSBmb3JtYWwKPiBkZXNjcmlwdGlvbiBv
ZiB0aGUgbGF5b3V0IHdvdWxkIG1ha2UgdGhpcyBlYXNpZXIgdG8gdW5kZXJzdGFuZC4KRG9jdW1l
bnRpbmcgdGhpcyBpbiB0aGUgcHJldmlvdXMgcGF0Y2ggd291bGQgYmUgdGhlIHJpZ2h0IHBsYWNl
LiBTbyB0aGF0ClRoZSBkZXNjcmlwdGlvbiBvZiB0aGUgQ29sb3IgZm9ybWF0IGlzIGF2YWlsYWJs
ZSBhdCB0aGUgbW9kaWZpZXIgZGVjbGFyYXRpb24uCgpUaGFua3MsClJhZGhha3Jpc2huYShSSykg
U3JpcGFkYQo+IAo+ID4gKwkJa3VubWFwX2F0b21pYyhjY2FkZHIpOwo+ID4gKwl9Cj4gPiArCj4g
PiAgCXJldHVybiAwOwo+ID4gIH0KPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKPiA+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKPiA+IGluZGV4IDkxMjQxZjJiYzU3
NS4uMjEzODk5ZTIwMmEzIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCj4gPiBAQCAtNTc5LDYgKzU3OSw5IEBAIHN0
cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSB7Cj4gPiAgCXUzMiBwbGFuYXJfc2xhdmU7Cj4gPgo+ID4g
IAlzdHJ1Y3QgZHJtX2ludGVsX3Nwcml0ZV9jb2xvcmtleSBja2V5Owo+ID4gKwo+ID4gKwkvKiBD
bGVhciBDb2xvciBWYWx1ZSAqLwo+ID4gKwl1NjQgY2N2YWw7Cj4gPiAgfTsKPiA+Cj4gPiAgc3Ry
dWN0IGludGVsX2luaXRpYWxfcGxhbmVfY29uZmlnIHsKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCj4gPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKPiA+IGluZGV4IGZkYjlkY2M0MDYwYy4uYmFm
MTM1MTkxMGNhIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9zcHJpdGUuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9zcHJpdGUuYwo+ID4gQEAgLTU0OSw2ICs1NDksNyBAQCBza2xfcHJvZ3JhbV9wbGFuZShzdHJ1
Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAo+ID4gIAl1MzIgcGxhbmVfY29sb3JfY3RsID0gMDsKPiA+
ICAJdW5zaWduZWQgbG9uZyBpcnFmbGFnczsKPiA+ICAJdTMyIGtleW1zaywga2V5bWF4Owo+ID4g
Kwl1NjQgY2N2YWwgPSBwbGFuZV9zdGF0ZS0+Y2N2YWw7Cj4gPgo+ID4gIAlwbGFuZV9jdGwgfD0g
c2tsX3BsYW5lX2N0bF9jcnRjKGNydGNfc3RhdGUpOwo+ID4KPiA+IEBAIC02MDksNiArNjEwLDEw
IEBAIHNrbF9wcm9ncmFtX3BsYW5lKHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsCj4gPiAgCWlm
IChmYi0+Zm9ybWF0LT5pc195dXYgJiYgaWNsX2lzX2hkcl9wbGFuZShkZXZfcHJpdiwgcGxhbmVf
aWQpKQo+ID4gIAkJaWNsX3Byb2dyYW1faW5wdXRfY3NjKHBsYW5lLCBjcnRjX3N0YXRlLCBwbGFu
ZV9zdGF0ZSk7Cj4gPgo+ID4gKwlpZiAoZmItPm1vZGlmaWVyID09Cj4gSTkxNV9GT1JNQVRfTU9E
X1lfVElMRURfR0VOMTJfUkNfQ0NTX0NDKQo+ID4gKwkJaW50ZWxfdW5jb3JlX3dyaXRlNjRfZnco
JmRldl9wcml2LT51bmNvcmUsCj4gPiArCQkJCQlQTEFORV9DQ19WQUwocGlwZSwgcGxhbmVfaWQp
LAo+IGNjdmFsKTsKPiA+ICsKPiA+ICAJc2tsX3dyaXRlX3BsYW5lX3dtKHBsYW5lLCBjcnRjX3N0
YXRlKTsKPiA+Cj4gPiAgCUk5MTVfV1JJVEVfRlcoUExBTkVfS0VZVkFMKHBpcGUsIHBsYW5lX2lk
KSwga2V5LT5taW5fdmFsdWUpOwo+IEBACj4gPiAtMTczOSw3ICsxNzQ0LDggQEAgc3RhdGljIGlu
dCBza2xfcGxhbmVfY2hlY2tfZmIoY29uc3Qgc3RydWN0Cj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSwKPiA+ICAJICAgICBmYi0+bW9kaWZpZXIgPT0gSTkxNV9GT1JNQVRfTU9EX1lfVElM
RURfQ0NTIHx8Cj4gPiAgCSAgICAgZmItPm1vZGlmaWVyID09IEk5MTVfRk9STUFUX01PRF9ZZl9U
SUxFRF9DQ1MgfHwKPiA+ICAJICAgICBmYi0+bW9kaWZpZXIgPT0gSTkxNV9GT1JNQVRfTU9EX1lf
VElMRURfR0VOMTJfUkNfQ0NTIHx8Cj4gPiAtCSAgICAgZmItPm1vZGlmaWVyID09IEk5MTVfRk9S
TUFUX01PRF9ZX1RJTEVEX0dFTjEyX01DX0NDUykpIHsKPiA+ICsJICAgICBmYi0+bW9kaWZpZXIg
PT0gSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfTUNfQ0NTIHx8Cj4gPiArCSAgICAgZmIt
Pm1vZGlmaWVyID09Cj4gSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfUkNfQ0NTX0NDKSkg
ewo+ID4gIAkJRFJNX0RFQlVHX0tNUygiWS9ZZiB0aWxpbmcgbm90IHN1cHBvcnRlZCBpbiBJRi1J
RAo+IG1vZGVcbiIpOwo+ID4gIAkJcmV0dXJuIC1FSU5WQUw7Cj4gPiAgCX0KPiA+IEBAIC0yMTU0
LDYgKzIxNjAsNyBAQCBzdGF0aWMgY29uc3QgdTY0Cj4gPiBza2xfcGxhbmVfZm9ybWF0X21vZGlm
aWVyc19jY3NbXSA9IHsgIHN0YXRpYyBjb25zdCB1NjQKPiBnZW4xMl9wbGFuZV9mb3JtYXRfbW9k
aWZpZXJzX21jX2Njc1tdID0gewo+ID4gIAlJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4xMl9N
Q19DQ1MsCj4gPiAgCUk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dFTjEyX1JDX0NDUywKPiA+ICsJ
STkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfUkNfQ0NTX0NDLAo+ID4gIAlJOTE1X0ZPUk1B
VF9NT0RfWV9USUxFRCwKPiA+ICAJSTkxNV9GT1JNQVRfTU9EX1hfVElMRUQsCj4gPiAgCURSTV9G
T1JNQVRfTU9EX0xJTkVBUiwKPiA+IEBAIC0yMTYyLDYgKzIxNjksNyBAQCBzdGF0aWMgY29uc3Qg
dTY0Cj4gPiBnZW4xMl9wbGFuZV9mb3JtYXRfbW9kaWZpZXJzX21jX2Njc1tdID0gewo+ID4KPiA+
ICBzdGF0aWMgY29uc3QgdTY0IGdlbjEyX3BsYW5lX2Zvcm1hdF9tb2RpZmllcnNfcmNfY2NzW10g
PSB7Cj4gPiAgCUk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dFTjEyX1JDX0NDUywKPiA+ICsJSTkx
NV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfUkNfQ0NTX0NDLAo+ID4gIAlJOTE1X0ZPUk1BVF9N
T0RfWV9USUxFRCwKPiA+ICAJSTkxNV9GT1JNQVRfTU9EX1hfVElMRUQsCj4gPiAgCURSTV9GT1JN
QVRfTU9EX0xJTkVBUiwKPiA+IEBAIC0yMzM1LDYgKzIzNDMsNyBAQCBzdGF0aWMgYm9vbAo+IGdl
bjEyX3BsYW5lX2Zvcm1hdF9tb2Rfc3VwcG9ydGVkKHN0cnVjdCBkcm1fcGxhbmUgKl9wbGFuZSwK
PiA+ICAJY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWF9USUxFRDoKPiA+ICAJY2FzZSBJOTE1X0ZPUk1B
VF9NT0RfWV9USUxFRDoKPiA+ICAJY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4xMl9S
Q19DQ1M6Cj4gPiArCWNhc2UgSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfUkNfQ0NTX0ND
Ogo+ID4gIAkJYnJlYWs7Cj4gPiAgCWRlZmF1bHQ6Cj4gPiAgCQlyZXR1cm4gZmFsc2U7Cj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+ID4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGluZGV4IDVmYWQ5Y2IzNTk3OS4uZDg4ODNhZDk5YTY3
Cj4gPiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiA+IEBAIC02NzQzLDYgKzY3
NDMsOCBAQCBlbnVtIHsKPiA+ICAjZGVmaW5lIF9QTEFORV9LRVlNQVhfMV9BCQkJMHg3MDFhMAo+
ID4gICNkZWZpbmUgX1BMQU5FX0tFWU1BWF8yX0EJCQkweDcwMmEwCj4gPiAgI2RlZmluZSAgUExB
TkVfS0VZTUFYX0FMUEhBKGEpCQkJKChhKSA8PCAyNCkKPiA+ICsjZGVmaW5lIF9QTEFORV9DQ19W
QUxfMV9BCQkJMHg3MDFiNAo+ID4gKyNkZWZpbmUgX1BMQU5FX0NDX1ZBTF8yX0EJCQkweDcwMmI0
Cj4gPiAgI2RlZmluZSBfUExBTkVfQVVYX0RJU1RfMV9BCQkJMHg3MDFjMAo+ID4gICNkZWZpbmUg
X1BMQU5FX0FVWF9ESVNUXzJfQQkJCTB4NzAyYzAKPiA+ICAjZGVmaW5lIF9QTEFORV9BVVhfT0ZG
U0VUXzFfQQkJCTB4NzAxYzQKPiA+IEBAIC02NzgyLDYgKzY3ODQsMTYgQEAgZW51bSB7Cj4gPiAg
I2RlZmluZSBfUExBTkVfTlYxMl9CVUZfQ0ZHXzFfQQkJMHg3MDI3OAo+ID4gICNkZWZpbmUgX1BM
QU5FX05WMTJfQlVGX0NGR18yX0EJCTB4NzAzNzgKPiA+Cj4gPiArI2RlZmluZSBfUExBTkVfQ0Nf
VkFMXzFfQgkJCTB4NzExYjQKPiA+ICsjZGVmaW5lIF9QTEFORV9DQ19WQUxfMl9CCQkJMHg3MTJi
NAo+ID4gKyNkZWZpbmUgX1BMQU5FX0NDX1ZBTF8xKHBpcGUpCV9QSVBFKHBpcGUsIF9QTEFORV9D
Q19WQUxfMV9BLAo+IF9QTEFORV9DQ19WQUxfMV9CKQo+ID4gKyNkZWZpbmUgX1BMQU5FX0NDX1ZB
TF8yKHBpcGUpCV9QSVBFKHBpcGUsIF9QTEFORV9DQ19WQUxfMl9BLAo+IF9QTEFORV9DQ19WQUxf
Ml9CKQo+ID4gKyNkZWZpbmUgUExBTkVfQ0NfVkFMKHBpcGUsIHBsYW5lKQlcCj4gPiArCV9NTUlP
X1BMQU5FKHBsYW5lLCBfUExBTkVfQ0NfVkFMXzEocGlwZSksCj4gX1BMQU5FX0NDX1ZBTF8yKHBp
cGUpKQo+ID4gKwo+ID4gKyNkZWZpbmUgQ0NfVkFMX0xPV0VSX09GRlNFVAkJNAo+ID4gKyNkZWZp
bmUgQ0NfVkFMX0hJR0hFUl9PRkZTRVQJCTUKPiA+ICsKPiA+ICAvKiBJbnB1dCBDU0MgUmVnaXN0
ZXIgRGVmaW5pdGlvbnMgKi8KPiA+ICAjZGVmaW5lIF9QTEFORV9JTlBVVF9DU0NfUllfR1lfMV9B
CTB4NzAxRTAKPiA+ICAjZGVmaW5lIF9QTEFORV9JTlBVVF9DU0NfUllfR1lfMl9BCTB4NzAyRTAK
PiA+IC0tCj4gPiAyLjIwLjEKPiA+Cj4gCj4gLS0KPiBNYXR0IFJvcGVyCj4gR3JhcGhpY3MgU29m
dHdhcmUgRW5naW5lZXIKPiBWVFQtT1NHQyBQbGF0Zm9ybSBFbmFibGVtZW50Cj4gSW50ZWwgQ29y
cG9yYXRpb24KPiAoOTE2KSAzNTYtMjc5NQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
