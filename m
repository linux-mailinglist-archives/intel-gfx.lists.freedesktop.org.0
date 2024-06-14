Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 046FD908FE4
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 18:17:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37F1A10EDC9;
	Fri, 14 Jun 2024 16:17:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CmJT5/z1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7791910EDD0
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2024 16:17:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718381835; x=1749917835;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=9o932J39DKDGsVCKCrGNVrfNwCCIX8Tdq/+Wn7v8F18=;
 b=CmJT5/z1YrtgEYUB9ZBTMaEOyhRhzKNLY8+CtzTcVlBlJ7dQUvbjixht
 tp5zd5vw5tUbdrDPotNC0deTtwPb0SgJ0PNNTLOTij7S70/F6qelJg1E9
 AV/Yqs4l2lzN5oIo+0UTVkHdI18siX1rxUkbjS2LEvghOGAVpAI2/XAWt
 7Xhd5OpsloBVu5Qopv5ZDDUY4psSnX4kTGvGMvRdYqaeriiYIP/kHFVyO
 +mFTIAQ1lBasxsvH6pAQt9rhWIf1jOYDmGjvbjJ721/MGvnsyfEtcCguy
 oQphP2c8ucGGxPxEV+1Np0R9BMFqGhgR6DC4mEEmAGDQWz/veRN/81skg Q==;
X-CSE-ConnectionGUID: 3r8rc+rrS7aB4u0ejDzn+A==
X-CSE-MsgGUID: D3lcmI2vRZ2rjDzK6DbyAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11103"; a="15110318"
X-IronPort-AV: E=Sophos;i="6.08,238,1712646000"; d="scan'208";a="15110318"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 09:17:14 -0700
X-CSE-ConnectionGUID: VB82glsrSgaXS/1n7MEsAQ==
X-CSE-MsgGUID: pYVc0/z1RFedAphL7F82Ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,238,1712646000"; d="scan'208";a="40464173"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Jun 2024 09:17:13 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 14 Jun 2024 09:17:13 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 14 Jun 2024 09:17:12 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 14 Jun 2024 09:17:12 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 14 Jun 2024 09:17:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ag2sbbEWBtTksQf3LEvn0I+AEzQDV3z6lp1yF+CImSmIb1oYK7L8TZ8cugpHKFAlHFulpRW7keo6D5AyQf7BbnZ8vZCQrT+suZ+7gGcI7B9q6jFdo49bb6arIlz/chpUMmRZy8Din0c9ZYBAVTV/c75jSQFpgTJylDM2dcHs0/zIn1EuC6o1N22Udkx+5sJGSbjssoPACiFt71BC9O8fVpkcX8ZVRFDpDdPd0Jid1x2pZ8EuT7q9KaoYQG6tHKJmgR/FeQBcv/uLL5l5Od8NR5VQtDZ26UJeiYFVDEHoSY09K/433y+BuvA/MXV6JpxSbq2VvYkXyH2hd8D3dQ6W3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9o932J39DKDGsVCKCrGNVrfNwCCIX8Tdq/+Wn7v8F18=;
 b=AxhvhSHcgD+CpPvH8rmK7+gmYU+oFdGTap0G2mKrPm32Y5xcWjAF0KTQ0JxCWwV7YQzCTGMkckHeerVDOPS+vn3RQrlDYY+ZEx5aR0QzJ03Uz+KMjMqa7awJdJXhsetVFepcopAwb00jn6UkqqbN/9yycNLIemS/e17VlhW+EAyOipPhNcE5Hubxbx5qPy6Tm/GrGoM4aXANN+s9zcTxm63Ss2gi/Dk78cTkZDBUwiRppvfqbhONLW7AmEy5+w4z10+Fd5hB5/HSfBV6crS0OzFOuqQPWftHmYoj1lOFliax7za5qbKvXwjlF3YZ+Phfvj9mEEC6bKWFP+q8Cn1QSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SA1PR11MB8474.namprd11.prod.outlook.com (2603:10b6:806:3ac::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.25; Fri, 14 Jun
 2024 16:17:06 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7677.019; Fri, 14 Jun 2024
 16:17:06 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "Hogander, Jouni"
 <jouni.hogander@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v8 02/20] drm/i915/display: Wa 16021440873 is writing
 wrong register
Thread-Topic: [PATCH v8 02/20] drm/i915/display: Wa 16021440873 is writing
 wrong register
Thread-Index: AQHavXSy4G1LimbKg0aZakEJDZmWbbHHbvbQgAABkLA=
Date: Fri, 14 Jun 2024 16:17:06 +0000
Message-ID: <PH7PR11MB59816A69DB1FA2A12E1C5C47F9C22@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240613093239.1293629-1-jouni.hogander@intel.com>
 <20240613093239.1293629-3-jouni.hogander@intel.com>
 <PH7PR11MB5981BFB6E1967C55A680BDCBF9C22@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB5981BFB6E1967C55A680BDCBF9C22@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SA1PR11MB8474:EE_
x-ms-office365-filtering-correlation-id: a213c05b-b96b-4421-b72b-08dc8c8d6f07
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|366013|376011|1800799021|38070700015;
x-microsoft-antispam-message-info: =?utf-8?B?cldMS1cvQ0xvSi8xZzVpVGYwOXlYbFhoUmN1UXIyYnNvOG9zNkprdG9QYmdQ?=
 =?utf-8?B?N215U2FJV1psYjNhdjgzMUVOQUpRKzRGcWhCZjg4UXBsekJHdXhqWVpmMG9W?=
 =?utf-8?B?bWNNL2d5MDdLOFEyRFNXQlBZWGQrVDFMbWRCQmJXd0ZxNFpxYWRldTN2OVZF?=
 =?utf-8?B?Z2hUMW5TaFhlZ3BuU1Q1TzhUV3R4M3dBaEtiL1hrR1Mya3B2MXc2UCtqNjc3?=
 =?utf-8?B?WDcwOENjYnh1Y2hmRnVVMVU1QVZVdWNRRnhqb0lyYmRXYTZCRE41dm4wTmNh?=
 =?utf-8?B?Nng5SGdjYnhRTjJCbW1UcStaNTBGdXhNMUNYemVIdFBVN1RlczNiTEtNWnZS?=
 =?utf-8?B?aVRLZjI1eXFDMVFvcEI0MVFXcVo0ODJyRjIyQmhvVUZhLzBQckkvZVVFUnBt?=
 =?utf-8?B?dVR6VU9wOXR2UkRCdjRNWElIZVFWcGxVdDI2Q3RtYzNvMSsvV1RnZEhSdXpv?=
 =?utf-8?B?OEJCTkoyVUJVcmQycnl1TVFWVWZQSnQ3RGp1djBwRUFESjcwU3dVL2F4Ris1?=
 =?utf-8?B?c3oxWEdDdHlRa3NNZXVpNzVJOGR0aW5rQmpRY3F1YTE0Uk0vSklDUEN6dnNU?=
 =?utf-8?B?MjJlVkVqdUJLbjI5Yi8wendGczRzTmd4TzlOUDJBdGdvQVdhU2lCT3BhT3JS?=
 =?utf-8?B?WWdQdE9PNFovb1g3dy9lMDVieHNwY3RQY2lMVzVmTkZIL0JrZTVkd2pLaVJu?=
 =?utf-8?B?LzhBNWIySHhNU2JoaFFBV2J3RzFqTHlxN1B0cnRnYUpRM2hCOTJsWFpUSi9m?=
 =?utf-8?B?ZWNYdzYxU3oxNE9XZDVVRVhhaGVnYXZTSE9TSkUrZHM5UlphMktCeGo0UDNM?=
 =?utf-8?B?aFFYSXNSUG42a3BoaE9rVm53V01uclFiLzAycklaTkRBWXFQKzVYS29xSVpT?=
 =?utf-8?B?RGNNWkFkeHluYmo2TUhRNUgvSHZjUzNQN1lnbHQ2QnQ4NldBQWZQMS83VzV2?=
 =?utf-8?B?ZWliR2tscWNXaVJkQ1JvV01KaEpZNHJHSnlha0xIMmI1Q3NxVHAwMnlINmJU?=
 =?utf-8?B?eXpkL0U2akZoMHFDRktlMDNlR0llS1JLU0orYmY0cEZNdWI2NnFIemZsRlAr?=
 =?utf-8?B?ZFZydE9wV2hScFp4YnVxdVRvdXhvNzRTbncvRi83TXpsYTZBY3NmRk5iUEc4?=
 =?utf-8?B?NDFFL3Z3Yy9TaW5WZGt3YTVpa1c3b3AvbHVBQTNTVGRyWG0zT3FENGVjekVH?=
 =?utf-8?B?RG9BdTZDK3lhVkxjc0IxdUZyRmhCenFJckRwc0ttQzllNm16MmpyMmNiRllu?=
 =?utf-8?B?WUZwM3pxZW16RFlGZ1lMblhuMkpibnUwT294NkJjUExVUGV5cjByRXIvWGtl?=
 =?utf-8?B?VisrbXJkemc4L1poWEVhU1JDYWw4Qjcrc1B4Z2F4TkVUQ05tK3ZlenZLM29z?=
 =?utf-8?B?TkVNVm0yVzN3SmJoSjREbFhvT1cxR1FOS2hGc2htcittMjZRWUpDbCsxbW1B?=
 =?utf-8?B?ZnFyNGRmNkRQQUh6aThnQ0lickRJSmQ2TndmWGJqLy9meHpKYjNiSXlQSmtr?=
 =?utf-8?B?NHRjNlUvMGFVR2k2SFRZRDAzMG5wRmIyRVpxamFhYmcrbU5hTDE5RTNJVEcy?=
 =?utf-8?B?emdGaHRTMmpLOG1EQkZSZVpVWjBmd2k4ZXZEVkxlcHRDYzFBSUpyT0FuNUEz?=
 =?utf-8?B?Zk9hZmdvTjZiUW1TcUdhYzhtTUZWN3ZpL3ZwMzYzU3BqYzNieFgxMmxIbEps?=
 =?utf-8?B?cnpLN3JnKysyaXpIa2pqQ3cveUUrS3E3aWhzRFlwb1pIdlUwOHJNN25TTjZ2?=
 =?utf-8?B?K1VabnRJbmdQWXJZc2FjRXVHcjlRZ1ZSSlljYkcxNnVqamFXcWgxQVVkaGFV?=
 =?utf-8?Q?/H2JRG/02YHmj8pcGvmi0xD99JUU+PJSj99Ac=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(366013)(376011)(1800799021)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NGlORFdnWC9YVEM4cXo2SDlqOENVejNXcGk4Um51UXRIeHVwMWlVUDVjR3Jy?=
 =?utf-8?B?K1BONG5GM2xjU1ZHUlVqZVlVZ2tkc2tTWlliMWF4U3NJL0lkQ1ZDMUVHaTlN?=
 =?utf-8?B?NWs3WVBaOG02cWV1VzEzTk1ZcWdCRkJia0FRNmxmemRiN0x0SHBidmhsNVk4?=
 =?utf-8?B?bVVaVGY4STc0a2tOK0xnaUp0K1BaTzJ1VzFIZG50ZjNsY0NmTkNsdlJSV3dX?=
 =?utf-8?B?c0tBYzYwWWJQbVJNTlRxRzcyU29vcnVuZHNoSXhjUnJHR2Nyb0lEb1BncFJI?=
 =?utf-8?B?WHR3MFR5TVVGWXljT3RXaXo2ZGNSQ3lBQmhpZEFuaXBGZDZsS1RMQ3B1ZFVm?=
 =?utf-8?B?MzFxME5iYkpoaGNmL2pLWEpIREFBbEgzTVJuUGlQRmdOWFA0R2ZVN1p5VFdU?=
 =?utf-8?B?MU5uam92VGNIQWk3T2RHbDMvbk9CdnQrTnFseWNHWnAveHo5eVQrQTc2bXVC?=
 =?utf-8?B?M3EvU0FselgwaHpSbklJUW9GanZnajdScTd6ZGNNR1l4UDJXQ1oxQS9rZUFX?=
 =?utf-8?B?NTF0b3VsZGJpSVUreW1wK0tvUWcyekJQTU5wL2MvS2ZncjRyckVvLzJ1Ymp5?=
 =?utf-8?B?bmw0UEx5S3dsTS9vcDFjRm9pblgwRFVwUDVCWVg1SUdNQkx6UDN2dUYvUGZR?=
 =?utf-8?B?ajl1b2I0MFY4blUxeXJ6RytrS1I1L0JLajlVT25zcU9uRkdQUjNMSUZxc2xZ?=
 =?utf-8?B?VGVCY3hCZ08zd1IweTA3Y2FQZHh3WmluMjAzUGcwbk5HUjQ4RkFYVGo3K3Ri?=
 =?utf-8?B?b21uWDZQMzJZOTBTcVcyZUNGUXh1U2tkWEtHZ1dSRWxsbmk2VXN3R21Hd284?=
 =?utf-8?B?azNtVnQrWDVwT2ZxdGNpOGRsNWMyWExaM09DZTFJaVd4QnNiRVh1b0ZldVNl?=
 =?utf-8?B?Nmg5MzZlUC9KSTdpWjRBRlMzQmk0dVFSTExDRnpwR3MwR2tLTUsyZ2VYVFd2?=
 =?utf-8?B?V1lRRTQyNkFTN0VGdXhnbTFmT2REamFKVjEyMXRISTJpSE9HdlF1eUJHakdX?=
 =?utf-8?B?SHRVRUllN1ltQjZwblFyOEE0Uy9NNXV2UUZ0ejc5cjh6Y0RVL0g0Q0NIWHN2?=
 =?utf-8?B?TUtQQzl3c0ZWK2lMOEpaRXYrSVRiVW5yNFFLbnViWHo3Nk83ZVJ5ek1lQzJH?=
 =?utf-8?B?c1JRTDhkS1piQUFvSTZjVVNaQWkyS0t5aTExVjN3QzNrQ3hzQmpodkd2dnZZ?=
 =?utf-8?B?ekZ4SU15T3B4TWZjK3JzUlNJYVhGeVMzTHZJdmxJY3BEaTFhYlIxdjRnTUFi?=
 =?utf-8?B?NmcxMXYreWo3L3g5b25SOHl1aGVPWjhlcWJhV1lreGpxdFRCMDkrU2NiL0hQ?=
 =?utf-8?B?R0NFa2xkaUd1RjIwT0VHbG10cE9WV0dWUWRFU3p0YnpoS1ArR3NZRTFQS3pj?=
 =?utf-8?B?RldhOWdudFh1SGY0OVVRL2JQU3QzeUJZdC9tMkVCV3RNNTNjUnppMWxXWnFO?=
 =?utf-8?B?eXVneWNXWFRTOUpRbWNuS0FOYU9aTWFDYk5DaExrNjJNSHZOVWN0dmc3TDl6?=
 =?utf-8?B?bk5qR2YwK2J5ekJxTnM4QWl2NklmV1lrZTJFWm1qVmkwNGRpdjRnbEIzYUll?=
 =?utf-8?B?L1h1SlBlTkZuNnR4eEdLcVBTcHh3dEdlMXBhMjhHWVkrN01heWhRNDM1Z3Ro?=
 =?utf-8?B?Q0R3UXpFZE43YnRiR1FUOWlGN2tnN0dYdkw5a1FOT1h3SmtmNmdqc1d0ci9h?=
 =?utf-8?B?OXJmZUI0QTc0WVZYa1AzQlRYYWdGOG9kRytkcmV1c0FxZkhiSGdBQ1lqcmhy?=
 =?utf-8?B?T00rWnNnaUVBR0NVZFFtQ1JxbkQ3QXMya0ZuSFBzTy8wYlFoRFhjS1Y5M1gw?=
 =?utf-8?B?TEFqZ3BxaUpRTFJBT1d5a2JOam5XdEpCakFyUGR5YXc5cWtmNlZCSGNxOHVa?=
 =?utf-8?B?SGxlNm1ud0IxTXJ6a0FXMXQvV1pZNmVaQnRJWWdMeWxyMDQwaENvS2lKWDhH?=
 =?utf-8?B?MklmSGdoeTJKUDdoUlN3SWVGT1A0akJqcjIwS0VYSlVOWGlhTlBPQVN1TmRT?=
 =?utf-8?B?ZDZaVkh0Y1JMc2dUQTcxT3dGZkdwc29ycnR6MFVpSXBsR1FGaEhPcEp5U005?=
 =?utf-8?B?c2xtVGJIekFOMS9rcXZHQmIyc0JUaTFrdFEzMEpyZlgzYVRXeWFvTlZxTExP?=
 =?utf-8?Q?QXtZ3YKE6KOtpONPyiFHsuzVv?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a213c05b-b96b-4421-b72b-08dc8c8d6f07
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2024 16:17:06.0284 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +xexDGGLp/Nw33T2VORAL/+6LXIbaYPT6FwNAgI9xiWKeHdgY0quI4B4tqcbIEhhz3WnG0bLYLkvxPI77GVCoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8474
X-OriginatorOrg: intel.com
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTWFubmEsIEFuaW1lc2gN
Cj4gU2VudDogRnJpZGF5LCBKdW5lIDE0LCAyMDI0IDk6NDEgUE0NCj4gVG86IEhvZ2FuZGVyLCBK
b3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPjsgaW50ZWwtDQo+IGdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcNCj4gQ2M6IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0K
PiBTdWJqZWN0OiBSRTogW1BBVENIIHY4IDAyLzIwXSBkcm0vaTkxNS9kaXNwbGF5OiBXYSAxNjAy
MTQ0MDg3MyBpcyB3cml0aW5nDQo+IHdyb25nIHJlZ2lzdGVyDQo+IA0KPiANCj4gDQo+ID4gLS0t
LS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBIb2dhbmRlciwgSm91bmkgPGpvdW5p
LmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiBTZW50OiBUaHVyc2RheSwgSnVuZSAxMywgMjAyNCAz
OjAyIFBNDQo+ID4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBDYzog
TWFubmEsIEFuaW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPjsgS2Fob2xhLCBNaWthDQo+
ID4gPG1pa2Eua2Fob2xhQGludGVsLmNvbT47IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5k
ZXJAaW50ZWwuY29tPg0KPiA+IFN1YmplY3Q6IFtQQVRDSCB2OCAwMi8yMF0gZHJtL2k5MTUvZGlz
cGxheTogV2EgMTYwMjE0NDA4NzMgaXMgd3JpdGluZw0KPiA+IHdyb25nIHJlZ2lzdGVyDQo+ID4N
Cj4gPiBXYSAxNjAyMTQ0MDg3MyBpcyB3cml0aW5nIHdyb25nIHJlZ2lzdGVyLiBJbnN0ZWFkIG9m
DQo+ID4gUElQRV9TUkNTWl9FUkxZX1RQVCB3cml0ZSBDVVJQT1NfRVJMWV9UUFQuDQo+ID4NCj4g
PiB2MjogdXNlIHJpZ2h0IG9mZnNldCBhcyB3ZWxsDQo+ID4NCj4gPiBGaXhlczogMjljZGVmODUz
OWMzICgiZHJtL2k5MTUvZGlzcGxheTogSW1wbGVtZW50IFdhXzE2MDIxNDQwODczIikNCj4gPiBT
aWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4N
Cj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jdXJzb3Iu
YyB8ICA0ICsrLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
YyAgICB8IDEyICsrKy0tLS0tLS0tLQ0KPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9u
cygrKSwgMTEgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jdXJzb3IuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jdXJzb3IuYw0KPiA+IGluZGV4IGNlYTBjZmVkNTY5ZC4uNmVhNzY2
ODdkZDE0IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY3Vyc29yLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2N1cnNvci5jDQo+ID4gQEAgLTUyNCw4ICs1MjQsOCBAQCBzdGF0aWMgdm9pZCB3YV8xNjAyMTQ0
MDg3MyhzdHJ1Y3QgaW50ZWxfcGxhbmUNCj4gPiAqcGxhbmUsDQo+ID4NCj4gPiAgCWludGVsX2Rl
X3dyaXRlX2Z3KGRldl9wcml2LCBTRUxfRkVUQ0hfQ1VSX0NUTChwaXBlKSwgY3RsKTsNCj4gPg0K
PiA+IC0JaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIFBJUEVfU1JDU1pfRVJMWV9UUFQocGlwZSks
DQo+ID4gLQkJICAgICAgIFBJUEVTUkNfSEVJR0hUKGV0X3lfcG9zaXRpb24pKTsNCj4gPiArCWlu
dGVsX2RlX3dyaXRlKGRldl9wcml2LCBDVVJQT1NfRVJMWV9UUFQoZGV2X3ByaXYsIHBpcGUpLA0K
PiA+ICsJCSAgICAgICBDVVJTT1JfUE9TX1koZXRfeV9wb3NpdGlvbikpOw0KPiA+ICB9DQo+ID4N
Cj4gPiAgc3RhdGljIHZvaWQgaTl4eF9jdXJzb3JfdXBkYXRlX3NlbF9mZXRjaF9hcm0oc3RydWN0
IGludGVsX3BsYW5lDQo+ID4gKnBsYW5lLCBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiA+IGluZGV4IDY2YWI4YWJkMGEwNC4uNDQxNDRkY2ZiMWEzIDEwMDY0
NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gQEAg
LTIxNjQsMTkgKzIxNjQsMTQgQEAgc3RhdGljIHZvaWQgcHNyMl9tYW5fdHJrX2N0bF9jYWxjKHN0
cnVjdA0KPiA+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ID4gIAljcnRjX3N0YXRl
LT5wc3IyX21hbl90cmFja19jdGwgPSB2YWw7ICB9DQo+ID4NCj4gPiAtc3RhdGljIHUzMg0KPiA+
IC1wc3IyX3BpcGVfc3Jjc3pfZWFybHlfdHB0X2NhbGMoc3RydWN0IGludGVsX2NydGNfc3RhdGUg
KmNydGNfc3RhdGUsDQo+ID4gLQkJCSAgICAgICBib29sIGZ1bGxfdXBkYXRlLCBib29sIGN1cnNv
cl9pbl9zdV9hcmVhKQ0KPiA+ICtzdGF0aWMgdTMyIHBzcjJfcGlwZV9zcmNzel9lYXJseV90cHRf
Y2FsYyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSwNCj4gPiArCQkJCQkg
IGJvb2wgZnVsbF91cGRhdGUpDQo+ID4gIHsNCj4gPiAgCWludCB3aWR0aCwgaGVpZ2h0Ow0KPiA+
DQo+ID4gIAlpZiAoIWNydGNfc3RhdGUtPmVuYWJsZV9wc3IyX3N1X3JlZ2lvbl9ldCB8fCBmdWxs
X3VwZGF0ZSkNCj4gPiAgCQlyZXR1cm4gMDsNCj4gPg0KPiA+IC0JaWYgKCFjdXJzb3JfaW5fc3Vf
YXJlYSkNCj4gPiAtCQlyZXR1cm4gUElQRVNSQ19XSURUSCgwKSB8DQo+ID4gLQkJCVBJUEVTUkNf
SEVJR0hUKGRybV9yZWN0X2hlaWdodCgmY3J0Y19zdGF0ZS0NCj4gPiA+cGlwZV9zcmMpKTsNCj4g
PiAtDQo+IA0KPiBTaG91bGQgdGhlIFBJUEVTUkNfV0lEVEgoKSByZWxhdGVkIGNoYW5nZXMgZ28g
d2l0aCBwYXRjaDE/DQo+IE5vdCBzdXJlIHdoeSBpdCBpcyBhZGRlZCB3aXRoIHRoaXMgcGF0Y2gg
d2hpY2ggY29ycmVjdCB0aGUgcmVnaXN0ZXIgb2Zmc2V0DQo+IHZhbHVlLg0KPiANCj4gUmVnYXJk
cywNCj4gQW5pbWVzaA0KDQpHb29kIHRvIGdldCByZXZpZXdlZCBwYXRjaDEgYW5kIHBhdGNoMiBm
cm9tIHNvbWVvbmUgd2hvIGhhcyB3b3JrZWQgb3IgcmV2aWV3ZWQgaW5pdGlhbCBwYXRjaC4NCk1p
a2EsIENhbiB5b3UgcGxlYXNlIGhlbHAgaGVyZS4gDQoNClJlZ2FyZHMsDQpBbmltZXNoDQo+IA0K
PiA+ICAJd2lkdGggPSBkcm1fcmVjdF93aWR0aCgmY3J0Y19zdGF0ZS0+cHNyMl9zdV9hcmVhKTsN
Cj4gPiAgCWhlaWdodCA9IGRybV9yZWN0X2hlaWdodCgmY3J0Y19zdGF0ZS0+cHNyMl9zdV9hcmVh
KTsNCj4gPg0KPiA+IEBAIC0yNDg1LDggKzI0ODAsNyBAQCBpbnQgaW50ZWxfcHNyMl9zZWxfZmV0
Y2hfdXBkYXRlKHN0cnVjdA0KPiA+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gIHNr
aXBfc2VsX2ZldGNoX3NldF9sb29wOg0KPiA+ICAJcHNyMl9tYW5fdHJrX2N0bF9jYWxjKGNydGNf
c3RhdGUsIGZ1bGxfdXBkYXRlKTsNCj4gPiAgCWNydGNfc3RhdGUtPnBpcGVfc3Jjc3pfZWFybHlf
dHB0ID0NCj4gPiAtCQlwc3IyX3BpcGVfc3Jjc3pfZWFybHlfdHB0X2NhbGMoY3J0Y19zdGF0ZSwg
ZnVsbF91cGRhdGUsDQo+ID4gLQkJCQkJICAgICAgIGN1cnNvcl9pbl9zdV9hcmVhKTsNCj4gPiAr
CQlwc3IyX3BpcGVfc3Jjc3pfZWFybHlfdHB0X2NhbGMoY3J0Y19zdGF0ZSwgZnVsbF91cGRhdGUp
Ow0KPiA+ICAJcmV0dXJuIDA7DQo+ID4gIH0NCj4gPg0KPiA+IC0tDQo+ID4gMi4zNC4xDQoNCg==
