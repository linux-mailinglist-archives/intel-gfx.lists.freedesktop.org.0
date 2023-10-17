Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB03E7CC5D2
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Oct 2023 16:22:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3518810E062;
	Tue, 17 Oct 2023 14:22:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A4C410E062
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Oct 2023 14:21:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697552517; x=1729088517;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wO7rAbBKG2vqhlYetQ+nilqbhx/A8RadF6rIEH/WM7c=;
 b=LjGK4oh6ZWo0cZKe2nGihAzZry5r8CESzq6RYGW1ycnTc7mI6MYgNzLR
 qJS4hBNtCGFNzsCRhgtyyXkw3rrMe2h5Ttqr426TcKDMt63nZsx89TnGx
 oSMBbw0KcXl5BDt02fIO8d+BM6T8xy1k9DmSb+aPnRP2ibR8edgx6ICYT
 9W6xj9YWXb30NgnVlli0DuWnIaIc6Ery4y5UPZCfJ9wi+VhTEw12aPOM/
 XVOySpyCDR5m0i7AZyCwcsklw5g4CTe20IcTmHpH7b1ZzmRafY3tczHwm
 mg3cTzLjNrDZ4wVczQkfP2CkG6k6jFdWc1WP17TaS0kFhXomhBVjj7Ch/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="4390738"
X-IronPort-AV: E=Sophos;i="6.03,232,1694761200"; 
   d="scan'208";a="4390738"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 07:20:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="732736838"
X-IronPort-AV: E=Sophos;i="6.03,232,1694761200"; d="scan'208";a="732736838"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Oct 2023 07:20:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 17 Oct 2023 07:20:37 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 17 Oct 2023 07:20:37 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 17 Oct 2023 07:20:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gUkWsyqi2T5QkaBd3uimwiH/8kEVXYF7R1GllUIViD8lfW0nKv8qxJxfocDxjhXHKQeN9PKNGYhGp6CAd6ixU0G444jbw43g4uy7lXabL4dEdXFYqJ6rSw2ntLCGwYn10cZve+VkOhvDBuKKtfif5nlWjUzRWwInVamIi17app/qCiyDHyao8qfLvqkadZHpCJoA1VYrORs+U14VpcqMP1gxzQ8ZU8EWO0rpD8E9eJfZAKYIloj3DV/oGHzXAjQeN0yctHiRzDPRE8jdGi+dqVaALwI/zk+3I8x+rT04kZzUDRJr1liq7IQ4onfOFmCd4ebfmGbrIIJ8tLDhQg2T9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wO7rAbBKG2vqhlYetQ+nilqbhx/A8RadF6rIEH/WM7c=;
 b=Y0HzZMVYR9o6m5R1x6r+dlwJSMxL/V24F6ip5VTycTYV4G+UDPSK6q/tjIFLAHzfEIgX2bF71tShqntXEGKq5e3yBog0Pfq+MVqPTZUJhBKmTOLmlfDdOSbgP+w8Yr0VkGQsGXGDz09FRcgjGd8v70/m7gnlFLj3NyR8C6CihTrWLM6H8LHCZUY2kn9AHNJVrzJQIzxcNztf39Cl3UNIU6M/xXv0RxLZSXRuqiuBZhaKlefmHMKLq5BfA1WnXbz/BORo3tfNrFQg2+0L2YbISH8kE2BEvNHp7I+kjQbmC8fAx2BW+u/tj31wF3WCLT6iRKpL1Ko2S11g6m0HnnoSCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6366.namprd11.prod.outlook.com (2603:10b6:930:3a::8)
 by CH3PR11MB8468.namprd11.prod.outlook.com (2603:10b6:610:1ba::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.45; Tue, 17 Oct
 2023 14:20:32 +0000
Received: from CY5PR11MB6366.namprd11.prod.outlook.com
 ([fe80::8593:7da:ec34:29a3]) by CY5PR11MB6366.namprd11.prod.outlook.com
 ([fe80::8593:7da:ec34:29a3%4]) with mapi id 15.20.6886.034; Tue, 17 Oct 2023
 14:20:32 +0000
From: "Usyskin, Alexander" <alexander.usyskin@intel.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Thread-Topic: [PATCH 06/10] drm/i915/spi: spi register with mtd
Thread-Index: AQHZ4+SWmqcIZAUsFU2z1MSft+JTq7BMUNCAgAHIK5CAACJ6AIAABanA
Date: Tue, 17 Oct 2023 14:20:32 +0000
Message-ID: <CY5PR11MB63663DB0C17321A1A0C46FF3EDD6A@CY5PR11MB6366.namprd11.prod.outlook.com>
References: <20230910123949.1251964-1-alexander.usyskin@intel.com>
 <20230910123949.1251964-7-alexander.usyskin@intel.com>
 <20231016103939.67445bee@xps-13>
 <CY5PR11MB6366850CCE851BCA05A9DC2BEDD6A@CY5PR11MB6366.namprd11.prod.outlook.com>
 <20231017155544.6cceb6a6@xps-13>
In-Reply-To: <20231017155544.6cceb6a6@xps-13>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6366:EE_|CH3PR11MB8468:EE_
x-ms-office365-filtering-correlation-id: 68214dae-5b69-461a-1549-08dbcf1c38d9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fkldWKDeYJyl0KdwGMBqZgXbwR0DbnDJlR7GtZ1q/wOfGpVV5fOCgBql5HeOJ4zz3f3FlxQztLuERaYeoN/7R7RHpAsQc3tQ44L/olchqJm+I0vkbRlMVanMHSwjnDhzrcLdntwPg9ck+3+fF+tqF0xFOfR3D5p17Y+0PONfmd3jEG8z9MrR059JEgXtb/qehjy3a2m3uFr7I+jJE0OvHaaaxuo8nT5F+GbYebS6N+ArQHg5E5eTD/OkYIuJ+fTC9lS8o+lt0OJSJo2CgJ/H0rFvYIgKPzWX72auq2g2yPQKTUr6Id2DstL/CFtfgqwe9o8BaPw5aXhkK7adZweGCHIvILGEkXuUWop9YAn336J4jv6shu7nojbutTWLSOo1oR5jVwzfiZtojk2mdaXDQd3IEgQDeI4RYSiMY/aXAAkFBVlVEsU2DYiAwdDtpfIg+KQm+NHQrW9KWNPy/RnCtphfd/Y/eY3J7I8MZ8pmDHQZEQZ1vAYpxV4J9SuEqHhuW6ki1txJXmTJHnvRv2RX9xYqXYxsGZgilO8Th6lrr8DFyjHgDSNmmU0xv5zFBeRFljJZAVlxvR78+Ni9jBRsMlQoh3DGYrHJgjVHgokU19Y2EVv3w4JHvpb8/ITEHgac
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6366.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(376002)(136003)(396003)(39860400002)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(7696005)(6506007)(6916009)(9686003)(316002)(76116006)(54906003)(66946007)(71200400001)(66476007)(66446008)(64756008)(66556008)(478600001)(55016003)(8936002)(8676002)(4326008)(52536014)(5660300002)(86362001)(4744005)(122000001)(26005)(41300700001)(38070700005)(33656002)(38100700002)(2906002)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aHhvRzFYQ2V2WUJtTmZPSUJuNlM1WFVvdzV5dHFXVG9lVVRLdzc1Nm16cjNR?=
 =?utf-8?B?V3FPNDFlamNGbG4renptc0YwYUd4eEJ5bUY5OE44Qyt2WEdLTFEySXRlQTFj?=
 =?utf-8?B?Z1VxV2FZT3lJOXFxUklsY2NpVjN1L2RkYTN1QmJqMUtuMTRNdWhJTmU0L3Ay?=
 =?utf-8?B?a3FJU2RPNjZHVkExbkgzV0FiQ0tFYWtTODhGU0ZEb0t6TWNRSzBlNzlUOVhJ?=
 =?utf-8?B?QlVLYTRDTUFVbmtLcGJtVFl0ZW80Rm5kbGUyS1QyeXIzYUNBUkd3OWRFRTFP?=
 =?utf-8?B?R21qN2NaaGs5aG1YKzcxT2lqemFIUEludjNicVV6SEJDc0FHU0hRaG83MlRP?=
 =?utf-8?B?K3JpcjR3N3JydnVCNDYrNHl2ejN0OTRUQmtiN0dQcWN5MUQ2eFJtOTRTV2hV?=
 =?utf-8?B?dnIxVDZNODcyVFEyZURPV0tCTHo1QXNieHBZS1duNzhtVVI5RHM0RHRFWDdI?=
 =?utf-8?B?RnBVTmM0MW81L3FReWl4MTgzZUM4NFRIZDhuNHFpejJYSUc0Z0VkKzIzejJW?=
 =?utf-8?B?Mzk3b3ZiUXR6cGdpQytISWEwUS93ejcvL0dZbTJyR1N5bHU2eExEdVVQT01y?=
 =?utf-8?B?ckJxaEF1S05HMUI1aW9IRHBneEdmS1UxdzBmc1gyY2pSQjVpVGJqTzVsZjJ5?=
 =?utf-8?B?V1owOWhPRjk2bCt0bGhXbTMrTHpjaVpNNjFhVDNXbms5STUyU21PeDBpS2FL?=
 =?utf-8?B?VVc2cG54THl6UExmTWlwL1R6R09KdFRzL3lrd2pRelZwSURkZzJmbU1rcGRK?=
 =?utf-8?B?MWY3UWwwbTc1UWJzV1JZSERySjIzdmkrdXhXRCtYaW9ZWXczZFNvOXFNYWww?=
 =?utf-8?B?U2IyK0duclhzMElzRis4d2hPYjFpbFFKV0s3eEFzczJTY2NRcVIxVVNQL0xS?=
 =?utf-8?B?ZlhGTjdUVGJUdVd2bW56a3Rrd0l0SUtZWWhob0xJMVU4UjFON2NjTXovbEdy?=
 =?utf-8?B?eDZYRVZYS1VIa21uOWJ0M0dRMzJpK0hPYm5ZS3NUenU4dGlMTUJxbEJIR2NJ?=
 =?utf-8?B?ZzA2bXUweGpaMlhUYm9aaWdhcDlFQXFUN3M3cnZwa21leXpORHYwUjFCS3JL?=
 =?utf-8?B?VDU3d21kSU5sZzlnaFJDT1l2Q014Z0xWVXlVb01WU2g1NHl3YktLMFZLaDZL?=
 =?utf-8?B?MS8rRklrRXVWUzVPbkpPM3BoVFdpR0RBcEMvRGhkNkc0K04vNTY4TkllbUZI?=
 =?utf-8?B?Yll5dThpZWQ4U2JsbjlXdk9HM2tzUTZ6bVQ5Y3ZJL1VSbUV6MTVvSW5nMmZh?=
 =?utf-8?B?dmtjYmxleFIvVkNDUFBxRy9BbjFGaEZJRk5lK2QwQUc3Wll1QUwvMDQzeUlD?=
 =?utf-8?B?MkNwUnRJTG9aQitjcDIyZngxYjRCOEpDOGtlcVRERk9VSkJwRVBGdHB6MEFI?=
 =?utf-8?B?WU94S1lmQVpVdFE1VXNGWmNNVHNvcTlBUFFySmJTeFZkNm4xSW1jV252ajJM?=
 =?utf-8?B?UGJKb3JVc0VKZjR5d2dnM3JxVVMwRmJDT0RPUDlYeGg1M3dlY2duNFJLQVNa?=
 =?utf-8?B?aW91OHhLZ2pqSUV3KzR2ZWtnaWt3ZU1wOHY4elpRK0FaRnRpVXJmVmJzNFdR?=
 =?utf-8?B?RlRVcGJTR1M2d1gwblNvczh1OG5YQTluaGYwMnZ0RmQ1MWVpWWYwNUNxSjRh?=
 =?utf-8?B?UTFvQ3lzQmo0TmhiVHMwVzcyR0RqMFpraS8yWUZ0cmxmQXBodFR6V2pHUUtx?=
 =?utf-8?B?LzlZNFV0MjlhV0Nmb21hOFNNMlhDZ3NINmd0Z0FmR1FzaG5kSC9yUXNCR3pU?=
 =?utf-8?B?Qk5ZcEdmZzloQS9CeDFmb2RJMFpuV3hYcldXMHJyYkNJd1RtR0sxMVZKYzgw?=
 =?utf-8?B?WkE0RTRsaEUzTmpxL245b1gvQTlrUG1hMy9ObmljeURUNVVseUZKWk1iMGtN?=
 =?utf-8?B?eHNxOXJLRHFpcE9jWHZHSTVqSlJNQUNIT3VkNDZPRjN4RWdNejFaL3NvZWl0?=
 =?utf-8?B?L0U4U3FLZDNTL05neStLbG4wWmpraEtUVlB4TVFxTnhYRXduNFBDMUZhRkJ1?=
 =?utf-8?B?cDNBRE9IMm5wclFlMGZNeDdzMUE0L0J1eDJGVlJtWFlTOUJJYnl0L2VtNnlV?=
 =?utf-8?B?eVBGaFhYcDcyVkk1NG96Q1pBV0NNbE5GekE5WEo2YzF0M05OTlhPK2NpMndo?=
 =?utf-8?B?clgrTDB2UjB5QURGNC9hZE1nRWtWYVZhWUxyS1lqcXg2TDFpK0lsRFhjKzF2?=
 =?utf-8?B?Qmc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6366.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68214dae-5b69-461a-1549-08dbcf1c38d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2023 14:20:32.2337 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7VShPH36jkO2CyY9jBQw+4Zuf4Nwewx6KHYq56zG3qv0hul3ygJUyk5MT5840ARIpt29hqWX391TM7A2SrOhinYINm9gmiF3e7x5QaOrSCQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8468
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 06/10] drm/i915/spi: spi register with mtd
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>, "Winkler, Tomas" <tomas.winkler@intel.com>,
 "Lubart, Vitaly" <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiA+ID4gPiArCXNwaS0+bXRkLndyaXRlc2l6ZSA9IFNaXzE7IC8qIDEgYnl0ZSBncmFudWxhcml0
eSAqLw0KPiA+ID4NCj4gPiA+IFlvdSBzYXkgd3JpdGVzaXplIHNob3VsZCBiZSBhbGlnbmVkIHdp
dGggNCBpbiB5b3VyIG5leHQgcGF0Y2g/DQo+ID4NCj4gPiBXZSBzdXBwb3J0IHVuYWxpZ25lZCB3
cml0ZSBieSByZWFkaW5nIGFsaWduZWQgNGJ5dGVzLA0KPiA+IHJlcGxhY2luZyBjaGFuZ2VkIGJ5
dGVzIHRoZXJlIGFuZCB3cml0aW5nIHdob2xlIDRieXRlcyBiYWNrLg0KPiA+IElzIHRoZXJlIGFu
eSBwcm9ibGVtIHdpdGggdGhpcyBhcHByb2FjaD8NCj4gDQo+IElzIHRoZXJlIGEgcmVhc29uIHRv
IGRvIHRoYXQgbWFudWFsbHkgcmF0aGVyIHRoYW4gbGV0dGluZyB0aGUgY29yZQ0KPiBoYW5kbGUg
dGhlIGNvbXBsZXhpdHk/DQo+IA0KSSB3YXMgbm90IGF3YXJlIHRoYXQgY29yZSBjYW4gZG8gdGhp
cy4gVGhlIGNvcmUgaW1wbGVtZW50cyBhYm92ZSBsb2dpYw0KaWYgSSBwdXQgU1pfNCBoZXJlIGFu
ZCBjYWxsZXIgdHJ5IHRvIHdyaXRlLCBzYXksIG9uZSBieXRlPw0KQW5kIHN5bmMgbXVsdGlwbGUg
d3JpdGVycz8NCklmIHNvLCBJIGNhbiByZW1vdmUgbWFudWFsIHdvcmssIEkgdGhpbmssIGFuZCBt
YWtlIHRoZSBwYXRjaGVzIHNtYWxsZXIuDQoNCi0tIA0KVGhhbmtzLA0KU2FzaGENCg0KDQo=
