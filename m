Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC19B7F4876
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Nov 2023 15:04:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14BE110E638;
	Wed, 22 Nov 2023 14:04:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CF3C10E638
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Nov 2023 14:04:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700661870; x=1732197870;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Frr+qEExjMrjgRv82+UmiOvietMZDRfIh2Mg1QrYHqo=;
 b=iwX5t4ZNe4IUmtA4EBb/4ceRq5ZeBU2Jk+WruW9cnQ7kfNKkOcJmYCWi
 rb48/bYeAz+uAAzduUnadQ9xAujBco3yGP6JvRjWpH4k0ea6/YovTivzk
 xo5+2om73vtCce2GCfR+DSrN2S+/jNcT+qkmIfXIK8vaVDN45zw9GBid5
 2G8Wfw54TAuf4ZxGbyWXI0zsr85Gt3P0MzHQa6DBJkwj6lCw5b3s6CSPJ
 EdYEveryMng7QgXko9i/zBiPB2P7v1cfPnajtia9RFNzVKkdxtI0iyak5
 WffjBvvCo/EcKohLgljP0GYb0cKXY4fp1TqWgChSJqkKkknwHy/FNSigf g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="458550875"
X-IronPort-AV: E=Sophos;i="6.04,219,1695711600"; d="scan'208";a="458550875"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 06:04:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,219,1695711600"; 
   d="scan'208";a="8450742"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Nov 2023 06:04:06 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 22 Nov 2023 06:04:05 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 22 Nov 2023 06:04:05 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 22 Nov 2023 06:04:05 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 22 Nov 2023 06:04:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OXsGuYXjfBspgHAv4UhdoUXLXx3f5kYYeeEKwpSiaa+ZHRYeYKBA9hlSpYSyK49c9EHXeAGf4H5VhFSceCprwCTPx0D4TpcG2u9KiqaEOQgm6Ji+vokaAgAD4F5dfzKlUiWsCeTWiDaxe2Oq+LA9CelaHBGOzajwmECDry5nrlx9yG7KbyKDdJavQYiyeb9M0OS1iSXSqb6DIMmSmPJQyXkaEDjD4yTl3aYmz4xyN861XxcnVBEBxR5a8dPWQmKxf2XrU1c0XtgFd4gujIOMFj8FcIIWDvFggPS/mysyIF+zVL33mBSrwMUGkP4FPt7Bj8pny6VbKsF7sGLX0v19QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Frr+qEExjMrjgRv82+UmiOvietMZDRfIh2Mg1QrYHqo=;
 b=Q922kTCPKmu28/YVcUvmYWk8aMC1MmCR77vA36PWCe5A1DQazlWIAwFQXV94TGF4Nmk3sDRjcvtaODCr9tHYVWwsPy+Fp8eKWFoGY1kor9MB4Loc4ozrFbmo36WqBOlJ1K8T+RoOFy3hn5ZeDwG4PKxhfe0zxZZItJX9sBD18cKkd/Se4jeA8YcyQvrr4E9nWJ9S/0mcq1FVPF0Yj37tezG36Y4THWtGaE2ptQnsvBe58lUcvFGenJ2XiGO2641s5O4H2BB9rDy0j/IEnEbsL+r3O0XOK5zrRRpUup07HnNeciUs+o75tWIi9nhVtHK2/M29VtHkqr8PbGTbE1eqSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 DS0PR11MB7191.namprd11.prod.outlook.com (2603:10b6:8:139::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7025.19; Wed, 22 Nov 2023 14:04:03 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::a98b:5c7d:8396:267b]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::a98b:5c7d:8396:267b%4]) with mapi id 15.20.7025.017; Wed, 22 Nov 2023
 14:04:03 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "Musial, Ewelina" <ewelina.musial@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, "Illipilli, TejasreeX"
 <tejasreex.illipilli@intel.com>, LGCI Bug Filing <lgci.bug.filing@intel.com>, 
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0gIOKclyBGaS5DSS5CQVQ6IGZhaWx1cmUgZm9yIGRybS9p?=
 =?utf-8?B?OTE1L2RzaTogNHRoIGF0dGVtcHQgdG8gZ2V0IHJpZCBvZiBJT1NGIEdQSU8g?=
 =?utf-8?Q?(rev2)?=
Thread-Index: AQHaGK7EIWkSLKZDv0u5EwD0uEFrebCEnbMAgAGVooCAAC2+AIAABt5w
Date: Wed, 22 Nov 2023 14:04:02 +0000
Message-ID: <DM8PR11MB5655E859CB8C7AAE16FAB6DCE0BAA@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <20231103201831.1037416-1-andriy.shevchenko@linux.intel.com>
 <170013946304.3092.1503824312309598619@emeril.freedesktop.org>
 <87ttplprbw.fsf@intel.com>
 <DM6PR11MB38192A2B1E08611ACB696367F2BBA@DM6PR11MB3819.namprd11.prod.outlook.com>
 <87fs0ym512.fsf@intel.com>
 <PH7PR11MB707320EC146F274263792BF193BAA@PH7PR11MB7073.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB707320EC146F274263792BF193BAA@PH7PR11MB7073.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|DS0PR11MB7191:EE_
x-ms-office365-filtering-correlation-id: 4cf0e39d-0b7d-4c31-e390-08dbeb63e1e3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QTLSiqOh6wiHXM0ZFIcx50aZpwaxRJ8T375leLHyXMSBlKsrGxvOM9C9rF+6Em2xdRpKUqJv1FPIwiOsJ++wjgsdNt4fCAaFhPuldyHMl/NNJdzZ+1fdt2PU3GXSEDLvbJoPYYLVHgPbJE8L+9fCRrm48yktqmzNfM0BHGFzhqgLIgzskdJwcVCWOtKt+WmGvL3YhWze0K+dK8zwR2T/hWDZwHILd8Swtvh6L+q0pT+mCs/bkIkRie5lNeXyyXHGI2/gk6L25pRDQy0w/SCMSPEKrgjZc7z6cRrBMxnnPj5BTLBfk+8VqHmZJiH1+1jr6/5sNL8Ppe2cX64SSK8gGLq7qjyvmJJv5f9R1XyOlHxta5iuGgXJ1wbg5BnErXLUN/pdWCIWO6iWoXHFIVBhjYr0BAoLSUv74rSP9MXu536T03aKO/4afPkoiQdXqXencJbYHBrJFio1WR1WHxXnbQHYdLTAQUBI1CFWxQFQ9FruBYV2wBjJypWPdH+KwGJAMy6uz+4fYUy1yW+VjmcIPk7U7438t3I6r5ajEdiZkdj0MeHDjA52+GtGlFFaqyYfFOuhxy0pr46bSsCGjh7gy+Bkkg+2ogOVpgkpef3XcO8vL6VKU4RnRaIGZoT6LYtNQ6MNeu04Fnyty7kB6co7Ew==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(39860400002)(396003)(366004)(346002)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(55016003)(5660300002)(8936002)(4326008)(52536014)(53546011)(7696005)(6506007)(86362001)(66946007)(76116006)(110136005)(64756008)(66446008)(66556008)(66476007)(122000001)(316002)(33656002)(38100700002)(2906002)(41300700001)(4744005)(82960400001)(83380400001)(26005)(478600001)(9686003)(38070700009)(71200400001)(26583001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dHRrNDVzbXh5U0YrWU1BOE81QnNpSkZaZ0g5aWs3S0hRRkFXU1hWOVRERk5w?=
 =?utf-8?B?VUw1U1lGUTc1VVpvY2IyTlN3cmdrRVpDMjF0V2N3Z2U5ZW5qaUt3YUViYVJM?=
 =?utf-8?B?T3NieW9ON3lmWXZBZmp1dUFhTHRkYUkwUVBCYjdZajhaMTFkL3Fqdy8zUHY3?=
 =?utf-8?B?b0dNZCtqRnpNaVAzbEpqTEx6UmRuWk5rb2xYRWlSTmJydVRKY24zNUh5TFUr?=
 =?utf-8?B?dU5kVlZTVm1qQUduWDJ1UjBjbzlqSW54Z2lFVzV2RlgzcmJrUmw1L2M5WWgy?=
 =?utf-8?B?b1pBRkRCWk5wR3lQK01GV2EwK0xDaVpXWi8zaTVRM004Z1NHb3pSRWtjZjlT?=
 =?utf-8?B?VVBtR3ovNy91cFF0V09pZmJNeHQ2Wm92NUwwNnF6WExkNCs2K294cnVDNlBZ?=
 =?utf-8?B?OXJMNmxSZ3o2YUtzbERXcE5PVXZZckxxb0VSNGlXS2paZUZYeG9EaHl3RS9T?=
 =?utf-8?B?YUJnaUFPclowcUNwUEZ6Tk5IWDRWMlJ2Z0tySllMQlh3dWxnUXpXdE90a1Vm?=
 =?utf-8?B?UzhPUldzTlF1eUl5TmpFZ2FiU3kyRDJhMWZrN3Z5RzFpN1hUTXcvNGFDSTlS?=
 =?utf-8?B?a3RaNzB4Y1g5VlV1angyc0lMc1RiNXVoTmlycWpxRjdGNGpEM3haZ2liOE1z?=
 =?utf-8?B?ZHd6blk5L25SNEQ1QUhNVTA5emkvbmFlUkRtODFYWHJaRFJNaVZJdjJzb0t1?=
 =?utf-8?B?SUNzak4yYWpEcDlHS0lYdGxyZk9za0YwMm1jRjd4UmFlOHpyR0wwZ2RMOENv?=
 =?utf-8?B?L2d2bU45OVcrL3VvTWovaXUvSUNGSlNMdndoM3JobEU4YnJrNER6UHlGRTRx?=
 =?utf-8?B?V3grdUo3bEFaTGdmZ1B2ZVJpK0JiR1I5RmNJUXBnZGNYMzYraXFKaXJtL3Bl?=
 =?utf-8?B?MkpXVG9oYlA4M2ZxUEhkN2E3T0pCSXRIUTJ6Sm5HeUNwSXF3YzVGcDZxOW9u?=
 =?utf-8?B?Y2xhYW5UNDc0MUJlS0Zja0dudFp3MjhnOUw2Nk1ocWc3UnhrTlJ4R3M3T2I1?=
 =?utf-8?B?WGpmbjhpUWtMMmt3M0FwandJZHJWVGEyK3F4MXB3R29YWml5bWZrb2FDSUJF?=
 =?utf-8?B?WVBEZVdnZ2FTVlA5bmp3dlpTUEdXbjF3MFFOUzc2cmhKRU91c2kxMlN4U3F0?=
 =?utf-8?B?YVNZTTVxYkllczRpVHRmT01oWVoxWWVvU2liUEo5NTFSRXovd2xwdGpwS0h3?=
 =?utf-8?B?VWRwTEZ0OXdxNWhBMEl6TThEdzkxUnRLK2JlSzVNWk8yUUk3MUZZaTM4OS9J?=
 =?utf-8?B?ZDdzRnl2ZS9lb2JLNmJ4cGZuK1V4U0pqbHZSNEhwK0l0bExlV3VOK05qaEpa?=
 =?utf-8?B?S25UR3k3SHpzMlJUdTdUaDBTcjIvenVtcWxoMG9uOGptRzlXY3pvQ2dJK0RC?=
 =?utf-8?B?YTNHTmxoYi9YUWJPZUVLTkFWdGx1OVQ3ZG5oc2tFaE8va251UG5xd01OcVU4?=
 =?utf-8?B?TnRkMDU0T0FuV2wxa25mL0VLRVZySGRnVUxxVHh1N3FaY1RZbE9rUlV6VGF6?=
 =?utf-8?B?Wkk4d0Y0YytzTG9ZdUo2dzRvMkVoT3N3NElrbTZFSDA5NU5McXJyNE5qcGdY?=
 =?utf-8?B?VWlLZWlQQlRrTVBLRzhTTHIzWnlqb0gyWkpxREFzbXh6ZTRtTFNHMWJXZ3ZG?=
 =?utf-8?B?WUxPM1U2Y2xJaW9zWmE1OXFabmJhbXI1bmxzSlRsclpKWTdYS0xYVUFFSDY3?=
 =?utf-8?B?VlVqYjhNRGlKMFRvMjA5QmhBVS93N1pOR3VTdHMxSWxUM1l6ZkVOTDIrWDRo?=
 =?utf-8?B?UWV0UlJtSnk5bHBXTGQ5ZFVsbVc5a1hjTGJFQnppN2p6cmhEd0h3clhodC9T?=
 =?utf-8?B?L3g2eTFVeWVPTWNEMVpKS1UrUGx1L1lxWEZQbGJZZmg4Vklkc002VUhJMkZL?=
 =?utf-8?B?RUNLZFhuc0g1cVFRMFdFS2wrMG5zc2JUcVY1TjlTYnl6akFabjFiSldNYXcz?=
 =?utf-8?B?VjhXZGlSaThmRzZCL2lzQm9oSHdsbGRVVTRQN1I2TE9sRUJ1U2hNak54VldF?=
 =?utf-8?B?MWlqdVdwcnpEeDVOZm1VNlliWVZrbDZTUDM1YWNZYlRReFYyMDVhOG12anhm?=
 =?utf-8?B?a2E1ZWt2TTljTzhYWGljU0RBc0Mxd1ZneWEvS1dNQ2pjbzJpZlNxbHl2dXl2?=
 =?utf-8?Q?ZjJ1PiLBkRcbrl9lS34pupRIA?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4cf0e39d-0b7d-4c31-e390-08dbeb63e1e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2023 14:04:02.6981 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8otAd3WyLDXxBedbsmUmLMs6Ki58OvhQIOjXrJwNmeN1WCrQnOMT3I8nBfBWKk0mhQV4dBXhn4w3UUDwMa9C0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7191
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dsi=3A_4th_attempt_to_get_rid_of_IOSF_GPIO_=28rev2=29?=
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

SEksIA0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGlu
dGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIE11c2lh
bCwNCj4gRXdlbGluYQ0KPiBTZW50OiBXZWRuZXNkYXksIE5vdmVtYmVyIDIyLCAyMDIzIDM6Mzkg
UE0NCj4gVG86IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+OyBJbGxp
cGlsbGksIFRlamFzcmVlWA0KPiA8dGVqYXNyZWV4LmlsbGlwaWxsaUBpbnRlbC5jb20+OyBMR0NJ
IEJ1ZyBGaWxpbmcgPGxnY2kuYnVnLmZpbGluZ0BpbnRlbC5jb20+OyBBbmR5DQo+IFNoZXZjaGVu
a28gPGFuZHJpeS5zaGV2Y2hlbmtvQGxpbnV4LmludGVsLmNvbT4NCj4gQ2M6IGludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIOKclyBGaS5D
SS5CQVQ6IGZhaWx1cmUgZm9yIGRybS9pOTE1L2RzaTogNHRoIGF0dGVtcHQgdG8gZ2V0IHJpZA0K
PiBvZiBJT1NGIEdQSU8gKHJldjIpDQo+IA0KPiBIaSwgSSByZXZpZXdlZCB3aGF0IEkgY291bGQs
IGFuZCBteSBjb25jbHVzaW9uIGlzIHRoYXQgQ0kuRlVMTCBmb3IgdGhpcyBzZXJpZXMgd2FzDQo+
IGtpbGxlZCBkdWUgdG8gbXkgd29yayBhcm91bmQgMTI2NTI2djYgLSB5ZXN0ZXJkYXkgSSB3YXMg
YXNrZWQgdG8gZG8gd2hhdGV2ZXIgSQ0KPiBjYW4gdG8gc3BlZWQgdXAgc2hhcmRzIHRlc3Rpbmcg
Zm9yIG1lbnRpb25lZCBzZXJpZXMgYW5kIEkga2lsbGVkIG11bHRpcGxlIHNlc3Npb25zDQo+IHdo
aWNoIHdlcmUgaGlnaGVyIGluIHF1ZXVlLiBXZSBkbyBub3QgaGF2ZSBvcHRpb24gdG8gc2ltcGx5
IGJ1bXAgcHJpb3JpdHkgZm9yDQo+IHByZW1lcmdlIHNlcmllcyBhbmQgdGhlIG9ubHkgd2F5IChu
b3QgcmVjb21tZW5kZWQgYnV0IHNvbWV0aW1lcyBuZWVkZWQpIGlzDQo+IHRvIGRyb3AgZXZlcnl0
aGluZyB3aGF0IGlzIGhpZ2hlci4gSSd2ZSBhZGRlZCB0aGlzIHNlcmllcyBiYWNrIHRvIHF1ZXVl
LiBTb3JyeSBmb3INCj4gaW5jb252ZW5pZW5jZQ0KTm9wZS4gSXQgd2FzIG5vdCBwYXJ0IG9mIHRo
YXQgbGlzdC4gV2UgY2hlY2tlZCB0aGF0IHdpdGggSmFuaSB0b28uIFNlZSB0aG9zZSBwaWN0dXJl
cyB3ZSBkaXNjdXNzZWQuIA0KPiANCj4gUmVnYXJkcywNCj4gRXdlbGluYQ0KDQpCciwNCkphbmkg
Uw0K
