Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0A963AF40
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Nov 2022 18:40:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1013589322;
	Mon, 28 Nov 2022 17:40:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AB9A10E30E
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Nov 2022 17:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669657204; x=1701193204;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=gs+me0c8eDfhq+cfCKmqCHxjDiB6UlVm9FPHSiVxLLM=;
 b=RgaKtMWSuzAD6TTXcSaeaj8IwK+KZirvbvoWDt0RgG8eboxBCQPcMdOd
 i9/3LJ5thzyhwTODkgrdZiixm55laq6VoYYnP5ZtLjkywWY4h/rFgsHzm
 x1Pawo/QQ2JGeCAHIHkGBXGGp6EyGkY2VLpfQqnqfrBB3Mh+RvkOyzPka
 C/o74CB2G/u96uLcVzaN3lSKGxBbGREwKpLxxKGgm9E4lWHGzC5lBNCrg
 8LmK19zn5XRRot6x/Szk1aoTwDMY2A0KZZSPNJ8LIrGkJwLp0CJ93pxaS
 Z8WJOoXFpMKvVcn8FrnNQuJ3o7/0+UtIrr0AptegdbGJUEclur4oqn7cu A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="377044101"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="377044101"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 09:37:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="643473400"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="643473400"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 28 Nov 2022 09:37:33 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 28 Nov 2022 09:37:33 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 28 Nov 2022 09:37:32 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 28 Nov 2022 09:37:32 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 28 Nov 2022 09:37:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CpkbSpWC//2say9sjGxN6UosOxL5rYImrbmShBZJMZsJV4BAzpKowBbKlR7cVOUy/eSwZ9LEoo/AOYbm0k1Um9oN2usk5sBTFuaswgV3J7bOOvCBaJca++djuv8PS9Zeoi+CG3gNwubQNZfV6xacS4mkXlMifVgCElIqkdXqK4aSfQCIYFKWlIVxbtGPA9jxhKcg7X4Ny2K3N8VJu+oNR3kdJDWzzgywVu0P97Jg6S2Z0XpuEuzHfDBv5Ki3goBFe7LfkLfD01qZyC30cYq8Je/6nl0OxiqHAtOl36elErXnw5RxtfKGjKgfoS84W72yUNcE5XsgfXMOB65sGPmODA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gs+me0c8eDfhq+cfCKmqCHxjDiB6UlVm9FPHSiVxLLM=;
 b=jspwAj8cNlI3tD3HrN1gYuZz6i4Qw47TdVhJ9VgS9rgOx8wcoVp8N1Xy7DGKc77sYXugeoRvSebqKQ58+py8i64Mno5CeCnHPRWiHBLHyHyLRbvOB5w5pTuTEiNV27QKYQYfo0gsTSzBXYUEWvRme7u69R4CV2SsJPFgawgizF4gxmSccZHXLs91L8m+Eq1KUIsggSdfUZzIe72k1CccYbxSpyL7v92sAOM8kSAcO1AcbFEfRWZ/cC37Sp/KUKJGfaqb+Rfk5WL1XHHInFs2lOA0n0FMzwRaAqVjRSBN65BHTfRFOPjOh4goiAitBjeIbEggmhwzW8Jyo0Yy9QW9zQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH0PR11MB7588.namprd11.prod.outlook.com (2603:10b6:510:28b::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.21; Mon, 28 Nov
 2022 17:37:29 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::851f:5d95:8679:c897]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::851f:5d95:8679:c897%3]) with mapi id 15.20.5857.023; Mon, 28 Nov 2022
 17:37:28 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/psr: Use continuous full frame update instead
 of single
Thread-Index: AQHZANQFRWDhXECBeEC1z4Svn33FBK5UnnwA
Date: Mon, 28 Nov 2022 17:37:28 +0000
Message-ID: <dd587286acabdc83acb204f65663167edf636c01.camel@intel.com>
References: <20221125134336.3999296-1-jouni.hogander@intel.com>
In-Reply-To: <20221125134336.3999296-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH0PR11MB7588:EE_
x-ms-office365-filtering-correlation-id: b5023afe-a5d2-44c6-2292-08dad1673882
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5t2sHCo0SGnQx9TmKFJ0PvpF8tadtT4P099CgRBPmMMd+vhRS7sHyDttdSkJ11uBZv0IeRXO7b9LTENfQ2xUUWbwwxaBZXpfQ2oW2Zsi+dKamun8viEu1qtf6ZhpybcxwDZrQpOIHu6gMmlBK9JmiBufg6AV3E1Iv0xYmPCoe8dcCRYpWzo987tdTbjYDu9bwCF1PRCY4bDoSGjzgMya1lF+mjWW4p945bZK8wdK4BqIRuD7x5vzZ6NqUogP93//O8/ujM6XfVpUmO4U4Fp8lcOAJyixnk5fH/ycjm+92vBm+mWYt3xJZ02yPw6kypjEFeTrvc2U/+jzkfC0l/PIykWy8/xmd4KR2omyQ2b/y42tFmy/PNe7hR0Wo/1Q33Dn9reDOlaKGiyy8i0VpkGptCmMwM+my/wPrGz5baqopt7WQzKqfzcxwbd8+roMJ3CP7t2jkRRihmryOY6ipI/0M2WXP9P/eVxmKE0q0Vna7SJk8EGLcRFnR17yzyiQeediS9nhiStTpXe0EYswjKGc7dej8yjfpm4vCtvJdl91dmdUoV7sa9GU+45ce9T9VoHNAwjbWvglmysA95kwVDq8gxzbxCBZq9GwBrfQ5YLWd8wqJNyc1wUTgj+2U4UDya8Hwk2bhk1AcR+5BuRLCd7BuQcFQjQ98V//V8xAlAnmxpb/GjGy2f8FwN4QSosWuhdtcb5sP627Zixe93RO04DjkQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(376002)(366004)(39860400002)(346002)(136003)(451199015)(5660300002)(86362001)(8936002)(36756003)(316002)(54906003)(8676002)(4326008)(4001150100001)(66476007)(76116006)(66946007)(64756008)(66556008)(66446008)(91956017)(38100700002)(6916009)(82960400001)(41300700001)(66574015)(186003)(2616005)(83380400001)(122000001)(478600001)(6486002)(26005)(6512007)(38070700005)(6506007)(2906002)(15650500001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MGM4L0RtRjk3S0RkejFMRHkzNzRnSlZ5eE10Z0pVaTRFbXg4N0k2K0c3ckkx?=
 =?utf-8?B?cXZFL1Z1R01LcnFQREk1TDJHNDJVTDRESDN5WENxck05RTVCcFV4V0J5bEV1?=
 =?utf-8?B?ZURldStTYklld3hRa2NGOHlHRnZBRVJqcEcveTY0aGZZcGhZc3lZUUtFT2Iw?=
 =?utf-8?B?V2c1a3duanpzMFc0MXFRSjY5TytVRE54VTFFZmtRVFVJWlJWTmgxcjRJS1ZB?=
 =?utf-8?B?ek5rSFFOZHFpbHJCLzBBc2NIM3ZpOFU5bUNHRHhDQ1hDcHBOZHRXNFNRcklk?=
 =?utf-8?B?MGlMS2w3aEZoUVVuZGdmamx1cWNDWDZhWE0zdW9Nem11NitjcXAyeUJJc3JT?=
 =?utf-8?B?NmRiVjZUS1hqNDg1R0x0VFNQVlVxWitOKzQ5OTVmUENPTUJrcVBlUko0S05p?=
 =?utf-8?B?OG00dXpyamw3TGh4eERNUXZtU1NsMEVMOFhOb0tRWDQwcVpaRlIrYW5GVWds?=
 =?utf-8?B?ai9mSWhaMzQyV096M3RFNTNLVUxkUDI2TCsxc1hOTUxvYnRUalEwb3R3MTQv?=
 =?utf-8?B?TTh1aUJtUXpoY09vWDJDWSt2QmhGZm9mTU1vSDZDNkZzZjBYeWRhY2ZMUGNT?=
 =?utf-8?B?QWhsZFRjUnhPeHA0dFhKQVNXRVJ3bm9pUmdZaGE4TzlHdkpwTVZmbGJWa3Fy?=
 =?utf-8?B?WFpoa21xN2Z5WVB3WExWQThDcEdxM2dOMzBkMUJzSmFNVVJQSXJKL2Y4MFZ1?=
 =?utf-8?B?NHlQNUYvSW42ZHlQNnlhb0l2UE1adlNxSWtJWHFoU3h6dXZac1l6VENDMm1n?=
 =?utf-8?B?VzZqZmQyZGJIeXFZMVpxQmFlMGM1VHFyMEhoSHBJaGNSYlhaODFOSHdTTit2?=
 =?utf-8?B?M25xM29ZOThGVUFlRnhjYlMwUWt0KzZkdUI4Uk9oemhMbVl3WmJ0ZjlGeXBV?=
 =?utf-8?B?QlhVQ3AvR1ZxOGVDeVVFNzlJcCt4T2NNaFBuMmt2ek1zZERZK0pKWnpQR0V0?=
 =?utf-8?B?a2cyOGU0ZGxiUkdMTXVWU1paZkNscXIwcTFOYmdYcWwzSjg5SEJ6MDV5ckJ2?=
 =?utf-8?B?VmRvYlY1NDR6ak9ScllLdTdrV3Y4QkR0UkJxd0YyV3IxM29wek9nS3I5Z1Iv?=
 =?utf-8?B?anNkRHVERDNTQVFkTXI4RHVEWjRuR0pCT3lpUDdIT0orQXhxc2M1cnA3eHpU?=
 =?utf-8?B?WkhndVh3TSs3aW5rbEZRUEpIM3RWR2VCWHlJclJ3THZTbEEybUgvWlJwMzd6?=
 =?utf-8?B?R1U3RWpwMlNoTjBaSWRaeWlkZWc4Wkt3RkI4MlEyWDdQbWg4ODJBemk3eFdF?=
 =?utf-8?B?ZlpFRmo0dWR1b2J3QTEydk9MbE9CblRwRFdtQ0VyNGFudW5wWWlVZld2RnRo?=
 =?utf-8?B?alJwT0Ywb3NGTjdUR0tOUGsvMzdBejhSYTVobmh4cVo1dWgwMncrVTFjZnpR?=
 =?utf-8?B?U3ZJZjVaZkhJRURucEJJYkJ4UExFRHh0Mm9Rb2hGNGlremYrdEdHbTFtZHVN?=
 =?utf-8?B?RllSaTRoaVdCQTNoS0NCVVNmTEJ6Y3VFODhLSzZkZ1RkYTRGS0pxcmhCOGFx?=
 =?utf-8?B?RzFTeDVhSnl4QUZPVGdrMjR1ZDFpZ3A1a2xMaFpIVzkxVElDTjQ2M2NjU2Jl?=
 =?utf-8?B?TGZJYUYxMGw0MDFmT1FBZ3VyN2NrUW04Nmp6Y0VSNXlDTDRjUnNnMXNpTks3?=
 =?utf-8?B?aUtJRHEzSVFiNy9DNkMyQ1RpNTNNNW9zcE5CSlhVSEQ5L3FiVExlTW94VnNX?=
 =?utf-8?B?MXh3N29PVzFaTmhSeVhubjFWdm1zME5GMXBnT0YxR2pZYmhqQnY5VmVtQmpo?=
 =?utf-8?B?bVFHQWlURUIrZjdKalJGTEFjZ0xoc25EaXpZT1NLcGJjOXpHdmp3NUs0WDQ1?=
 =?utf-8?B?S1p1SmE5L29nSVlwVkdpak9GOHlQNkRyWHFVWmZEVjdySjFXeUJwZlhzblJ3?=
 =?utf-8?B?Q1JMY3Rjc3YrU3pVKzhWYzJqR1hCVXBtMkMyYWxWcGJUOGZwbXBQUGx1VGZl?=
 =?utf-8?B?RzFua1BUU2pLckdIVFNWb1BFMGpPR3lkVW9Mc2xYbHEzNmUvYWVOUmRPYkhN?=
 =?utf-8?B?b05xdGlNaG9OOUdoMGdOQ0thbWRpdG1EbkRYaUxZUWpWZDgrVkpzTGJ1UlhN?=
 =?utf-8?B?OEFzeEN3NUJQK3pLaVlTeStvTUw4ODZlSlZnenBQWVhwUU5JSkVRZExkRXQ5?=
 =?utf-8?B?bjRkQWVodFhDcStmSGQrZXo5OEJPMzc5YWNZdkpndTcvZGxkV0Yva3JnKzhN?=
 =?utf-8?B?UXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7217A39B943D3649BDC8727792EBE1F9@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b5023afe-a5d2-44c6-2292-08dad1673882
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Nov 2022 17:37:28.5767 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3In59o1PaRmO+HTNdn3ePDKI88PN/jqTh+gfzPO+kJT/VbAVpTZduAb4yE+KNjte8XsB3YwlmHsSPLGI4kXUnf5CKZDQ3R0pzTEJwNLeV/4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7588
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Use continuous full frame
 update instead of single
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

SSBmb3VuZCBpc3N1ZSB3aXRoIHRoaXMgcGF0Y2g6CgpUaGVyZSBpcyBhIHRpbWUgd2luZG93IGJl
dHdlZW4gcHNyX2ludmFsaWRhdGUvZmx1c2ggYW5kIG5leHQgdmJsYW5rCndoZXJlIGF0b21pYyBj
b21taXQgd2l0aCBzZWxlY3RpdmUgdXBkYXRlIHdpbGwgY2F1c2UgZnVsbCBmcmFtZSB1cGRhdGUK
YmVpbmcgbG9zdCBkdWUgdG8gb3ZlcndyaXRpbmcgdGhlIGNvbmZpZ3VyYXRpb24uCgpJIHdpbGwg
c2VuZCBhIG5ldyB2ZXJzaW9uLgoKT24gRnJpLCAyMDIyLTExLTI1IGF0IDE1OjQzICswMjAwLCBK
b3VuaSBIw7ZnYW5kZXIgd3JvdGU6Cj4gQ3VycmVudGx5IHdlIGFyZSBvYnNlcnZpbmcgb2NjYXNp
b25hbGx5IGRpc3BsYXkgZmxpY2tlcmluZyBvcgo+IGNvbXBsZXRlCj4gZnJlZXplLiBUaGlzIGlz
IG5hcnJvd2VkIGRvd24gdG8gYmUgY2F1c2VkIGJ5IHNpbmdsZSBmdWxsIGZyYW1lCj4gdXBkYXRl
Cj4gKFNGRikuCj4gCj4gU0ZGIGJpdCBhZnRlciBpdCdzIHdyaXR0ZW4gZ2V0cyBjbGVhcmVkIGJ5
IEhXIGluIHN1YnNlcXVlbnQgdmJsYW5rCj4gaS5lLiB3aGVuIHRoZSB1cGRhdGUgaXMgc2VudCB0
byB0aGUgcGFuZWwuIFNGRiBiaXQgaXMgcmVxdWlyZWQgdG8gYmUKPiB3cml0dGVuIHRvZ2V0aGVy
IHdpdGggcGFydGlhbCBmcmFtZSB1cGRhdGUgKFBGVSkgYml0LiBBZnRlciB0aGUgYml0Cj4gZ2V0
cyBjbGVhcmVkIGJ5IHRoZSBIVyBwc3IyIG1hbiB0cmsgY3RsIHJlZ2lzdGVyIHN0aWxsIGNvbnRh
aW5zIFBGVQo+IGJpdC4gSWYgdGhlcmUgaXMgc3Vic2VxdWVudCB1cGRhdGUgZm9yIGFueSByZWFz
b24gd2Ugd2lsbCBlbmQgdXAKPiBoYXZpbmcgc2VsZWN0aXZlIHVwZGF0ZS9mZXRjaCBjb25maWd1
cmF0aW9uIHdoZXJlIHN0YXJ0IGxpbmUgaXMgMCBhbmQKPiBlbmQgbGluZSBpcyAwLiBBbHNvIHNl
bGVjdGl2ZSBmZXRjaCBjb25maWd1cmF0aW9uIGZvciB0aGUgcGxhbmVzIGlzCj4gbm90IHByb3Bl
cmx5IHBlcmZvcm1lZC4gVGhpcyBzZWVtcyB0byBiZSBjYXVzaW5nIHByb2JsZW1zIHdpdGggc29t
ZQo+IHBhbmVscy4KPiAKPiBGaXggdGhpcyBieSB1c2luZyBjb250aW51b3VzIGZ1bGwgZnJhbWUg
dXBkYXRlIGluc3RlYWQgYW5kIHN3aXRjaCB0bwo+IHBhcnRpYWwgZnJhbWUgdXBkYXRlIG9ubHkg
d2hlbiBzZWxlY3RpdmUgdXBkYXRlIGFyZWEgaXMgcHJvcGVybHkKPiBjYWxjdWxhdGVkIGFuZCBj
b25maWd1cmVkLgo+IAo+IFRoaXMgaXMgYWxzbyB3b3JrYXJvdW5kIGZvciBIU0QgMTQwMTQ5NzE1
MDgKPiAKPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4KPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4g
Q2M6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+Cj4gCj4gUmVwb3J0ZWQtYnk6
IExlZSBTaGF3biBDIDxzaGF3bi5jLmxlZUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSm91
bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+Cj4gLS0tCj4gwqBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMjEgKystLS0tLS0tLS0tLS0tLS0t
LS0tCj4gwqAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxOSBkZWxldGlvbnMoLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
Ywo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+IGluZGV4IDVi
Njc4OTE2ZTZkYi4uNDFiMDcxOGViM2ExIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jCj4gQEAgLTE0ODAsMTMgKzE0ODAsNiBAQCBzdGF0aWMgdTMyIG1hbl90
cmtfY3RsX2VuYWJsZV9iaXRfZ2V0KHN0cnVjdAo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgUFNSMl9NQU5fVFJLX0NUTF9FTkFC
TEU7Cj4gwqB9Cj4gwqAKPiAtc3RhdGljIHUzMiBtYW5fdHJrX2N0bF9zaW5nbGVfZnVsbF9mcmFt
ZV9iaXRfZ2V0KHN0cnVjdAo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+IC17Cj4gLcKg
wqDCoMKgwqDCoMKgcmV0dXJuIElTX0FMREVSTEFLRV9QKGRldl9wcml2KSB8fCBESVNQTEFZX1ZF
UihkZXZfcHJpdikgPj0KPiAxNCA/Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEFETFBf
UFNSMl9NQU5fVFJLX0NUTF9TRl9TSU5HTEVfRlVMTF9GUkFNRSA6Cj4gLcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIFBTUjJfTUFOX1RSS19DVExfU0ZfU0lOR0xFX0ZVTExfRlJBTUU7Cj4gLX0K
PiAtCj4gwqBzdGF0aWMgdTMyIG1hbl90cmtfY3RsX3BhcnRpYWxfZnJhbWVfYml0X2dldChzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZQo+ICpkZXZfcHJpdikKPiDCoHsKPiDCoMKgwqDCoMKgwqDCoMKg
cmV0dXJuIElTX0FMREVSTEFLRV9QKGRldl9wcml2KSB8fCBESVNQTEFZX1ZFUihkZXZfcHJpdikg
Pj0KPiAxNCA/Cj4gQEAgLTE1MTAsNyArMTUwMyw3IEBAIHN0YXRpYyB2b2lkIHBzcl9mb3JjZV9o
d190cmFja2luZ19leGl0KHN0cnVjdAo+IGludGVsX2RwICppbnRlbF9kcCkKPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgUFNSMl9N
QU5fVFJLX0NUTChpbnRlbF9kcC0KPiA+cHNyLnRyYW5zY29kZXIpLAo+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtYW5fdHJrX2N0
bF9lbmFibGVfYml0X2dldChkZXZfcHJpdikgfAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoAo+IG1hbl90cmtfY3RsX3BhcnRpYWxf
ZnJhbWVfYml0X2dldChkZXZfcHJpdikgfAo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgCj4gbWFuX3Rya19jdGxfc2luZ2xlX2Z1bGxf
ZnJhbWVfYml0X2dldChkZXZfcHJpdikpOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgCj4gbWFuX3Rya19jdGxfY29udGludW9zX2Z1
bGxfZnJhbWUoZGV2X3ByaXYpKTsKPiDCoAo+IMKgwqDCoMKgwqDCoMKgwqAvKgo+IMKgwqDCoMKg
wqDCoMKgwqAgKiBEaXNwbGF5IFdBICMwODg0OiBza2wrCj4gQEAgLTE2MjQsMTEgKzE2MTcsNyBA
QCBzdGF0aWMgdm9pZCBwc3IyX21hbl90cmtfY3RsX2NhbGMoc3RydWN0Cj4gaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSwKPiDCoMKgwqDCoMKgwqDCoMKgdmFsIHw9IG1hbl90cmtfY3RsX3Bh
cnRpYWxfZnJhbWVfYml0X2dldChkZXZfcHJpdik7Cj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKgaWYg
KGZ1bGxfdXBkYXRlKSB7Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qCj4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIE5vdCBhcHBseWluZyBXYV8xNDAxNDk3MTUw
ODphZGxwIGFzIHdlIGRvIG5vdAo+IHN1cHBvcnQgdGhlCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAqIGZlYXR1cmUgdGhhdCByZXF1aXJlcyB0aGlzIHdvcmthcm91bmQuCj4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqLwo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqB2YWwgfD0KPiBtYW5fdHJrX2N0bF9zaW5nbGVfZnVsbF9mcmFtZV9iaXRfZ2V0KGRl
dl9wcml2KTsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdmFsIHw9IG1hbl90cmtf
Y3RsX2NvbnRpbnVvc19mdWxsX2ZyYW1lKGRldl9wcml2KTsKPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoGdvdG8gZXhpdDsKPiDCoMKgwqDCoMKgwqDCoMKgfQo+IMKgCj4gQEAgLTIz
MDYsMTYgKzIyOTUsMTAgQEAgc3RhdGljIHZvaWQgX3Bzcl9mbHVzaF9oYW5kbGUoc3RydWN0IGlu
dGVsX2RwCj4gKmludGVsX2RwKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYg
KGludGVsX2RwLT5wc3IucHNyMl9zZWxfZmV0Y2hfY2ZmX2VuYWJsZWQpIHsKPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAvKiBjYW4gd2UgdHVybiBDRkYg
b2ZmPyAqLwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGlmIChpbnRlbF9kcC0+cHNyLmJ1c3lfZnJvbnRidWZmZXJfYml0cyA9PSAwKQo+IHsKPiAtwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqB1MzIgdmFsID0KPiBtYW5fdHJrX2N0bF9lbmFibGVfYml0X2dldChkZXZfcHJpdikgfAo+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoAo+IG1hbl90cmtfY3RsX3BhcnRpYWxfZnJhbWVfYml0X2dl
dChkZXZfcHJpdikgfAo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoAo+IG1hbl90cmtfY3RsX3Np
bmdsZV9mdWxsX2ZyYW1lX2JpdF9nZXQoZGV2X3ByaXYpOwo+IC0KPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLyoKPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgICogdHVybiBjb250aW51b3VzIGZ1bGwgZnJhbWUgb2ZmIGFuZAo+IGRvIGEgc2luZ2xlCj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCAqIGZ1bGwgZnJhbWUKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICovCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfZGVfd3JpdGUo
ZGV2X3ByaXYsCj4gUFNSMl9NQU5fVFJLX0NUTChpbnRlbF9kcC0+cHNyLnRyYW5zY29kZXIpLAo+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdmFsKTsKPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxf
ZGVfd3JpdGUoZGV2X3ByaXYsCj4gQ1VSU1VSRkxJVkUoaW50ZWxfZHAtPnBzci5waXBlKSwgMCk7
Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoGludGVsX2RwLQo+ID5wc3IucHNyMl9zZWxfZmV0Y2hfY2ZmX2VuYWJsZWQgPSBm
YWxzZTsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9
Cgo=
