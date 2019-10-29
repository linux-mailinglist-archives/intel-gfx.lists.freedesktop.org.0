Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C37E890D
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 14:07:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCE5A6E2F3;
	Tue, 29 Oct 2019 13:07:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCBFD6E2F2
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 13:07:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 06:07:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,244,1569308400"; d="scan'208";a="211100872"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga001.fm.intel.com with ESMTP; 29 Oct 2019 06:07:40 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 29 Oct 2019 06:07:40 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 29 Oct 2019 06:07:39 -0700
Received: from bgsmsx103.gar.corp.intel.com (10.223.4.130) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 29 Oct 2019 06:07:39 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.228]) by
 BGSMSX103.gar.corp.intel.com ([169.254.4.135]) with mapi id 14.03.0439.000;
 Tue, 29 Oct 2019 18:37:37 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 7/9] drm/i915: Reject ckey+fp16 on skl+
Thread-Index: AQHVffOPo21IWPsFUE6LoQJk1FSoHadxtnAA
Date: Tue, 29 Oct 2019 13:07:36 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F8227DCFC@BGSMSX104.gar.corp.intel.com>
References: <20191008161441.12721-1-ville.syrjala@linux.intel.com>
 <20191008161441.12721-7-ville.syrjala@linux.intel.com>
In-Reply-To: <20191008161441.12721-7-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMThiMGQ1OTEtMWFiNy00Y2Q0LWJmYmQtYWFjMzA3YjJhOTdhIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiclwvMVB6OUVrbjIwNEhBUERqdGxkZXR1VHlqUVVtQStQT0ZjQVdHQlFCOGREKzJHYTM0YVFlcmlhWmFuUXdIWG4ifQ==
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 7/9] drm/i915: Reject ckey+fp16 on skl+
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

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IEludGVsLWdmeCA8aW50ZWwt
Z2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUgU3ly
amFsYQ0KPlNlbnQ6IFR1ZXNkYXksIE9jdG9iZXIgOCwgMjAxOSA5OjQ1IFBNDQo+VG86IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj5TdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0gg
Ny85XSBkcm0vaTkxNTogUmVqZWN0IGNrZXkrZnAxNiBvbiBza2wrDQo+DQo+RnJvbTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4NCj5BY2NvcmRpbmcg
dG8gdGhlIHNwZWMgY29sb3Iga2V5aW5nIGlzIG5vdCBzdXBwb3J0ZWQgd2l0aA0KPmZwMTYgcGl4
ZWwgZm9ybWF0cyBvbiBza2wrLiBSZWplY3QgdGhhdCBjb21iby4NCj4NCj5TaWduZWQtb2ZmLWJ5
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPi0tLQ0K
PiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jIHwgMTggKysrKysr
KysrKysrKysrKysrDQo+IDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspDQo+DQo+ZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMNCj5i
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMNCj5pbmRleCBjYzll
NWM5NjY4YjEuLmQ2Y2Q0NmUzZjczOCAxMDA2NDQNCj4tLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jDQo+KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9zcHJpdGUuYw0KPkBAIC0xNjg5LDYgKzE2ODksMTkgQEAgdmx2X3Nwcml0ZV9j
aGVjayhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gCXJldHVybiAwOw0K
PiB9DQo+DQo+K3N0YXRpYyBib29sIGZvcm1hdF9pc19mcDE2KHUzMiBmb3JtYXQpDQo+K3sNCj4r
CXN3aXRjaCAoZm9ybWF0KSB7DQo+KwljYXNlIERSTV9GT1JNQVRfWFJHQjE2MTYxNjE2RjoNCj4r
CWNhc2UgRFJNX0ZPUk1BVF9YQkdSMTYxNjE2MTZGOg0KPisJY2FzZSBEUk1fRk9STUFUX0FSR0Ix
NjE2MTYxNkY6DQo+KwljYXNlIERSTV9GT1JNQVRfQUJHUjE2MTYxNjE2RjoNCj4rCQlyZXR1cm4g
dHJ1ZTsNCj4rCWRlZmF1bHQ6DQo+KwkJcmV0dXJuIGZhbHNlOw0KPisJfQ0KPit9DQo+Kw0KPiBz
dGF0aWMgaW50IHNrbF9wbGFuZV9jaGVja19mYihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSwNCj4gCQkJICAgICAgY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRl
ICpwbGFuZV9zdGF0ZSkgIHsgQEAgLQ0KPjE3NjAsNiArMTc3MywxMSBAQCBzdGF0aWMgaW50IHNr
bF9wbGFuZV9jaGVja19mYihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPipjcnRjX3N0
YXRlLA0KPiAJCXJldHVybiAtRUlOVkFMOw0KPiAJfQ0KPg0KPisJaWYgKHBsYW5lX3N0YXRlLT5j
a2V5LmZsYWdzICYmIGZvcm1hdF9pc19mcDE2KGZiLT5mb3JtYXQtPmZvcm1hdCkpIHsNCj4rCQlE
Uk1fREVCVUdfS01TKCJDb2xvciBrZXlpbmcgbm90IHN1cHBvcnRlZCB3aXRoIGZwMTYNCj5mb3Jt
YXRzXG4iKTsNCg0KSXQgc2VlbXMgZXZlbiAiSW5kZXhlZCA4IGJpdCBmb3JtYXRzIiBhbHNvIGRv
bid0IHN1cHBvcnQgQ29sb3IgS2V5aW5nLiBNYXkgYmUgeW91IGNhbiBleHRlbmQgaXQgdG8NCmV2
ZW4gQzguDQoNCj4rCQlyZXR1cm4gLUVJTlZBTDsNCj4rCX0NCj4rDQo+IAlyZXR1cm4gMDsNCj4g
fQ0KPg0KPi0tDQo+Mi4yMS4wDQo+DQo+X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18NCj5JbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+SW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZw0KPmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
