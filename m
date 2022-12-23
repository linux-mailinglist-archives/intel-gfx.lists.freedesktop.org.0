Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA05655090
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Dec 2022 13:44:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F5EC10E63C;
	Fri, 23 Dec 2022 12:44:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FE6C10E63C
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Dec 2022 12:44:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671799452; x=1703335452;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=3IcNlrhoE7dBfchTqnUqq6RvLB4th/HkuZH0Ap5jp2A=;
 b=NokWvKhzk+u1t7V/2sBASpzBB7DgesGQfphUpOum5CRxPzMzcGkvkiqs
 7iCqFgdEdttHKfU6t1qgFYPlJU2pxENJoeKcfxJEIpwzVTWU2dDlDQ7mG
 8f8GZp5DNM+WSfgbr1wRHXdio5UeAwptPJg67KW8Ugg9R7x1IYVr17l9Z
 30k7TpdosgAtLOpqaxXhVmmwFauWELltjtFsE1HOdr/WRqnI5LxYzel0D
 vSOH5SoL1uTuDFkkwZYogg7ppyRgc1ZAzbEnEYVNExWSi1wqMKk9qco4r
 6NlQN9a8KvBqOZsYpbnaijfa8lUMTljcA9TQIRzGJBZDPCS1whQID+DeO A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10569"; a="322267825"
X-IronPort-AV: E=Sophos;i="5.96,268,1665471600"; d="scan'208";a="322267825"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2022 04:44:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10569"; a="794471667"
X-IronPort-AV: E=Sophos;i="5.96,268,1665471600"; d="scan'208";a="794471667"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 23 Dec 2022 04:44:11 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 23 Dec 2022 04:44:11 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 23 Dec 2022 04:44:11 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 23 Dec 2022 04:44:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HY5QBZwgBdXIxYAYdKZoyIraMpIRSH71EyR1ZC9v03p6z2X0QZ13lfyD7H7iWVBKYRTuGNh1hIeHKHKU8p902Pw4jV0rcwbaEQe8m3a82vuN6KV/REdijHcqrZybunkReqXNJ5i2+YR53TICLpwSQg4ah7liN2BOMtSxI1gTrvKvcjG0FB1RuL0cPEI2lspkkqrUQR/rloPPYAam1gPWeL0Txuy8nJyRxn91wjA7P7QXIvngf8ttFKUPjMKk8Bu6be2L0LSgNmxV6UouWdSJKMi9kQmPt0nVU91PUQrlFJ/24uwVoHwwTUtjB22u1TtP03QdAxQb9If0u8S1wLwBjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3IcNlrhoE7dBfchTqnUqq6RvLB4th/HkuZH0Ap5jp2A=;
 b=mKGaRcBpN/HUdemoZsJiLYEFxuopecnsEMAzKeGFsSmc7FC5XLAgOPDyr8vFCyi2XdeMl9eQNFHpVcSZpoPp1HSsuXI4KFBtBTELFgK9jKvPn+L3CXzo1HhivuaNw0CTT0HZ5eyRtm105as+s/3Tznbt0s8cQCYfOGlTlEE9Hp1tYH/CdvsBUjj1OP+FMCj4pYrc/RxF9hVhMoZUn4fWPfkvko101/2icmKWRgYJx+ZjyklGnxwPyjoYwWVGpyZAKmv2aczjsIlgYyg76ecIp/P2HQPCUp4wCR+YXc2P/Ziro0g9o8potxps6U9geP50Q+Um9MC3muffHpxHg5R2iQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3207.namprd11.prod.outlook.com (2603:10b6:a03:7c::14)
 by CH3PR11MB7178.namprd11.prod.outlook.com (2603:10b6:610:143::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.13; Fri, 23 Dec
 2022 12:44:08 +0000
Received: from BYAPR11MB3207.namprd11.prod.outlook.com
 ([fe80::5546:ea97:1beb:cb5f]) by BYAPR11MB3207.namprd11.prod.outlook.com
 ([fe80::5546:ea97:1beb:cb5f%4]) with mapi id 15.20.5924.016; Fri, 23 Dec 2022
 12:44:08 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v6 2/2] drm/i915/mtl: Limit scaler input to
 4k in plane scaling
Thread-Index: AQHZFLeEaLSUinOxokKPHS2KdRXSua57bw0A
Date: Fri, 23 Dec 2022 12:44:08 +0000
Message-ID: <02dba62b35c6edb53b665190a094f7cf3652c9c4.camel@intel.com>
References: <20221220120724.196570-1-luciano.coelho@intel.com>
 <20221220120724.196570-3-luciano.coelho@intel.com>
 <Y6IkyljA87ZzQ/1t@intel.com>
In-Reply-To: <Y6IkyljA87ZzQ/1t@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.2-1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3207:EE_|CH3PR11MB7178:EE_
x-ms-office365-filtering-correlation-id: 16af8edb-790c-403e-57d8-08dae4e36246
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: beDiHvt6MZnTdHi46MaRbubtEPTd43v/z2Zw6uVrNLnV8/ZU+2NMd/hOs+WHaoGAsqSiJ2C/wb1N44PBkPp8a9DTejiuDF0SbHrN4QM5vEkv32D4ogUSMRDVHOAfzhwezGV9a7KzjsFlgawUneLMtKDynofY0OQXy9XlIuMHqkRzaLxfmTXmNMKOq5UR65QZ071iz3LpTTjGfeppFUzcOT8KR/cRBFzWUgh4t0OIKImkNU5T1ugOSjIbKXGxNi/P7tpxuUpkPoGDOf/ugPgZcFmnL02mHRO6iOG6E06iKQXRa9k09KMgm7V/me3nLu2iverlbc//crKa38/IeBjHD49fZjTEpYp4SjtsprKvgs1CohTMfEby8RLIjQP93/X0q5LOSmzmd9xDfXh3YNoX0A7IN/SQHHQ4iBOeUHuzaRHUo0FdUA+OuS6di0G+d3Y6yXHbyTiqSoRVK/Y99nlYR6UZnJLcMwmT56dJ+2Mj9ZMttWTBTu2vW00a5h5PvbZoENdzGCnGDyiGDIy+nVfdr3NTIKU80Dm4iyMxFcnxkaiSaEHg3BcdiTJxnEurvoB0lQPrt4AOQDA7sghmua3HSJogYGhE8svfyDoRn8Eqw71bdqOAQHhG/9AMlUuqbpz9WohHyUdpWF/zOMc5F6/rSCnlrKofADmNOKAVUGjkJ1BQpyIO3fXf8eKtwN50GDyaUpXa8A61VIkCmCPd3+WJFA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3207.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(376002)(346002)(396003)(39860400002)(136003)(451199015)(316002)(38070700005)(2906002)(4001150100001)(36756003)(66574015)(6916009)(83380400001)(6486002)(478600001)(6506007)(86362001)(2616005)(6512007)(71200400001)(186003)(26005)(82960400001)(8936002)(38100700002)(41300700001)(5660300002)(76116006)(122000001)(66476007)(64756008)(66946007)(66556008)(91956017)(66446008)(4326008)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ei9RMnV1MkM4VFhqdkNlVnd4S0ozKzdBQjFSMUVqTTJLVEI1T2dISU1qUnYy?=
 =?utf-8?B?TGhVdSsrVjNIN0Q3TTVpd3J5UExHTTFLL09taVFPbm5oVzVITjJvVVhQVU92?=
 =?utf-8?B?KzFCZW1lalplUkVwbWZNZHVPQzdHQ1Z0TldzcDdRNStHV1ViSjFwYXVxcU41?=
 =?utf-8?B?Zi9zVE9yaVRyQTVqTUg2ckZ4b3UwTHRkL3hLT1pTeUtESXBjUlNCUnZVdEdJ?=
 =?utf-8?B?M0lsU3BkTndwUVdxYnVvWVFzZEU2SEl1ZGxsVExEbjBhNS95ZkIrRmovRGxh?=
 =?utf-8?B?VWVqTGVONTVEdDZOQ0tMSCtqQ2tVNkxCdGU3N2ZVejVGOHVnaFNGTVpnd2dl?=
 =?utf-8?B?NERuN2lYV010S2tiU0tpdHFKdDJZVGhSd1drOUFRRTFKNTRzeWJRRUh5ZUN1?=
 =?utf-8?B?OVNDalZ6d1J0ZndHaWVqaFVaNnZ2U1ZSc1VTOWl3c3JWb1YwUkJmMjRGUXQx?=
 =?utf-8?B?MGFlRE1NS1NHSlQyUkttWDh3bE1rNTBxTDQ5eFRwRm12VDgwZFFRc00vbmZt?=
 =?utf-8?B?Um5KeFdQK0F5b3J4dHpTSTNWVXFDMFlwdkxCalhnSWxnMWNkMExCa0IycGFG?=
 =?utf-8?B?ZnY1R2IzTXFYQlBDeE1MUGZ6V0xWdHZqajc1M0JPRVRsUzVlUGwxQlljeUFo?=
 =?utf-8?B?amZJMW0ya1VKT3ZCTExYWkhzcDBMWGxBT1B4aHJjSVdncCtEWWNyMWNWUTl0?=
 =?utf-8?B?V0g1WGs3SHl4UTVDemJ1b21MeENhYlRjbEV5cHQ2VXl1MGJ4eGVXOUxXSStS?=
 =?utf-8?B?UjgzdHQzSi95aDdDd2t5eXVOalV4NloyU0RuK0JoSGlQMXhYeVU4eHRrNTVV?=
 =?utf-8?B?VDlhU3l5b2RBMzFjaTBmZUxNVGlqclpQc3pCd3hYeFJiaXVsZGlGT2lNTkFG?=
 =?utf-8?B?OStjTm5EQkl2d2gvampGSzY4UTNYbGIvVlRjbVd3TUVBZGlZWUJiaFpVcHNF?=
 =?utf-8?B?eU5kamxPSlB2aUtYMHZMQTgrY2NYMG16cndFanVKUTlCYWFNZFpIWElTRlUz?=
 =?utf-8?B?NWwwUFloTStJQVNDNVdLdVFwaENheFdYbnlRV05sOGZJU3IrOXV3ZmdnUU9y?=
 =?utf-8?B?QkJHM2VDMHBDUjVTMGRHa3FrM2lMKzRrVkRQcEdNUFlkMGJiMGJMYVdkK2x4?=
 =?utf-8?B?amQraW1HVVp2R0cwK3ViZjlYaWNZQUZuakJYdWxMQnhWYnF0Q3hJdVEzRmla?=
 =?utf-8?B?dGxPZDZJZWtmZkVTMjVrTkI2dFdFNVBGS0VORXpqM29wTkhRN3lGVDU5ci9s?=
 =?utf-8?B?ZnVLSExEbDl6citYa1Y4NlZkUHExS3pQeTdpZ2FrSlV6NEtYbTR0UGpjRHcr?=
 =?utf-8?B?eUJxSGtycTlZSkFVaC9yNUZjaEpjd21GeExKOU9iRXhNbHg2U1dYUDNkSk5t?=
 =?utf-8?B?cHliNEtRaVRBNnRuV2dXQmlPRjhqM0hIRkwyaHYxdjI2dWY5Z3ZxeUtWd2tD?=
 =?utf-8?B?dExxSnh1VHgraFhIV0NlWVd0dWFCOU5HTlNHbTMxcGhJYkViUy9tM0h1Vnp3?=
 =?utf-8?B?cFFBdG1lMEJRdmhnTmtMajMrMC9zM3ZTV1MvS1o0cWtEeHprMkhTYW1DRHZo?=
 =?utf-8?B?SjljYnIxZEFKNGdXdDgvSjV4YjQ2L1k2cTdIVktaanlGeGJiemJtdzI0QzF6?=
 =?utf-8?B?SWpzYU11dnQ1VTdXVS94NjU2ZTVYUVFqZXRVSXJFbjRiT0JtempnSjhtNEFY?=
 =?utf-8?B?VGpZWVlwakc2aHBGYlRWa2F4QU1DcXRzY2s5MDQrcVVDSjRnMFplLzM4Qjdt?=
 =?utf-8?B?WTNzcUxmTnNnRU04V3ppRkVhR0VBS1hBRHZEY2ZKWTRIeThOTS8wdnY1MFhw?=
 =?utf-8?B?WXpjQzJVcWlZQmFsVmtLZytNZUlhVlFsODRPWmVSRDFvT29ULzljWVlLSVdj?=
 =?utf-8?B?OUxYWnpyZnVRWkNSclRhTHVGbkJzM05WL1hnQUpwOFFPRWFwb0FKNmt2RmFq?=
 =?utf-8?B?WHRCMGZyR1RIaEpVWFNJcEF0eldlMGtMeGdOd0FNaHA1dWVscG1VMm1FQXpT?=
 =?utf-8?B?ZGsvZlh0S01MZ2pXMEV4VlpGYlkxQi80TmhPQm1RSzBnMkpWYnNXUFRyMUw0?=
 =?utf-8?B?dko4KzlncEloQkJCclEzU3JRZEdSZ2ZFbWdLYUNOcjlYeHFQL0I1cFZUTXMz?=
 =?utf-8?B?QjQyZnhIMkppNUdSNm9MdUM5bEQ0ZjMyQ2I3K3UxS0NHN2dFaVhkV0kyQ3BB?=
 =?utf-8?B?aEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <31B7EF99FDF7104FA7B601D9520348FE@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3207.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16af8edb-790c-403e-57d8-08dae4e36246
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2022 12:44:08.3520 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RZsoWPAnA46rwLl6Q9qPep/DnRCmoSVGs+pUhAolH7UsxgtDM3sI9YLKzm36L79IcnLTU1AURPxp7XKTgyUHZcfZNwEazD8hW520hkR7d4I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7178
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6 2/2] drm/i915/mtl: Limit scaler input to
 4k in plane scaling
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

T24gVHVlLCAyMDIyLTEyLTIwIGF0IDIzOjEwICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFR1ZSwgRGVjIDIwLCAyMDIyIGF0IDAyOjA3OjI0UE0gKzAyMDAsIEx1Y2EgQ29lbGhv
IHdyb3RlOg0KPiA+IEZyb206IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29t
Pg0KPiA+IA0KPiA+IEFzIHBhcnQgb2YgZGllIGFyZWEgcmVkdWN0aW9uIG1heCBpbnB1dCBzb3Vy
Y2UgbW9kaWZpZWQgdG8gNDA5Ng0KPiA+IGZvciBNVEwgc28gbW9kaWZpZWQgcmFuZ2UgY2hlY2sg
bG9naWMgb2Ygc2NhbGVyLg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvcz8gUm9iZXJ0byBk
ZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogQW5pbWVz
aCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogTHVj
YSBDb2VsaG8gPGx1Y2lhbm8uY29lbGhvQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfc2NhbGVyLmMgfCAzMSArKysrKysrKysrKysrKysr
Ky0tLS0tLQ0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlv
bnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9za2xfc2NhbGVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF9zY2FsZXIu
Yw0KPiA+IGluZGV4IGQ3MzkwMDY3YjdkNC4uNmJhYTA3MTQyYjAzIDEwMDY0NA0KPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3NjYWxlci5jDQo+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfc2NhbGVyLmMNCj4gPiBAQCAtMTAzLDYgKzEw
Myw4IEBAIHNrbF91cGRhdGVfc2NhbGVyKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlLCBib29sIGZvcmNlX2RldGFjaCwNCj4gPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOw0KPiA+ICAJY29uc3Qgc3RydWN0IGRy
bV9kaXNwbGF5X21vZGUgKmFkanVzdGVkX21vZGUgPQ0KPiA+ICAJCSZjcnRjX3N0YXRlLT5ody5h
ZGp1c3RlZF9tb2RlOw0KPiA+ICsJaW50IG1pbl9zcmNfdywgbWluX3NyY19oLCBtaW5fZHN0X3cs
IG1pbl9kc3RfaDsNCj4gPiArCWludCBtYXhfc3JjX3csIG1heF9zcmNfaCwgbWF4X2RzdF93LCBt
YXhfZHN0X2g7DQo+ID4gIA0KPiA+ICAJLyoNCj4gPiAgCSAqIFNyYyBjb29yZGluYXRlcyBhcmUg
YWxyZWFkeSByb3RhdGVkIGJ5IDI3MCBkZWdyZWVzIGZvcg0KPiA+IEBAIC0xNTcsMTUgKzE1OSwy
OCBAQCBza2xfdXBkYXRlX3NjYWxlcihzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSwgYm9vbCBmb3JjZV9kZXRhY2gsDQo+ID4gIAkJcmV0dXJuIC1FSU5WQUw7DQo+ID4gIAl9DQo+
ID4gIA0KPiA+ICsJbWluX3NyY193ID0gU0tMX01JTl9TUkNfVzsNCj4gPiArCW1pbl9zcmNfaCA9
IFNLTF9NSU5fU1JDX0g7DQo+ID4gKwltaW5fZHN0X3cgPSBTS0xfTUlOX0RTVF9XOw0KPiA+ICsJ
bWluX2RzdF9oID0gU0tMX01JTl9EU1RfSDsNCj4gPiArDQo+ID4gKwlpZiAoRElTUExBWV9WRVIo
ZGV2X3ByaXYpID49IDExICYmIERJU1BMQVlfVkVSKGRldl9wcml2KSA8IDE0KSB7DQo+ID4gKwkJ
bWF4X3NyY193ID0gSUNMX01BWF9TUkNfVzsNCj4gPiArCQltYXhfc3JjX2ggPSBJQ0xfTUFYX1NS
Q19IOw0KPiA+ICsJCW1heF9kc3RfdyA9IElDTF9NQVhfRFNUX1c7DQo+ID4gKwkJbWF4X2RzdF9o
ID0gSUNMX01BWF9EU1RfSDsNCj4gPiArCX0gZWxzZSB7DQo+ID4gKwkJbWF4X3NyY193ID0gU0tM
X01BWF9TUkNfVzsNCj4gPiArCQltYXhfc3JjX2ggPSBTS0xfTUFYX1NSQ19IOw0KPiA+ICsJCW1h
eF9kc3RfdyA9IFNLTF9NQVhfRFNUX1c7DQo+ID4gKwkJbWF4X2RzdF9oID0gU0tMX01BWF9EU1Rf
SDsNCj4gPiArCX0NCj4gDQo+IEJzcGVjIHNheXMgbWF4X3NyY193PTQwOTYsIG1heF9zcmNfaD04
MTkyLCBtYXhfZHN0X3c9ODE5MiwNCj4gbWF4X2RzdF9oPTgxOTIuDQoNClllcywgdGhhbmtzIGZv
ciBwb2ludGluZyBvdXQhIEkgaGVhcmQgdGhhdCB0aGVzZSB2YWx1ZXMgd2VyZSBjaGFuZ2VkIGlu
DQp0aGUgYnNwZWMgYWZ0ZXIgdGhlIG9yaWdpbmFsIGltcGxlbWVudGF0aW9uIHdhcyBtYWRlIGlu
dGVybmFsbHkuICBJDQpoYXZlIHVwZGF0ZWQgdGhlIHBhdGNoIGFjY29yZGluZ2x5IG5vdy4NCg0K
LS0NCkNoZWVycywNCkx1Y2EuDQo=
