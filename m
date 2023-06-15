Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B58407314D0
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jun 2023 12:05:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06B4310E4B7;
	Thu, 15 Jun 2023 10:05:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6E0110E4B7
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jun 2023 10:05:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686823519; x=1718359519;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=f15WzbuCW1dPoiXo2F/RkDE78Z5SPdwa+mengIMP3lo=;
 b=K7/pe7l3IlxGZkWijrfnTVt56tqjlaQCEcu0eOFjxR4U+sjL2X1GCzwo
 TPmk8JLhKUU4/15Gv6W9cSWYQbFAVEMrZIC9qruvvSmmKyZCJ6IaeOY/y
 nxHOtjH2oqV8+BnqcPabrYE0NtoVN3P46zPDg5QEbuZT7XECFaxc6V8x8
 8y1s7bmgIqvI/tfYl2OfhwWbUUBgz8AFufNPuaS5yHI/sz1/7tVnn2SCL
 lVV+VzFKl5en74H75o7aGXeRfzNASi3uZaBl95v67kgaBcuCveXifzwB7
 L0s+ISA/cNeNaO/ZdAhft65+qsnVbQEUoyDHkd0kJ1bimcsvbeb6Tcko9 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="358862077"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="358862077"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 03:05:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="886591386"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="886591386"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 15 Jun 2023 03:05:17 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 15 Jun 2023 03:05:16 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 15 Jun 2023 03:05:16 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 15 Jun 2023 03:05:16 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 15 Jun 2023 03:05:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C8bPVpsqODjV1H02Vfh/rNP7+8/73vJbTKPObavgrliZw1sQ2IRMWzgyb0UUlNsWrslcgIiAp35UEt8NmP64sKaz6bSxOJdTe0vq3acLlnOyN4Hd+mPDIAq8VG47RHM8npcyb68WQ4JNMDfVSeOPuXDg/guGw7ejglhGXl/SjWI5D4fYmCyP5RKnEAq1qh7xJ/LPi3bfI0oc8X58nN5nq5VrOonxdPGv2KktlbwaaoLS4ihLqRI5gCa3SC11OSBGl4mfRDfsZjg2R2xWR3qDQadJnLmP6iDc+USH7Pc8AdyeEaS4hL1EjNWicfD1+uTx8rhJtn3R1EH1FtH8ht6dsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f15WzbuCW1dPoiXo2F/RkDE78Z5SPdwa+mengIMP3lo=;
 b=C589O2VwLtNhw88lkyGA52T5XKvjWkAfKAYnqmOR9864POddOZ3UOMweRZq73rkxkKWEx7lFRbd8ua/lw8Ai23dmvWJLpJ6mOOW4rQ+kTJ5H/ayIuecc/PAGCz6igVCZqQe+mbqY7t+ntoSuwmUkct1HGFRTo2gAN3VS8CiprfFR0EEG/EVo7/8fyUznd340DfYNeVD0zsGc/Zyenzjm7g6q2i8tSps2P1IABhu6RivSf0R9sLXbODtN/i+ylQgyDrLuc1GMW4BmlZRAuxJ+K017XHuBzdTf1eCk1oKU4RtA4I4g6QBgHWrExASOATKd/yIbg5tVKrWUk4DwCsrsWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SN7PR11MB7510.namprd11.prod.outlook.com (2603:10b6:806:349::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.37; Thu, 15 Jun
 2023 10:05:14 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::2796:34e3:dbb9:fe97]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::2796:34e3:dbb9:fe97%5]) with mapi id 15.20.6477.037; Thu, 15 Jun 2023
 10:05:13 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>, "Kahola, Mika"
 <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/mtl: Cleanup usage of phy lane reset
Thread-Index: AQHZms3C6ysHU6Pb1EerIaCRGI1Osq+JAmyAgAKptoA=
Date: Thu, 15 Jun 2023 10:05:13 +0000
Message-ID: <1f9e7d2d6fe4f6f57fef2c04cbc543aba3da3798.camel@intel.com>
References: <20230609122130.69794-1-mika.kahola@intel.com>
 <168667711586.20985.1748785256576357249@gjsousa-mobl2>
In-Reply-To: <168667711586.20985.1748785256576357249@gjsousa-mobl2>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SN7PR11MB7510:EE_
x-ms-office365-filtering-correlation-id: 71a2ef81-0a30-491c-412c-08db6d8802ba
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9Mr57HbCXd5nq4u5cA2Cm30WiCul7WQcBItqqvBNedhHTWWUR/H3aDlwVmJ399fuLZIPDD2AK4+pcYZD+umzbzUGgxH8I8RXbqoeaECiOAnIKkj9LGet31WSz9Cxujf9ssL5b64/N3OjHVQ3b9VsV0OcYLGPpwsEBkxHzgpKeRXEJHCfiL5kGvG5tA7HpC0nMo3w4u2Bm2X4UjsQ86LMfr/tm6xE6A0as9qmAzeW8oiFa7jkw90rqBg/BgQJwlbXIdcjGjYs4mC/fWyONWPVNymadnbQFKpiGzaF5xr/8OniNw9P4yfCLlvy2nC/0gaIqWToi9FtAY3HKcYVdpD0UwozSBsGPN7yG4O8k5eeP3luaLsapj9a3iwaBIuu7nesrnLTsm/oOThPwKlZQW0ye1oEDix4iUHZIyzAMUkct5MMNOC9XhNMfVwb2DLmIpYJuoBvewzuIvpDr2E6qgXrEuKUCv21fgppmAE8vptIvvlL/GuyMXAFru1eLtsfCCTfh8yyjo5QmfzKHd4ZCG5YOP4zYXiQn+ERyOFmt8QY+pzzotOHCjtjTyHD8GHaophtq4/fnKXIQ80ivn6LLVJ80xnqQDblV5W5gY2J99xgM4QqJnJi0SYdeh+0EdwV02Av
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(39860400002)(396003)(136003)(376002)(451199021)(5660300002)(83380400001)(186003)(6506007)(66574015)(2906002)(2616005)(6512007)(41300700001)(8936002)(26005)(8676002)(6486002)(316002)(122000001)(110136005)(38070700005)(36756003)(478600001)(82960400001)(76116006)(66556008)(66476007)(86362001)(38100700002)(66946007)(66446008)(64756008)(91956017)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R3FPSEg3azQ4V2taWU9GdTRzM0tDdVp0T1lESDZLY1BkdWpHaXBqeEFMcDB5?=
 =?utf-8?B?N1VUVEMwMlZDRG9sU0dxOURib3dMdWM3YlBmZG5vQUl4djV3SllqQ3lTQmxq?=
 =?utf-8?B?K2ZZMUJSMityS3o0VkxlTnhZbzJRU29MVHNWcXlMVWlNdFRYSU5pWjdleEli?=
 =?utf-8?B?UUN6cm1ueWd2b2hJaUQxRHlkR1pCQ2EzM2YwaWE0RUlpUG1aZHhWM2FJUXl0?=
 =?utf-8?B?NlpOMktNYWdLV255aEhkVGtrRHRYa0JjVXRobGtzMFVTSDJxVXdRS3lZS25E?=
 =?utf-8?B?c0VBRFhYYXhqN25YRXIxM2tZTjRTRW1JdmJxLzBtUkNOaUxFTUhkdzc3Tkx2?=
 =?utf-8?B?YmlGaHV4K3BVTS9YVGJLekc3WnZFbGNHQzEyak9KQTE2ZkFIWmp6RjdmRmJ3?=
 =?utf-8?B?OHR6V0d5QzVJd2djYXVkSllleXUyUTJtLzlzTGdSbGlDY3hFUHBvcWJtUi9w?=
 =?utf-8?B?dmJ2QllaL0diZTlKTzl4cHcxRm1wNnY1dHJRRXkySTBkZlpobjd3WTlITkg1?=
 =?utf-8?B?eCtGL3JjNEQ0K2NzQll2b3lQcEhud1RQRlJqUER2WmFRdTBERUsrZ1czeEw1?=
 =?utf-8?B?YlRvMG10YXEwcUdlb2ViMTlmdmRVQ0dBR1pLOU9veVVrTml1YndCUENTVHlY?=
 =?utf-8?B?ZzN6MFpPMURzTmFLUGpTRVNlTndDTWJ3azgwaVozL051SGNiVWx1ZWJmbVpv?=
 =?utf-8?B?Ui9NVk9SZ2tTV3ZlalF6N1A3VHNPMmJ0SGlLMFlIbElOZWI4ZVBmYTdpa212?=
 =?utf-8?B?YVFDMDBQOU9MbTVPNlJER0owSWp1RldOK2VLMGpISjI0MzFONVFyZ0lzUjB0?=
 =?utf-8?B?VnpYOHo2eUM4RFdqZ1JKRFpmQjVRczBZZWl4R0Mxa1JBR0NuN0s2UFVMNEtr?=
 =?utf-8?B?TnFCWjNCNU45Q0xnRWFaVS9hdmFUQmlCanV0WmtaaUovOUt2NFdMUmFLTVlY?=
 =?utf-8?B?cVY3dXBwdlFDNW8xd29odXFCeExCd0VqVEtVbGZQbUNkbFBJY215VDg0QTRQ?=
 =?utf-8?B?SEdwMGs4NnJWb2wyaVVET0lwUHZlZTFwY2o3dGdPdWZyUWJXRnp3NHFsellE?=
 =?utf-8?B?NXR3SFF6K1NTdWU4V3lYc1lRYzJKbU0vL2VxbmJiaDMxeUY1NTl0MEM0WkRD?=
 =?utf-8?B?SWRYRzdrZlpKcnNBVkc5dUNpQnBwbzBhbHhFN2M3V2JYQXo2SnRHN1ZxZzVq?=
 =?utf-8?B?cUwrODVaZDBjYTBDMUVaS3BJSjlOVzlXSkFQdFhTL3NKRlFrZktYR09UVlUr?=
 =?utf-8?B?VXh4NldzVXdlMml1cjZkeTJLaEhJTm5KcjdsTjBtS0lCbzVTN2Z6bmNwZlFY?=
 =?utf-8?B?QUZ1c2FqZjZYcEh5SHpsNnpML3ZyNy9uNmhOTE1lOUl2RU1FVS9TbHo4dTY1?=
 =?utf-8?B?YUdZQXdyeDRXK0JBWFllb3o4ZDhTNndIbUhGQ1BqejFIRWVWSHdFRnlEeWlo?=
 =?utf-8?B?K2RvLzFaZWFOU3VxOWJnRXgvOVVIYXpEQ05UNGx0Qk42VGlZSlF4ejRpOTlr?=
 =?utf-8?B?aWY3eEFuanRMMmp4Mk1EcUZpb09JVmhXeFFJT0lkSlRhZ2FFUGpFVjFhb2dY?=
 =?utf-8?B?Z29xV0RUWFNFaE9rc2YvZ213eUNZaGNTWENLc2oxenNGRnVoM0FBOHFoYVJJ?=
 =?utf-8?B?TTdZOWUydXN5WmtmSG04NDRPZjN4d1c2cDRSUVRmUG1WMWNFcXhGdkFoQjlZ?=
 =?utf-8?B?Wmc5OWlCbTl1eUsxSXlvVWtOMWJHRDVXKzVETG8yNW9aQWhSM3pETUlMN3E4?=
 =?utf-8?B?SzlXNkFidzZxSlF3U0I2QkV6Z0ZkT0wrcnJLK0RTSlJ2WUVyQ0xtMjQ5WXRz?=
 =?utf-8?B?TkxMWlNxNkUrcERxbDI2Y1dVeHNhdS9vQ2Z4cGZVaWJLeHJwM2U2RHBmQWVY?=
 =?utf-8?B?UnBPbkdid0Q4SDcvZGJDZGVkRTRaNjJnQXNUM0tZQ2YrbjkyY3ZqbURXakd6?=
 =?utf-8?B?RmlkR0tyRmc1dmg1R29tYUIrRnpibDd3dWNId1o1SDA4QlU1ZzhjK3hQWisx?=
 =?utf-8?B?bXFxbnNkV0RYVWx1NDRyZjQ3NUhKR3FDQ1JuREFCOG5nWmg3OFpGYWlPVzcz?=
 =?utf-8?B?a3RJZXJTa1QrVjR1V3k0U0JaamowZkEzS05EdFBvSlNqSWJKVDMxaStvTTJh?=
 =?utf-8?B?MHA0b2xmV0c0WUQ5T0ttQkx6TlRZN0hyRWl3bmxqdHlJc1FHSEZwTjF5SStz?=
 =?utf-8?B?eUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3B848D1215E6AB409D88506AE4CB3574@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71a2ef81-0a30-491c-412c-08db6d8802ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2023 10:05:13.1218 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OEmyomCOzveRmEFaJ0PhrbhJtTseb4O9cXZ2TT5PnHUhCU1WfvMWv6HQv7Gt4TBZH11LiAxNAtVoTQoRU8uRnsx3mW7d4SUN8N0OdP/Ro/E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7510
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Cleanup usage of phy lane
 reset
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

T24gVHVlLCAyMDIzLTA2LTEzIGF0IDE0OjI1IC0wMzAwLCBHdXN0YXZvIFNvdXNhIHdyb3RlOgo+
IFF1b3RpbmcgTWlrYSBLYWhvbGEgKDIwMjMtMDYtMDkgMDk6MjE6MzAtMDM6MDApCj4gPiBGcm9t
IFBJQ0EgbWVzc2FnZSBidXMgd2Ugd2FpdCBmb3IgYWNrbm93bGVkZ21lbnQgZnJvbQo+ID4gcmVh
ZC93cml0ZSBjb21tYW5kcy4gSW4gY2FzZSBvZiBhbiBlcnJvciwgd2UgcmVzZXQgdGhlCj4gPiBi
dXMgZm9yIHRoZSBuZXh0IGNvbW1hbmQuCj4gPiAKPiA+IEN1cnJlbnQgaW1wbGVtZW50YXRpb24g
ZW5kcyB1cCByZXNldHRpbmcgbWVzc2FnZSBidXMgdHdpY2UKPiA+IGluIGNhc2VzIHdoZXJlIGVy
cm9yIGlzIG5vdCB0aGUgdGltZW91dC4gU2luY2UsIHdlIG9ubHkgbmVlZAo+ID4gdG8gcmVzZXQg
bWVzc2FnZSBidXMgb25jZSwgbGV0J3MgbW92ZSByZXNldCB0byBjb3JyZXNwb25kaW5nCj4gPiB0
aW1lb3V0IGVycm9yIGFuZCBkcm9wIHRoZSBleGNlc3MgcmVzZXQgZnVuY3Rpb24gY2FsbHMgZnJv
bQo+ID4gcmVhZC93cml0ZSBmdW5jdGlvbnMuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IE1pa2Eg
S2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+Cj4gCj4gUmV2aWV3ZWQtYnk6IEd1c3Rhdm8g
U291c2EgPGd1c3Rhdm8uc291c2FAaW50ZWwuY29tPgoKVGhpcyBpcyBub3cgcHVzaGVkLiBUaGFu
ayB5b3UgZm9yIHRoZSBwYXRjaCBhbmQgdGhlIHJldmlldy4KCkJSLAoKSm91bmkgSMO2Z2FuZGVy
Cj4gCj4gPiAtLS0KPiA+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3Bo
eS5jIHwgMTMgKysrKysrLS0tLS0tLQo+ID4gMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygr
KSwgNyBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY3gwX3BoeS5jCj4gPiBpbmRleCAwNjAwZmRjZDA2ZWYuLmYyMzVkZjU2NDZl
ZCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gw
X3BoeS5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9w
aHkuYwo+ID4gQEAgLTExNiw2ICsxMTYsNyBAQCBzdGF0aWMgaW50IGludGVsX2N4MF93YWl0X2Zv
cl9hY2soc3RydWN0Cj4gPiBkcm1faTkxNV9wcml2YXRlICppOTE1LCBlbnVtIHBvcnQgcG9ydCwK
PiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgCj4gPiBYRUxQRFBfTVNHQlVTX1RJTUVPVVRfU0xP
VywgdmFsKSkgewo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRybV9kYmdfa21z
KCZpOTE1LT5kcm0sICJQSFkgJWMgVGltZW91dCB3YWl0aW5nIGZvcgo+ID4gbWVzc2FnZSBBQ0su
IFN0YXR1czogMHgleFxuIiwKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBwaHlfbmFtZShwaHkpLCAqdmFsKTsKPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50ZWxfY3gwX2J1c19yZXNldChpOTE1LCBwb3J0LCBsYW5l
KTsKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVUSU1FRE9VVDsK
PiA+IMKgwqDCoMKgwqDCoMKgIH0KPiA+IAo+ID4gQEAgLTE1OCwxMCArMTU5LDggQEAgc3RhdGlj
IGludCBfX2ludGVsX2N4MF9yZWFkX29uY2Uoc3RydWN0Cj4gPiBkcm1faTkxNV9wcml2YXRlICpp
OTE1LCBlbnVtIHBvcnQgcG9ydCwKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIFhFTFBEUF9QT1JUX00yUF9BRERSRVNTKGFkZHIpKTsKPiA+IAo+ID4gwqDC
oMKgwqDCoMKgwqAgYWNrID0gaW50ZWxfY3gwX3dhaXRfZm9yX2FjayhpOTE1LCBwb3J0LAo+ID4g
WEVMUERQX1BPUlRfUDJNX0NPTU1BTkRfUkVBRF9BQ0ssIGxhbmUsICZ2YWwpOwo+ID4gLcKgwqDC
oMKgwqDCoMKgIGlmIChhY2sgPCAwKSB7Cj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGludGVsX2N4MF9idXNfcmVzZXQoaTkxNSwgcG9ydCwgbGFuZSk7Cj4gPiArwqDCoMKgwqDC
oMKgwqAgaWYgKGFjayA8IDApCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0
dXJuIGFjazsKPiA+IC3CoMKgwqDCoMKgwqDCoCB9Cj4gPiAKPiA+IMKgwqDCoMKgwqDCoMKgIGlu
dGVsX2NsZWFyX3Jlc3BvbnNlX3JlYWR5X2ZsYWcoaTkxNSwgcG9ydCwgbGFuZSk7Cj4gPiAKPiA+
IEBAIC0yMDIsNiArMjAxLDcgQEAgc3RhdGljIGludCBfX2ludGVsX2N4MF93cml0ZV9vbmNlKHN0
cnVjdAo+ID4gZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgZW51bSBwb3J0IHBvcnQsCj4gPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgaW50IGxhbmUsIHUxNiBhZGRyLCB1OCBkYXRhLCBib29sCj4gPiBjb21taXR0ZWQpCj4g
PiB7Cj4gPiDCoMKgwqDCoMKgwqDCoCBlbnVtIHBoeSBwaHkgPSBpbnRlbF9wb3J0X3RvX3BoeShp
OTE1LCBwb3J0KTsKPiA+ICvCoMKgwqDCoMKgwqDCoCBpbnQgYWNrOwo+ID4gwqDCoMKgwqDCoMKg
wqAgdTMyIHZhbDsKPiA+IAo+ID4gwqDCoMKgwqDCoMKgwqAgaWYgKGludGVsX2RlX3dhaXRfZm9y
X2NsZWFyKGk5MTUsCj4gPiBYRUxQRFBfUE9SVF9NMlBfTVNHQlVTX0NUTChwb3J0LCBsYW5lKSwK
PiA+IEBAIC0yMzAsMTAgKzIzMCw5IEBAIHN0YXRpYyBpbnQgX19pbnRlbF9jeDBfd3JpdGVfb25j
ZShzdHJ1Y3QKPiA+IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGVudW0gcG9ydCBwb3J0LAo+ID4g
wqDCoMKgwqDCoMKgwqAgfQo+ID4gCj4gPiDCoMKgwqDCoMKgwqDCoCBpZiAoY29tbWl0dGVkKSB7
Cj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChpbnRlbF9jeDBfd2FpdF9m
b3JfYWNrKGk5MTUsIHBvcnQsCj4gPiBYRUxQRFBfUE9SVF9QMk1fQ09NTUFORF9XUklURV9BQ0ss
IGxhbmUsICZ2YWwpIDwgMCkgewo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgaW50ZWxfY3gwX2J1c19yZXNldChpOTE1LCBwb3J0LCBsYW5lKTsKPiA+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAt
RUlOVkFMOwo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Cj4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGFjayA9IGludGVsX2N4MF93YWl0X2Zvcl9hY2soaTkx
NSwgcG9ydCwKPiA+IFhFTFBEUF9QT1JUX1AyTV9DT01NQU5EX1dSSVRFX0FDSywgbGFuZSwgJnZh
bCk7Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChhY2sgPCAwKQo+ID4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGFj
azsKPiA+IMKgwqDCoMKgwqDCoMKgIH0gZWxzZSBpZiAoKGludGVsX2RlX3JlYWQoaTkxNSwKPiA+
IFhFTFBEUF9QT1JUX1AyTV9NU0dCVVNfU1RBVFVTKHBvcnQsIGxhbmUpKSAmCj4gPiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBYRUxQRFBfUE9SVF9QMk1fRVJST1JfU0VU
KSkgewo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRybV9kYmdfa21zKCZpOTE1
LT5kcm0sCj4gPiAtLSAKPiA+IDIuMzQuMQo+ID4gCgo=
