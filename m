Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2AC44032C
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Oct 2021 21:26:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C3F66EA7D;
	Fri, 29 Oct 2021 19:26:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5C4A6EA7D
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Oct 2021 19:26:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10152"; a="294195908"
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="294195908"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 12:26:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="538824496"
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137])
 by fmsmga008.fm.intel.com with ESMTP; 29 Oct 2021 12:26:22 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 20:26:20 +0100
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Fri, 29 Oct 2021 12:26:19 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Thread-Topic: [PATCH 2/2] Revert "drm/i915/display/psr: Do full fetch when
 handling multi-planar formats"
Thread-Index: AQHXxmP0fx7WsiqhfUmEWMgLU4N44qvq4A2A
Date: Fri, 29 Oct 2021 19:26:19 +0000
Message-ID: <dd05fbbb62b836f9862d4627c87662a0edd3c656.camel@intel.com>
References: <20211021101024.13112-1-jouni.hogander@intel.com>
 <20211021101024.13112-3-jouni.hogander@intel.com>
In-Reply-To: <20211021101024.13112-3-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <33C56E50D399C04ABC7163FDD3A58338@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] Revert "drm/i915/display/psr: Do full
 fetch when handling multi-planar formats"
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

T24gVGh1LCAyMDIxLTEwLTIxIGF0IDEzOjEwICswMzAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+IFRoaXMgcmV2ZXJ0cyBjb21taXQgMWY2MWYwNjU1Yjk1ZDViODk1ODkzOTBlNmY4M2M0YTYx
ZDliMWU4ZC4NCj4gDQo+IE5vdyB3ZSBhcmUgc3VwcG9ydGluZyBzZWxlY3RpdmUgZmV0Y2ggZm9y
IGJpcGxhbmFyIGZvcm1hdHMuIFdlIGNhbiByZXZlcnQgV0ENCj4gcGF0Y2ggd2hpY2ggZm9yY2Vk
IHVzaW5nIGZ1bGwgZmV0Y2ggZm9yIGJpcGxhbmFyIGZvcm1hdHMuDQo+IA0KDQpSZXZpZXdlZC1i
eTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gU2ln
bmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+
IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDQgLS0t
LQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggNDY5YmY5NTE3OGYzLi42NTI4MmE1
NDVkYmYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0K
PiBAQCAtMTU3MSw5ICsxNTcxLDYgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hf
cGlwZV9hbGlnbm1lbnQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmMNCj4gICAqIGFs
c28gcGxhbmVzIGFyZSBub3QgdXBkYXRlZCBpZiB0aGV5IGhhdmUgYSBuZWdhdGl2ZSBYDQo+ICAg
KiBwb3NpdGlvbiBzbyBmb3Igbm93IGRvaW5nIGEgZnVsbCB1cGRhdGUgaW4gdGhpcyBjYXNlcw0K
PiAgICoNCj4gLSAqIFRPRE86IFdlIGFyZSBtaXNzaW5nIG11bHRpLXBsYW5hciBmb3JtYXRzIGhh
bmRsaW5nLCB1bnRpbCBpdCBpcw0KPiAtICogaW1wbGVtZW50ZWQgaXQgd2lsbCBzZW5kIGZ1bGwg
ZnJhbWUgdXBkYXRlcy4NCj4gLSAqDQo+ICAgKiBQbGFuZSBzY2FsaW5nIGFuZCByb3RhdGlvbiBp
cyBub3Qgc3VwcG9ydGVkIGJ5IHNlbGVjdGl2ZSBmZXRjaCBhbmQgYm90aA0KPiAgICogcHJvcGVy
dGllcyBjYW4gY2hhbmdlIHdpdGhvdXQgYSBtb2Rlc2V0LCBzbyBuZWVkIHRvIGJlIGNoZWNrIGF0
IGV2ZXJ5DQo+ICAgKiBhdG9taWMgY29tbW1pdC4NCj4gQEAgLTE1ODMsNyArMTU4MCw2IEBAIHN0
YXRpYyBib29sIHBzcjJfc2VsX2ZldGNoX3BsYW5lX3N0YXRlX3N1cHBvcnRlZChjb25zdCBzdHJ1
Y3QgaW50ZWxfcGxhbmVfc3RhdGUNCj4gIAlpZiAocGxhbmVfc3RhdGUtPnVhcGkuZHN0LnkxIDwg
MCB8fA0KPiAgCSAgICBwbGFuZV9zdGF0ZS0+dWFwaS5kc3QueDEgPCAwIHx8DQo+ICAJICAgIHBs
YW5lX3N0YXRlLT5zY2FsZXJfaWQgPj0gMCB8fA0KPiAtCSAgICBwbGFuZV9zdGF0ZS0+aHcuZmIt
PmZvcm1hdC0+bnVtX3BsYW5lcyA+IDEgfHwNCj4gIAkgICAgcGxhbmVfc3RhdGUtPnVhcGkucm90
YXRpb24gIT0gRFJNX01PREVfUk9UQVRFXzApDQo+ICAJCXJldHVybiBmYWxzZTsNCj4gIA0KDQo=
