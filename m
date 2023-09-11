Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2A979AB2B
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 22:22:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8057410E081;
	Mon, 11 Sep 2023 20:22:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FD3910E081
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 20:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694463741; x=1725999741;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Ii8soIkGq5aDeN+/fyxTli7hcmt1EKhBxlmsnO2PDbg=;
 b=VUfaYVYedZMb6mXnLZq4vi/rYX3nZQIP2MHJ6KoxmQrlYgFsDWQbIHHS
 eV5iOxGEVbzb62aoaUGzzU2MMcWrGGEyo8PkFSGhD0OUHgCejF7so2tNn
 /8k8LrzPJFEMlgl9fOhFFIoOb9ngzI1CnpxSEUy32HGrHfsjCAAELd8un
 FnCVuf/qoby89uNRj++eLsdWeFrpsDi8UlY7923puYqbHCMR7fQcfaSXi
 4C2Rae75W9TWaaCGUDxEcCVPMxDheTW+bq4m68vrdIvRnsCbiG9fN5Bxr
 p0b4a9Za9iLstnuymDvRYbEdQv2VBZHwlAW/oUX+pLPvSAoSqGh/vjV+d Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="368450655"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="368450655"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 13:22:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="720113763"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="720113763"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2023 13:22:20 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 13:22:19 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 13:22:19 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 11 Sep 2023 13:22:19 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 11 Sep 2023 13:22:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IcgXxApA78BNVdSyk+RTbDZwG4sRMEhnJ3xGrvK19SqHqthM9CIUUykBQ0E3810xGMeynGsgUsdp0LWXkWvhRMJDPUCvc/ZXoRUa6qs6WxNSfuywNd1r1ob/EFCbZmvA45VPc3r3lb55KccZ0OHi/FILxgxYcobDauYAAooO8PvKU1zk1xHbQ6c2UYtsJ4NQfQ1QTDjGxiwMPTG36Z5+7Fe2tOjKJBXEn2BbOWR4vvepl2G2Bh9NP3B0ad1eOhLYWXXbnAXK9+ivPIc4Ne3AmDnbD57fN/uOqbCwyjOaj7bjC7X6dWaDx27PC5oK/eNWv/Zs7RNxyWLuf5sMNi45Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ii8soIkGq5aDeN+/fyxTli7hcmt1EKhBxlmsnO2PDbg=;
 b=Tk5kDB0bMCV2Kx1kFSxQbSsknYS8pRyr6mW3aTZEObp4nxecAezfHBI+41NVShmK1OfheSnYH/GguQolQO7QTsUJtNLXtJ8jjo55G382GMC0/7PTf2WVp173ce01dAvHVpMxJYHwNUKzoKIc4IKbgEFP2+yD95gUtQ/QNHOIw6vWLcaCzqGp2DiSYYv+Dojt0xADyOBox+DZOMh20l3RFs4x5LrVsSMh1qwFW2tjUJKl2gmV0EeLIhuNFk1CbirhCzDy4VPJjw/gjtOoaIe4c6e0tQ5F60qdXfOFxOwuitU3vrDcOSNwbewgLfvK0+1p1zYcRuyamJdL+sB2ShNs+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH0PR11MB5806.namprd11.prod.outlook.com (2603:10b6:510:14b::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.34; Mon, 11 Sep
 2023 20:22:17 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4%3]) with mapi id 15.20.6768.029; Mon, 11 Sep 2023
 20:22:17 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Ville Syrjala
 <ville.syrjala@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 02/19] drm/i915/dsb: Use non-locked
 register access
Thread-Index: AQHZmKtHeccOclpyqEaRmzSIRNu+Oa+AzGOAgJXc+jA=
Date: Mon, 11 Sep 2023 20:22:17 +0000
Message-ID: <DM4PR11MB6360F00A1944B8F6D83FC19DF4F2A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
 <20230606191504.18099-3-ville.syrjala@linux.intel.com>
 <87edmmrxbe.fsf@intel.com>
In-Reply-To: <87edmmrxbe.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH0PR11MB5806:EE_
x-ms-office365-filtering-correlation-id: 4c3f7b4c-1e27-4b75-e155-08dbb304cb30
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fmF9741sUE3auI7K912OYM1owukpYE/fcZlTwzM/c0pBiidMtcQmg8uBlDBNcTVCcMqvvy0C1p97t2vvP3VZILVW2TSbilL8xrLYv0UdjLk+GGPy7SRbO2PR6Dqdr2/iyk7tSKYcFi2GwQIg4MHgKTxia01TbKjKAJPnRxDGxekuCKrzrvGBWUk9MO3F3aUDPJfcn6Rc/aNVukov7vBlLOIHpgoPuGU1SmI1KWVLZ/2fMYRnvmHUpceNIYH66BYvoyADAQjRG7AHxx6DDoI0bvnkF5YxFuBz7fvMtGEFr7dmbrrLN5YZ2ZGkSNSxvuzxrgJAp3OWl88PhmrMhkotKkJzMNog+ZfnQypXc6uatF6V2s4gTummfMKzdbet7kQIjPxaTfUPfHBzYVedHK2FrFhn+FtKMGU+cy/mco74J76WLbtCVMLeRRLZSiShKBC66RQZUttz5IXZyQHlATsmFlSgEgdQLQV1uKn4uySjfCxBy8RH5PiXM1/7ZZ8dRDWHiTI1+3DfbzrCv3Xymue+D3L+3okzoDLIXizpE8Oa4pKKnEy8BkeotxSEYhdIErvmGCRRDCvX1iy4/2fawRKcDCXm/lsVQ0sZfsZ1XCF1+Cy83KluD9qpIfQ5bQ1vkjGY
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(136003)(346002)(366004)(39860400002)(1800799009)(186009)(451199024)(71200400001)(26005)(122000001)(478600001)(33656002)(66574015)(76116006)(110136005)(38070700005)(82960400001)(66556008)(38100700002)(83380400001)(7696005)(64756008)(66446008)(66476007)(6506007)(53546011)(66946007)(9686003)(316002)(8936002)(52536014)(41300700001)(8676002)(55016003)(86362001)(2906002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VDRoUTA4VTQzQWIvdGxUa0ZVOUZnb0xIbFJTTTRENFRNTmhyZkl2d1VkTi9o?=
 =?utf-8?B?WUU2K09ibXAva0FQSUVXUjhrenorQ1hEOS9rTWFsMGZvNCtWN2VMaVp5bWFX?=
 =?utf-8?B?TURNdTdvZkhKWlhBKy8ra2JCazV3dGoxa2p6RnUvYjZYZllRQndzNHpDUXNV?=
 =?utf-8?B?SVNrcVY1bUZPaHlzamhCL01TMlJzYUhoNUg2WkRXRkViait4cWRyQWZPVXBu?=
 =?utf-8?B?ZTRZa2xTODFEK2tURkxxTTd6T0xtaktraGRwR0YxSG1lWnBMR1duSWltR0lu?=
 =?utf-8?B?V2U4OTRxYU1GZmNKaGljVGFYa2R4SjZaSm1UVEJtd3hTeU5oNi9UTldDaGFS?=
 =?utf-8?B?S1Q2RDYxQk5aUURZZ3Zaa2hTdmNmZ2tjcllRdzVWN3VyK2xSVWtZbjlEMm56?=
 =?utf-8?B?clNTODdDSnlVRU5BVytSSTNMTTZzTmFFc2tmYnU4cmh2d1JjQkRCYy8vblB6?=
 =?utf-8?B?V2RiNVF5V1dubXVSOWRtSllmMVgyVEI2U2c4aTA3ZTdGeHB6b2pkellwTkpa?=
 =?utf-8?B?Ym01ZEI0SW5xVEU2VW1PUEhMVVdrZkZNTlRjQnJpbEUxdndveU1EMjZHK3ZK?=
 =?utf-8?B?RE9Mc2ZCZWRVZzlYNVBZdkFxNUwvbDBJcDBpL2dBVkEwOTRsQ01jVUQxUi84?=
 =?utf-8?B?Rm8zRWIxMHJGbjhXTDEzWEl4RDNQYXFZb2tFeU5MZnh2eXk1bnMrTlVXOW0w?=
 =?utf-8?B?RUh1SnhXdGlPejZSL2ZyWGIraFhuQmIwN3A1Tk1UQ0JVc09HMDdWN3RzVkZT?=
 =?utf-8?B?ZXUvNERmcEJsdEZTUnkzV2E1MC91RWRNU0UxMnlVSGpXQWxjY0xjNEoySUNF?=
 =?utf-8?B?bmIrT1dLL0F2c2Fwbk4vS1pJc256Z3dmRkk1VEpHcmlWK2pSRU1uejBsQVhV?=
 =?utf-8?B?Q29jb1FCcjBPUG9KZXVQem9kb3FHaVB1cnNTaU9INzB5MTVMdVZxL1lXWXFW?=
 =?utf-8?B?TkpoLys0TWUrT2diMFFVbCt6SHYvNWtxaW5GRGFoeFdEQU8xODg0bU1TVWhL?=
 =?utf-8?B?dFJPNWJmbnluTDlsU1JGQndZb2NVSTQxMEswQ2h0VWtCaEFLS3N5WUh0MjVk?=
 =?utf-8?B?L0ZQNlNJbHo1ajQvOXpVV1YyZVcwWTRDQjZWWWpFWTlmejBkdENtMFFWSUhh?=
 =?utf-8?B?aDMxMWswSkRoTXJFcThScDR6SWlhVldiREZGSkNPRFNySk43aEpFZlZiOWdm?=
 =?utf-8?B?ZktnUWJiTjJyTzBsREErL3RMaDByUVc1MzczUVY5a3lUTXlxOURiVmVMSURE?=
 =?utf-8?B?VnM1b1BTeDV1c2xLZGV1R3owVDZhYWJ6eDg5SHp5NSsvWDI5dzhHZHV5cEJL?=
 =?utf-8?B?dVh2c2M2aldIS3ZRYklzR3N1bEo5VUNGdWZlNHNWU0xNNlppNmUyVUlvQzJI?=
 =?utf-8?B?Nyt5NGl4MDdLSjA2TG5IZlduUVhEL1k0ekxidGJjVjYyenJaOFh0WXFhTTE4?=
 =?utf-8?B?WjdtM1hPTFBiM2YvRjBUdE9YNDJVd0hOMmRWL2QyZ3dyKzIyQy9teXZ3THUz?=
 =?utf-8?B?eHZjc0QwZXRlT0lLZGo1VTZGWElEQyt2TVhFb1gxQnJ0N0pjUmw3U3N1elF2?=
 =?utf-8?B?ekR2VUUrQjVhTHpTOHpiQ09wbGlXb1E5R3RUc2dUMnNCajdINkNYVUpoQUtx?=
 =?utf-8?B?RkpBQ0JPYXJDU3Izdk56cGhuQkVPeWQxTnlrWTZuWDNBQlk4Tkgyck9WVlAw?=
 =?utf-8?B?d05ROUpGSStHQXRJYytxbExMNWk0dlE3ek8xZ3NYdllCQVlFeTVBbVAyRk1G?=
 =?utf-8?B?Qm94ekRneSttYUx2Q01MUGY5d0M1RnBYZStpcnRrTmxVYmdmeWlvbTJJcEk0?=
 =?utf-8?B?cnZSeUJtMkhmRWp0bXgxVVVhRWtEc2puMmVtRitSN2tOenZaT3l1WDJuK25J?=
 =?utf-8?B?YURMYXRVMEpETytqQ0tTU0FMa3YrbXdLdGlaVkc5ZWNyUlZWUnhYc3NBZEMw?=
 =?utf-8?B?Wm9mKzR4SWE5T0E5OFlPamxJU01JNVlUOW5JcXhkVm90TXREeFhsSlhobk1X?=
 =?utf-8?B?ZForSWgwSFpQVWVZOTB2eklsQ0MwMHc4V0Ixa09id016MXpCZ2NyVFUyUVZX?=
 =?utf-8?B?S2lxOHdna08vNHlxUldNM01UcngraW9tSkFMV0pYMFJYRHZyVWhjcmZjMHU5?=
 =?utf-8?Q?tcKUOgNvTydBFoA10sORh+yfx?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c3f7b4c-1e27-4b75-e155-08dbb304cb30
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2023 20:22:17.2770 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YR23dRkTyUFA0HZ94TWUnhemdjdbz8krk+fYU4grljM8NfBbQCj1BVLdCgvjxYcuu297hIam51TYYjxa2OE22g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5806
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 02/19] drm/i915/dsb: Use non-locked
 register access
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKYW5pDQo+
IE5pa3VsYQ0KPiBTZW50OiBUaHVyc2RheSwgSnVuZSA4LCAyMDIzIDU6MTYgUE0NCj4gVG86IFZp
bGxlIFN5cmphbGEgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPjsgaW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0gW1BBVENIIHYy
IDAyLzE5XSBkcm0vaTkxNS9kc2I6IFVzZSBub24tbG9ja2VkIHJlZ2lzdGVyDQo+IGFjY2Vzcw0K
PiANCj4gT24gVHVlLCAwNiBKdW4gMjAyMywgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+IHdyb3RlOg0KPiA+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4NCj4gPiBBdm9pZCB0aGUgbG9ja2luZyBvdmVy
aGVhZCBmb3IgRFNCIHJlZ2lzdGVycy4gV2UgZG9uJ3QgbmVlZCB0aGUgbG9ja3MNCj4gPiBhbmQg
aW50ZWxfZHNiX2NvbW1pdCgpIGluIHBhcnRpY3VsYXIgbmVlZHMgdG8gYmUgY2FsbGVkIGZyb20g
dGhlDQo+ID4gdmJsYW5rIGV2YWRlIGNyaXRpY2FsIHNlY3Rpb24gYW5kIHRodXMgbmVlZHMgdG8g
YmUgZmFzdC4NCj4gDQo+IE1tbWgsIEkgYWx3YXlzIGZpbmQgaXQgc2xpZ2h0bHkgcHV6emxpbmcg
dG8gZW5jb3VudGVyIF9mdyBjYWxscyBpbiBjb2RlLCB3b25kZXJpbmcNCj4gd2hhdCB0aGUgcmF0
aW9uYWxlIHdhcywgYW5kIHdoeSB3ZSBjYW4gdXNlIHRoZSBfZncgdmFyaWFudHMuDQo+IA0KPiBT
aG91bGQgd2Ugc3RhcnQgYWRkaW5nIGNvbW1lbnRzIGV4cGxhaW5pbmcgd2h5Pw0KDQpJIGJlbGll
dmUgaXTigJlzIGEgbGlnaHQgd2VpZ2h0IHdyaXRlIHdpdGhvdXQgYW55IGxvY2tzIGFuZCBmb3Jj
ZXdha2UuDQpNYXliZSBhIGNvbW1lbnQgdG8gZXhwbGFpbiB0aGUgcmF0aW9uYWxlIHdvdWxkIGJl
IGdvb2QuDQoNCldpdGggdGhhdCBhZGRlZCwgdGhpcyBpczoNClJldmlld2VkLWJ5OiBVbWEgU2hh
bmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KDQo+IEJSLA0KPiBKYW5pLg0KPiANCj4gDQo+
ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RzYi5jIHwgMTggKysrKysrKysrLS0tLS0tLS0tDQo+ID4gIDEgZmlsZSBjaGFuZ2Vk
LCA5IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiA+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiA+IGluZGV4IGJlZDA1OGQyYzNhYy4u
OTdlNTkzZDlmMTAwIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHNiLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RzYi5jDQo+ID4gQEAgLTk2LDcgKzk2LDcgQEAgc3RhdGljIGJvb2wgYXNzZXJ0X2RzYl9o
YXNfcm9vbShzdHJ1Y3QgaW50ZWxfZHNiDQo+ID4gKmRzYikgIHN0YXRpYyBib29sIGlzX2RzYl9i
dXN5KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBlbnVtIHBpcGUgcGlwZSwNCj4gPiAg
CQkJZW51bSBkc2JfaWQgaWQpDQo+ID4gIHsNCj4gPiAtCXJldHVybiBpbnRlbF9kZV9yZWFkKGk5
MTUsIERTQl9DVFJMKHBpcGUsIGlkKSkgJiBEU0JfU1RBVFVTX0JVU1k7DQo+ID4gKwlyZXR1cm4g
aW50ZWxfZGVfcmVhZF9mdyhpOTE1LCBEU0JfQ1RSTChwaXBlLCBpZCkpICYgRFNCX1NUQVRVU19C
VVNZOw0KPiA+ICB9DQo+ID4NCj4gPiAgc3RhdGljIHZvaWQgaW50ZWxfZHNiX2VtaXQoc3RydWN0
IGludGVsX2RzYiAqZHNiLCB1MzIgbGR3LCB1MzIgdWR3KQ0KPiA+IEBAIC0yNDMsMTMgKzI0Mywx
MyBAQCB2b2lkIGludGVsX2RzYl9jb21taXQoc3RydWN0IGludGVsX2RzYiAqZHNiLCBib29sDQo+
IHdhaXRfZm9yX3ZibGFuaykNCj4gPiAgCQlyZXR1cm47DQo+ID4gIAl9DQo+ID4NCj4gPiAtCWlu
dGVsX2RlX3dyaXRlKGRldl9wcml2LCBEU0JfQ1RSTChwaXBlLCBkc2ItPmlkKSwNCj4gPiAtCQkg
ICAgICAgKHdhaXRfZm9yX3ZibGFuayA/IERTQl9XQUlUX0ZPUl9WQkxBTksgOiAwKSB8DQo+ID4g
LQkJICAgICAgIERTQl9FTkFCTEUpOw0KPiA+IC0JaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIERT
Ql9IRUFEKHBpcGUsIGRzYi0+aWQpLA0KPiA+IC0JCSAgICAgICBpOTE1X2dndHRfb2Zmc2V0KGRz
Yi0+dm1hKSk7DQo+ID4gLQlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgRFNCX1RBSUwocGlwZSwg
ZHNiLT5pZCksDQo+ID4gLQkJICAgICAgIGk5MTVfZ2d0dF9vZmZzZXQoZHNiLT52bWEpICsgdGFp
bCk7DQo+ID4gKwlpbnRlbF9kZV93cml0ZV9mdyhkZXZfcHJpdiwgRFNCX0NUUkwocGlwZSwgZHNi
LT5pZCksDQo+ID4gKwkJCSAgKHdhaXRfZm9yX3ZibGFuayA/IERTQl9XQUlUX0ZPUl9WQkxBTksg
OiAwKSB8DQo+ID4gKwkJCSAgRFNCX0VOQUJMRSk7DQo+ID4gKwlpbnRlbF9kZV93cml0ZV9mdyhk
ZXZfcHJpdiwgRFNCX0hFQUQocGlwZSwgZHNiLT5pZCksDQo+ID4gKwkJCSAgaTkxNV9nZ3R0X29m
ZnNldChkc2ItPnZtYSkpOw0KPiA+ICsJaW50ZWxfZGVfd3JpdGVfZncoZGV2X3ByaXYsIERTQl9U
QUlMKHBpcGUsIGRzYi0+aWQpLA0KPiA+ICsJCQkgIGk5MTVfZ2d0dF9vZmZzZXQoZHNiLT52bWEp
ICsgdGFpbCk7DQo+ID4gIH0NCj4gPg0KPiA+ICB2b2lkIGludGVsX2RzYl93YWl0KHN0cnVjdCBp
bnRlbF9kc2IgKmRzYikgQEAgLTI2Niw3ICsyNjYsNyBAQCB2b2lkDQo+ID4gaW50ZWxfZHNiX3dh
aXQoc3RydWN0IGludGVsX2RzYiAqZHNiKQ0KPiA+ICAJLyogQXR0ZW1wdCB0byByZXNldCBpdCAq
Lw0KPiA+ICAJZHNiLT5mcmVlX3BvcyA9IDA7DQo+ID4gIAlkc2ItPmluc19zdGFydF9vZmZzZXQg
PSAwOw0KPiA+IC0JaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIERTQl9DVFJMKHBpcGUsIGRzYi0+
aWQpLCAwKTsNCj4gPiArCWludGVsX2RlX3dyaXRlX2Z3KGRldl9wcml2LCBEU0JfQ1RSTChwaXBl
LCBkc2ItPmlkKSwgMCk7DQo+ID4gIH0NCj4gPg0KPiA+ICAvKioNCj4gDQo+IC0tDQo+IEphbmkg
TmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXINCg==
