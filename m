Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16ECC10D544
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 12:56:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E13BB6E8EA;
	Fri, 29 Nov 2019 11:56:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02C9E6E8E9
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 11:56:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Nov 2019 03:56:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,257,1571727600"; d="scan'208";a="199790958"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga007.jf.intel.com with ESMTP; 29 Nov 2019 03:56:46 -0800
Received: from fmsmsx115.amr.corp.intel.com (10.18.116.19) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 29 Nov 2019 03:56:45 -0800
Received: from bgsmsx106.gar.corp.intel.com (10.223.43.196) by
 fmsmsx115.amr.corp.intel.com (10.18.116.19) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 29 Nov 2019 03:56:45 -0800
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.80]) by
 BGSMSX106.gar.corp.intel.com ([169.254.1.134]) with mapi id 14.03.0439.000;
 Fri, 29 Nov 2019 17:26:42 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: 'Ville Syrjala' <ville.syrjala@linux.intel.com>,
 "'intel-gfx@lists.freedesktop.org'" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Use the correct PCH transcoder for LPT/WPT
 in intel_sanitize_frame_start_delay()
Thread-Index: AQHVphkP+9VddmHbfU2HnMBfHLktbKeiB3iQgAADVNA=
Date: Fri, 29 Nov 2019 11:56:42 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F82301087@BGSMSX104.gar.corp.intel.com>
References: <20191128182358.14477-1-ville.syrjala@linux.intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F8230105D@BGSMSX104.gar.corp.intel.com>
In-Reply-To: <E7C9878FBA1C6D42A1CA3F62AEB6945F8230105D@BGSMSX104.gar.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiODM0ODdkMWUtMDFmMS00ZTljLTgwMjUtMTJmNTFjY2Q3MWNlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoibUpkOVNcL01Fb3RKSDRPWnRSMm9MdEFBTk5BNDVYdWpiQ0FsUUpnS210VktIbEJVbEl5SHBTUjBMblwvcVJBV2Q1In0=
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use the correct PCH transcoder
 for LPT/WPT in intel_sanitize_frame_start_delay()
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

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IFNoYW5rYXIsIFVtYQ0KPlNl
bnQ6IEZyaWRheSwgTm92ZW1iZXIgMjksIDIwMTkgNToxOCBQTQ0KPlRvOiBWaWxsZSBTeXJqYWxh
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT47IGludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcNCj5TdWJqZWN0OiBSRTogW1BBVENIXSBkcm0vaTkxNTogVXNlIHRoZSBjb3JyZWN0
IFBDSCB0cmFuc2NvZGVyIGZvciBMUFQvV1BUIGluDQo+aW50ZWxfc2FuaXRpemVfZnJhbWVfc3Rh
cnRfZGVsYXkoKQ0KPg0KPg0KPg0KPj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPj5Gcm9t
OiBWaWxsZSBTeXJqYWxhIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4+U2VudDog
VGh1cnNkYXksIE5vdmVtYmVyIDI4LCAyMDE5IDExOjU0IFBNDQo+PlRvOiBpbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnDQo+PkNjOiBTaGFua2FyLCBVbWEgPHVtYS5zaGFua2FyQGludGVs
LmNvbT4NCj4+U3ViamVjdDogW1BBVENIXSBkcm0vaTkxNTogVXNlIHRoZSBjb3JyZWN0IFBDSCB0
cmFuc2NvZGVyIGZvciBMUFQvV1BUDQo+PmluDQo+PmludGVsX3Nhbml0aXplX2ZyYW1lX3N0YXJ0
X2RlbGF5KCkNCj4+DQo+PkZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+DQo+Pg0KPj5MUFQvV1BUIG9ubHkgaGF2ZSBQQ0ggdHJhbnNjb2RlciBBLiBN
YWtlIHN1cmUgd2UgcG9rZSBhdCBpdHMgY2hpY2tlbg0KPj5yZWdpc3RlciBpbnN0ZWFkIG9mIHNv
bWUgbm9uLWV4aXN0ZW50IHJlZ2lzdGVyIHdoZW4gRkRJIGlzIGJlaW5nIGRyaXZlbiBieSBwaXBl
IEIgb3INCj5DLg0KPg0KPkNoYW5nZSBsb29rcyBnb29kIHRvIG1lLg0KPlJldmlld2VkLWJ5OiBV
bWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPg0KPj5DYzogVW1hIFNoYW5rYXIg
PHVtYS5zaGFua2FyQGludGVsLmNvbT4NCj4+U2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4+LS0tDQo+PiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDMgKystDQo+PiAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+Pg0KPj5kaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4+Yi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPj5pbmRleCA1M2RjMzEwYTVmNmQu
LmY5OWRiYzNkOTY5NiAxMDA2NDQNCj4+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMNCj4+KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMNCj4+QEAgLTE3MjcyLDcgKzE3MjcyLDggQEAgc3RhdGljIHZvaWQNCj4+
aW50ZWxfc2FuaXRpemVfZnJhbWVfc3RhcnRfZGVsYXkoY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGMNCj4+IAkJdmFsIHw9IFRSQU5TX0ZSQU1FX1NUQVJUX0RFTEFZKDApOw0KPj4g
CQlJOTE1X1dSSVRFKHJlZywgdmFsKTsNCj4+IAl9IGVsc2Ugew0KPj4tCQlpOTE1X3JlZ190IHJl
ZyA9IFRSQU5TX0NISUNLRU4yKGNydGMtPnBpcGUpOw0KPj4rCQllbnVtIHBpcGUgcGNoX3RyYW5z
Y29kZXIgPSBpbnRlbF9jcnRjX3BjaF90cmFuc2NvZGVyKGNydGMpOw0KDQpKdXN0IGFuIGFmdGVy
dGhvdWdodCwgbm90IHN1cmUgaWYgdGhpcyBob2xkIGdlbmVyaWNhbGx5IGZvciBhbGwgcGlwZXMg
b3IgaXMgaXQgcHJvZ3JhbW1hYmxlDQpvbmx5IGZvciBQSVBFX0EuIE1ha2luZyBpdCBlbmFibGVk
IG9uIFBJUEVfQSB3aGVuIGFjdHVhbGx5IHBpcGUgQiBvciBDIGlzIHVzZWQsIGlzIGl0IHRoZSBy
aWdodA0KdGhpbmcuIFNob3VsZCB3ZSBkaXNjYXJkIHByb2dyYW1taW5nIHRoaXMgZm9yIFBJUEUg
QiBhbmQgQyBhbHRvZ2V0aGVyLg0KDQo+PisJCWk5MTVfcmVnX3QgcmVnID0gVFJBTlNfQ0hJQ0tF
TjIocGNoX3RyYW5zY29kZXIpOw0KPj4gCQl1MzIgdmFsOw0KPj4NCj4+IAkJdmFsID0gSTkxNV9S
RUFEKHJlZyk7DQo+Pi0tDQo+PjIuMjMuMA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
