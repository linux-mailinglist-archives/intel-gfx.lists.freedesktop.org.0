Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B96A7A409D
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Sep 2023 07:51:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02A2710E0DA;
	Mon, 18 Sep 2023 05:50:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BCAC10E0DA
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Sep 2023 05:50:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695016257; x=1726552257;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=wcGCUPzoVMa8B78iEBSfmRhjuNvlBai0jeTLx/w6JVo=;
 b=lyNNm8cCe0HXt1oLfCLS4Le82SqP5xbMFWW2bmaThfvz+6ycfXazQ5Pb
 7aqGhuemwyPd8JPfhpbseL0eZ7YL4lO/sEvYW7bm6w9CGKTZifJs9jnut
 dI5TZVa6EfOXFzcoimFq5tZN+lwumS6c+yFJCO2mwJmZjXfH7fRskrkCr
 uUjpiX4RwXyrlr3UAJrH/hB1A55WyTZM4zpIu1f0NCt7PDfJuBbNmrfnB
 q0GuMJ6sxp/14k52pzwXVcfsqkEo40j+Rm9mqIKf1C0/Dp8FJJ7zr0SFW
 tilO8UXmyW4fqgaE1d4Xn5tQiXfCJt6rkhjZRQD3uZXKNQ0m26aOSSeiO g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="446037987"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="446037987"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2023 22:50:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="835896014"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="835896014"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Sep 2023 22:50:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Sun, 17 Sep 2023 22:50:55 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Sun, 17 Sep 2023 22:50:55 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Sun, 17 Sep 2023 22:50:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ejd6t7xF9RV1a9wq0iH+qHiaf5P31owKX3OV4gbbYfQVCawmmzzxljqXs+dn23f8piRBTnb73dc3Xo89OhyBikGqBvIxuOGmiBvGO0sq7POfoYntPIh41cPzpQiLOfZEhMqgO3f9kBn0dh9CcAIhqnzKHM4FBt24Dyp3uOGpfl2Is5gi59lMPBmRloNY0NQl9arSYtTmrLSrUsWIstcCYmEUyXuzvJjPmu/Vmb0Xaz+aiUA3SqJBm1a5trdkR7jqXUaYB0j4R5zuMhOaUlB9RHLni357l1VkmSUArcerShF/Gr+0M5u2KVIu40XTerAiAkcLlN5l7uJNF9LUqo+cng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wcGCUPzoVMa8B78iEBSfmRhjuNvlBai0jeTLx/w6JVo=;
 b=EzMSV0Wd8ZQT1WBvzFZAnkt0cv1J2b3qRK5CphWHCom0BLaN0VYm5/woC7lCtI4iOtCDILzk2bH8H1Z+u+pVaaxAc9oej8kr06fhBxBe7dWvgCR6kHMOsowOrBc23SAVbqLO8sf15pRhuBrKiObVcSZ/aZNysrEpi7w2L9L2TKmw7Jdw+6teSKXDZ9BJ1zcK4Zd73bwp1yx1wTgfp0cVE9JPSIdTY9zlvZR32RzBYOhonzpHPaGoLm0lw0nEg8WaRB0FccbKiVXz3v1E3k5onTiateO3FTGDtiuBrZ2Q+f0vbLXOHW2R075Yd+Svn5HGFibrDFt87uoje9S2F/wX6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB8453.namprd11.prod.outlook.com (2603:10b6:510:308::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6792.23; Mon, 18 Sep 2023 05:50:53 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::3c89:fe31:95fd:c2cf]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::3c89:fe31:95fd:c2cf%5]) with mapi id 15.20.6792.026; Mon, 18 Sep 2023
 05:50:52 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH] drm/i915: Remove runtime suspended boolean from
 intel_runtime_pm struct
Thread-Index: AQHZ5inC++wCVnoOo06exvglB8Gn+7AYqCUAgAAx9oCAB0G6gA==
Date: Mon, 18 Sep 2023 05:50:52 +0000
Message-ID: <c10d4cbedfce5194363f4b382cd312cd03f60bad.camel@intel.com>
References: <20230913100430.3433969-1-jouni.hogander@intel.com>
 <87pm2mwaa5.fsf@intel.com> <ZQHO27saUO4Dikup@ideak-desk.fi.intel.com>
In-Reply-To: <ZQHO27saUO4Dikup@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB8453:EE_
x-ms-office365-filtering-correlation-id: a00d3836-eb63-4a5d-e177-08dbb80b380d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xoekmQZviwz+DhFfQOsYtC/1M3Fzyu3WVFvnse6SO82zT7R+ZXDDX4wHlWoe0pHj/BF3DPBhfyNPIRud8/itaXnTxyUP6kbSvmIqUSrWQrgT+144WFeQ5N2P5y+gJfDqKQ2tn9jPGY7LBoDjsV4Tizext7bVhc1ZTN+FWyLiRDdUeBl86KNloBt79MjUgTmJxrgeZ30pbx3q34LdNjZT8enMJB2b8qgWKiJRmSLn+0Y296+338Hed9IkrQvWZSVz725apP3YFZI5Ti5XtHQfwmPqtqtZovgdrKG7bTAx+Tc9POekQp1geBNgGBvvPXdqt/zki32AhUAZ5Paw/VkChEC9Sm6FIjfnuMJD3sYmF+A4I2bnl8INElYYpF7RUTe9jppN7pJH87kkIWcR/RMOSRDgvXMhwKAfb0+WllZaslyhSRdQHinOWf5OG5ChffgpV7vZYTWGSo0+24lGS10j7HnWqZwmZxp35cPf15MJuILJxlh8HkGexvltx65S38i2oYhptEG1PhsinmbySLRX/0KYDbB/I9Goeuy1AnPOVzCC7fcHzYBhYEJaMI2dU4Ufnp33Co03awf/wIgWFpJ232r2YLYYg/rt6DLC8250vTWD+pIbQAFi8c+/6zKqfM/3
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(376002)(136003)(396003)(366004)(451199024)(1800799009)(186009)(6506007)(6486002)(38070700005)(86362001)(38100700002)(36756003)(82960400001)(122000001)(26005)(2616005)(66574015)(15650500001)(2906002)(71200400001)(6512007)(83380400001)(478600001)(8676002)(6636002)(316002)(110136005)(91956017)(4326008)(5660300002)(8936002)(41300700001)(64756008)(66946007)(66446008)(66476007)(66556008)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YnRPVHFJUVg2bHJpaFk1Sm9nSkovb2JqT2g3U0pXNHEvUnJ0NG81dnBubnM4?=
 =?utf-8?B?UDN3STVYc0psOE8yalRaMTIxc0RhWjllWlR4NGo3M3UyMyt0dzl5QjBMaE1W?=
 =?utf-8?B?Zmo5eHo0SUZEd2RtNmxNL2Vsc3ljRlJhcWdmeUFVVXE2R2t4QmJEcklSRnFa?=
 =?utf-8?B?SzdJMlFaQVlveHlkYmVlSjhpaE1sSFVHUldHS3RmRXN2Qm4xM21nb1ZCZTd1?=
 =?utf-8?B?VDB2YWx2TGFQclI1NmxPVW40TndqZ3V2eVJ5a1Q3N0xnRUplblpzdnU0Tlh0?=
 =?utf-8?B?SEZyWTY3bVJGbjcxSGYwV3JSOFo3OFk5YnROZVBjb3RTZmd1OWszbXlKY0kz?=
 =?utf-8?B?NXFZUndnaEtYbFN2Nyt2Z1pQbGM2djJNZWJ5RkZSUVMwQkoyNmpqL2pLcjc1?=
 =?utf-8?B?ZU9BM3AwV3RlK01wRi9UTitPaHNyTksrb3dPRU9xSTUvYmdLOVlkWk1WTG5O?=
 =?utf-8?B?Mk9lS2ZvS01KbDAwbi9JM3VTNU9VOWZ0ZU00YTdYVWdTcFU4SjFwYmZnVWtw?=
 =?utf-8?B?WXBWSEVpSStGc3FUR0xwL1JRaGFyYmxqT21wcXlTODNQbUhvRzhMaXNJem11?=
 =?utf-8?B?cEZKQUdVZW5WT2xabzdjYlFsN1RxSHA2dE5qcVg2RUF6REkzUUNoMGlVeEJ2?=
 =?utf-8?B?bDMwU1pMRjZsbXAvdEx0VjFZYXJPNTkyQ25FUjNBTU9CK2wraHNFY3Uzc1p2?=
 =?utf-8?B?UTZOY2RoMHZIQklvOXdkN0ZWY2p3aVQzY0M3VHpTTHJDZll0bXJrcnkrZmxP?=
 =?utf-8?B?UkhDSElHQzVVUWxyWU51L3c0UXdyaEl1VituVE5xOHRheVpwa0ozeUhxV0dU?=
 =?utf-8?B?QTIwVFJVbjNhcWxiZmE5RjhWcmVTM1hXNEFzM3FJTTNhSnp2ZXBlN29UN2JK?=
 =?utf-8?B?cytXUWlSSTFVNXBvbjhkVm5KbTRHd3NmWjMvYmFSQWxuSjV5MTdiWWVnYU9B?=
 =?utf-8?B?bkdSSDNxWWdvSWVrcUNEMWFsL1ZTeWprOVJoUENhWmM2UTVYTUE5Zm8zR1RO?=
 =?utf-8?B?NURLdjNqV3hxOHNDLzBLMWFlOFAyTmkxOXNBdUs3VXlQK2lJU0FsQVhkSmhv?=
 =?utf-8?B?bm04YmN0MG12YXBoSStoK1crSG1BbmpRbmhmb0FjbnFUcUljQkdaQUdncXls?=
 =?utf-8?B?REI0S2ZwR2RDeklmRFJtVDhrR2E4eFQ4WmZPenYrR3locVorMkNZczZDWXpJ?=
 =?utf-8?B?RjNaeS9mM1VMVHJBRVB3dHdWMkcrV1ZWL1hrZld6eTZUd0VmMzh2YUd6L2tZ?=
 =?utf-8?B?OGwrcHkvWUJrcDByNDBCWnpYN25ISXRublVjMHJhS29scFFpOVFaWElNUGFX?=
 =?utf-8?B?YXZpYlZJSW80aVVnUGhhYlY3V3lFTnpXQ0I4VjRJMXRwSGhHcFQ3bW9WcDk1?=
 =?utf-8?B?S2Vrdmx2NW41aWMweFNXR3ZSQ0pHMkl6MjVvVFBlSkFaWHFHRFNpSjBuTEwv?=
 =?utf-8?B?c1BmVktWSGZPSEtYMjB5aVJzbTNYRUs5VnE2Q3FhSDBHL1hRbjlwY1lOcWV2?=
 =?utf-8?B?TTcwamFTeS92bGZ0V1lRRXVraDIvUmNXaWhZVmJKSmJlQ1hPMFlLSmZZa2hX?=
 =?utf-8?B?dXBRMktiTy82bnNVZ3NVVk9naEtGVDFKS0N4dXRyR3JiS0JOWDY1Z2N0MHJB?=
 =?utf-8?B?SHRWbVlQNzc0NFVaSjI3cFhNVTFIVFg0RisvNEJUZ08wUjZXVW1rN1NBeUhV?=
 =?utf-8?B?Z2taUHRrZmhPcUt6bE80MU5hSk0rQ1VlSnZtMkVSTjNYbGNlcDhtN0txSmZz?=
 =?utf-8?B?T2k5Uk5hUDRaN2ROQ0I0OTVKUjhudXlySDBuWk1NVVZ0S1ZRYndkUDhhUUto?=
 =?utf-8?B?MzRSWW5XOXA2S00vdnZ0eEJyQnYyNDcyNHVNWFJhV1NXL3JGQVpidi9LdkZ4?=
 =?utf-8?B?YTY5dXNRZHFJU1lkWi9YZ1VMOHltQnhIMmdJRVovUi9QWEpoYnhZcldpaXZE?=
 =?utf-8?B?eU1CU0JrMFdJREh0blNXdUpKMHMyMFBQN0xsUXkyUnJ1SFVhTUgxamkvT25y?=
 =?utf-8?B?WFpXb1V0b0tYUDVCTkJWK1dMUmdveXpSTU94eUR0My9kS2Z4aTB2bHVqQmtO?=
 =?utf-8?B?bUw1TXRUWFpxRjhielFFMjduWmhWSFdiMFdHM1cwT0VITy8yVFBtWGg5djFp?=
 =?utf-8?B?Q1ZBM0FJWFdoODZnZ1VlbWh0UmpxSzBxcDVuOW1uOWUvT2FPVmdxVlBLa1Uy?=
 =?utf-8?B?WXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <702BB65C8906A948B9D3305E6EF7882F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a00d3836-eb63-4a5d-e177-08dbb80b380d
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2023 05:50:52.7097 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /s9VhwTho4pLKrpcqTLMfeHPY5p6BzhXnScj7pSUJ9PZGXXocVSc1DinbeQyRnjaqjrL9IMrNuw+0lrUDbaoUA6g9UE/M+xn3s6AbT7t/H4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8453
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove runtime suspended boolean
 from intel_runtime_pm struct
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

T24gV2VkLCAyMDIzLTA5LTEzIGF0IDE4OjAxICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IFdlZCwgU2VwIDEzLCAyMDIzIGF0IDAzOjAyOjU4UE0gKzAzMDAsIEphbmkgTmlrdWxhIHdyb3Rl
Og0KPiA+IE9uIFdlZCwgMTMgU2VwIDIwMjMsIEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5k
ZXJAaW50ZWwuY29tPg0KPiA+IHdyb3RlOg0KPiA+ID4gSXQncyBub3QgbmVjZXNzYXJ5IHRvIGNh
cnJ5IHNlcGFyYXRlIHN1c3BlbmRlZCBzdGF0dXMgaW5mb3JtYXRpb24NCj4gPiA+IGluDQo+ID4g
PiBpbnRlbF9ydW50aW1lX3BtIHN0cnVjdCBhcyB0aGlzIGluZm9ybWF0aW9uIGlzIGFscmVhZHkg
aW4NCj4gPiA+IHVuZGVybHlpbmcgZGV2aWNlDQo+ID4gPiBzdHJ1Y3R1cmUuIFJlbW92ZSBpdCBh
bmQgdXNlIHBtX3J1bnRpbWVfc3VzcGVuZGVkKCkgdG8gb2J0YWluDQo+ID4gPiBzdXNwZW5kZWQN
Cj4gPiA+IHN0YXR1cyBpbmZvcm1hdGlvbiB3aGVuIG5lZWRlZC4NCj4gPiANCj4gPiBJIHN0YXJ0
ZWQgd29uZGVyaW5nIGlmIHRoaXMgaXMgcmFjeSwgYW5kIG15IGNvbmNsdXNpb24gaXMgdGhhdCBp
dCdzDQo+ID4gImxlc3MiIHJhY3kgdGhhbiB0aGUgb3JpZ2luYWwuIHJwbS0+c3VzcGVuZGVkIGdl
dHMgdG9nZ2xlZCBpbiB0aGUNCj4gPiBtaWRkbGUNCj4gPiBvZiB0aGUgc3VzcGVuZC9yZXN1bWUg
c2VxdWVuY2VzLiBTbyBpdCBjb3VsZCBiZSBoYWxmd2F5LiBEdW5ubyBpZg0KPiA+IGFueXRoaW5n
ICphZnRlciogdGhvc2UgdG9nZ2xlcyBkZXBlbmRzIG9uIHRoZSBzdGF0ZSBoYXZpbmcgYmVlbg0K
PiA+IGNoYW5nZWQNCj4gPiBhbHJlYWR5OyBkaWRuJ3QgZmluZCBhbnkuIE1heWJlIEltcmUgaGFz
IGEgYmV0dGVyIGlkZWEuDQo+ID4gDQo+ID4gQWxzbywgcG1fcnVudGltZV9zdXNwZW5kZWQoKSBz
ZWVtcyBtb3JlIHJlbGlhYmxlIHdoZW4NCj4gPiBzdXNwZW5kL3Jlc3VtZQ0KPiA+IGZhaWxzLg0K
PiANCj4gVGhlIGZsYWcgd2FzIGFkZGVkIGluIHRoZSBpbml0aWFsIHJ1bnRpbWUgUE0gZW5hYmxp
bmcgcGF0Y2ggdG8gZGV0ZWN0DQo+IE1NSU8gYWNjZXNzZXMgd2hpbGUgcnVudGltZSBzdXNwZW5k
ZWQsIGxvb2tzIGxpa2UNCj4gcG1fcnVudGltZV9zdXNwZW5kZWQoKQ0KPiB3b3VsZCd2ZSB3b3Jr
ZWQgb2sgYWxyZWFkeSBhdCB0aGF0IHBvaW50Lg0KPiANCj4gSSB3b25kZXJlZCBob3cgdGhlIGFi
b3ZlIGRldGVjdGlvbiB3b3VsZCBjaGFuZ2UgaW4gdGhlIHN5c3RlbSBzdXNwZW5kDQo+IC8NCj4g
cmVzdW1lIGhhbmRsZXJzIGJ1dCB0aGF0IGxvb2tzIG9rIGFzIHdlbGwgd2l0aCB0aGUgZGlzYWJs
ZV9kZXB0aA0KPiBjaGVjaw0KPiBpbiBwbV9ydW50aW1lX3N1c3BlbmRlZCgpOg0KPiBSZXZpZXdl
ZC1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiANCj4gPiBBY2tlZC1ieTog
SmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gPiANCg0KVGhhbmsgeW91IElt
cmUgYW5kIEphbmkgZm9yIGNoZWNraW5nIG15IHBhdGNoLiBUaGlzIGlzIG5vdyBtZXJnZWQuDQoN
CkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCj4gPiANCj4gPiA+IA0KPiA+ID4gQ2M6IEphbmkgTmlr
dWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+ID4gPiBDYzogSW1yZSBEZWFrIDxpbXJlLmRl
YWtAaW50ZWwuY29tPg0KPiA+ID4gDQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5k
ZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiA+IC0tLQ0KPiA+ID4gwqBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyB8IDIgKy0NCj4gPiA+
IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcml2ZXIuY8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHwgMyAtLS0NCj4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
cHVfZXJyb3IuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMiArLQ0KPiA+ID4gwqBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1lX3BtLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHwgMSAtDQo+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1bnRpbWVfcG0uaMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgfCA0ICsrLS0NCj4gPiA+IMKgNSBmaWxlcyBjaGFuZ2VkLCA0
IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pDQo+ID4gPiANCj4gPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0KPiA+
ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0K
PiA+ID4gaW5kZXggNjhjZjVlNmIwYjQ2Li44ODliYjI2MDA5YTIgMTAwNjQ0DQo+ID4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0KPiA+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2Vy
LmMNCj4gPiA+IEBAIC0yMTYsNyArMjE2LDcgQEAgYm9vbCBfX2ludGVsX2Rpc3BsYXlfcG93ZXJf
aXNfZW5hYmxlZChzdHJ1Y3QNCj4gPiA+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiA+
ID4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBpOTE1X3Bvd2VyX3dlbGwgKnBvd2VyX3dlbGw7DQo+
ID4gPiDCoMKgwqDCoMKgwqDCoMKgYm9vbCBpc19lbmFibGVkOw0KPiA+ID4gwqANCj4gPiA+IC3C
oMKgwqDCoMKgwqDCoGlmIChkZXZfcHJpdi0+cnVudGltZV9wbS5zdXNwZW5kZWQpDQo+ID4gPiAr
wqDCoMKgwqDCoMKgwqBpZiAocG1fcnVudGltZV9zdXNwZW5kZWQoZGV2X3ByaXYtPmRybS5kZXYp
KQ0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gZmFsc2U7DQo+
ID4gPiDCoA0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGlzX2VuYWJsZWQgPSB0cnVlOw0KPiA+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJpdmVyLmMNCj4gPiA+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcml2ZXIuYw0KPiA+ID4gaW5kZXggZjhkYmVlN2E1
YWY3Li5jZDk4ZWU3NDA5NzYgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2RyaXZlci5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
aXZlci5jDQo+ID4gPiBAQCAtMTU2OSw4ICsxNTY5LDYgQEAgc3RhdGljIGludCBpbnRlbF9ydW50
aW1lX3N1c3BlbmQoc3RydWN0DQo+ID4gPiBkZXZpY2UgKmtkZXYpDQo+ID4gPiDCoMKgwqDCoMKg
wqDCoMKgaWYgKHJvb3RfcGRldikNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgcGNpX2QzY29sZF9kaXNhYmxlKHJvb3RfcGRldik7DQo+ID4gPiDCoA0KPiA+ID4gLcKgwqDC
oMKgwqDCoMKgcnBtLT5zdXNwZW5kZWQgPSB0cnVlOw0KPiA+ID4gLQ0KPiA+ID4gwqDCoMKgwqDC
oMKgwqDCoC8qDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgICogRklYTUU6IFdlIHJlYWxseSBzaG91
bGQgZmluZCBhIGRvY3VtZW50IHRoYXQNCj4gPiA+IHJlZmVyZW5jZXMgdGhlIGFyZ3VtZW50cw0K
PiA+ID4gwqDCoMKgwqDCoMKgwqDCoCAqIHVzZWQgYmVsb3chDQo+ID4gPiBAQCAtMTYyMSw3ICsx
NjE5LDYgQEAgc3RhdGljIGludCBpbnRlbF9ydW50aW1lX3Jlc3VtZShzdHJ1Y3QNCj4gPiA+IGRl
dmljZSAqa2RldikNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBkaXNhYmxlX3JwbV93YWtlcmVmX2Fz
c2VydHMocnBtKTsNCj4gPiA+IMKgDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfb3ByZWdp
b25fbm90aWZ5X2FkYXB0ZXIoZGV2X3ByaXYsIFBDSV9EMCk7DQo+ID4gPiAtwqDCoMKgwqDCoMKg
wqBycG0tPnN1c3BlbmRlZCA9IGZhbHNlOw0KPiA+ID4gwqANCj4gPiA+IMKgwqDCoMKgwqDCoMKg
wqByb290X3BkZXYgPSBwY2llX2ZpbmRfcm9vdF9wb3J0KHBkZXYpOw0KPiA+ID4gwqDCoMKgwqDC
oMKgwqDCoGlmIChyb290X3BkZXYpDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9ncHVfZXJyb3IuYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dwdV9lcnJvci5jDQo+ID4gPiBpbmRleCA0MDA4YmIwOWZkYjUuLmE2MGJhYjE3N2M1NSAxMDA2
NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMNCj4g
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMNCj4gPiA+IEBA
IC0xOTcyLDcgKzE5NzIsNyBAQCBzdGF0aWMgdm9pZCBjYXB0dXJlX2dlbihzdHJ1Y3QNCj4gPiA+
IGk5MTVfZ3B1X2NvcmVkdW1wICplcnJvcikNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGVycm9yLT5pOTE1Ow0KPiA+ID4gwqANCj4gPiA+IMKg
wqDCoMKgwqDCoMKgwqBlcnJvci0+d2FrZWxvY2sgPSBhdG9taWNfcmVhZCgmaTkxNS0NCj4gPiA+
ID5ydW50aW1lX3BtLndha2VyZWZfY291bnQpOw0KPiA+ID4gLcKgwqDCoMKgwqDCoMKgZXJyb3It
PnN1c3BlbmRlZCA9IGk5MTUtPnJ1bnRpbWVfcG0uc3VzcGVuZGVkOw0KPiA+ID4gK8KgwqDCoMKg
wqDCoMKgZXJyb3ItPnN1c3BlbmRlZCA9IHBtX3J1bnRpbWVfc3VzcGVuZGVkKGk5MTUtPmRybS5k
ZXYpOw0KPiA+ID4gwqANCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBlcnJvci0+aW9tbXUgPSBpOTE1
X3Z0ZF9hY3RpdmUoaTkxNSk7DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgZXJyb3ItPnJlc2V0X2Nv
dW50ID0gaTkxNV9yZXNldF9jb3VudCgmaTkxNS0+Z3B1X2Vycm9yKTsNCj4gPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1lX3BtLmMNCj4gPiA+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5jDQo+ID4gPiBpbmRleCA2ZDhlNWU1
YzBjYmEuLjg3NDMxNTNmYWQ4NyAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3J1bnRpbWVfcG0uYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfcnVudGltZV9wbS5jDQo+ID4gPiBAQCAtNjUyLDcgKzY1Miw2IEBAIHZvaWQgaW50ZWxf
cnVudGltZV9wbV9pbml0X2Vhcmx5KHN0cnVjdA0KPiA+ID4gaW50ZWxfcnVudGltZV9wbSAqcnBt
KQ0KPiA+ID4gwqANCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBycG0tPmtkZXYgPSBrZGV2Ow0KPiA+
ID4gwqDCoMKgwqDCoMKgwqDCoHJwbS0+YXZhaWxhYmxlID0gSEFTX1JVTlRJTUVfUE0oaTkxNSk7
DQo+ID4gPiAtwqDCoMKgwqDCoMKgwqBycG0tPnN1c3BlbmRlZCA9IGZhbHNlOw0KPiA+ID4gwqDC
oMKgwqDCoMKgwqDCoGF0b21pY19zZXQoJnJwbS0+d2FrZXJlZl9jb3VudCwgMCk7DQo+ID4gPiDC
oA0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGluaXRfaW50ZWxfcnVudGltZV9wbV93YWtlcmVmKHJw
bSk7DQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGlt
ZV9wbS5oDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1bnRpbWVfcG0uaA0K
PiA+ID4gaW5kZXggNzY0YjE4M2FlNDUyLi5mNzljZGE3YTI1MDMgMTAwNjQ0DQo+ID4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1lX3BtLmgNCj4gPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1bnRpbWVfcG0uaA0KPiA+ID4gQEAgLTYsNiArNiw3
IEBADQo+ID4gPiDCoCNpZm5kZWYgX19JTlRFTF9SVU5USU1FX1BNX0hfXw0KPiA+ID4gwqAjZGVm
aW5lIF9fSU5URUxfUlVOVElNRV9QTV9IX18NCj4gPiA+IMKgDQo+ID4gPiArI2luY2x1ZGUgPGxp
bnV4L3BtX3J1bnRpbWUuaD4NCj4gPiA+IMKgI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+DQo+ID4g
PiDCoA0KPiA+ID4gwqAjaW5jbHVkZSAiaW50ZWxfd2FrZXJlZi5oIg0KPiA+ID4gQEAgLTQzLDcg
KzQ0LDYgQEAgc3RydWN0IGludGVsX3J1bnRpbWVfcG0gew0KPiA+ID4gwqDCoMKgwqDCoMKgwqDC
oGF0b21pY190IHdha2VyZWZfY291bnQ7DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRl
dmljZSAqa2RldjsgLyogcG9pbnRzIHRvIGk5MTUtPmRybS5kZXYgKi8NCj4gPiA+IMKgwqDCoMKg
wqDCoMKgwqBib29sIGF2YWlsYWJsZTsNCj4gPiA+IC3CoMKgwqDCoMKgwqDCoGJvb2wgc3VzcGVu
ZGVkOw0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGJvb2wgaXJxc19lbmFibGVkOw0KPiA+ID4gwqDC
oMKgwqDCoMKgwqDCoGJvb2wgbm9fd2FrZXJlZl90cmFja2luZzsNCj4gPiA+IMKgDQo+ID4gPiBA
QCAtMTEwLDcgKzExMCw3IEBAIGludGVsX3JwbV93YWtlbG9ja19jb3VudChpbnQgd2FrZXJlZl9j
b3VudCkNCj4gPiA+IMKgc3RhdGljIGlubGluZSB2b2lkDQo+ID4gPiDCoGFzc2VydF9ycG1fZGV2
aWNlX25vdF9zdXNwZW5kZWQoc3RydWN0IGludGVsX3J1bnRpbWVfcG0gKnJwbSkNCj4gPiA+IMKg
ew0KPiA+ID4gLcKgwqDCoMKgwqDCoMKgV0FSTl9PTkNFKHJwbS0+c3VzcGVuZGVkLA0KPiA+ID4g
K8KgwqDCoMKgwqDCoMKgV0FSTl9PTkNFKHBtX3J1bnRpbWVfc3VzcGVuZGVkKHJwbS0+a2Rldiks
DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJEZXZpY2Ugc3VzcGVu
ZGVkIGR1cmluZyBIVyBhY2Nlc3NcbiIpOw0KPiA+ID4gwqB9DQo+ID4gDQo+ID4gLS0gDQo+ID4g
SmFuaSBOaWt1bGEsIEludGVsDQoNCg==
