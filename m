Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DEAE77C78C1
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 23:40:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DB7610E55F;
	Thu, 12 Oct 2023 21:40:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8314B10E55F
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 21:40:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697146827; x=1728682827;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=jZ0FrdBnR6PaQcpprqdBWEyyHpq+zPE8hu8Hc5SjB4Y=;
 b=SHgwvo82KUavfExOQRPzN5Q7lRE+oMPEI9ivw2oWuyf2/imajg6sl0KD
 et0mQODY94/3f83JKm5rQwYHgEg2CMX9bCizr8xShrLz2VqoBz3ImNfUs
 9U2afHTRnroe9eTmm8diO9MtYVcdt2i8Uu6DhDxtbh4707e4G3w87T+GO
 LU4ZokzKGK7RsItnv8321nyL6KY761EnyK4wASEslOoDT5dEd7YvQpJ+3
 YV+3QdNs9sYz7NN3Frite+pi7MZBt/gwaxTcOiid9Vg/iGJUVFjI1eV5m
 9gN/2kI71ocFb8hnd0/rP7twaMqeNI7xclfv6Un/g1KmQUmMIJgmi9G+e g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="384887269"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="384887269"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 14:40:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="754448504"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="754448504"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Oct 2023 14:40:26 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 12 Oct 2023 14:40:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 12 Oct 2023 14:40:26 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 12 Oct 2023 14:40:26 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 12 Oct 2023 14:40:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mdFZo03JASrzwIyOXaIMWpG7t218V7L1UhN7ilS5L4zQbNKjiYDOuyRC8Hj2V7hmYUbki59mM9wBCpda5yNSHManxbMkCTyAerFpk4IunByTLAZiroeOCTHtOKl2ltoJ1gshkkaMtWsUlRs58/aHwGdMV1QSG+FMpMtKw2J5HFoCyko2MSE4cH2nYN1+QgCZEcUvGn2r/BdmaeCH0iXoGd23DgUjXYTtB2rug3KlTvp7lfvACLot0Xj9pT+kAcHUcyFaGM+Bkh4rk5peKTKci8dysa7WWMPTCVM13vKyZ3eigQHmFyNSF7/CM8q+gB9H2nQb3g7LzByIusamgArDow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jZ0FrdBnR6PaQcpprqdBWEyyHpq+zPE8hu8Hc5SjB4Y=;
 b=hSRDyQVp9Asc6m4h4e78RTEQt9Mo1m3n39kAWFnlPr2Cv8pS0KgI/fcONuGwPFVWLakl45gW/P7jQM/0EE/oUYU5u2jp0ZirWUgrihnHX1h5+YFnvps+yr263oQdIm5QBRipsvEpgfdwhULxZwQbhLumc+F8F+jH7Sc/uz8ZGIKu8jQPWrhnGU2scC2deVmgjbSYwTjSOQEHsp/vIld6e89rHLO4Uy75tkv5G6+OupQSDquIOQyfOoRJYANIyKZ+0ghANvFf+CuOvpeDD3CY14IIiy0bgLW9nYx9kotEyAvn2b6m91srvze9ul/ZdZcJuFT6EX6v6JOGcaHWxyFDxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SJ1PR11MB6276.namprd11.prod.outlook.com (2603:10b6:a03:455::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6838.41; Thu, 12 Oct 2023 21:40:23 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4%3]) with mapi id 15.20.6863.032; Thu, 12 Oct 2023
 21:40:23 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/4] drm/i915/dsb: Correct DSB command buffer
 cache coherency settings
Thread-Index: AQHZ+rOpTeB/WwKZlE6mNTT32oqqMrBGsuVQ
Date: Thu, 12 Oct 2023 21:40:23 +0000
Message-ID: <DM4PR11MB63604202F27DECE62EA33E99F4D3A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20231009132204.15098-1-ville.syrjala@linux.intel.com>
 <20231009132204.15098-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20231009132204.15098-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SJ1PR11MB6276:EE_
x-ms-office365-filtering-correlation-id: 0d939489-477a-4888-2f41-08dbcb6bd70e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KpzX4i8Qn5c1+WGAKyVryLnzOcWUrJH8j1c5Xj6RJz77DygOBIf3TjE/G0+A6THsQYRteyNeZLajJMC0aE3UjYw9d/a78FMHNDJPC+BSOtZZqGcuI0jmziLYu8cYFvVBpJfjX3IjXEUEZrxer13VLq7XVTGtIv3MZH4mf3X4w4n4G8nrlY897HMFzpooYe9aWHky0edip6F1t2RnNDGZpvpRje0i2dinhhx6aoKYXjzCw3EukFH7B7E7z85+Li1/g7q/XB7Xo1gkxjZSqyf7z+E69d+x4OsgSqCRODelMlI2LLQ08QHFYp3prK+WiU/wL/fdoTK/KIgIElr0FvRkwdS64kDSrzZgrumcKF0wti8+lX5YsFwljCLxdNIVKOixbBBYrIFVzFGM9LA6t+uuWix1GFCRwLWGp6JWNoUD7SmOvPXQnI/PuTyUBbuncbORRdh2pRstVCS5Npuwzcr/BkoGJRRbM3HXpKLb7P4astPT6i3sumI8mftN2cR28a+Iq9RtSSSG+wuPyJGB35P0QuZx8Lu+emD41rj1ZyZawgk5YJn7bNeDdO0gqu6S8Cpr4U5PDwTHRcTw+caOfQl1JinnAwGyKRlFPANMJyqQaLHpu4lGj+LkPtHiubUjZRkv
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(396003)(39860400002)(376002)(136003)(230922051799003)(451199024)(64100799003)(1800799009)(186009)(55016003)(83380400001)(122000001)(86362001)(33656002)(38070700005)(82960400001)(2906002)(38100700002)(110136005)(41300700001)(6506007)(53546011)(7696005)(8936002)(8676002)(52536014)(71200400001)(5660300002)(478600001)(9686003)(66446008)(66946007)(64756008)(316002)(66556008)(66476007)(26005)(76116006)(66574015);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QkltaklLZmNqUTZWWkF5ZTJzYjRsMzZsVXg2VzJ4RHJSY2hIU3lPL1h6Mkta?=
 =?utf-8?B?MTgzV3Z0VUNZMFVuZDF4MEhDR3p2QThwTFJaekViWE5vYlFESjdkbWdzcHNx?=
 =?utf-8?B?Z2VmZEZGVS9LY1pIYmdKQ0V6eXkrZ3ZCbnN5cEVxaEUwdHZvOTY2K2ppS3Nz?=
 =?utf-8?B?WU9aM0JvcUxTY2FtcUs0b2FSNDV6STNVWG1RQ0dRNG5KUyt5R3lKQUdYSjZj?=
 =?utf-8?B?ZCtia0dkbHBxMXdqV0F4V0EwL011d3JWeE9GWDloNFF0WmQyOWw1Nm1Tbjcy?=
 =?utf-8?B?OHMybmpVcUtJeUIxOThyYXZENjV6VzBjN0NrQVpFaTlPTW00Y3hVUWIvNm5Q?=
 =?utf-8?B?bGhlczN3WTBNT2xTNXFsY1hWZXhpMkREaWhPZVdiL1pRVmxMYjhBczZwblY4?=
 =?utf-8?B?THFLd0x5dm03a0NnbkhWUHR2M0hvK2JhdUdEVm9SQzdMSGxBa1NSVFBNcXc3?=
 =?utf-8?B?WTBNREczYys4UVVENU95Qmp1WmxTY1NOdUd0NUxUQXp6Ty9jc3IrSWxaZVRR?=
 =?utf-8?B?NjZPa01lbnk3QzFCRHlDQWtnWUc3dG94TmxaMXN6Y1MzZzA4ME9lMk1jSE9r?=
 =?utf-8?B?bzZVSVNidGNvd3lkNnRFUkdTUEg5TXVubk5lSTBEdFllcmxWR0NhV2FMMm8v?=
 =?utf-8?B?V1VLVEFxNFQ2NDM4Nzg1Y1NmNTQzaDZkWENaejBSUG5DYUQ0OENRc2VpWWxz?=
 =?utf-8?B?V1NsTG4rVW9kOTUxaitJNzlsRXNnTkt3VG9wVEdHQkNMSy9mRVVKd2NZK0hP?=
 =?utf-8?B?aWpVeEdoQ3RNeUQwL1JubTBUQnVsSCs4Lzg5NjhzbEdxdy9vaWxneTNHRlBE?=
 =?utf-8?B?VzFFRFpqSlh4ZEp6WjcvMW1LZS9FMDRPc0xhMkZ2ZUlua2JjcnYzbVBONDRZ?=
 =?utf-8?B?NDlOdjJ4eTZpQlhFMHRZSkNHd0dFSEZCd2JNWDdUUVRYeUhjUk90VkZhSVdP?=
 =?utf-8?B?WVpXcWN6ZlFBTlAzcFFZNkpXWDFBRG1OTzk3dXc2NUdDZGp6ZGhUVHpKZ0JF?=
 =?utf-8?B?aEJLbjNNYkUvL1FJVUorWWtWelh5M0I5SmN2ZEpPRm1zZ0tEcGZvemt6dFpP?=
 =?utf-8?B?RGh1YkFoOFIycTUrMmNFREFtYUdBcGcvKzk4a3dlMldWWndrNnRJREQxWUpZ?=
 =?utf-8?B?UWhISDFnVkVSd1UzK2YrUGhSKy9TbUdmZm9WTSsyQnlIeGJobDdHeTlYTWZo?=
 =?utf-8?B?NStVV0RkRHU0Y0h5SnpuL0JxTk44VkNyQlRBMkhVZXVGaFRxVjhVcEczbVQz?=
 =?utf-8?B?clViSXZpR1RQVWxGU09CTVNPUmtZb1hLK1dlY3NKQ0FET0t3dXY0Z2I1bEQr?=
 =?utf-8?B?Z2tCa3VZanhZdDkvL1hYei9VVXU5bm56YVdkUG02RDBVUHBCS0VDdjc4K1lo?=
 =?utf-8?B?bmVENXBFNUd3TlJGdEZTSXZKOVRlenRGR1lLOEtNbWlHaE1yZXRiRjNwRUM4?=
 =?utf-8?B?d3RKUUZGUG0rVkp1bmVWQnNmcGFMSDVpeDFiRTlYRzhhcGhwQ2VQWm5kSlR1?=
 =?utf-8?B?OGY1T29FUVIzYjRkUU1TV0ZNRDVlaXNXZElvL3RHZ29TMWdDakN0MUVRb04w?=
 =?utf-8?B?bnplT3h4dDNiS3hjbkhDZmdMaWdBUmUwaFlxQVRndUprN3FoTDUxKzhSU3R5?=
 =?utf-8?B?VVJVaDVoY0VFRjZlUGNmczZPSEluQm4vWThTSFQ4OEpCM3J5c25lQndlNDlr?=
 =?utf-8?B?cCtNSi9GMm9uVlllYmxCU1Fad0FwTGxWUmxPUkszMkYwQjhWMUJzSitRN0VM?=
 =?utf-8?B?YnU4THQySk82c2p5R2tPMVc0YXI0dzZWdFlqSytpaStoT2VISHo0TWtLZnUr?=
 =?utf-8?B?ZW00RUJ4ZnNQeS80NGpzTzA3K2hNbXBQMHFFRnZJVHJWejQ2RG1lL2lRQW1M?=
 =?utf-8?B?WXF4a3dtcDBaZE1YMCs2SVJxZXNOVXhONFRZV3NZaDZPLzdDbTR0RE1ia0NM?=
 =?utf-8?B?N0FWVHZYbEVDZEQ4cHRwRjNnY3hXWTZIaWhiOVQ5SFl5RGNGcTNsa1BGdi8y?=
 =?utf-8?B?NnI3bFplSFVYcEJwN2NjcXFPclJOL1FycGNUSGJobEhJaXJ3ZHJQeEpmSVNz?=
 =?utf-8?B?aHZEQlJ1dVVUVEdkMEtzU2N3ZXVkZmpqMEFJdlFOVW43b0ZBMit2U0IyUVVv?=
 =?utf-8?Q?d5hxHQZhdASBtjEwdDIabhA7x?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d939489-477a-4888-2f41-08dbcb6bd70e
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2023 21:40:23.2963 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RciaA6m4CLHTJvs3EGRTpsTViF4hVou1wMiQGCIFRPJKefauL+Ici86BslFYvjd+MZbQ+yGIaQO8RpOtg6Ngrw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6276
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/dsb: Correct DSB command
 buffer cache coherency settings
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
PiBTeXJqYWxhDQo+IFNlbnQ6IE1vbmRheSwgT2N0b2JlciA5LCAyMDIzIDY6NTIgUE0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdmeF0g
W1BBVENIIDIvNF0gZHJtL2k5MTUvZHNiOiBDb3JyZWN0IERTQiBjb21tYW5kIGJ1ZmZlcg0KPiBj
YWNoZSBjb2hlcmVuY3kgc2V0dGluZ3MNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBUaGUgZGlzcGxheSBlbmdpbmUgZG9l
cyBub3Qgc25vb3AgdGhlIGNhY2hlcyBzbyBzaG91a2QgdG8gbWFyayB0aGUgRFNCDQoNCk5pdDog
VHlwbyBoZXJlDQoNCkkgYW0gbm90IHN1cmUgb24gdGhlIGNhY2hlIGJlaGF2aW91ciBzbyBzb21l
b25lIGZyb20gY29yZSBjYW4gYWxzbyBhY2suDQpUbyBtZSAsIGxvb2tzIGxvZ2ljYWxseSBjb3Jy
ZWN0Lg0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQoN
Cj4gY29tbWFuZCBidWZmZXIgYXMgSTkxNV9DQUNIRV9OT05FLg0KPiBpOTE1X2dlbV9vYmplY3Rf
Y3JlYXRlX2ludGVybmFsKCkgYWx3YXlzIGdpdmVzIHVzIEk5MTVfQ0FDSEVfTExDIG9uIExMQw0K
PiBwbGF0Zm9ybXMuIEFuZCB0byBtYWtlIHRoaW5ncyAxMDAlIGNvcnJlY3Qgd2Ugc2hvdWxkIGFs
c28gY2xmbHVzaCBhdCB0aGUgZW5kLCBpZg0KPiBuZWNlc3NhcnkuDQo+IA0KPiBOb3RlIHRoYXQg
Y3VycmVudGx5IHRoaXMgaXMgYSBub24taXNzdWUgYXMgd2UgYWx3YXlzIHdyaXRlIHRoZSBjb21t
YW5kIGJ1ZmZlcg0KPiB0aHJvdWdoIGEgV0MgbWFwcGluZywgc28gYSBjYWNoZSBmbHVzaCBpcyBu
b3QgYWN0dWFsbHkgbmVlZGVkLiBCdXQgd2UgbWlnaHQNCj4gYWN0dWFsbHkgd2FudCB0byBjb25z
aWRlciBhIFdCIG1hcHBpbmcgc2luY2Ugd2UgYWxzbyBlbmQgdXAgcmVhZGluZyBmcm9tIHRoZQ0K
PiBjb21tYW5kIGJ1ZmZlciAoaW4gdGhlIGluZGV4ZWQgcmVnIHdyaXRlIGhhbmRsaW5nKS4gRWl0
aGVyIHRoYXQgb3Igd2Ugc2hvdWxkIGRvDQo+IHNvbWV0aGluZyBlbHNlIHRvIGF2b2lkIHRob3Nl
IHJlYWRzIChtaWdodCBhY3R1YWxseSBiZSBldmVuIG1vcmUgc2Vuc2libGUgb24NCj4gREdGWCBz
aW5jZSB3ZSBlbmQgdXAgcmVhZGluZyBvdmVyIFBDSWUpLiBCdXQgd2Ugc2hvdWxkIG1lYXN1cmUg
dGhlIG92ZXJoZWFkDQo+IGZpcnN0Li4uDQo+IA0KPiBBbnl3YXlzLCBubyByZWFsIGhhcm0gaW4g
YWRkaW5nIHRoZSBiZWx0cyBhbmQgc3VzcGVuZGVycyBoZXJlIHNvIHRoYXQgdGhlIGNvZGUNCj4g
d2lsbCB3b3JrIGNvcnJlY3RseSByZWdhcmRsZXNzIG9mIGhvdyB3ZSBtYXAgdGhlIGJ1ZmZlci4g
SWYgd2UgZG8gZ2V0IGEgV0MNCj4gbWFwcGluZyAoYXMgd2UgcmVxdWVzdCkNCj4gaTkxNV9nZW1f
b2JqZWN0X2ZsdXNoX21hcCgpIHdpbGwgYmUgYSBub3AuIFdlbGwsIGFwYXJ0IGZvcm0gYSB3bWIo
KSB3aGljaCBtYXkNCj4ganVzdCBmbHVzaCB0aGUgV0MgYnVmZmVyIGEgYml0IGVhcmxpZXIgdGhh
biB3b3VsZCBvdGhlcndpc2UgaGFwcGVuIChhdCB0aGUgbGF0ZXN0DQo+IHRoZSBtbWlvIGFjY2Vz
c2VzIHdvdWxkIHRyaWdnZXIgdGhlIFdDIGZsdXNoKS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYyB8IDE1ICsrKysrKysrKysr
LS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0p
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
c2IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gaW5k
ZXggNzQxMGJhMzEyNmY5Li43OGI2ZmUyNGRjZDggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiBAQCAtMzE2LDYgKzMxNiw4IEBAIHZvaWQgaW50ZWxf
ZHNiX2ZpbmlzaChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpDQo+ICAJCQkJICAgRFNCX0ZPUkNFX0RF
V0FLRSwgMCk7DQo+IA0KPiAgCWludGVsX2RzYl9hbGlnbl90YWlsKGRzYik7DQo+ICsNCj4gKwlp
OTE1X2dlbV9vYmplY3RfZmx1c2hfbWFwKGRzYi0+dm1hLT5vYmopOw0KPiAgfQ0KPiANCj4gIHN0
YXRpYyBpbnQgaW50ZWxfZHNiX2Rld2FrZV9zY2FubGluZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gQEAgLTQ2MiwxMyArNDY0LDE4IEBAIHN0cnVjdCBpbnRl
bF9kc2IgKmludGVsX2RzYl9wcmVwYXJlKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlLA0KPiAgCS8qIH4xIHF3b3JkIHBlciBpbnN0cnVjdGlvbiwgZnVsbCBjYWNo
ZWxpbmVzICovDQo+ICAJc2l6ZSA9IEFMSUdOKG1heF9jbWRzICogOCwgQ0FDSEVMSU5FX0JZVEVT
KTsNCj4gDQo+IC0JaWYgKEhBU19MTUVNKGk5MTUpKQ0KPiArCWlmIChIQVNfTE1FTShpOTE1KSkg
ew0KPiAgCQlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX2xtZW0oaTkxNSwgUEFHRV9BTElH
TihzaXplKSwNCj4gDQo+IEk5MTVfQk9fQUxMT0NfQ09OVElHVU9VUyk7DQo+IC0JZWxzZQ0KPiAr
CQlpZiAoSVNfRVJSKG9iaikpDQo+ICsJCQlnb3RvIG91dF9wdXRfcnBtOw0KPiArCX0gZWxzZSB7
DQo+ICAJCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfaW50ZXJuYWwoaTkxNSwgUEFHRV9B
TElHTihzaXplKSk7DQo+IC0JaWYgKElTX0VSUihvYmopKQ0KPiAtCQlnb3RvIG91dF9wdXRfcnBt
Ow0KPiArCQlpZiAoSVNfRVJSKG9iaikpDQo+ICsJCQlnb3RvIG91dF9wdXRfcnBtOw0KPiArDQo+
ICsJCWk5MTVfZ2VtX29iamVjdF9zZXRfY2FjaGVfY29oZXJlbmN5KG9iaiwNCj4gSTkxNV9DQUNI
RV9OT05FKTsNCj4gKwl9DQo+IA0KPiAgCXZtYSA9IGk5MTVfZ2VtX29iamVjdF9nZ3R0X3Bpbihv
YmosIE5VTEwsIDAsIDAsIDApOw0KPiAgCWlmIChJU19FUlIodm1hKSkgew0KPiAtLQ0KPiAyLjQx
LjANCg0K
