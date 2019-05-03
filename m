Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8399D1312B
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 17:29:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0A286E7F3;
	Fri,  3 May 2019 15:29:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 032CC6E7F3
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2019 15:29:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 May 2019 08:29:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,426,1549958400"; d="scan'208";a="147903286"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by orsmga003.jf.intel.com with ESMTP; 03 May 2019 08:29:29 -0700
Received: from fmsmsx121.amr.corp.intel.com (10.18.125.36) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 3 May 2019 08:29:29 -0700
Received: from bgsmsx106.gar.corp.intel.com (10.223.43.196) by
 fmsmsx121.amr.corp.intel.com (10.18.125.36) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 3 May 2019 08:29:29 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.147]) by
 BGSMSX106.gar.corp.intel.com ([169.254.1.212]) with mapi id 14.03.0415.000;
 Fri, 3 May 2019 20:59:28 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/2] drm/i915: Move the PIPEMISC write the correct place
Thread-Index: AQHVASJ/FPU2QpOefUupm7fZ6VNTuaZZgrkw
Date: Fri, 3 May 2019 15:29:28 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F81FECC82@BGSMSX104.gar.corp.intel.com>
References: <20190502200607.14504-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20190502200607.14504-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNDRmMmMwOTAtYjA5Mi00NjJlLWI3MTYtY2ZlMDkzYjQyMmY0IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiZ2pvVjZNRkFQZEZKdmVFWm9Ta3JjOWp5ZE5XWTA2XC9Ca0Z5ZTBWWnR4bWc2MmNWZEx5dXdXQVdWVThKVWtpQ2IifQ==
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Move the PIPEMISC write the
 correct place
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

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IFZpbGxlIFN5cmphbGEgW21h
aWx0bzp2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbV0NCj5TZW50OiBGcmlkYXksIE1heSAz
LCAyMDE5IDE6MzYgQU0NCj5UbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPkNj
OiBTaGFua2FyLCBVbWEgPHVtYS5zaGFua2FyQGludGVsLmNvbT47IFNoYXJtYSwgU2hhc2hhbmsN
Cj48c2hhc2hhbmsuc2hhcm1hQGludGVsLmNvbT4NCj5TdWJqZWN0OiBbUEFUQ0ggMS8yXSBkcm0v
aTkxNTogTW92ZSB0aGUgUElQRU1JU0Mgd3JpdGUgdGhlIGNvcnJlY3QgcGxhY2UNCj4NCj5Gcm9t
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPg0KPkkg
ZnVtYmxlZCB0aGUgUElQRU1JU0Mgd3JpdGUgaW50byB0aGUgd3JvbmcgcGxhY2UuIEl0IG9ubHkg
Z2V0cyBjYWxsZWQgZm9yIGZhc3RzZXRzLCBidXQNCj5zaW5jZSB2YWx1ZSBuZWVkcyB0byBiZSB1
cGRhdGVkIGJhc2VkIG9uIHRoZSBzZXQgb2YgYWN0aXZlIHBsYW5lcyBpdCBuZWVkcyB0byBiZSBk
b25lDQo+Zm9yIGFsbCBwbGFuZSB1cGRhdGVzLg0KPk1vdmUgaXQgdG8gdGhlIGNvcnJlY3Qgc3Bv
dC4NCj4NCj5UaGUgc3ltcHRvbXMgaW5jbHVkZSBTRFIgcGxhbmVzIG5ldmVyIHNob3dpbmcgdXAg
aWYgYSBwcmV2aW91cyBtb2Rlc2V0L2Zhc3RzZXQgbGVmdA0KPnRoZSBwaXBlIGluIEhEUiBtb2Rl
LiBUaGlzIHdhcyBpbW1lZGlhdGVseSBvYnZpb3VzIHdoZW4gcnVubmluZyB0aGUga21zX3BsYW5l
DQo+cGl4ZWwgZm9ybWF0IHRlc3RzLiBVbmZvcnR1bmF0ZWx5IHRoZSB0ZXN0IGRpZG4ndCByZWFs
aXplIGl0IHdhcyBzY2FubmluZyBvdXQgcHVyZSBibGFjaw0KPmFsbCB0aGUgdGltZSBhbmQgZGVj
bGFyZWQgc3VjY2VzcyBhbnl3YXkuDQoNClllYWguIFNEUiBQbGFuZXMgd2lsbCBub3QgZXZlbiBi
ZSBjb25zaWRlcmVkIGZvciBibGVuZGluZyBhbmQgcmVzdWx0IHdpbGwgYmUNCkJsYWNrIG91dHB1
dC4gDQoNCkxvb2tzIG9rIG5vdy4gDQpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFu
a2FyQGludGVsLmNvbT4NCg0KDQo+Q2M6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5j
b20+DQo+Q2M6IFNoYXNoYW5rIFNoYXJtYSA8c2hhc2hhbmsuc2hhcm1hQGludGVsLmNvbT4NCj5G
aXhlczogMDliMjU4MTJkYjEwICgiZHJtL2k5MTU6IEVuYWJsZSBwaXBlIEhEUiBtb2RlIG9uIElD
TCBpZiBvbmx5IEhEUiBwbGFuZXMgYXJlDQo+dXNlZCIpDQo+U2lnbmVkLW9mZi1ieTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4tLS0NCj4gZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jIHwgNiArKystLS0NCj4gMSBmaWxlIGNoYW5n
ZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4NCj5kaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jDQo+Yi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9kaXNwbGF5LmMNCj5pbmRleCBkZDY1ZDdjNTIxYzEuLjI4MDQyYTE2MDg0ZCAxMDA2
NDQNCj4tLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMNCj4rKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMNCj5AQCAtNDA5OSw5ICs0MDk5LDYg
QEAgc3RhdGljIHZvaWQgaW50ZWxfdXBkYXRlX3BpcGVfY29uZmlnKGNvbnN0IHN0cnVjdA0KPmlu
dGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YQ0KPiAJCQlpcm9ubGFrZV9wZml0X2Rpc2FibGUo
b2xkX2NydGNfc3RhdGUpOw0KPiAJfQ0KPg0KPi0JaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0g
OSB8fCBJU19CUk9BRFdFTEwoZGV2X3ByaXYpKQ0KPi0JCWJkd19zZXRfcGlwZW1pc2MobmV3X2Ny
dGNfc3RhdGUpOw0KPi0NCj4gCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKQ0KPiAJCWlj
bF9zZXRfcGlwZV9jaGlja2VuKGNydGMpOw0KPiB9DQo+QEAgLTE0MTU2LDYgKzE0MTUzLDkgQEAg
c3RhdGljIHZvaWQgaW50ZWxfYmVnaW5fY3J0Y19jb21taXQoc3RydWN0DQo+aW50ZWxfYXRvbWlj
X3N0YXRlICpzdGF0ZSwNCj4gCWVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gOSkNCj4g
CQlza2xfZGV0YWNoX3NjYWxlcnMobmV3X2NydGNfc3RhdGUpOw0KPg0KPisJaWYgKElOVEVMX0dF
TihkZXZfcHJpdikgPj0gOSB8fCBJU19CUk9BRFdFTEwoZGV2X3ByaXYpKQ0KPisJCWJkd19zZXRf
cGlwZW1pc2MobmV3X2NydGNfc3RhdGUpOw0KPisNCj4gb3V0Og0KPiAJaWYgKGRldl9wcml2LT5k
aXNwbGF5LmF0b21pY191cGRhdGVfd2F0ZXJtYXJrcykNCj4gCQlkZXZfcHJpdi0+ZGlzcGxheS5h
dG9taWNfdXBkYXRlX3dhdGVybWFya3Moc3RhdGUsDQo+LS0NCj4yLjIxLjANCg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
