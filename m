Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CAAC4C2CD7
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Feb 2022 14:17:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AF1E10E133;
	Thu, 24 Feb 2022 13:17:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C27E010E133
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Feb 2022 13:17:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645708660; x=1677244660;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=hDOitm+A2+xippfWwIZg40BMkKK232E7gBovrXqzvKA=;
 b=hOKkGnP2DsHNUTmhRNzE3p2YnJvNpY4jDRbQ8/NWqwsUYTlcN9CyBcsu
 llPZV3Hwpn+V+HWDnui/N5D6e2Kqa75tyQNDn/7AukmsTzVQbiEcKyvlH
 3nqAIGrm8EIE2UqW5z6xZlQeUBHHUoC1M6GMNMPM+I/p/F1wZOOTjER8H
 i83F32WK0dHj8vpzWYPo9jKZZwrayWVxpnshUhSgqnGAJZLpzTRs3bcKt
 Nodx3WTJ4aJDM85G1ZA3tBaB4sC+4MhjKq2iL53k1R0LP9t7SVtztbUGi
 xM3+DNwLOiDHrTMhyb5LsIGRn3ucQJiBIBoRfjJ2CX9mNSiUImN4Tw28z A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="249811841"
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="249811841"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 05:17:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="491597743"
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7])
 by orsmga003.jf.intel.com with ESMTP; 24 Feb 2022 05:17:39 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 24 Feb 2022 13:17:37 +0000
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2308.020;
 Thu, 24 Feb 2022 05:17:36 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v2] drm/i915/display: Use unions per platform in
 intel_dpll_hw_state
Thread-Index: AQHYKPdwZTA6M71vkUCDakEBJ5pa1KyjBFeAgAAyPwA=
Date: Thu, 24 Feb 2022 13:17:35 +0000
Message-ID: <bcd7d64a3c2fcecd78efbfc4a711721fa9e32e16.camel@intel.com>
References: <20220223205551.813749-1-jose.souza@intel.com>
 <Yhdb0UMM8gskEDmt@intel.com>
In-Reply-To: <Yhdb0UMM8gskEDmt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <AAAFDAE733E53D48879196DF12CDD1EC@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Use unions per
 platform in intel_dpll_hw_state
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIyLTAyLTI0IGF0IDEyOjIwICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgRmViIDIzLCAyMDIyIGF0IDEyOjU1OjUxUE0gLTA4MDAsIEpvc8OpIFJvYmVy
dG8gZGUgU291emEgd3JvdGU6DQo+IDxzbmlwPg0KPiA+ICsJdW5pb24gew0KPiA+ICsJCS8qIGlj
bCsgVEMgKi8NCj4gPiArCQlzdHJ1Y3Qgew0KPiA+ICsJCQl1MzIgbWdfcmVmY2xraW5fY3RsOw0K
PiA+ICsJCQl1MzIgbWdfY2xrdG9wMl9jb3JlY2xrY3RsMTsNCj4gPiArCQkJdTMyIG1nX2Nsa3Rv
cDJfaHNjbGtjdGw7DQo+ID4gKwkJCXUzMiBtZ19wbGxfZGl2MDsNCj4gPiArCQkJdTMyIG1nX3Bs
bF9kaXYxOw0KPiA+ICsJCQl1MzIgbWdfcGxsX2xmOw0KPiA+ICsJCQl1MzIgbWdfcGxsX2ZyYWNf
bG9jazsNCj4gPiArCQkJdTMyIG1nX3BsbF9zc2M7DQo+ID4gKwkJCXUzMiBtZ19wbGxfYmlhczsN
Cj4gPiArCQkJdTMyIG1nX3BsbF90ZGNfY29sZHN0X2JpYXM7DQo+ID4gKwkJCXUzMiBtZ19wbGxf
Ymlhc19tYXNrOw0KPiA+ICsJCQl1MzIgbWdfcGxsX3RkY19jb2xkc3RfYmlhc19tYXNrOw0KPiA+
ICsJCX07DQo+ID4gKw0KPiA+ICsJCS8qIGJ4dCAqLw0KPiA+ICsJCXN0cnVjdCB7DQo+ID4gKwkJ
CS8qIGJ4dCAqLw0KPiA+ICsJCQl1MzIgZWJiMDsNCj4gPiArCQkJdTMyIGViYjQ7DQo+ID4gKwkJ
CXUzMiBwbGwwOw0KPiA+ICsJCQl1MzIgcGxsMTsNCj4gPiArCQkJdTMyIHBsbDI7DQo+ID4gKwkJ
CXUzMiBwbGwzOw0KPiA+ICsJCQl1MzIgcGxsNjsNCj4gPiArCQkJdTMyIHBsbDg7DQo+ID4gKwkJ
CXUzMiBwbGw5Ow0KPiA+ICsJCQl1MzIgcGxsMTA7DQo+ID4gKwkJCXUzMiBwY3NkdzEyOw0KPiA+
ICsJCX07DQo+IA0KPiBXYXNuJ3QgdGhlcmUgc29tZSBmdW5ueSBjb21waWxlciBidWcgYXJvdW5k
IGFub255bW91cyB1bmlvbnM/DQo+IGdpdCBsb2cgLS1ncmVwPSdhbm9uLip1bmlvbicgc2VlbXMg
dG8gYWdyZWUuIFBsZWFzZSBkb3VibGUgY2hlY2sNCj4gdGhhdCBzdHVmZiB0byBtYWtlIHN1cmUg
dGhpcyBpcyBhY3R1YWxseSBzYWZlLg0KDQpJIGRvbid0IHNlZSBhbnkgcGF0Y2ggcmVmZXJyaW5n
IHRvIGNvbXBpbGVyIGlzc3VlcyB3aXRoICdnaXQgbG9nIC0tZ3JlcD0nYW5vbi4qdW5pb24nLCB3
aGF0IEkgc2VlIGlzIG90aGVyIHN1YnN5c3RlbXMgbWFraW5nIHVzZSBvZiBpdCB0b28uDQpDYW4g
eW91IHNoYXJlIHRoZSBjb21taXQgaGFzaCB0aGF0IHlvdSBhcmUgcmVmZXJyaW5nIHRvPw0KDQoN
Cj4gDQoNCg==
