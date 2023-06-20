Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75932736693
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jun 2023 10:45:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2A9110E15E;
	Tue, 20 Jun 2023 08:45:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43C8F10E15E
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jun 2023 08:45:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687250713; x=1718786713;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+3umpSykSlR5/NOhHTTQqoTUG6ZNQH/WUjc2+IizgZM=;
 b=RyY2RL0G0pep7fYsPR2NtA4nvaadQWLi85ASq49qTxFYvuHOdhpsclTv
 o3Gjy8tmXlJEoJMjKDfpU5n6fJmf9n16zf7ymQidzjz9yVxAPYjC56aau
 cdLWHWbzHYoJTHXKIiczZmb6ZcAxSEYLPoZXLbQyWv1DGEkUhrxMDaHNd
 3EdX28+upYeJQAwlkoV51+3L65S+H9Nboi2FfyFl9uXoJUHubw8xyBDZg
 syEbdfZmXnxcEgT0IgPVGAI8zjR3YkML0gvsIFbxdqGjcMozzt1JCyaKV
 8h13eOmH1hjQALRZWwI8e8fyBdd/QxdzWITUbmRxo7xf5myvFyFyZLdIc w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="389008228"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="389008228"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 01:45:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="1044176083"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="1044176083"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 20 Jun 2023 01:45:06 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 20 Jun 2023 01:45:05 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 20 Jun 2023 01:45:05 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 20 Jun 2023 01:45:05 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 20 Jun 2023 01:45:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e0SgfJF3cfxS1yspWYw2ME4/j2xfAesXbZbJaQqBm6yJ8rD0SDLXzNPQ4nj9HbM0VqGD4Fu0a2erdJfFNwjNtkXN4/j9lNCEBHBuU7u5QQM/+iqA/flIzIra8H6OAIvSXj5U5sfbUlZ213Vbc+OnrHLM8EyUPmldJkwq9n5E67jGBF1ZDEJvJCF7vhLiHdmOtoRj8rvJl15KcQKCM0ZBt5hfyKPwQx69xiApHUXndGJ8D93oBY5BvG1REZWiwpUC+uy0m2/AoWWlGfgeWrULYjp8NIQycD4Kqr5xhjGRCtv9LW2sIFKVdzCPFz3M4JGNhVBFCxK6JF/4NHk7LHgRmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+3umpSykSlR5/NOhHTTQqoTUG6ZNQH/WUjc2+IizgZM=;
 b=V9IWWXSUurIuW5B8SqD3c4zmMVPF9iMEOgzkw2UagpuueNjNON1F/yS9SCgalERgKVweIvYWQ4IHdZ1cLNQTvOgGc7YIDnNc6YIiTO/NmlG5S5PtF1IdnM0uJSfXX4MPz2+cm7brCIT6ESx587CTeXYBrJZHmGwVS9nNGeybbzxUpZJbZFhYmcHN/FbxwRK4am5qj3pAD1Q/IT0qGaFcYKtfa6R188WB1KfzQ/oB80CoO/zc/ZZ5W5cwFzKGlytMkKmnV/KQ1Va9qF0RtjNVxQAlhNj58uTv9VIPtLVWYlc7UiHHO+C+WO3N7+b+tuaS09+xlwibH8KQg6sSVrV68A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3170.namprd11.prod.outlook.com (2603:10b6:208:64::10)
 by PH7PR11MB8477.namprd11.prod.outlook.com (2603:10b6:510:30d::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.37; Tue, 20 Jun
 2023 08:44:57 +0000
Received: from BL0PR11MB3170.namprd11.prod.outlook.com
 ([fe80::fbc7:d70e:14d0:6e2f]) by BL0PR11MB3170.namprd11.prod.outlook.com
 ([fe80::fbc7:d70e:14d0:6e2f%5]) with mapi id 15.20.6500.036; Tue, 20 Jun 2023
 08:44:57 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/6] drm/i915/display: Add support for global
 histogram
Thread-Index: AQHZiW8e6yNav7efDU2G2z4WNNNYXq9nqnmAgCvon7A=
Date: Tue, 20 Jun 2023 08:44:56 +0000
Message-ID: <BL0PR11MB31705F72C77F3F209AC4D03FBA5CA@BL0PR11MB3170.namprd11.prod.outlook.com>
References: <20230518094916.1142812-1-arun.r.murthy@intel.com>
 <875y8jmk9u.fsf@intel.com>
In-Reply-To: <875y8jmk9u.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3170:EE_|PH7PR11MB8477:EE_
x-ms-office365-filtering-correlation-id: db39d09a-9af4-4a07-9e82-08db716aa022
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RZz31cEfQRiSWpmIHumZAmEvDK9bmamK+sh4BMpbyPdr/MsDH5TV0CblHXRvP3zDaTKlcnNmdop31LyMzooj7EDpWP1r6FVHvPFsNj7NUhhZo78idHvIVyRIVdulx6/J/r38RoZ+YvmEJrAl2WzOQgRQsRAxRMQWn9clWBk9iETcUVS6Ri8N7+4fONVNqQZEn8j/kRobVox9hPswf9HjUHMpOBCg5efEAY25BlPlw7u1Dr3lurFLJLGm4KX/j9bnx0vkeTU6+uHvoTMEeY96pf38rHQItTkQOC+VlcPjoNZIK8hOcZfR4STJpvcu64fPiw37jjQQAwrpsoXNUSDQOFI4F7yF5IJF2qPZQ2Xx67Bw/5w2yxjEQQv9R9/ubNbnagPFyBIOR2tsXwFMUSURzQTkeMpGjt+6rVvs9GueQHTiFR4RxmOSQsGJfV8i4sJPnWWCeqyiaYWVkwDaa0m0mKFZfuftbGngf0tF11w8S38khiwkDAjqWrPFIc2iJmYK0rEQpHPa7utdm26KArLSYgaFqho2POeZIX6a4WVthviVLfliagSJeJgXeYyzKKh+Oo9XQWbZvlUkfM8Vnv08oNF/4oDNEbm6q1qoTdyEiak=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3170.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(136003)(396003)(366004)(376002)(39860400002)(451199021)(71200400001)(478600001)(83380400001)(86362001)(7696005)(316002)(38100700002)(82960400001)(66476007)(76116006)(66946007)(66446008)(64756008)(66556008)(122000001)(9686003)(53546011)(6506007)(186003)(26005)(110136005)(52536014)(41300700001)(5660300002)(8676002)(8936002)(38070700005)(2906002)(55016003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RWRFMC9qOGlEWUNId2ExN3ZscVF0VkRQR1FPZzF0RnZTVUJ6QnRaeWpZQ2kz?=
 =?utf-8?B?Zi9memJMYlU2bzdoVkJwY3pxNm1YVXNHNnFEL3Bra0MwSUJnV1NTVC9wNEF3?=
 =?utf-8?B?WkZweGR4aEFDQVdPRk5CQXFIdTlTS1MzelBPam5FbVVEMWFNdnFjckxLZ1ha?=
 =?utf-8?B?UDZvRWZyWHA0WVBOMmtvS0dGNFYva3RiL1ZOQ1RDVEx0L3FsZTc5SGsvUGZ6?=
 =?utf-8?B?NURVMzhoaGs2TDRvcFJON1NuNm04ZFJqNHF5UFdYdGd3ellVNWVmeXQxT09y?=
 =?utf-8?B?bVFNcEdBUERJbytVcHZHdWpQUnJoUjJCKzl0Sm9YMmNVRXM5WXJvaC8zTHRj?=
 =?utf-8?B?U1VCRFJES1AzazJVZm5vZHpSejFWRmxoZm12ZVY0dm9IeFZ6UmhYaWRRYmVI?=
 =?utf-8?B?K0tZOEdqWEZ4WHdBMmQ0RkJ1SFY1Ym1BY1BYM3VCK3o4cnpHUVV1cmtvV1p0?=
 =?utf-8?B?Ums3SDRjZjg5Ky9NWnZQOCtjcWpjcW9NZ3NocTNZaWY4R0tlUXEzNmJrcGVq?=
 =?utf-8?B?cWc2d2RYcThLeVNRV0R4c3hQTm9hTWtEemRMZ2tWaG0zbm9kalJLWUxGb2Vx?=
 =?utf-8?B?S2NmSU9vYVpKUk83d3RtcUdoR0NQZ08vZ3JIQjlmc2VDL3RGRjlCeXNRYS9v?=
 =?utf-8?B?Tit2enFDQWJYVExvVzI5WEN4S09oRXlPaHpueW91azFjNFdmMUprTkErcElF?=
 =?utf-8?B?ZmI2aFVuM3dZSmIwS04vaWFHRGlheVlzOGhFOW1TczJmVEhkTmNZL1BqaTZO?=
 =?utf-8?B?a21taUVSVHZLRXA2clNISkI1UXNBeWx5YTQ4aHpJTEVPMjU0M09SQ1J3VU02?=
 =?utf-8?B?U0xiS1lWbENqVUJMMno0MGJQVmRzdFJKQWRPOGx5NEF5bEhsVFJmTGgyOEsy?=
 =?utf-8?B?SjcxdGdEdndMUVVrd25UWEUzUmpSTGRWTUY1SThLbklEQUJrRXRqMXpYb2VM?=
 =?utf-8?B?cCtpWWZ0UHdDWEFkSTJ6WGovNXB4N3dURkdSUnhMYXZPZW5YdTIzTzlVUjV6?=
 =?utf-8?B?STkvUkt6WnFCR20wVWtXSE96ZS84dnY4UnpHNERkckw4M0llZ0R4TTVsV2JE?=
 =?utf-8?B?aU55MEs1YVBZaVZVbm5TbHVXSmwyeldud2xJT002Mzh5MFFxOXNydFFncDRp?=
 =?utf-8?B?WUF0RytLWURISDVOL3FhWHFKM3lHOG5ySEdOMFduZnQ3RVpDN1lNcGN3LzE3?=
 =?utf-8?B?WXhWdlFyc05SVzUrTVhFSUxkblJjRVduQktMYmtZKzNPT2JNN1Jsa0xyOERQ?=
 =?utf-8?B?QkZQeGRUbUFTMFlOVDVkdGtFLzRzanJwTjJxVVRXMWo4OWVCM1hBdDZYc3lY?=
 =?utf-8?B?VWMyanhtNnJOc0VJK2g1c1pBUUZWVEt5Q2ZIZDJobEF0dXlEdVNPOCtLYkpT?=
 =?utf-8?B?YWVkU1c4R3BxZUx4enROeGZLeVhZLys1K1c4N3F3YzdjVWNic05lT2k3c1U1?=
 =?utf-8?B?emJuRXNUZmVqdmhadStWOWtCUGVGSHh5MVowbGlIdFhvYWlUN29OUWlLNWE4?=
 =?utf-8?B?ZTIxMHlLRVNLd3E5ZHhEb25qZjdZTGRYTDZsR2VnVHNkazFqU1ZqNjFScjJY?=
 =?utf-8?B?bXVWV29uOUFpUkgrUkpxbjhqY05TbVhYbU9lS3ljZUxoaDZzRWo1V1dkRmFj?=
 =?utf-8?B?ZDVWZ0hxS1NYdTFzL0NveG05STkycWozQy9xaWdHL2ZwUktnc1ZldHd5UFVi?=
 =?utf-8?B?N3lBSFpxeW5zMmR2OFNjemptcjYyRDJSZy96UGdpT2NmajM3TFRiNmpnZTFy?=
 =?utf-8?B?ZW9rSlFDSmh3UWdEYW90WkJzQTEwRENDYVdzSnEyUmVuRjkwQTJRQ2gzTzhB?=
 =?utf-8?B?Z2dlLzVXc0NWekRCUGN4WG1NTWR0UmdaaVZ1dkxCeXBTYVpoSUVITVRjbUUx?=
 =?utf-8?B?RVhmeVZVL24ydmZqUUZhNnV1aCtxQld3R01VM3JxaXdRRDNDK0d3TzlVTWtH?=
 =?utf-8?B?cXFnUy9vbi9RZEQ0YkZLNHQwdlFBTW4vNTZiQ1RFcDlEb1dub2ZmcXlRejln?=
 =?utf-8?B?dmxWTWFCQ1pydG9VNG9sSkc5NmxlYm5TYWIzcWp4Qk5TS1FSUzhJK3hBL01o?=
 =?utf-8?B?RCtreUkrUHdDMFNLN3oxeXJvR2FkaGdNd29BbDlTRXFrbk5mQ3lIRzRzYVlv?=
 =?utf-8?Q?LcjCr1bhZphxwL39YD2KExL/x?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3170.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db39d09a-9af4-4a07-9e82-08db716aa022
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2023 08:44:56.9972 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rRnTBqlDcWnpUam+yskDeYFGO9su/RTX/73pOqgXOFIx1PmidFA8+LVIW3SmyyBaodU3/9KJu7AFxhjlk30IZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8477
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915/display: Add support for
 global histogram
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAbGludXguaW50ZWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBNYXkgMjMsIDIwMjMgMzo0
MCBQTQ0KPiBUbzogTXVydGh5LCBBcnVuIFIgPGFydW4uci5tdXJ0aHlAaW50ZWwuY29tPjsgaW50
ZWwtDQo+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtJbnRlbC1n
ZnhdIFtQQVRDSCAxLzZdIGRybS9pOTE1L2Rpc3BsYXk6IEFkZCBzdXBwb3J0IGZvciBnbG9iYWwN
Cj4gaGlzdG9ncmFtDQo+IA0KPiBPbiBUaHUsIDE4IE1heSAyMDIzLCBBcnVuIFIgTXVydGh5IDxh
cnVuLnIubXVydGh5QGludGVsLmNvbT4gd3JvdGU6DQo+ID4gQVBJIGFyZSBhZGRlZCB0byBlbmFi
bGUvZGlzYWJsZSBoaXN0b2dyYW0uIFVwb24gZ2VuZXJhdGlvbiBvZg0KPiA+IGhpc3RvZ3JhbSBp
bnRlcnJ1cHQgaXRzIG5vdGlmaWVkIHRvIHRoZSB1c2VzcGFjZS4gVXNlciBjYW4gdGhlbiB1c2UN
Cj4gPiB0aGlzIGhpc3RvZ3JhbSBhbmQgZ2VuZXJhdGUgYSBMVVQgd2hpY2ggaXMgdGhlbiBmZWQg
YmFjayB0byB0aGUNCj4gZW5haGFuY2VtZW50IGJsb2NrLg0KPiA+IEhpc3RvZ3JhbSBpcyBhbiBp
bWFnZSBzdGF0aXN0aWNzIGJhc2VkIG9uIHRoZSBpbnB1dCBwaXhlbCBzdHJlYW0uDQo+ID4gTFVU
IGlzIGEgbG9vayB1cCB0YWJsZSBjb25zaXNpdGluZyBvZiBwaXhlbCBkYXRhLg0KPiANCj4gV2hl
cmUncyB0aGUgY29ycmVzcG9uZGluZyB1c2Vyc3BhY2U/DQo+IA0KPiBTZWUgRG9jdW1lbnRhdGlv
bi9ncHUvZHJtLXVhcGkucnN0IHVuZGVyICJPcGVuLVNvdXJjZSBVc2Vyc3BhY2UNCj4gUmVxdWly
ZW1lbnRzIi4NCj4gDQpXaWxsIGJlIHBvc3RpbmcgaW5mbyBvbiB0aGUgdXNlciBzcGFjZSBjb21w
b25lbnQgdmVyeSBzb29uLg0KDQo+ID4gU2lnbmVkLW9mZi1ieTogQXJ1biBSIE11cnRoeSA8YXJ1
bi5yLm11cnRoeUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L01ha2VmaWxlICAgICAgICAgICAgICAgICB8ICAgMSArDQo+ID4gIC4uLi9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICAgMyArDQo+ID4gIC4uLi9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9nbG9iYWxfaGlzdC5jICB8IDI5NQ0KPiA+ICsrKysrKysrKysrKysr
KysrKyAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2dsb2JhbF9oaXN0LmggIHwNCj4g
PiAxMTcgKysrKysrKw0KPiA+ICA0IGZpbGVzIGNoYW5nZWQsIDQxNiBpbnNlcnRpb25zKCspDQo+
ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2dsb2JhbF9oaXN0LmMNCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZ2xvYmFsX2hpc3QuaA0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9N
YWtlZmlsZSBpbmRleCA1YWI5MDllYzI0ZTUuLmVhYzFlMGQ3YmQzMA0KPiA+IDEwMDY0NA0KPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlDQo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvTWFrZWZpbGUNCj4gPiBAQCAtMjk1LDYgKzI5NSw3IEBAIGk5MTUteSArPSBc
DQo+ID4gIAlkaXNwbGF5L2ludGVsX2RwbGwubyBcDQo+ID4gIAlkaXNwbGF5L2ludGVsX2RwbGxf
bWdyLm8gXA0KPiA+ICAJZGlzcGxheS9pbnRlbF9kcHQubyBcDQo+ID4gKwlkaXNwbGF5L2ludGVs
X2dsb2JhbF9oaXN0Lm8gXA0KPiANCj4gQ29tbWVudCBuZWFyIHRoZSB0b3Agb2YgdGhlIE1ha2Vm
aWxlOg0KPiANCj4gIyBQbGVhc2Uga2VlcCB0aGVzZSBidWlsZCBsaXN0cyBzb3J0ZWQhDQo+IA0K
PiBBbHNvLCBJJ20gbm90IHN1cmUgImdsb2JhbCBoaXN0IiBpcyBhIGdvb2QgbmFtZS4NCg0KVGhl
IGhhcmR3YXJlIGJsb2NrIGlzIG5hbWVkIGFzIGhpc3RvZ3JhbSBibG9jayBhbmQgZW5oYW5jZW1l
bnQgYmxvY2suIEhlbmNlIHRoZSBuYW1lIGdsb2JhbCBoaXN0b2dyYW0uIEEgc2hvcnQgZm9ybSBv
ZiB0aGlzIGdsb2JhbF9oaXN0IQ0KQW55IG90aGVyIGlucHV0cyBvbiB0aGUgbmFtaW5nIGNvbnZl
bnRpb24/DQoNClRoYW5rcyBhbmQgUmVnYXJkcywNCkFydW4gUiBNdXJ0aHkNCi0tLS0tLS0tLS0t
LS0tLS0tLS0tDQo=
