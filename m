Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 895CF7376B5
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jun 2023 23:36:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6B9E10E023;
	Tue, 20 Jun 2023 21:36:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 926A110E023
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jun 2023 21:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687296982; x=1718832982;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fDQ4hFpadfbeqGEETVE6+NfsdpZSpnb9vUdObJZuyLA=;
 b=n6lVdak5/U98b4L+NsGPXADP59MmWJnavpFyHxhgk1MJONQrZ6P81Clu
 SQ6loX8sPe451ckZlYoK5EjSOIwyIGIuolbmMUOGTNSZ7DitqGV68kXYR
 2VzfgmFjOCDe0Zu9afQs+PSTZ9SGMhkK3Ogf1adiiX0lwginAcXO3qDcb
 WY67158T68oXsQKD+qL1mq4Kh8Zw5TFQsqxnTVe6xHL5r7CX2J/Hp68la
 pz+IevzkBhZUrSb7vohfbGlmH3swtZmgxF6LLz3tGhIs9wFAJ9bWlMLAg
 RzNza+pIMYOG8U2fGykxD7s5A2WNPAv87GyC118PgtCrrPZpkaQMQmt/C A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="344732166"
X-IronPort-AV: E=Sophos;i="6.00,258,1681196400"; d="scan'208";a="344732166"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 14:36:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="743911949"
X-IronPort-AV: E=Sophos;i="6.00,258,1681196400"; d="scan'208";a="743911949"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 20 Jun 2023 14:36:21 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 20 Jun 2023 14:36:21 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 20 Jun 2023 14:36:20 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 20 Jun 2023 14:36:20 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 20 Jun 2023 14:36:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VbHH3ZKKkJjfkhorf5YTBoLKKgetgTWS6v+qBmgXk0Jp4darytPhEG/P82E79GEJaYbOHTYuh4J87qTlNxiW86M5zUCja7W3HuOlyaD+UyUTGTdIdHNpSdXpP3Q+I/bvsjWvZcrpcdbooWq1rQggArPQ+O3bBdtHGx+tO1ixHyUek1pVxL59YBSrvTs5yfrrRNnLsnOmYQJlFKmkn7Ak4GwtnEjovwDottqPPFai+i4VHg8KSvATO8IBFm7Ioc5s86jUgwc0Mh7HNCha8voFXwCv80hipsHWCf0DKcYY8Ttp5JiCuAnwMldlKglkO7ItlfosLUAxkcIckGoExB4r/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fDQ4hFpadfbeqGEETVE6+NfsdpZSpnb9vUdObJZuyLA=;
 b=YTxa/dTSdWldFOYoUaSUpezUjfaPujD3wDnGsrpJOTGwsc/7C24JjHvQKofB7tdqls7NwB7R1QO9VBp1QtutHrbHa9UOGiAflLsFc6moedylgLzj15uRcie1dPGuNWwDk0l4OGw9LJ3hJg/yAFCh1jdrabs61UpwPD5csOiMhB7GIIyPPDFFJfhsQNF3NZam1M4Sh89RPiCkkaiibEWsWjpkw9l5KYcZVT59Ui2PbDyEmdfhg8LgsuPomJekflOuRF2TPRPd8hYEigbgJiu7r8uWb8PtWz7U2vFUKEdgtNejUyjO3OhWHPDNLlOSENmYddvZE6yRpSkVwXu2WjDNvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 SJ1PR11MB6299.namprd11.prod.outlook.com (2603:10b6:a03:456::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.21; Tue, 20 Jun
 2023 21:36:18 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e%5]) with mapi id 15.20.6500.036; Tue, 20 Jun 2023
 21:36:18 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/mtl: Fix SSC selection for MPLLA
Thread-Index: AQHZoAzPfF9oLWxikUaeVdZEA9B7V6+NAaYAgAc8moA=
Date: Tue, 20 Jun 2023 21:36:18 +0000
Message-ID: <DM4PR11MB59719E8EFB44CCB2896C97AF875CA@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230616043950.1576836-1-radhakrishna.sripada@intel.com>
 <SN7PR11MB7041CBB63A47A6B22D21D385EF58A@SN7PR11MB7041.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB7041CBB63A47A6B22D21D385EF58A@SN7PR11MB7041.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|SJ1PR11MB6299:EE_
x-ms-office365-filtering-correlation-id: 7718acb1-9289-411a-3202-08db71d6622d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8slpM+cdsk7m5LyIZTBnd5QxDiZYhG5dbORL1UAuIfXtERFs7PI7MH7rK6iDCXx6hw4dXGAwHoGgrptMTB0LyOYamAoPxE0qxrc7cu0GXUjBAFFoOaoUmOUZBoQscG8H/0WVT6KEUwuhMhCQuW3qR2U0Nsb84P5N0rQ21lfznxUw4YEDaDGK18m5SCZNmwpwmX7XcgylZ0PB72gkoLWL14tMMFD2HmAJUUofwfkRoAQldzM6ikPCig+feP9G2Ni9HToOrqXKt+e5AmfonxWOFiIbFiWcm4yO9J98oKbM77pFOUtyIfDM9l2GVy4zD+eeV12zGH1UXAzYUkeiNZFrKjd1tJqrtkBtvFP/zyhtTG8qIF7mDwbfpRosKMf22MTeNh44I8+GCCbUBRDHnVdoAaeULbYzl1kb/hcnq0oJn8rTAjA4YB/sMAZpzmJ8l6lp5OP+XB0jZksUQFvg+siqj/jQvTOxPPayc4vF8Pss2NqwfBNTccgmiYJLwAncwvjsjGLPtp+E9RQgHxd1YHIpvCkv02EaC9/We49GGVZPUbW6CxJ2CrFGNSKXe9gd4+VUsZ3Ro6sTNA/T6hbJZmMJ4gkPSEPOlds5R9idtusmENlZ+fpemxQZWKvo1Mw55kY8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(376002)(346002)(366004)(39860400002)(451199021)(33656002)(5660300002)(52536014)(66476007)(8936002)(8676002)(41300700001)(38070700005)(86362001)(66446008)(66556008)(76116006)(64756008)(38100700002)(122000001)(316002)(82960400001)(4326008)(55016003)(66946007)(107886003)(26005)(53546011)(6506007)(2906002)(9686003)(186003)(7696005)(478600001)(110136005)(83380400001)(71200400001)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MjVrSUxwMmxjUnlOSVJtSzNwaThKT3R1TVRSWVJoTjJQVXRsMjUrNkdrbGNN?=
 =?utf-8?B?Zk43bFVFOTR1VTZ2V2dxVU1sWnhpTHQzc0hzWkF5OXJBSU5ZZ1lOa09aekN1?=
 =?utf-8?B?U0lIQTltY1V5R2ZSWlk2dlhFV1hDTXB5eUxPWFU4V0hWNWNBOWlnMWZ1T2Z0?=
 =?utf-8?B?TW1FYjg0Q1ErWkY4Ulp3VTlmNFI3K0gxRExvcUNVZUNHbDR6MENURjkrcXFS?=
 =?utf-8?B?N2NhRW1tYlBBdWRQbk5lQmxvTUJKWjdReTVudE93bXpSaWdDUnVxVlJ2L0Fa?=
 =?utf-8?B?UkdWblhQSmpnMlNNTllUNGJJOUZ6Qm5RUG5lRnI2RDl0UXQrU3NyY0lQeEtO?=
 =?utf-8?B?dmhtRGtHRDE2aVZ4WVN2OUVOQVBrRVpLSDczUEEzZWlqRGhsb0RPdlRCVFdX?=
 =?utf-8?B?QlFBWnlRM3ZTbmYwSDJrZnBldGNBNkc5L01aR2RseWRUNWx0Z1VnWXIvYzZ4?=
 =?utf-8?B?M0h5eFpuRFNwYno5bUVFV3V6TGIrNlVMR2FweVQzMTNpOWdoYUEvU3ZmU2Q1?=
 =?utf-8?B?ajY0TTNWR1dxdHc4WXhmMnRPQVJmYmVkaTdOdUNia24zdVlOYVV6azd2TW9j?=
 =?utf-8?B?WGdoWG9TdHpacWtqZ2tGZmdFM0dxUmIxOEpoTGdWWjVOdzVKWDhHbHpFc04x?=
 =?utf-8?B?ek5EUXJtRkE0WEx2eExKb2ZjSUZ3SXo5NlpBdFlGNUUzNlptNHc3aWJrakZW?=
 =?utf-8?B?MTF4WnUwZ0gzQnBzL29waFBuc3ZjMXFhWmZUbFNERFBHeGZ5RE51SllSSUJH?=
 =?utf-8?B?RHhuazkxSjFyc3dKenhaS2Jic0NFekN0djMveFFVNExtcTYxSkp2YmFjMWZD?=
 =?utf-8?B?NEVBRW1rRG5zRTFtWCtmZmtjOXhxbEpWU2d6T3NvWjIzd2RER3lwS25Ld1FF?=
 =?utf-8?B?bzMyb3k2c3AvU2ZsUWg3SnJGU3BIODcySDhjdzVzblRuSi8raDd3WXl3N3Na?=
 =?utf-8?B?L1MybHUvMHljbm12LzB1MEZoc0RzV1B1bW02dGtnWXRURWtSa2V3eURGRmtp?=
 =?utf-8?B?Myt4ajA5bFQ5WFRMREZ3L1RNMXZ6aWpEM0R2Vzcxek5kS1VPSTQ5M3VPU2xD?=
 =?utf-8?B?bUhka3luNUE5MjZOT0lQY0NRUFNuQWNrd0ROalYwWXRhZVBFcHh2cTJSUnlW?=
 =?utf-8?B?RjJqVlJSNUl0NURnL1ZNMkErWEZaNGJCMXZBQmpZeEdNZktST2Y5SGZROVI0?=
 =?utf-8?B?WE00ZDhSUmdGTVZDZVdLSnVIK2hsd3VGem14eDdJVTdGQzQ0UXFGMzQ0WUdm?=
 =?utf-8?B?anhqcGh6REJaaVBITEU5S0NISDNVWFBLb1BxeHBtOE9pcFE4QjdVdlk5b3VR?=
 =?utf-8?B?TmlPbGYvQXFDWHd0ZEFpMUZPVEtGNCs0UitLclVvS2Y1RGpuWk11VTZVcHBj?=
 =?utf-8?B?dDc4RnhRK0ExRWJMRWx4SnVuUm5STlpJbzkrMHU0ZkRyUFdQVkJvZXVmMlFN?=
 =?utf-8?B?bmtrR2UxNWxWQWZtTU96NGc3TktYU200NU5wYi9QKyszcmpRLzlydnIzdVVF?=
 =?utf-8?B?a3lNa3o1THB3ZWFmbmhLQmVUUFI2TVFKdThZVVh3OG9MbHFTU1BkMzlKVGY3?=
 =?utf-8?B?b3U4WjRXcmpvbFVRNlpLNzZJSGwrMWErZmJYTHJBVDRCUmo1STUzUzN3UmlH?=
 =?utf-8?B?eGc3bU11RTdkaFZNZDNrSTd2MGRTTnZKZDdudkZBTWJZL2FHc0ZrUGF4bTNP?=
 =?utf-8?B?UXBCeHhLeHRQMjdMNGRCSlNpWkYvWlVGZjNJTlVhYkxIVE1UMVUwTEtpdUdt?=
 =?utf-8?B?V0g3Q1JpVnF3SitwczA4SnFhMm94QkJ2aU4xRFQxeGUzdHBKa3hBdjlUcURs?=
 =?utf-8?B?bE5hVWZYa053aW9HK3hYOFgrWTZHSGd1YnVSVzNCajVzYXhnYk8vSlhYK2cr?=
 =?utf-8?B?V0VLNGJaeEFQQ0tiRjczZnZuSERIWFBEWk9zR3ZvR0M2dDhjNmtwWEp1ZkU5?=
 =?utf-8?B?QWh0RjhnZnhRRnR3NWdjdFVHOEs0MHAzQWFDZ29ZSDhJL0dIZVBhMjFSNUpZ?=
 =?utf-8?B?VUo2UUhTakVjSk5KenB6YVkvRG5lNm80T202dXZxZTNtaDkvQXVib1Izc3U5?=
 =?utf-8?B?MXNjUVpqTkRicCtmUUVkU2dFWkZCVTc4b0VvbVByNmlZVCt2ejh6ZURvN1Fj?=
 =?utf-8?B?akVuZlBnN0FHK0FTSUpWU0pBSldxU1FYQ3ltWDVZSUZQVk5LYUd1SytyVlFJ?=
 =?utf-8?B?QkE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7718acb1-9289-411a-3202-08db71d6622d
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2023 21:36:18.6691 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BBRzGM+KnZjaEn/7fLzfWPjV4cb7GNF3lAjeg527E2mIB8nPs2GffoAsnSPoaxLlNTKzxvogzWw3VmSPY14I0r1s/AXfu4FtbGJM98ykyEA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6299
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Fix SSC selection for MPLLA
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

TWVyZ2VkLiBXaXRoIHNsaWdodCBjaGFuZ2UgdG8gY29tbWl0IG1lc3NhZ2UgdG8gc2lsZW5jZSBj
aGVja3BhdGNoIHdhcm5pbmcuIFRoYW5rIHlvdSBmb3IgdGhlIHJldmlldy4NCg0KLS1SYWRoYWty
aXNobmEoUkspIFNyaXBhZGENCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9t
OiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gU2VudDogRnJpZGF5LCBK
dW5lIDE2LCAyMDIzIDEyOjA1IEFNDQo+IFRvOiBTcmlwYWRhLCBSYWRoYWtyaXNobmEgPHJhZGhh
a3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT47IGludGVsLQ0KPiBnZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnDQo+IENjOiBUYXlsb3IsIENsaW50b24gQSA8Y2xpbnRvbi5hLnRheWxvckBpbnRlbC5j
b20+OyBBbG1haGFsbGF3eSwgS2hhbGVkDQo+IDxraGFsZWQuYWxtYWhhbGxhd3lAaW50ZWwuY29t
PjsgTXVydGh5LCBBcnVuIFIgPGFydW4uci5tdXJ0aHlAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBS
RTogW1BBVENIXSBkcm0vaTkxNS9tdGw6IEZpeCBTU0Mgc2VsZWN0aW9uIGZvciBNUExMQQ0KPiAN
Cj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IFNyaXBhZGEsIFJhZGhh
a3Jpc2huYSA8cmFkaGFrcmlzaG5hLnNyaXBhZGFAaW50ZWwuY29tPg0KPiA+IFNlbnQ6IEZyaWRh
eSwgSnVuZSAxNiwgMjAyMyA3OjQwIEFNDQo+ID4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcNCj4gPiBDYzogU3JpcGFkYSwgUmFkaGFrcmlzaG5hIDxyYWRoYWtyaXNobmEuc3Jp
cGFkYUBpbnRlbC5jb20+OyBLYWhvbGEsIE1pa2ENCj4gPG1pa2Eua2Fob2xhQGludGVsLmNvbT47
IFRheWxvciwgQ2xpbnRvbiBBDQo+ID4gPGNsaW50b24uYS50YXlsb3JAaW50ZWwuY29tPjsgQWxt
YWhhbGxhd3ksIEtoYWxlZA0KPiA8a2hhbGVkLmFsbWFoYWxsYXd5QGludGVsLmNvbT47IE11cnRo
eSwgQXJ1biBSDQo+ID4gPGFydW4uci5tdXJ0aHlAaW50ZWwuY29tPg0KPiA+IFN1YmplY3Q6IFtQ
QVRDSF0gZHJtL2k5MTUvbXRsOiBGaXggU1NDIHNlbGVjdGlvbiBmb3IgTVBMTEENCj4gPg0KPiA+
IERyaXZlciBkb2VzIG5vdCBjbGVhciB0aGUgZGVmYXVsdCBTU0MgZm9yIE1QTExBLiBUaGlzIGNh
dXNlcyBsaW5rIHRyYWluaW5nDQo+IGZhaWx1cmUgd2hlbiB0cnlpbmcgdG8gdXNlIDEwRyBhbmQg
MjBHIHJhdGVzLiBGaXggdGhlDQo+ID4gYmVoYXZpb3VyIGFuZCBlbmFibGUgc3NjIG9ubHkgd2hl
biB3ZSByZWFsbHkgd2FudC4NCj4gPg0KPiA+IEZpeGVzOiAyMzdlN2JlMGJmNTcgKCJkcm0vaTkx
NS9tdGw6IEZvciBEUDIuMCAxMEcgYW5kIDIwRyByYXRlcyB1c2UNCj4gTVBMTEEiKQ0KPiA+IENj
OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+IENjOiBDbGludCBUYXls
b3IgPENsaW50b24uQS5UYXlsb3JAaW50ZWwuY29tPg0KPiA+IENjOiBLaGFsZWQgQWxtYWhhbGxh
d3kgPGtoYWxlZC5hbG1haGFsbGF3eUBpbnRlbC5jb20+DQo+ID4gQ2M6IEFydW4gUiBNdXJ0aHkg
PGFydW4uci5tdXJ0aHlAaW50ZWwuY29tPg0KPiANCj4gUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xh
IDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IFJhZGhha3Jp
c2huYSBTcmlwYWRhIDxyYWRoYWtyaXNobmEuc3JpcGFkYUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+
ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jIHwgMyArKy0N
Cj4gPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiA+
DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gw
X3BoeS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMN
Cj4gPiBpbmRleCBmMjM1ZGY1NjQ2ZWQuLjFiMDBlZjJjNjE4NSAxMDA2NDQNCj4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4gQEAgLTI0MzQs
NyArMjQzNCw4IEBAIHN0YXRpYyB2b2lkIGludGVsX3Byb2dyYW1fcG9ydF9jbG9ja19jdGwoc3Ry
dWN0DQo+IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ID4NCj4gPiAgCWludGVsX2RlX3Jtdyhp
OTE1LCBYRUxQRFBfUE9SVF9DTE9DS19DVEwoZW5jb2Rlci0+cG9ydCksDQo+ID4gIAkJICAgICBY
RUxQRFBfTEFORTFfUEhZX0NMT0NLX1NFTEVDVCB8DQo+IFhFTFBEUF9GT1JXQVJEX0NMT0NLX1VO
R0FURSB8DQo+ID4gLQkJICAgICBYRUxQRFBfRERJX0NMT0NLX1NFTEVDVF9NQVNLIHwNCj4gWEVM
UERQX1NTQ19FTkFCTEVfUExMQiwgdmFsKTsNCj4gPiArCQkgICAgIFhFTFBEUF9ERElfQ0xPQ0tf
U0VMRUNUX01BU0sgfA0KPiBYRUxQRFBfU1NDX0VOQUJMRV9QTExBIHwNCj4gPiArCQkgICAgIFhF
TFBEUF9TU0NfRU5BQkxFX1BMTEIsIHZhbCk7DQo+ID4gIH0NCj4gPg0KPiA+ICBzdGF0aWMgdTMy
IGludGVsX2N4MF9nZXRfcG93ZXJkb3duX3VwZGF0ZSh1OCBsYW5lX21hc2spDQo+ID4gLS0NCj4g
PiAyLjM0LjENCg0K
