Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46929D03FB
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 01:18:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11CFB6E8AC;
	Tue,  8 Oct 2019 23:18:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F03236E8AC
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2019 23:18:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Oct 2019 16:18:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,273,1566889200"; d="scan'208";a="205570621"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by orsmga002.jf.intel.com with ESMTP; 08 Oct 2019 16:18:11 -0700
Received: from orsmsx112.amr.corp.intel.com (10.22.240.13) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 8 Oct 2019 16:18:10 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.212]) by
 ORSMSX112.amr.corp.intel.com ([169.254.3.161]) with mapi id 14.03.0439.000;
 Tue, 8 Oct 2019 16:18:10 -0700
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [PATCH v3 11/11] drm/i915/tgl: Add Clear Color supoort for TGL
 Render Decompression
Thread-Index: AQHVdYKvdjY6U8euS0+YnSGRCk83VadLp/OAgAXH2FA=
Date: Tue, 8 Oct 2019 23:18:10 +0000
Message-ID: <8C2593290C2B3E488D763E819AF1F02E15F81E36@ORSMSX101.amr.corp.intel.com>
References: <20190924000328.29571-12-radhakrishna.sripada@intel.com>
 <20190927222837.15758-1-radhakrishna.sripada@intel.com>
 <20191004235243.GZ1869@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20191004235243.GZ1869@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYTE4MDY1OGQtZjk2ZS00MDI2LTk5NTUtODRmYzJiZWQxODliIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiaWJQbUcrbU5aV3V1USsxbHEwQVwvVG4xNkY4YWxHTzluXC9iNFJMRkFtTzRDV2N5eGdNMWZzYjNzOUhNdnZrMlN1In0=
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 11/11] drm/i915/tgl: Add Clear Color
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
dGhldyBECj4gU2VudDogRnJpZGF5LCBPY3RvYmVyIDQsIDIwMTkgNDo1MyBQTQo+IFRvOiBTcmlw
YWRhLCBSYWRoYWtyaXNobmEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT4KPiBDYzog
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgUGFuZGl5YW4sIERoaW5ha2FyYW4KPiA8
ZGhpbmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+OyBTeXJqYWxhLCBWaWxsZSA8dmlsbGUuc3ly
amFsYUBpbnRlbC5jb20+Owo+IFNoYXJtYSwgU2hhc2hhbmsgPHNoYXNoYW5rLnNoYXJtYUBpbnRl
bC5jb20+OyBBbnRvZ25vbGxpLCBSYWZhZWwKPiA8cmFmYWVsLmFudG9nbm9sbGlAaW50ZWwuY29t
PjsgQ2hlcnksIE5hbmxleSBHIDxuYW5sZXkuZy5jaGVyeUBpbnRlbC5jb20+Cj4gU3ViamVjdDog
UmU6IFtQQVRDSCB2MyAxMS8xMV0gZHJtL2k5MTUvdGdsOiBBZGQgQ2xlYXIgQ29sb3Igc3Vwb29y
dCBmb3IgVEdMCj4gUmVuZGVyIERlY29tcHJlc3Npb24KPiAKPiBPbiBGcmksIFNlcCAyNywgMjAx
OSBhdCAwMzoyODozN1BNIC0wNzAwLCBSYWRoYWtyaXNobmEgU3JpcGFkYSB3cm90ZToKPiA+IFJl
bmRlciBEZWNvbXByZXNzaW9uIGlzIHN1cHBvcnRlZCB3aXRoIFktVGlsZWQgbWFpbiBzdXJmYWNl
LiBUaGUgQ0NTCj4gPiBpcyBsaW5lYXIgYW5kIGhhcyA0IGJpdHMgb2YgZGF0YSBmb3IgZWFjaCBt
YWluIHN1cmZhY2UgY2FjaGUgbGluZQo+ID4gcGFpciwgYSByYXRpbyBvZiAxOjI1Ni4gQWRkaXRp
b25hbCBDbGVhciBDb2xvciBpbmZvcm1hdGlvbiBpcyBwYXNzZWQKPiA+IGZyb20gdGhlIHVzZXIt
c3BhY2UgdGhyb3VnaCBhbiBvZmZzZXQgaW4gdGhlIEdFTSBCTy4gQWRkIGEgbmV3Cj4gPiBtb2Rp
ZmllciB0byBpZGVudGlmeSBhbmQgcGFyc2UgbmV3IENsZWFyIENvbG9yIGluZm9ybWF0aW9uIGFu
ZCBleHRlbmQKPiA+IEdlbjEyIHJlbmRlciBkZWNvbXByZXNzaW9uIGZ1bmN0aW9uYWxpdHkgdG8g
dGhlIG5ld2x5IGFkZGVkIG1vZGlmaWVyLgo+ID4KPiA+IHYyOiBGaXggaGFzX2FscGhhIGZsYWcg
Zm9yIG1vZGlmaWVycywgb21pdCBDQyBtb2RpZmllciBkdXJpbmcgaW5pdGlhbAo+ID4gICAgIHBs
YW5lIGNvbmZpZyhNYXR0KS4gRml4IExvb2t1cCBlcnJvci4KPiA+IHYzOiBGaXggdGhlIHBhbmlj
IHdoaWxlIHJ1bm5pbmcga21zX2N1YmUKPiA+Cj4gPiBDYzogRGhpbmFrYXJhbiBQYW5kaXlhbiA8
ZGhpbmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+Cj4gPiBDYzogVmlsbGUgU3lyamFsYSA8dmls
bGUuc3lyamFsYUBpbnRlbC5jb20+Cj4gPiBDYzogU2hhc2hhbmsgU2hhcm1hIDxzaGFzaGFuay5z
aGFybWFAaW50ZWwuY29tPgo+ID4gQ2M6IFJhZmFlbCBBbnRvZ25vbGxpIDxyYWZhZWwuYW50b2du
b2xsaUBpbnRlbC5jb20+Cj4gPiBDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVs
LmNvbT4KPiA+IENjOiBOYW5sZXkgRyBDaGVyeSA8bmFubGV5LmcuY2hlcnlAaW50ZWwuY29tPgo+
ID4gU2lnbmVkLW9mZi1ieTogUmFkaGFrcmlzaG5hIFNyaXBhZGEgPHJhZGhha3Jpc2huYS5zcmlw
YWRhQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jICB8IDUyICsrKysrKysrKysrKysrKysrKysKPiA+ICAuLi4vZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgMyArKwo+ID4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgICB8IDExICsrKy0KPiA+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICAgfCAxMiArKysrKwo+ID4g
IDQgZmlsZXMgY2hhbmdlZCwgNzcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4KPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
Ywo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ID4g
aW5kZXggNDk3MWMyOTZmOTUxLi44MjIyMzdlOThmMDAgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiA+IEBAIC0xOTE5LDYgKzE5MTks
MTAgQEAgaW50ZWxfdGlsZV93aWR0aF9ieXRlcyhjb25zdCBzdHJ1Y3QKPiBkcm1fZnJhbWVidWZm
ZXIgKmZiLCBpbnQgY29sb3JfcGxhbmUpCj4gPiAgCQlpZiAoY29sb3JfcGxhbmUgPT0gMSkKPiA+
ICAJCQlyZXR1cm4gNjQ7Cj4gPiAgCQkvKiBmYWxsIHRocm91Z2ggKi8KPiA+ICsJY2FzZSBJOTE1
X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4xMl9SQ19DQ1NfQ0M6Cj4gPiArCQlpZiAoY29sb3JfcGxh
bmUgPT0gMSB8fCBjb2xvcl9wbGFuZSA9PSAyKQo+ID4gKwkJCXJldHVybiA2NDsKPiA+ICsJCS8q
IGZhbGwgdGhyb3VnaCAqLwo+ID4gIAljYXNlIEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEOgo+ID4g
IAkJaWYgKElTX0dFTihkZXZfcHJpdiwgMikgfHwKPiBIQVNfMTI4X0JZVEVfWV9USUxJTkcoZGV2
X3ByaXYpKQo+ID4gIAkJCXJldHVybiAxMjg7Cj4gPiBAQCAtMjA2MCw2ICsyMDY0LDcgQEAgc3Rh
dGljIHVuc2lnbmVkIGludCBpbnRlbF9zdXJmX2FsaWdubWVudChjb25zdAo+IHN0cnVjdCBkcm1f
ZnJhbWVidWZmZXIgKmZiLAo+ID4gIAkJCXJldHVybiAyNTYgKiAxMDI0Owo+ID4gIAkJcmV0dXJu
IDA7Cj4gPiAgCWNhc2UgSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfUkNfQ0NTOgo+ID4g
KwljYXNlIEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dFTjEyX1JDX0NDU19DQzoKPiA+ICAJCXJl
dHVybiAxNiAqIDEwMjQ7Cj4gPiAgCWNhc2UgSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfQ0NTOgo+
ID4gIAljYXNlIEk5MTVfRk9STUFUX01PRF9ZZl9USUxFRF9DQ1M6Cj4gPiBAQCAtMjI2NSw2ICsy
MjcwLDggQEAgc3RhdGljIGJvb2wgaXNfc3VyZmFjZV9saW5lYXIodTY0IG1vZGlmaWVyLCBpbnQK
PiBjb2xvcl9wbGFuZSkKPiA+ICAJCXJldHVybiB0cnVlOwo+ID4gIAljYXNlIEk5MTVfRk9STUFU
X01PRF9ZX1RJTEVEX0dFTjEyX1JDX0NDUzoKPiA+ICAJCXJldHVybiBjb2xvcl9wbGFuZSA9PSAx
Owo+ID4gKwljYXNlIEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dFTjEyX1JDX0NDU19DQzoKPiA+
ICsJCXJldHVybiBjb2xvcl9wbGFuZSA9PSAxIHx8IGNvbG9yX3BsYW5lID09IDI7Cj4gPiAgCWNh
c2UgSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfTUNfQ0NTOgo+ID4gIAkJcmV0dXJuIGNv
bG9yX3BsYW5lID09IDEgfHwgY29sb3JfcGxhbmUgPT0gMzsKPiA+ICAJZGVmYXVsdDoKPiA+IEBA
IC0yNDU4LDYgKzI0NjUsNyBAQCBzdGF0aWMgdW5zaWduZWQgaW50Cj4gaW50ZWxfZmJfbW9kaWZp
ZXJfdG9fdGlsaW5nKHU2NCBmYl9tb2RpZmllcikKPiA+ICAJY2FzZSBJOTE1X0ZPUk1BVF9NT0Rf
WV9USUxFRF9DQ1M6Cj4gPiAgCWNhc2UgSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfUkNf
Q0NTOgo+ID4gIAljYXNlIEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dFTjEyX01DX0NDUzoKPiA+
ICsJY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4xMl9SQ19DQ1NfQ0M6Cj4gPiAgCQly
ZXR1cm4gSTkxNV9USUxJTkdfWTsKPiA+ICAJZGVmYXVsdDoKPiA+ICAJCXJldHVybiBJOTE1X1RJ
TElOR19OT05FOwo+ID4gQEAgLTI1MTEsNiArMjUxOSwyNSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0
IGRybV9mb3JtYXRfaW5mbwo+IGdlbjEyX2Njc19mb3JtYXRzW10gPSB7Cj4gPiAgCSAgLmNwcCA9
IHsgMSwgMSwgMiwgMX0sIC5oc3ViID0gMiwgLnZzdWIgPSAyLCAuaXNfeXV2ID0gdHJ1ZSB9LCAg
fTsKPiA+Cj4gPiArLyoKPiA+ICsgKiBHZW4tMTIgY29tcHJlc3Npb24gdXNlcyA0IGJpdHMgb2Yg
Q0NTIGRhdGEgZm9yIGVhY2ggY2FjaGUgbGluZQo+ID4gK3BhaXIgaW4gdGhlCj4gPiArICogbWFp
biBzdXJmYWNlLiBBbmQgZWFjaCA2NEIgQ0NTIGNhY2hlIGxpbmUgcmVwcmVzZW50cyBhbiBhcmVh
IG9mCj4gPiArNHgxIFktdGlsZXMKPiA+ICsgKiBpbiB0aGUgbWFpbiBzdXJmYWNlLiBXaXRoIDQg
Ynl0ZSBwaXhlbHMgYW5kIGVhY2ggWS10aWxlIGhhdmluZwo+ID4gK2RpbWVuc2lvbnMgb2YKPiA+
ICsgKiAzMngzMiBwaXhlbHMsIHRoZSByYXRpbyB0dXJucyBvdXQgdG8gMUIgaW4gdGhlIENDUyBm
b3IgZXZlcnkgMiB4Cj4gPiArMzIgcGl4ZWxzIGluCj4gPiArICogdGhlIG1haW4gc3VyZmFjZS4g
QWRkaXRpb25hbCBzdXJmYWNlIGlzIHVzZWQgdG8gcGFzcyB0aGUgQ2xlYXIKPiA+ICtDb2xvcgo+
ID4gKyAqIHN0cnVjdHVyZSBmb3IgdGhlIGRyaXZlciB0byBwcm9ncmFtIHRoZSBERS4KPiA+ICsg
Ki8KPiAKPiBSYXRoZXIgdGhhbiBkdXBsaWNhdGluZyB0aGUgcHJldmlvdXMgY29tbWVudCdzIHRl
eHQgSSdkIGp1c3Qgc2F5Cj4gCj4gIlNhbWUgYXMgZ2VuMTJfY2NzX2Zvcm1hdHNbXSBhYm92ZSwg
YnV0IHdpdGggYW4gYWRkaXRpb25hbCBzdXJmYWNlIHVzZWQgdG8KPiBwYXNzLi4uIgpTdXJlIHdp
bGwgdXBkYXRlIHRoYXQgaW4gdGhlIG5leHQgcmV2Lgo+IAo+ID4gK3N0YXRpYyBjb25zdCBzdHJ1
Y3QgZHJtX2Zvcm1hdF9pbmZvIGdlbjEyX2Njc19jY19mb3JtYXRzW10gPSB7Cj4gPiArCXsgLmZv
cm1hdCA9IERSTV9GT1JNQVRfWFJHQjg4ODgsIC5kZXB0aCA9IDI0LCAubnVtX3BsYW5lcyA9IDMs
Cj4gPiArCSAgLmNwcCA9IHsgNCwgMSwgMCwgfSwgLmhzdWIgPSAyLCAudnN1YiA9IDMyLCB9LAo+
ID4gKwl7IC5mb3JtYXQgPSBEUk1fRk9STUFUX1hCR1I4ODg4LCAuZGVwdGggPSAyNCwgLm51bV9w
bGFuZXMgPSAzLAo+ID4gKwkgIC5jcHAgPSB7IDQsIDEsIDAsIH0sIC5oc3ViID0gMiwgLnZzdWIg
PSAzMiwgfSwKPiA+ICsJeyAuZm9ybWF0ID0gRFJNX0ZPUk1BVF9BUkdCODg4OCwgLmRlcHRoID0g
MzIsIC5udW1fcGxhbmVzID0gMywKPiA+ICsJICAuY3BwID0geyA0LCAxLCAwLCB9LCAuaHN1YiA9
IDIsIC52c3ViID0gMzIsIC5oYXNfYWxwaGEgPSB0cnVlIH0sCj4gPiArCXsgLmZvcm1hdCA9IERS
TV9GT1JNQVRfQUJHUjg4ODgsIC5kZXB0aCA9IDMyLCAubnVtX3BsYW5lcyA9IDMsCj4gPiArCSAg
LmNwcCA9IHsgNCwgMSwgMCwgfSwgLmhzdWIgPSAyLCAudnN1YiA9IDMyLCAuaGFzX2FscGhhID0g
dHJ1ZSB9LAo+ID4gK307Cj4gPiArCj4gPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fZm9ybWF0
X2luZm8gKiAgbG9va3VwX2Zvcm1hdF9pbmZvKGNvbnN0Cj4gPiBzdHJ1Y3QgZHJtX2Zvcm1hdF9p
bmZvIGZvcm1hdHNbXSwKPiA+ICAJCSAgIGludCBudW1fZm9ybWF0cywgdTMyIGZvcm1hdCkKPiA+
IEBAIC0yNTM4LDYgKzI1NjUsMTAgQEAgaW50ZWxfZ2V0X2Zvcm1hdF9pbmZvKGNvbnN0IHN0cnVj
dAo+IGRybV9tb2RlX2ZiX2NtZDIgKmNtZCkKPiA+ICAJCXJldHVybiBsb29rdXBfZm9ybWF0X2lu
Zm8oZ2VuMTJfY2NzX2Zvcm1hdHMsCj4gPiAgCQkJCQkgIEFSUkFZX1NJWkUoZ2VuMTJfY2NzX2Zv
cm1hdHMpLAo+ID4gIAkJCQkJICBjbWQtPnBpeGVsX2Zvcm1hdCk7Cj4gPiArCWNhc2UgSTkxNV9G
T1JNQVRfTU9EX1lfVElMRURfR0VOMTJfUkNfQ0NTX0NDOgo+ID4gKwkJcmV0dXJuIGxvb2t1cF9m
b3JtYXRfaW5mbyhnZW4xMl9jY3NfY2NfZm9ybWF0cywKPiA+ICsJCQkJCSAgQVJSQVlfU0laRShn
ZW4xMl9jY3NfY2NfZm9ybWF0cyksCj4gPiArCQkJCQkgIGNtZC0+cGl4ZWxfZm9ybWF0KTsKPiA+
ICAJZGVmYXVsdDoKPiA+ICAJCXJldHVybiBOVUxMOwo+ID4gIAl9Cj4gPiBAQCAtMjU0Nyw2ICsy
NTc4LDcgQEAgYm9vbCBpc19jY3NfbW9kaWZpZXIodTY0IG1vZGlmaWVyKSAgewo+ID4gIAlyZXR1
cm4gbW9kaWZpZXIgPT0gSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfUkNfQ0NTIHx8Cj4g
PiAgCSAgICAgICBtb2RpZmllciA9PSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4xMl9NQ19D
Q1MgfHwKPiA+ICsJICAgICAgIG1vZGlmaWVyID09IEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dF
TjEyX1JDX0NDU19DQyB8fAo+ID4gIAkgICAgICAgbW9kaWZpZXIgPT0gSTkxNV9GT1JNQVRfTU9E
X1lfVElMRURfQ0NTIHx8Cj4gPiAgCSAgICAgICBtb2RpZmllciA9PSBJOTE1X0ZPUk1BVF9NT0Rf
WWZfVElMRURfQ0NTOyAgfSBAQCAtMjczNCw2Cj4gPiArMjc2Niw4IEBAIHN0YXRpYyBib29sIGlz
X2Njc19wbGFuZSh1NjQgbW9kaWZpZXIsIGludCBjb2xvcl9wbGFuZSkKPiA+ICAJCXJldHVybiBm
YWxzZTsKPiA+ICAJZWxzZSBpZiAobW9kaWZpZXIgPT0gSTkxNV9GT1JNQVRfTU9EX1lfVElMRURf
R0VOMTJfTUNfQ0NTKQo+ID4gIAkJcmV0dXJuIGNvbG9yX3BsYW5lID09IDMgfHwgY29sb3JfcGxh
bmUgPT0gMTsKPiA+ICsJZWxzZSBpZiAobW9kaWZpZXIgPT0KPiBJOTE1X0ZPUk1BVF9NT0RfWV9U
SUxFRF9HRU4xMl9SQ19DQ1NfQ0MpCj4gPiArCQlyZXR1cm4gY29sb3JfcGxhbmUgPT0gMSB8fCBj
b2xvcl9wbGFuZSA9PSAyOwo+ID4gIAllbHNlCj4gPiAgCQlyZXR1cm4gY29sb3JfcGxhbmUgPT0g
MTsKPiA+ICB9Cj4gPiBAQCAtMjgwNSw2ICsyODM5LDE0IEBAIGludGVsX2ZpbGxfZmJfaW5mbyhz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQo+ICpkZXZfcHJpdiwKPiA+ICAJCWNwcCA9IGZiLT5mb3Jt
YXQtPmNwcFtpXTsKPiA+ICAJCWludGVsX2ZiX3BsYW5lX2RpbXMoJndpZHRoLCAmaGVpZ2h0LCBm
YiwgaSk7Cj4gPgo+ID4gKwkJLyoKPiA+ICsJCSAqIFBsYW5lIDIgb2YgUmVuZGVyIENvbXByZXNz
aW9uIHdpdGggQ2xlYXIgQ29sb3IgZmIKPiBtb2RpZmllciBpcyBjb25zdW1lZAo+ID4gKwkJICog
YnkgdGhlIGRyaXZlciBhbmQgbm90IHBhc3NlZCB0byBERS4gU2tpcCB0aGUgYXJpdGhtZXRpYwo+
IHJlbGF0ZWQgdG8KPiA+ICsJCSAqIGFsaWdubWVudCBhbmQgb2Zmc2V0IGNhbGN1bGF0aW9uLgo+
ID4gKwkJICovCj4gPiArCQlpZiAoaSA9PSAyICYmIGZiLT5tb2RpZmllciA9PQo+IEk5MTVfRk9S
TUFUX01PRF9ZX1RJTEVEX0dFTjEyX1JDX0NDU19DQykKPiA+ICsJCQljb250aW51ZTsKPiA+ICsK
PiAKPiBXZSBtaWdodCBhcyB3ZWxsIGRvIHRoaXMgYmVmb3JlIHRoZSBjcHAgYW5kIHdpZHRoL2hl
aWdodCBhc3NpZ25tZW50cyB0b28/Cj4gCj4gU2hvdWxkIHdlIGFsc28gYmUgY2hlY2tpbmcgSVNf
QUxJR05FRChvZmZzZXRzWzJdLCBQQUdFX1NJWkUpPyAgV2Ugc2VlbSB0bwo+IHJlbHkgb24gdGhh
dCBhZnRlciBrbWFwJ2luZyBiZWxvdy4KV2lsbCBtYWtlIHRoZSBjaGFuZ2VzIGluIG5leHQgcmV2
LgoKVGhhbmtzLApSYWRoYWtyaXNobmEoUkspIFNyaXBhZGEKPiAKPiAKPiBNYXR0Cj4gCj4gPiAg
CQlyZXQgPSBpbnRlbF9mYl9vZmZzZXRfdG9feHkoJngsICZ5LCBmYiwgaSk7Cj4gPiAgCQlpZiAo
cmV0KSB7Cj4gPiAgCQkJRFJNX0RFQlVHX0tNUygiYmFkIGZiIHBsYW5lICVkIG9mZnNldDogMHgl
eFxuIiwKPiBAQCAtNDI3NCw2ICs0MzE2LDcKPiA+IEBAIHN0YXRpYyB1MzIgc2tsX3BsYW5lX2N0
bF90aWxpbmcodTY0IGZiX21vZGlmaWVyKQo+ID4gIAljYXNlIEk5MTVfRk9STUFUX01PRF9ZX1RJ
TEVEOgo+ID4gIAkJcmV0dXJuIFBMQU5FX0NUTF9USUxFRF9ZOwo+ID4gIAljYXNlIEk5MTVfRk9S
TUFUX01PRF9ZX1RJTEVEX0NDUzoKPiA+ICsJY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9H
RU4xMl9SQ19DQ1NfQ0M6Cj4gPiAgCQlyZXR1cm4gUExBTkVfQ1RMX1RJTEVEX1kgfAo+IFBMQU5F
X0NUTF9SRU5ERVJfREVDT01QUkVTU0lPTl9FTkFCTEU7Cj4gPiAgCWNhc2UgSTkxNV9GT1JNQVRf
TU9EX1lfVElMRURfR0VOMTJfUkNfQ0NTOgo+ID4gIAkJcmV0dXJuIFBMQU5FX0NUTF9USUxFRF9Z
IHwKPiA+IEBAIC0xNDUzNiw2ICsxNDU3OSwxNSBAQCBzdGF0aWMgaW50IGludGVsX3BsYW5lX3Bp
bl9mYihzdHJ1Y3QKPiA+IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkKPiA+Cj4gPiAg
CXBsYW5lX3N0YXRlLT52bWEgPSB2bWE7Cj4gPgo+ID4gKwlpZiAoZmItPm1vZGlmaWVyID09Cj4g
STkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfUkNfQ0NTX0NDKSB7Cj4gPiArCQl1MzIgKmNj
YWRkciA9Cj4ga21hcF9hdG9taWMoaTkxNV9nZW1fb2JqZWN0X2dldF9wYWdlKGludGVsX2ZiX29i
aihmYiksCj4gPiArCQkJCQkJCQkgIGZiLQo+ID5vZmZzZXRzWzJdID4+IFBBR0VfU0hJRlQpKTsK
PiA+ICsKPiA+ICsJCXBsYW5lX3N0YXRlLT5jY3ZhbCA9ICgodTY0KSooY2NhZGRyICsKPiBDQ19W
QUxfSElHSEVSX09GRlNFVCkgPDwgMzIpCj4gPiArCQkJCSAgICAgfCAqKGNjYWRkciArIENDX1ZB
TF9MT1dFUl9PRkZTRVQpOwo+ID4gKwkJa3VubWFwX2F0b21pYyhjY2FkZHIpOwo+ID4gKwl9Cj4g
PiArCj4gPiAgCXJldHVybiAwOwo+ID4gIH0KPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKPiA+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKPiA+IGluZGV4IDU5OThi
OTU5MjI1Yy4uNzdkM2Y2YjYzNGIwIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCj4gPiBAQCAtNTc5LDYgKzU3OSw5
IEBAIHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSB7Cj4gPiAgCXUzMiBwbGFuYXJfc2xhdmU7Cj4g
Pgo+ID4gIAlzdHJ1Y3QgZHJtX2ludGVsX3Nwcml0ZV9jb2xvcmtleSBja2V5Owo+ID4gKwo+ID4g
KwkvKiBDbGVhciBDb2xvciBWYWx1ZSAqLwo+ID4gKwl1NjQgY2N2YWw7Cj4gPiAgfTsKPiA+Cj4g
PiAgc3RydWN0IGludGVsX2luaXRpYWxfcGxhbmVfY29uZmlnIHsKPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCj4gPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKPiA+IGluZGV4IGNlNzkzNzMxNTRm
Yy4uMjRhZThiZjk3NDRkIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9zcHJpdGUuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9zcHJpdGUuYwo+ID4gQEAgLTU0OSw2ICs1NDksNyBAQCBza2xfcHJvZ3JhbV9wbGFu
ZShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAo+ID4gIAl1MzIgcGxhbmVfY29sb3JfY3RsID0g
MDsKPiA+ICAJdW5zaWduZWQgbG9uZyBpcnFmbGFnczsKPiA+ICAJdTMyIGtleW1zaywga2V5bWF4
Owo+ID4gKwl1NjQgY2N2YWwgPSBwbGFuZV9zdGF0ZS0+Y2N2YWw7Cj4gPgo+ID4gIAlwbGFuZV9j
dGwgfD0gc2tsX3BsYW5lX2N0bF9jcnRjKGNydGNfc3RhdGUpOwo+ID4KPiA+IEBAIC02MDksNiAr
NjEwLDEwIEBAIHNrbF9wcm9ncmFtX3BsYW5lKHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsCj4g
PiAgCWlmIChmYi0+Zm9ybWF0LT5pc195dXYgJiYgaWNsX2lzX2hkcl9wbGFuZShkZXZfcHJpdiwg
cGxhbmVfaWQpKQo+ID4gIAkJaWNsX3Byb2dyYW1faW5wdXRfY3NjKHBsYW5lLCBjcnRjX3N0YXRl
LCBwbGFuZV9zdGF0ZSk7Cj4gPgo+ID4gKwlpZiAoZmItPm1vZGlmaWVyID09Cj4gSTkxNV9GT1JN
QVRfTU9EX1lfVElMRURfR0VOMTJfUkNfQ0NTX0NDKQo+ID4gKwkJaW50ZWxfdW5jb3JlX3dyaXRl
NjRfZncoJmRldl9wcml2LT51bmNvcmUsCj4gPiArCQkJCQlQTEFORV9DQ19WQUwocGlwZSwgcGxh
bmVfaWQpLAo+IGNjdmFsKTsKPiA+ICsKPiA+ICAJc2tsX3dyaXRlX3BsYW5lX3dtKHBsYW5lLCBj
cnRjX3N0YXRlKTsKPiA+Cj4gPiAgCUk5MTVfV1JJVEVfRlcoUExBTkVfS0VZVkFMKHBpcGUsIHBs
YW5lX2lkKSwga2V5LT5taW5fdmFsdWUpOwo+IEBACj4gPiAtMTczOCw3ICsxNzQzLDggQEAgc3Rh
dGljIGludCBza2xfcGxhbmVfY2hlY2tfZmIoY29uc3Qgc3RydWN0Cj4gaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSwKPiA+ICAJICAgICBmYi0+bW9kaWZpZXIgPT0gSTkxNV9GT1JNQVRfTU9E
X1lfVElMRURfQ0NTIHx8Cj4gPiAgCSAgICAgZmItPm1vZGlmaWVyID09IEk5MTVfRk9STUFUX01P
RF9ZZl9USUxFRF9DQ1MgfHwKPiA+ICAJICAgICBmYi0+bW9kaWZpZXIgPT0gSTkxNV9GT1JNQVRf
TU9EX1lfVElMRURfR0VOMTJfUkNfQ0NTIHx8Cj4gPiAtCSAgICAgZmItPm1vZGlmaWVyID09IEk5
MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dFTjEyX01DX0NDUykpIHsKPiA+ICsJICAgICBmYi0+bW9k
aWZpZXIgPT0gSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfTUNfQ0NTIHx8Cj4gPiArCSAg
ICAgZmItPm1vZGlmaWVyID09Cj4gSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfUkNfQ0NT
X0NDKSkgewo+ID4gIAkJRFJNX0RFQlVHX0tNUygiWS9ZZiB0aWxpbmcgbm90IHN1cHBvcnRlZCBp
biBJRi1JRAo+IG1vZGVcbiIpOwo+ID4gIAkJcmV0dXJuIC1FSU5WQUw7Cj4gPiAgCX0KPiA+IEBA
IC0yMTUzLDYgKzIxNTksNyBAQCBzdGF0aWMgY29uc3QgdTY0Cj4gPiBza2xfcGxhbmVfZm9ybWF0
X21vZGlmaWVyc19jY3NbXSA9IHsgIHN0YXRpYyBjb25zdCB1NjQKPiBnZW4xMl9wbGFuZV9mb3Jt
YXRfbW9kaWZpZXJzX21jX2Njc1tdID0gewo+ID4gIAlJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9H
RU4xMl9NQ19DQ1MsCj4gPiAgCUk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dFTjEyX1JDX0NDUywK
PiA+ICsJSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfUkNfQ0NTX0NDLAo+ID4gIAlJOTE1
X0ZPUk1BVF9NT0RfWV9USUxFRCwKPiA+ICAJSTkxNV9GT1JNQVRfTU9EX1hfVElMRUQsCj4gPiAg
CURSTV9GT1JNQVRfTU9EX0xJTkVBUiwKPiA+IEBAIC0yMTYxLDYgKzIxNjgsNyBAQCBzdGF0aWMg
Y29uc3QgdTY0Cj4gPiBnZW4xMl9wbGFuZV9mb3JtYXRfbW9kaWZpZXJzX21jX2Njc1tdID0gewo+
ID4KPiA+ICBzdGF0aWMgY29uc3QgdTY0IGdlbjEyX3BsYW5lX2Zvcm1hdF9tb2RpZmllcnNfcmNf
Y2NzW10gPSB7Cj4gPiAgCUk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dFTjEyX1JDX0NDUywKPiA+
ICsJSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfUkNfQ0NTX0NDLAo+ID4gIAlJOTE1X0ZP
Uk1BVF9NT0RfWV9USUxFRCwKPiA+ICAJSTkxNV9GT1JNQVRfTU9EX1hfVElMRUQsCj4gPiAgCURS
TV9GT1JNQVRfTU9EX0xJTkVBUiwKPiA+IEBAIC0yMzM0LDYgKzIzNDIsNyBAQCBzdGF0aWMgYm9v
bAo+IGdlbjEyX3BsYW5lX2Zvcm1hdF9tb2Rfc3VwcG9ydGVkKHN0cnVjdCBkcm1fcGxhbmUgKl9w
bGFuZSwKPiA+ICAJY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWF9USUxFRDoKPiA+ICAJY2FzZSBJOTE1
X0ZPUk1BVF9NT0RfWV9USUxFRDoKPiA+ICAJY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9H
RU4xMl9SQ19DQ1M6Cj4gPiArCWNhc2UgSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfUkNf
Q0NTX0NDOgo+ID4gIAkJYnJlYWs7Cj4gPiAgCWRlZmF1bHQ6Cj4gPiAgCQlyZXR1cm4gZmFsc2U7
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+ID4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGluZGV4IDBhYmY5YTM5MTdlZC4uMDEwMjNm
Yzg4MGM4Cj4gPiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmgKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiA+IEBAIC02NzM0
LDYgKzY3MzQsOCBAQCBlbnVtIHsKPiA+ICAjZGVmaW5lIF9QTEFORV9LRVlNQVhfMV9BCQkJMHg3
MDFhMAo+ID4gICNkZWZpbmUgX1BMQU5FX0tFWU1BWF8yX0EJCQkweDcwMmEwCj4gPiAgI2RlZmlu
ZSAgUExBTkVfS0VZTUFYX0FMUEhBKGEpCQkJKChhKSA8PCAyNCkKPiA+ICsjZGVmaW5lIF9QTEFO
RV9DQ19WQUxfMV9BCQkJMHg3MDFiNAo+ID4gKyNkZWZpbmUgX1BMQU5FX0NDX1ZBTF8yX0EJCQkw
eDcwMmI0Cj4gPiAgI2RlZmluZSBfUExBTkVfQVVYX0RJU1RfMV9BCQkJMHg3MDFjMAo+ID4gICNk
ZWZpbmUgX1BMQU5FX0FVWF9ESVNUXzJfQQkJCTB4NzAyYzAKPiA+ICAjZGVmaW5lIF9QTEFORV9B
VVhfT0ZGU0VUXzFfQQkJCTB4NzAxYzQKPiA+IEBAIC02NzczLDYgKzY3NzUsMTYgQEAgZW51bSB7
Cj4gPiAgI2RlZmluZSBfUExBTkVfTlYxMl9CVUZfQ0ZHXzFfQQkJMHg3MDI3OAo+ID4gICNkZWZp
bmUgX1BMQU5FX05WMTJfQlVGX0NGR18yX0EJCTB4NzAzNzgKPiA+Cj4gPiArI2RlZmluZSBfUExB
TkVfQ0NfVkFMXzFfQgkJCTB4NzExYjQKPiA+ICsjZGVmaW5lIF9QTEFORV9DQ19WQUxfMl9CCQkJ
MHg3MTJiNAo+ID4gKyNkZWZpbmUgX1BMQU5FX0NDX1ZBTF8xKHBpcGUpCV9QSVBFKHBpcGUsIF9Q
TEFORV9DQ19WQUxfMV9BLAo+IF9QTEFORV9DQ19WQUxfMV9CKQo+ID4gKyNkZWZpbmUgX1BMQU5F
X0NDX1ZBTF8yKHBpcGUpCV9QSVBFKHBpcGUsIF9QTEFORV9DQ19WQUxfMl9BLAo+IF9QTEFORV9D
Q19WQUxfMl9CKQo+ID4gKyNkZWZpbmUgUExBTkVfQ0NfVkFMKHBpcGUsIHBsYW5lKQlcCj4gPiAr
CV9NTUlPX1BMQU5FKHBsYW5lLCBfUExBTkVfQ0NfVkFMXzEocGlwZSksCj4gX1BMQU5FX0NDX1ZB
TF8yKHBpcGUpKQo+ID4gKwo+ID4gKyNkZWZpbmUgQ0NfVkFMX0xPV0VSX09GRlNFVAkJNAo+ID4g
KyNkZWZpbmUgQ0NfVkFMX0hJR0hFUl9PRkZTRVQJCTUKPiA+ICsKPiA+ICAvKiBJbnB1dCBDU0Mg
UmVnaXN0ZXIgRGVmaW5pdGlvbnMgKi8KPiA+ICAjZGVmaW5lIF9QTEFORV9JTlBVVF9DU0NfUllf
R1lfMV9BCTB4NzAxRTAKPiA+ICAjZGVmaW5lIF9QTEFORV9JTlBVVF9DU0NfUllfR1lfMl9BCTB4
NzAyRTAKPiA+IC0tCj4gPiAyLjIwLjEKPiA+Cj4gCj4gLS0KPiBNYXR0IFJvcGVyCj4gR3JhcGhp
Y3MgU29mdHdhcmUgRW5naW5lZXIKPiBWVFQtT1NHQyBQbGF0Zm9ybSBFbmFibGVtZW50Cj4gSW50
ZWwgQ29ycG9yYXRpb24KPiAoOTE2KSAzNTYtMjc5NQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
