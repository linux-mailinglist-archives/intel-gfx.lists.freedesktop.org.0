Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C661A6DC9C6
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Apr 2023 19:10:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A76489870;
	Mon, 10 Apr 2023 17:10:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E080E89870;
 Mon, 10 Apr 2023 17:10:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681146611; x=1712682611;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Dnq55URnHtp+VXy/kFl2hZGdkhTBq9SHIeNtolpmPEA=;
 b=iDgr5DIvQSYngx7HniuLSLCoHYFxA+dMAnXMfeNPq+H19V1aWYBy5qsN
 uii4ho0IUk83RQaov4TM6+qVArBH2Z9vonqr94xgdrlCmAmw1ie9SeGIf
 BUcpA1eCjn555jKO/B4HGvM1BndfiWER90twUz+25EjdNcODE5l0OmO+P
 lcg7bWaHhtTs790n0+Avw03E0EpykzeHtGPMigJ84s5Dw9yx8FrvxuE9O
 5JV/bFCV6YxVankvfoaJtpltd3QmV0109sMIMdqzCvck2/xVO1IZXdPr4
 R7tNzHNscAIYd+tFRTct4Gu0KQVw08t9UzmqkCdrH59q+UUVIqwfJZEmD g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="323041505"
X-IronPort-AV: E=Sophos;i="5.98,333,1673942400"; d="scan'208";a="323041505"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2023 10:10:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="757517269"
X-IronPort-AV: E=Sophos;i="5.98,333,1673942400"; d="scan'208";a="757517269"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 10 Apr 2023 10:10:05 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 10 Apr 2023 10:10:04 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 10 Apr 2023 10:10:04 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 10 Apr 2023 10:10:04 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 10 Apr 2023 10:10:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Da84OyBvWC3X3I8j1WJDdOrxOESrwv5eYD6a4Iw3/4yZHZK9fvlbhjbbaT30lyTkFWLpyzFQZzN1W0NIYpGCqj4jYQXH0zjB+IFdotae9Fx5rDzgNR1cTkwTgTHTlZrcamZyKy2oEWEd1489IN3r2KAwVobIhtt7IuKrUylbdortjwOldk0HnR9cRXRy1TkYxRXwXnGYcUbdGdc89D2AkGCvn9z+5872Sg1kCIFER9qu4zgYBTWjhByFTLzOCW8zHH+UWRJxQRieAGwhkZqEJn0tysGABZexjG6UkGnByY7xb21zJ4W2/GCz4omcUpFBi6UX+jMbonzpgPt7KGpcrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dnq55URnHtp+VXy/kFl2hZGdkhTBq9SHIeNtolpmPEA=;
 b=HyJCDQbt06XjBS5niMZLhUkO9gW7d8OakGBRpch0rAM+rLC3tA3LuHxo1dm8Azy5nvys6T3j7RMiOOv1QS33ce/ynWpR4FbUUXXWyxsifqZeBNa2VMmJvRvgQmPZ3sWV0XCRgeHm7dF5zQwzjbikqpkIAgNq8SjKAbdpB1ZnYzkWfNfWl4Hi1W1xMa3M5fk0v0Kr84N7PokSxfBuQeZRZE40N9AiWiswztjOXX16mjPBPb0YyVhLOCBdaN+KLzadLZ680nNY9R3tKV/aD882U5Aab4hRIF+4/J2wOnVnxGJvgblvTI/ORvBItQG+1clpL3V5D/eauU7J/4UD1WpxNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB8179.namprd11.prod.outlook.com (2603:10b6:8:18e::22)
 by SA2PR11MB4857.namprd11.prod.outlook.com (2603:10b6:806:fa::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.38; Mon, 10 Apr
 2023 17:10:02 +0000
Received: from DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::3fa1:b97c:a5bb:651]) by DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::3fa1:b97c:a5bb:651%3]) with mapi id 15.20.6277.038; Mon, 10 Apr 2023
 17:10:02 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [Intel-xe] [PATCH v2 rebased 3/6] drm/i915: Only initialize dlk
 phy lock in display 12 and newer
Thread-Index: AQHZaJSIPNQtZPdzOEqMLf6v8QmOMq8ks3IAgAAZ8wA=
Date: Mon, 10 Apr 2023 17:10:01 +0000
Message-ID: <f75f06a5fda030b3e77a8c6a8ef81436b0a34606.camel@intel.com>
References: <20230406143133.29474-1-jose.souza@intel.com>
 <20230406143133.29474-3-jose.souza@intel.com> <ZDQtIsxj2dhD+nPU@intel.com>
In-Reply-To: <ZDQtIsxj2dhD+nPU@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB8179:EE_|SA2PR11MB4857:EE_
x-ms-office365-filtering-correlation-id: 1139391f-1605-4c5e-154c-08db39e66bfd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EhS0BZosGfqEdGGsx+BH6+Vzh6rpOcVGoUqXogs0DsXaEawI8+kPR5I/rwoo53cKclqCDonfOnNNOYF86Rmv0ebpJ/BvmjOUSulrj8JSJ0ijiPv+bWjQXdyIf9/8hQYDL+MAshRktVEmmNOnIrlpG/oELRiKR8jdbLLpR4BxwFcbspymBP6ceu2zyVtkwxwUIxEKqizhMM3vIpfWFepsu2qCX94fPlmtd1x3KXoa/nn4+0kS6L2850ScXPJy5x3OPJl8v93itVKEIa7Cp3DYRb6b5ouOtrq8sRR1oNC5zTkwb2tbZUpoyHoASscvsqVE3Kfe3RMaptx+o5l39+rnBpAiZfxk7ecuylKC96YxTzrbL0prYMzvi7hjCpfxGyrfzfs3FB0qakVZ1+u+C+tJmr6bYxL183QNn/rNcC4Blamq1i8UXYfGuNxuodzn3n/MPyQVkKWWYjdVD/CHIFQgafVfXTdvEySKatFx11NA4FvAxKTRnEo283CvsxTORgVarj7s14YyWiT58V9LryOWwv+e9B58phYjn1yNyQ/RKvlg/p8yI6mn/3uvIXLi1cmMrT3MJRFI6ncgGXrBGevZ8UGJxwfG4czPqAEsQQ8fzB2JimT/SoZ+9bDVBZuyd9Cj
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB8179.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(366004)(346002)(396003)(376002)(451199021)(71200400001)(478600001)(86362001)(83380400001)(82960400001)(36756003)(38070700005)(122000001)(38100700002)(2616005)(450100002)(6486002)(91956017)(2906002)(54906003)(6636002)(37006003)(316002)(186003)(6512007)(6506007)(26005)(5660300002)(41300700001)(64756008)(8936002)(6862004)(66446008)(66476007)(8676002)(66556008)(76116006)(66946007)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cEpkdzF6VUM4RHJBZGZyekUwL1QvUUF6ckY2bWlvb2Z2MThJYWpQWUNhcmQ4?=
 =?utf-8?B?dHgwaER1V1d5aU5yaStocDdoaGJuYWF3Q1NXWDMvU2w4Y0cxSXBjUHBla0hn?=
 =?utf-8?B?eUgxaHhEbnFIQTRNUjVTRCtkcjhmT2IxMFNiMUFvRUduejRpZU9SblRMeUZN?=
 =?utf-8?B?SlJVWmIwK0ZacVppZ2cyZ2FFazRPdkRJOUx3YzRNM2crazZnbXF5d09FZjlq?=
 =?utf-8?B?d3VwK0tXeVl2c2dOK2l0cnRHN1ovb0lmRTJrK01rRTNlOVQ0bUlsMlFlcllU?=
 =?utf-8?B?eXgrY09MbUpvMGlsSzBQNVFaQ1ZQQmdoN3J3SUdrZ3Q2aWZzSFhkSThVU0hp?=
 =?utf-8?B?Z0NNVFZkWmRlVVRVaDdvMkM2UjBpTFVnWGpZa3l4VFdqeW41VGZXR0MySzcw?=
 =?utf-8?B?NENGVUhVMUdVRXk1ZWJmc0oxMjNZK1JvTWdRNjJqa00rU0x5RGFrVTBmcEFD?=
 =?utf-8?B?VW8yZVUyTTdxbkczUHJRT28wWUpSRndPM1IwMnJaWWdTa29McXhobEVDblFJ?=
 =?utf-8?B?dVpGeHA0L1EwNTZlUG5kdjM5R1pNWkswRXJ0VXRONUIvWnRQa1ZKcXo0aUlL?=
 =?utf-8?B?VDJ1bGkrSEx0SUFUZkdoU2lPZXNIUzlJWSt2WFlqZmlxRnVUSmRDYW1tK0Ns?=
 =?utf-8?B?RmxXc0hleVhFMU5VNmxTQUZyUTlzSm02bjdEUEtncCtQeUFRNFBlUFdFYkxC?=
 =?utf-8?B?TGtkQXhVVHc0WGk0TUwvMDNjcFZUU3B5b1czRU51bmV3ZlNBNGIyMTBxRm0z?=
 =?utf-8?B?dis0MW9NZ1ZjWUlhSFlqRkhHTVpXYnphem55YXBMbGdDSW0xTmV0L1MyaDhH?=
 =?utf-8?B?NDFsSERIcjUyeXNNRFoxdU9NN1pXMUZ4ay9SNmFnbWlYV2EvWEVxZGlkYXpB?=
 =?utf-8?B?Y2VpaFNJcHBGOWhldmpYQ3ZWTlF1ZzZ2dFNpNERQK25KZFZIUXVyK09yaXBk?=
 =?utf-8?B?bnlLUlpaNHc1bUxBYlJtSkt2N3dZVlVVc3NURGUyRFdRUVlNMG5CWjdGeGNN?=
 =?utf-8?B?dEVwYWNYeldXWnFGOXBHTm1jK1p5eWtmeXZqUXp1cGh4bWliWXI2aWFPd2FW?=
 =?utf-8?B?N29uT2lsKzNQZTlYeXBkZVNKTjR3Mng1aENmVnFmcEdiaWZmN0puN3RwVmZu?=
 =?utf-8?B?aFFsdC9GQ1lUTHppRk5mVjM3blREZnc3dmVzdjc3eG1qcHhuN01tWnpUNG5q?=
 =?utf-8?B?Rm54OXlmWWZDckJiSWtzT05DcTRTNTc5NjF0dzJMdHkxUzhCOUkvMzdtOE1Z?=
 =?utf-8?B?UnRsOGgvVjFNdGx0QnEyUkM1NEZPNDR5Um1lK2haQVdBNkVDeDVwdUFQQUxX?=
 =?utf-8?B?SC9RZUxUMCtPOXNDdjNrcnAvWUdTekpQNkpKUHFPQ2YwZHlNS2p2c25idC9Y?=
 =?utf-8?B?c2tCV0JFdm9CN3N4Sm1IREtwallJbFhSbzBsV1UvVldNaUM5VTYzT2lYOUU4?=
 =?utf-8?B?MEZKMEpKaDM4UW1VY3g1QVJOanZ2Zm9FcHlCYkVzK3ZFdWJEUG9UM1JJQkpl?=
 =?utf-8?B?aC9uUHgvZ3RYTk9nZTNHRWpENzF2eHZJM0hvL3NQVTk1L3NXa09ZUk8rNVJt?=
 =?utf-8?B?Y0pJQ2VZd1gvN2RRSWpIMytJQzRQQjJ0Y1hsUDIycWxabkV1eDI1cXBMQ0ht?=
 =?utf-8?B?UG4zYXJOMHF2NzlWVXRPWE4zU1dLUEZ5a0ZtVG1SN21tYkRjR01UZ2JmVm5W?=
 =?utf-8?B?eFBNam9nbUk2K0ZGMTdDSitxL1FwTUR5Unk5c0JoS1NKZGoyU1gyNy96NWdS?=
 =?utf-8?B?NGhRRDhaL1h6ZWhzUmFDallRTC9FU0V6Vm9ndXFQaStPdVRuTjJ2NVBtdG1V?=
 =?utf-8?B?RDhHL0hHb3dyazA3YmxTSVhKVnBGTVNxTFdmTEJUMDhIWVcrWW1CYkFaQ3RW?=
 =?utf-8?B?di9mZGpoeE1sdG9OdzRCZDhQK3Nvd2ZNOENhOW9hdEJvbm5mcnBqS3k4WEdE?=
 =?utf-8?B?TmMvemdINjAzWFgwWTJCZ2Nkd0lXNmdMMjRKYlAyL1VDR3ZQNzMwcERMNFAx?=
 =?utf-8?B?akZuVnNoeExXRmhsZWgyQmo5bU90TUVaRlFRY3ZLK0dKWnlrY3RTeHdYcUdN?=
 =?utf-8?B?eTZUcG5oajd0Ri9WcndnbDJtYWRQSDVTeU0vRkR5SmdMUXNtb1NOZHo3MXl4?=
 =?utf-8?Q?TkJldN7sqwLoOme0VoPjZanT7?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <77D4D20D113B994A9E45872A3B2A015B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB8179.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1139391f-1605-4c5e-154c-08db39e66bfd
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2023 17:10:01.9533 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GcK0kYdnCs+b1v/y9idkK+qoNWe1zWiKKshjAknLRDYOapaYYgzwZuF2DVtieNavDagJRBpXPqVcBFwW2puxDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4857
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v2 rebased 3/6] drm/i915: Only
 initialize dlk phy lock in display 12 and newer
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIzLTA0LTEwIGF0IDExOjM3IC0wNDAwLCBSb2RyaWdvIFZpdmkgd3JvdGU6DQo+
IE9uIFRodSwgQXByIDA2LCAyMDIzIGF0IDA3OjMxOjMwQU0gLTA3MDAsIEpvc8OpIFJvYmVydG8g
ZGUgU291emEgd3JvdGU6DQo+ID4gVGhpcyBzcGluIGxvY2sgd2lsbCBub3QgYmUgdXNlZCBpbiBv
bGRlciBkaXNwbGF5IHZlcnNpb25zLCBzbyBubyBuZWVkDQo+ID4gdG8gaW5pdGlhbGl6ZSBpdC4N
Cj4gDQo+IFNob3VsZCB3ZSBhZGQgc29tZSB3YXJuX29uKGRpc3BfdmVyIDwgMTIpIG9uIHRoZSBk
a2wgcGh5IGZ1bmN0aW9ucz8NCg0KSWYgY2FsbGVkIGluIHBsYXRmb3JtcyB3aXRoIGRpc3BsYXkg
dmVyc2lvbiBvbGRlciB0aGFuIDEyIHdlIHdpbGwgZ2V0IHdhcm5pbmdzIGFib3V0IHNwaW5rIGxv
Y2sgZnVuY3Rpb25zIGJlaW5nIGNhbGxlZCBpbiBhIG5vbiBpbml0aWFsaXplZCBzcGlubG9ja190
DQphbnl3YXlzLg0KDQo+IA0KPiBBbnl3YXk6DQo+IA0KPiBSZXZpZXdlZC1ieTogUm9kcmlnbyBW
aXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPg0KPiANCj4gDQo+ID4gDQo+ID4gQ2M6IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2Jl
cnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ka2xfcGh5LmMgfCAzICsrLQ0KPiA+ICAxIGZp
bGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4gDQo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGtsX3BoeS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ka2xfcGh5LmMNCj4gPiBpbmRleCA1
YmNlN2I1YjI3YmM3Li4xYzVkNDEwYjc0ZTVkIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGtsX3BoeS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ka2xfcGh5LmMNCj4gPiBAQCAtMTA4LDUgKzEwOCw2IEBA
IGludGVsX2RrbF9waHlfcG9zdGluZ19yZWFkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
LCBzdHJ1Y3QgaW50ZWxfZGtsX3BoeV9yDQo+ID4gIHZvaWQNCj4gPiAgaW50ZWxfZGtsX3BoeV9p
bml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiA+ICB7DQo+ID4gLQlzcGluX2xv
Y2tfaW5pdCgmaTkxNS0+ZGlzcGxheS5ka2wucGh5X2xvY2spOw0KPiA+ICsJaWYgKERJU1BMQVlf
VkVSKGk5MTUpID49IDEyKQ0KPiA+ICsJCXNwaW5fbG9ja19pbml0KCZpOTE1LT5kaXNwbGF5LmRr
bC5waHlfbG9jayk7DQo+ID4gIH0NCj4gPiAtLSANCj4gPiAyLjQwLjANCj4gPiANCg0K
