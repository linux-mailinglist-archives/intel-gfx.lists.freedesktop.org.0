Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA505B1D403
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 10:07:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98DB010E00C;
	Thu,  7 Aug 2025 08:07:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kr+VIGJF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28BE210E00C;
 Thu,  7 Aug 2025 08:07:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754554066; x=1786090066;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=snPPmuFCr6Y7nChofZeoaGZG/3OONHVrGhLuO+2hJ7w=;
 b=Kr+VIGJFhxw//G7uC5ovGTyLYGm62eFOYc5rMWqjMfhzTWrZ1gqU1HNH
 IxljfvOSjqp/DP7h9xIZeaU9WfXmTYawhIzLbuJzTvPBqSLWjWfw36PIu
 alGD9iTNzPlre7D855L63qkVv2hG/wmXluuSX5fhU1FFafzr227yJhDm7
 XqkFp0O5ZneLgLfv6mMGtmBHoD2oO1wjaw8+Lvt5sgUFXxR6JNhCZNlcU
 XoPTB/dL4MXbzwnSWmcBwTPFDL9aO2sdOrRMc00C78vCi7HWqaBV0ZjBM
 Gy+1ewCqDt+dBD2/IaI3dDci7FN9mI81O0kOh2/MLHN8F0y3NvLJbWzM/ A==;
X-CSE-ConnectionGUID: 4cbEsF9nSOC4Qf8AiCjJzA==
X-CSE-MsgGUID: 2DB9MNieSi+M+qX1onbIcg==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="56778944"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="56778944"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 01:07:45 -0700
X-CSE-ConnectionGUID: Rr00Dac3SNiW04fUYg9s2Q==
X-CSE-MsgGUID: ECVrWbbuTVGLQDvPsLOF8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="164228031"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 01:07:45 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 01:07:45 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 01:07:45 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.44)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 01:07:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QjbIsVvfcsMtQT8Ppjn04yN1GC70nnp61azYOZPKVNoCngcq5gDU7y1lKawIAzxrE6k9T19IxhBdyxPXPVz9fcTeDXqIhrIsk+zijH8sPUaDMylyCv4PqsSGxOhoTsXV64zJS29mSIQn/NnLYEZAoxc0qqPGh1g4DPTiwCauqtB/mdIdHzHB+pvptmQIocbdW2GyIfG9iPp8CDyVdKo3SgyAnGfU6Cq4HhxZ3N9SnJ4KVnifKGDbfWLrkrFnc2gbUWsKtZzfIKY+kpB9Uuwfryzul6UfuezFGCrBxSnCqHmH+8uEiTI8gucY2utNJFe+N6qH/WP22tXDON7GdWTe8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=snPPmuFCr6Y7nChofZeoaGZG/3OONHVrGhLuO+2hJ7w=;
 b=kNwzz/AH7cQx0Y8dqSqMbgE48EVaa0HkX9GpeV4N4VOxZRC20GYenSK/+t1v4xP2sEKS9QliKVdQ5glpEGMRecJ5xbAQjYU6kPVGzhOoggdtM8+YHPotcuzQSUF3cC0ZbfdLkZlKziuFZWAyGyZP1qxYuwiHkMlrd+xkrmHni4MCqVkSRg2qsC8E0MJIwYFvlvReIGTzcXKkNMxjeC13sAnP5dq983mNzLgkRVFO7ReO5gr/JOurmHB+Hs1hhc++enVFpFAsa3Ocq548HD7Z4xsdFJ2WNvcheRe3YCTVqSBg9QSAUS+AhtOmCqq/VPYfH41O2oiMh7J55Rc9ET4W5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by DS0PR11MB8162.namprd11.prod.outlook.com
 (2603:10b6:8:166::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.18; Thu, 7 Aug
 2025 08:07:31 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::a67b:4a39:4af2:43d8]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::a67b:4a39:4af2:43d8%8]) with mapi id 15.20.9009.013; Thu, 7 Aug 2025
 08:07:31 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "stable@vger.kernel.org" <stable@vger.kernel.org>, "Lin, Charlton"
 <charlton.lin@intel.com>, "Almahallawy, Khaled"
 <khaled.almahallawy@intel.com>
Subject: RE: [PATCH v2 02/19] drm/i915/icl+/tc: Cache the max lane count value
Thread-Topic: [PATCH v2 02/19] drm/i915/icl+/tc: Cache the max lane count value
Thread-Index: AQHcBexTRH/70nixIEapidfvFYwFJbRW2LSQ
Date: Thu, 7 Aug 2025 08:07:31 +0000
Message-ID: <DS4PPF69154114FDE90120E8DC71C272E6EEF2CA@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20250805073700.642107-3-imre.deak@intel.com>
 <20250805093349.679158-1-imre.deak@intel.com>
In-Reply-To: <20250805093349.679158-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|DS0PR11MB8162:EE_
x-ms-office365-filtering-correlation-id: 96fda601-9238-4fcd-8f39-08ddd589757b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?M29HUlYyQVJzWjhxVEh0dk14eDAyMkVSNmEvR2orN0kzWTM1TjFWM3FNL2FK?=
 =?utf-8?B?SHdVckd3cU5NSnhwZzlSSlROcStkaEtjUWxEcGVZbjlhdU9kRmI5REZIVGFO?=
 =?utf-8?B?UHI2QmdzRklTNWZQUkpKZ3E0N0pSZyt3QnZscUZaZVFrMlB1ODdxaFAvelFr?=
 =?utf-8?B?d2JKYnhHbDdieWgyeVJLTXVMM1dJVDZnM05BelNLQmxwTG5tZE9zeXA5aGw2?=
 =?utf-8?B?Wm9SRGFRSlQxZHhMWGtrdmNvb0RGeEFwajFpU2RQWVh0aysxa2kzMmtBN2l5?=
 =?utf-8?B?MVc0TDFGQmxiOUtTczZicExJU0pCOVRSVk1NVUZGdmkyZ0dQbXdCT1ZSREtY?=
 =?utf-8?B?V3FLbXFsRmZyaEd1RXVSSGw3Rm4wRU9zWHdFWStRYkxINWdnaW9mUm90bGNo?=
 =?utf-8?B?RzIrOW01TmExQlU4TWNOeU80RURwcEd0QVgvWGU2dTZQdU14Y1BXenRTUFFv?=
 =?utf-8?B?ZkJ5cFl1ODFYajBJVVFXSk11UVh5WitLMWJQeWRlMHlndkR1aVV4ckl2NG9s?=
 =?utf-8?B?Q0VTeXpHQko2WGlpU0RHQzd2SGovZkRXeXZhWU1ocWM5YkFXOXdzZlcrcWpt?=
 =?utf-8?B?dkN5NzFMbXR0bm5Zd1dESXJUU3BvRXFicDNTZ3FXcHd2K2tIemo5czhJMVR1?=
 =?utf-8?B?S2JXTjhtUHkzRkRCZ3VvSG1EbDkxKzErV2FBQTlxeWVpV1d0Y1dTdGZJL0hD?=
 =?utf-8?B?WVJpVWp1b01CNWY2NGZvRG9XaXAvSXdzVnd2NlZybm9QS2hOZy9UVU11a05U?=
 =?utf-8?B?cVlLb21kd1pTQm9NWUZvaDdRbGhXeUVFS0tUNzNKcWxXazUxRmxVNXVMWmMz?=
 =?utf-8?B?a2FwSG1nYldKT29NdDdXRXdZbDFXSldVckxRYmZabTVXZFVPdUF5ZTlHMFhn?=
 =?utf-8?B?UjdKR2pzZnJ1Y1VtY0QvQzVLRGtZQkFpQStaLzRTU1prYUlzdEhIWW8yd0tK?=
 =?utf-8?B?VWJQVjFiMi9acWVxaUl5R2VnQzdpekJlWXdhY2hvWEVPejhMY3huWE8vZnN1?=
 =?utf-8?B?c3NRcXAyMDduc29JbGo0TmRWdmRBbWxSUmhCVWEwcmFHQTNKT1oxa3VNZUw3?=
 =?utf-8?B?V08xNEgwTEtaR3RUVlBINDZZN0xrWTJKbVdpaXhndmdiS1QzdFRiNHdiU0Ez?=
 =?utf-8?B?SUZMK1BQSWVhM3JpOEN2MFRZcTcwMlVpS3Bqekc3eFkxKzZMcGhwWU43SW9v?=
 =?utf-8?B?dlkzZnJ2bXNVckFEVVJlYkw4TUVsOVltOXVyemJPK25rb3BXZ3E3RWljWVVh?=
 =?utf-8?B?YlcxYXp0U3JrWHh3bENyV2dUdytEQmYzNVhnVkpqaHErSFkvajE3cEl2dmdV?=
 =?utf-8?B?WmFHYXhReHIzNzdPZGx4Y1pXWmxZM2hCcWlGdHZ1eFNqd1NwTldCOFJaQkt5?=
 =?utf-8?B?SXlDcTY0cElDWnl3MjVHeWdrMDNJWDB1RXFobnNsOTBDc3RoZGZmWVljSHov?=
 =?utf-8?B?YlBVUlZLbCtOektsR2RWS2VrMk9XdUYxNVZTV1k1NWZlajVOdFo2QnMzWk85?=
 =?utf-8?B?K3h3ckxuNlhTL1QyNndwbS9Ld1dXei9kOXR1OFcwSjM0RTJMQjg3VUJrYTZw?=
 =?utf-8?B?VkMreXd0MW5jUTVSQzN0ajU3YTFBekFHWjc1NThwU1B4dGhhdDJJRXYwdStT?=
 =?utf-8?B?Z1RSM1ZPdUdFczlNY1lZMlVCVVlOUjI3UVR5VGFaQTQvZ0tVRHFrN0VZZzFO?=
 =?utf-8?B?SkFtakpOQ3IwUGlyZjFWa1JLcThVdjlNZERDSU03SnB2V1dVd3BTN1laS1hN?=
 =?utf-8?B?UmtOaUMvbWg4ZWhpQy9pTnlRYnBZQjFmUGExV2oxTGJnZTFaQWZhVmxUQkcr?=
 =?utf-8?B?aXFjbGZpTVRmOHNwTnNCSHN4U0VaS0tFTDFGMzNzUHZZbHI2QVNWTVR3dUxB?=
 =?utf-8?B?ZUlLUWh4VXF0Qm5HYXZFSWF3L1ZKaEs3cno3YjFzUjFBVFlmQXVGZnhJSjdM?=
 =?utf-8?B?WkhKZ0NnZmRNdjJ0cEV6cExGaUF6ODNpNTF5ZEZkNTFEeUdiZnhVck9BMUZk?=
 =?utf-8?Q?BD67JQPcIntYIfxEo8Zb//MJ7p3Ddg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?blpPOTJTQVF6VXU4N0EwMHg3ZFBBeUk4a2RvdUdvV1ZkdGlSYk1TeVdiYWVZ?=
 =?utf-8?B?SExBckJ6dlkrYktNaGU0bDJoWkpzSDZmOEN0ZXc2TXNJeFJCdUljZGU4Ulpp?=
 =?utf-8?B?VzVUaFBTU3JoQkRidkVwdUVjb251ajlhOXpyWjczbmV0OUFSakI5UnhFblZj?=
 =?utf-8?B?d1RoRmhGcGhWdnhkUExlRzFnV0czZjVnaURhdFFZNTdnWDF5eVBONHVacjkx?=
 =?utf-8?B?dTBTQWVRR2tRTmNvSHYrN1Q2KzcybGF5NnFLYXlrWUU0Q3Vzc2RZdG9WWDdI?=
 =?utf-8?B?eG9hcXRHTG1NTjArSlhReTRBd0VNYnRydFZ0c2IvU3kveUF0UXB2M0E4TUVG?=
 =?utf-8?B?NFpQZUpUQWtRRlpEYU9iOU9pMm9TcUFhWHNnZndaa1YrcFFIYmVQOEZsUkpz?=
 =?utf-8?B?R01jTWg2TGgrdDdEaGpxSk8zdTFFNkRLbHpQV3dRaWJpRlpXSHVxWWRUdkxP?=
 =?utf-8?B?VllIZDUvbm1QVU1CTWEwblJRWkVhZk1Kakt6SjVvSjZHY0RWK0NIVGMxbXNK?=
 =?utf-8?B?QXdZdTdOUTZHa0x6disrZ1IyczArNzVUbWhQRFhXemtLanNMQm44MXlKNUkr?=
 =?utf-8?B?b1V4U3VZLzRseFhQL3NmRkIrQVVvUHZraWZSSHdLdHFMSXBuTTloemQ3M0s5?=
 =?utf-8?B?ZDBlV1V2NUtML0M0TEVLa0RQOHRxckQ3M2N5dzVvRkoyVXFkdWxYL0tiNVVK?=
 =?utf-8?B?eXZPcm5EbHgrcGF0a0dKbU5lZFRGNEZpaTJEaDE4TDZKOHdJb3BTQ1BWZXFy?=
 =?utf-8?B?a1VuMmxWUTN3VDRHM1dIOW8yaEI3UWZ0K1BSNzlvYSs1Z29nL3p1S2o5UWZs?=
 =?utf-8?B?d1ErUTFRRWJVdDJYWC9QeXplS2Q5YUVoOVJ4amtHYzdNbXpFcXR2R092U3FF?=
 =?utf-8?B?NHN5TlR0UjQzTlVoUU9WR0hXdWlnZTU3eXZFVTZtZXdYTFlnNGhQWkliT3pW?=
 =?utf-8?B?OVpkNGMzeVp1aGpFRmIyM0FRVmtad3lXcGxtWEozOTBOeDZnVnlxc2pqNUQz?=
 =?utf-8?B?aXkzWUxFMlJsekNidXFibTl2aDE0MHE3N1NKd1BEeENxajc5bVM1dGVTR2FB?=
 =?utf-8?B?TkUzNjRycUtqL3ZQZ2RNOFNHREZ6bGJ3ckY3S3AxNE5qZ3ZFTmJPUllTVzls?=
 =?utf-8?B?eThkU0s4MjRIdkVEWnF6cVFLTDRtZXRqblVlQktKb1owd3drTGg2Z0pnQjIv?=
 =?utf-8?B?OEs4bDN5dUk0cmNMMG5UUEJYaWJ2NkkzaXVMNjNEcE5EbHp3Z29MNHhFeVc4?=
 =?utf-8?B?Z1FOMEJXOTJiU2FDam5yZ2U0d3NTRUtoTktBcWtqUUh4djVqd08rR2k5Smti?=
 =?utf-8?B?blN4TmlRc2Z5TFVQY1pTRkRvcUpyRWdUcU1TTEZpTkNXanRleURCdExvaWh0?=
 =?utf-8?B?SWo3SC9wVnZEMlhxZkFEVWxESHBxUllYS21RNUFLQXBFQndrbWI1aUFGS09G?=
 =?utf-8?B?VnlUM2o0TE5Wdmdua251cTJzb0cxWW9rNmx0Qk5IZFNhMnBZcnpPb2xNRFV0?=
 =?utf-8?B?Y0IzMEoyaEJtVWpjVUZMWURlQ3VwR242ZGJtOEZHcS9nZ3JKc0oxWDdGa0JF?=
 =?utf-8?B?NU1qVVpsOGthR2lhUGczRVl6bktsNWlNTjRtZUxYRnpDN3FFTmNOTkZXeFdn?=
 =?utf-8?B?d1V0NTlmQ0hIUUludXdJNkx2VWM5aDI2NFUzdktWV3BCNmZRb0JpNmdjWlBY?=
 =?utf-8?B?WUlGODBUMzBiWkNqR1BiUFVrUnRBWi9MUzJDeVd4dnhYQWwvdkt6WERDY3VS?=
 =?utf-8?B?Zjg3c3ZXK05abUtjNERJOG5QY2d3TjVGRVpIQXNPUDd5YTZkZ0U4Y2F1ZEpX?=
 =?utf-8?B?enFTOUY1dmdRTDBjUnI1YWtVRE5RZXRoWkZFajNrSTc1aXFxaHdxajdHWU1H?=
 =?utf-8?B?THgvRTZkQzNjNUNYWXRqSjl1OTRZbFhRVVB5OFVncURQZDRJY1oxQXA1eWwz?=
 =?utf-8?B?Vk9CcjIxSnZKVnRGM25VVHVFeTRwbkVHeW9MeUdpcUlXN2Q5TUtsRzBYV28r?=
 =?utf-8?B?T3UrUCszcUJNMVhVZml0N0FsOWZEaDBxRkJmQ0UzdlVvaGtBYXI0ZUVRN2RV?=
 =?utf-8?B?bEJoRTZjTStteTc1MGp1K3d3eG15MEFUTGtqdTlCc2sxek5jUFIvNjVacmVC?=
 =?utf-8?Q?oasdJdP/G/fdcwV2KKZNQ1lOS?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96fda601-9238-4fcd-8f39-08ddd589757b
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2025 08:07:31.4554 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DKMr36ElhWHzcvc4Ly/+gEgFMTAJD8MR5JPJMMoJcX0btlQlULsGCALD6mXHPB3uuK2TrEm2OGoKXEL4JZ/kSQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8162
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUgRGVhaw0K
PiBTZW50OiBUdWVzZGF5LCA1IEF1Z3VzdCAyMDI1IDEyLjM0DQo+IFRvOiBpbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6
IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc7IExpbiwgQ2hhcmx0b24gPGNoYXJsdG9uLmxpbkBpbnRl
bC5jb20+OyBBbG1haGFsbGF3eSwgS2hhbGVkIDxraGFsZWQuYWxtYWhhbGxhd3lAaW50ZWwuY29t
Pg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjIgMDIvMTldIGRybS9pOTE1L2ljbCsvdGM6IENhY2hlIHRo
ZSBtYXggbGFuZSBjb3VudCB2YWx1ZQ0KPiANCj4gVGhlIFBIWSdzIHBpbiBhc3NpZ25tZW50IHZh
bHVlIGluIHRoZSBUQ1NTX0RESV9TVEFUVVMgcmVnaXN0ZXIgLSBhcyBzZXQgYnkgdGhlIEhXL0ZX
IGJhc2VkIG9uIHRoZSBjb25uZWN0ZWQgRFAtYWx0IHNpbmsncw0KPiBUeXBlQy9QRCBwaW4gYXNz
aWdubWVudCBuZWdvdGlhdGlvbiAtIGdldHMgY2xlYXJlZCBieSB0aGUgSFcvRlcgb24gTE5MKyBh
cyBzb29uIGFzIHRoZSBzaW5rIGdldHMgZGlzY29ubmVjdGVkLCBldmVuIGlmIHRoZSBQSFkNCj4g
b3duZXJzaGlwIGdvdCBhY3F1aXJlZCBhbHJlYWR5IGJ5IHRoZSBkcml2ZXIgKGFuZCBoZW5jZSB0
aGUgUEhZIGl0c2VsZiBpcyBzdGlsbCBjb25uZWN0ZWQgYW5kIHVzZWQgYnkgdGhlIGRpc3BsYXkp
LiBUaGlzIGlzIHNpbWlsYXIgdG8NCj4gaG93IHRoZSBQSFkgUmVhZHkgZmxhZyBnZXRzIGNsZWFy
ZWQgb24gTE5MKyBpbiB0aGUgc2FtZSByZWdpc3Rlci4NCj4gDQo+IFRvIGJlIGFibGUgdG8gcXVl
cnkgdGhlIG1heCBsYW5lIGNvdW50IHZhbHVlIG9uIExOTCsgLSB3aGljaCBpcyBiYXNlZCBvbiB0
aGUgYWJvdmUgcGluIGFzc2lnbm1lbnQgLSBhdCBhbGwgdGltZXMgZXZlbiBhZnRlciB0aGUNCj4g
c2luayBnZXRzIGRpc2Nvbm5lY3RlZCwgdGhlIG1heCBsYW5lIGNvdW50IG11c3QgYmUgZGV0ZXJt
aW5lZCBhbmQgY2FjaGVkIGR1cmluZyB0aGUgUEhZJ3MgSFcgcmVhZG91dCBhbmQgY29ubmVjdCBz
ZXF1ZW5jZXMuDQo+IERvIHRoYXQgaGVyZSwgbGVhdmluZyB0aGUgYWN0dWFsIHVzZSBvZiB0aGUg
Y2FjaGVkIHZhbHVlIHRvIGEgZm9sbG93LXVwIGNoYW5nZS4NCj4gDQo+IHYyOiBEb24ndCByZWFk
IG91dCB0aGUgcGluIGNvbmZpZ3VyYXRpb24gaWYgdGhlIFBIWSBpcyBkaXNjb25uZWN0ZWQuDQo+
IA0KPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZyAjIHY2LjgrDQo+IFJlcG9ydGVkLWJ5OiBD
aGFybHRvbiBMaW4gPGNoYXJsdG9uLmxpbkBpbnRlbC5jb20+DQo+IFRlc3RlZC1ieTogS2hhbGVk
IEFsbWFoYWxsYXd5IDxraGFsZWQuYWxtYWhhbGxhd3lAaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1i
eTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5
OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jIHwgNTcgKysrKysrKysrKysrKysrKysrKysrLS0t
LQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDQ4IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pDQo+
IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+IGluZGV4IDczYTA4
YmQ4NGE3MGEuLmI4NDUzZmMzYWI2ODggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3RjLmMNCj4gQEAgLTY2LDYgKzY2LDcgQEAgc3RydWN0IGludGVsX3RjX3BvcnQg
ew0KPiAgCWVudW0gdGNfcG9ydF9tb2RlIGluaXRfbW9kZTsNCj4gIAllbnVtIHBoeV9maWEgcGh5
X2ZpYTsNCj4gIAl1OCBwaHlfZmlhX2lkeDsNCj4gKwl1OCBtYXhfbGFuZV9jb3VudDsNCj4gIH07
DQo+IA0KPiAgc3RhdGljIGVudW0gaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW4NCj4gQEAgLTM2
NSwxMiArMzY2LDEyIEBAIHN0YXRpYyBpbnQgaW50ZWxfdGNfcG9ydF9nZXRfbWF4X2xhbmVfY291
bnQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpDQo+ICAJfQ0KPiAgfQ0KPiAN
Cj4gLWludCBpbnRlbF90Y19wb3J0X21heF9sYW5lX2NvdW50KHN0cnVjdCBpbnRlbF9kaWdpdGFs
X3BvcnQgKmRpZ19wb3J0KQ0KPiArc3RhdGljIGludCBnZXRfbWF4X2xhbmVfY291bnQoc3RydWN0
IGludGVsX3RjX3BvcnQgKnRjKQ0KPiAgew0KPiAtCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNw
bGF5ID0gdG9faW50ZWxfZGlzcGxheShkaWdfcG9ydCk7DQo+IC0Jc3RydWN0IGludGVsX3RjX3Bv
cnQgKnRjID0gdG9fdGNfcG9ydChkaWdfcG9ydCk7DQo+ICsJc3RydWN0IGludGVsX2Rpc3BsYXkg
KmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KHRjLT5kaWdfcG9ydCk7DQo+ICsJc3RydWN0IGlu
dGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQgPSB0Yy0+ZGlnX3BvcnQ7DQo+IA0KPiAtCWlmICgh
aW50ZWxfZW5jb2Rlcl9pc190YygmZGlnX3BvcnQtPmJhc2UpIHx8IHRjLT5tb2RlICE9IFRDX1BP
UlRfRFBfQUxUKQ0KPiArCWlmICh0Yy0+bW9kZSAhPSBUQ19QT1JUX0RQX0FMVCkNCj4gIAkJcmV0
dXJuIDQ7DQo+IA0KPiAgCWFzc2VydF90Y19jb2xkX2Jsb2NrZWQodGMpOw0KPiBAQCAtMzg0LDYg
KzM4NSwyMSBAQCBpbnQgaW50ZWxfdGNfcG9ydF9tYXhfbGFuZV9jb3VudChzdHJ1Y3QgaW50ZWxf
ZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkNCj4gIAlyZXR1cm4gaW50ZWxfdGNfcG9ydF9nZXRfbWF4
X2xhbmVfY291bnQoZGlnX3BvcnQpOw0KPiAgfQ0KPiANCj4gK3N0YXRpYyB2b2lkIHJlYWRfcGlu
X2NvbmZpZ3VyYXRpb24oc3RydWN0IGludGVsX3RjX3BvcnQgKnRjKSB7DQo+ICsJdGMtPm1heF9s
YW5lX2NvdW50ID0gZ2V0X21heF9sYW5lX2NvdW50KHRjKTsgfQ0KPiArDQo+ICtpbnQgaW50ZWxf
dGNfcG9ydF9tYXhfbGFuZV9jb3VudChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9y
dCkgew0KPiArCXN0cnVjdCBpbnRlbF90Y19wb3J0ICp0YyA9IHRvX3RjX3BvcnQoZGlnX3BvcnQp
Ow0KPiArDQo+ICsJaWYgKCFpbnRlbF9lbmNvZGVyX2lzX3RjKCZkaWdfcG9ydC0+YmFzZSkpDQo+
ICsJCXJldHVybiA0Ow0KPiArDQo+ICsJcmV0dXJuIGdldF9tYXhfbGFuZV9jb3VudCh0Yyk7DQo+
ICt9DQo+ICsNCj4gIHZvaWQgaW50ZWxfdGNfcG9ydF9zZXRfZmlhX2xhbmVfY291bnQoc3RydWN0
IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQsDQo+ICAJCQkJICAgICAgaW50IHJlcXVpcmVk
X2xhbmVzKQ0KPiAgew0KPiBAQCAtNTk2LDkgKzYxMiwxMiBAQCBzdGF0aWMgdm9pZCBpY2xfdGNf
cGh5X2dldF9od19zdGF0ZShzdHJ1Y3QgaW50ZWxfdGNfcG9ydCAqdGMpDQo+ICAJdGNfY29sZF93
cmVmID0gX190Y19jb2xkX2Jsb2NrKHRjLCAmZG9tYWluKTsNCj4gDQo+ICAJdGMtPm1vZGUgPSB0
Y19waHlfZ2V0X2N1cnJlbnRfbW9kZSh0Yyk7DQo+IC0JaWYgKHRjLT5tb2RlICE9IFRDX1BPUlRf
RElTQ09OTkVDVEVEKQ0KPiArCWlmICh0Yy0+bW9kZSAhPSBUQ19QT1JUX0RJU0NPTk5FQ1RFRCkg
ew0KPiAgCQl0Yy0+bG9ja193YWtlcmVmID0gdGNfY29sZF9ibG9jayh0Yyk7DQo+IA0KPiArCQly
ZWFkX3Bpbl9jb25maWd1cmF0aW9uKHRjKTsNCj4gKwl9DQo+ICsNCj4gIAlfX3RjX2NvbGRfdW5i
bG9jayh0YywgZG9tYWluLCB0Y19jb2xkX3dyZWYpOyAgfQ0KPiANCj4gQEAgLTY1Niw4ICs2NzUs
MTEgQEAgc3RhdGljIGJvb2wgaWNsX3RjX3BoeV9jb25uZWN0KHN0cnVjdCBpbnRlbF90Y19wb3J0
ICp0YywNCj4gDQo+ICAJdGMtPmxvY2tfd2FrZXJlZiA9IHRjX2NvbGRfYmxvY2sodGMpOw0KPiAN
Cj4gLQlpZiAodGMtPm1vZGUgPT0gVENfUE9SVF9UQlRfQUxUKQ0KPiArCWlmICh0Yy0+bW9kZSA9
PSBUQ19QT1JUX1RCVF9BTFQpIHsNCj4gKwkJcmVhZF9waW5fY29uZmlndXJhdGlvbih0Yyk7DQo+
ICsNCj4gIAkJcmV0dXJuIHRydWU7DQo+ICsJfQ0KPiANCj4gIAlpZiAoKCF0Y19waHlfaXNfcmVh
ZHkodGMpIHx8DQo+ICAJICAgICAhaWNsX3RjX3BoeV90YWtlX293bmVyc2hpcCh0YywgdHJ1ZSkp
ICYmIEBAIC02NjgsNiArNjkwLDcgQEAgc3RhdGljIGJvb2wgaWNsX3RjX3BoeV9jb25uZWN0KHN0
cnVjdCBpbnRlbF90Y19wb3J0DQo+ICp0YywNCj4gIAkJZ290byBvdXRfdW5ibG9ja190Y19jb2xk
Ow0KPiAgCX0NCj4gDQo+ICsJcmVhZF9waW5fY29uZmlndXJhdGlvbih0Yyk7DQo+IA0KPiAgCWlm
ICghdGNfcGh5X3ZlcmlmeV9sZWdhY3lfb3JfZHBfYWx0X21vZGUodGMsIHJlcXVpcmVkX2xhbmVz
KSkNCj4gIAkJZ290byBvdXRfcmVsZWFzZV9waHk7DQo+IEBAIC04NTgsOSArODgxLDEyIEBAIHN0
YXRpYyB2b2lkIGFkbHBfdGNfcGh5X2dldF9od19zdGF0ZShzdHJ1Y3QgaW50ZWxfdGNfcG9ydCAq
dGMpDQo+ICAJcG9ydF93YWtlcmVmID0gaW50ZWxfZGlzcGxheV9wb3dlcl9nZXQoZGlzcGxheSwg
cG9ydF9wb3dlcl9kb21haW4pOw0KPiANCj4gIAl0Yy0+bW9kZSA9IHRjX3BoeV9nZXRfY3VycmVu
dF9tb2RlKHRjKTsNCj4gLQlpZiAodGMtPm1vZGUgIT0gVENfUE9SVF9ESVNDT05ORUNURUQpDQo+
ICsJaWYgKHRjLT5tb2RlICE9IFRDX1BPUlRfRElTQ09OTkVDVEVEKSB7DQo+ICAJCXRjLT5sb2Nr
X3dha2VyZWYgPSB0Y19jb2xkX2Jsb2NrKHRjKTsNCj4gDQo+ICsJCXJlYWRfcGluX2NvbmZpZ3Vy
YXRpb24odGMpOw0KPiArCX0NCj4gKw0KPiAgCWludGVsX2Rpc3BsYXlfcG93ZXJfcHV0KGRpc3Bs
YXksIHBvcnRfcG93ZXJfZG9tYWluLCBwb3J0X3dha2VyZWYpOyAgfQ0KPiANCj4gQEAgLTg3Myw2
ICs4OTksOSBAQCBzdGF0aWMgYm9vbCBhZGxwX3RjX3BoeV9jb25uZWN0KHN0cnVjdCBpbnRlbF90
Y19wb3J0ICp0YywgaW50IHJlcXVpcmVkX2xhbmVzKQ0KPiANCj4gIAlpZiAodGMtPm1vZGUgPT0g
VENfUE9SVF9UQlRfQUxUKSB7DQo+ICAJCXRjLT5sb2NrX3dha2VyZWYgPSB0Y19jb2xkX2Jsb2Nr
KHRjKTsNCj4gKw0KPiArCQlyZWFkX3Bpbl9jb25maWd1cmF0aW9uKHRjKTsNCj4gKw0KPiAgCQly
ZXR1cm4gdHJ1ZTsNCj4gIAl9DQo+IA0KPiBAQCAtODk0LDYgKzkyMyw4IEBAIHN0YXRpYyBib29s
IGFkbHBfdGNfcGh5X2Nvbm5lY3Qoc3RydWN0IGludGVsX3RjX3BvcnQgKnRjLCBpbnQgcmVxdWly
ZWRfbGFuZXMpDQo+IA0KPiAgCXRjLT5sb2NrX3dha2VyZWYgPSB0Y19jb2xkX2Jsb2NrKHRjKTsN
Cj4gDQo+ICsJcmVhZF9waW5fY29uZmlndXJhdGlvbih0Yyk7DQo+ICsNCj4gIAlpZiAoIXRjX3Bo
eV92ZXJpZnlfbGVnYWN5X29yX2RwX2FsdF9tb2RlKHRjLCByZXF1aXJlZF9sYW5lcykpDQo+ICAJ
CWdvdG8gb3V0X3VuYmxvY2tfdGNfY29sZDsNCj4gDQo+IEBAIC0xMTI0LDkgKzExNTUsMTIgQEAg
c3RhdGljIHZvaWQgeGVscGRwX3RjX3BoeV9nZXRfaHdfc3RhdGUoc3RydWN0IGludGVsX3RjX3Bv
cnQgKnRjKQ0KPiAgCXRjX2NvbGRfd3JlZiA9IF9fdGNfY29sZF9ibG9jayh0YywgJmRvbWFpbik7
DQo+IA0KPiAgCXRjLT5tb2RlID0gdGNfcGh5X2dldF9jdXJyZW50X21vZGUodGMpOw0KPiAtCWlm
ICh0Yy0+bW9kZSAhPSBUQ19QT1JUX0RJU0NPTk5FQ1RFRCkNCj4gKwlpZiAodGMtPm1vZGUgIT0g
VENfUE9SVF9ESVNDT05ORUNURUQpIHsNCj4gIAkJdGMtPmxvY2tfd2FrZXJlZiA9IHRjX2NvbGRf
YmxvY2sodGMpOw0KPiANCj4gKwkJcmVhZF9waW5fY29uZmlndXJhdGlvbih0Yyk7DQo+ICsJfQ0K
PiArDQo+ICAJZHJtX1dBUk5fT04oZGlzcGxheS0+ZHJtLA0KPiAgCQkgICAgKHRjLT5tb2RlID09
IFRDX1BPUlRfRFBfQUxUIHx8IHRjLT5tb2RlID09IFRDX1BPUlRfTEVHQUNZKSAmJg0KPiAgCQkg
ICAgIXhlbHBkcF90Y19waHlfdGNzc19wb3dlcl9pc19lbmFibGVkKHRjKSk7DQo+IEBAIC0xMTM4
LDE0ICsxMTcyLDE5IEBAIHN0YXRpYyBib29sIHhlbHBkcF90Y19waHlfY29ubmVjdChzdHJ1Y3Qg
aW50ZWxfdGNfcG9ydCAqdGMsIGludCByZXF1aXJlZF9sYW5lcykgIHsNCj4gIAl0Yy0+bG9ja193
YWtlcmVmID0gdGNfY29sZF9ibG9jayh0Yyk7DQo+IA0KPiAtCWlmICh0Yy0+bW9kZSA9PSBUQ19Q
T1JUX1RCVF9BTFQpDQo+ICsJaWYgKHRjLT5tb2RlID09IFRDX1BPUlRfVEJUX0FMVCkgew0KPiAr
CQlyZWFkX3Bpbl9jb25maWd1cmF0aW9uKHRjKTsNCj4gKw0KPiAgCQlyZXR1cm4gdHJ1ZTsNCj4g
Kwl9DQo+IA0KPiAgCWlmICgheGVscGRwX3RjX3BoeV9lbmFibGVfdGNzc19wb3dlcih0YywgdHJ1
ZSkpDQo+ICAJCWdvdG8gb3V0X3VuYmxvY2tfdGNjb2xkOw0KPiANCj4gIAl4ZWxwZHBfdGNfcGh5
X3Rha2Vfb3duZXJzaGlwKHRjLCB0cnVlKTsNCj4gDQo+ICsJcmVhZF9waW5fY29uZmlndXJhdGlv
bih0Yyk7DQo+ICsNCj4gIAlpZiAoIXRjX3BoeV92ZXJpZnlfbGVnYWN5X29yX2RwX2FsdF9tb2Rl
KHRjLCByZXF1aXJlZF9sYW5lcykpDQo+ICAJCWdvdG8gb3V0X3JlbGVhc2VfcGh5Ow0KPiANCj4g
LS0NCj4gMi40OS4xDQoNCg==
