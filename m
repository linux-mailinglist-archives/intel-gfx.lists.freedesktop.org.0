Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED14679AB69
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 22:55:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 698DD10E1E3;
	Mon, 11 Sep 2023 20:55:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E01210E1E3
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 20:55:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694465727; x=1726001727;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=bAycU25dE/dBl0AYmBT95l/SzJ9oYUFjpguB2EyGCFw=;
 b=dX4GXEyC+TnOcMQ7OLZB+P/QrHxyVWRCqm9utdZl0kLrX1j9KZLi4+zi
 H/AxTUfzCUyKloCrv836hCYXb4W0nxMtjMSLtN3RY9ha/IeXyUzRA7664
 DfZKu3zNaIAaCOy4VLTMmNqF/yKN1BsnFYckzh0akNu2u+ai3JlHda2Zo
 jzoBQVXjzkI55lhp3w+GX2xQShlGKluUtAIzKDjLhvcaR/oNygwfCAkOK
 zDtjcBhxLxZ0vtt4p9cX1s0nylpaMPrUGr3ncOqRmbKBpi2n6cvr0UQw4
 Fm+O8dOsrEFlX65ntLS6TNRWU+MOfdsNe+UcGdEppSolEKZ/waxTJdjp4 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="409161788"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="409161788"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 13:55:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="720127174"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="720127174"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2023 13:55:26 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 13:55:26 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 13:55:25 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 11 Sep 2023 13:55:25 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 11 Sep 2023 13:55:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jmt/2LgswYsygRVKrxsdhwvhSyJLIoj9T2O4e+gCxUB/MO+0b21Hlz7aksshVJCVGO7qhx4SCaIIL8M3aUZAUGWnSDSoYJ2ZiRr/TUlNcinOX2Ec87dVm/KZEdGH2WCgrDf9nJkBX1XlOM7xZuFZdq6a76I9fC36ldeGZv1wlL4kNO9+MrW1m9Al4jMAEknGsDKjfyfy51X8pLJ6uk70zkyuh0/n3sUUw6+s3/srAWew7M9H1o+8kwBeekao5MUTk0uP0hVP0ePCr3yvvW/IbMvnN7t+YMng5YWiLh8v8WFUzH/01NWZB92ickz4QT5SqM7pumkzpT0XwoLuqgbSfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bAycU25dE/dBl0AYmBT95l/SzJ9oYUFjpguB2EyGCFw=;
 b=cdt3ambUlQZWSX6k/X2aXqGCQ8RKwVeMENI224vxDTYRIG+Hprr5f/m6vPPx0raNjsWYVJSVyX7p/KzqSQos1JH/nSyPZMJM2gmbj+k/bwFQ5egF0UYbmblw6LVHOygNWeK6aMw239n8lCiLa5dKJ8HpZumdojvMOKtlPr1iWsd0m/2hCjkx3OisYIUSwkUGBhuAYwCFtD1NYaIigmc1joHoQ0Uney9TaFa2rIjAPJyckJDlerpvW0bjt7UOuP4dl13vsPetk7iMqE50HsVCyQT9ujl1s+6jSKeqr5rhipx2l+YU2Dvkx55s8lTt7fHtl2BvieVjnFDOu1eBmWSeIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SJ0PR11MB5631.namprd11.prod.outlook.com (2603:10b6:a03:3ae::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.35; Mon, 11 Sep
 2023 20:55:23 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4%3]) with mapi id 15.20.6768.029; Mon, 11 Sep 2023
 20:55:23 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 09/19] drm/i915/dsb: Introduce
 intel_dsb_reg_write_masked()
Thread-Index: AQHZmKtOgWMweJuZXUa1AtiAKVHimbAWsvRA
Date: Mon, 11 Sep 2023 20:55:23 +0000
Message-ID: <DM4PR11MB6360347EDFF937038201A10AF4F2A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
 <20230606191504.18099-10-ville.syrjala@linux.intel.com>
In-Reply-To: <20230606191504.18099-10-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SJ0PR11MB5631:EE_
x-ms-office365-filtering-correlation-id: 718aac7e-3a67-472d-fabe-08dbb3096b38
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 48h8UuA6nUuNctJoTyLE+XxXvJzWhBM3dVbwYgyJ8T+RTXClsFM1u8piLXzqF7HpGb0S5bDJfTteaYegn0gW96gAb8ZoGqMxxiMCzR61sFd+6dYyUbeNTeXlqolMMAsXe8+XzigrfXwBYtkHbQdBqApV6eeDkodqiR08jCsDpzy3/8rwABU2Y6ILYmPcpqFvAQwIL9IyalA+Eo4K+YeKd5BZqiWA+U3uLAgUAuusVQGibGsbwJsutohF0tqpdsr5i4sjEtSeYNwABgY+XfcWK0RbRdw2AzlxQSsW+FQmkLPzh3DVNwQPaUlpyq0btwtDbGWGGs54UEmD297YAv8Dmrljem9F7+vyN406xnwJlKVKksPorrm7afF+HJlp48NjHX2s8yfCj2naK/6qhHVbcQMt+0tw8XLIBF/VIKyxL+xt112XsnTWGCx1SPILf2CzG9FWPybKPo6Gh2Aif3eulXzn01Int0vkwYR+xEgA+JmHDnr4L2ZMlBlRcU+nyVmhPlqIeX/8Riia5wzu0CYtYsk+7Peesm/sx49CkPdoKQ8w+ZX2qoO1Of4AG24UpY4Otk6mCR5AimrEH8WcmbBAGJkTF3TxEuTA+V54bbZstZVnPSjaxxhbzgYIVF3WNMXs
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(136003)(396003)(39860400002)(346002)(1800799009)(451199024)(186009)(5660300002)(52536014)(64756008)(66446008)(41300700001)(8676002)(8936002)(66946007)(66476007)(66556008)(316002)(110136005)(76116006)(122000001)(478600001)(71200400001)(53546011)(33656002)(6506007)(2906002)(26005)(86362001)(83380400001)(7696005)(55016003)(82960400001)(66574015)(38070700005)(38100700002)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?amRlYUtyTzZZYVMzK3RQVFB4NFU5ekwzU1JlU2prRldSK2lPams2VXc1dG45?=
 =?utf-8?B?QUVIYlRLWG15Z2EydDhhcDFZOVBDMmhrYnE4MjRnVitOa1BtcEFHMlEya0Zs?=
 =?utf-8?B?MnZFUk1rQmkwVC9BVkxTNnc5NTBGcnhrZVhwMy9YMkxmUzMwcUhBUnN5NEE3?=
 =?utf-8?B?d2NXSVNxdjJ4UDdYMU1hck9JVHhUTDA5Z3VqRGZnTk5CWHp6WjhwMmNSbXp6?=
 =?utf-8?B?MU9vNk9vV0ExNWhZRklqOUFxeUgwMDNwRC9YTEVwb3VtNjk2R2FJL0JzS1NY?=
 =?utf-8?B?clNlM1V1UkhmK1JaQXp0Slcwd3ZQaHFHdkxqUVBYZ2dIQlMzMktsOEFWU2VX?=
 =?utf-8?B?MlQyNDRzTkk1TVJxS1J0bWR5cnhLY0IyenFQVHlLZFhabzZCNGhKa2p6Q2RO?=
 =?utf-8?B?T0dSUWNGSFY3aWEwV1BCb2ZEcDIvcmpFMUI1UFVDcE5LeDB2NHVTZmlHWjVJ?=
 =?utf-8?B?a1FGUmRPcEVab09VYVlTTERyUHFXS09sNXJxY1A3Z1FTdXRaVm5TaHQvNVla?=
 =?utf-8?B?NkpkSWZlOTdFQ1JZTWJIMGpMWUlrQVppanhpK0dNVlJnQnBVWUtDYWJwZ2k5?=
 =?utf-8?B?NVlFckpCR0QyN3JPSm1OUXRrSUpsRWYxQVBtNzdrakI0RFdHK3lzaUkvenJU?=
 =?utf-8?B?QUtkcTNPa2lPTDhJajE3VnBHZnlabVdJWng5REpoYXh0aE1LNndmUWQ3bDg0?=
 =?utf-8?B?ajhpRVF1UTZ4QVNZRDA4VlF0bVhxR0FXczVGbk45WHpKRnhNSzE2bFB5U3JG?=
 =?utf-8?B?dEMyR0syR05ZajB2NVNNSnZnd1Jxek9VOTloaVB4eUErQ1VjcnNUdHFRMExN?=
 =?utf-8?B?NTBmM2czd1RCbVd6MXBvekhkaGk1S01Xd2YrNmxMbldsblNQQ2NUSm1YbVJo?=
 =?utf-8?B?am82R2dOdG9Jc3o5aERQK1c4RElQb043cWNaVmh6dGxuV21OUnh5VjRJdFA5?=
 =?utf-8?B?N25VcjNwMjdJREFZWDVhL2pRNElrVjRLQ3IyNndQRmU4dFpGRDIyZWhVc29M?=
 =?utf-8?B?bFIxbEZmRVZVWXNLeHF4K2M2dWJaME84ZU1ZMVg1VXI1c2lWZEI3MStzc000?=
 =?utf-8?B?aU9ZR0NhMU1lWVZYckpHamtvT05BejFQbzAzSG8xaTE3aGFTVWZaZ2krMlFi?=
 =?utf-8?B?RW56ZnBNa3FEY1JSbEJxVWwyQUVTMHFuOFNoVG9UNHBqbWRoTW1UZWp4YURY?=
 =?utf-8?B?R2dDRDJNUTgxZUM2U2twczZrWFJ1OGJ0UURzZXJnQmhHL0diTlhraUVhTnJQ?=
 =?utf-8?B?VWZjcVZoMm1CNFJtc3NDVE1rSEZEY1pqaVIzOFF4K05DZ0dtcXlUN2VTSmIx?=
 =?utf-8?B?b0NvcFl2RitsbkY0M0RoTlROKy9BZXRpZm8yK1R6YktQOTdONHczR1VrdTJ2?=
 =?utf-8?B?RGM2Ykpha2t5WTlUb0hWYWtJMWJBRnN5ZnI0SXJBUFYxaEZKV2JMbVpHaUc2?=
 =?utf-8?B?WWo0Y3pXQXIxQ0Zab0o0ajVkbkdHWnFhWkNCQ0VQeG9xTFEwZXN0Qm55U2ZW?=
 =?utf-8?B?MGxFSEgyM1JZMm84VmN0bk5GWkQrTnlQbGVvSHRPWTJ3QjFDd1p2QzZPQ0FQ?=
 =?utf-8?B?L1lSRnMyMHFnMkhtNi9hM3E5UnVtT3BuSFBLb0FKVW5hY0dpZG1tNnoxUGRH?=
 =?utf-8?B?aWxQVm54bVkyLzdOcE11bDRKNFBKdXFHUllMVzl0aDhiT1VpbHdSeVhmUEYw?=
 =?utf-8?B?d1pzNmNROFA3RXY4blhzOEliRlpQU2RNZDM1dGd5Ync2bk0rY3h0R2RCL0Rn?=
 =?utf-8?B?U3JGeUh3V2hPb2RQa3ROYlFnZ0h2VkFObnI5aVFReUVUTWUrTGxXcGFtR3JO?=
 =?utf-8?B?N3dlWEJGenJmRkpUYTQxd3lPdVNCUG93ck9rb1FBVDAxZ09kOG15RUsrL1Rm?=
 =?utf-8?B?UXl3WUljWmRRZzZFcFV2THdhQVJMUU9zV0VHdElWbFFCTmc0WXhqdVpSa0sr?=
 =?utf-8?B?M1gydmxKZ2hsVXlPK081VVY5TkV0SzJCMTJkWmdIZFU0RU44aGhYRXJhaHIy?=
 =?utf-8?B?VWpGQTlZek94dEtvMVBleWg5c04xb2RXYWhOVmtlQjJDejV2akdJcGlxajlZ?=
 =?utf-8?B?dUM4ajBBNGZMN21DVEtkWkQvN2NyYXMwUnhZeUVGSkNsUEhIOXhnMWhuZnZx?=
 =?utf-8?Q?qUy6+9oTx33x2OBMa/oa+dMcx?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 718aac7e-3a67-472d-fabe-08dbb3096b38
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2023 20:55:23.7906 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5EoG0+MV/0y1o8sMiiYDrWalV/NYGF8NH8gVNiaUVMLuG3FhiujxMfY2B+L3lTrmODFc/MzTPNGcebkqXoiBYA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5631
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 09/19] drm/i915/dsb: Introduce
 intel_dsb_reg_write_masked()
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSA3LCAyMDIzIDEyOjQ1IEFNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhd
IFtQQVRDSCB2MiAwOS8xOV0gZHJtL2k5MTUvZHNiOiBJbnRyb2R1Y2UNCj4gaW50ZWxfZHNiX3Jl
Z193cml0ZV9tYXNrZWQoKQ0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IEFkZCBhIGZ1bmN0aW9uIGZvciBlbWl0dGluZyBt
YXNrZWQgcmVnaXN0ZXIgd3JpdGVzLg0KPiANCj4gTm90ZSB0aGF0IHRoZSBtYXNrIGlzIGltcGxl
bWVudGVkIHRocm91Z2ggYnZ5dGUgZW5hYmxlcywgc28gY2FuIG9ubHkgbWFzayBvZmYNCg0KTml0
OiBUeXBvIGluIGJ5dGVzDQoNCldpdGggdGhpcyBmaXhlZCwgdGhpcyBpczoNClJldmlld2VkLWJ5
OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KDQo+IGFsaWduZWQgOGJpdCBz
ZXRzIG9mIGJpdHMuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHNiLmMgfCAxOCArKysrKysrKysrKysrKysrKysNCj4gZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaCB8ICAyICsrDQo+ICAyIGZpbGVzIGNoYW5n
ZWQsIDIwIGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kc2IuYw0KPiBpbmRleCA0ZWY3OTljMDg3YjQuLjZiZTM1M2ZkYzdmYyAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+IEBAIC0yMzQsNiAr
MjM0LDI0IEBAIHZvaWQgaW50ZWxfZHNiX3JlZ193cml0ZShzdHJ1Y3QgaW50ZWxfZHNiICpkc2Is
DQo+ICAJfQ0KPiAgfQ0KPiANCj4gK3N0YXRpYyB1MzIgaW50ZWxfZHNiX21hc2tfdG9fYnl0ZV9l
bih1MzIgbWFzaykgew0KPiArCXJldHVybiAoISEobWFzayAmIDB4ZmYwMDAwMDApIDw8IDMgfA0K
PiArCQkhIShtYXNrICYgMHgwMGZmMDAwMCkgPDwgMiB8DQo+ICsJCSEhKG1hc2sgJiAweDAwMDBm
ZjAwKSA8PCAxIHwNCj4gKwkJISEobWFzayAmIDB4MDAwMDAwZmYpIDw8IDApOw0KPiArfQ0KPiAr
DQo+ICsvKiBOb3RlOiBtYXNrIGltcGxlbWVudGVkIHZpYSBieXRlIGVuYWJsZXMhICovIHZvaWQN
Cj4gK2ludGVsX2RzYl9yZWdfd3JpdGVfbWFza2VkKHN0cnVjdCBpbnRlbF9kc2IgKmRzYiwNCj4g
KwkJCQlpOTE1X3JlZ190IHJlZywgdTMyIG1hc2ssIHUzMiB2YWwpDQo+ICt7DQo+ICsJaW50ZWxf
ZHNiX2VtaXQoZHNiLCB2YWwsDQo+ICsJCSAgICAgICAoRFNCX09QQ09ERV9NTUlPX1dSSVRFIDw8
IERTQl9PUENPREVfU0hJRlQpIHwNCj4gKwkJICAgICAgIChpbnRlbF9kc2JfbWFza190b19ieXRl
X2VuKG1hc2spIDw8DQo+IERTQl9CWVRFX0VOX1NISUZUKSB8DQo+ICsJCSAgICAgICBpOTE1X21t
aW9fcmVnX29mZnNldChyZWcpKTsNCj4gK30NCj4gKw0KPiAgdm9pZCBpbnRlbF9kc2Jfbm9vcChz
dHJ1Y3QgaW50ZWxfZHNiICpkc2IsIGludCBjb3VudCkgIHsNCj4gIAlpbnQgaTsNCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgNCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oDQo+IGluZGV4IDVhMDhiYzIxYmVk
YS4uOTgzYjBkNThhZDQ0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RzYi5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHNiLmgNCj4gQEAgLTE5LDYgKzE5LDggQEAgdm9pZCBpbnRlbF9kc2JfZmluaXNoKHN0cnVj
dCBpbnRlbF9kc2IgKmRzYik7ICB2b2lkDQo+IGludGVsX2RzYl9jbGVhbnVwKHN0cnVjdCBpbnRl
bF9kc2IgKmRzYik7ICB2b2lkIGludGVsX2RzYl9yZWdfd3JpdGUoc3RydWN0DQo+IGludGVsX2Rz
YiAqZHNiLA0KPiAgCQkJIGk5MTVfcmVnX3QgcmVnLCB1MzIgdmFsKTsNCj4gK3ZvaWQgaW50ZWxf
ZHNiX3JlZ193cml0ZV9tYXNrZWQoc3RydWN0IGludGVsX2RzYiAqZHNiLA0KPiArCQkJCWk5MTVf
cmVnX3QgcmVnLCB1MzIgbWFzaywgdTMyIHZhbCk7DQo+ICB2b2lkIGludGVsX2RzYl9ub29wKHN0
cnVjdCBpbnRlbF9kc2IgKmRzYiwgaW50IGNvdW50KTsgIHZvaWQNCj4gaW50ZWxfZHNiX2NvbW1p
dChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IsDQo+ICAJCSAgICAgIGJvb2wgd2FpdF9mb3JfdmJsYW5r
KTsNCj4gLS0NCj4gMi4zOS4zDQoNCg==
