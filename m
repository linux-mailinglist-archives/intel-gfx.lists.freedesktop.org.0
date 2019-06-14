Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E644683F
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 21:44:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8A1E898AF;
	Fri, 14 Jun 2019 19:44:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E495898AF
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 19:44:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 12:44:52 -0700
X-ExtLoop1: 1
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by fmsmga005.fm.intel.com with ESMTP; 14 Jun 2019 12:44:52 -0700
Received: from orsmsx156.amr.corp.intel.com (10.22.240.22) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 14 Jun 2019 12:44:51 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.211]) by
 ORSMSX156.amr.corp.intel.com ([169.254.8.64]) with mapi id 14.03.0415.000;
 Fri, 14 Jun 2019 12:44:51 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 9/9] drm/i915/dmc: protect against loading wrong firmware
Thread-Index: AQHVHRExxPEL6it/206gTU7fu2gbQKabmJ5w
Date: Fri, 14 Jun 2019 19:44:50 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B073480D37AB@ORSMSX108.amr.corp.intel.com>
References: <20190607091230.1489-1-lucas.demarchi@intel.com>
 <20190607091230.1489-10-lucas.demarchi@intel.com>
In-Reply-To: <20190607091230.1489-10-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNjZjYTJiNjctMzE4ZC00MTZmLTg5NTEtOGJiMTk1ZjE4ZjAwIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiZ0JXM3VSYVdHekVHMDBXcFwvdjZPWHVCOVNwNU0zTUZwXC9WRCt6M2FRRWdIKzk4RFdhYXd0aExOMU43bnZTdTU1In0=
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 9/9] drm/i915/dmc: protect against loading
 wrong firmware
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

Cgo+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPkZyb206IERlIE1hcmNoaSwgTHVjYXMKPlNl
bnQ6IEZyaWRheSwgSnVuZSA3LCAyMDE5IDI6MTMgQU0KPlRvOiBpbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCj5DYzogVml2aSwgUm9kcmlnbyA8cm9kcmlnby52aXZpQGludGVsLmNvbT47
IFNyaXZhdHNhLCBBbnVzaGEKPjxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPjsgRGUgTWFyY2hp
LCBMdWNhcyA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+U3ViamVjdDogW1BBVENIIDkvOV0g
ZHJtL2k5MTUvZG1jOiBwcm90ZWN0IGFnYWluc3QgbG9hZGluZyB3cm9uZyBmaXJtd2FyZQo+Cj5J
biBpbnRlbF9wYWNrYWdlX2hlYWRlciB2ZXJzaW9uIDIgdGhlcmUncyBhIG5ldyBmaWVsZCBpbiB0
aGUgZndfaW5mbyB0YWJsZSB0aGF0Cj5tdXN0IGJlIDAsIG90aGVyd2lzZSBpdCdzIG5vdCB0aGUg
Y29ycmVjdCBETUMgZmlybXdhcmUuIEFkZCBhIGNoZWNrIGZvciB2ZXJzaW9uIDIKPm9yIGxhdGVy
Lgo+Cj5TaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVs
LmNvbT4KPi0tLQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nzci5jIHwgMTQgKysrKysr
KysrKystLS0KPiAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMo
LSkKPgo+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nzci5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY3NyLmMKPmluZGV4IDc2MDhlNGUyOTUwZC4uODY0NTMx
YWFlMWE1IDEwMDY0NAo+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY3NyLmMKPisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nzci5jCj5AQCAtMTIwLDcgKzEyMCwxMCBA
QCBzdHJ1Y3QgaW50ZWxfY3NzX2hlYWRlciB7ICB9IF9fcGFja2VkOwo+Cj4gc3RydWN0IGludGVs
X2Z3X2luZm8gewo+LQl1MTYgcmVzZXJ2ZWQxOwo+Kwl1OCByZXNlcnZlZDE7Cj4rCj4rCS8qIHJl
c2VydmVkIG9uIHBhY2thZ2VfaGVhZGVyIHZlcnNpb24gMSwgbXVzdCBiZSAwIG9uIHZlcnNpb24g
MiAqLwo+Kwl1OCBkbWNfaWQ7Cj4KPiAJLyogU3RlcHBpbmcgKEEsIEIsIEMsIC4uLiwgKikuICog
aXMgYSB3aWxkY2FyZCAqLwo+IAljaGFyIHN0ZXBwaW5nOwo+QEAgLTMyNSwxMiArMzI4LDE2IEBA
IHZvaWQgaW50ZWxfY3NyX2xvYWRfcHJvZ3JhbShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQo+KmRl
dl9wcml2KQo+ICAqLwo+IHN0YXRpYyB1MzIgZmluZF9kbWNfZndfb2Zmc2V0KGNvbnN0IHN0cnVj
dCBpbnRlbF9md19pbmZvICpmd19pbmZvLAo+IAkJCSAgICAgIHVuc2lnbmVkIGludCBudW1fZW50
cmllcywKPi0JCQkgICAgICBjb25zdCBzdHJ1Y3Qgc3RlcHBpbmdfaW5mbyAqc2kpCj4rCQkJICAg
ICAgY29uc3Qgc3RydWN0IHN0ZXBwaW5nX2luZm8gKnNpLAo+KwkJCSAgICAgIHU4IHBhY2thZ2Vf
dmVyKQo+IHsKPiAJdTMyIGRtY19vZmZzZXQgPSBDU1JfREVGQVVMVF9GV19PRkZTRVQ7Cj4gCXVu
c2lnbmVkIGludCBpOwo+Cj4gCWZvciAoaSA9IDA7IGkgPCBudW1fZW50cmllczsgaSsrKSB7Cj4r
CQlpZiAocGFja2FnZV92ZXIgPiAxICYmIGZ3X2luZm9baV0uZG1jX2lkICE9IDApCj4rCQkJY29u
dGludWU7CgpXb250IHdlIG5lZWQgYSBtZXNzYWdlIGhlcmU/ICJXcm9uZyBETUMgdmVyc2lvbiwg
bm90IGxvYWRpbmcgdl94LjB4IiBvciBzb21ldGhpbmc/Li4iIAoKQW51c2hhIAo+IAkJaWYgKGZ3
X2luZm9baV0uc3Vic3RlcHBpbmcgPT0gJyonICYmCj4gCQkgICAgc2ktPnN0ZXBwaW5nID09IGZ3
X2luZm9baV0uc3RlcHBpbmcpIHsKPiAJCQlkbWNfb2Zmc2V0ID0gZndfaW5mb1tpXS5vZmZzZXQ7
Cj5AQCAtNTA4LDcgKzUxNSw4IEBAIHBhcnNlX2Nzcl9md19wYWNrYWdlKHN0cnVjdCBpbnRlbF9j
c3IgKmNzciwKPgo+IAlmd19pbmZvID0gKGNvbnN0IHN0cnVjdCBpbnRlbF9md19pbmZvICopCj4g
CQkoKHU4ICopcGFja2FnZV9oZWFkZXIgKyBzaXplb2YoKnBhY2thZ2VfaGVhZGVyKSk7Cj4tCWRt
Y19vZmZzZXQgPSBmaW5kX2RtY19md19vZmZzZXQoZndfaW5mbywgbnVtX2VudHJpZXMsIHNpKTsK
PisJZG1jX29mZnNldCA9IGZpbmRfZG1jX2Z3X29mZnNldChmd19pbmZvLCBudW1fZW50cmllcywg
c2ksCj4rCQkJCQlwYWNrYWdlX2hlYWRlci0+aGVhZGVyX3Zlcik7Cj4gCWlmIChkbWNfb2Zmc2V0
ID09IENTUl9ERUZBVUxUX0ZXX09GRlNFVCkgewo+IAkJRFJNX0VSUk9SKCJETUMgZmlybXdhcmUg
bm90IHN1cHBvcnRlZCBmb3IgJWMgc3RlcHBpbmdcbiIsCj4gCQkJICBzaS0+c3RlcHBpbmcpOwo+
LS0KPjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
