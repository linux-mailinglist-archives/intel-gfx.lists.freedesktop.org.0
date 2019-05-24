Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96BC729D4D
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 19:39:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 069D76E138;
	Fri, 24 May 2019 17:39:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4A1B6E138
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 17:39:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 May 2019 10:39:11 -0700
X-ExtLoop1: 1
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by fmsmga001.fm.intel.com with ESMTP; 24 May 2019 10:39:11 -0700
Received: from orsmsx156.amr.corp.intel.com (10.22.240.22) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 24 May 2019 10:39:10 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.171]) by
 ORSMSX156.amr.corp.intel.com ([169.254.8.144]) with mapi id 14.03.0415.000;
 Fri, 24 May 2019 10:39:10 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Wajdeczko, Michal" <Michal.Wajdeczko@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v4 12/22] drm/i915/huc: Define HuC firmware version for
 Geminilake
Thread-Index: AQHVEb+w0hwsqQKooUuNMI30yaDbE6Z6i2Hw
Date: Fri, 24 May 2019 17:39:09 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B073480B5A04@ORSMSX108.amr.corp.intel.com>
References: <20190523233049.28020-1-michal.wajdeczko@intel.com>
 <20190523233049.28020-13-michal.wajdeczko@intel.com>
In-Reply-To: <20190523233049.28020-13-michal.wajdeczko@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiODhlMTAzOGYtNzg0YS00YjllLThlYjUtYmM1ZWViM2NhMGNlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoic3hQaUR0K2tXWWpXVmlZWVFvdjlhS3VLMGNHdFpXTWJWNHhsWkZKWjF5MkhFNHQzYnhNR096WGJLNzBlSGxYcyJ9
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v4 12/22] drm/i915/huc: Define HuC firmware
 version for Geminilake
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

Cgo+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPkZyb206IFdhamRlY3prbywgTWljaGFsCj5T
ZW50OiBUaHVyc2RheSwgTWF5IDIzLCAyMDE5IDQ6MzEgUE0KPlRvOiBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCj5DYzogV2FqZGVjemtvLCBNaWNoYWwgPE1pY2hhbC5XYWpkZWN6a29A
aW50ZWwuY29tPjsgQ2VyYW9sbyBTcHVyaW8sIERhbmllbGUKPjxkYW5pZWxlLmNlcmFvbG9zcHVy
aW9AaW50ZWwuY29tPjsgSm9vbmFzIExhaHRpbmVuCj48am9vbmFzLmxhaHRpbmVuQGxpbnV4Lmlu
dGVsLmNvbT47IFNyaXZhdHNhLCBBbnVzaGEKPjxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPjsg
WWUsIFRvbnkgPHRvbnkueWVAaW50ZWwuY29tPgo+U3ViamVjdDogW1BBVENIIHY0IDEyLzIyXSBk
cm0vaTkxNS9odWM6IERlZmluZSBIdUMgZmlybXdhcmUgdmVyc2lvbiBmb3IKPkdlbWluaWxha2UK
Pgo+RGVmaW5lIEh1QyBmaXJtd2FyZSB2ZXJzaW9uIGZvciBHZW1pbmlsYWtlLgo+ClJldmlld2Vk
LWJ5OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+Cgo+U2lnbmVk
LW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj5D
YzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNv
bT4KPkNjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+
Cj5DYzogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgo+Q2M6IFRv
bnkgWWUgPHRvbnkueWVAaW50ZWwuY29tPgo+LS0tCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfaHVjX2Z3LmMgfCAxMiArKysrKysrKysrKysKPiAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0
aW9ucygrKQo+Cj5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaHVjX2Z3
LmMKPmIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaHVjX2Z3LmMKPmluZGV4IDQ0YzU1OTUy
NjA3Mi4uOGJhYzZhMDUxYzE4IDEwMDY0NAo+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfaHVjX2Z3LmMKPisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2h1Y19mdy5jCj5A
QCAtMzQsNiArMzQsMTAgQEAKPiAjZGVmaW5lIEtCTF9IVUNfRldfTUlOT1IgMDAKPiAjZGVmaW5l
IEtCTF9CTERfTlVNIDE4MTAKPgo+KyNkZWZpbmUgR0xLX0hVQ19GV19NQUpPUiAwMwo+KyNkZWZp
bmUgR0xLX0hVQ19GV19NSU5PUiAwMQo+KyNkZWZpbmUgR0xLX0JMRF9OVU0gMjg5Mwo+Kwo+ICNk
ZWZpbmUgSFVDX0ZXX1BBVEgocGxhdGZvcm0sIG1ham9yLCBtaW5vciwgYmxkX251bSkgXAo+IAki
aTkxNS8iIF9fc3RyaW5naWZ5KHBsYXRmb3JtKSAiX2h1Y192ZXIiIF9fc3RyaW5naWZ5KG1ham9y
KSAiXyIgXAo+IAlfX3N0cmluZ2lmeShtaW5vcikgIl8iIF9fc3RyaW5naWZ5KGJsZF9udW0pICIu
YmluIgo+QEAgLTUwLDYgKzU0LDEwIEBAIE1PRFVMRV9GSVJNV0FSRShJOTE1X0JYVF9IVUNfVUNP
REUpOwo+IAlLQkxfSFVDX0ZXX01JTk9SLCBLQkxfQkxEX05VTSkKPiBNT0RVTEVfRklSTVdBUkUo
STkxNV9LQkxfSFVDX1VDT0RFKTsKPgo+KyNkZWZpbmUgSTkxNV9HTEtfSFVDX1VDT0RFIEhVQ19G
V19QQVRIKGdsaywgR0xLX0hVQ19GV19NQUpPUiwgXAo+KwlHTEtfSFVDX0ZXX01JTk9SLCBHTEtf
QkxEX05VTSkKPitNT0RVTEVfRklSTVdBUkUoSTkxNV9HTEtfSFVDX1VDT0RFKTsKPisKPiBzdGF0
aWMgdm9pZCBodWNfZndfc2VsZWN0KHN0cnVjdCBpbnRlbF91Y19mdyAqaHVjX2Z3KSAgewo+IAlz
dHJ1Y3QgaW50ZWxfaHVjICpodWMgPSBjb250YWluZXJfb2YoaHVjX2Z3LCBzdHJ1Y3QgaW50ZWxf
aHVjLCBmdyk7IEBAIC0KPjc2LDYgKzg0LDEwIEBAIHN0YXRpYyB2b2lkIGh1Y19md19zZWxlY3Qo
c3RydWN0IGludGVsX3VjX2Z3ICpodWNfZncpCj4gCQlodWNfZnctPnBhdGggPSBJOTE1X0tCTF9I
VUNfVUNPREU7Cj4gCQlodWNfZnctPm1ham9yX3Zlcl93YW50ZWQgPSBLQkxfSFVDX0ZXX01BSk9S
Owo+IAkJaHVjX2Z3LT5taW5vcl92ZXJfd2FudGVkID0gS0JMX0hVQ19GV19NSU5PUjsKPisJfSBl
bHNlIGlmIChJU19HRU1JTklMQUtFKGRldl9wcml2KSkgewo+KwkJaHVjX2Z3LT5wYXRoID0gSTkx
NV9HTEtfSFVDX1VDT0RFOwo+KwkJaHVjX2Z3LT5tYWpvcl92ZXJfd2FudGVkID0gR0xLX0hVQ19G
V19NQUpPUjsKPisJCWh1Y19mdy0+bWlub3JfdmVyX3dhbnRlZCA9IEdMS19IVUNfRldfTUlOT1I7
Cj4gCX0KPiB9Cj4KPi0tCj4yLjE5LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
