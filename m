Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D3810D523
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 12:47:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A8E06E0F2;
	Fri, 29 Nov 2019 11:47:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39A006E0F2
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 11:47:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Nov 2019 03:47:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,257,1571727600"; d="scan'208";a="207318821"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga008.fm.intel.com with ESMTP; 29 Nov 2019 03:47:35 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 29 Nov 2019 03:47:35 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 29 Nov 2019 03:47:34 -0800
Received: from bgsmsx151.gar.corp.intel.com (10.224.48.42) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 29 Nov 2019 03:47:34 -0800
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.80]) by
 BGSMSX151.gar.corp.intel.com ([169.254.3.142]) with mapi id 14.03.0439.000;
 Fri, 29 Nov 2019 17:17:32 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Use the correct PCH transcoder for LPT/WPT
 in intel_sanitize_frame_start_delay()
Thread-Index: AQHVphkP+9VddmHbfU2HnMBfHLktbKeiB3iQ
Date: Fri, 29 Nov 2019 11:47:31 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F8230105D@BGSMSX104.gar.corp.intel.com>
References: <20191128182358.14477-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20191128182358.14477-1-ville.syrjala@linux.intel.com>
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

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IFZpbGxlIFN5cmphbGEgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPlNlbnQ6IFRodXJzZGF5LCBOb3ZlbWJlciAy
OCwgMjAxOSAxMTo1NCBQTQ0KPlRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+
Q2M6IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPlN1YmplY3Q6IFtQQVRD
SF0gZHJtL2k5MTU6IFVzZSB0aGUgY29ycmVjdCBQQ0ggdHJhbnNjb2RlciBmb3IgTFBUL1dQVCBp
bg0KPmludGVsX3Nhbml0aXplX2ZyYW1lX3N0YXJ0X2RlbGF5KCkNCj4NCj5Gcm9tOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPg0KPkxQVC9XUFQgb25s
eSBoYXZlIFBDSCB0cmFuc2NvZGVyIEEuIE1ha2Ugc3VyZSB3ZSBwb2tlIGF0IGl0cyBjaGlja2Vu
IHJlZ2lzdGVyDQo+aW5zdGVhZCBvZiBzb21lIG5vbi1leGlzdGVudCByZWdpc3RlciB3aGVuIEZE
SSBpcyBiZWluZyBkcml2ZW4gYnkgcGlwZSBCIG9yIEMuDQoNCkNoYW5nZSBsb29rcyBnb29kIHRv
IG1lLg0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQoN
Cj5DYzogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCj5TaWduZWQtb2ZmLWJ5
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPi0tLQ0K
PiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDMgKystDQo+
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4NCj5kaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj5i
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+aW5kZXggNTNk
YzMxMGE1ZjZkLi5mOTlkYmMzZDk2OTYgMTAwNjQ0DQo+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPkBAIC0xNzI3Miw3ICsxNzI3Miw4IEBAIHN0YXRpYyB2
b2lkIGludGVsX3Nhbml0aXplX2ZyYW1lX3N0YXJ0X2RlbGF5KGNvbnN0IHN0cnVjdA0KPmludGVs
X2NydGNfc3RhdGUgKmNydGMNCj4gCQl2YWwgfD0gVFJBTlNfRlJBTUVfU1RBUlRfREVMQVkoMCk7
DQo+IAkJSTkxNV9XUklURShyZWcsIHZhbCk7DQo+IAl9IGVsc2Ugew0KPi0JCWk5MTVfcmVnX3Qg
cmVnID0gVFJBTlNfQ0hJQ0tFTjIoY3J0Yy0+cGlwZSk7DQo+KwkJZW51bSBwaXBlIHBjaF90cmFu
c2NvZGVyID0gaW50ZWxfY3J0Y19wY2hfdHJhbnNjb2RlcihjcnRjKTsNCj4rCQlpOTE1X3JlZ190
IHJlZyA9IFRSQU5TX0NISUNLRU4yKHBjaF90cmFuc2NvZGVyKTsNCj4gCQl1MzIgdmFsOw0KPg0K
PiAJCXZhbCA9IEk5MTVfUkVBRChyZWcpOw0KPi0tDQo+Mi4yMy4wDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
