Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79DC576E569
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Aug 2023 12:18:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1CB610E5E1;
	Thu,  3 Aug 2023 10:18:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71CCB10E5E1
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Aug 2023 10:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691057904; x=1722593904;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=GzOdIlRCBnseFqOmk3OPf1pORjUVmGizEyBc9S7o+BU=;
 b=GqwsI2LKN8nxP9IkO1jSgfO9d8Y6RCP81ulxFf6wYEYraBz5FzJtPIZd
 A8rD/kHviMRZ70tOYWGr3WMXCUMq4arOLaYeOKJp6VEGBFIRfsRrkPbJ8
 XG42bvlVlUY70rUHTQLfkAl9HBVqBFzTnVpNOTQKTWs+7b8UlBxRrOw+/
 l/ER2E5aEDozA1e0Sh7LSdW4a5qzF0x84NbwW8YUn+xAH671+q2TpyP3e
 kzNrTO8brkHm6zcO7rpR6+QU+nwZs8XQvasSn+0dwDn5GtEacovRG0Gz1
 /0xlZ5obgrSd+xQhBe9N51acP7o3ptVXaVjvgJuRitbCR4dlgUptDadRB g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10790"; a="433672957"
X-IronPort-AV: E=Sophos;i="6.01,252,1684825200"; d="scan'208";a="433672957"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2023 03:18:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10790"; a="794947625"
X-IronPort-AV: E=Sophos;i="6.01,252,1684825200"; d="scan'208";a="794947625"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 03 Aug 2023 03:18:23 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 3 Aug 2023 03:18:22 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 3 Aug 2023 03:18:22 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 3 Aug 2023 03:18:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Br71YKXPY4Y1Rm6oix+UfFTzCm9KvVpoBfAkeG+NwagHzFYGNzI0+Rb8jNaXD47TSLpBoDUZoC0palXuV0GPTEaGHM083Oep8LDfsy7Go7BXi0R/I9zTvhcZMvOYmzoObRJQUW1vQbmAAklzuR9RNOo6wP+yQvGGViQvjsOJf/L68tvJmnCg7yJVWRJvci6lLwngp7Ru+O+ySZRvCStFGFESqGv2iHEVfTmPoJuulmxXEBl3BWlRdQi8p7b/SSmRfnqPI5J49Gb8eG53vuPvRLg1tpcsnobp1JFBo+t6cZj05tBBu+grfJXVEdUvJ2fMrP+yeWAivGzu1X3pFEfMTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GzOdIlRCBnseFqOmk3OPf1pORjUVmGizEyBc9S7o+BU=;
 b=m/Ks/rpn9hoK7uKPbdKt6/+3sxjh+4Gx3uCQcYKsSjwwifo9wdn/7qCA9/VKWtC7ozx6fPc4FyLyWY2NcYrdmWroHyRX0L7mUS1HWzeGYe4OOKOuTTgh5H+XsAaCqQkh9XingsF2UKxOM6HlTznP0tHp/aJlfNiGaIpA6iGlzWYiSYA0B2sK2WHGTgSLV2Me2szxO2j8AzEK7rN/i3eBWW24IWD1vm+KJjGgLN2FPdkR/T3LU7STwxqYpJ9DIy2XnzeEVj9bRLjv6tX7wHHIu6w+sOGj/CJ6CaoeB9UM8eyz99aQAruT6e6rkMNldSrZlRsQ8Zv1srCymPlRcs43YQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6312.namprd11.prod.outlook.com (2603:10b6:8:a5::11) by
 DM4PR11MB6501.namprd11.prod.outlook.com (2603:10b6:8:88::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6631.47; Thu, 3 Aug 2023 10:18:21 +0000
Received: from DM4PR11MB6312.namprd11.prod.outlook.com
 ([fe80::6887:918:cb54:2006]) by DM4PR11MB6312.namprd11.prod.outlook.com
 ([fe80::6887:918:cb54:2006%5]) with mapi id 15.20.6652.020; Thu, 3 Aug 2023
 10:18:20 +0000
From: "B, Jeevan" <jeevan.b@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 2/3] drm/i915/fbc: Make FBC check stolen
 at use time
Thread-Index: AQHZnn+0hmJeN97GRUaeZFThNVHHgK/Yqh6A
Date: Thu, 3 Aug 2023 10:18:20 +0000
Message-ID: <DM4PR11MB6312B849CC5ED1A0EE460A5A9008A@DM4PR11MB6312.namprd11.prod.outlook.com>
References: <20230614051731.745821-1-jouni.hogander@intel.com>
 <20230614051731.745821-3-jouni.hogander@intel.com>
In-Reply-To: <20230614051731.745821-3-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6312:EE_|DM4PR11MB6501:EE_
x-ms-office365-filtering-correlation-id: 736e6c65-4db3-4f5d-bb11-08db940af64e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Gm6tw9UaTiVZyDGDiXj3nRFggLVRYM/FwkevE/Egr7O1z/fvlDOUCPzTqXm/f7X4tBa2gYgiKj4EyiQeCG8h4fMEt0BQ8VTcOmGit5fMcCfEoSf9SYaZUxNtu2ig69KccygOM7b5Og7FsYXvRm0cWqz/xzU57Bvlq+weAssKpDTLXAmpR7eMPv59qK6qXa3H2TXIh1bcCk07kHfw+VMH459ZQSfKnTHHf0w75YSAWc8F8Ob6D3Of0U0NYhF/BmR++dS0LIMwInmbO3y/Qi4Ze81uNXPZmhRonhF73dSe38j9rg7obCn1bx0oyFJP6R90NB5ZAWlq2pAf2pQL56DBfRkMmKjzS5ba+Trrnyj1HZaYmRdZJgp9knDFlN2mbY1dbmT/s7qHwavTNxOro+jAVupe/DheMU4j2I6HYRZSwu4VQFQLv/11RuWagL9uCQX6bYh+pqF21b4a1OZbN7JwtQ1Ulkm+wGAbjfwJkmcG9WjUkdKuvBSGTBJf9ungNdB7L6CD9k0TjlBVizLm9uHbEXwBIDiSsZvIYtxYKjWsqafsvaZfX6pgM2nC+VtOsoHZf0x9EjUdKe6Hsjiby+L14U95PHemP5EVp6J/3q/kgX2FvHa8pDLlhCzCIReYM+dy
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6312.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(366004)(376002)(346002)(39860400002)(451199021)(66574015)(53546011)(6506007)(83380400001)(26005)(186003)(316002)(76116006)(2906002)(66946007)(64756008)(66446008)(66476007)(66556008)(5660300002)(41300700001)(8676002)(8936002)(7696005)(71200400001)(52536014)(9686003)(110136005)(478600001)(55016003)(38100700002)(82960400001)(122000001)(33656002)(86362001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S0dITnh0Nno4QU9YNDdkeGtobUZpcTd5aFR1MVVTWW14YVl5bDVJRWIrOS9m?=
 =?utf-8?B?TFd4azcyaGhQRC9vVVc4dTNqSmZyRFJHZ1BLSC9BNkJUWmpwcU9YblZCZDIv?=
 =?utf-8?B?TDZGeEtkNERack9uZUtBT1lsVm5YMXF0TnlCN1JrT0VRdmNueU9QZWxsSVQ1?=
 =?utf-8?B?Y242RmFtckNaOVljYlZ3NDBWMTQ5WitHS25abTJQOG0rTUpURC9CVGMrRlp0?=
 =?utf-8?B?Y21MeUVBbVliOTJoQVZkNHNtKzdVdWFTOVVyczFIamdRQTIzQ3VMdjhQaWgw?=
 =?utf-8?B?SGQ3YnN6WGVORVVWLzhBcENROHd2Q1BZNExWNG04UXB3aGRJKzBWaEZtaU1F?=
 =?utf-8?B?WWxZT3d2bGltbXF1bElWMGFlcUp1RW84SkRoZS9lbTFDS3p6ZFp6WTZ1OGtv?=
 =?utf-8?B?RklNdGNOTUszTWNHVXIybFhtTjBOUzNaa2lSTVE0aVA0dHROZjQreGI5WkxL?=
 =?utf-8?B?YWhCeFMzTkhqSDYzQm9RaHdHeWdWS0JnK0taU1ljOTNpNnRHVitFU1FGZWVu?=
 =?utf-8?B?bXNlZjI0TEg0UnNTTisvMmhTTlBzUCtmUXpYNjhkaWFoRGZkZXZLNFAyTG1S?=
 =?utf-8?B?Q2tqalRmQnFYb0NCaWFFam5jczhOcFBnZnc0RGNmcTdhZkJ1bmFkVnFMUi9j?=
 =?utf-8?B?K0Fla0RYOEJzMDBzOCt3YXkrcTJ2SEJZMGpVdFQ4YWxENTluUXh5ZW5pRE11?=
 =?utf-8?B?ZUdSNEs3WkRyZlR3SlQ1d2VvbXVuZWJzUjdtb1V1Y0RqMEwzMEp5NzFiRVhX?=
 =?utf-8?B?KzJPeU9BYXhVZUY5MFdmVWVuaWRPZGZNVnkwOGJnQ00rb3p2VUQraXUzYVE3?=
 =?utf-8?B?NUlsK25rY1RGR2U1L0Y1MjhkNDFObmwrM2UyMGpWdzFUbGJNMFJIR0k5S2Fl?=
 =?utf-8?B?TWNYMGh1YVFYVEx2RDVMcTYzOVJnRlczbU5Ca2ZldkJDTjFWMndDQUkwR0o3?=
 =?utf-8?B?ampGYjR4VmZoZEFmbGd6cWdDeFl4MkhpUStEWElNOGd4T1VZakdsdUU4d0ta?=
 =?utf-8?B?ejdmNlZmUVdXU2VnelhBQWNCMjhZV05tMHNoMEhZK1l0QXpKQjk2Y2l0M3Qr?=
 =?utf-8?B?Mk1qaXhTaG8zeTQxdGd1WUwwaUFLeEZVL25CbktCV1RENUk1Y25FOTB2WDJY?=
 =?utf-8?B?R0Ztc056UVQvNFM2K0Q5REVZNGlIdWFzYTEvbVVYRUd6T3BPZlUwL3I4djV3?=
 =?utf-8?B?dTBYa0hSU2k3QkdrT1UzLzFHZms5WHc1aEg4a3JMSTkvTjFvVHNlb1ExNWQ5?=
 =?utf-8?B?SVhmQjNlcDBuTFhpR09lZnViTE1mZTRibnVsZ0JTYkVaOHdQamxwcEtZekZV?=
 =?utf-8?B?S3AreG0xZVo5UC9aUUZ5T3FURjlQdWNZK1pTOHVIR25jaFFZT2JWUDdQdTBY?=
 =?utf-8?B?cWJjd3l4T085STlwczYwSi8rRnVaS3cvajRVcS9CSDVCQ1NqcW1PSUs5ekNS?=
 =?utf-8?B?OXh3T21aME40NXZMT05YN0tpSHVFazAyUWRSTGFyN09NdnRhcDExVXJjVUlt?=
 =?utf-8?B?aWZIY2V2OElZTVM4bW4rTGVNUG1kVGVxTERiUDB1aVhSd2JJS08ycVh4eFVm?=
 =?utf-8?B?a3Q3dlNnK0NycUx2QWxBVUlBUHR3aW9uU1VuSUk0WXNVUmUydDFjSytEd1Yz?=
 =?utf-8?B?TlExR1I3cmk2YkJVcWFGNEVvYkI2QllOMWpjMU8xZDZsY2NaNWpoaFV2S01M?=
 =?utf-8?B?TXF5eTloRkJWaXBYdGZMd0U0cXVkRUJXaFM3eHdER0dhRXdKK2hDR2xjNWNw?=
 =?utf-8?B?WFdxMjdPSSs3RTJnZWlzL3Ryd0svTDFEUHdkTkx2NVhZckt2bm0rVlAvNUdJ?=
 =?utf-8?B?YUNpdmhscFltTzNTNHRkRk9VSXNDQm81VFEzUFJVckVpclg3c2pGRmlaQkQz?=
 =?utf-8?B?RFZNdC9xQU5pNzRLM2tSUVBsdytWYXpXOGJ6Q0VFUXVyR3JId0dZbjVCM3Ez?=
 =?utf-8?B?UE8wV04waUtQU1p2bXUrTk5kd24xZ2pCeDZDaFJFMEpqcjF6MGVkbENtVHVt?=
 =?utf-8?B?dTJRRUY2YXg1NFlwUVI5MVBqZW9sUW1pekJ2VTliTUx0bXhBZldlM1E5Z2RB?=
 =?utf-8?B?a243cHdodUF1KzRXV1BVUnZudG1KbG00SGhHRlFrSTB3Z2I2WjVScmJENXA4?=
 =?utf-8?Q?rpOE=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6312.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 736e6c65-4db3-4f5d-bb11-08db940af64e
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Aug 2023 10:18:20.5415 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UoLaH6tsrxKbB8BtgifyUXmONKXfS9TeanCzowLDMZV8c1rOVV07/KvviPRrXo95i5oKYScsT0/YZU+oJjarYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6501
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915/fbc: Make FBC check stolen
 at use time
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mDQo+IEpvdW5pIEjD
tmdhbmRlcg0KPiBTZW50OiBXZWRuZXNkYXksIEp1bmUgMTQsIDIwMjMgMTA6NDggQU0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdmeF0g
W1BBVENIIHYyIDIvM10gZHJtL2k5MTUvZmJjOiBNYWtlIEZCQyBjaGVjayBzdG9sZW4gYXQNCj4g
dXNlIHRpbWUNCj4gDQo+IEFzIGEgcHJlcGFyYXRpb24gZm9yIFhlIGNoYW5nZSBzdG9sZW4gbWVt
b3J5IGluaXRpYWxpemF0aW9uIGNoZWNrIHRvIGJlIGRvbmUNCj4gaW4gdXNlLXRpbWUgaW5zdGVh
ZCBvZiBkdXJpbmcgaW5pdGlhbGl6YXRpb24uDQo+IA0KPiBJbiBjYXNlIG9mIHhlLCBzdG9sZW4g
bWVtb3J5IGlzIGluaXRpYWxpc2VkIG11Y2ggbGF0ZXIgc28gaXQgY2FuJ3QgYmUgY2hlY2tlZA0K
PiBkdXJpbmcgaW5pdC4gVGhlcmUgaXMgbm8gc3BlY2lmaWMgcmVhc29uIHRvIGNoZWNrIHRoaXMg
aW4gaW5pdCBmb3INCj4gaTkxNSBlaXRoZXIgLT4gcGVyZm9ybSB0aGUgY2hlY2sgaW4gdXNlLXRp
bWUuIFRoaXMgYWxzbyBnaXZlcyB1cyBiZW5lZml0DQo+IGZiY19ub19yZWFzb24gcmVwb3J0aW5n
IG1pc3NpbmcgaW5pdGlhbGl6YXRpb24gYmVpbmcgcmVhc29uIGZvciBkaXNhYmxlZCBmYmMuDQo+
IA0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVs
LmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hv
cnN0QGxpbnV4LmludGVsLmNvbT4NCkxHVE0uIA0KUmV2aWV3ZWQtYnk6IEplZXZhbiBCIDxqZWV2
YW4uYkBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9mYmMuYyB8IDggKysrKystLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMo
KyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZmJjLmMNCj4gaW5kZXggYTE4ZTg0ZWZlOTExLi5kYTgxNjZlZWRmOTMgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiBAQCAtMTA1Niw2ICsx
MDU2LDExIEBAIHN0YXRpYyBpbnQgaW50ZWxfZmJjX2NoZWNrX3BsYW5lKHN0cnVjdA0KPiBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCWlmICghZmJjKQ0KPiAgCQlyZXR1cm4gMDsNCj4g
DQo+ICsJaWYgKCFpOTE1X2dlbV9zdG9sZW5faW5pdGlhbGl6ZWQoaTkxNSkpIHsNCj4gKwkJcGxh
bmVfc3RhdGUtPm5vX2ZiY19yZWFzb24gPSAic3RvbGVuIG1lbW9yeSBub3QNCj4gaW5pdGlhbGlz
ZWQiOw0KPiArCQlyZXR1cm4gMDsNCj4gKwl9DQo+ICsNCj4gIAlpZiAoaW50ZWxfdmdwdV9hY3Rp
dmUoaTkxNSkpIHsNCj4gIAkJcGxhbmVfc3RhdGUtPm5vX2ZiY19yZWFzb24gPSAiVkdQVSBhY3Rp
dmUiOw0KPiAgCQlyZXR1cm4gMDsNCj4gQEAgLTE3MDksOSArMTcxNCw2IEBAIHZvaWQgaW50ZWxf
ZmJjX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpICB7DQo+ICAJZW51bSBpbnRl
bF9mYmNfaWQgZmJjX2lkOw0KPiANCj4gLQlpZiAoIWk5MTVfZ2VtX3N0b2xlbl9pbml0aWFsaXpl
ZChpOTE1KSkNCj4gLQkJRElTUExBWV9SVU5USU1FX0lORk8oaTkxNSktPmZiY19tYXNrID0gMDsN
Cj4gLQ0KPiAgCWlmIChuZWVkX2ZiY192dGRfd2EoaTkxNSkpDQo+ICAJCURJU1BMQVlfUlVOVElN
RV9JTkZPKGk5MTUpLT5mYmNfbWFzayA9IDA7DQo+IA0KPiAtLQ0KPiAyLjM0LjENCg0K
