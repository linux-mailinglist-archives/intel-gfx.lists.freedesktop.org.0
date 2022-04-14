Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF511501962
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 19:00:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53E3310E165;
	Thu, 14 Apr 2022 17:00:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFD4710E165
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Apr 2022 17:00:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649955642; x=1681491642;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=IXt7WVV7ytGzu6/fLLgkJbZhRjRKkAXBqcDZqyow67k=;
 b=eqx+M/kktBZzzQ11dr0P5gyBmLt5rPg+lAedSkXlI+W+umeYlnx2qhsR
 +IwACr407MuCF8ZPNwGg2k45urtKgNWcNJfC1IoYkB3E+S1iokW60CsUm
 oOSaxvNsMnrkllS4hoJ1uLtE7FNlm9QAHaE7qR+FGdWGDUL5kJsDho0oB
 jqIVKUDRaVMjgqZ5cYZ45sOKBrsIVXUw8bNJZ00uwMtmr21sQyep80nVI
 fqbBDOYuWWAaHsYg33hlcTzKU3Zkl3UbTFNGWLhPX8oz9DSYWN6Wfh4QP
 nex7MGJOb+Y9V4XJtLtET6xezC6vNgqhNfGaNqyPfO8U2BkwyVCfd752v A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="263155030"
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="263155030"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 10:00:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="725436933"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga005.jf.intel.com with ESMTP; 14 Apr 2022 10:00:38 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Apr 2022 10:00:36 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Apr 2022 10:00:35 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Thu, 14 Apr 2022 10:00:35 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/adl-n: Differentiate ADLP and ADLN
 steppings
Thread-Index: AQHYTycszFJiKRwubUmDgcsKtrT35KzwGcwA
Date: Thu, 14 Apr 2022 17:00:35 +0000
Message-ID: <c85c05cc02941d7bc572008d2dd4b51d140d3e81.camel@intel.com>
References: <20220413105827.2346571-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20220413105827.2346571-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <1D0B533368EE3B46A165F0469492B0FE@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adl-n: Differentiate ADLP and ADLN
 steppings
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

T24gV2VkLCAyMDIyLTA0LTEzIGF0IDE2OjI4ICswNTMwLCBUZWphcyBVcGFkaHlheSB3cm90ZToN
Cj4gQURMLU4gYW5kIEFETC1QIHN0ZXBwaW5nIGFyZSBkaWZmZXJlbnQsIHRodXMgd2UNCj4gbmVl
ZCB0byBhZGQgY2hlY2sgZm9yIEFETC1OIGluIElTX0FETFBfRElTUExBWV9TVEVQKCkuDQo+IA0K
PiBTaWduZWQtb2ZmLWJ5OiBUZWphcyBVcGFkaHlheSA8dGVqYXNrdW1hcnguc3VyZW5kcmFrdW1h
ci51cGFkaHlheUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuaCB8IDIgKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxl
dGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+IGluZGV4IDkyNzQ0MTdjZDg3
YS4uNTFmMmExNGIwZGNhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gQEAgLTEx
NjcsNyArMTE2Nyw3IEBAIElTX1NVQlBMQVRGT1JNKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1LA0KPiAgCSBJU19HUkFQSElDU19TVEVQKF9faTkxNSwgc2luY2UsIHVudGlsKSkN
Cj4gIA0KPiAgI2RlZmluZSBJU19BRExQX0RJU1BMQVlfU1RFUChfX2k5MTUsIHNpbmNlLCB1bnRp
bCkgXA0KPiAtCShJU19BTERFUkxBS0VfUChfX2k5MTUpICYmIFwNCj4gKwkoSVNfQUxERVJMQUtF
X1AoX19pOTE1KSAmJiAhSVNfQURMUF9OKF9faTkxNSkgJiZcDQo+ICAJIElTX0RJU1BMQVlfU1RF
UChfX2k5MTUsIHNpbmNlLCB1bnRpbCkpDQoNCldoZXJlIGlzIHRoZSBBRExOX0RJU1BMQVlfU1RF
UCBjaGVja3MgdGhlbj8NCg0KTXkgdW5kZXJzdGFuZGluZyBpdCB0aGF0IEFETE4gaXMgQURMUyBH
VCArIEFETFAgZGlzcGxheSwgc28gdGhpcyBsb29rcyB3cm9uZy4NCg0KQWxzbyBSUEwgaXMgYWxy
ZWFkeSBhIGRlcml2YXRlZCBwbGF0Zm9ybSBvZiBBREwsIHNvIFJQTCBoYXMgc3VicGxhdGZvcm0g
Yml0IDAgYW5kIGFuZCBJTlRFTF9TVUJQTEFURk9STV9OIGlzIHVzaW5nIHRoZSBzYW1lIGJpdCBz
byBhbGRlcmxha2UtTiB3aWxsDQp1c2UgdGhlIHNhbWUgY29kZSBwYXRocyBhcyBSUEwgd2hhdCBp
cyBhZ2FpbiB3cm9uZy4NCg0KPiAgDQo+ICAjZGVmaW5lIElTX0FETFBfR1JBUEhJQ1NfU1RFUChf
X2k5MTUsIHNpbmNlLCB1bnRpbCkgXA0KDQo=
