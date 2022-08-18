Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E960559810E
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Aug 2022 11:47:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8F1BC90C3;
	Thu, 18 Aug 2022 09:47:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0B95C906C
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Aug 2022 09:47:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660816025; x=1692352025;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IffiBUCpTvuz5cV8swb3kk3Az5cEojP5NdkcSsrPEQw=;
 b=k0/GrkNM8IosK0vvSNfW6L9aXinABnNmilEvEnFL2CzwAVrxkvoGJ8j9
 eKC77aDwHcjRpXmvS58Oi8YKI0iZJA4YwTeRPWuUA1Ok1Eu7dDiHfpETI
 nHDlhFYJfbvSEOYnzbjCuTLNePY5QLQJ2z5bdT0TrlfTbxvYHefFArzNc
 r7MBFvT30FU+MdKALd4Xt3TJwk4HRq19q3v8VZfHw1NAZhW1nTZRokv60
 GjZ6wPseYQHPJfZ172x0WuCVNDCfFe3YpWxN0s41ZHm6CQgGBRE7tC8Fk
 euMxKBvmhv2ibP2P94o4LbIn1gn5W8AZVSp/5TIkMrWQHQmGqCfTGEOks g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10442"; a="279682477"
X-IronPort-AV: E=Sophos;i="5.93,246,1654585200"; d="scan'208";a="279682477"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2022 02:47:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,246,1654585200"; d="scan'208";a="607765932"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 18 Aug 2022 02:47:03 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 18 Aug 2022 02:47:02 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 18 Aug 2022 02:47:02 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 18 Aug 2022 02:47:02 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 18 Aug 2022 02:47:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IoRmZNjx4bi/II67RqGWbZdMCN+KO9et72rVlOflBPb0CRvjxJ5qvZ3smt0fqXOuzGOGwg/B1PFIi/cJeOwsKhTBtMLfX+ryW3OgFgplIR5eMyDYWrgEhmeGB4nMvwwQzwSVKpafyEVcUJ51Qp0zzB7neirjGmjM3e7VXZrLCy9yfS4G5L/e1KwqIaM0Y+X5hsBgcMkUSPW2WPOGObZYlda9MegN7i3I2PHPF5Af1d44x5984uyQDYIXoNjl6SYhv1Wi6Zw4yYQzbPb9hrVXqFmMQeai1tvoKeQaTSBVTGrnZUEQ0UhVaSr/gKACey2UBOXL1WPNK3j32b1Y39TK6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IffiBUCpTvuz5cV8swb3kk3Az5cEojP5NdkcSsrPEQw=;
 b=AUWRu50fDBNnxStBvjkrDOn4I2YGgstgByFrDlMzCiSr2P2iq4LM2IsAMJPhNim/a2nmU8jT/oV+WJVrsjoA97ViBE/G6lojSfF4+Ad3VyaN38ObOBiZgaEIVmt3JfyXeWhi3mgvnhaAyDQqEj/aXHEsIAFe0i+Zm6bXWn4ayX9R6xTq9+huRwInyMp9OECg/1NfZuZGHSOpu7hR04GTYKUIiYy2k3ydKXc1czFfCliMoQmKUwB+B1saEfXdMEZDfHR17tJfwbSAyKvoryQjSdfgLheg6/ESAyUuxIgxZvoQW4ub1TJny8LsS/e4h8Y3N74X+KWCgO39rl3eMs0gHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by BYAPR11MB3000.namprd11.prod.outlook.com (2603:10b6:a03:8e::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.16; Thu, 18 Aug
 2022 09:46:59 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::b1a6:2b63:7c49:5cc5]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::b1a6:2b63:7c49:5cc5%4]) with mapi id 15.20.5525.010; Thu, 18 Aug 2022
 09:46:59 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Auld, Matthew" <matthew.auld@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [RFC 2/2] drm/i915/dgfx: Runtime resume the dgpu on user fault
Thread-Index: AQHYskt47wp5a3XKQ0mEaawOASAj3a2zZNgAgAD9FPA=
Date: Thu, 18 Aug 2022 09:46:59 +0000
Message-ID: <CY5PR11MB62117D4D51B691EBCBF69B98956D9@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20220817150941.25447-1-anshuman.gupta@intel.com>
 <20220817150941.25447-3-anshuman.gupta@intel.com>
 <8d5d0839-b8cf-6e27-1de0-38ed326149a5@intel.com>
In-Reply-To: <8d5d0839-b8cf-6e27-1de0-38ed326149a5@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f23bdd56-8bdc-4f47-78c7-08da80fe98ae
x-ms-traffictypediagnostic: BYAPR11MB3000:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YsId7oneqse1N/puEN46PkC4f0aQNA7JkkhyvO4f34oHFWaxBK+Hi5KdVSV3D2tH7GWR++5Pm/DfrAfRrLMtkF9b3DgG7kd6zwnKO1oUSNnPx3dIPDa/bpDkIkHf1egBoxKfJWw/qYMLlaHZqVHWrcGR4hDrafdYvYd9tFo1+fGLn2wP4LDk6otwFzUORy3oCeKAKO39zsHbbJTbolMRTgpaAJrBG45m3W3ULP81cu5A2OQPM8cwYQ4SvzOVKncoVUzBH0vzKeb8gQLCjoIhQny55uRzf6fvCEaqRi3pvPjbyjJogKAfdl8pq3pjeKF62hf8lp83vRyYWnYrK5BdQUPSUC1pQgIBsRfR2EKOOGD5AGMA+SzRW0uyTh1+Wq+dcxV6IMAGxKTsw0F52DjHpqesCnU1KnvjqpMMknsF760IqQL3vMr1Yn962Y0UGCXCPMB900s3SUeIJ6QTaqARdY9WFwK5+OoITHLnGWhu5m+pTe3HSiGldNKd78nONYLaPcol5pivVZZf9ZfhVtk0YK8lOv58SQITpxlj6ZYYDM88WrxIIruLRdMP6HH+HkPh6qnVwCPjSd2qMm5v7yKI8m4HccO7DizU727QxgmiIS6lhvbYjGJmR8LXpWUppJooPzxPnH8nQ2GfnjFxVv0dbcDX9w3n9ae707OgmDPqiaWIegQidrTIV4pw5zmPRYUnvRnYLJ7Mi2vzyLgbX689ntQdWNsant+JsKFdwpMrAAS89O+6vKkGvDTKy7Sb+Gu0GZ70Uxzi08a5t2cQYZtcJw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(39860400002)(376002)(366004)(136003)(396003)(66946007)(38100700002)(122000001)(82960400001)(86362001)(66556008)(110136005)(66476007)(66446008)(64756008)(76116006)(8676002)(54906003)(316002)(2906002)(38070700005)(52536014)(8936002)(5660300002)(55016003)(26005)(55236004)(6506007)(9686003)(53546011)(7696005)(4326008)(186003)(71200400001)(41300700001)(478600001)(83380400001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bTltUFRqYVZ1c3B0eVIwMGZCaWkyU3hjeGQrcllkMjRlU2ptVzcxRXZQL0V5?=
 =?utf-8?B?L0lTVDdxamdjcHFYQ0d0enMxSDY0N0RWSGt2YkRmQU11ZUsxR2piNk9uUm5L?=
 =?utf-8?B?T2F6OEpUVWtBYVJRQkhHTEhwck4zaWNrS0ljTE1LTkdDTWdZRWJwSHZJenhE?=
 =?utf-8?B?ZUMvbnoyQWYxZmR4VDlmcElhbnZ1eFI0U2N2cklQSmtHTENySk0wb1hsTXVt?=
 =?utf-8?B?dGpyMjdIK2J6MXJaQjNWYmZ6Ny9ZQUttN3lnOUg3bEZyazFPSFozMW56bHNR?=
 =?utf-8?B?bE44L0JPVlR1VlE4ZlZJalFVUFhCRmNxNGFnYU1kWFkwcWpjVGFUbVZ3NnBB?=
 =?utf-8?B?SVdSTEpaUGZaVUNTWXFLdjFTS1Fkd1g1R3RGQ3BEd3VONC9rZzZJOVlCQ0F4?=
 =?utf-8?B?NE9XZHhEeUY5eXNBRk9ON29HOXVkRW9UVzVDbmZvQTBkemZDRUU4dHVhb3hh?=
 =?utf-8?B?RzJQSnRyanFTclZ1Tk52b0FPL2Nsa29oYVNpd3V5dVE0VkF2Wjh3TlUvZ0d6?=
 =?utf-8?B?ODl3QzhjZ1ZzNDJDbjZodndmWDVqb1h6bmhFNDJuemFoeElXQnpUUlNWeGJa?=
 =?utf-8?B?RjVLc216Wi9uVS9BM2tpRU9qYWxZUU9OcnIxYnhJdmpsbzVKK2w0NXNYZDlC?=
 =?utf-8?B?N0h0MFROdnRKdm5UVlRvMklSelJ3eHBpeWFtZVdRbVY4ZlVoY2xxWWIwNkQ3?=
 =?utf-8?B?UHZWWDZVTmJieUVRRVRxenBHb3IzaUVlenZzVDY0bmVCb3pwalpmYU82bW5k?=
 =?utf-8?B?T3BDMW5sNHVNbWVTNUd4VDZzOTFlYlZGU0VqWlNOeG9pZ0FEa2VJdUgzdTJG?=
 =?utf-8?B?NHBhY29hN29TaXpkZzZsU1JxOUJzdjBJUjZCYlZacUEyTmFrK0lWM2FKNGJW?=
 =?utf-8?B?WUFldXhyQ2IzaWo3VW55aVc4VkMwdk9kOGgvdSsxSEJ5RHVRRy9VUXJ2M1Yy?=
 =?utf-8?B?bmtyYXpZRDV4TkVESmpsZ1R3b2ZSUzUzVlMrMlp3NDRQQmphaFYwcjJQbVA5?=
 =?utf-8?B?UDZYR3p6WXd6Sm53dVJjRjM1SVJ3di9nTE9VcWxWWHRRaHdaT2FMSjc2ZTRq?=
 =?utf-8?B?OFFVSE9URDdXdjFadDU4VDArZVRGOGFwazdrQWZzSG9vTFdNclFkeGlhUjNL?=
 =?utf-8?B?Vk9zdEczVzZwcHhlcnFHcHRLQWRsbGdMQVFpQldhdTI5VjE0TkF1WlZuSys4?=
 =?utf-8?B?MWtodzNlZ0t1UmdweDRLeDcwakFSa01WcjZhM3VPTlFhNjNWcVdQTlM1WTFx?=
 =?utf-8?B?dmRNb0FUSkJLZk5IK1Uvbk50Um5kZW9rSkYyUHI3L1kwMklTb015dWFzVStn?=
 =?utf-8?B?VnhyQmJoeGNrTGFuVWJrTURaNEJ1eTN0WU5hUTNXT3d6NUhwR1c0NHVOYkta?=
 =?utf-8?B?R0pxRVNIOSthTHJLcHBkZHdienlIdVA1YjVrOHAwaWwydUgvWVU3bXFweS9s?=
 =?utf-8?B?N0czUng2THAwd2NhQzkwU1J6TFpvY0dKdmd5SnZMdWpzSGEyWXJ4QVN5NzdN?=
 =?utf-8?B?RHBBbkVQbXBLU0pXbjNDWjRXZ0drN2N4QXc0RjdXV20vVHE1SjRSeStrZERX?=
 =?utf-8?B?N1VvbFdxeENUQ2xJN29qb0tCNHhYdzY5WjB6bkN0TDR1U2t1SDJzcHY4ZG9h?=
 =?utf-8?B?QWtnVUZsY0FYVm92ejk4d2x4dWZjSkk5d0wzYk40b05pZkFwVXhubm5ycGVO?=
 =?utf-8?B?Y2hmTkZ3aGtyL1ZCQk9WNjgrcW5sZ043b2NDQzhaQlNHbFJRS0NscHllaklD?=
 =?utf-8?B?YUlHL0hpR3laRDRKcEhEWVFHUGdYa1A0d1I5dHNqUjFLNGZrMEFsaVMzck1l?=
 =?utf-8?B?ZGY2Y2RwTk5BaWNxamJuOVE1U3hneXIvRzIxRy9hYnU0VW5kRTRSd0ZLdjNt?=
 =?utf-8?B?Yi9USWhpbnRWWTJsTzlNZ3hBQWhQSGM2UjF2djdRUW5VdlVZMytMN2EybHJD?=
 =?utf-8?B?Y2h0emswY1pabjJxTEtmcFYxMmc3a3FGMjcyZ2ZuTmR0ZkRWam5MRjdiblNy?=
 =?utf-8?B?bWlkdjFsWVNGMEljSThpeXI0QnVNd2EzQjNtdHlGelE4KzdiTzIzb1ZiUGdn?=
 =?utf-8?B?QmZmaFNkaU16ZHBZL0xqSk1OYm01R2VPY08vdGJGUFMvd0MxRHIrL2xhY1Mx?=
 =?utf-8?Q?zyMH3zTnhoZMPFmNxppuC6elk?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f23bdd56-8bdc-4f47-78c7-08da80fe98ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Aug 2022 09:46:59.7654 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iuO//nkTeOzuE/F3a8m7Eo7bVeKFz0gt6rrHAsVwHeOWeg5+65nvhrRep6M8GX/IT8qYQIpQu8vpO4iTVDCXLwGisDnVoVmGy4yD4H0w0+0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3000
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 2/2] drm/i915/dgfx: Runtime resume the dgpu on
 user fault
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
Cc: "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQXVsZCwgTWF0dGhldyA8
bWF0dGhldy5hdWxkQGludGVsLmNvbT4NCj4gU2VudDogV2VkbmVzZGF5LCBBdWd1c3QgMTcsIDIw
MjIgMTE6NDEgUE0NCj4gVG86IEd1cHRhLCBBbnNodW1hbiA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwu
Y29tPjsgaW50ZWwtDQo+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGpvb25hcy5s
YWh0aW5lbkBsaW51eC5pbnRlbC5jb207IFZpdmksIFJvZHJpZ28gPHJvZHJpZ28udml2aUBpbnRl
bC5jb20+Ow0KPiBOaWxhd2FyLCBCYWRhbCA8YmFkYWwubmlsYXdhckBpbnRlbC5jb20+OyBjaHJp
c0BjaHJpcy13aWxzb24uY28udWsNCj4gU3ViamVjdDogUmU6IFtSRkMgMi8yXSBkcm0vaTkxNS9k
Z2Z4OiBSdW50aW1lIHJlc3VtZSB0aGUgZGdwdSBvbiB1c2VyIGZhdWx0DQo+IA0KPiBPbiAxNy8w
OC8yMDIyIDE2OjA5LCBBbnNodW1hbiBHdXB0YSB3cm90ZToNCj4gPiBSdW50aW1lIHJlc3VtZSB0
aGUgZGdwdSh3aGVuIGdlbSBvYmplY3QgbGllcyBpbiBsbWVtKS4NCj4gPiBUaGlzIHdpbGwgdHJh
bnNpdGlvbiB0aGUgZGdwdSBncmFwaGljcyBmdW5jdGlvbiB0byBEMCBzdGF0ZSBpZiBpdCB3YXMN
Cj4gPiBpbiBEMyBpbiBvcmRlciB0byBhY2Nlc3MgdGhlIG1tYXAgbWVtb3J5IG1hcHBpbmdzLg0K
PiA+DQo+ID4gQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4NCj4gPiBD
YzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYt
Ynk6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+
ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMgfCAyNSArKysrKysr
KysrKysrKysrKysrLS0tLS0NCj4gLQ0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlv
bnMoKyksIDYgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fdHRtLmMNCj4gPiBpbmRleCBiNDk4MjNkNTk5ZTcuLjFlOWIwNzQ3M2E4ZiAx
MDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMN
Cj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMNCj4gPiBA
QCAtMTAyMCw2ICsxMDIwLDcgQEAgc3RhdGljIHZtX2ZhdWx0X3Qgdm1fZmF1bHRfdHRtKHN0cnVj
dCB2bV9mYXVsdA0KPiAqdm1mKQ0KPiA+ICAgCXN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8g
PSBhcmVhLT52bV9wcml2YXRlX2RhdGE7DQo+ID4gICAJc3RydWN0IGRybV9kZXZpY2UgKmRldiA9
IGJvLT5iYXNlLmRldjsNCj4gPiAgIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOw0K
PiA+ICsJaW50ZWxfd2FrZXJlZl90IHdha2VyZWYgPSAwOw0KPiA+ICAgCXZtX2ZhdWx0X3QgcmV0
Ow0KPiA+ICAgCWludCBpZHg7DQo+ID4NCj4gPiBAQCAtMTAyNywxOCArMTAyOCwyNCBAQCBzdGF0
aWMgdm1fZmF1bHRfdCB2bV9mYXVsdF90dG0oc3RydWN0IHZtX2ZhdWx0DQo+ICp2bWYpDQo+ID4g
ICAJaWYgKCFvYmopDQo+ID4gICAJCXJldHVybiBWTV9GQVVMVF9TSUdCVVM7DQo+ID4NCj4gPiAr
CWlmIChpOTE1X2dlbV9vYmplY3RfaXNfbG1lbShvYmopKQ0KPiANCj4gV2Ugc2hvdWxkbid0IGNh
bGwgdGhpcyB3aXRob3V0IGZpcnN0IGxvY2tpbmcgdGhlIG9iamVjdCAoc2VlIGJvX3ZtX3Jlc2Vy
dmUNCj4gYmVsb3cpLCBzaW5jZSBpdCBjb3VsZCBiZSBpbiB0aGUgcHJvY2VzcyBvZiBiZWluZyBt
b3ZlZCB0byBzeXN0ZW0gbWVtb3J5IG9yDQo+IHZpY2UgdmVyc2EuIEZvciBleGFtcGxlLCBiZWxv
dyB3ZSBjaGVjayBpc19sbWVtKCkgYWdhaW4gKHRoaXMgdGltZSB3aXRoIHRoZSBsb2NrDQo+IGhl
bGQpLCB3aGljaCBtaWdodCByZXR1cm4gdHJ1ZSwgZXZlbiB0aG91Z2ggaGVyZSBpdCByZXR1cm5l
ZCBmYWxzZSwgd2hpY2ggbWVhbnMNCj4gd2UgY2FuIG5vdyByYWNlIGFnYWluc3QgdGhlDQo+IGk5
MTVfZ2VtX3J1bnRpbWVfc3VzcGVuZCgpIG1vZGlmeWluZyB0aGUgbGlzdCBhcyB3ZSBhZGQgc29t
ZXRoaW5nLg0KVGhhbmtzIGZvciByZXZpZXcsIGkgd2lsbCBmaXggdGhpcy4NCj4gDQo+IFdlIG9m
YyBzdGlsbCBuZWVkIHRvIGF1ZGl0IGFsbCB0aGUga2VybmVsIGludGVybmFsIHVzZXJzIHRoYXQg
YXJlIHRvdWNoaW5nIGxtZW0NCj4gdGhvdWdoIGEgQ1BVIG1hcHBpbmcsIGFuZCBtYWtpbmcgc3Vy
ZSB3ZSBoYXZlIHRoZSByaWdodCBwbV9nZXQvcHV0DQo+IHdyYXBwaW5nIHRob3NlIGFjY2Vzc2Vz
Lg0KSSB3YXMgdGhpbmtpbmcgdG8gdXNlIGFzc2VydF9ycG1fd2FrZWxvY2tfaGVsZCBpbiBpOTE1
X2dlbV9vYmplY3RfcGluX21hcCgpDQpTbyBldmVyeSBjYWxsZXIgc2hvdWxkIHRha2UgdGhlIHBy
b3BlciB3YWtlcmVmIGJlZm9yZSBtYXBwaW5nIHRoZSBwYWdlcy4gDQpJdCB3aWxsIGJlIGRpZmZp
Y3VsdCB0byB0cmFjayB0aGUgd2FrZXJlZiB3aXRoIG11bHRpcGxlIGk5MTVfZ2VtX29iamVjdF97
cGluLHVucGlufV9tYXAuDQogDQpBbmQgaTkxNV90dG1fbW92ZV9tZW1jcHkoKSBhbHNvIG5lZWQg
dG8gd3JhcHBlZCB3aXRoIHJwbSBnZXQvcHV0Lg0KDQpPdGhlciB0aGFuIHRoYXQgaXMgdGhlcmUg
YXJlIGFueSBpb21lbSByZWxhdGVkIHBjaWUgdHJhbnNhY3Rpb24gdHJhbnNhY3Rpb24NCmludm9s
dmVkIHRvIHByZXBhcmUgb2JqZWN0IHNnbCBwYWdlIGxpc3QgPw0KDQpUaGFua3MsDQpBbnNodW1h
biBHdXB0YS4NCj4gDQo+ID4gKwkJd2FrZXJlZiA9DQo+ID4gK2ludGVsX3J1bnRpbWVfcG1fZ2V0
KCZ0b19pOTE1KG9iai0+YmFzZS5kZXYpLT5ydW50aW1lX3BtKTsNCj4gPiArDQo+ID4gICAJLyog
U2FuaXR5IGNoZWNrIHRoYXQgd2UgYWxsb3cgd3JpdGluZyBpbnRvIHRoaXMgb2JqZWN0ICovDQo+
ID4gICAJaWYgKHVubGlrZWx5KGk5MTVfZ2VtX29iamVjdF9pc19yZWFkb25seShvYmopICYmDQo+
ID4gLQkJICAgICBhcmVhLT52bV9mbGFncyAmIFZNX1dSSVRFKSkNCj4gPiAtCQlyZXR1cm4gVk1f
RkFVTFRfU0lHQlVTOw0KPiA+ICsJCSAgICAgYXJlYS0+dm1fZmxhZ3MgJiBWTV9XUklURSkpIHsN
Cj4gPiArCQlyZXQgPSBWTV9GQVVMVF9TSUdCVVM7DQo+ID4gKwkJZ290byBvdXRfcnBtOw0KPiA+
ICsJfQ0KPiA+DQo+ID4gICAJcmV0ID0gdHRtX2JvX3ZtX3Jlc2VydmUoYm8sIHZtZik7DQo+ID4g
ICAJaWYgKHJldCkNCj4gPiAtCQlyZXR1cm4gcmV0Ow0KPiA+ICsJCWdvdG8gb3V0X3JwbTsNCj4g
Pg0KPiA+ICAgCWlmIChvYmotPm1tLm1hZHYgIT0gSTkxNV9NQURWX1dJTExORUVEKSB7DQo+ID4g
ICAJCWRtYV9yZXN2X3VubG9jayhiby0+YmFzZS5yZXN2KTsNCj4gPiAtCQlyZXR1cm4gVk1fRkFV
TFRfU0lHQlVTOw0KPiA+ICsJCXJldCA9IFZNX0ZBVUxUX1NJR0JVUzsNCj4gPiArCQlnb3RvIG91
dF9ycG07DQo+ID4gICAJfQ0KPiA+DQo+ID4gICAJaWYgKCFpOTE1X3R0bV9yZXNvdXJjZV9tYXBw
YWJsZShiby0+cmVzb3VyY2UpKSB7IEBAIC0xMDYyLDcgKzEwNjksOA0KPiA+IEBAIHN0YXRpYyB2
bV9mYXVsdF90IHZtX2ZhdWx0X3R0bShzdHJ1Y3Qgdm1fZmF1bHQgKnZtZikNCj4gPiAgIAkJaWYg
KGVycikgew0KPiA+ICAgCQkJZHJtX2RiZyhkZXYsICJVbmFibGUgdG8gbWFrZSByZXNvdXJjZSBD
UFUNCj4gYWNjZXNzaWJsZVxuIik7DQo+ID4gICAJCQlkbWFfcmVzdl91bmxvY2soYm8tPmJhc2Uu
cmVzdik7DQo+ID4gLQkJCXJldHVybiBWTV9GQVVMVF9TSUdCVVM7DQo+ID4gKwkJCXJldCA9IFZN
X0ZBVUxUX1NJR0JVUzsNCj4gPiArCQkJZ290byBvdXRfcnBtOw0KPiA+ICAgCQl9DQo+ID4gICAJ
fQ0KPiA+DQo+ID4gQEAgLTEwNzgsMTEgKzEwODYsMTYgQEAgc3RhdGljIHZtX2ZhdWx0X3Qgdm1f
ZmF1bHRfdHRtKHN0cnVjdCB2bV9mYXVsdA0KPiAqdm1mKQ0KPiA+ICAgCQlsaXN0X2FkZCgmb2Jq
LT51c2VyZmF1bHRfbGluaywNCj4gPiAmdG9fZ3QodG9faTkxNShvYmotPmJhc2UuZGV2KSktPmxt
ZW1fdXNlcmZhdWx0X2xpc3QpOw0KPiA+DQo+ID4gICAJaWYgKHJldCA9PSBWTV9GQVVMVF9SRVRS
WSAmJiAhKHZtZi0+ZmxhZ3MgJg0KPiBGQVVMVF9GTEFHX1JFVFJZX05PV0FJVCkpDQo+ID4gLQkJ
cmV0dXJuIHJldDsNCj4gPiArCQlnb3RvIG91dF9ycG07DQo+ID4NCj4gPiAgIAlpOTE1X3R0bV9h
ZGp1c3RfbHJ1KG9iaik7DQo+ID4NCj4gPiAgIAlkbWFfcmVzdl91bmxvY2soYm8tPmJhc2UucmVz
dik7DQo+ID4gKw0KPiA+ICtvdXRfcnBtOg0KPiA+ICsJaWYgKHdha2VyZWYpDQo+ID4gKwkJaW50
ZWxfcnVudGltZV9wbV9wdXQoJnRvX2k5MTUob2JqLT5iYXNlLmRldiktPnJ1bnRpbWVfcG0sDQo+
IHdha2VyZWYpOw0KPiANCj4gRG8gd2UgbmVlZCBzb21ldGhpbmcgbGlrZSBEUk1fSTkxNV9VU0VS
RkFVTFRfQVVUT1NVU1BFTkQgaGVyZT8NCj4gDQo+ID4gKw0KPiA+ICAgCXJldHVybiByZXQ7DQo+
ID4gICB9DQo+ID4NCg==
