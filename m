Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1503A6B1F0
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 00:41:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1B4089CDF;
	Tue, 16 Jul 2019 22:41:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FCAF89CDF
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jul 2019 22:41:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jul 2019 15:41:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,271,1559545200"; d="scan'208";a="342857261"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by orsmga005.jf.intel.com with ESMTP; 16 Jul 2019 15:41:10 -0700
Received: from orsmsx116.amr.corp.intel.com (10.22.240.14) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 16 Jul 2019 15:41:10 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.65]) by
 ORSMSX116.amr.corp.intel.com ([169.254.7.102]) with mapi id 14.03.0439.000;
 Tue, 16 Jul 2019 15:41:09 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 03/22] drm/i915/tgl: update ddi/tc
 clock_off bits
Thread-Index: AQHVORe+de81QBheGkCy6qKo5a5pXKbN3L7g
Date: Tue, 16 Jul 2019 22:41:09 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B0734810262B@ORSMSX108.amr.corp.intel.com>
References: <20190713010940.17711-1-lucas.demarchi@intel.com>
 <20190713010940.17711-4-lucas.demarchi@intel.com>
In-Reply-To: <20190713010940.17711-4-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMGI0OTMzZTctNTQ2NS00Y2RlLWI5OWYtNWZjYjJlNjY1YzRhIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiOEExNXpPcVVnQllwNkkwejZ3WXBZSUFiRDRDOUdjK3ZSb1BOUURWYjhMb1UwaUx2cDZiWGx0WUpGNzhGWFpUNCJ9
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 03/22] drm/i915/tgl: update ddi/tc clock_off
 bits
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
Cc: Mahesh Kumar <mahesh1.kumar@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IEludGVsLWdmeCBbbWFpbHRv
OmludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZ10gT24gQmVoYWxmIE9mDQo+
THVjYXMgRGUgTWFyY2hpDQo+U2VudDogRnJpZGF5LCBKdWx5IDEyLCAyMDE5IDY6MDkgUE0NCj5U
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPkNjOiBNYWhlc2ggS3VtYXIgPG1h
aGVzaDEua3VtYXJAaW50ZWwuY29tPg0KPlN1YmplY3Q6IFtJbnRlbC1nZnhdIFtQQVRDSCAwMy8y
Ml0gZHJtL2k5MTUvdGdsOiB1cGRhdGUgZGRpL3RjIGNsb2NrX29mZiBiaXRzDQo+DQo+RnJvbTog
TWFoZXNoIEt1bWFyIDxtYWhlc2gxLmt1bWFyQGludGVsLmNvbT4NCj4NCj5JbiBHRU4gMTIgUE9S
VF9DIERESSBjbGtfb2ZmIGJpdCBpcyBub3QgZXF1YWxseSBkaXN0YW5jZWQgdG8gQS9CLCBpdCdz
IGF0IG9mZnNldCAyNC4NCj5TaW1pbGFybHkgVEMgcG9ydCAoNS82KSBjbGsgb2ZmIGJpdHMgYXJl
IGF0IG9mZnNldCAyMi8yMy4gRXh0ZW5kIHRoZSBtYWNyb3MgdG8gY292ZXINCj50aGUgYWRkaXRp
b25hbCBwb3J0cy4NCj4NCj5DYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNv
bT4NCj5TaWduZWQtb2ZmLWJ5OiBNYWhlc2ggS3VtYXIgPG1haGVzaDEua3VtYXJAaW50ZWwuY29t
Pg0KPlNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwu
Y29tPg0KDQpDaGVja2VkIHdpdGggc3BlYywgbG9va3MgZ29vZC4NCg0KUmV2aWV3ZWQtYnk6IEFu
dXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4NCj4tLS0NCj4gZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCB8IDUgKysrLS0NCj4gMSBmaWxlIGNoYW5nZWQsIDMg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4NCj5kaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgN
Cj5pbmRleCBkZWY3MWZkMmU0ZDEuLmQ4NzNkOWZiYmYwZSAxMDA2NDQNCj4tLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaA0KPkBAIC05NzQ5LDggKzk3NDksOSBAQCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsNCj4N
Cj4gI2RlZmluZSBJQ0xfRFBDTEtBX0NGR0NSMAkJCV9NTUlPKDB4MTY0MjgwKQ0KPiAjZGVmaW5l
ICBJQ0xfRFBDTEtBX0NGR0NSMF9ERElfQ0xLX09GRihwaHkpCSgxIDw8IF9QSUNLKHBoeSwgMTAs
IDExLA0KPjI0KSkNCj4tI2RlZmluZSAgSUNMX0RQQ0xLQV9DRkdDUjBfVENfQ0xLX09GRih0Y19w
b3J0KSAoMSA8PCAoKHRjX3BvcnQpID09DQo+UE9SVF9UQzQgPyBcDQo+LQkJCQkJCSAgICAgIDIx
IDogKHRjX3BvcnQpICsgMTIpKQ0KPisjZGVmaW5lICBJQ0xfRFBDTEtBX0NGR0NSMF9UQ19DTEtf
T0ZGKHRjX3BvcnQpCSgxIDw8ICgodGNfcG9ydCkgPA0KPlBPUlRfVEM0ID8gXA0KPisJCQkJCQkg
ICAgICAgKHRjX3BvcnQpICsgMTIgOiBcDQo+KwkJCQkJCSAgICAgICAodGNfcG9ydCkgLSBQT1JU
X1RDNCArIDIxKSkNCj4gI2RlZmluZSAgSUNMX0RQQ0xLQV9DRkdDUjBfRERJX0NMS19TRUxfU0hJ
RlQocGh5KQkoKHBoeSkgKiAyKQ0KPiAjZGVmaW5lICBJQ0xfRFBDTEtBX0NGR0NSMF9ERElfQ0xL
X1NFTF9NQVNLKHBoeSkJKDMgPDwNCj5JQ0xfRFBDTEtBX0NGR0NSMF9ERElfQ0xLX1NFTF9TSElG
VChwaHkpKQ0KPiAjZGVmaW5lICBJQ0xfRFBDTEtBX0NGR0NSMF9ERElfQ0xLX1NFTChwbGwsIHBo
eSkJKChwbGwpIDw8DQo+SUNMX0RQQ0xLQV9DRkdDUjBfRERJX0NMS19TRUxfU0hJRlQocGh5KSkN
Cj4tLQ0KPjIuMjEuMA0KPg0KPl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fDQo+SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdA0KPkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcNCj5odHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
