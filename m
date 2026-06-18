Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id I5PKF9iyM2rIFAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2026 10:56:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B392869EA48
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2026 10:56:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=SDK9Gp08;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7959D10ED64;
	Thu, 18 Jun 2026 08:56:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4592C10ED5A;
 Thu, 18 Jun 2026 08:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781773013; x=1813309013;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=m+/wbhJkNTqDmelGuATxNEwK09+nXu6BVddvUVtm0y0=;
 b=SDK9Gp08ZV96xZdy5+gjrcVn11EfwMiZLJNJ9yxyhTmPX61ycc6f452c
 N1Jk6bByBtetPRMggWmF9DZUqnbiBrRpU4wf5jeAI9n5abQmfNDO0lYvS
 pVQXkrQEnd86+yxKDUQNpXtrbQO6HVkm6iGbnMSXgTRnCcBjRMXCjg0Uq
 gb/yecBVElmHk61r+bAQ3oR9YUnd060SZlSoZ2Q6jVRSfEChxe5plSKHQ
 H5EVJdaxHhS5d5gUEflEn0iZvKRLM6v8t0ISohNe+N/jg6irMqGR62for
 It5FhbzfPxdl+sqI2l8WieBJFY4hRok0eZ9tAdzEBP2HmNXvidz39J79C A==;
X-CSE-ConnectionGUID: OaKMW5sKQNipWhYXpzd9vQ==
X-CSE-MsgGUID: OyZyISNeRc61y6jHwbAX2Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11820"; a="86444086"
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600"; d="scan'208";a="86444086"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 01:56:52 -0700
X-CSE-ConnectionGUID: aLyH3CwuSn+qT7bRHGRYiA==
X-CSE-MsgGUID: 3F9iqrUmQa2f88eQwN9GzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600"; d="scan'208";a="252628443"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 01:56:51 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 18 Jun 2026 01:56:51 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 18 Jun 2026 01:56:51 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.51) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 18 Jun 2026 01:56:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JSru8gW6dOmFcE81vO0RszuCarO4u5QJ/YVUtOff7nas2xhs0KZ4vkDYmku11Egp6t+NJlhhF4NG1NV1It7qpLQOo43K5ZwI/iZJe1Gp7iXDd2HDvWvZnV/P4GG5dnzq0afHqty9668+oxajRaS+nVQTdBL3aiIAjDQ3TLVES83QC69PvZAYKEy8rRESsooL9oInV1ZkkTefRHuqjh1ZaEK4tU0rnxWfQL8TRzk+xvpwPF2OWDV/ZCbq5DKaCp3MmrmJZ14F1m4aZDPuCOSg+izn1eYb6XCQENDnTaUdCPsMVdVdA7Sj4F7rHm+f6gzgdtffgOBGpnqhRQofKYOX1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m+/wbhJkNTqDmelGuATxNEwK09+nXu6BVddvUVtm0y0=;
 b=lFcbqDK1wlS22BSTd3QsO2aFfeS1phyxEqVLRV6yIh6s3h5dyz6DxHxuQroguluI1unkprqD5qyxzRV7c1RvCnjX4n0fEs5aEjN5cI7SOBkcy3HKEtdLi0djxI5gEaMgeTCcKTt3Mm8UPvtXXXCcFpK4/Y4sNUxKQ+dAxDeHNHKeFEqUCQV1OSUa5+AAz5LD5+jQHLOzCX4Yu5qF08gGCWcVy7LrCQrt3hPoYW51K20ArqprGG0og5FfVdhDvQMTSLxmOhPiz4f/+9+aEypZC6dFMgho5C39Z64Tz/QXXwh2H4ethGK9rtfLFOPQkNsTD0UMfl3jG5dohoug8QxsCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 SA2PR11MB5211.namprd11.prod.outlook.com (2603:10b6:806:fb::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.113.18; Thu, 18 Jun 2026 08:56:48 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0113.015; Thu, 18 Jun 2026
 08:56:48 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH 1/3] drm/i915/psr: Split intel_psr_short_pulse
Thread-Topic: [PATCH 1/3] drm/i915/psr: Split intel_psr_short_pulse
Thread-Index: AQHc+iz9N4CknKuHxE69BVYWnRL217ZEBX2g
Date: Thu, 18 Jun 2026 08:56:48 +0000
Message-ID: <DS0PR11MB8049C2756485E0F2F20678CBF9E32@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260612053249.246878-1-jouni.hogander@intel.com>
 <20260612053249.246878-2-jouni.hogander@intel.com>
In-Reply-To: <20260612053249.246878-2-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|SA2PR11MB5211:EE_
x-ms-office365-filtering-correlation-id: 6ecf2011-bace-4aa5-726c-08decd178831
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|23010399003|376014|1800799024|56012099006|4143699003|11063799006|6133799003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: QhmNeisiF3bb3KdRfJ1NAaCif8XbFNorhxi4S59eDzfWl3b+OyPccncuIxEYN4Tdud7jasGoYSvzAfgO0mwSasIvvzycZGp8hdpcFRT0uv0Ew4patT49RdtHMQDgJ1Hjy9eXcY/ykqg1mh2LZ6aSK4eaKyd838p1KWhqgtPmNC0grEZY+YNO7E6Jv4ask4ih641hLeeywOgmYZ7lvLOjK5Ix2eMm6WcgzOEfWkd/WNZo1v9yjF39OXqZpISecyrDNRrpLHArcW8j5UyIbdonPzksV99Giolfm3DucrLm1q/5NOsoL5uu/FH3KE2fG3zU9gJaegdOdv6bI7RU2q0gwqJsooXVfOKS9tbp142rG34uLB8pRjQlzGdyROl5ysAGctkKG1suxf39aAIejTph/uGMHgf7jb4fKtn0CJHeyiOBmHDjU6uf2cH6G1e4SuXNQPdSKB0i7k3ZKDy1aw+bUVmeZA7cbaAcoEoE16qnfFknfkpaMhTvyApGvPqjdNC7uk3x4ooly/lyjPAsDeEnxUWhhUWxG4jE3swvRZkQNSNtG78Fe3QTWg2c/qMmjARckQaqxjDZ2J29FfAkngiDu2r2BJnc1dyjnj2humKUzdy+yPxajwoPfsmnnezXJsI6AbDf9/f3eoOqoJszLrVDU44GdNSZI7wn2zhUDMSmfCAxb+mY8D50jpx4JeRN27ZHo98xvv8FFekJVHyc6AYzp0trxaO8DephLaZbURv5VyPV4Xq4kmCyrdaSVNxaxpl8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(376014)(1800799024)(56012099006)(4143699003)(11063799006)(6133799003)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bUZTMlc4K1lpTmg3U3dqOGJFbStDZ2x6S0ZOZU5kdEkremJtbzZhNGplL1dj?=
 =?utf-8?B?S3A1MkVTNFlObk03Q0s4aE4yVXVRdCtkZUEvM3hNYm9PbU9qMzloYjVwcEFk?=
 =?utf-8?B?MUdkeUtvUHJ2WkdxZktlMktlRWpMeDhrbkxFZERacmZZZE12YkRtZTVBTkJP?=
 =?utf-8?B?MGdhdUpJdDd1aVp1YUwzN0x6NlgzRDZZRVdrNzJIWDV4RmJDb05xWThYWUVt?=
 =?utf-8?B?dUNZeUpOL1kwOHVWQzFQdmhGVC9SY1laYTFwOEozcXRqNmlQS2hoMTd3N3F4?=
 =?utf-8?B?aUFJdXkwRS81dCs3Z3NPTEJ1ZlNVdTlTZ3J1VkFMYjJnZUtIQm4zaW1DVjdo?=
 =?utf-8?B?Y2o3VllFV2FOUDNUSWExKzAwWlNlaXBRektEcVdKeWgzOVFhWERXM2ZpSlZv?=
 =?utf-8?B?dlBOdFVZeW4wb2FnelE3enJxb29meHRwdmtqQ3dZYkRDWFBDbGJjeWxLOGNR?=
 =?utf-8?B?VUdvaDhXNldNdlY3ZjB4R3RGOVN0aGlOV1Y0T0VzYmlvdVN0dnpKK3E0Z1c1?=
 =?utf-8?B?VzJTVExXeFRndFVJRzBDY3pEaTgxQ2Q0MWRjc09leXppVGhUZjdqNkZZWVBT?=
 =?utf-8?B?Y1dIcnM3QlJwMGErMStKQlcyYVI1R2FIU1p2K2pqNEN0QlpXRFE0aTRjR2ls?=
 =?utf-8?B?eW85VFlNQUZHZ05PbUx0QjdtK0Z2UllSUUJnYlhzdnIvSnNQNWdZSmhTVzF1?=
 =?utf-8?B?dFZ5OFlyRFpSWXJqdFRxQ1paV1BqMnRpbm95eEdRVFJWTzFZcHRQZDkwbndX?=
 =?utf-8?B?Q0RaT1VVYktwOWNIQyswb0U1QXBIR3dsc1pPclg1aEFXQXlmUE1MUDJZSlBP?=
 =?utf-8?B?eFVVKzZWME5JUHJ3R3hRS2JyKy93eFkxSVUrekhUTjhMY2piMGsrQmJuR0ph?=
 =?utf-8?B?b0xjeW0vK1JVTDc1MnpEdVZjYVI4MjdTNmtOTVFzc0Z2RjM2YU90ampwNVJI?=
 =?utf-8?B?WnI2dUdrOERpbkppbGlQcytJbU1CdGNKalNXalJqaXVjWnloNFFQNkJyTFlw?=
 =?utf-8?B?TzE0TWl0TGlMeVdJam1vTDRUbllWdzVJOVZpRzhHbW9SMUs0OTk4RVdwK25h?=
 =?utf-8?B?RndnTS9NZ2JVcDgyNGZFcGNwT29XNDhJbXgxL0JuQXdvSEZYU3M0UThyL1h3?=
 =?utf-8?B?YkFEQTU3YTVKSGU3SlVRQ1cwUmlrWXpGL29RMEs4cXF0eWFLSUFJK3QwczFJ?=
 =?utf-8?B?S3F0TWFXUjFmUjU4SXc3a2dWazhIYUw4dkhMSWxEa3R2Nm1hQUlUa29vNG0w?=
 =?utf-8?B?Rm1JUEp0dXQxWkY1WEloeHF2WW1WU2Vvd21GbWQ0MndINFlaRjBiTk92d1hj?=
 =?utf-8?B?UEhoLzJDcE4vanhFZS9qZVlTaFBZYVJDWmJrMDAxRDVWa1AxdkJiRTkvMGtj?=
 =?utf-8?B?Zk02Uk9tQ2ZPd2hpUk1FTTQ0c05lRFVQdkY3TlFDc0FrOG93elBZZnNwZDdP?=
 =?utf-8?B?N2dKU00rZnhkYldjb3NRMWdXa1A4MmlOeGFVK0VKSXZyNVVLZVY2M2ZyV2pP?=
 =?utf-8?B?NGFmRDJjZm9HaVZZVC8yaUdIN2I5MGxqYzZaeVhrckVRTmpOSWMvdlNRd2JB?=
 =?utf-8?B?LzBmeW8yaEwyeVgwMStsYU5TVERERDRvT2MrZjFMTGdDQk54b1ZuTE1TUlAw?=
 =?utf-8?B?dElGM1N3RGwwNURmY3hNNlMxUkJsRFg0eTdoNk92UFlLTk5SejYvbERuME9N?=
 =?utf-8?B?cDFNV0tkT3lrUVlFeDdKdklpT2FOS054VUU1NTc3cThPdERMM0p2ek04WVJm?=
 =?utf-8?B?YTRKQ2xuM2xpQkpPZlR6TWdRckVCdSt2ZERCbVFlY1dUSWF5dkxQWlJuQnV4?=
 =?utf-8?B?TnM5Y29xQytCNWN4dmpqeEhVbUlsN3E2bmlITTFTUjU2WmwrRWtZbHN4b3Iz?=
 =?utf-8?B?d09JWnhKVHFQcnBMYnIxWksxZWtnbzFHbXdmMEszcUV5U2JNSVhPS1c5Nzl4?=
 =?utf-8?B?QTlQSGpHbVRUb3A0OW8yaTZqNkhlVDk0cG5jUEJBLzRYaWxza0FNOXMvM2pW?=
 =?utf-8?B?OWd2MHZHT09sQjRhVDV0MUg2eVllclhWY0hhd0Qzb1hNLzVRYWdnN1RObmpC?=
 =?utf-8?B?eTVFR2RPbCtNUFJtb0Jqb3J0V1p3dkRXNWRWd1ZraWVCUDJLb0tjZXVraEZo?=
 =?utf-8?B?ZnozTDJLTVNiYnRYZ1hBOHFxUmN0TUJ5THJNSVJjcEkva2NEQkVNM0p2SW5s?=
 =?utf-8?B?RVgyM0tOTDkwb2RmeDUySE5Xc29rc1JvUU1QU3Y1QmxrUkpHaTJ3UXQ3Zk0w?=
 =?utf-8?B?R1RCcnNPOFNjV3Q3cmIvaDFxcWtLbjlFWDBlckhWWUJZYXdFcnEvdGlzKzFh?=
 =?utf-8?B?emdPaWVvMksxNVJhRmwvYWtYeU01ZENFQitxdTRMTHVIRExuSzM3Zz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: k60LeqkAuySmYfZ/ExAFUr8KemQ9z0ZiXgFl+Wd8RAOaKT5pn0Ij11xVblN/aR1IDPXO+lNKZ9DrRXv2HdNCIuPI9pfTO7SqGnxeDiVUQIeztW2lOJy9XU0RjCgEl/cT2Cvl+Ak414XL3aeMK9ehAi/ijzQjdT0vJ011q6giMRgfKvBCKqyOXT7JetFxpDQTFZl43PnZw9ooZsW+MiUxbeQv3ecXr+m5H6d80yS8G8l4/fW9M7MNLkDrQPx129rIJWE8kmA21OaubcrEkdIQvw1k6vEw8GaFTrbUPrVovQfDDankVn+wNW0fQBEIJpdKQy2j3E/1w16snwJ7eYgEcA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ecf2011-bace-4aa5-726c-08decd178831
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2026 08:56:48.5941 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kAsv9CYKW0AvTjnidVOY1zSxZ8xUi+3Wa2SNfDQi/5004Jj0C3TTgYqUhMwxHKOrtHGb49GP6b/1fuexHaaWjw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5211
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:from_mime];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B392869EA48

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgSm91bmkNCj4g
SMO2Z2FuZGVyDQo+IFNlbnQ6IEZyaWRheSwgSnVuZSAxMiwgMjAyNiAxMTowMyBBTQ0KPiBUbzog
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnDQo+IENjOiBIb2dhbmRlciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4N
Cj4gU3ViamVjdDogW1BBVENIIDEvM10gZHJtL2k5MTUvcHNyOiBTcGxpdCBpbnRlbF9wc3Jfc2hv
cnRfcHVsc2UNCj4gDQo+IFdlIGFyZSBjdXJyZW50bHkgaGFuZGxpbmcgUGFuZWwgUmVwbGF5IGFu
ZCBQU1IgYm90aCBpbg0KPiBpbnRlbF9wc3Jfc2hvcnRfcHVsc2UuIEFzIG93biBsb2dpYyBmb3Ig
ZXJyb3IgaGFuZGxpbmcgaXMgbmVlZGVkIGZvciBQYW5lbA0KPiBSZXBsYXkgbGV0J3Mgc3BsaXQg
aXQgbm93LiBLZWVwIGZ1bmN0aW9uYWxpdHkgYXMgaXQgaXMuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5
OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgOTQgKysrKysrKysrKysr
KysrKystLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgNjYgaW5zZXJ0aW9ucygrKSwgMjggZGVs
ZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMNCj4gaW5kZXggZTEzODk4MmRjOTFmNi4uOTlkMzU3YmZkODRiNyAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0zODk5LDQ2ICszODk5LDY3
IEBAIHN0YXRpYyB2b2lkIHBzcl9jYXBhYmlsaXR5X2NoYW5nZWRfY2hlY2soc3RydWN0DQo+IGlu
dGVsX2RwICppbnRlbF9kcCkNCj4gIAl9DQo+ICB9DQo+IA0KPiAtLyoNCj4gLSAqIE9uIGNvbW1v
biBiaXRzOg0KPiAtICogRFBfUFNSX1JGQl9TVE9SQUdFX0VSUk9SID09DQo+IERQX1BBTkVMX1JF
UExBWV9SRkJfU1RPUkFHRV9FUlJPUg0KPiAtICogRFBfUFNSX1ZTQ19TRFBfVU5DT1JSRUNUQUJM
RV9FUlJPUiA9PQ0KPiBEUF9QQU5FTF9SRVBMQVlfVlNDX1NEUF9VTkNPUlJFQ1RBQkxFX0VSUk9S
DQo+IC0gKiBEUF9QU1JfTElOS19DUkNfRVJST1IgPT0gRFBfUEFORUxfUkVQTEFZX0xJTktfQ1JD
X0VSUk9SDQo+IC0gKiB0aGlzIGZ1bmN0aW9uIGlzIHJlbHlpbmcgb24gUFNSIGRlZmluaXRpb25z
DQo+IC0gKi8NCj4gLXZvaWQgaW50ZWxfcHNyX3Nob3J0X3B1bHNlKHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHApDQo+ICtzdGF0aWMgdm9pZCBfcGFuZWxfcmVwbGF5X3Nob3J0X3B1bHNlKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICB7DQo+ICAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRp
c3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGludGVsX2RwKTsNCj4gIAlzdHJ1Y3QgaW50ZWxfcHNy
ICpwc3IgPSAmaW50ZWxfZHAtPnBzcjsNCj4gLQl1OCBzdGF0dXMsIGVycm9yX3N0YXR1czsNCj4g
LQljb25zdCB1OCBlcnJvcnMgPSBEUF9QU1JfUkZCX1NUT1JBR0VfRVJST1IgfA0KPiAtCQkJICBE
UF9QU1JfVlNDX1NEUF9VTkNPUlJFQ1RBQkxFX0VSUk9SIHwNCj4gLQkJCSAgRFBfUFNSX0xJTktf
Q1JDX0VSUk9SOw0KPiArCWludCByZXQ7DQo+ICsJdTggZXJyb3Jfc3RhdHVzOw0KPiArCWNvbnN0
IHU4IGVycm9ycyA9IERQX1BBTkVMX1JFUExBWV9MSU5LX0NSQ19FUlJPUiB8DQo+ICsJCQkgIERQ
X1BBTkVMX1JFUExBWV9SRkJfU1RPUkFHRV9FUlJPUiB8DQo+ICsNCj4gRFBfUEFORUxfUkVQTEFZ
X1ZTQ19TRFBfVU5DT1JSRUNUQUJMRV9FUlJPUjsNCj4gDQo+IC0JaWYgKCFDQU5fUFNSKGludGVs
X2RwKSAmJiAhQ0FOX1BBTkVMX1JFUExBWShpbnRlbF9kcCkpDQo+ICsJcmV0ID0gZHJtX2RwX2Rw
Y2RfcmVhZF9ieXRlKCZpbnRlbF9kcC0+YXV4LA0KPiBEUF9QQU5FTF9SRVBMQVlfRVJST1JfU1RB
VFVTLA0KPiArCQkJCSAgICAmZXJyb3Jfc3RhdHVzKTsNCj4gKwlpZiAocmV0IDwgMCkNCj4gIAkJ
cmV0dXJuOw0KDQpBZGRpbmcgYSBkcm1fZXJyIHdpbGwgYmUgaGVscGZ1bCBpZiByZWFkIGZhaWxl
ZCBmb3Igc29tZSByZWFzb24gYW5kIHNpbWlsYXIgaXMgZG9uZSBmb3IgUFNSLg0KDQo+IA0KPiAt
CW11dGV4X2xvY2soJnBzci0+bG9jayk7DQo+ICsJaWYgKGVycm9yX3N0YXR1cyAmIGVycm9ycykg
ew0KPiArCQlpbnRlbF9wc3JfZGlzYWJsZV9sb2NrZWQoaW50ZWxfZHApOw0KPiArCQlwc3ItPnNp
bmtfbm90X3JlbGlhYmxlID0gdHJ1ZTsNCj4gKwl9DQo+IA0KPiAtCXBzci0+bGlua19vayA9IGZh
bHNlOw0KPiArCWlmIChlcnJvcl9zdGF0dXMgJiBEUF9QQU5FTF9SRVBMQVlfUkZCX1NUT1JBR0Vf
RVJST1IpDQo+ICsJCWRybV9kYmdfa21zKGRpc3BsYXktPmRybSwNCj4gKwkJCSAgICAiUGFuZWwg
UmVwbGF5IFJGQiBzdG9yYWdlIGVycm9yXG4iKTsNCj4gKwlpZiAoZXJyb3Jfc3RhdHVzICYNCj4g
RFBfUEFORUxfUkVQTEFZX1ZTQ19TRFBfVU5DT1JSRUNUQUJMRV9FUlJPUikNCj4gKwkJZHJtX2Ri
Z19rbXMoZGlzcGxheS0+ZHJtLA0KPiArCQkJICAgICJQYW5lbCBSZXBsYXkgVlNDIFNEUCB1bmNv
cnJlY3RhYmxlIGVycm9yXG4iKTsNCj4gKwlpZiAoZXJyb3Jfc3RhdHVzICYgRFBfUEFORUxfUkVQ
TEFZX0xJTktfQ1JDX0VSUk9SKQ0KPiArCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sDQo+ICsJ
CQkgICAgIlBhbmVsIFJlcGxheSBMaW5rIENSQyBlcnJvclxuIik7DQo+IA0KPiAtCWlmICghcHNy
LT5lbmFibGVkKQ0KPiAtCQlnb3RvIGV4aXQ7DQo+ICsJaWYgKGVycm9yX3N0YXR1cyAmIH5lcnJv
cnMpDQo+ICsJCWRybV9lcnIoZGlzcGxheS0+ZHJtLA0KPiArCQkJIlBBTkVMX1JFUExBWV9FUlJP
Ul9TVEFUVVMgdW5oYW5kbGVkIGVycm9ycw0KPiAleFxuIiwNCj4gKwkJCWVycm9yX3N0YXR1cyAm
IH5lcnJvcnMpOw0KPiArDQo+ICsJLyogY2xlYXIgc3RhdHVzIHJlZ2lzdGVyICovDQo+ICsJZHJt
X2RwX2RwY2Rfd3JpdGVfYnl0ZSgmaW50ZWxfZHAtPmF1eCwNCj4gRFBfUEFORUxfUkVQTEFZX0VS
Uk9SX1NUQVRVUywNCj4gKwkJCSAgICAgICBlcnJvcl9zdGF0dXMpOw0KPiArfQ0KPiArDQo+ICtz
dGF0aWMgdm9pZCBfcHNyX3Nob3J0X3B1bHNlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+
ICt7DQo+ICsJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5
KGludGVsX2RwKTsNCj4gKwlzdHJ1Y3QgaW50ZWxfcHNyICpwc3IgPSAmaW50ZWxfZHAtPnBzcjsN
Cj4gKwl1OCBzdGF0dXMsIGVycm9yX3N0YXR1czsNCj4gKwljb25zdCB1OCBlcnJvcnMgPSBEUF9Q
U1JfUkZCX1NUT1JBR0VfRVJST1IgfA0KPiArCQkJICBEUF9QU1JfVlNDX1NEUF9VTkNPUlJFQ1RB
QkxFX0VSUk9SIHwNCj4gKwkJCSAgRFBfUFNSX0xJTktfQ1JDX0VSUk9SOw0KPiANCj4gIAlpZiAo
cHNyX2dldF9zdGF0dXNfYW5kX2Vycm9yX3N0YXR1cyhpbnRlbF9kcCwgJnN0YXR1cywNCj4gJmVy
cm9yX3N0YXR1cykpIHsNCg0KcHNyX2dldF9zdGF0dXNfYW5kX2Vycm9yX3N0YXR1cygpIG5lZWQg
c29tZSBjbGVhbnVwLCBwYW5lbCByZXBsYXkgcmVsYXRlZCBjb2RlIGNhbiBiZSByZW1vdmVkLg0K
DQpSZWdhcmRzLg0KQW5pbWVzaA0KIA0KPiAgCQlkcm1fZXJyKGRpc3BsYXktPmRybSwNCj4gIAkJ
CSJFcnJvciByZWFkaW5nIFBTUiBzdGF0dXMgb3IgZXJyb3Igc3RhdHVzXG4iKTsNCj4gLQkJZ290
byBleGl0Ow0KPiArCQlyZXR1cm47DQo+ICAJfQ0KPiANCj4gLQlpZiAoKCFwc3ItPnBhbmVsX3Jl
cGxheV9lbmFibGVkICYmIHN0YXR1cyA9PQ0KPiBEUF9QU1JfU0lOS19JTlRFUk5BTF9FUlJPUikg
fHwNCj4gLQkgICAgKGVycm9yX3N0YXR1cyAmIGVycm9ycykpIHsNCj4gKwlpZiAoc3RhdHVzID09
IERQX1BTUl9TSU5LX0lOVEVSTkFMX0VSUk9SIHx8IChlcnJvcl9zdGF0dXMgJg0KPiBlcnJvcnMp
KSB7DQo+ICAJCWludGVsX3Bzcl9kaXNhYmxlX2xvY2tlZChpbnRlbF9kcCk7DQo+ICAJCXBzci0+
c2lua19ub3RfcmVsaWFibGUgPSB0cnVlOw0KPiAgCX0NCj4gDQo+IC0JaWYgKCFwc3ItPnBhbmVs
X3JlcGxheV9lbmFibGVkICYmIHN0YXR1cyA9PQ0KPiBEUF9QU1JfU0lOS19JTlRFUk5BTF9FUlJP
UiAmJg0KPiAtCSAgICAhZXJyb3Jfc3RhdHVzKQ0KPiArCWlmIChzdGF0dXMgPT0gRFBfUFNSX1NJ
TktfSU5URVJOQUxfRVJST1IgJiYgIWVycm9yX3N0YXR1cykNCj4gIAkJZHJtX2RiZ19rbXMoZGlz
cGxheS0+ZHJtLA0KPiAgCQkJICAgICJQU1Igc2luayBpbnRlcm5hbCBlcnJvciwgZGlzYWJsaW5n
IFBTUlxuIik7DQo+ICAJaWYgKGVycm9yX3N0YXR1cyAmIERQX1BTUl9SRkJfU1RPUkFHRV9FUlJP
UikNCj4gQEAgLTM5NTUsMTYgKzM5NzYsMzMgQEAgdm9pZCBpbnRlbF9wc3Jfc2hvcnRfcHVsc2Uo
c3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCkNCj4gIAkJZHJtX2VycihkaXNwbGF5LT5kcm0s
DQo+ICAJCQkiUFNSX0VSUk9SX1NUQVRVUyB1bmhhbmRsZWQgZXJyb3JzICV4XG4iLA0KPiAgCQkJ
ZXJyb3Jfc3RhdHVzICYgfmVycm9ycyk7DQo+ICsNCj4gIAkvKiBjbGVhciBzdGF0dXMgcmVnaXN0
ZXIgKi8NCj4gLQlkcm1fZHBfZHBjZF93cml0ZWIoJmludGVsX2RwLT5hdXgsIERQX1BTUl9FUlJP
Ul9TVEFUVVMsDQo+IGVycm9yX3N0YXR1cyk7DQo+ICsJZHJtX2RwX2RwY2Rfd3JpdGVfYnl0ZSgm
aW50ZWxfZHAtPmF1eCwgRFBfUFNSX0VSUk9SX1NUQVRVUywNCj4gZXJyb3Jfc3RhdHVzKTsNCj4g
DQo+IC0JaWYgKCFwc3ItPnBhbmVsX3JlcGxheV9lbmFibGVkKSB7DQo+IC0JCXBzcl9hbHBtX2No
ZWNrKGludGVsX2RwKTsNCj4gLQkJcHNyX2NhcGFiaWxpdHlfY2hhbmdlZF9jaGVjayhpbnRlbF9k
cCk7DQo+IC0JfQ0KPiArCXBzcl9hbHBtX2NoZWNrKGludGVsX2RwKTsNCj4gKwlwc3JfY2FwYWJp
bGl0eV9jaGFuZ2VkX2NoZWNrKGludGVsX2RwKTsNCj4gK30NCj4gKw0KPiArdm9pZCBpbnRlbF9w
c3Jfc2hvcnRfcHVsc2Uoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gK3sNCj4gKwlpZiAo
IUNBTl9QU1IoaW50ZWxfZHApICYmICFDQU5fUEFORUxfUkVQTEFZKGludGVsX2RwKSkNCj4gKwkJ
cmV0dXJuOw0KPiArDQo+ICsJbXV0ZXhfbG9jaygmaW50ZWxfZHAtPnBzci5sb2NrKTsNCj4gKw0K
PiArCWlmICghaW50ZWxfZHAtPnBzci5lbmFibGVkKQ0KPiArCQlnb3RvIGV4aXQ7DQo+ICsNCj4g
KwlpbnRlbF9kcC0+cHNyLmxpbmtfb2sgPSBmYWxzZTsNCj4gKw0KPiArCWlmIChpbnRlbF9kcC0+
cHNyLnBhbmVsX3JlcGxheV9lbmFibGVkKQ0KPiArCQlfcGFuZWxfcmVwbGF5X3Nob3J0X3B1bHNl
KGludGVsX2RwKTsNCj4gKwllbHNlDQo+ICsJCV9wc3Jfc2hvcnRfcHVsc2UoaW50ZWxfZHApOw0K
PiANCj4gIGV4aXQ6DQo+IC0JbXV0ZXhfdW5sb2NrKCZwc3ItPmxvY2spOw0KPiArCW11dGV4X3Vu
bG9jaygmaW50ZWxfZHAtPnBzci5sb2NrKTsNCj4gIH0NCj4gDQo+ICBib29sIGludGVsX3Bzcl9l
bmFibGVkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+IC0tDQo+IDIuNDMuMA0KDQo=
