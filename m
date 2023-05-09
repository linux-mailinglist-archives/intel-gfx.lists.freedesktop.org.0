Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4956FC642
	for <lists+intel-gfx@lfdr.de>; Tue,  9 May 2023 14:26:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B284E10E0DD;
	Tue,  9 May 2023 12:26:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E9E410E0DD
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 May 2023 12:26:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683635189; x=1715171189;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=1SlZPm4aLi6gPQvxqwR8gWXStGrttJUoJBV2dnnWEpQ=;
 b=FjGpFGkj0klqwgJZaUmfofkd3niwhYyPJgH/AYVoCm4xdp6/sOmrkXWV
 yPSifdOu0XWxFIrpMfu7wtSVSi0FBGiMxrPs8V38AlIIFImas9qcJtnmB
 06qhFmDJiQxIxOqjV5jyVV6HKVea4vwCjQwr6NUyw2Jp1hKZMLRVdEXTa
 lgpKdSYNt2ViPYpg/UAMNsK3TxgHcO8OJUtsAQ1X0kMdm3GkFe2bO4cG1
 0U1xlpDS516k+kyXlHsBEKYH/+3FINtV4iyiu/osxld5DEDqjQYpuRq38
 ueBRkytmOSrz4Wz3imw+c+2VUwzrRL1zZ+NsaGb3iYn5yVkmPdzyYuBbD g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="330270557"
X-IronPort-AV: E=Sophos;i="5.99,262,1677571200"; d="scan'208";a="330270557"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2023 05:26:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="945256008"
X-IronPort-AV: E=Sophos;i="5.99,262,1677571200"; d="scan'208";a="945256008"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 09 May 2023 05:26:27 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 9 May 2023 05:26:28 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 9 May 2023 05:26:28 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 9 May 2023 05:26:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IVcFW/Nb7PrZnnsa1Z5cddd/Svhu/+EOH1xpIPDRkpG8rNBBma9hzrEIJ+k4rXoLoTsTLMWcyseRDRBzJ5aGsDjLP8eL82i7TgG10w9WFgUvhOUeomJSRO80gR9C7y0Wqas4O+Dw3jOIcSu+HifS47NJ4DUvbD1Wp5k9jyXaDC89zXrWIKpwGdE16ITNhujVo9dZbf93cHGE1PoI/RgzVgbKy97ezORqWIh06K+S+5QgPzyZBHc2tq9HynW0TOPsw53AIBSdGsMyCkMeBg66r9LidztHUWg1fuqlpVGsHrR3s1Xiwc6orDtnUfjqjKw4KV9GXD7zyR50jAdm5UuY8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1SlZPm4aLi6gPQvxqwR8gWXStGrttJUoJBV2dnnWEpQ=;
 b=HbtD4xdYQmdSqS4UO1A4jGbCCRkLvoitMnFhmlYApr1ufrclRhHsKEXRx5Am6RoOY4CnrEqgMUzUUittd4o3qHZOLYgY/lgbHGcdSkjvtzNzGdemzrNeAi+vwsIqgECfyOY2u+ANTP0OX0bNBmVOKdjgl4pALz1LFKGJj30RBDzT/xlFJaE220JNsMjQS+eVirUPp2BQY1rk2Aqcpjb4tryQLVbFU+rAKIj7PTimXNPWDfXlg057JVE6kwo+ImriUUxxa8E6KRwKAFCzxXL3KklJTCohm7kUdk+efPhwWrSZj8HOzFxfpohTEGy0Zvk+9rNlXBugDxqLjAxm2P7Rgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by PH0PR11MB5190.namprd11.prod.outlook.com (2603:10b6:510:3c::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.33; Tue, 9 May
 2023 12:26:22 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::16ef:78fa:40dc:31bc]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::16ef:78fa:40dc:31bc%5]) with mapi id 15.20.6363.032; Tue, 9 May 2023
 12:26:22 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH v3 08/12] drm/i915/dp: Convert link training error to
 debug message on disconnected sink
Thread-Index: AQHZf5KQBgoBivS3xEaKh2tOejGDA69R474A
Date: Tue, 9 May 2023 12:26:22 +0000
Message-ID: <a3fed6307398e08d37bb7e6db5186a4b2cf5b26e.camel@intel.com>
References: <20230503231048.432368-9-imre.deak@intel.com>
 <20230505204611.682946-6-imre.deak@intel.com>
In-Reply-To: <20230505204611.682946-6-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB4962:EE_|PH0PR11MB5190:EE_
x-ms-office365-filtering-correlation-id: 1949466d-157f-4e08-9a14-08db508899c0
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: F3QHS08y8+W97NggeFadThciC/ZkuTHU0GFfyG1JlxFQ2hf9bUzNBwxjfm4dMTlzJaxN3lPoDl81T9nLlbhJ9Xth4NOxh3wWKv4D7lIZb3cJ7HYb1R1RlD49LDidscfFOC/g4mkCbSZxQpi8070St2oODahWm7ne++lmBsKF+xFq4Uv1BUqnximY2jU4LNSQVzVRsrtu7A+QOnCyI78+VfezJ1yt7hhejTupLWFte6wfomY1aU8I75Afpxd6q2vZAdcla01jXJ/Ue7iBa+x2CorJ39Ii9rCUOjTxqarfgBBkOfKOwf3CsSCRow7v0F3ygET+BDlh8yY2+QQt1esTgtOL/hTjIjlgZnJeoTzCe/FHS/Rus9PmU2Sa1OSqFdHHtakPldrGjvH294gyeb5BAkO6TcWd/cVPjB3SjII1Zk5A0tRFcn8pFAvz+vpecZ+9106boImuMgs+dj3q3yLPJGpAvci5TkeNtAQ0LxIAJI2hLfNir0M7RoNTIgirmdehc64GD0f52DVUHhBo3wjSAOs37rO8GMWyT0U79/Kaf12McaffPjc8yvW7iJR5oXxJ3vUqTMEYW5Ii5YRiFlHP7yLtvtsrnIfhXcUDWwct/Y7tbiEhvNNc+0Yk6n2EjEWf
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(136003)(346002)(366004)(376002)(451199021)(83380400001)(2616005)(186003)(2906002)(38100700002)(36756003)(86362001)(38070700005)(82960400001)(122000001)(5660300002)(8936002)(8676002)(66946007)(66556008)(6636002)(66476007)(91956017)(4326008)(66446008)(64756008)(478600001)(76116006)(71200400001)(6486002)(41300700001)(316002)(15650500001)(6506007)(6512007)(26005)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q3ZDV3pXVDV0TlBMbkdHUktraDE2K3NIUUJkRFY0UDlEb1V3TmhsTDVuRHRX?=
 =?utf-8?B?YU9ra3ZmMVpIbDZuTi9mT2F2Y0FpL1FCL0dJdW04TUJXSTI3K3BtTWlHZjls?=
 =?utf-8?B?bHlRRVJpZGU5NnFVbTh5T2lNbEJHMlU0Yndyd2dEQWNBZWUraUJIWnY4YTEz?=
 =?utf-8?B?UEZVeEFhMHExT3FGZjhSakZLdUltWFIwSSsweTZ2T1UzdG5NdkErbzVQWk82?=
 =?utf-8?B?a1RKZjZlS1lSelROMVdHSlNJSnJIL0V5bGx1R2tmN2kyeWVTeWVaT09jOHVr?=
 =?utf-8?B?dlliNFcyVitWaWtBU0lnbWZRMnNjYVVEV2h6WDFpOG1JRjFLd2FXSWxMSnhw?=
 =?utf-8?B?TXJFZTd6RmQwYUx3cW9Qbm1zbXBVaGlOeGtML0ozcEo1NWV3aHBTTFVuVWtQ?=
 =?utf-8?B?dWpCNks3ZnNFUzBHY2JRdmVlMGRuWHN4aWEzUkNHQlM3MjMwQkFDZ2FpNWxS?=
 =?utf-8?B?OGxtWFlGVCtwWGIyT2F4WFpCdmFITVAzRk9lUHVmV0tNbGdKS2Q2eU1rUGFr?=
 =?utf-8?B?N25hd25BTWNGdFFWcE1WNWhpZ3hiNjhOazA5b0QzVmJUMVBVUmd6N1Yyc3Fn?=
 =?utf-8?B?YVdVWFJiMkpHZzJEbTF6RnlHeFpxUk1hZkM5ZTNmS3Q2RGdzeXcrQzJ0K01O?=
 =?utf-8?B?SHJnaWw1YThZRXZoaDFIektabWFFdHFyeTl3bXZZeEtuc2lxcXk2ME1RcFJN?=
 =?utf-8?B?QTNYM2RTdmF6NUI4ZUtSc0JVTmdEVXVBSytaVWh2dlF1MEhmTkJJNjhoRVZY?=
 =?utf-8?B?TUpRekluSnZxRWt5ZWtIUWVXWWhydzBKbnVvSll4N2hscXZ5Ykp6OXZtM3Jp?=
 =?utf-8?B?K0Q2UzU1QzBmdnU0Um1tc0V5Y0xDRlg1eHRtVVJRaEF1ZUNuRXlhWHJZUWhW?=
 =?utf-8?B?elZpNk5EUGVIbWJ5UkJvT1dXK0s3QUp2eVFmbXlsMVVydnBEL09zM1ZJcFU1?=
 =?utf-8?B?Y0hOWTFIMndOcHRNblBzMEtOTGRibzZaK29Ia0p3YlVZZC9wempUZjdabXp4?=
 =?utf-8?B?TE5nVDZYTEowWVo1N1JxVEpmSW9nWFRvZW9zcDI0Tm5kekNaZmZkTnRJckhP?=
 =?utf-8?B?TG5yZzNqd1prTmcrV1RTeVNyWHhseS8zT3FaL3FFcTV3N2EwWWJUVDIyZXRH?=
 =?utf-8?B?L3pBbzZTL3kwRytEeGVMS1NzdVA2ZkhHMFVqN205azA5R0tlUzA2QkUzb2R5?=
 =?utf-8?B?NXdVRENMQmtkcTRLOTVJRU1wVkVaZURHODVQSXFnMmVKTldLNlBmWmlncmZw?=
 =?utf-8?B?MCtUS0lHTTlOWjF0bkVmU1UwRld1MHNIU2x2SEJJK3hJZWZUOW9lS3M3UktB?=
 =?utf-8?B?bnB2MDZUWEI1VzhkY3FKTDloZTErWDFSY21CSGQxbThuSXVDT3BNaFM1dFdx?=
 =?utf-8?B?YkhwRE9FNGtkdm0vUUZSY3kyMFhyTFJXblJ1SHF0Z1drV3VKQWhzajZjZnMv?=
 =?utf-8?B?bzVkNjZBREdnUE92cTBXRlZ5bUdsK0VUVXVlRVBrdWtUeFFYR2pzaHZMdG5m?=
 =?utf-8?B?akxPVll6aEZSbmVjZlRRckh4OWN4a1gwM25PQzVRdDRoMUdwTDcvMTQ4OGpY?=
 =?utf-8?B?VTliS05QdE1OTFYvNkNXbm1VK1dKZUhuaUkrdkFKdzFrWjNha0hBWUpuL2t6?=
 =?utf-8?B?dzZGMEdpNjM5YXdud1ZhMnV5ZGMwUnZKNU9vakpQYmFKR2JIYWk3bmdJNkhM?=
 =?utf-8?B?OC93TU1wdTJtOWYzcGFJR3NMYUJialpyK2JudlVCa25LeG1WeWpqS0lEV3RC?=
 =?utf-8?B?ZzlucURJK0lYS0JESytDYk0xa3hBUUhKaFB3T05pZi9XOXplZWc1Z2FlSDE5?=
 =?utf-8?B?Z1oraGxBRDhOTWw3eGVLNytrdUpmNHJmQjZXcU91NDc5RTdmY29SdmxEZlJX?=
 =?utf-8?B?dFRpQVRoMWFGQ2hkeHl3b0dEMHZNWDNmYW9oMTRDdmhEUnREM1p2ZnBxMTBy?=
 =?utf-8?B?ZkUydlIwcldGejJkSU5DeFRrcTk5UGFCczExQUFiSUtDMGI1czZtQjNCeDEw?=
 =?utf-8?B?U3Q0Vm4xK0V2L3MvM3dGNFp4TzBJZkgwQ3h2WCtKZm9rWHNJbDZ0R1pqRll6?=
 =?utf-8?B?SUh1TjEwNTdhditOQ2I0dWdhY2s2V0NvR0llc0tLQlAzWDU2ZSs0NjNMSXh0?=
 =?utf-8?B?eVlGNkhPSFhxRWhqK2g0c05kYW4yUlREL2pVZTdwN2xjQm5vby8wMUhWakth?=
 =?utf-8?Q?PTEsj8j+dZJULaymbhI63pk=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3928D71D6F808440BFBCFFB9C1FE2105@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1949466d-157f-4e08-9a14-08db508899c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2023 12:26:22.7876 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1vx48NMTsinpqgJxyn7N4AUik0xJNzjsgCN8KL4fWSdDiCwYbu6xClOeeJI+HARwAwZfUVBgUI+w36WsHhlsSWTYKqRljHtL7QElkM0bKfg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5190
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 08/12] drm/i915/dp: Convert link training
 error to debug message on disconnected sink
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

T24gRnJpLCAyMDIzLTA1LTA1IGF0IDIzOjQ2ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IElm
IGEgc2luayBpcyBkaXNjb25uZWN0ZWQgaXQncyBleHBlY3RlZCB0aGF0IGxpbmsgdHJhaW5pbmcg
YWN0aW9ucyB3aWxsDQo+IGZhaWwgb24gaXQsIHNvIGRvd25ncmFkZSB0aGUgZXJyb3IgbWVzc2Fn
ZXMgYWJvdXQgc3VjaCBhY3Rpb25zIHRvIGJlIGENCj4gZGVidWcgbWVzc2FnZS4gU3VjaCAtIGV4
cGVjdGVkIC0gbGluayB0cmFpbmluZyBmYWlsdXJlcyBhcmUgbW9yZQ0KPiBmcmVxdWVudCBhZnRl
ciBhIGZvbGxvdyB1cCBwYXRjaCwgYWZ0ZXIgd2hpY2ggYW4gYWN0aXZlIFR5cGVDIGxpbmsgaXMN
Cj4gcmVzZXQgYWZ0ZXIgdGhlIHNpbmsgaXMgZGlzY29ubmVjdGVkIHdoaWNoIGFsc28gaW52b2x2
ZXMgYSBsaW5rDQo+IHRyYWluaW5nLg0KPiANCj4gdjI6DQo+IC0gQ2hlY2sgdGhlIGFjdHVhbCBI
UEQgc3RhdGUgdG8gaGFuZGxlIHRoZSBmb3JjZWQgY29ubmVjdG9yIHN0YXRlIGNhc2UuDQo+IMKg
IChWaW5vZCkNCj4gDQo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPg0KPiBDYzogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxh
aUBpbnRlbC5jb20+DQo+IFJldmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPiAodjEpDQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1y
ZS5kZWFrQGludGVsLmNvbT4NCj4gLS0tDQoNClRoYW5rcy4gTG9va3MgZ29vZC4NCg0KUmV2aWV3
ZWQtYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29t
Pg0KDQo+IMKgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcu
Y8KgwqDCoCB8IDEyICsrKysrKysrLS0tLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlv
bnMoKyksIDQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMNCj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0KPiBpbmRleCA0ZjMzYjc5
YjIzZGIwLi41MWQxZTRiNGIyZjE5IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0KPiBAQCAtMzgsMTAgKzM4
LDE0IEBADQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIExUX01TR19Q
UkVGSVggX2Zvcm1hdCwgXA0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBMVF9NU0dfQVJHUyhfaW50ZWxfZHAsIF9kcF9waHkpLCAjIyBfX1ZBX0FSR1NfXykNCj4gwqAN
Cj4gLSNkZWZpbmUgbHRfZXJyKF9pbnRlbF9kcCwgX2RwX3BoeSwgX2Zvcm1hdCwgLi4uKSBcDQo+
IC3CoMKgwqDCoMKgwqDCoGRybV9lcnIoJmRwX3RvX2k5MTUoX2ludGVsX2RwKS0+ZHJtLCBcDQo+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBMVF9NU0dfUFJFRklYIF9mb3JtYXQsIFwN
Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoExUX01TR19BUkdTKF9pbnRlbF9kcCwg
X2RwX3BoeSksICMjIF9fVkFfQVJHU19fKQ0KPiArI2RlZmluZSBsdF9lcnIoX2ludGVsX2RwLCBf
ZHBfcGh5LCBfZm9ybWF0LCAuLi4pIGRvIHsgXA0KPiArwqDCoMKgwqDCoMKgwqBpZiAoaW50ZWxf
ZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZCgmZHBfdG9fZGlnX3BvcnQoX2ludGVsX2RwKS0+YmFzZSkp
IFwNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRybV9lcnIoJmRwX3RvX2k5MTUo
X2ludGVsX2RwKS0+ZHJtLCBcDQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgTFRfTVNHX1BSRUZJWCBfZm9ybWF0LCBcDQo+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgTFRfTVNHX0FSR1MoX2ludGVsX2RwLCBfZHBf
cGh5KSwgIyMgX19WQV9BUkdTX18pOyBcDQo+ICvCoMKgwqDCoMKgwqDCoGVsc2UgXA0KPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbHRfZGJnKF9pbnRlbF9kcCwgX2RwX3BoeSwgIlNp
bmsgZGlzY29ubmVjdGVkOiAiIF9mb3JtYXQsICMjIF9fVkFfQVJHU19fKTsgXA0KPiArfSB3aGls
ZSAoMCkNCj4gwqANCj4gwqBzdGF0aWMgdm9pZCBpbnRlbF9kcF9yZXNldF9sdHRwcl9jb21tb25f
Y2FwcyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiDCoHsNCg0K
