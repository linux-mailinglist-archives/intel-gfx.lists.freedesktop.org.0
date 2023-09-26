Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F6A7AF367
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 20:58:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7A6E10E428;
	Tue, 26 Sep 2023 18:58:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D523110E152
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Sep 2023 18:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695754700; x=1727290700;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=1TQYZMOHIpEdReFENNHAnFEqawxNqIe3UHO7ec5qUOQ=;
 b=QYWkBaXxXOM6JyVq5qGcDg6DukE3dsZW1LF17OQ0SonpJcS7VHVsMKe9
 B3YBHvb6KXrZ5GXHAXngxr6ddb1kfN7oSPneYAy+sq4Vxy7tyvwjQ2diV
 k+Td0miFNDSypOv2mA1QhSotEzFYAq0k8zW4lPh59FhZAl0f8HHd4fItv
 W0g8rIrh673OaszFFYkYv+nKOfPYGlboKulOlDT3iSle7WuHdwYeYMLvQ
 xhxA8P9+aSJlXCxFvnFpYel2F0cZvlQras8Ylk2iq30rvt6LceJ9f1fyz
 MS2iSDbi61gQ4ArGBf1221Eb3fwlRPzMyL9EFZteA7VnE8KdlTdBjRC0o Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="448140268"
X-IronPort-AV: E=Sophos;i="6.03,178,1694761200"; d="scan'208";a="448140268"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 11:58:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="819139707"
X-IronPort-AV: E=Sophos;i="6.03,178,1694761200"; d="scan'208";a="819139707"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Sep 2023 11:58:19 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 26 Sep 2023 11:58:19 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 26 Sep 2023 11:58:18 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 26 Sep 2023 11:58:18 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 26 Sep 2023 11:58:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZMRamQCxFA/Y5tNTFt36TeNP7yatGQmA7fwOcvKGDC+uZIfke5PXsYvpG3DO+KWwYPkCUzWK3hJw9XE0FSfmUzahdyzEtAO244sdqFVXjiL7IQ6vJocdPCk7QDdf9nsIAvZE6zdhshUaqJbJsfKQvn4kUH8fjcCO7vOhZ3s33bKULstNh7OUjce82oAS1fDOikQg2OpEgkf2J8hoLGDf2YmJsJmEBR+O79DXUBq6P5TVlkmAEcF5CGKxXZsbjy0TJss7gZmZCed3oEXpN15D8QVwltrhUBdm+EdJGrDbczrNbxsBWMIoAmG/v/0IUEzghPjsfOtzQEers1u20mi83Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1TQYZMOHIpEdReFENNHAnFEqawxNqIe3UHO7ec5qUOQ=;
 b=DILNRcMycoXtlhbM7cyvWYHZya/RYZfkMlqzSxHHnSVU++9snrEJoQnAqd5xw840b3bvtMryJh4+g9rSQqiDF7Bs6jGA43rohQvV1Uf7fkk5zlgVqw4R5kXmceDMZddZ3OvSULOyEpl4ZcJNvMH3kymirpRkmcya5sPMxacSl9dKMXvejS0mgqBlIZTiYoErQ/NyeNBXZz8rdnMCqAAVZES6mFoLAe82WuuYDWu2aCQ7sRGZyhUYZrs58uJ4H1UXy3CuyYCPrYtAviTgvHnpEXbqj5G+u6J3axn0RYK1ExLXDov1kxA3QzjC1ZBevif+Jr5u3qZezzn2oht7GdgyXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH7PR11MB6748.namprd11.prod.outlook.com (2603:10b6:510:1b6::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6792.27; Tue, 26 Sep 2023 18:58:16 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4%3]) with mapi id 15.20.6813.027; Tue, 26 Sep 2023
 18:58:16 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v2] drm/i915/display: Add a wrapper function for vga decode
 setup
Thread-Index: AQHZ73uS6ynOnIqy70+V+p8DBDRpCrAs8LCAgAAAZQCAAIaZIA==
Date: Tue, 26 Sep 2023 18:58:16 +0000
Message-ID: <DM4PR11MB636043760913BE20B180B839F4C3A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230925065014.1252784-1-uma.shankar@intel.com>
 <87h6nhkxw8.fsf@intel.com> <87edilkxtv.fsf@intel.com>
In-Reply-To: <87edilkxtv.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH7PR11MB6748:EE_
x-ms-office365-filtering-correlation-id: 5c59c591-5219-4776-a966-08dbbec28afc
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WtiftRfNug6t/X9MOWZy40tU/O3Mf/8UyrwdjWNKCEgMpGD4FsxSmQUkVAJpQmKgiqEd7ffvJ8y0MrbCHO0si93lHJjvMIrl3t3Q1EGGXN1r92Kewm42gzGq2IMInj5/vYgEhymQBRfe1tmnC3W+kqGSzoP13WHP1wRtQ7fOknNFPlzkGpHc0Ew+mDJi9ineJTE3QkOTVKHWsxBIr5EBN6HjJqCPtH6j3iMY5afB9DW8G6aqYFkIqKBjBcz8KnV83AAJClhmwu7CRIJm4/9RSZN5cp8fm3nD463MI/J7eY0NBOxckB2hf67x2eEz8zaKIp2yJ0+WoKc4VuEQjqixKFKpr787UZbS8Gpm7KHz1tlv4iiIJgexuu8Bb3Nt2Tx3Y0o52dJMCPrCvD9t8uKv0Ck468bdtuJWRc69OEPbXfo4Imi5Au7S4bzsw6cSD43ecd9V+go9bqAYEvAYxucGnUqkiAcMH2hF6+QbE9o/McTXEdvmsHFy+UDqPDATt0uN/bGtHJkGyYQctCAauLzXa28rNNXLV6CQQbPZYD78ZlavOdFWTIVfJp/NxC7/CyOl0GzaQJ8dZIHXGzTXUgKevEPViWfp0kkOn6oPEMViidnYW3oj68Hc1Im3h4AB6f/B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(396003)(346002)(136003)(376002)(230922051799003)(186009)(1800799009)(451199024)(26005)(53546011)(86362001)(82960400001)(122000001)(33656002)(38070700005)(9686003)(38100700002)(7696005)(110136005)(66446008)(8936002)(66476007)(316002)(478600001)(66556008)(55016003)(76116006)(5660300002)(8676002)(6506007)(64756008)(66946007)(52536014)(71200400001)(83380400001)(41300700001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VU1OTnQrOXRVaVdlbjJPUWhYdXE4RkFZYmxwcVpjUS96aFhVaWxRNUNGdEdC?=
 =?utf-8?B?L1B4bTJncTN1THJMVi9uaGVvQnpSZldTV2tZS3A3T1NtSEVjWElpN016MjZ4?=
 =?utf-8?B?OXEyQXMwWjJ2cHUzYmFwUTJtalFLUmlma3drOTNzZXlRWGJQa3VFOTdMS2lm?=
 =?utf-8?B?S00zWEFSSVAwcE9ucS9IaTlBQ09rZ3pQTERyU29PY3lVSHFYOTJzLzZBc0xJ?=
 =?utf-8?B?dDdWUDdqckE3SU1rYWRFM2NrUWxoc0VmaEhEUnEyUUV3akRGR3V5RG52ZStr?=
 =?utf-8?B?ellOOEVrclVjN1dDWGpFQnR1bnRDdExYOEhEN095cTkydXNoNjRhU2FudG1m?=
 =?utf-8?B?aVNKOWhqNVM1RWJvVzVIbUFDQ2FocHRvMzBCTStuWTVvTkpaTmM4NjFvK05H?=
 =?utf-8?B?M3NydTBWMFUxVFNCa0xHbzVZUUVJSVlkbGNiUERtTmp3ejRhRHJaWktNKzNI?=
 =?utf-8?B?U0NtM2djNlRvZ2xIeXhpemd3L2g2RS9lMHZOMDF5V1MxaGZOeEo1V1pRWmZP?=
 =?utf-8?B?a013THlveTJldm41WVlFcUFKWnA3QVJYYWdwbDh3dnZPanFtd3RFVzIrVjlD?=
 =?utf-8?B?TEtKWnlyS0xlbUNnTWMya0hGZkc4eW42Q0xtUUNMNzN6OCs1dHhnWThpakdL?=
 =?utf-8?B?Y2N5ZVBNaUY1dzc0ajNEY21zbXlNMHpndTVXRHRpQ3lmVVJHZVNqMndTdjJS?=
 =?utf-8?B?NDViT2N1NmtON1J4Zk45R1BWcEcwVTc1R0VxN0krNFp2VXJxNDNPWmlXSTBH?=
 =?utf-8?B?VE80QklvWTVERVZVRzFmU0QreEdoNUlSMFFSWjdKNE5WalZ2dVM3dmRtcTVs?=
 =?utf-8?B?MzNSNllRRk5CWGhIRGNPOVBhclBkZis3M1JoZUZXMzV1RkcvRHE0SWVuOGRG?=
 =?utf-8?B?YWVsK3BjVksvMlMyMzRjdFBhQzlVdkRMTkpzbWFPZ1VKeXpEMGptNzdaQ1ZF?=
 =?utf-8?B?RG1MK05NQmh4SVJERDBiTEVOWXdlOHpIeEZLT084WVlVS2ovRGlXVU43MGdi?=
 =?utf-8?B?eGlUTnBBMHRNSFdUblNvS1NDZklpRHlKNXdpK2RiRzNzVVNNczJPOW1GRUVN?=
 =?utf-8?B?TTh0dnBSSWpPc0hSTTFzV1FIT2JmQjFHM0paUFd6SFlyUE10SWtFVDRDVVZU?=
 =?utf-8?B?bG1iV1pMMllRQ2MzbG5GOUgvR2VtRGVaSmtTVEtKYlByemlVbStDR2srYW5E?=
 =?utf-8?B?Z2cycTFOcUNEQ08rdTJxTEFQQlNuR3RzVlhCNG91bVR0Y3ZDNnovT1dIRFU5?=
 =?utf-8?B?Y2JlN2JSeWV1djlkbUZ1WGhRa3dMNmVwNTFOLzJSUDF0VHNQaFJyMWN3M0VS?=
 =?utf-8?B?S01FUGV6cDc2VVFYM2VlZXNLeWtpWWxmOHBvaWI0RGl1aXNOTXkxZmNmWWV1?=
 =?utf-8?B?aXI1eHJHdkw5N01waDV4V2dlQUVDbTlsaWpwalJQM3lUd0YwWW0va2YxSkEz?=
 =?utf-8?B?Rlh4aTlzUk1aV3JjRzl1c1JiVUV3YkRzelBvYUpYUVZjWEkwUVFLMzJwL1VZ?=
 =?utf-8?B?WUpDdHlmSlhOZmJLdmVpbXlHSHphbVVCSUI5ejBKTVMwdU01YVdKWDRZcHpW?=
 =?utf-8?B?RWpRVzlTL0pxRHFnTXFtOENZR2RXRG1IWWNVeS8rS3NQRHV1RGNzTmNhcXQx?=
 =?utf-8?B?aFN3dzRkSHFmbUdVdGtWdG1mZnBjTm1vbm8zWDltRER0OS9DODQ2U0ZtQnMz?=
 =?utf-8?B?eFpadjF3MzM5SVVObWVuR1NzQmRPTHdlMmR2VVEzQmQrTVRoZ09EUi9ZUDVD?=
 =?utf-8?B?bjg5NnE5NTZsdi9lNno0aDJQYlFLWjhLYi9xUzlZRUMvSXZiZ1RMWW9JbDht?=
 =?utf-8?B?MFg3VmxiYXBUSmhYNGhHZVF4VWphdHUvZ3NwKzFmdDFDS2swNFNCZm84eXRi?=
 =?utf-8?B?cEVobXI4aHJoYzMwQ2pZVDR5TTZMZU1NalZuUzJUWXY1d0tvUktSN0gwYUxV?=
 =?utf-8?B?dndMaUJQTXE1Si9QQW5MV2piaGxqZ2RIWTFlNFVtUEhzNlEyRHIxblp6aXMz?=
 =?utf-8?B?OXFORDhvNTZYR3hZRTZaR3crWFdNSTI2SjBzWjNiRGhRbERWa21RNHJMZVBK?=
 =?utf-8?B?bStmeUdUL3Z2aDdMUEJTVVZna1V1VkpJQ3FzK3d3NG91NnJiemxqY1F1YXZz?=
 =?utf-8?Q?4gAuNx1CiGeh7InOZ5iuHPxsa?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c59c591-5219-4776-a966-08dbbec28afc
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2023 18:58:16.7393 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: evaX8FxHLNfcfR/CBA6CD54En/QDR9uk6S+hBebctS9NHlURqCv1zB6/k1IdcUWBPN5iKTz2lKqIzjh6H9dm8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6748
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [v2] drm/i915/display: Add a wrapper function for
 vga decode setup
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmlrdWxhLCBKYW5pIDxq
YW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIFNlcHRlbWJlciAyNiwgMjAy
MyA0OjI2IFBNDQo+IFRvOiBTaGFua2FyLCBVbWEgPHVtYS5zaGFua2FyQGludGVsLmNvbT47IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IFNoYW5rYXIsIFVtYSA8dW1hLnNo
YW5rYXJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW3YyXSBkcm0vaTkxNS9kaXNwbGF5OiBB
ZGQgYSB3cmFwcGVyIGZ1bmN0aW9uIGZvciB2Z2EgZGVjb2RlIHNldHVwDQo+IA0KPiBPbiBUdWUs
IDI2IFNlcCAyMDIzLCBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPiB3cm90ZToN
Cj4gPiBPbiBNb24sIDI1IFNlcCAyMDIzLCBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwu
Y29tPiB3cm90ZToNCj4gPj4gU29tZSBvZiB0aGUgVkdBIGZ1bmN0aW9uYWxpdHkgaXMgbm90IG5l
ZWRlZCBieSB0aGUgcHJvcG9zZWQgSW50ZWwgWGUNCj4gPj4gZHJpdmVyLCB3aGlsZSB0aGlzIHdp
bGwgYmUgdXRpbGl6ZWQgYnkgaTkxNS4NCj4gPj4gQWRkaW5nIGEgd3JhcHBlciBmdW5jdGlvbiBm
b3IgVkdBIGRlY29kZSBzZXR1cC4NCj4gDQo+IEkgZ3Vlc3MgIndyYXBwZXIgZnVuY3Rpb24iIGlz
IG5vdyBhIG1pc25vbWVyPyBUaGVyZSdzIG5vIHdyYXBwaW5nIGhlcmU/DQoNClllYWgsIHdpbGwg
cmUtcGhyYXNlIGl0Lg0KDQpSZWdhcmRzLA0KVW1hIFNoYW5rYXINCg0KPiA+DQo+ID4gU28sIHRo
aXMgZHVwbGljYXRlcyBpbnRlbF92Z2Ffc2V0X2RlY29kZSgpIHdpdGhvdXQgcmVtb3ZpbmcgdGhl
IG9sZA0KPiA+IG9uZS4gSXMgdGhhdCB0aGUgaW50ZW50aW9uPw0KPiA+DQo+ID4gSSBndWVzcyB0
aGUgaWRlYSBoZXJlIGlzIHRoYXQgeGUgZG9lc24ndCBidWlsZCBpbnRlbF9nbWNoLCBzbyB5b3Ug
Y2FuDQo+ID4gYWRkIGEgbm9wIHZlcnNpb24gdGhlcmU/DQo+ID4NCj4gPiBCUiwNCj4gPiBKYW5p
Lg0KPiA+DQo+ID4NCj4gPg0KPiA+Pg0KPiA+PiB2MjogQWRkcmVzc2VkIEphbmkgTmlrdWxhJ3Mg
cmV2aWV3IGNvbW1lbnRzLg0KPiA+Pg0KPiA+PiBTaWduZWQtb2ZmLWJ5OiBVbWEgU2hhbmthciA8
dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPiA+PiAtLS0NCj4gPj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfdmdhLmMgfCAgMiAtLQ0KPiA+PiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvc29jL2ludGVsX2dtY2guYyAgICB8IDE0ICsrKysrKysrKysrKysrDQo+ID4+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9zb2MvaW50ZWxfZ21jaC5oICAgIHwgIDIgKysNCj4gPj4gIDMgZmlsZXMg
Y2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gPj4NCj4gPj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmdhLmMNCj4gPj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZnYS5jDQo+ID4+IGluZGV4IDI4
NmEwYmRkMjhjNi4uMGY2NWNlMTE1MDM1IDEwMDY0NA0KPiA+PiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZnYS5jDQo+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfdmdhLmMNCj4gPj4gQEAgLTMsMTEgKzMsOSBAQA0KPiA+PiAgICog
Q29weXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9yYXRpb24NCj4gPj4gICAqLw0KPiA+Pg0KPiA+
PiAtI2luY2x1ZGUgPGxpbnV4L3BjaS5oPg0KPiA+PiAgI2luY2x1ZGUgPGxpbnV4L3ZnYWFyYi5o
Pg0KPiA+Pg0KPiA+PiAgI2luY2x1ZGUgPHZpZGVvL3ZnYS5oPg0KPiA+PiAtDQo+ID4+ICAjaW5j
bHVkZSAic29jL2ludGVsX2dtY2guaCINCj4gPj4NCj4gPj4gICNpbmNsdWRlICJpOTE1X2Rydi5o
Ig0KPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc29jL2ludGVsX2dtY2gu
Yw0KPiA+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NvYy9pbnRlbF9nbWNoLmMNCj4gPj4gaW5k
ZXggNDljN2ZiMTZlOTM0Li5mMzJlOWY3ODc3MGEgMTAwNjQ0DQo+ID4+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L3NvYy9pbnRlbF9nbWNoLmMNCj4gPj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvc29jL2ludGVsX2dtY2guYw0KPiA+PiBAQCAtNSw2ICs1LDcgQEANCj4gPj4NCj4gPj4g
ICNpbmNsdWRlIDxsaW51eC9wY2kuaD4NCj4gPj4gICNpbmNsdWRlIDxsaW51eC9wbnAuaD4NCj4g
Pj4gKyNpbmNsdWRlIDxsaW51eC92Z2FhcmIuaD4NCj4gPj4NCj4gPj4gICNpbmNsdWRlIDxkcm0v
ZHJtX21hbmFnZWQuaD4NCj4gPj4gICNpbmNsdWRlIDxkcm0vaTkxNV9kcm0uaD4NCj4gPj4gQEAg
LTE2NywzICsxNjgsMTYgQEAgaW50IGludGVsX2dtY2hfdmdhX3NldF9zdGF0ZShzdHJ1Y3QNCj4g
Pj4gZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgYm9vbCBlbmFibGVfZGVjb2RlKQ0KPiA+Pg0KPiA+
PiAgCXJldHVybiAwOw0KPiA+PiAgfQ0KPiA+PiArDQo+ID4+ICt1bnNpZ25lZCBpbnQgaW50ZWxf
Z21jaF92Z2Ffc2V0X2RlY29kZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwgYm9vbA0KPiA+PiArZW5h
YmxlX2RlY29kZSkgew0KPiA+PiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gcGRl
dl90b19pOTE1KHBkZXYpOw0KPiA+PiArDQo+ID4+ICsJaW50ZWxfZ21jaF92Z2Ffc2V0X3N0YXRl
KGk5MTUsIGVuYWJsZV9kZWNvZGUpOw0KPiA+PiArDQo+ID4+ICsJaWYgKGVuYWJsZV9kZWNvZGUp
DQo+ID4+ICsJCXJldHVybiBWR0FfUlNSQ19MRUdBQ1lfSU8gfCBWR0FfUlNSQ19MRUdBQ1lfTUVN
IHwNCj4gPj4gKwkJICAgICAgIFZHQV9SU1JDX05PUk1BTF9JTyB8IFZHQV9SU1JDX05PUk1BTF9N
RU07DQo+ID4+ICsJZWxzZQ0KPiA+PiArCQlyZXR1cm4gVkdBX1JTUkNfTk9STUFMX0lPIHwgVkdB
X1JTUkNfTk9STUFMX01FTTsgfQ0KPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvc29jL2ludGVsX2dtY2guaA0KPiA+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NvYy9pbnRl
bF9nbWNoLmgNCj4gPj4gaW5kZXggZDAxMzNlZWRjNzIwLi4yM2JlMmQxMTNhZmQgMTAwNjQ0DQo+
ID4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NvYy9pbnRlbF9nbWNoLmgNCj4gPj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc29jL2ludGVsX2dtY2guaA0KPiA+PiBAQCAtOCwxMSAr
OCwxMyBAQA0KPiA+Pg0KPiA+PiAgI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+DQo+ID4+DQo+ID4+
ICtzdHJ1Y3QgcGNpX2RldjsNCj4gPj4gIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlOw0KPiA+Pg0K
PiA+PiAgaW50IGludGVsX2dtY2hfYnJpZGdlX3NldHVwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1KTsgIHZvaWQNCj4gPj4gaW50ZWxfZ21jaF9iYXJfc2V0dXAoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUpOyAgdm9pZA0KPiA+PiBpbnRlbF9nbWNoX2Jhcl90ZWFyZG93bihzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7ICBpbnQNCj4gPj4gaW50ZWxfZ21jaF92Z2Ffc2V0
X3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBib29sDQo+ID4+IGVuYWJsZV9k
ZWNvZGUpOw0KPiA+PiArdW5zaWduZWQgaW50IGludGVsX2dtY2hfdmdhX3NldF9kZWNvZGUoc3Ry
dWN0IHBjaV9kZXYgKnBkZXYsIGJvb2wNCj4gPj4gK2VuYWJsZV9kZWNvZGUpOw0KPiA+Pg0KPiA+
PiAgI2VuZGlmIC8qIF9fSU5URUxfR01DSF9IX18gKi8NCj4gDQo+IC0tDQo+IEphbmkgTmlrdWxh
LCBJbnRlbA0K
