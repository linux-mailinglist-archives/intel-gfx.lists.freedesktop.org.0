Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B00A61786E4
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 01:15:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CADA26EA91;
	Wed,  4 Mar 2020 00:15:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06E996EA91
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2020 00:15:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 16:15:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,511,1574150400"; d="scan'208";a="263400637"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga004.fm.intel.com with ESMTP; 03 Mar 2020 16:15:01 -0800
Received: from fmsmsx162.amr.corp.intel.com (10.18.125.71) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 3 Mar 2020 16:15:01 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.129]) by
 fmsmsx162.amr.corp.intel.com ([169.254.5.20]) with mapi id 14.03.0439.000;
 Tue, 3 Mar 2020 16:15:00 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/4] drm/i915: Don't check uv_wm in
 skl_plane_wm_equals()
Thread-Index: AQHV7nay4mhjrIsqOEi+j9bW914RIKg4HVQA
Date: Wed, 4 Mar 2020 00:14:59 +0000
Message-ID: <29f71fd480162da2b6aee73c2519c0b416a3805b.camel@intel.com>
References: <20200228203552.30273-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200228203552.30273-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.241]
Content-ID: <9274E5B34D8AC34C9E31D9C121333053@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Don't check uv_wm in
 skl_plane_wm_equals()
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

T24gRnJpLCAyMDIwLTAyLTI4IGF0IDIyOjM1ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gVGhlIGhhcmR3YXJlIG5ldmVyIHNlZXMgdGhlIHV2X3dtIHZhbHVlcyAoYXBhcnQgZnJv
bQ0KPiB1dl93bS5taW5fZGRiX2FsbG9jIGFmZmVjdGluZyB0aGUgZGRiIGFsbG9jYXRpb24pLiBU
aHVzIHRoZXJlDQo+IGlzIG5vIHBvaW50IGluIGNvbXBhcmluZyB1dl93bSB0byBkZXRlcm1pbmUg
aWYgd2UgbmVlZCB0bw0KPiByZXByb2dyYW0gdGhlIHdhdGVybWFyayByZWdpc3RlcnMuIFNvIGxl
dCdzIGNoZWNrIG9ubHkgdGhlDQo+IHJnYi95IHdhdGVybWFyayBpbiBza2xfcGxhbmVfd21fZXF1
YWxzKCkuIEJ1dCBsZXQncyBsZWF2ZQ0KPiBhIGNvbW1lbnQgYmVoaW5kIHNvIHRoYXQgdGhlIG5l
eHQgcGVyc29uIHJlYWRpbmcgdGhpcyBkb2Vzbid0DQo+IGdldCBhcyBjb25mdXNlZCBhcyBJIGRp
ZCB3aGVuIEkgYWRkZWQgdGhpcyBjaGVjay4NCj4gDQo+IElmIHRoZSBkZGIgYWxsb2NhdGlvbiBl
bmRzIHVwIGNoYW5naW5nIGR1ZSB0byB1dl93bQ0KPiBza2xfZGRiX2FkZF9hZmZlY3RlZF9wbGFu
ZXMoKSB0YWtlcyBjYXJlIG9mIGFkZGluZyB0aGUgcGxhbmUNCj4gdG8gdGhlIHN0YXRlLg0KPiAN
Cj4gVE9ETzogd2Ugc2hvdWxkIHBlcmhhcHMganVzdCBlbGltaW5hdGUgdXZfd20gZnJvbSB0aGUg
c3RhdGUNCj4gYW5kIHNpbXBseSB0cmFjayB0aGUgbWluX2RkYl9hbGxvYyBmb3IgdXYgaW5zdGVh
ZC4NCj4gDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXph
QGludGVsLmNvbT4NCg0KPiBDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNv
bT4NCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIHwg
OCArKysrKystLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5j
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYw0KPiBpbmRleCAzNDU0MjllNWFk
NDUuLjM5Mjk5ODExYjY1MCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfcG0uYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+IEBAIC01
NDAwLDggKzU0MDAsMTIgQEAgc3RhdGljIGJvb2wgc2tsX3BsYW5lX3dtX2VxdWFscyhzdHJ1Y3QN
Cj4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ICAJaW50IGxldmVsLCBtYXhfbGV2ZWwg
PSBpbGtfd21fbWF4X2xldmVsKGRldl9wcml2KTsNCj4gIA0KPiAgCWZvciAobGV2ZWwgPSAwOyBs
ZXZlbCA8PSBtYXhfbGV2ZWw7IGxldmVsKyspIHsNCj4gLQkJaWYgKCFza2xfd21fbGV2ZWxfZXF1
YWxzKCZ3bTEtPndtW2xldmVsXSwgJndtMi0NCj4gPndtW2xldmVsXSkgfHwNCj4gLQkJICAgICFz
a2xfd21fbGV2ZWxfZXF1YWxzKCZ3bTEtPnV2X3dtW2xldmVsXSwgJndtMi0NCj4gPnV2X3dtW2xl
dmVsXSkpDQo+ICsJCS8qDQo+ICsJCSAqIFdlIGRvbid0IGNoZWNrIHV2X3dtIGFzIHRoZSBoYXJk
d2FyZSBkb2Vzbid0DQo+IGFjdHVhbGx5DQo+ICsJCSAqIHVzZSBpdC4gSXQgb25seSBnZXRzIHVz
ZWQgZm9yIGNhbGN1bGF0aW5nIHRoZQ0KPiByZXF1aXJlZA0KPiArCQkgKiBkZGIgYWxsb2NhdGlv
bi4NCj4gKwkJICovDQo+ICsJCWlmICghc2tsX3dtX2xldmVsX2VxdWFscygmd20xLT53bVtsZXZl
bF0sICZ3bTItDQo+ID53bVtsZXZlbF0pKQ0KPiAgCQkJcmV0dXJuIGZhbHNlOw0KPiAgCX0NCj4g
IA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
