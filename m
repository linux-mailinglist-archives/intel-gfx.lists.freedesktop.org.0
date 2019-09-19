Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F85B73F0
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 09:20:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 708276F435;
	Thu, 19 Sep 2019 07:20:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A50F6F7C9
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 07:20:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 00:20:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,522,1559545200"; d="scan'208";a="388197470"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga006.fm.intel.com with ESMTP; 19 Sep 2019 00:20:24 -0700
Received: from fmsmsx118.amr.corp.intel.com (10.18.116.18) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 19 Sep 2019 00:20:24 -0700
Received: from bgsmsx103.gar.corp.intel.com (10.223.4.130) by
 fmsmsx118.amr.corp.intel.com (10.18.116.18) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 19 Sep 2019 00:20:24 -0700
Received: from bgsmsx106.gar.corp.intel.com ([169.254.1.137]) by
 BGSMSX103.gar.corp.intel.com ([169.254.4.16]) with mapi id 14.03.0439.000;
 Thu, 19 Sep 2019 12:50:20 +0530
From: "Singh, Gaurav K" <gaurav.k.singh@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Fix S0ix/S3 suspend stress issue
Thread-Index: AQHVbeUHnjOoO7KuSUubUAEMlDiE4qcxWUwAgAE+4DA=
Date: Thu, 19 Sep 2019 07:20:20 +0000
Message-ID: <224985D05EAF664E807DE19852154A540DC05A34@BGSMSX106.gar.corp.intel.com>
References: <1568786033-1434-1-git-send-email-gaurav.k.singh@intel.com>
 <f4db44faaf4d66e18e19aaecba4f89eb0b3bc6ef.camel@intel.com>
In-Reply-To: <f4db44faaf4d66e18e19aaecba4f89eb0b3bc6ef.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZWMyYjQ2ZWUtOTQ5YS00ODlmLTkxMDgtYTM2NTk3NjMxNDQ0IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiZGFqTnlzSnpKRFpJQUJTUGVnZkxTcnE3b0k4MHdMcVB4ZUFyam1EbzdENmtpNE14ZnBcLzZLNm93Mno5NnRQUFIifQ==
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix S0ix/S3 suspend stress issue
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

DQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBTb3V6YSwgSm9zZSANClNlbnQ6
IFdlZG5lc2RheSwgU2VwdGVtYmVyIDE4LCAyMDE5IDExOjE0IFBNDQpUbzogU2luZ2gsIEdhdXJh
diBLIDxnYXVyYXYuay5zaW5naEBpbnRlbC5jb20+OyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnDQpTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0gW1BBVENIXSBkcm0vaTkxNTogRml4IFMw
aXgvUzMgc3VzcGVuZCBzdHJlc3MgaXNzdWUNCg0KT24gV2VkLCAyMDE5LTA5LTE4IGF0IDExOjIz
ICswNTMwLCBHYXVyYXYgSyBTaW5naCB3cm90ZToNCj4gRHVyaW5nIFMwaXgvUzMgc3VzcGVuZCBz
dHJlc3MgdGVzdCBvbiBDb21ldGxha2UgY2hyb21lYm9vaywgYWZ0ZXIgZmV3IA0KPiBpdGVyYXRp
b25zIHdlIGFyZSBzZWVpbmcgZmFpbHVyZSB3cnQgUFNSIGxpbmsgQ1JDIEVycm9yIGFuZCBzdHJl
c3MgDQo+IHRlc3Qgc3RvcHMuIFRoaXMgUzBpeCB0ZXN0IGlzIGZhaWxpbmcgb25seSB3aGVuIHRo
ZXJlIGlzIGEgQ1JDIA0KPiBtaXNtYXRjaC4gSW4gY2FzZSBvZiBDUkMgbWlzbWF0Y2gsIHBhbmVs
IGdlbmVyYXRlcyBJUlFfSEQgYW5kIHdoZW5ldmVyIA0KPiB0aGVyZSBpcyBDUkMgbWlzbWF0Y2gs
IHdlIGFyZSBkaXNhYmxpbmcgUFNSMiBpbiBkcml2ZXIuDQo+IA0KPiBCeSBub3QgZGlzYWJsaW5n
IFBTUjIgaW4gZHJpdmVyIGFuZCBvbmx5IGJ5IHdyaXRpbmcgMSB0byBjbGVhciBzdGlja3kgDQo+
IGJpdCAwIGluIERQQ0QgMHgyMDA2IGluIHBhbmVsLGlzc3VlIGdvZXMgYXdheS4NCj4gQ29tcGxl
dGVkIDI1MDAgUzBpeC9TMyB0ZXN0IGN5Y2xlcyBvbiBtdWx0aXBsZSBDTUwgY2hyb21lYm9va3Mu
DQo+IA0KPiBBcyBwZXIgRURQIHNwZWMgZm9yIENSQyBtaXNtYXRjaCwgbm90aGluZyBoYXMgYmVl
biBtZW50aW9uZWQgDQo+IGV4cGxpY2l0bHkgZm9yIFNvdXJjZSBkZXZpY2UsIG9ubHkgYnkgd3Jp
dGluZyAxIHRvIGNsZWFyIHN0aWNreSBiaXQgMCANCj4gaW4gRFBDRCAweDIwMDYgaW4gc2luayBp
cyBtZW50aW9uZWQuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBHYXVyYXYgSyBTaW5naCA8Z2F1cmF2
Lmsuc2luZ2hAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMgfCA2ICstLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCA1IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jDQo+IGluZGV4IGIzYzdlZWY1M2JmMy4uNTAyZTI5ZGJiZWE5IDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTEzMjUsMTUg
KzEzMjUsMTEgQEAgdm9pZCBpbnRlbF9wc3Jfc2hvcnRfcHVsc2Uoc3RydWN0IGludGVsX2RwDQo+
ICppbnRlbF9kcCkNCj4gIAlpZiAodmFsICYgRFBfUFNSX1ZTQ19TRFBfVU5DT1JSRUNUQUJMRV9F
UlJPUikNCj4gIAkJRFJNX0RFQlVHX0tNUygiUFNSIFZTQyBTRFAgdW5jb3JyZWN0YWJsZSBlcnJv
ciwgZGlzYWJsaW5nIFBTUlxuIik7DQo+ICAJaWYgKHZhbCAmIERQX1BTUl9MSU5LX0NSQ19FUlJP
UikNCj4gLQkJRFJNX0VSUk9SKCJQU1IgTGluayBDUkMgZXJyb3IsIGRpc2FibGluZyBQU1JcbiIp
Ow0KPiArCQlEUk1fREVCVUdfS01TKCJQU1IgTGluayBDUkMgZXJyb3IsIGNsZWFyaW5nIFBTUiBl
cnJvcg0KPiBzdGF0dXMgRFBDRFxuIik7DQo+ICANCj4gIAlpZiAodmFsICYgfmVycm9ycykNCj4g
IAkJRFJNX0VSUk9SKCJQU1JfRVJST1JfU1RBVFVTIHVuaGFuZGxlZCBlcnJvcnMgJXhcbiIsDQo+
ICAJCQkgIHZhbCAmIH5lcnJvcnMpOw0KPiAtCWlmICh2YWwgJiBlcnJvcnMpIHsNCj4gLQkJaW50
ZWxfcHNyX2Rpc2FibGVfbG9ja2VkKGludGVsX2RwKTsNCj4gLQkJcHNyLT5zaW5rX25vdF9yZWxp
YWJsZSA9IHRydWU7DQo+IC0JfQ0KDQpXaXRoIHRoaXMgY2hhbmdlIHlvdSBhcmUgYnJlYWtpbmcg
Q1JDIGFuZCBhbGwgdGhlIG90aGVyIGVycm9yIGhhbmRsaW5nLg0KDQpJZiBDUkMgZGlkIG5vdCBt
YXRjaCwgaXQgbWVhbnMgdGhlIGltYWdlIHRoYXQgd2FzIHJlY2VpdmVkIGJ5IHNpbmsgZG8gbm90
IG1hdGNoIHRoZSBleHBlY3RlZCwgaXQgY291bGQgaGFwcGVuIGJlY2F1c2Ugb2YgcHJvYmxlbXMg
b24gc2luaywgc291cmNlIG9yIGZsYXQgY2FibGUuDQoNCkl0IGlzIGJldHRlciBoYXZlIHBlcmZl
Y3QgZnJhbWVzIHRoYW4gc2F2ZSBwb3dlciwgc28gdGhpcyBpcyBub3QgYWNjZXB0YWJsZS4NCg0K
DQpUaGFua3MgSm9zZSBmb3IgeW91ciBjb21tZW50cy4gVGhlcmUgaXMgaXNzdWUgd2l0aCBteSB0
aHVuZGVyYmlyZCwgdXNpbmcgb3V0bG9vayBmb3IgdGhlIHJlcGx5Lg0KDQpXZSBkbyBub3Qgc2Vl
IGFueSBzdWNoIENSQyBpc3N1ZSBvbiBJbm5vbHV4IFBTUjIgcGFuZWwgYnV0IHNlZWluZyBvbmx5
IG9uIEFVTyBQU1IyIHBhbmVsLiBOb3cgc2luY2UgdGhpcyBpc3N1ZSBjYW4gaGFwcGVuIGJlY2F1
c2Ugb2YgcHJvYmxlbXMgb24gc2luaywgc291cmNlIG9yIGZsYXQgY2FibGUsICBJIHNlZSB0aGlz
IGFzIGV4cGVjdGVkIGJlaGF2aW9yIGZyb20gZHJpdmVyIHNpZGUuIFBsZWFzZSBjb21tZW50Lg0K
DQoNCldpdGggcmVnYXJkcywNCkdhdXJhdg0KDQoNCj4gIAkvKiBjbGVhciBzdGF0dXMgcmVnaXN0
ZXIgKi8NCj4gIAlkcm1fZHBfZHBjZF93cml0ZWIoJmludGVsX2RwLT5hdXgsIERQX1BTUl9FUlJP
Ul9TVEFUVVMsIHZhbCk7DQo+ICBleGl0Og0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
