Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA07A1EA9
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 17:15:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C7516E0BF;
	Thu, 29 Aug 2019 15:15:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 489D76E0BF
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 15:15:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Aug 2019 08:15:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,443,1559545200"; 
 d="scan'208,217";a="180905555"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga008.fm.intel.com with ESMTP; 29 Aug 2019 08:15:25 -0700
Received: from FMSMSX109.amr.corp.intel.com (10.18.116.9) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 29 Aug 2019 08:15:25 -0700
Received: from bgsmsx102.gar.corp.intel.com (10.223.4.172) by
 fmsmsx109.amr.corp.intel.com (10.18.116.9) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 29 Aug 2019 08:15:24 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.178]) by
 BGSMSX102.gar.corp.intel.com ([169.254.2.79]) with mapi id 14.03.0439.000;
 Thu, 29 Aug 2019 20:45:22 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Sharma, Swati2" <swati2.sharma@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v8][PATCH 05/10] drm/i915/display: Extract i9xx_read_luts()
Thread-Index: AQHVW9itREA1EEbK7Uui3TwWcqod0acQthKw///0sgCAAZXq8A==
Date: Thu, 29 Aug 2019 15:15:21 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F821D491B@BGSMSX104.gar.corp.intel.com>
References: <1566800772-18412-1-git-send-email-swati2.sharma@intel.com>
 <1566800772-18412-6-git-send-email-swati2.sharma@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F821D39B9@BGSMSX104.gar.corp.intel.com>
 <464dc066-87b1-0e67-e9bd-fbef2e6bdb53@intel.com>
In-Reply-To: <464dc066-87b1-0e67-e9bd-fbef2e6bdb53@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYmQzNzVkMjItODYwZC00NWRmLWJmZjMtZjNiNWZlNjIxNzkzIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiUHVTY1VYMkdXMnlsWjIra3haNWxWZ1cwZThMYkJ1aDhSeTc3ZmpsdjV6SE1aYnhPTEtoYmt5eEJNZld0bnVQMyJ9
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v8][PATCH 05/10] drm/i915/display: Extract
 i9xx_read_luts()
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "daniel.vetter@ffwll.ch" <daniel.vetter@ffwll.ch>, "Nautiyal,
 Ankit K" <ankit.k.nautiyal@intel.com>
Content-Type: multipart/mixed; boundary="===============1405624813=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1405624813==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_E7C9878FBA1C6D42A1CA3F62AEB6945F821D491BBGSMSX104garcor_"

--_000_E7C9878FBA1C6D42A1CA3F62AEB6945F821D491BBGSMSX104garcor_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCkZyb206IFNoYXJtYSwgU3dhdGkyDQpTZW50OiBUaHVyc2RheSwgQXVndXN0IDI5LCAyMDE5
IDI6MDAgQU0NClRvOiBTaGFua2FyLCBVbWEgPHVtYS5zaGFua2FyQGludGVsLmNvbT47IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCkNjOiBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxh
QGludGVsLmNvbT47IFNoYXJtYSwgU2hhc2hhbmsgPHNoYXNoYW5rLnNoYXJtYUBpbnRlbC5jb20+
OyBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBOYXV0aXlhbCwgQW5r
aXQgSyA8YW5raXQuay5uYXV0aXlhbEBpbnRlbC5jb20+OyBkYW5pZWwudmV0dGVyQGZmd2xsLmNo
OyB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbQ0KU3ViamVjdDogUmU6IFt2OF1bUEFUQ0gg
MDUvMTBdIGRybS9pOTE1L2Rpc3BsYXk6IEV4dHJhY3QgaTl4eF9yZWFkX2x1dHMoKQ0KDQpPbiAy
OC1BdWctMTkgOToyNSBQTSwgU2hhbmthciwgVW1hIHdyb3RlOg0KDQoNCg0KDQoNCi0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tDQoNCkZyb206IFNoYXJtYSwgU3dhdGkyDQoNClNlbnQ6IE1vbmRh
eSwgQXVndXN0IDI2LCAyMDE5IDExOjU2IEFNDQoNClRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnPG1haWx0bzppbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPg0KDQpDYzog
TmlrdWxhLCBKYW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+PG1haWx0bzpqYW5pLm5pa3VsYUBp
bnRlbC5jb20+OyBTaGFybWEsIFNoYXNoYW5rDQoNCjxzaGFzaGFuay5zaGFybWFAaW50ZWwuY29t
PjxtYWlsdG86c2hhc2hhbmsuc2hhcm1hQGludGVsLmNvbT47IE1hbm5hLCBBbmltZXNoIDxhbmlt
ZXNoLm1hbm5hQGludGVsLmNvbT48bWFpbHRvOmFuaW1lc2gubWFubmFAaW50ZWwuY29tPjsNCg0K
TmF1dGl5YWwsIEFua2l0IEsgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPjxtYWlsdG86YW5r
aXQuay5uYXV0aXlhbEBpbnRlbC5jb20+OyBkYW5pZWwudmV0dGVyQGZmd2xsLmNoPG1haWx0bzpk
YW5pZWwudmV0dGVyQGZmd2xsLmNoPjsNCg0KdmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb208
bWFpbHRvOnZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPjsgU2hhbmthciwgVW1hIDx1bWEu
c2hhbmthckBpbnRlbC5jb20+PG1haWx0bzp1bWEuc2hhbmthckBpbnRlbC5jb20+OyBTaGFybWEs
DQoNClN3YXRpMiA8c3dhdGkyLnNoYXJtYUBpbnRlbC5jb20+PG1haWx0bzpzd2F0aTIuc2hhcm1h
QGludGVsLmNvbT4NCg0KU3ViamVjdDogW3Y4XVtQQVRDSCAwNS8xMF0gZHJtL2k5MTUvZGlzcGxh
eTogRXh0cmFjdCBpOXh4X3JlYWRfbHV0cygpDQoNCg0KDQpGb3IgdGhlIGxlZ2FjeSBnYW1tYSwg
aGF2ZSBodyByZWFkIG91dCB0byBjcmVhdGUgaHcgYmxvYiBvZiBnYW1tYSBsdXQgdmFsdWVzLg0K
DQoNCg0KV291bGQgYmUgYmV0dGVyIGlmIHdlIGRlZmluZSBwbGF0Zm9ybXMgZm9yIHdoaWNoIHRo
aXMgaXMgYXBwbGljYWJsZSAoSSBtZWFuIHdoYXQgYWxsIGlzDQoNCmNvbnNpZGVyZWQgbGVnYWN5
IGhlcmUpDQoNCg0KDQpBbHNvLCBhZGQgZnVuY3Rpb24gaW50ZWxfY29sb3JfbHV0X3BhY2sgdG8g
Y29udmVydCBodyB2YWx1ZSB3aXRoIGdpdmVuIGJpdF9wcmVjaXNpb24NCg0KDQoNCldyYXAgdGhp
cyB1cCB3aXRoaW4gNzUgY2hhcmFjdGVycy4NCg0KDQoNCnRvIGx1dCBwcm9wZXJ0eSB2YWwuDQoN
Cg0KDQpLZWVwIHRoZSB2ZXJzaW9uIGhpc3RvcnksIGRvbid0IGRyb3AgdGhhdC4NCg0KDQoNClNp
Z25lZC1vZmYtYnk6IFN3YXRpIFNoYXJtYSA8c3dhdGkyLnNoYXJtYUBpbnRlbC5jb20+PG1haWx0
bzpzd2F0aTIuc2hhcm1hQGludGVsLmNvbT4NCg0KLS0tDQoNCmRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY29sb3IuYyB8IDUxICsrKysrKysrKysrKysrKysrKysrKysrKysrKysr
Kw0KDQpkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgfCAgMyArKw0K
DQoyIGZpbGVzIGNoYW5nZWQsIDU0IGluc2VydGlvbnMoKykNCg0KDQoNCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCg0KYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCg0KaW5kZXggMjc3MjdhMS4uNDVlMGVl
OCAxMDA2NDQNCg0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xv
ci5jDQoNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYw0K
DQpAQCAtMTUyMSw2ICsxNTIxLDU2IEBAIGJvb2wgaW50ZWxfY29sb3JfbHV0X2VxdWFsKHN0cnVj
dCBkcm1fcHJvcGVydHlfYmxvYg0KDQoqYmxvYjEsDQoNCiAgIHJldHVybiB0cnVlOw0KDQp9DQoN
Cg0KDQorLyogY29udmVydCBodyB2YWx1ZSB3aXRoIGdpdmVuIGJpdF9wcmVjaXNpb24gdG8gbHV0
IHByb3BlcnR5IHZhbCAqLw0KDQorc3RhdGljIHUzMiBpbnRlbF9jb2xvcl9sdXRfcGFjayh1MzIg
dmFsLCB1MzIgYml0X3ByZWNpc2lvbikgew0KDQorICB1MzIgbWF4ID0gMHhmZmZmID4+ICgxNiAt
IGJpdF9wcmVjaXNpb24pOw0KDQorDQoNCisgIHZhbCA9IGNsYW1wX3ZhbCh2YWwsIDAsIG1heCk7
DQoNCisNCg0KKyAgaWYgKGJpdF9wcmVjaXNpb24gPCAxNikNCg0KKyAgICAgICAgIHZhbCA8PD0g
MTYgLSBiaXRfcHJlY2lzaW9uOw0KDQorDQoNCisgIHJldHVybiB2YWw7DQoNCit9DQoNCisNCg0K
K3N0YXRpYyBzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKg0KDQoraTl4eF9yZWFkX2x1dF84KHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKSB7DQoNCg0KDQpXb3VsZCBiZSBnb29k
IHRvIGFkZCBzb21lIGNvbW1lbnRzIGRlc2NyaWJpbmcgdGhlIHJhdGlvbmFsZSBvZiB0aGlzDQoN
CmZ1bmN0aW9uLiBXaHkgOCBldGMuDQpGdW5jIGlzIHdyaXR0ZW4gc2ltaWxhciB0byBsb2FkIGx1
dHMgZm9yIGk5eHguVGhlcmVmb3JlIGRpZG4ndCBleHBsYWluIDguDQpEbyBJIG5lZWQgdG8gYWRk
IGNvbW1lbnQgZm9yIGFsbCB0aGUgZnVuY3Rpb25zL3BsYXRmb3JtPyBXb24ndCBjb21taXQgbWVz
c2FnZQ0Kc3VmZmljaWVudCBlbm91Z2g/DQoNCkNvbW1pdCBtZXNzYWdlIHdpbGwgbm90IGJlIHZp
c2libGUgd2hpbGUgYnJvd3NpbmcgdGhlIGNvZGUuIFdvdWxkIGJlIGdvb2QgdG8gYWRkIGNvbW1l
bnRzIGV4cGxhaW5pbmcgdGhlIHJhdGlvbmFsZS4NCg0KDQoNCisgIHN0cnVjdCBpbnRlbF9jcnRj
ICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT5iYXNlLmNydGMpOw0KDQorICBzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsN
Cg0KKyAgZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOw0KDQorICBzdHJ1Y3QgZHJtX3Byb3Bl
cnR5X2Jsb2IgKmJsb2I7DQoNCisgIHN0cnVjdCBkcm1fY29sb3JfbHV0ICpibG9iX2RhdGE7DQoN
CisgIHUzMiBpLCB2YWw7DQoNCisNCg0KKyAgYmxvYiA9IGRybV9wcm9wZXJ0eV9jcmVhdGVfYmxv
YigmZGV2X3ByaXYtPmRybSwNCg0KKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc2l6
ZW9mKHN0cnVjdCBkcm1fY29sb3JfbHV0KSAqIDI1NiwNCg0KDQoNCkhhdmUgYSBtYWNybyBmb3Ig
MjU2LiBFeHBsYWluIHdoeSAyNTYsIGFkZCBjb21tZW50cy4NClRoaXMgaXMgc2ltaWxhciB0byBs
b2FkIGx1dHMsIHNpbmNlIG5vdGhpbmcgbmV3IGkgYWRkZWQgc28gZGlkbid0IGdpdmUNCmV4cGxh
bmF0aW9uLiBJIGNhbiByZS11c2UgTEVHQUNZX0xVVF9MRU5HVEggZm9yIHRoaXMsIHNpbmNlIHdh
bnRlZCB0aGVzZQ0KZnVuY3Rpb25zIHRvIGJlIHNpbWlsYXIgdG8gbG9hZF9sdXRzLCB0aGVyZWZv
cmUga2VwdCBzYW1lLg0KDQpPaywgd2Ugc3RpbGwgY2FuIHVzZSB0aGUgbWFjcm8uDQoNCg0KDQor
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBOVUxMKTsNCg0KKyAgaWYgKElTX0VSUihi
bG9iKSkNCg0KKyAgICAgICAgIHJldHVybiBOVUxMOw0KDQorDQoNCisgIGJsb2JfZGF0YSA9IGJs
b2ItPmRhdGE7DQoNCisNCg0KKyAgZm9yIChpID0gMDsgaSA8IDI1NjsgaSsrKSB7DQoNCg0KDQpB
ZGQgdGhlIG1hY3JvIGZvciAyNTYuDQpNYWNybyBhbHJlYWR5IHRoZXJlIExFR0FDWV9MVVRfTEVO
R1RILiBTaG91bGQgaSByZXVzZSB0aGF0Pw0KDQpZZXMgeW91IGNhbiByZXVzZSBpdC4NCg0KDQoN
Cg0KDQorICAgICAgICAgaWYgKEhBU19HTUNIKGRldl9wcml2KSkNCg0KKyAgICAgICAgICAgICAg
ICAgdmFsID0gSTkxNV9SRUFEKFBBTEVUVEUocGlwZSwgaSkpOw0KDQorICAgICAgICAgZWxzZQ0K
DQorICAgICAgICAgICAgICAgICB2YWwgPSBJOTE1X1JFQUQoTEdDX1BBTEVUVEUocGlwZSwgaSkp
Ow0KDQorDQoNCisgICAgICAgICBibG9iX2RhdGFbaV0ucmVkID0NCg0KaW50ZWxfY29sb3JfbHV0
X3BhY2soUkVHX0ZJRUxEX0dFVChMR0NfUEFMRVRURV9SRURfTUFTSywgdmFsKSwgOCk7DQoNCisg
ICAgICAgICBibG9iX2RhdGFbaV0uZ3JlZW4gPQ0KDQppbnRlbF9jb2xvcl9sdXRfcGFjayhSRUdf
RklFTERfR0VUKExHQ19QQUxFVFRFX0dSRUVOX01BU0ssIHZhbCksIDgpOw0KDQorICAgICAgICAg
YmxvYl9kYXRhW2ldLmJsdWUgPQ0KDQppbnRlbF9jb2xvcl9sdXRfcGFjayhSRUdfRklFTERfR0VU
KExHQ19QQUxFVFRFX0JMVUVfTUFTSywgdmFsKSwgOCk7DQoNCisgIH0NCg0KKw0KDQorICByZXR1
cm4gYmxvYjsNCg0KK30NCg0KKw0KDQordm9pZCBpOXh4X3JlYWRfbHV0cyhzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkgew0KDQorICBjcnRjX3N0YXRlLT5iYXNlLmdhbW1hX2x1
dCA9IGk5eHhfcmVhZF9sdXRfOChjcnRjX3N0YXRlKTsgfQ0KDQorDQoNCnZvaWQgaW50ZWxfY29s
b3JfaW5pdChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykgIHsNCg0KICAgc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7IEBAIC0xNTQxLDYN
Cg0KKzE1OTEsNyBAQCB2b2lkIGludGVsX2NvbG9yX2luaXQoc3RydWN0IGludGVsX2NydGMgKmNy
dGMpDQoNCiAgICAgICAgICAgICAgICAgIGRldl9wcml2LT5kaXNwbGF5LmNvbG9yX2NoZWNrID0g
aTl4eF9jb2xvcl9jaGVjazsNCg0KICAgICAgICAgICAgICAgICAgZGV2X3ByaXYtPmRpc3BsYXku
Y29sb3JfY29tbWl0ID0gaTl4eF9jb2xvcl9jb21taXQ7DQoNCiAgICAgICAgICAgICAgICAgIGRl
dl9wcml2LT5kaXNwbGF5LmxvYWRfbHV0cyA9IGk5eHhfbG9hZF9sdXRzOw0KDQorICAgICAgICAg
ICAgICAgICBkZXZfcHJpdi0+ZGlzcGxheS5yZWFkX2x1dHMgPSBpOXh4X3JlYWRfbHV0czsNCg0K
ICAgICAgICAgIH0NCg0KICAgfSBlbHNlIHsNCg0KICAgICAgICAgIGlmIChJTlRFTF9HRU4oZGV2
X3ByaXYpID49IDExKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggaW5kZXgNCg0KYTA5MmIzNC4u
YjY4N2ZhYSAxMDA2NDQNCg0KLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0K
DQorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQoNCkBAIC03MTkyLDYgKzcx
OTIsOSBAQCBlbnVtIHsNCg0KLyogbGVnYWN5IHBhbGV0dGUgKi8NCg0KI2RlZmluZSBfTEdDX1BB
TEVUVEVfQSAgICAgICAgICAgMHg0YTAwMA0KDQojZGVmaW5lIF9MR0NfUEFMRVRURV9CICAgICAg
ICAgICAweDRhODAwDQoNCisjZGVmaW5lIExHQ19QQUxFVFRFX1JFRF9NQVNLICAgICBSRUdfR0VO
TUFTSygyMywgMTYpDQoNCisjZGVmaW5lIExHQ19QQUxFVFRFX0dSRUVOX01BU0sgICBSRUdfR0VO
TUFTSygxNSwgOCkNCg0KKyNkZWZpbmUgTEdDX1BBTEVUVEVfQkxVRV9NQVNLICAgIFJFR19HRU5N
QVNLKDcsIDApDQoNCiNkZWZpbmUgTEdDX1BBTEVUVEUocGlwZSwgaSkgX01NSU8oX1BJUEUocGlw
ZSwgX0xHQ19QQUxFVFRFX0EsDQoNCl9MR0NfUEFMRVRURV9CKSArIChpKSAqIDQpDQoNCg0KDQov
KiBpbGsvc25iIHByZWNpc2lvbiBwYWxldHRlICovDQoNCi0tDQoNCjEuOS4xDQoNCg0KDQoNCg0K
DQotLQ0KDQp+U3dhdGkgU2hhcm1hDQo=

--_000_E7C9878FBA1C6D42A1CA3F62AEB6945F821D491BBGSMSX104garcor_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5OkNhbGlicmk7DQoJcGFub3NlLTE6MiAxNSA1IDIgMiAyIDQgMyAy
IDQ7fQ0KQGZvbnQtZmFjZQ0KCXtmb250LWZhbWlseTpDb25zb2xhczsNCglwYW5vc2UtMToyIDEx
IDYgOSAyIDIgNCAzIDIgNDt9DQovKiBTdHlsZSBEZWZpbml0aW9ucyAqLw0KcC5Nc29Ob3JtYWws
IGxpLk1zb05vcm1hbCwgZGl2Lk1zb05vcm1hbA0KCXttYXJnaW46MGluOw0KCW1hcmdpbi1ib3R0
b206LjAwMDFwdDsNCglmb250LXNpemU6MTEuMHB0Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixz
YW5zLXNlcmlmOw0KCWNvbG9yOmJsYWNrO30NCmE6bGluaywgc3Bhbi5Nc29IeXBlcmxpbmsNCgl7
bXNvLXN0eWxlLXByaW9yaXR5Ojk5Ow0KCWNvbG9yOmJsdWU7DQoJdGV4dC1kZWNvcmF0aW9uOnVu
ZGVybGluZTt9DQphOnZpc2l0ZWQsIHNwYW4uTXNvSHlwZXJsaW5rRm9sbG93ZWQNCgl7bXNvLXN0
eWxlLXByaW9yaXR5Ojk5Ow0KCWNvbG9yOnB1cnBsZTsNCgl0ZXh0LWRlY29yYXRpb246dW5kZXJs
aW5lO30NCnByZQ0KCXttc28tc3R5bGUtcHJpb3JpdHk6OTk7DQoJbXNvLXN0eWxlLWxpbms6IkhU
TUwgUHJlZm9ybWF0dGVkIENoYXIiOw0KCW1hcmdpbjowaW47DQoJbWFyZ2luLWJvdHRvbTouMDAw
MXB0Ow0KCWZvbnQtc2l6ZToxMC4wcHQ7DQoJZm9udC1mYW1pbHk6IkNvdXJpZXIgTmV3IjsNCglj
b2xvcjpibGFjazt9DQp0dA0KCXttc28tc3R5bGUtcHJpb3JpdHk6OTk7DQoJZm9udC1mYW1pbHk6
IkNvdXJpZXIgTmV3Ijt9DQpwLm1zb25vcm1hbDAsIGxpLm1zb25vcm1hbDAsIGRpdi5tc29ub3Jt
YWwwDQoJe21zby1zdHlsZS1uYW1lOm1zb25vcm1hbDsNCgltc28tbWFyZ2luLXRvcC1hbHQ6YXV0
bzsNCgltYXJnaW4tcmlnaHQ6MGluOw0KCW1zby1tYXJnaW4tYm90dG9tLWFsdDphdXRvOw0KCW1h
cmdpbi1sZWZ0OjBpbjsNCglmb250LXNpemU6MTEuMHB0Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJp
IixzYW5zLXNlcmlmOw0KCWNvbG9yOmJsYWNrO30NCnNwYW4uSFRNTFByZWZvcm1hdHRlZENoYXIN
Cgl7bXNvLXN0eWxlLW5hbWU6IkhUTUwgUHJlZm9ybWF0dGVkIENoYXIiOw0KCW1zby1zdHlsZS1w
cmlvcml0eTo5OTsNCgltc28tc3R5bGUtbGluazoiSFRNTCBQcmVmb3JtYXR0ZWQiOw0KCWZvbnQt
ZmFtaWx5OkNvbnNvbGFzOw0KCWNvbG9yOmJsYWNrO30NCnNwYW4uRW1haWxTdHlsZTIxDQoJe21z
by1zdHlsZS10eXBlOnBlcnNvbmFsLXJlcGx5Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5z
LXNlcmlmOw0KCWNvbG9yOndpbmRvd3RleHQ7fQ0KLk1zb0NocERlZmF1bHQNCgl7bXNvLXN0eWxl
LXR5cGU6ZXhwb3J0LW9ubHk7DQoJZm9udC1zaXplOjEwLjBwdDt9DQpAcGFnZSBXb3JkU2VjdGlv
bjENCgl7c2l6ZTo4LjVpbiAxMS4waW47DQoJbWFyZ2luOjEuMGluIDEuMGluIDEuMGluIDEuMGlu
O30NCmRpdi5Xb3JkU2VjdGlvbjENCgl7cGFnZTpXb3JkU2VjdGlvbjE7fQ0KLS0+PC9zdHlsZT48
IS0tW2lmIGd0ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBlZGVmYXVsdHMgdjpleHQ9ImVkaXQiIHNw
aWRtYXg9IjEwMjYiIC8+DQo8L3htbD48IVtlbmRpZl0tLT48IS0tW2lmIGd0ZSBtc28gOV0+PHht
bD4NCjxvOnNoYXBlbGF5b3V0IHY6ZXh0PSJlZGl0Ij4NCjxvOmlkbWFwIHY6ZXh0PSJlZGl0IiBk
YXRhPSIxIiAvPg0KPC9vOnNoYXBlbGF5b3V0PjwveG1sPjwhW2VuZGlmXS0tPg0KPC9oZWFkPg0K
PGJvZHkgYmdjb2xvcj0id2hpdGUiIGxhbmc9IkVOLVVTIiBsaW5rPSJibHVlIiB2bGluaz0icHVy
cGxlIj4NCjxkaXYgY2xhc3M9IldvcmRTZWN0aW9uMSI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48
c3BhbiBsYW5nPSJFTi1JTiIgc3R5bGU9ImNvbG9yOndpbmRvd3RleHQiPjxvOnA+Jm5ic3A7PC9v
OnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLUlOIiBz
dHlsZT0iY29sb3I6d2luZG93dGV4dCI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPGRp
diBzdHlsZT0iYm9yZGVyOm5vbmU7Ym9yZGVyLWxlZnQ6c29saWQgYmx1ZSAxLjVwdDtwYWRkaW5n
OjBpbiAwaW4gMGluIDQuMHB0Ij4NCjxkaXY+DQo8ZGl2IHN0eWxlPSJib3JkZXI6bm9uZTtib3Jk
ZXItdG9wOnNvbGlkICNFMUUxRTEgMS4wcHQ7cGFkZGluZzozLjBwdCAwaW4gMGluIDBpbiI+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj48YSBuYW1lPSJfX19fX3JlcGx5c2VwYXJhdG9yIj48L2E+PGI+
PHNwYW4gc3R5bGU9ImNvbG9yOndpbmRvd3RleHQiPkZyb206PC9zcGFuPjwvYj48c3BhbiBzdHls
ZT0iY29sb3I6d2luZG93dGV4dCI+IFNoYXJtYSwgU3dhdGkyDQo8YnI+DQo8Yj5TZW50OjwvYj4g
VGh1cnNkYXksIEF1Z3VzdCAyOSwgMjAxOSAyOjAwIEFNPGJyPg0KPGI+VG86PC9iPiBTaGFua2Fy
LCBVbWEgJmx0O3VtYS5zaGFua2FyQGludGVsLmNvbSZndDs7IGludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmc8YnI+DQo8Yj5DYzo8L2I+IE5pa3VsYSwgSmFuaSAmbHQ7amFuaS5uaWt1bGFA
aW50ZWwuY29tJmd0OzsgU2hhcm1hLCBTaGFzaGFuayAmbHQ7c2hhc2hhbmsuc2hhcm1hQGludGVs
LmNvbSZndDs7IE1hbm5hLCBBbmltZXNoICZsdDthbmltZXNoLm1hbm5hQGludGVsLmNvbSZndDs7
IE5hdXRpeWFsLCBBbmtpdCBLICZsdDthbmtpdC5rLm5hdXRpeWFsQGludGVsLmNvbSZndDs7IGRh
bmllbC52ZXR0ZXJAZmZ3bGwuY2g7IHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPGJyPg0K
PGI+U3ViamVjdDo8L2I+IFJlOiBbdjhdW1BBVENIIDA1LzEwXSBkcm0vaTkxNS9kaXNwbGF5OiBF
eHRyYWN0IGk5eHhfcmVhZF9sdXRzKCk8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8L2Rpdj4NCjwv
ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8ZGl2Pg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCI+PHR0PjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTAuMHB0Ij5P
biAyOC1BdWctMTkgOToyNSBQTSwgU2hhbmthciwgVW1hIHdyb3RlOjwvc3Bhbj48L3R0PjxvOnA+
PC9vOnA+PC9wPg0KPC9kaXY+DQo8YmxvY2txdW90ZSBzdHlsZT0ibWFyZ2luLXRvcDo1LjBwdDtt
YXJnaW4tYm90dG9tOjUuMHB0Ij4NCjxwcmU+PG86cD4mbmJzcDs8L286cD48L3ByZT4NCjxwcmU+
PG86cD4mbmJzcDs8L286cD48L3ByZT4NCjxibG9ja3F1b3RlIHN0eWxlPSJtYXJnaW4tdG9wOjUu
MHB0O21hcmdpbi1ib3R0b206NS4wcHQiPg0KPHByZT4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0t
LTxvOnA+PC9vOnA+PC9wcmU+DQo8cHJlPkZyb206IFNoYXJtYSwgU3dhdGkyPG86cD48L286cD48
L3ByZT4NCjxwcmU+U2VudDogTW9uZGF5LCBBdWd1c3QgMjYsIDIwMTkgMTE6NTYgQU08bzpwPjwv
bzpwPjwvcHJlPg0KPHByZT5UbzogPGEgaHJlZj0ibWFpbHRvOmludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmciPmludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc8L2E+PG86cD48L286
cD48L3ByZT4NCjxwcmU+Q2M6IE5pa3VsYSwgSmFuaSA8YSBocmVmPSJtYWlsdG86amFuaS5uaWt1
bGFAaW50ZWwuY29tIj4mbHQ7amFuaS5uaWt1bGFAaW50ZWwuY29tJmd0OzwvYT47IFNoYXJtYSwg
U2hhc2hhbms8bzpwPjwvbzpwPjwvcHJlPg0KPHByZT48YSBocmVmPSJtYWlsdG86c2hhc2hhbmsu
c2hhcm1hQGludGVsLmNvbSI+Jmx0O3NoYXNoYW5rLnNoYXJtYUBpbnRlbC5jb20mZ3Q7PC9hPjsg
TWFubmEsIEFuaW1lc2ggPGEgaHJlZj0ibWFpbHRvOmFuaW1lc2gubWFubmFAaW50ZWwuY29tIj4m
bHQ7YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20mZ3Q7PC9hPjs8bzpwPjwvbzpwPjwvcHJlPg0KPHBy
ZT5OYXV0aXlhbCwgQW5raXQgSyA8YSBocmVmPSJtYWlsdG86YW5raXQuay5uYXV0aXlhbEBpbnRl
bC5jb20iPiZsdDthbmtpdC5rLm5hdXRpeWFsQGludGVsLmNvbSZndDs8L2E+OyA8YSBocmVmPSJt
YWlsdG86ZGFuaWVsLnZldHRlckBmZndsbC5jaCI+ZGFuaWVsLnZldHRlckBmZndsbC5jaDwvYT47
PG86cD48L286cD48L3ByZT4NCjxwcmU+PGEgaHJlZj0ibWFpbHRvOnZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tIj52aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbTwvYT47IFNoYW5rYXIs
IFVtYSA8YSBocmVmPSJtYWlsdG86dW1hLnNoYW5rYXJAaW50ZWwuY29tIj4mbHQ7dW1hLnNoYW5r
YXJAaW50ZWwuY29tJmd0OzwvYT47IFNoYXJtYSw8bzpwPjwvbzpwPjwvcHJlPg0KPHByZT5Td2F0
aTIgPGEgaHJlZj0ibWFpbHRvOnN3YXRpMi5zaGFybWFAaW50ZWwuY29tIj4mbHQ7c3dhdGkyLnNo
YXJtYUBpbnRlbC5jb20mZ3Q7PC9hPjxvOnA+PC9vOnA+PC9wcmU+DQo8cHJlPlN1YmplY3Q6IFt2
OF1bUEFUQ0ggMDUvMTBdIGRybS9pOTE1L2Rpc3BsYXk6IEV4dHJhY3QgaTl4eF9yZWFkX2x1dHMo
KTxvOnA+PC9vOnA+PC9wcmU+DQo8cHJlPjxvOnA+Jm5ic3A7PC9vOnA+PC9wcmU+DQo8cHJlPkZv
ciB0aGUgbGVnYWN5IGdhbW1hLCBoYXZlIGh3IHJlYWQgb3V0IHRvIGNyZWF0ZSBodyBibG9iIG9m
IGdhbW1hIGx1dCB2YWx1ZXMuPG86cD48L286cD48L3ByZT4NCjwvYmxvY2txdW90ZT4NCjxwcmU+
PG86cD4mbmJzcDs8L286cD48L3ByZT4NCjxwcmU+V291bGQgYmUgYmV0dGVyIGlmIHdlIGRlZmlu
ZSBwbGF0Zm9ybXMgZm9yIHdoaWNoIHRoaXMgaXMgYXBwbGljYWJsZSAoSSBtZWFuIHdoYXQgYWxs
IGlzPG86cD48L286cD48L3ByZT4NCjxwcmU+Y29uc2lkZXJlZCBsZWdhY3kgaGVyZSk8bzpwPjwv
bzpwPjwvcHJlPg0KPHByZT48bzpwPiZuYnNwOzwvbzpwPjwvcHJlPg0KPGJsb2NrcXVvdGUgc3R5
bGU9Im1hcmdpbi10b3A6NS4wcHQ7bWFyZ2luLWJvdHRvbTo1LjBwdCI+DQo8cHJlPkFsc28sIGFk
ZCBmdW5jdGlvbiBpbnRlbF9jb2xvcl9sdXRfcGFjayB0byBjb252ZXJ0IGh3IHZhbHVlIHdpdGgg
Z2l2ZW4gYml0X3ByZWNpc2lvbjxvOnA+PC9vOnA+PC9wcmU+DQo8L2Jsb2NrcXVvdGU+DQo8cHJl
PjxvOnA+Jm5ic3A7PC9vOnA+PC9wcmU+DQo8cHJlPldyYXAgdGhpcyB1cCB3aXRoaW4gNzUgY2hh
cmFjdGVycy48bzpwPjwvbzpwPjwvcHJlPg0KPHByZT48bzpwPiZuYnNwOzwvbzpwPjwvcHJlPg0K
PGJsb2NrcXVvdGUgc3R5bGU9Im1hcmdpbi10b3A6NS4wcHQ7bWFyZ2luLWJvdHRvbTo1LjBwdCI+
DQo8cHJlPnRvIGx1dCBwcm9wZXJ0eSB2YWwuPG86cD48L286cD48L3ByZT4NCjwvYmxvY2txdW90
ZT4NCjxwcmU+PG86cD4mbmJzcDs8L286cD48L3ByZT4NCjxwcmU+S2VlcCB0aGUgdmVyc2lvbiBo
aXN0b3J5LCBkb24ndCBkcm9wIHRoYXQuPG86cD48L286cD48L3ByZT4NCjxwcmU+PG86cD4mbmJz
cDs8L286cD48L3ByZT4NCjxibG9ja3F1b3RlIHN0eWxlPSJtYXJnaW4tdG9wOjUuMHB0O21hcmdp
bi1ib3R0b206NS4wcHQiPg0KPHByZT5TaWduZWQtb2ZmLWJ5OiBTd2F0aSBTaGFybWEgPGEgaHJl
Zj0ibWFpbHRvOnN3YXRpMi5zaGFybWFAaW50ZWwuY29tIj4mbHQ7c3dhdGkyLnNoYXJtYUBpbnRl
bC5jb20mZ3Q7PC9hPjxvOnA+PC9vOnA+PC9wcmU+DQo8cHJlPi0tLTxvOnA+PC9vOnA+PC9wcmU+
DQo8cHJlPmRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYyB8IDUxICYj
NDM7JiM0MzsmIzQzOyYjNDM7JiM0MzsmIzQzOyYjNDM7JiM0MzsmIzQzOyYjNDM7JiM0MzsmIzQz
OyYjNDM7JiM0MzsmIzQzOyYjNDM7JiM0MzsmIzQzOyYjNDM7JiM0MzsmIzQzOyYjNDM7JiM0Mzsm
IzQzOyYjNDM7JiM0MzsmIzQzOyYjNDM7JiM0MzsmIzQzOzxvOnA+PC9vOnA+PC9wcmU+DQo8cHJl
PmRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsm
bmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgfCZuYnNwOyAzICYjNDM7
JiM0Mzs8bzpwPjwvbzpwPjwvcHJlPg0KPHByZT4yIGZpbGVzIGNoYW5nZWQsIDU0IGluc2VydGlv
bnMoJiM0MzspPG86cD48L286cD48L3ByZT4NCjxwcmU+PG86cD4mbmJzcDs8L286cD48L3ByZT4N
CjxwcmU+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29s
b3IuYzxvOnA+PC9vOnA+PC9wcmU+DQo8cHJlPmIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jb2xvci5jPG86cD48L286cD48L3ByZT4NCjxwcmU+aW5kZXggMjc3MjdhMS4uNDVl
MGVlOCAxMDA2NDQ8bzpwPjwvbzpwPjwvcHJlPg0KPHByZT4tLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmM8bzpwPjwvbzpwPjwvcHJlPg0KPHByZT4mIzQzOyYj
NDM7JiM0MzsgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmM8bzpw
PjwvbzpwPjwvcHJlPg0KPHByZT5AQCAtMTUyMSw2ICYjNDM7MTUyMSw1NiBAQCBib29sIGludGVs
X2NvbG9yX2x1dF9lcXVhbChzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2I8bzpwPjwvbzpwPjwvcHJl
Pg0KPHByZT4qYmxvYjEsPG86cD48L286cD48L3ByZT4NCjxwcmU+Jm5ic3A7Jm5ic3A7IHJldHVy
biB0cnVlOzxvOnA+PC9vOnA+PC9wcmU+DQo8cHJlPn08bzpwPjwvbzpwPjwvcHJlPg0KPHByZT48
bzpwPiZuYnNwOzwvbzpwPjwvcHJlPg0KPHByZT4mIzQzOy8qIGNvbnZlcnQgaHcgdmFsdWUgd2l0
aCBnaXZlbiBiaXRfcHJlY2lzaW9uIHRvIGx1dCBwcm9wZXJ0eSB2YWwgKi88bzpwPjwvbzpwPjwv
cHJlPg0KPHByZT4mIzQzO3N0YXRpYyB1MzIgaW50ZWxfY29sb3JfbHV0X3BhY2sodTMyIHZhbCwg
dTMyIGJpdF9wcmVjaXNpb24pIHs8bzpwPjwvbzpwPjwvcHJlPg0KPHByZT4mIzQzOyZuYnNwOyB1
MzIgbWF4ID0gMHhmZmZmICZndDsmZ3Q7ICgxNiAtIGJpdF9wcmVjaXNpb24pOzxvOnA+PC9vOnA+
PC9wcmU+DQo8cHJlPiYjNDM7PG86cD48L286cD48L3ByZT4NCjxwcmU+JiM0MzsmbmJzcDsgdmFs
ID0gY2xhbXBfdmFsKHZhbCwgMCwgbWF4KTs8bzpwPjwvbzpwPjwvcHJlPg0KPHByZT4mIzQzOzxv
OnA+PC9vOnA+PC9wcmU+DQo8cHJlPiYjNDM7Jm5ic3A7IGlmIChiaXRfcHJlY2lzaW9uICZsdDsg
MTYpPG86cD48L286cD48L3ByZT4NCjxwcmU+JiM0MzsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsm
bmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgdmFsICZsdDsmbHQ7PSAxNiAtIGJpdF9wcmVjaXNpb247
PG86cD48L286cD48L3ByZT4NCjxwcmU+JiM0Mzs8bzpwPjwvbzpwPjwvcHJlPg0KPHByZT4mIzQz
OyZuYnNwOyByZXR1cm4gdmFsOzxvOnA+PC9vOnA+PC9wcmU+DQo8cHJlPiYjNDM7fTxvOnA+PC9v
OnA+PC9wcmU+DQo8cHJlPiYjNDM7PG86cD48L286cD48L3ByZT4NCjxwcmU+JiM0MztzdGF0aWMg
c3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICo8bzpwPjwvbzpwPjwvcHJlPg0KPHByZT4mIzQzO2k5
eHhfcmVhZF9sdXRfOChzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkgezxvOnA+
PC9vOnA+PC9wcmU+DQo8L2Jsb2NrcXVvdGU+DQo8cHJlPjxvOnA+Jm5ic3A7PC9vOnA+PC9wcmU+
DQo8cHJlPldvdWxkIGJlIGdvb2QgdG8gYWRkIHNvbWUgY29tbWVudHMgZGVzY3JpYmluZyB0aGUg
cmF0aW9uYWxlIG9mIHRoaXM8bzpwPjwvbzpwPjwvcHJlPg0KPHByZT5mdW5jdGlvbi4gV2h5IDgg
ZXRjLjxvOnA+PC9vOnA+PC9wcmU+DQo8L2Jsb2NrcXVvdGU+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48dHQ+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMC4wcHQiPkZ1bmMgaXMgd3JpdHRlbiBzaW1p
bGFyIHRvIGxvYWQgbHV0cyBmb3IgaTl4eC5UaGVyZWZvcmUgZGlkbid0IGV4cGxhaW4gOC48L3Nw
YW4+PC90dD48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEwLjBwdDtmb250LWZhbWlseTomcXVvdDtD
b3VyaWVyIE5ldyZxdW90OyI+PGJyPg0KPHR0PkRvIEkgbmVlZCB0byBhZGQgY29tbWVudCBmb3Ig
YWxsIHRoZSBmdW5jdGlvbnMvcGxhdGZvcm0/IFdvbid0IGNvbW1pdCBtZXNzYWdlDQo8L3R0Pjxi
cj4NCjx0dD5zdWZmaWNpZW50IGVub3VnaD88L3R0Pjwvc3Bhbj48dHQ+PHNwYW4gc3R5bGU9ImZv
bnQtc2l6ZToxMC4wcHQ7Y29sb3I6d2luZG93dGV4dCI+PG86cD48L286cD48L3NwYW4+PC90dD48
L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iY29sb3I6d2luZG93dGV4dCI+
PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCIgc3R5bGU9
Im1hcmdpbi1sZWZ0OjQuOHB0Ij48c3BhbiBzdHlsZT0iY29sb3I6d2luZG93dGV4dCI+Q29tbWl0
IG1lc3NhZ2Ugd2lsbCBub3QgYmUgdmlzaWJsZSB3aGlsZSBicm93c2luZyB0aGUgY29kZS4gV291
bGQgYmUgZ29vZCB0byBhZGQgY29tbWVudHMgZXhwbGFpbmluZyB0aGUgcmF0aW9uYWxlLjxvOnA+
PC9vOnA+PC9zcGFuPjwvcD4NCjxwcmU+PG86cD4mbmJzcDs8L286cD48L3ByZT4NCjxibG9ja3F1
b3RlIHN0eWxlPSJtYXJnaW4tdG9wOjUuMHB0O21hcmdpbi1ib3R0b206NS4wcHQiPg0KPHByZT4m
IzQzOyZuYnNwOyBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19z
dGF0ZS0mZ3Q7YmFzZS5jcnRjKTs8bzpwPjwvbzpwPjwvcHJlPg0KPHByZT4mIzQzOyZuYnNwOyBz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtJmd0O2Jhc2Uu
ZGV2KTs8bzpwPjwvbzpwPjwvcHJlPg0KPHByZT4mIzQzOyZuYnNwOyBlbnVtIHBpcGUgcGlwZSA9
IGNydGMtJmd0O3BpcGU7PG86cD48L286cD48L3ByZT4NCjxwcmU+JiM0MzsmbmJzcDsgc3RydWN0
IGRybV9wcm9wZXJ0eV9ibG9iICpibG9iOzxvOnA+PC9vOnA+PC9wcmU+DQo8cHJlPiYjNDM7Jm5i
c3A7IHN0cnVjdCBkcm1fY29sb3JfbHV0ICpibG9iX2RhdGE7PG86cD48L286cD48L3ByZT4NCjxw
cmU+JiM0MzsmbmJzcDsgdTMyIGksIHZhbDs8bzpwPjwvbzpwPjwvcHJlPg0KPHByZT4mIzQzOzxv
OnA+PC9vOnA+PC9wcmU+DQo8cHJlPiYjNDM7Jm5ic3A7IGJsb2IgPSBkcm1fcHJvcGVydHlfY3Jl
YXRlX2Jsb2IoJmFtcDtkZXZfcHJpdi0mZ3Q7ZHJtLDxvOnA+PC9vOnA+PC9wcmU+DQo8cHJlPiYj
NDM7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7
Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5i
c3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7
Jm5ic3A7Jm5ic3A7Jm5ic3A7IHNpemVvZihzdHJ1Y3QgZHJtX2NvbG9yX2x1dCkgKiAyNTYsPG86
cD48L286cD48L3ByZT4NCjwvYmxvY2txdW90ZT4NCjxwcmU+PG86cD4mbmJzcDs8L286cD48L3By
ZT4NCjxwcmU+SGF2ZSBhIG1hY3JvIGZvciAyNTYuIEV4cGxhaW4gd2h5IDI1NiwgYWRkIGNvbW1l
bnRzLjxvOnA+PC9vOnA+PC9wcmU+DQo8L2Rpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiIHN0eWxl
PSJtYXJnaW4tbGVmdDo0LjhwdCI+PHR0PjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTAuMHB0Ij5U
aGlzIGlzIHNpbWlsYXIgdG8gbG9hZCBsdXRzLCBzaW5jZSBub3RoaW5nIG5ldyBpIGFkZGVkIHNv
IGRpZG4ndCBnaXZlDQo8L3NwYW4+PC90dD48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEwLjBwdDtm
b250LWZhbWlseTomcXVvdDtDb3VyaWVyIE5ldyZxdW90OyI+PGJyPg0KPHR0PmV4cGxhbmF0aW9u
LiBJIGNhbiByZS11c2UgTEVHQUNZX0xVVF9MRU5HVEggZm9yIHRoaXMsIHNpbmNlIHdhbnRlZCB0
aGVzZTwvdHQ+PGJyPg0KPHR0PmZ1bmN0aW9ucyB0byBiZSBzaW1pbGFyIHRvIGxvYWRfbHV0cywg
dGhlcmVmb3JlIGtlcHQgc2FtZS48L3R0Pjxicj4NCjxicj4NCjwvc3Bhbj48c3BhbiBzdHlsZT0i
Y29sb3I6d2luZG93dGV4dCI+PG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+PHNwYW4gc3R5bGU9ImNvbG9yOndpbmRvd3RleHQiPk9rLCB3ZSBzdGlsbCBjYW4gdXNl
IHRoZSBtYWNyby48bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cHJlPjxvOnA+Jm5ic3A7PC9vOnA+
PC9wcmU+DQo8YmxvY2txdW90ZSBzdHlsZT0ibWFyZ2luLXRvcDo1LjBwdDttYXJnaW4tYm90dG9t
OjUuMHB0Ij4NCjxwcmU+JiM0MzsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsm
bmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJz
cDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsm
bmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgTlVMTCk7PG86cD48L286cD48L3By
ZT4NCjxwcmU+JiM0MzsmbmJzcDsgaWYgKElTX0VSUihibG9iKSk8bzpwPjwvbzpwPjwvcHJlPg0K
PHByZT4mIzQzOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNw
OyByZXR1cm4gTlVMTDs8bzpwPjwvbzpwPjwvcHJlPg0KPHByZT4mIzQzOzxvOnA+PC9vOnA+PC9w
cmU+DQo8cHJlPiYjNDM7Jm5ic3A7IGJsb2JfZGF0YSA9IGJsb2ItJmd0O2RhdGE7PG86cD48L286
cD48L3ByZT4NCjxwcmU+JiM0Mzs8bzpwPjwvbzpwPjwvcHJlPg0KPHByZT4mIzQzOyZuYnNwOyBm
b3IgKGkgPSAwOyBpICZsdDsgMjU2OyBpJiM0MzsmIzQzOykgezxvOnA+PC9vOnA+PC9wcmU+DQo8
L2Jsb2NrcXVvdGU+DQo8cHJlPjxvOnA+Jm5ic3A7PC9vOnA+PC9wcmU+DQo8cHJlPkFkZCB0aGUg
bWFjcm8gZm9yIDI1Ni48bzpwPjwvbzpwPjwvcHJlPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHR0
PjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTAuMHB0Ij5NYWNybyBhbHJlYWR5IHRoZXJlIExFR0FD
WV9MVVRfTEVOR1RILiBTaG91bGQgaSByZXVzZSB0aGF0Pzwvc3Bhbj48L3R0PjxvOnA+PC9vOnA+
PC9wPg0KPGJsb2NrcXVvdGUgc3R5bGU9Im1hcmdpbi10b3A6NS4wcHQ7bWFyZ2luLWJvdHRvbTo1
LjBwdCI+DQo8cHJlPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZx
dW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZjtjb2xvcjp3aW5kb3d0ZXh0Ij5ZZXMgeW91IGNh
biByZXVzZSBpdC48bzpwPjwvbzpwPjwvc3Bhbj48L3ByZT4NCjxwcmU+PHNwYW4gc3R5bGU9ImZv
bnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlm
O2NvbG9yOndpbmRvd3RleHQiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcHJlPg0KPHByZT48
bzpwPiZuYnNwOzwvbzpwPjwvcHJlPg0KPGJsb2NrcXVvdGUgc3R5bGU9Im1hcmdpbi10b3A6NS4w
cHQ7bWFyZ2luLWJvdHRvbTo1LjBwdCI+DQo8cHJlPiYjNDM7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5i
c3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7IGlmIChIQVNfR01DSChkZXZfcHJpdikpPG86cD48
L286cD48L3ByZT4NCjxwcmU+JiM0MzsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJz
cDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsm
bmJzcDsgdmFsID0gSTkxNV9SRUFEKFBBTEVUVEUocGlwZSwgaSkpOzxvOnA+PC9vOnA+PC9wcmU+
DQo8cHJlPiYjNDM7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5i
c3A7IGVsc2U8bzpwPjwvbzpwPjwvcHJlPg0KPHByZT4mIzQzOyZuYnNwOyZuYnNwOyZuYnNwOyZu
YnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNw
OyZuYnNwOyZuYnNwOyZuYnNwOyB2YWwgPSBJOTE1X1JFQUQoTEdDX1BBTEVUVEUocGlwZSwgaSkp
OzxvOnA+PC9vOnA+PC9wcmU+DQo8cHJlPiYjNDM7PG86cD48L286cD48L3ByZT4NCjxwcmU+JiM0
MzsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgYmxvYl9k
YXRhW2ldLnJlZCA9PG86cD48L286cD48L3ByZT4NCjxwcmU+aW50ZWxfY29sb3JfbHV0X3BhY2so
UkVHX0ZJRUxEX0dFVChMR0NfUEFMRVRURV9SRURfTUFTSywgdmFsKSwgOCk7PG86cD48L286cD48
L3ByZT4NCjxwcmU+JiM0MzsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJz
cDsmbmJzcDsgYmxvYl9kYXRhW2ldLmdyZWVuID08bzpwPjwvbzpwPjwvcHJlPg0KPHByZT5pbnRl
bF9jb2xvcl9sdXRfcGFjayhSRUdfRklFTERfR0VUKExHQ19QQUxFVFRFX0dSRUVOX01BU0ssIHZh
bCksIDgpOzxvOnA+PC9vOnA+PC9wcmU+DQo8cHJlPiYjNDM7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5i
c3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7IGJsb2JfZGF0YVtpXS5ibHVlID08bzpwPjwvbzpw
PjwvcHJlPg0KPHByZT5pbnRlbF9jb2xvcl9sdXRfcGFjayhSRUdfRklFTERfR0VUKExHQ19QQUxF
VFRFX0JMVUVfTUFTSywgdmFsKSwgOCk7PG86cD48L286cD48L3ByZT4NCjxwcmU+JiM0MzsmbmJz
cDsgfTxvOnA+PC9vOnA+PC9wcmU+DQo8cHJlPiYjNDM7PG86cD48L286cD48L3ByZT4NCjxwcmU+
JiM0MzsmbmJzcDsgcmV0dXJuIGJsb2I7PG86cD48L286cD48L3ByZT4NCjxwcmU+JiM0Mzt9PG86
cD48L286cD48L3ByZT4NCjxwcmU+JiM0Mzs8bzpwPjwvbzpwPjwvcHJlPg0KPHByZT4mIzQzO3Zv
aWQgaTl4eF9yZWFkX2x1dHMoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpIHs8
bzpwPjwvbzpwPjwvcHJlPg0KPHByZT4mIzQzOyZuYnNwOyBjcnRjX3N0YXRlLSZndDtiYXNlLmdh
bW1hX2x1dCA9IGk5eHhfcmVhZF9sdXRfOChjcnRjX3N0YXRlKTsgfTxvOnA+PC9vOnA+PC9wcmU+
DQo8cHJlPiYjNDM7PG86cD48L286cD48L3ByZT4NCjxwcmU+dm9pZCBpbnRlbF9jb2xvcl9pbml0
KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKSZuYnNwOyB7PG86cD48L286cD48L3ByZT4NCjxwcmU+
Jm5ic3A7Jm5ic3A7IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUo
Y3J0Yy0mZ3Q7YmFzZS5kZXYpOyBAQCAtMTU0MSw2PG86cD48L286cD48L3ByZT4NCjxwcmU+JiM0
MzsxNTkxLDcgQEAgdm9pZCBpbnRlbF9jb2xvcl9pbml0KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
KTxvOnA+PC9vOnA+PC9wcmU+DQo8cHJlPiZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZu
YnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNw
OyZuYnNwOyZuYnNwOyBkZXZfcHJpdi0mZ3Q7ZGlzcGxheS5jb2xvcl9jaGVjayA9IGk5eHhfY29s
b3JfY2hlY2s7PG86cD48L286cD48L3ByZT4NCjxwcmU+Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7
Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5i
c3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7IGRldl9wcml2LSZndDtkaXNwbGF5LmNvbG9yX2NvbW1pdCA9
IGk5eHhfY29sb3JfY29tbWl0OzxvOnA+PC9vOnA+PC9wcmU+DQo8cHJlPiZuYnNwOyZuYnNwOyZu
YnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNw
OyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyBkZXZfcHJpdi0mZ3Q7ZGlzcGxheS5sb2Fk
X2x1dHMgPSBpOXh4X2xvYWRfbHV0czs8bzpwPjwvbzpwPjwvcHJlPg0KPHByZT4mIzQzOyZuYnNw
OyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZu
YnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyBkZXZfcHJpdi0mZ3Q7ZGlzcGxheS5y
ZWFkX2x1dHMgPSBpOXh4X3JlYWRfbHV0czs8bzpwPjwvbzpwPjwvcHJlPg0KPHByZT4mbmJzcDsm
bmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgfTxvOnA+PC9v
OnA+PC9wcmU+DQo8cHJlPiZuYnNwOyZuYnNwOyB9IGVsc2UgezxvOnA+PC9vOnA+PC9wcmU+DQo8
cHJlPiZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNw
OyBpZiAoSU5URUxfR0VOKGRldl9wcml2KSAmZ3Q7PSAxMSk8bzpwPjwvbzpwPjwvcHJlPg0KPHBy
ZT5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmggaW5kZXg8bzpwPjwvbzpwPjwvcHJlPg0KPHByZT5hMDky
YjM0Li5iNjg3ZmFhIDEwMDY0NDxvOnA+PC9vOnA+PC9wcmU+DQo8cHJlPi0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmg8bzpwPjwvbzpwPjwvcHJlPg0KPHByZT4mIzQzOyYjNDM7
JiM0MzsgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oPG86cD48L286cD48L3ByZT4N
CjxwcmU+QEAgLTcxOTIsNiAmIzQzOzcxOTIsOSBAQCBlbnVtIHs8bzpwPjwvbzpwPjwvcHJlPg0K
PHByZT4vKiBsZWdhY3kgcGFsZXR0ZSAqLzxvOnA+PC9vOnA+PC9wcmU+DQo8cHJlPiNkZWZpbmUg
X0xHQ19QQUxFVFRFX0EmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsm
bmJzcDsmbmJzcDsmbmJzcDsgMHg0YTAwMDxvOnA+PC9vOnA+PC9wcmU+DQo8cHJlPiNkZWZpbmUg
X0xHQ19QQUxFVFRFX0ImbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsm
bmJzcDsmbmJzcDsmbmJzcDsgMHg0YTgwMDxvOnA+PC9vOnA+PC9wcmU+DQo8cHJlPiYjNDM7I2Rl
ZmluZSBMR0NfUEFMRVRURV9SRURfTUFTSyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyBSRUdfR0VO
TUFTSygyMywgMTYpPG86cD48L286cD48L3ByZT4NCjxwcmU+JiM0MzsjZGVmaW5lIExHQ19QQUxF
VFRFX0dSRUVOX01BU0smbmJzcDsmbmJzcDsgUkVHX0dFTk1BU0soMTUsIDgpPG86cD48L286cD48
L3ByZT4NCjxwcmU+JiM0MzsjZGVmaW5lIExHQ19QQUxFVFRFX0JMVUVfTUFTSyZuYnNwOyZuYnNw
OyZuYnNwOyBSRUdfR0VOTUFTSyg3LCAwKTxvOnA+PC9vOnA+PC9wcmU+DQo8cHJlPiNkZWZpbmUg
TEdDX1BBTEVUVEUocGlwZSwgaSkgX01NSU8oX1BJUEUocGlwZSwgX0xHQ19QQUxFVFRFX0EsPG86
cD48L286cD48L3ByZT4NCjxwcmU+X0xHQ19QQUxFVFRFX0IpICYjNDM7IChpKSAqIDQpPG86cD48
L286cD48L3ByZT4NCjxwcmU+PG86cD4mbmJzcDs8L286cD48L3ByZT4NCjxwcmU+LyogaWxrL3Nu
YiBwcmVjaXNpb24gcGFsZXR0ZSAqLzxvOnA+PC9vOnA+PC9wcmU+DQo8cHJlPi0tPG86cD48L286
cD48L3ByZT4NCjxwcmU+MS45LjE8bzpwPjwvbzpwPjwvcHJlPg0KPC9ibG9ja3F1b3RlPg0KPHBy
ZT48bzpwPiZuYnNwOzwvbzpwPjwvcHJlPg0KPC9ibG9ja3F1b3RlPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+PGJyPg0KPGJyPg0KPGJyPg0KPG86cD48L286cD48L3A+DQo8cHJlPi0tIDxvOnA+PC9v
OnA+PC9wcmU+DQo8cHJlPn5Td2F0aSBTaGFybWE8bzpwPjwvbzpwPjwvcHJlPg0KPC9kaXY+DQo8
L2JvZHk+DQo8L2h0bWw+DQo=

--_000_E7C9878FBA1C6D42A1CA3F62AEB6945F821D491BBGSMSX104garcor_--

--===============1405624813==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1405624813==--
