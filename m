Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC39396267
	for <lists+intel-gfx@lfdr.de>; Mon, 31 May 2021 16:54:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5FD36E914;
	Mon, 31 May 2021 14:54:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2C966E167
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 May 2021 14:54:37 +0000 (UTC)
IronPort-SDR: c3k6rZmHpzYZgPUeZlI81lUpuX8d6KWYMpKiAoDZsbAAxygkUyh3JM7XtZgym6HkjSbhl8E5Z2
 WfnwnOMyyYOA==
X-IronPort-AV: E=McAfee;i="6200,9189,10001"; a="288984280"
X-IronPort-AV: E=Sophos;i="5.83,237,1616482800"; d="scan'208";a="288984280"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2021 07:54:37 -0700
IronPort-SDR: zA/ODrKSWtWJNruDzxhxIqQWMJZuBBVe+ZFKvr7U3HqNkZum68mQp3VoMkJMJXJ6WfJnu9WTvX
 lCq/U1KkGIDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,237,1616482800"; d="scan'208";a="548771030"
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7])
 by orsmga004.jf.intel.com with ESMTP; 31 May 2021 07:54:36 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 31 May 2021 15:54:35 +0100
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.008;
 Mon, 31 May 2021 20:24:33 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/adl_p: Same slices mask is not same
 Dbuf state
Thread-Index: AQHXUucj9RI/17MdSkiBlvYvpv7IC6r9s3dw
Date: Mon, 31 May 2021 14:54:33 +0000
Message-ID: <6e5e684de71644179b858003e0a2e8a6@intel.com>
References: <20210527110106.21434-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20210527110106.21434-1-stanislav.lisovskiy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adl_p: Same slices mask is not
 same Dbuf state
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBTdGFuaXNs
YXYNCj4gTGlzb3Zza2l5DQo+IFNlbnQ6IFRodXJzZGF5LCBNYXkgMjcsIDIwMjEgNDozMSBQTQ0K
PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwt
Z2Z4XSBbUEFUQ0hdIGRybS9pOTE1L2FkbF9wOiBTYW1lIHNsaWNlcyBtYXNrIGlzIG5vdCBzYW1l
IERidWYNCj4gc3RhdGUNCj4gDQo+IFdlIGN1cnJlbnRseSB0cmVhdCBzYW1lIHNsaWNlIG1hc2sg
YXMgYSBzYW1lIERCdWYgc3RhdGUgYW5kIHNraXAgdXBkYXRpbmcgdGhlIERidWYNCj4gc2xpY2Vz
LCBpZiB3ZSBkZXRlY3QgdGhhdC4NCj4gVGhpcyBpcyB3cm9uZyBhcyBpZiB3ZSBoYXZlIGEgbXVs
dGkgdG8gc2luZ2xlIHBpcGUgY2hhbmdlIG9yIHZpY2UgdmVyc2EsIHRoYXQgd291bGQgYmUNCj4g
dHJlYXRlZCBhcyBhIHNhbWUgRGJ1ZiBzdGF0ZSBhbmQgdGh1cyBubyBjaGFuZ2VzIHJlcXVpcmVk
LCBzbyB3ZSBkb24ndCBnZXQgTWJ1cw0KPiB1cGRhdGVkLCBjYXVzaW5nIGlzc3Vlcy4NCj4gU29s
dXRpb246IGNoZWNrIGFsc28gbWJ1c19qb2luLCBpbiBhZGRpdGlvbiB0byBzbGljZXMgbWFzay4N
Cg0KQ2hhbmdlIGxvb2tzIGdvb2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVt
YS5zaGFua2FyQGludGVsLmNvbT4NCg0KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogU3RhbmlzbGF2IExpc292c2tp
eSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfcG0uYyB8IDYgKysrKy0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+
IGluZGV4IDAwZjNkZWFkMjBhZC4uODA0ZDgzNDg2ZTgxIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3BtLmMNCj4gQEAgLTgwOTMsNyArODA5Myw4IEBAIHZvaWQgaW50ZWxfZGJ1Zl9wcmVfcGxh
bmVfdXBkYXRlKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQ0KPiAgCQlpbnRl
bF9hdG9taWNfZ2V0X29sZF9kYnVmX3N0YXRlKHN0YXRlKTsNCj4gDQo+ICAJaWYgKCFuZXdfZGJ1
Zl9zdGF0ZSB8fA0KPiAtCSAgICBuZXdfZGJ1Zl9zdGF0ZS0+ZW5hYmxlZF9zbGljZXMgPT0gb2xk
X2RidWZfc3RhdGUtPmVuYWJsZWRfc2xpY2VzKQ0KPiArCSAgICAoKG5ld19kYnVmX3N0YXRlLT5l
bmFibGVkX3NsaWNlcyA9PSBvbGRfZGJ1Zl9zdGF0ZS0+ZW5hYmxlZF9zbGljZXMpDQo+ICsJICAg
ICYmIChuZXdfZGJ1Zl9zdGF0ZS0+am9pbmVkX21idXMgPT0gb2xkX2RidWZfc3RhdGUtPmpvaW5l
ZF9tYnVzKSkpDQo+ICAJCXJldHVybjsNCj4gDQo+ICAJV0FSTl9PTighbmV3X2RidWZfc3RhdGUt
PmJhc2UuY2hhbmdlZCk7DQo+IEBAIC04MTEzLDcgKzgxMTQsOCBAQCB2b2lkIGludGVsX2RidWZf
cG9zdF9wbGFuZV91cGRhdGUoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpDQo+
ICAJCWludGVsX2F0b21pY19nZXRfb2xkX2RidWZfc3RhdGUoc3RhdGUpOw0KPiANCj4gIAlpZiAo
IW5ld19kYnVmX3N0YXRlIHx8DQo+IC0JICAgIG5ld19kYnVmX3N0YXRlLT5lbmFibGVkX3NsaWNl
cyA9PSBvbGRfZGJ1Zl9zdGF0ZS0+ZW5hYmxlZF9zbGljZXMpDQo+ICsJICAgICgobmV3X2RidWZf
c3RhdGUtPmVuYWJsZWRfc2xpY2VzID09IG9sZF9kYnVmX3N0YXRlLT5lbmFibGVkX3NsaWNlcykN
Cj4gKwkgICAgJiYgKG5ld19kYnVmX3N0YXRlLT5qb2luZWRfbWJ1cyA9PSBvbGRfZGJ1Zl9zdGF0
ZS0+am9pbmVkX21idXMpKSkNCj4gIAkJcmV0dXJuOw0KPiANCj4gIAlXQVJOX09OKCFuZXdfZGJ1
Zl9zdGF0ZS0+YmFzZS5jaGFuZ2VkKTsNCj4gLS0NCj4gMi4yNC4xLjQ4NS5nYWQwNWEzZDhlNQ0K
PiANCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4g
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdA0KPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
DQo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
