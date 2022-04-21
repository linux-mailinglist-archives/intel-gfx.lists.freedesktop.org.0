Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 546A350A55A
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Apr 2022 18:26:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 935D610E0AC;
	Thu, 21 Apr 2022 16:26:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0609410E0AC
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Apr 2022 16:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650558369; x=1682094369;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=+LVmmSgIRkiUYRJbFcorSakSQhRGZaMbYvqpQv1dbmk=;
 b=Q24+QafihfFhe7nep5JdhdjSyvzDXUcNl8WiXoPoOAd4ncZXTYznhbfH
 tX6ypaFe66ng16AiLbrEoEHA0egyI96/16y4kgTY9akTxVUxMXNkwxu8T
 gqzqF7IrJJHETsVJV+qBrPAq9geRQANRr++1bBdAWGfUenTbGClWlHZ02
 GnStM5lH+eAySRJ5MWdxG6EMqn5mTtBa3HiGHWRsLe0SxoPSvchziMIOY
 PJ9AjXsZE9Bg1u1Nd4B2G9aasx02MsoBG9dkHMW0Zc8USUkzQTPBFMIM/
 eaCvVR9Loo3vWlNT/laRNDTeZM8+xy5nOenffo2bJfUDM4ZiE2g1EEFEE w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10324"; a="263874132"
X-IronPort-AV: E=Sophos;i="5.90,279,1643702400"; d="scan'208";a="263874132"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2022 09:26:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,279,1643702400"; d="scan'208";a="533417818"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga002.jf.intel.com with ESMTP; 21 Apr 2022 09:26:08 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 21 Apr 2022 09:26:07 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2308.027;
 Thu, 21 Apr 2022 09:26:07 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH] drm/i915: Fix SEL_FETCH_PLANE_*(PIPE_B+) register
 addresses
Thread-Index: AQHYVZv9nqiS+L3RjkashARhnQ1hX6z7A58A
Date: Thu, 21 Apr 2022 16:26:07 +0000
Message-ID: <dfe47e5aae29f2895baa9d319a7e5d7f6345c4fd.camel@intel.com>
References: <20220421162221.2261895-1-imre.deak@intel.com>
In-Reply-To: <20220421162221.2261895-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <757C572EC7848B489D3061DF1A349698@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix SEL_FETCH_PLANE_*(PIPE_B+)
 register addresses
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
Cc: "stable@vger.kernel.org" <stable@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIyLTA0LTIxIGF0IDE5OjIyICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEZp
eCB0eXBvIGluIHRoZSBfU0VMX0ZFVENIX1BMQU5FX0JBU0VfMV9CIHJlZ2lzdGVyIGJhc2UgYWRk
cmVzcy4NCj4gDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNv
dXphQGludGVsLmNvbT4NCg0KPiBGaXhlczogYTU1MjNlMmZmMDc0YTUgKCJkcm0vaTkxNTogQWRk
IFBTUjIgc2VsZWN0aXZlIGZldGNoIHJlZ2lzdGVycyIpDQo+IFJlZmVyZW5jZXM6IGh0dHBzOi8v
Z2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvLS9pc3N1ZXMvNTQwMA0KPiBDYzogSm9z
w6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IENjOiA8c3RhYmxl
QHZnZXIua2VybmVsLm9yZz4gIyB2NS45Kw0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGlt
cmUuZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaCB8IDIgKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlv
bigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+IGluZGV4IDA0ZDg2Y2I2MjI0ZmMu
LjBjYTY1MTdiNDU5NWEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiBAQCAtNTE3
Miw3ICs1MTcyLDcgQEANCj4gICNkZWZpbmUgX1NFTF9GRVRDSF9QTEFORV9CQVNFXzZfQQkJMHg3
MDk0MA0KPiAgI2RlZmluZSBfU0VMX0ZFVENIX1BMQU5FX0JBU0VfN19BCQkweDcwOTYwDQo+ICAj
ZGVmaW5lIF9TRUxfRkVUQ0hfUExBTkVfQkFTRV9DVVJfQQkJMHg3MDg4MA0KPiAtI2RlZmluZSBf
U0VMX0ZFVENIX1BMQU5FX0JBU0VfMV9CCQkweDcwOTkwDQo+ICsjZGVmaW5lIF9TRUxfRkVUQ0hf
UExBTkVfQkFTRV8xX0IJCTB4NzE4OTANCj4gIA0KPiAgI2RlZmluZSBfU0VMX0ZFVENIX1BMQU5F
X0JBU0VfQShwbGFuZSkgX1BJQ0socGxhbmUsIFwNCj4gIAkJCQkJICAgICBfU0VMX0ZFVENIX1BM
QU5FX0JBU0VfMV9BLCBcDQoNCg==
