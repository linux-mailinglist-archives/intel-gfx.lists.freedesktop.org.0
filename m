Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F470B2039F
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Aug 2025 11:31:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEFF610E3C8;
	Mon, 11 Aug 2025 09:31:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=didiglobal.com header.i=@didiglobal.com header.b="TPJLkk3c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx9.didiglobal.com (mx9.didiglobal.com [111.202.70.124])
 by gabe.freedesktop.org (Postfix) with SMTP id E535610E3C8
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Aug 2025 09:31:01 +0000 (UTC)
Received: from mail.didiglobal.com (unknown [10.79.71.38])
 by mx9.didiglobal.com (MailData Gateway V2.8.8) with ESMTPS id 5AAD5198EB986C; 
 Mon, 11 Aug 2025 17:30:14 +0800 (CST)
Received: from BJ02-ACTMBX-07.didichuxing.com (10.79.65.14) by
 BJ03-ACTMBX-02.didichuxing.com (10.79.71.38) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.10; Mon, 11 Aug 2025 17:30:55 +0800
Received: from BJ03-ACTMBX-07.didichuxing.com (10.79.71.34) by
 BJ02-ACTMBX-07.didichuxing.com (10.79.65.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.10; Mon, 11 Aug 2025 17:30:55 +0800
Received: from BJ03-ACTMBX-07.didichuxing.com ([fe80::2e1a:dd47:6d25:287e]) by
 BJ03-ACTMBX-07.didichuxing.com ([fe80::2e1a:dd47:6d25:287e%7]) with
 mapi id 15.02.1748.010; Mon, 11 Aug 2025 17:30:55 +0800
X-MD-Sfrom: chentaotao@didiglobal.com
X-MD-SrcIP: 10.79.71.38
From: =?gb2312?B?s8LMzszOIFRhb3RhbyBDaGVu?= <chentaotao@didiglobal.com>
To: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>, "tursulin@ursulin.net"
 <tursulin@ursulin.net>, "airlied@gmail.com" <airlied@gmail.com>,
 "simona@ffwll.ch" <simona@ffwll.ch>
CC: "oe-lkp@lists.linux.dev" <oe-lkp@lists.linux.dev>, "lkp@intel.com"
 <lkp@intel.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "brauner@kernel.org" <brauner@kernel.org>, 
 "oliver.sang@intel.com" <oliver.sang@intel.com>,
 =?gb2312?B?s8LMzszOIFRhb3RhbyBDaGVu?= <chentaotao@didiglobal.com>
Subject: [PATCH 1/2] drm/i915: set O_LARGEFILE in __create_shmem()
Thread-Topic: [PATCH 1/2] drm/i915: set O_LARGEFILE in __create_shmem()
Thread-Index: AQHcCqKjb8Z7QwCk60q7byo9M7F7ng==
Date: Mon, 11 Aug 2025 09:30:55 +0000
Message-ID: <20250811093050.38930-1-chentaotao@didiglobal.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.79.64.102]
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=didiglobal.com;
 s=2025; t=1754904618;
 bh=tbYqQ6dZ2UtNUjKP1xA+5JsyeFVSnoKQ9wVK4d6xk9U=;
 h=From:To:CC:Subject:Date:Message-ID:Content-Type;
 b=TPJLkk3ce9eO10IlTEyeS/cPeR1CTfjA8zYCUaNaQkWcwsfv4iSXEvizyvaMQIxLV
 MwiIUbLh7H37Uk/dY/GVKOFaPvakeWH1ErfzqmA85hCTmnhZV7gmWmuISqsboD+E2k
 ZiJyye10z0rZpabbEfnDdlsAyrf4tECyNc8K2uKg=
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

RnJvbTogVGFvdGFvIENoZW4gPGNoZW50YW90YW9AZGlkaWdsb2JhbC5jb20+DQoNCldpdGhvdXQg
T19MQVJHRUZJTEUsIGZpbGUtPmZfb3AtPndyaXRlX2l0ZXIgY2FsbHMNCmdlbmVyaWNfd3JpdGVf
Y2hlY2tfbGltaXRzKCksIHdoaWNoIGVuZm9yY2VzIGEgMkdCIChNQVhfTk9OX0xGUykgbGltaXQs
DQpjYXVzaW5nIC1FRkJJRyBvbiBsYXJnZSB3cml0ZXMuDQoNCkluIHNobWVtX3B3cml0ZSgpLCB0
aGlzIGVycm9yIGlzIGxhdGVyIG1hc2tlZCBhcyAtRUlPIGR1ZSB0byB0aGUgZXJyb3INCmhhbmRs
aW5nIG9yZGVyLCBsZWFkaW5nIHRvIGlndCBmYWlsdXJlcyBsaWtlIGdlbjlfZXhlY19wYXJzZShi
Yi1sYXJnZSkuDQoNClNldCBPX0xBUkdFRklMRSBpbiBfX2NyZWF0ZV9zaG1lbSgpIHRvIHByZXZl
bnQgLUVGQklHIG9uIGxhcmdlIHdyaXRlcy4NCg0KUmVwb3J0ZWQtYnk6IGtlcm5lbCB0ZXN0IHJv
Ym90IDxvbGl2ZXIuc2FuZ0BpbnRlbC5jb20+DQpDbG9zZXM6IGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL29lLWxrcC8yMDI1MDgwODEwMjkuMzQzMTkyZWMtbGtwQGludGVsLmNvbQ0KRml4ZXM6IDA0
ODgzMmEzZjQwMCAoImRybS9pOTE1OiBSZWZhY3RvciBzaG1lbV9wd3JpdGUoKSB0byB1c2Uga2lv
Y2IgYW5kIHdyaXRlX2l0ZXIiKQ0KU2lnbmVkLW9mZi1ieTogVGFvdGFvIENoZW4gPGNoZW50YW90
YW9AZGlkaWdsb2JhbC5jb20+DQotLS0NCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fc2htZW0uYyB8IDUgKysrKysNCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspDQoN
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc2htZW0uYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zaG1lbS5jDQppbmRleCBlM2QxODg0
NTVmNjcuLjJiNTNhYWQ5MTVmNSAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9zaG1lbS5jDQorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fc2htZW0uYw0KQEAgLTUxNCw2ICs1MTQsMTEgQEAgc3RhdGljIGludCBfX2NyZWF0ZV9zaG1l
bShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCiAJaWYgKElTX0VSUihmaWxwKSkNCiAJ
CXJldHVybiBQVFJfRVJSKGZpbHApOw0KIA0KKwkvKg0KKwkgKiBQcmV2ZW50IC1FRkJJRyBieSBh
bGxvd2luZyBsYXJnZSB3cml0ZXMgYmV5b25kIE1BWF9OT05fTEZTIG9uIHNobWVtDQorCSAqIG9i
amVjdHMgYnkgc2V0dGluZyBPX0xBUkdFRklMRS4NCisJICovDQorCWZpbHAtPmZfZmxhZ3MgfD0g
T19MQVJHRUZJTEU7DQogCW9iai0+ZmlscCA9IGZpbHA7DQogCXJldHVybiAwOw0KIH0NCi0tIA0K
Mi4zNC4xDQo=
