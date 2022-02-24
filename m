Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B30D24C3647
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Feb 2022 20:57:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D882610E1BD;
	Thu, 24 Feb 2022 19:57:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EB5F10E1FE
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Feb 2022 19:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645732620; x=1677268620;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5M/WD3jz9+trfwW+LG5ZYSOvEtyVETS68aXHdHhbGx4=;
 b=GSaCJIXJzYDAg1pmHVUCTz6rfjN5qm5yvn0J6Ek5ZlDtRjXqhNkhxdzn
 UhJqENnQCg0PDONPnJMrtz1tJoBD0Ereb5TG6D04oBaxprjBdu8nll61B
 EiBIO8lpxL2x6xXkDMs313UuCQFwHKpDGPi9meJ/hUoAOYz8kUGbYyq6r
 uHTmVWgEd7MfZOygZ7SY8ef41ZtXl610eqKaElcjtkwTBYbRePTJbZHkI
 S98NaXF9HVj7ilEPq1iBy9XcH01Yn+/u1mQiHa5wXh+/ZHk88UHPnkBUg
 a3022kwpW7xzZIcHOrm3xubUuD6H1jPjWR+P06hDlM4LHTDdt15kYVZ3p A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="276966224"
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="276966224"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 11:57:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="637969916"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 24 Feb 2022 11:57:00 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 24 Feb 2022 11:56:59 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Thu, 24 Feb 2022 11:56:59 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 24 Feb 2022 11:56:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=epWxSj6rgGvgV2qeYrQj9XKJqvhP5+Tc3n4pp4niu53zUHSsT0A3TahhfiFk8t896G3/HbkNsiYtSC2dLRg/zYbechgNzcTC4SeHtjjLX+54nSFHZ2tLs2/jVET7JexSBXfLb6TxK0VFFClXNh/jDXX83pIMCsrZOxaZmdzWSDLBO2cYOf+s2y5LT3dpkMhKGcwx/GcNEmFbqbJXUBnM8OEHT3UhriEvNCzRpg5WjAJajA1ouk1Xy/mehkvsIiqy/ZONDnLdugy/+4QwsnvdPBfzYEMYZnYPl1Xrw6K9dYwBbzZE3BY+SrsNS5ALKFHbcrKYjCxMB78OEUPg0GFujA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5M/WD3jz9+trfwW+LG5ZYSOvEtyVETS68aXHdHhbGx4=;
 b=E6wbsr3iOmD8JD8yRp61udbdNhTRAME3j9uPEanjKyz8D71a6vXJklHVhOXrAJuIQuw/xWSkNkFQVwAT1tWwrjRtecRc/5RhS/2rCCcdpg/kTia52eafUbYwxgYGfatYnL0JfXwwuEuwVlMIlhwVTnf+7PlTnwG7zMeNxNVon+wLu6V1iu+gbZmGyiaqcrYbW3WSsVdxk1c/762k//4UE2ciMuqf/PAe0DeSnUJAgXdhcpIxSyfGtVRnF2tVZvve42/sT5Ay96e122wPtbW3jsHW7OI+ZZ+754L4ZRSctm42XdWKVQzVnbtmBP1LFUHRE6Mt7swKXecIDzObgkYMFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5664.namprd11.prod.outlook.com (2603:10b6:a03:37f::18)
 by DM6PR11MB4010.namprd11.prod.outlook.com (2603:10b6:5:194::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.24; Thu, 24 Feb
 2022 19:56:55 +0000
Received: from SJ0PR11MB5664.namprd11.prod.outlook.com
 ([fe80::64ae:403d:a7fa:8a5d]) by SJ0PR11MB5664.namprd11.prod.outlook.com
 ([fe80::64ae:403d:a7fa:8a5d%9]) with mapi id 15.20.5017.024; Thu, 24 Feb 2022
 19:56:55 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "Navare, Manasi D" <manasi.d.navare@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvZGlzcGxheS92?=
 =?utf-8?B?cnI6IFJlc2V0IFZSUiBjYXBhYmxlIHByb3BlcnR5IG9uIGEgbG9uZyBocGQg?=
 =?utf-8?Q?(rev4)?=
Thread-Index: AQHYKbDazj9UIs8bFESoyCmsal1XWayjG+Fg
Date: Thu, 24 Feb 2022 19:56:55 +0000
Message-ID: <SJ0PR11MB5664F397F0D3B09CF90D218BE03D9@SJ0PR11MB5664.namprd11.prod.outlook.com>
References: <20220223221453.26274-1-manasi.d.navare@intel.com>
 <164572828646.32675.16216405999006999887@emeril.freedesktop.org>
 <ad720c43e70648409a06071c5c986357@intel.com>
In-Reply-To: <ad720c43e70648409a06071c5c986357@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9475ace7-c41f-4b6b-ffa2-08d9f7cfcf2c
x-ms-traffictypediagnostic: DM6PR11MB4010:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DM6PR11MB40108061A19523CC6CC3C844E03D9@DM6PR11MB4010.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 67WbynDp+6D91TsSOe4j34bx7v5vSMyYMgGNcPcLL8Mcn4w66mfmdH3T1oRPYqkhvx1aIglc1UW84+5mm2gaEY7VhWpb03JmFtB6fyTKnZ2HsLafFQAK9AnBwM3rm9sjWScoD+yM67gbxoz1jzJk5iYC5W5l0z12s8bx5fYYhEVkNl0W5GtXA8ujdnQ4dF5EDgfRdJhs5+Ro6eFQ+dC9OTnfj4HE2bn9JtYEdZlFtnUz98yxRIsQy3xFs3O/3UGW80gveBIPy16A6aWvTJQ/DJduOFFz7T1VCafp6z5l/jcbVQ+7QfVrhqRE8v98YLoc3nJG1wse6doAVqf2124Kk1ivKqvBdmDd+7ksnmlc9vw8c69NOLvtnnoMyCUtJA0OzqAbQS46vB7cB8WgswOPdbHYwxy1N8z7I520qtclS3XeWb4TS4wbTklypR7v+4Q8HHvo1SYWgL8xSeOK4GV2NQLkgA9M/3TioN/yP54n/3dpGQATXstS5LD1QAy55sW5cGsU3kQXlUygtqqtkvRlLSRd09gG0m876hltYf4M3HEHPsMyYHhIecMSu+woHhLID2KOTSrLS5NjY8dez4MF4w2y22SjCVxc99EzCMhNNFR3K/l7syaxBmXfflQfNEoLyZivBc0lT2Sad+wuatVHdEZweP23bOQ6xi1nnmK61aW+2UpglJf6f4LrnRAf21dh1SH1/qPIL5CjeXm9JlBX6k8Ab7VN5WgKv6UPbMS5/+r87Vebh9gS386nBK1uZy/TYPYSNaB3E76fG3oHltbJ51Wzx74JS7nEGdaDohb0wty70PXSOoNOQMilF+ED+9xlYIU18BjymqacLdUIViECxg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5664.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6506007)(7696005)(38100700002)(82960400001)(71200400001)(38070700005)(84970400001)(966005)(2906002)(53546011)(122000001)(508600001)(86362001)(9686003)(316002)(52536014)(5660300002)(8936002)(107886003)(54906003)(110136005)(186003)(66946007)(76116006)(26005)(4326008)(83380400001)(66446008)(66476007)(66556008)(64756008)(55016003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dnAraVJ2My9DOHRZMklNbXkvcEtBc2ZFMmFyWkUzaUJkN09YTkNHRE9JRDZF?=
 =?utf-8?B?eDZ5RTQvTnhqRDBZZjFCVGlKc3JMRk9vVHdHakloYWdabHhRTENQT2Riakhz?=
 =?utf-8?B?UURiclZvVXkyTytSMGdpZEQzd2d0bzB4cm5CRk9jTVo5RWp4UGNzMmR3eFNR?=
 =?utf-8?B?clhSM2s2U1hSMGY0MUxXUkI5R3pZR1VRMnd6WjBxdVNKN01VWDdoYm5QdXcz?=
 =?utf-8?B?aHBFeEcxL0RJVExaZkg3RFM3NHpybk9seFFaS0tKQXNhZitYUUNHblBqQzk5?=
 =?utf-8?B?cVRCa3B0cWs5OElHR3BIV0JmMWNUNDNWbU16WnVpeFRjbFRIcmpRT0E2ZjBu?=
 =?utf-8?B?alI2ODY2aWR2RGNERS9XK1ZjZUI5SkpJWjF3emE4UDNibmJzcjM5VzZya3Rv?=
 =?utf-8?B?bTlNMUhBMjdCT20vT0pFQTBTYkE3d09QVXNIU1VoK3g0RkNTbW45ajZZQjNL?=
 =?utf-8?B?djB4M2FvVTRTT2NMS1J0RWJIWk1XTFBsdjlJTzVqam12Mm1DeHpnek9oSHow?=
 =?utf-8?B?Umo5TUMzcDBHZXJLVEpZTHMzS2lhTzFXeWxOSmsyODdaV1ZVcEN1VWt1RnpJ?=
 =?utf-8?B?OVRVbkFDS0pvUkpLSTlTSno1bEUzdFlCQ1kxd2RQWDdxaW5VdVlQVldBeTIz?=
 =?utf-8?B?QVNNR1psYmpXU3BWTXM1dFp5Ymhtc2ZTSFkxMU45UVFNR0c0WGJDTndhTllF?=
 =?utf-8?B?Z3NxemM0RVk3RHExSi9TSC9qTlhYb3pYZlhyV0x0aXZIMWxWWmhOTytsd1RY?=
 =?utf-8?B?eDVLd2lBVVM1MkNuck1DQ0VxUk9CN2dEZkk5Ymg1K3ZpdThmMTladFVwT3R5?=
 =?utf-8?B?YjF1eThPQ2t0K3J6K3oyQWdqbXY5NlB4SStaVFI2dXdaeXltdW1FSHhqckpH?=
 =?utf-8?B?NTU0YWM1VjhlQmcwUGhjUWZsYlhzdU1TR0JoTjJ6ektYeEpFNlBQL1BjUDZH?=
 =?utf-8?B?YzY5TnB5a0ZqekRXYlRaUzlPeEpPQ1NBS1NDd1VqdXN0UFJ5WnFoVzRUc3dI?=
 =?utf-8?B?K0hTT0diZjFYcmdmdXFqSDEzNTVlZFFSaVVrb1ZYVUJ3d0xHeFMxWEJDRmdl?=
 =?utf-8?B?VmtEQzMyR2dhMUgyRkNCMXJBRjRNcEg0aVFmYjAzZlZuWXBnZmE2RWhvcEpu?=
 =?utf-8?B?eDRmUy9jMURYSElEeWVmUEIvUW9zcjNHNkQ0MU5DVXBzVFBxdHEvTHF0M3Mw?=
 =?utf-8?B?S2NKR0lqa0dPZkRSTis1OXQxWW50NVJKeUVLYkNnYzNVdzBaVFNyVG0rbUxv?=
 =?utf-8?B?WDhXQmZ5ZDE4ZGpmaUJKdWZGTFk0UnZwQitxanpHOXdILzRqdm8yc1F2a3ds?=
 =?utf-8?B?cG5CT1pZRFVZRVVxSkNTdE1iSHBkLzhsbUF1NHpkNHBnRXN0Uk5SdDVGb2NZ?=
 =?utf-8?B?VmlUQzhidFFFZ3EwLytJNTJzR0d2eWFGTkp3bnRHQklSYnBSY2ovTXRlbHRC?=
 =?utf-8?B?R2haeElhSEhvc3pTSTlYZUpIOTUxamE0UkRZR3JJSmNUWHRFbW9maHFGcmJF?=
 =?utf-8?B?U3IvWXBSVHlSYS9KYWtNK29pT2wyZm5FT0JCREF5b2VYais2bjZHKzRvMnBo?=
 =?utf-8?B?QUpPdGhoV2c2U05sOFZHTEI5TWZFeFcrbmNSNFpvZ25iVUpZVzVsQUtlbk9U?=
 =?utf-8?B?dkppRGxudTVFSUhQcXIwbVg5RDQ1T2F5VG9NaUU4Nml4R2pDUVYydmZDUkpX?=
 =?utf-8?B?SFBaZGt3bi8wOXl2MUhhSWtUVU82cHVFaWhZdlY0NDNZdW44YTAxbVVuN2ZJ?=
 =?utf-8?B?ZWdoYXArZXAvcVk2di9TVGVtRlBBVnJkVWJtQm1ya2ZyT1dmaW9VKzZpWlYz?=
 =?utf-8?B?U0x0dU8wODJieHg2aHNUNHRLSjBFZWx5SlBCVzBEYVd1ekRKc2oycmR4NnQ5?=
 =?utf-8?B?cTQ2am9YMXI1VUdNTmUvcmg0VGVkYVhoUGN4dlpsLzljNDNPUURuRVNSM1RK?=
 =?utf-8?B?KzZFMW9JNWQ1N01KRzBtWFN1enVIbWxRZlpCNkJpZFRvZnF6OWwzWWFscHhP?=
 =?utf-8?B?SnZEZnpmMGdRVVRkbFJGTlp4K09pbG9Icm5KdTFxeVlRZ3llYmNTTk9Sa2FY?=
 =?utf-8?B?bG5DTEI3UWpRZ1V4WXIxdFNoZ0VqRDJNenEvcVdWUE9rRzJUZWtid21wL3Vt?=
 =?utf-8?B?Rm5mbjd1eWoxRkpvNWpLOUhLOVAvN0J5YklxY0xUZnZrZ0N4VjVRN3FYTHJS?=
 =?utf-8?B?ZHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5664.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9475ace7-c41f-4b6b-ffa2-08d9f7cfcf2c
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2022 19:56:55.4041 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T3Zd1XhCQTXZ0ubUHpttSeAd2MdWRysV+hBMxcdhtANLtoQjrb/rvz0yS457oHz1DYSuZxYI/+glIc7HzoZizg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4010
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display/vrr=3A_Reset_VRR_capable_property_on_a_long_hpd_?=
 =?utf-8?b?KHJldjQp?=
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
Cc: "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>, "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksIA0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBOYXZhcmUsIE1hbmFz
aSBEIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPg0KPiBTZW50OiB0b3JzdGFpIDI0LiBoZWxt
aWt1dXRhIDIwMjIgMjEuMDANCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj4gQ2M6IFNhcnZlbGEsIFRvbWkgUCA8dG9taS5wLnNhcnZlbGFAaW50ZWwuY29tPjsgU3lyamFs
YSwgVmlsbGUNCj4gPHZpbGxlLnN5cmphbGFAaW50ZWwuY29tPjsgU2FhcmluZW4sIEphbmkgPGph
bmkuc2FhcmluZW5AaW50ZWwuY29tPjsgTmlrdWxhLCBKYW5pDQo+IDxqYW5pLm5pa3VsYUBpbnRl
bC5jb20+DQo+IFN1YmplY3Q6IFJFOiDinJcgRmkuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkx
NS9kaXNwbGF5L3ZycjogUmVzZXQgVlJSIGNhcGFibGUNCj4gcHJvcGVydHkgb24gYSBsb25nIGhw
ZCAocmV2NCkNCj4gDQo+IEhpLA0KPiANCj4gDQo+IA0KPiBJIGZpeGVkIHRoZSByZWdyZXNzaW9u
IGluIHRoaXMgcGF0Y2ggYW5kIHJlc2VudCBpdCwgaXQgc3RpbGwgaGFzIEJBVCBmYWlsdXJlcywg
SSB3YW50ZWQNCj4gdG8gdW5kZXJzdGFuZCBpZiBpdCBmYWlsZWQgdG8gYm9vdCBzb21lIG9mIHRo
ZSBtYWNoaW5lcyBhZ2FpbiBvciB0aGUgZXJyb3JzIGZsYWdnZWQNCj4gaGVyZSBhcmUgdGhlIGtu
b3duIGVycm9ycy4NCj4gDQo+IA0KPiANCj4gUmVnYXJkcw0KPiANCj4gTWFuYXNpDQo+IA0KPiAN
Cj4gDQo+IEZyb206IFBhdGNod29yayA8cGF0Y2h3b3JrQGVtZXJpbC5mcmVlZGVza3RvcC5vcmc+
DQo+IFNlbnQ6IFRodXJzZGF5LCBGZWJydWFyeSAyNCwgMjAyMiAxMDo0NSBBTQ0KPiBUbzogTmF2
YXJlLCBNYW5hc2kgRCA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4NCj4gQ2M6IGludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDog4pyXIEZpLkNJLkJBVDogZmFpbHVy
ZSBmb3IgZHJtL2k5MTUvZGlzcGxheS92cnI6IFJlc2V0IFZSUiBjYXBhYmxlIHByb3BlcnR5DQo+
IG9uIGEgbG9uZyBocGQgKHJldjQpDQo+IA0KPiANCj4gDQo+IFBhdGNoIERldGFpbHMNCj4gDQo+
IFNlcmllczoNCj4gDQo+IGRybS9pOTE1L2Rpc3BsYXkvdnJyOiBSZXNldCBWUlIgY2FwYWJsZSBw
cm9wZXJ0eSBvbiBhIGxvbmcgaHBkIChyZXY0KQ0KPiANCj4gVVJMOg0KPiANCj4gaHR0cHM6Ly9w
YXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy85ODgwMS8NCj4gDQo+IFN0YXRlOg0KPiAN
Cj4gZmFpbHVyZQ0KPiANCj4gRGV0YWlsczoNCj4gDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzIyMzk0L2luZGV4Lmh0bWwNCj4gDQo+IA0KPiBD
SSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV8xMTI3OSAtPiBQYXRjaHdvcmtfMjIzOTQN
Cj4gDQo+IA0KPiBTdW1tYXJ5DQo+IA0KPiANCj4gRkFJTFVSRQ0KPiANCj4gU2VyaW91cyB1bmtu
b3duIGNoYW5nZXMgY29taW5nIHdpdGggUGF0Y2h3b3JrXzIyMzk0IGFic29sdXRlbHkgbmVlZCB0
byBiZQ0KPiB2ZXJpZmllZCBtYW51YWxseS4NCj4gDQo+IElmIHlvdSB0aGluayB0aGUgcmVwb3J0
ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdlcw0KPiBpbnRyb2R1
Y2VkIGluIFBhdGNod29ya18yMjM5NCwgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtIHRvIGFs
bG93IHRoZW0gdG8NCj4gZG9jdW1lbnQgdGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxs
IHJlZHVjZSBmYWxzZSBwb3NpdGl2ZXMgaW4gQ0kuDQo+IA0KPiBFeHRlcm5hbCBVUkw6IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS0NCj4gdGlwL1BhdGNod29ya18yMjM5NC9p
bmRleC5odG1sDQo+IA0KPiANCj4gUGFydGljaXBhdGluZyBob3N0cyAoNDMgLT4gMzIpDQo+IA0K
PiANCj4gTWlzc2luZyAoMTEpOiBmaS1rYmwtc29yYWthIGZpLWNtbC11MiBmaS1ic3ctY3lhbiBm
aS1pbGstNjUwIGZpLWFwbC1ndWMgZmkta2JsLTc1MDB1IGZpLQ0KPiBrYmwteDEyNzUgZmktY2Zs
LTgxMDl1IGZpLWJzdy1rZWZrYSBmaS1iZHctc2FtdXMgZmktc2tsLTY2MDB1DQpXb3VsZCBiZSBn
b29kIHRvIHVuZGVyc3RhbmQgd2h5IHRoZXJlIGlzIHRoaXMgbWFueSBzeXN0ZW1zIGRvd24gc3Rp
bGwuIEFsc28gYXJlIHRoZXNlIHNhbWUgdGhhbiBvbiBwcmV2aW91cyBzZXJpZXMuLi4NClByZXZp
b3VzIHdhcyBtaXNzaW5nOg0KLS0NCk1pc3NpbmcgKDI5KTogZmkta2JsLXNvcmFrYSBmaS1iZHct
Z3Z0ZHZtIGZpLWFwbC1ndWMgZmktc25iLTI1MjBtIGZpLXNrbC02NjAwdSBmaS1zbmItMjYwMCBm
aS1jbWwtdTIgZmktYnh0LWRzaSBmaS1iZHctNTU1N3Ugc2hhcmQtdGdsdSBmaS1ic3ctbjMwNTAg
ZmktZ2xrLWRzaSBmaS1pbGstNjUwIGZpLWtibC03NTAwdSBmaS1oc3ctNDc3MCBmaS1pdmItMzc3
MCBmaS1lbGstZTc1MDAgZmktYnN3LW5pY2sgZmktc2tsLTY3MDBrMiBmaS1rYmwtNzU2N3UgZmkt
c2tsLWd1YyBmaS1jZmwtODcwMGsgZmktYnN3LWN5YW4gZmktY2ZsLWd1YyBmaS1rYmwtZ3VjIGZp
LWtibC14MTI3NSBmaS1jZmwtODEwOXUgZmkta2JsLTg4MDlnIGZpLWJzdy1rZWZrYQ0KLS0NClNv
IHRoZXJlIGFyZSBzYW1lIHN5c3RlbXMuIFRvbWksIHdoYXQgaXMgdGhyZXNob2xkIGhvdyBtYW55
IHN5c3RlbXMgbmVlZCB0byBoYXZlIGJvb3QgaXNzdWVzIGFuZCBoYXZpbmcgDQpKdXN0IGxvb2tp
bmcgc29tZSBzYW1lIHN5c3RlbXMgb24gYm90aC4uLjoNCmh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzIyMzk0L2ZpbGVsaXN0Lmh0bWwgDQplZy4gaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMjIzOTQvZmkt
a2JsLXNvcmFrYS9ydW4wLnR4dCANCmFuZCBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18yMjM5NC9maS1rYmwtNzUwMHUvcnVuMC50eHQgLCB0aGVyZSBp
cyBhbHNvIG9vcHMgaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMjIzOTQvZmkta2JsLTc1MDB1L3BzdG9yZTAtMTY0NTcyNjU2Nl9Pb3BzXzEudHh0IA0K
SSB3b3VsZCBzYXkgbm90IGNsZWFuIHJlYWxseSB5ZXQuLi4uDQoNCg0KPiANCj4gDQo+IFBvc3Np
YmxlIG5ldyBpc3N1ZXMNCj4gDQo+IA0KPiBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRo
YXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluDQo+IFBhdGNod29ya18yMjM5NDoNCj4gDQo+
IA0KPiBJR1QgY2hhbmdlcw0KPiANCj4gDQo+IFBvc3NpYmxlIHJlZ3Jlc3Npb25zDQo+IA0KPiAN
Cj4gKglpZ3RAZ2VtX2V4ZWNfc3VzcGVuZEBiYXNpYy1zMEBzbWVtOg0KPiANCj4gCSoJZmktc2ts
LTY3MDBrMjogUEFTUyA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0KPiB0
aXAvQ0lfRFJNXzExMjc5L2ZpLXNrbC02NzAwazIvaWd0QGdlbV9leGVjX3N1c3BlbmRAYmFzaWMt
DQo+IHMwQHNtZW0uaHRtbD4gIC0+IERNRVNHLVdBUk4gPGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS0NCj4gdGlwL1BhdGNod29ya18yMjM5NC9maS1za2wtNjcwMGsyL2lndEBn
ZW1fZXhlY19zdXNwZW5kQGJhc2ljLQ0KPiBzMEBzbWVtLmh0bWw+DQo+IA0KPiANCj4gS25vd24g
aXNzdWVzDQo+IA0KPiANCj4gSGVyZSBhcmUgdGhlIGNoYW5nZXMgZm91bmQgaW4gUGF0Y2h3b3Jr
XzIyMzk0IHRoYXQgY29tZSBmcm9tIGtub3duIGlzc3VlczoNCj4gDQo+IA0KPiBJR1QgY2hhbmdl
cw0KPiANCj4gDQo+IElzc3VlcyBoaXQNCj4gDQo+IA0KPiAqCWlndEBhbWRncHUvYW1kX2Jhc2lj
QGNzLW11bHRpLWZlbmNlOg0KPiANCj4gCSoJZmktYmxiLWU2ODUwOiBOT1RSVU4gLT4gU0tJUCA8
aHR0cHM6Ly9pbnRlbC1nZngtDQo+IGNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzIy
Mzk0L2ZpLWJsYi0NCj4gZTY4NTAvaWd0QGFtZGdwdS9hbWRfYmFzaWNAY3MtbXVsdGktZmVuY2Uu
aHRtbD4gIChmZG8jMTA5MjcxDQo+IDxodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD0xMDkyNzE+ICkgKzE3IHNpbWlsYXIgaXNzdWVzDQo+IA0KPiAqCWlndEBydW5u
ZXJAYWJvcnRlZDoNCj4gDQo+IAkqCWZpLXNrbC02NzAwazI6IE5PVFJVTiAtPiBGQUlMIDxodHRw
czovL2ludGVsLWdmeC0NCj4gY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMjIzOTQv
Zmktc2tsLQ0KPiA2NzAwazIvaWd0QHJ1bm5lckBhYm9ydGVkLmh0bWw+ICAoaTkxNSM0MzEyDQo+
IDxodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy80MzEyPiAp
DQo+IA0KPiANCj4gUG9zc2libGUgZml4ZXMNCj4gDQo+IA0KPiAqCWlndEBpOTE1X3NlbGZ0ZXN0
QGxpdmVAaGFuZ2NoZWNrOg0KPiANCj4gCSoJYmF0LWRnMS02OiBETUVTRy1GQUlMIDxodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9DSV9EUk1fMTEyNzkvYmF0LWRn
MS02L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAaGFuZ2NoZWNrLmh0bWw+DQo+IChpOTE1IzQ0OTQg
PGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzQ0OTQ+ICAv
IGk5MTUjNDk1Nw0KPiA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9p
c3N1ZXMvNDk1Nz4gKSAtPiBQQVNTIDxodHRwczovL2ludGVsLQ0KPiBnZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMjIzOTQvYmF0LWRnMS0NCj4gNi9pZ3RAaTkxNV9zZWxmdGVz
dEBsaXZlQGhhbmdjaGVjay5odG1sPg0KPiANCj4gKglpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHJl
cXVlc3RzOg0KPiANCj4gCSoJZmktYmxiLWU2ODUwOiBETUVTRy1GQUlMIDxodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9DSV9EUk1fMTEyNzkvZmktYmxiLWU2ODUw
L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAcmVxdWVzdHMuaHRtbD4NCj4gKGk5MTUjNTAyNiA8aHR0
cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvNTAyNj4gKSAtPiBQ
QVNTDQo+IDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18yMjM5NC9maS1ibGItDQo+IGU2ODUwL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAcmVxdWVzdHMu
aHRtbD4NCj4gDQo+ICoJaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kczoNCj4gDQo+
IAkqCXtiYXQtYWRscC02fTogRE1FU0ctV0FSTiA8aHR0cHM6Ly9pbnRlbC1nZngtDQo+IGNpLjAx
Lm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzExMjc5L2JhdC1hZGxwLQ0KPiA2L2lndEBpOTE1X3Nl
bGZ0ZXN0QGxpdmVAd29ya2Fyb3VuZHMuaHRtbD4gIChpOTE1IzUwNjgNCj4gPGh0dHBzOi8vZ2l0
bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzUwNjg+ICkgLT4gUEFTUyA8aHR0
cHM6Ly9pbnRlbC0NCj4gZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzIyMzk0
L2JhdC1hZGxwLQ0KPiA2L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAd29ya2Fyb3VuZHMuaHRtbD4N
Cj4gDQo+ICoJaWd0QGttc19mbGlwQGJhc2ljLWZsaXAtdnMtbW9kZXNldEBhLWVkcDE6DQo+IA0K
PiAJKgl7YmF0LWFkbHAtNn06IERNRVNHLVdBUk4gPGh0dHBzOi8vaW50ZWwtZ2Z4LQ0KPiBjaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xMTI3OS9iYXQtYWRscC02L2lndEBrbXNfZmxpcEBi
YXNpYy1mbGlwLXZzLQ0KPiBtb2Rlc2V0QGEtZWRwMS5odG1sPiAgKGk5MTUjMzU3Ng0KPiA8aHR0
cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvMzU3Nj4gKSAtPiBQ
QVNTIDxodHRwczovL2ludGVsLQ0KPiBnZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMjIzOTQvYmF0LWFkbHAtNi9pZ3RAa21zX2ZsaXBAYmFzaWMtDQo+IGZsaXAtdnMtbW9kZXNl
dEBhLWVkcDEuaHRtbD4NCj4gDQo+IHtuYW1lfTogVGhpcyBlbGVtZW50IGlzIHN1cHByZXNzZWQu
IFRoaXMgbWVhbnMgaXQgaXMgaWdub3JlZCB3aGVuIGNvbXB1dGluZyB0aGUNCj4gc3RhdHVzIG9m
IHRoZSBkaWZmZXJlbmNlIChTVUNDRVNTLCBXQVJOSU5HLCBvciBGQUlMVVJFKS4NCj4gDQo+IA0K
PiBCdWlsZCBjaGFuZ2VzDQo+IA0KPiANCj4gKglMaW51eDogQ0lfRFJNXzExMjc5IC0+IFBhdGNo
d29ya18yMjM5NA0KPiANCj4gQ0ktMjAxOTA1Mjk6IDIwMTkwNTI5DQo+IENJX0RSTV8xMTI3OTog
NTMwMWNjODViM2NjMGVhYTM3NDA1YTExN2M3N2EzNWRiN2Y0YTc2ZCBADQo+IGdpdDovL2Fub25n
aXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eA0KPiBJR1RfNjM1NjogYjQwM2Q4ZTczYzY4
ODg1NjFlYWVjOTc4MzU2ODgzMTNiMDc2M2NlOSBADQo+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNr
dG9wLm9yZy9kcm0vaWd0LWdwdS10b29scy5naXQNCj4gUGF0Y2h3b3JrXzIyMzk0OiAyNDRmMzZl
NTE5MGMxNzZiZTNlYzJmYmM5ZmMxOGM2M2I4MzgzNjIxIEANCj4gZ2l0Oi8vYW5vbmdpdC5mcmVl
ZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4DQo+IA0KPiA9PSBMaW51eCBjb21taXRzID09DQo+IA0K
PiAyNDRmMzZlNTE5MGMgZHJtL2k5MTUvZGlzcGxheS92cnI6IFJlc2V0IFZSUiBjYXBhYmxlIHBy
b3BlcnR5IG9uIGEgbG9uZyBocGQNCg0K
