Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FBE4573E63
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jul 2022 22:58:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56C801129A5;
	Wed, 13 Jul 2022 20:58:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD31711B459
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jul 2022 20:58:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657745930; x=1689281930;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=5D+L/MsFZn9/DNV59Rot8gFj0TQPwYPuYGHsM/rQbJQ=;
 b=BmmMihg7onJ4ZuO/ks7EAF87T05bB9rbBPESYABZ+zvB1+7Zlay9M9eP
 8M/GiZTtKxAfHeua9ye42AcsaAurAbr6ZbqofYF+WM1wdZvzgwa9a1Lu9
 ODKtiG3iLDiOEw0n44sXGO/ZE3/7AU7rGi2+IroITGLQgaLvxFFkD5zaH
 YSs6Zlx1fzhLR03NlAD6Py9pwuumBKNeMbeZm1amzaQm5OEFuiDUAeT3k
 CHIdp/ub1Lu7SzYWIqzZH8Eu3S5SnLOHLHu3JLU18Wr7TxtnqstxGYyFT
 U8onOfzD4qIuE5fDTNRETzTGsW0CK63tXjM9QM5j27JrYfxqZ6sOx9ouh Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10407"; a="286087224"
X-IronPort-AV: E=Sophos;i="5.92,269,1650956400"; d="scan'208";a="286087224"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2022 13:58:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,269,1650956400"; d="scan'208";a="772391966"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga005.jf.intel.com with ESMTP; 13 Jul 2022 13:58:50 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 13 Jul 2022 13:58:49 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 13 Jul 2022 13:58:49 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Wed, 13 Jul 2022 13:58:49 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915/display: Ensure PSR gets
 disabled if no encoders in new state
Thread-Index: AQHYlRgFO3FmAOI2Yk64CAzr2N34+K19QdoA
Date: Wed, 13 Jul 2022 20:58:49 +0000
Message-ID: <cafdb8204ea02b0059e0ef4facafcdd338a3ab2b.camel@intel.com>
References: <20220711111750.881552-1-jouni.hogander@intel.com>
In-Reply-To: <20220711111750.881552-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <45C4CDEFA6A97F40A609886535315623@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Ensure PSR gets
 disabled if no encoders in new state
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIyLTA3LTExIGF0IDE0OjE3ICswMzAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+IEN1cnJlbnRseSBQU1IgaXMgbGVmdCBlbmFibGVkIHdoZW4gYWxsIHBsYW5lcyBhcmUgZGlz
YWJsZWQgaWYgdGhlcmUNCj4gaXMgbm8gYXR0YWNoZWQgZW5jb2RlciBpbiBuZXcgc3RhdGUuIFRo
aXMgc2VlbXMgdG8gYmUgY2F1c2luZyBGSUZPDQo+IHVuZGVycnVucy4NCg0KV2hhdCBpcyB0aGUg
Y2FzZSB3ZXJlIHRoZXJlIGlzIG5vIGF0dGFjaGVkIGVuY29kZXIgYW5kIGFjdGl2ZV9wbGFuZXMg
PiAwPw0KDQo+IA0KPiBGaXggdGhpcyBieSBjaGVja2luZyBpZiBlbmNvZGVyIGV4aXN0cyBpbiBu
ZXcgY3J0YyBzdGF0ZSBhbmQgZGlzYWJsZQ0KPiBQU1IgaWYgaXQgZG9lc24ndC4NCj4gDQo+IHYy
OiBVbmlmeSBkaXNhYmxlIGxvZ2ljIHdpdGggZXhpc3RpbmcNCj4gDQo+IENjOiBNaWthIEthaG9s
YSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiBSZXBvcnRlZC1ieTogU3RhbmlzbGF2IExpc292
c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEpv
dW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5
OiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4NCj4g
LS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNTMgKysr
KysrKysrKysrKystLS0tLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMzEgaW5zZXJ0aW9ucygr
KSwgMjIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMNCj4gaW5kZXggZTZhODcwNjQxY2QyLi45MDU5OWRkMWNiMWIgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtMTg2MywzNiArMTg2
Myw0NSBAQCB2b2lkIGludGVsX3Bzcl9wcmVfcGxhbmVfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9t
aWNfc3RhdGUgKnN0YXRlLA0KPiAgCQkJCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQ0KPiAgew0K
PiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShzdGF0ZS0+YmFzZS5k
ZXYpOw0KPiAtCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlID0NCj4g
LQkJaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7DQo+IC0Jc3Ry
dWN0IGludGVsX2VuY29kZXIgKmVuY29kZXI7DQo+ICsJc3RydWN0IGludGVsX2NydGNfc3RhdGUg
Km5ld19jcnRjX3N0YXRlLCAqb2xkX2NydGNfc3RhdGU7DQo+ICsJaW50IGk7DQo+ICANCj4gIAlp
ZiAoIUhBU19QU1IoaTkxNSkpDQo+ICAJCXJldHVybjsNCj4gIA0KPiAtCWZvcl9lYWNoX2ludGVs
X2VuY29kZXJfbWFza193aXRoX3BzcihzdGF0ZS0+YmFzZS5kZXYsIGVuY29kZXIsDQo+IC0JCQkJ
CSAgICAgY3J0Y19zdGF0ZS0+dWFwaS5lbmNvZGVyX21hc2spIHsNCj4gLQkJc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChlbmNvZGVyKTsNCj4gLQkJc3RydWN0IGlu
dGVsX3BzciAqcHNyID0gJmludGVsX2RwLT5wc3I7DQo+IC0JCWJvb2wgbmVlZHNfdG9fZGlzYWJs
ZSA9IGZhbHNlOw0KPiArCWZvcl9lYWNoX29sZG5ld19pbnRlbF9jcnRjX2luX3N0YXRlKHN0YXRl
LCBjcnRjLCBvbGRfY3J0Y19zdGF0ZSwNCj4gKwkJCQkJICAgIG5ld19jcnRjX3N0YXRlLCBpKSB7
DQo+ICsJCXN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyOw0KPiArCQl1MzIgb2xkX25ld19l
bmNvZGVyX21hc2sgPSBvbGRfY3J0Y19zdGF0ZS0+dWFwaS5lbmNvZGVyX21hc2sgfA0KPiArCQkJ
bmV3X2NydGNfc3RhdGUtPnVhcGkuZW5jb2Rlcl9tYXNrOw0KPiAgDQo+IC0JCW11dGV4X2xvY2so
JnBzci0+bG9jayk7DQo+ICsJCWZvcl9lYWNoX2ludGVsX2VuY29kZXJfbWFza193aXRoX3Bzcihz
dGF0ZS0+YmFzZS5kZXYsIGVuY29kZXIsDQo+ICsJCQkJCQkgICAgIG9sZF9uZXdfZW5jb2Rlcl9t
YXNrKSB7DQo+ICsJCQlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gZW5jX3RvX2ludGVsX2Rw
KGVuY29kZXIpOw0KPiArCQkJc3RydWN0IGludGVsX3BzciAqcHNyID0gJmludGVsX2RwLT5wc3I7
DQo+ICsJCQlib29sIG5lZWRzX3RvX2Rpc2FibGUgPSBmYWxzZTsNCj4gIA0KPiAtCQkvKg0KPiAt
CQkgKiBSZWFzb25zIHRvIGRpc2FibGU6DQo+IC0JCSAqIC0gUFNSIGRpc2FibGVkIGluIG5ldyBz
dGF0ZQ0KPiAtCQkgKiAtIEFsbCBwbGFuZXMgd2lsbCBnbyBpbmFjdGl2ZQ0KPiAtCQkgKiAtIENo
YW5naW5nIGJldHdlZW4gUFNSIHZlcnNpb25zDQo+IC0JCSAqLw0KPiAtCQluZWVkc190b19kaXNh
YmxlIHw9IGludGVsX2NydGNfbmVlZHNfbW9kZXNldChjcnRjX3N0YXRlKTsNCj4gLQkJbmVlZHNf
dG9fZGlzYWJsZSB8PSAhY3J0Y19zdGF0ZS0+aGFzX3BzcjsNCj4gLQkJbmVlZHNfdG9fZGlzYWJs
ZSB8PSAhY3J0Y19zdGF0ZS0+YWN0aXZlX3BsYW5lczsNCj4gLQkJbmVlZHNfdG9fZGlzYWJsZSB8
PSBjcnRjX3N0YXRlLT5oYXNfcHNyMiAhPSBwc3ItPnBzcjJfZW5hYmxlZDsNCj4gKwkJCW11dGV4
X2xvY2soJnBzci0+bG9jayk7DQo+ICANCj4gLQkJaWYgKHBzci0+ZW5hYmxlZCAmJiBuZWVkc190
b19kaXNhYmxlKQ0KPiAtCQkJaW50ZWxfcHNyX2Rpc2FibGVfbG9ja2VkKGludGVsX2RwKTsNCj4g
KwkJCS8qDQo+ICsJCQkgKiBSZWFzb25zIHRvIGRpc2FibGU6DQo+ICsJCQkgKiAtIFBTUiBkaXNh
YmxlZCBpbiBuZXcgc3RhdGUNCj4gKwkJCSAqIC0gQWxsIHBsYW5lcyB3aWxsIGdvIGluYWN0aXZl
DQo+ICsJCQkgKiAtIENoYW5naW5nIGJldHdlZW4gUFNSIHZlcnNpb25zDQo+ICsJCQkgKiAtIEVu
Y29kZXIgaXNuJ3QgcHJlc2VudCBpbiBuZXcgbWFzaw0KPiArCQkJICovDQo+ICsJCQluZWVkc190
b19kaXNhYmxlIHw9IGludGVsX2NydGNfbmVlZHNfbW9kZXNldChuZXdfY3J0Y19zdGF0ZSk7DQo+
ICsJCQluZWVkc190b19kaXNhYmxlIHw9ICFuZXdfY3J0Y19zdGF0ZS0+aGFzX3BzcjsNCj4gKwkJ
CW5lZWRzX3RvX2Rpc2FibGUgfD0gIW5ld19jcnRjX3N0YXRlLT5hY3RpdmVfcGxhbmVzOw0KPiAr
CQkJbmVlZHNfdG9fZGlzYWJsZSB8PSBuZXdfY3J0Y19zdGF0ZS0+aGFzX3BzcjIgIT0gcHNyLT5w
c3IyX2VuYWJsZWQ7DQo+ICsJCQluZWVkc190b19kaXNhYmxlIHw9ICEobmV3X2NydGNfc3RhdGUt
PnVhcGkuZW5jb2Rlcl9tYXNrICYNCj4gKwkJCQkJICAgICAgZHJtX2VuY29kZXJfbWFzaygmKGVu
Y29kZXIpLT5iYXNlKSk7DQo+ICANCj4gLQkJbXV0ZXhfdW5sb2NrKCZwc3ItPmxvY2spOw0KPiAr
CQkJaWYgKHBzci0+ZW5hYmxlZCAmJiBuZWVkc190b19kaXNhYmxlKQ0KPiArCQkJCWludGVsX3Bz
cl9kaXNhYmxlX2xvY2tlZChpbnRlbF9kcCk7DQo+ICsNCj4gKwkJCW11dGV4X3VubG9jaygmcHNy
LT5sb2NrKTsNCj4gKwkJfQ0KPiAgCX0NCj4gIH0NCj4gIA0KDQo=
