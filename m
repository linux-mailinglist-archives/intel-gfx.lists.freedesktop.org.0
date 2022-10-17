Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41110601429
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 19:01:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2ADA910E6AE;
	Mon, 17 Oct 2022 17:01:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5598410EDB9
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Oct 2022 17:01:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666026100; x=1697562100;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=S5qW+KHm7NIGB6ze38e9IGTOqnO87V43/C/qTN/TSWs=;
 b=UmN6TJASUt3Ni3Muotkxq1wy0XGdJttsqvzP1PQSNY8GDgBMpRxIfQVa
 jzLL9C7bZCQca/RlRBxzQHq1ax7/BR2r+GQirc1CMjirvgD6rTtxv5paa
 1bcTmcIitsTtJmRIZ2yQ6A1Vj7CFDHrlmAQ1DZSX2JYvOgm1b07LbfNgU
 m+mSG+8YLSxi9kcOgGzgwVfKkehLaKUEHO2zJjoD94p/qCZBMJ9DghCAt
 +lC5EXr31XJqfnrukhGmgzJvmacTRWE8YGxq/RPEgX4DlZuwFLh+pwIyt
 3kT44p+flqNvX+zr4BM4/ik3sX4E9wrt2Y+di1cdk7ip2S2xXBkH4nukm g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="285580658"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="285580658"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 10:01:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="770833110"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="770833110"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 17 Oct 2022 10:01:22 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 17 Oct 2022 10:01:22 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 17 Oct 2022 10:01:22 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 17 Oct 2022 10:01:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TKX1Y+VRPvG5F2tfzGFtrI25SX7K3PrOknw1/sL9v43ZdcLTh88SGa5NaOMobAjd/A8Vl06Qztlrlmk0e3+Oganp+n+1Ql2EVSFR5mINziLJQGVy6dcCPCkgZoCWt6JBzWOVAHlCuKLpXOa3KC4k41VII8r+ezYeJsK5XxNottCqFQvo9H/0CDzWmqvnA8uQebSJ2GPPQwH8b5paeGM/bvY6gwQ5NBPIQ2+UmoMoiS/N8nJOXCNS3v+1qelucB6p4LHbDE7FuqcTEXKvvLIbpZ/+pMmpxveazdlERhsv0Zbh806WrjC/oSCUUn6u69WqkVF5qekR3cv7kQM7TolgEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S5qW+KHm7NIGB6ze38e9IGTOqnO87V43/C/qTN/TSWs=;
 b=Y/cgVOpbZRWQpQHUjrRC9dtA3wLceapF5iO2TZtBMDyCeu6HaYI9ta86UivjTZXx0NmLqZnwh11dwd/L9Llul5zklvQ8RS+DESQAvkx8Vl8DUnyBAU9zJB3cBV84AzR+wKGg/+yE6rU+Ri5sQ3AZUIVoWhvz7qd3xqc5MXmXXm00nhHAVLLs/NCaNTBXFZcbWlzzIfoJJCJJkU76OL8e3j4U2MXjGBCP1kdQYXB2JmQkWwBBfW6mt0isLe0cb3O7VKUgMlPtxC0G6sR+LdGxSoC30K2oXTIuBJX66SvjOeLU04cenykFhKpcp7WUkLCS0qD6QCjJJ/TdV6Y9sCdhRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 DS0PR11MB7383.namprd11.prod.outlook.com (2603:10b6:8:134::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5723.31; Mon, 17 Oct 2022 17:01:20 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd%7]) with mapi id 15.20.5723.033; Mon, 17 Oct 2022
 17:01:20 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 1/7] drm/i915/pxp: Make gt and pxp
 init/fini aware of PXP-owning-GT
Thread-Index: AQHY2T1PjHtLPCorvU2nC/2szV/3/a4M17uAgAYKiYA=
Date: Mon, 17 Oct 2022 17:01:20 +0000
Message-ID: <ca3929d15d31d18f5aa95b8612a7dc5e62932e08.camel@intel.com>
References: <20221006043834.606220-1-alan.previn.teres.alexis@intel.com>
 <20221006043834.606220-2-alan.previn.teres.alexis@intel.com>
 <a43a158e-8772-729d-2e2f-bcc8dba1a8d0@intel.com>
In-Reply-To: <a43a158e-8772-729d-2e2f-bcc8dba1a8d0@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|DS0PR11MB7383:EE_
x-ms-office365-filtering-correlation-id: eafde125-d7b8-45dd-5bc9-08dab06136ab
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rrUeR0aBH+Gf3wpgt4T2eGI8gXRPTIHZgROGivzcwAnP4Ab9XkxOo/P4gO4uyxE+5rdqrf4qLw2lknoxH2J4OaohJ3Blrg7f5KjBuGxmT/LBJjxnxU0qNEDjo7nsYqstkUFam/ZeZs5pAWjfQRNqmhmVerIGuyiBDqcUJNTHX2yUW+rdcJ3ZdYTOvXz64cfpS8rRG9M4LiWz84cosPl/PMhI6Ex6obe80smqV3ZqAbA7nBZXMtjQ/Pehjzs+PFXsx5goYnthNsSvFfKKnLtIZP6dfBprfqDFrhLNLKaLC56wG2eQQOJEQdg8vOgn2ABFaCeqEF9ohHYvTuxBOLrGdL4n2chSJsNGTWsxfhqBUtRC1RycioUK/3mzmRSztPFRKThmEdNfEfttCxD+FAaF4Q0aM2doeaA/3r9LbgynehcHtkIRMztKAdINWw6rh+HCQiaZHIX+LZpZvLBJ5rIOaXhbsNSI5PppdAgXltYbulNIsCnbCMh6DNaKKJPN+fyw6dFIk7D9JqSW3hyAyw4bU2YlF8X7J+0n+rb9rxxfZN/Ru9YM95lAs0Gx02i4OGaOSIMdp4vBUUBZfx/GRAeVn9BR3QL9Wgxm33pTfHcMBTBNC7zbGOWBPFEpiql7BqxXuc70YURJV6IIkg2KgGqHPk8GhOHm/vh4CDqKSWlpyybiTXLKeN5uCBjHWtmpiHrMhdCPfljTsRziUCyVTugaDR5W8V1J77Es/O7BXup/+uv5EgvOa4n3HC+cAUUzur22UC77DJC/iq4BxWHj3A1x7Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(136003)(346002)(39860400002)(396003)(376002)(451199015)(36756003)(86362001)(122000001)(5660300002)(2906002)(4001150100001)(82960400001)(38100700002)(186003)(2616005)(6486002)(71200400001)(38070700005)(26005)(6506007)(53546011)(316002)(8936002)(478600001)(6512007)(66476007)(66946007)(110136005)(66556008)(76116006)(66446008)(91956017)(41300700001)(8676002)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a3RYdmNkZy9QaU1za2lja1NIdGFURDlXbkxhaFZENzF6YTVMVUJqZHNzbU83?=
 =?utf-8?B?c2ZxUWxBTUlpNHJ5eDdUTWMvUEtxdE0yUnZneHVtc004UkIzYWtTcGtiOXRI?=
 =?utf-8?B?OUZDSXB4QUxWczdONWNGRWNCd3U0UTc3VENENGhKUDNHYUV6bVBjN2kycmx0?=
 =?utf-8?B?VnNZOFVVOTBWR2VONk4za2w3eXJ0NUxYT2hBN0xkMWlNcmc4dElHS2hxTGZk?=
 =?utf-8?B?Z24xRHExTVd1ek1jN05Yd0RkeGVZU0NTb1RYTWh6VUpVTVlvZTFNUzV1ZXZW?=
 =?utf-8?B?QUcrUS9ObEQrRi9NVkdvdG1SSG5tMG0vZ2M5QnRZVHI4RVZqc1pvblRiWCs5?=
 =?utf-8?B?OUNHVnFVb0tSbUF0a3JTais0WFJLemtybVZXeEZmRkRVV1dueUhWSFlvK1Nw?=
 =?utf-8?B?eG9zNG1zOHVVS2svenZoRC9JK0lhd1UzeGpNVWVSRVlWWGNGNFRYNWNFVTgr?=
 =?utf-8?B?b0pJOHFMOW1qcXJkaVZBQkJERVd1bXJmLzNaS1ZscnUwNDMwSW5LUzY1eERG?=
 =?utf-8?B?NmQyamZ2bjZmbTIwS3hFblNBUy9xbTk5Nk5BRENqZUJ2MmsyVDMwRTF2dVkw?=
 =?utf-8?B?UHJuU3d5bEtCbFpNdWJpbVZFU2NnV0xuQzZGcElGem1uY0c4cmIyejNTYVZ6?=
 =?utf-8?B?ZXRiUDB0YlFmY0ZEWGhQMUZsQ3U3am1XdnlFdnQyUEQyTHJUL2s1ZVZ3SU9U?=
 =?utf-8?B?M0lZY2J4VW93WnBrQ1J0Ykt6TFJnVHNuZS9PMStYMFp4QTk3NlltOGliMnhv?=
 =?utf-8?B?V3VZYzVzT3lleEY0SDY2WlRHUDdReW5XdVd2TFhPWG12MUViRWJ5R0FhdGNj?=
 =?utf-8?B?bHlZS0tETW5hbnpBSWQ2dGNxUHp2Ykg5MEtuL3cwODRGNVRLSEhvMEZPNzNX?=
 =?utf-8?B?bEVOLzJlOVhUZWtEcFpMNzFtRzBCeWREeXVzaW4wN2NMcm1BRGpoR3liVmJN?=
 =?utf-8?B?WHlGSDI0YmNuVmFFV0NvbEx6TmRUUDk1RXF4bEZSWW9VN1pSWTBPVzZxQmVl?=
 =?utf-8?B?emM2eWNDMW9XN1M2emZIMkpUTjRIY05zM0lDWXJWd3ZUalRiQWdPZC80b0Fi?=
 =?utf-8?B?RjUrZU9hSk9DSFBGYzhxUlFRblo3S0RDUk5XbTcvb1JqUVRibUhXSVFPaCtN?=
 =?utf-8?B?MDdweitvbjZ0K3JxL25heE9RRXQ0WFhTQ0pwYzQwdGtpaHNpMlBWUEp3VEVK?=
 =?utf-8?B?VHZReWdOMERFMGZOck9Dams2UHAzWU1Db0QrRzhEQ3RBcXNsSitrVFRPT05J?=
 =?utf-8?B?WUFCR1lwY1VGN2tOdzFQM3BDbGdTQnZJVVNGWnNtbFBvVmlGcGNwZTFNNEtH?=
 =?utf-8?B?TzJaNHZZeFd0R0YvbGxuVXFTKy90NklkdU5zcC93NjQwN3kzdkNIMmc1d0ho?=
 =?utf-8?B?Mi9YUjFYT3hwRDE1aHExTHVSamtuUVhDYW5va3lqaW9oSll5T2lucVVDWDBM?=
 =?utf-8?B?Y2FsTjIvNjl5cDZpYkd5eEdVUWFUQWlmVjN2Ynd5NFpJTUliVjEyT2RtQkJ1?=
 =?utf-8?B?Y1RCSTJmdUEwTEYvYXdmRTJzUUlOT09mckdQQVdKYjdSbGthMk5YZENUY09v?=
 =?utf-8?B?MHR3VlNWTUIvTDdHelAvaW1SZHRITmMzc2QwbkdtRkRvdzFPUVRHTStTdW1I?=
 =?utf-8?B?ajNCWnBtMlo3ZWw5TWZkcld5TTlVd05ZdTVNdHVVTEh2WTdhY2QzSzJJNUVm?=
 =?utf-8?B?SEQyaU1MUk5QeVptLzlKczViemdjZnhVVmlkek9Ba3FFWno0ekVKZU5pb2w2?=
 =?utf-8?B?bGNBSktDRjNlTjVZNUlvYW5FdFFlRG9IS1k2YXBRTThvYkVsL0NZNGxSTzEx?=
 =?utf-8?B?RDBVWVZ4a1hVaDUzQWlBOSsrWEpJQkdCT1RYaWZBdTBtRFVLSkdkdk5YZ2h0?=
 =?utf-8?B?MHhZZUFMcCtBR1J0UERGNEZHQ1NXK2p0T3E2Ym42NXp4dFVUeWc0ZnVPZGFN?=
 =?utf-8?B?NEkzU3hRN2x6di9BUEFEVjcveVRITjE0ZS9GcVo3QVNGVHlXVUU5dGxTU3Fi?=
 =?utf-8?B?R1VqcGV1SnFiY3J2aTFtMG91WDVteXZZcWxPNDk3MHNjYTZDUU9pNlYxaFlU?=
 =?utf-8?B?MW1aZkNZN2tlMVVkYmhZNUE2WVZsdmJ4dW50MzBoaDBKdVcyS2ZUb1lvY3hj?=
 =?utf-8?B?TTdwV2Vxb2F5ZmNOZ3JXTHNZWTV3T3Q2T1RvdGgrZkxrTFRFVUtZaEVXNzNF?=
 =?utf-8?Q?P/VKbfVhhJmq7vxlyTNxvow=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4F7F99DB8A77C14DA65F1900660D237F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eafde125-d7b8-45dd-5bc9-08dab06136ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2022 17:01:20.1706 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VvSbclbz1a/Vmn1ZjSEF0gcWwlGgg1XrhLKCp7k/UVk1kdYW5uJS4ooDnTjcKQgip2YFMIQno4y47/Bfw+grdDXKJmLUeqymjZtvmVnU9WyjW+9HikxPePEH2HlJN1vO
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7383
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/7] drm/i915/pxp: Make gt and pxp
 init/fini aware of PXP-owning-GT
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

DQoNCk9uIFRodSwgMjAyMi0xMC0xMyBhdCAxMzo0OCAtMDcwMCwgQ2VyYW9sbyBTcHVyaW8sIERh
bmllbGUgd3JvdGU6DQo+IA0KPiBPbiAxMC81LzIwMjIgOTozOCBQTSwgQWxhbiBQcmV2aW4gd3Jv
dGU6DQo+ID4gSW4gcHJlcGFyYXRpb24gZm9yIGZ1dHVyZSBNVEwtUFhQIGZlYXR1cmUgc3VwcG9y
dCwgUFhQIGNvbnRyb2wNCj4gPiBjb250ZXh0IHNob3VsZCBvbmx5IHZhbGlkIG9uIHRoZSBjb3Jy
ZWN0IGd0IHRpbGUuIERlcGVuZGluZyBvbiB0aGUNCj4gPiBkZXZpY2UtaW5mbyB0aGlzIG1hdCBu
b3QgbmVjZXNzYXJpbHkgYmUgdGhlIHJvb3QgR1QgdGlsZSBhbmQNCj4gPiBkZXBlbmRzIG9uIHdo
aWNoIHRpbGUgb3ducyB0aGUgVkVCT1ggYW5kIEtDUi4NCj4gPiANCkFsYW46W3NuaXBdDQo+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jDQo+ID4gaW5kZXggYjM2N2NmZmY0OGQ1Li5lNjFm
NmM1ZWQ0NDAgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
Z3QuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMNCj4gPiBA
QCAtODUwLDYgKzg1MCwxMCBAQCBpbnQgaW50ZWxfZ3RfcHJvYmVfYWxsKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1KQ0KPiA+ICAgCWd0LT5uYW1lID0gIlByaW1hcnkgR1QiOw0KPiA+ICAg
CWd0LT5pbmZvLmVuZ2luZV9tYXNrID0gUlVOVElNRV9JTkZPKGk5MTUpLT5wbGF0Zm9ybV9lbmdp
bmVfbWFzazsNCj4gPiAgIA0KPiA+ICsJLyogZGV2aWNlIGNvbmZpZyBkZXRlcm1pbmVzIHdoaWNo
IEdUIG93bnMgdGhlIGdsb2JhbCBweHAtdGVlIGNvbnRleHQgKi8NCj4gPiArCWlmIChWREJPWF9N
QVNLKGd0KSAmJiAhSU5URUxfSU5GTyhpOTE1KS0+aGFzX25vbnJvb3RfcHhwZ3QpDQo+ID4gKwkJ
Z3QtPnB4cHRlZV9pZmFjZV9vd25lciA9IHRydWU7DQo+ID4gKw0KPiANCj4gSSdtIG5vdCBjb252
aW5jZWQgdGhhdCB3ZSBuZWVkIGRlZGljYXRlZCBoYXNfbm9ucm9vdF9weHBndCBhbmQgDQo+IHB4
cHRlZV9pZmFjZV9vd25lciBmbGFncy4gTVRMIG1vdmVzIHRoZSBHU0MgaW5zaWRlIGEgR1QgYW5k
IHRoZSBvd25lciBvZiANCj4gUFhQIGlzIHRoZSBHVCB3aGVyZSB0aGUgR1NDIGVuZ2luZSByZXNp
ZGVzLiBTbyB3ZSBjb3VsZCBoYXZlIGEgY2hlY2tlciBsaWtlOg0KPiANCj4gYm9vbCBpbnRlbF9w
eHBfc3VwcG9ydGVkKHN0cnVjdCBpbnRlbF9ndCAqZ3QpDQo+IHsNCj4gIMKgwqDCoCDCoMKgwqAg
Lyogd2Ugb25seSBzdXBwb3J0IEhFQ0kgUFhQIGZyb20gdGhlIHJvb3QgR1QgKi8NCj4gIMKgwqDC
oCDCoMKgwqAgaWYgKEhBU19IRUNJX1BYUChndC0+aTkxNSkpDQo+ICDCoMKgwqAgwqDCoMKgIMKg
wqDCoCDCoMKgwqAgcmV0dXJuIGd0X2lzX3Jvb3QoZ3QpOw0KPiANCj4gIMKgwqDCoCDCoMKgwqAg
cmV0dXJuIEhBU19FTkdJTkUoZ3QsIEdTQyk7DQo+IH0NCj4gDQo+IEknbSBhd2FyZSB0aGF0IHRo
ZSBHU0MgZW5naW5lIGNvZGUgaXMgc3RpbGwgbm90IGF2YWlsYWJsZSwgYnV0IHdlIGNhbiANCj4g
c3BlY2lhbCBjYXNlIGZvciBNVEwgZm9yIG5vdyBhbmQgdGhlbiByZXBsYWNlIGl0IHdoZW4gdGhl
IEdTQyBjb2RlIGxhbmRzOg0KPiANCj4gYm9vbCBpbnRlbF9weHBfc3VwcG9ydGVkKHN0cnVjdCBp
bnRlbF9ndCAqZ3QpDQo+IHsNCj4gIMKgwqDCoCDCoMKgwqAgLyogd2Ugb25seSBzdXBwb3J0IEhF
Q0kgUFhQIGZyb20gdGhlIHJvb3QgR1QgKi8NCj4gIMKgwqDCoCDCoMKgwqAgaWYgKEhBU19IRUNJ
X1BYUChndC0+aTkxNSkpDQo+ICDCoMKgwqAgwqDCoMKgIMKgwqDCoCDCoMKgwqAgcmV0dXJuIGd0
X2lzX3Jvb3QoZ3QpOw0KPiANCj4gIMKgwqDCoCDCoMKgwqAgLyogVE9ETzogcmVwbGFjZSB3aXRo
IEdTQyBjaGVjayAqLw0KPiAgwqDCoMKgIMKgwqDCoCByZXR1cm4gSVNfTUVURU9STEFLRShndC0+
aTkxNSkgJiYgIWd0X2lzX3Jvb3QoZ3QpOw0KPiB9DQo+IA0KPiBUaGVuIHdlIGNhbiB1c2UgaW50
ZWxfcHhwX3N1cHBvcnRlZChndCkgaW5zdGVhZCBvZiANCj4gZ3QtPnB4cHRlZV9pZmFjZV9vd25l
ciBhbmQgd2UgY2FuIGRyb3AgaGFzX25vbnJvb3RfcHhwZ3QuIE1pZ2h0IGFsc28gYmUgDQo+IHdv
cnRoIG1lcmdpbmcgdGhpcyB3aXRoIEhBU19QWFAgZm9yIGEgdW5pZmllZCBjaGVjaywgYnV0IHRo
YXQgY2FuIGNvbWUgDQo+IGxhdGVyLg0KPiANCj4gRGFuaWVsZQ0KDQpBcyBwZXIgb2ZmbGluZSBj
b252ZXJzYXRpb25zLCB3ZSBrbm93IGFib3ZlIGNvbWJpbmF0aW9uIG1heSBub3Qgd29yayBmb3Ig
dGhlIERHMiBjYXNlLCBidXQgaSdsbCBnbyBhaGVhZCBhbmQgcmUtcmV2IHRoaXMNCmFmdGVyIGkg
bG9vayBmb3IgYW5vdGhlciB3YXkgdG8gYXZvaWQgY3JlYXRpbmcgYW5vdGhlciBkZXZpY2UgaW5m
byB2YXJpYWJsZS0gaSdsbCB0cnkgdG8gZ2V0IGEga2FybmF1Z2ggbWFwIGdvaW5nIHRvDQplbnN1
cmUgd2UgaGF2ZSBhIGdvb2QgY29tYmluYXRpb24gb2YgZXhpc3RpbmcgZGV2aWNlLWNvbmZpZyBp
bmZvIHRoYXQgYXJlIHJlbGlhYmxlIGZvciBhbGwgY3VycmVudCBhbmQgTVRMIHVzYWdlcyBlbHNl
DQp3ZSBtYXkgbmVlZCBhIG5ldyBkZXZpY2UtY29uZmlnIGFmdGVyIGFsbCAobWF5YmUgYSBiZXR0
ZXIgbmFtZWQgb25lIGlmIG5lZWRlZCkuDQo=
