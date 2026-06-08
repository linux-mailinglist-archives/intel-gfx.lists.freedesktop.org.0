Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ICroGMKXJmpPZQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 12:21:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3DA65500F
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 12:21:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=KKPrX648;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4995410F114;
	Mon,  8 Jun 2026 10:21:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 645B610F112;
 Mon,  8 Jun 2026 10:21:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780914110; x=1812450110;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ywOK7K03baoH8J96hRqwJv87QLVwDcrp4r5tZOnPFVE=;
 b=KKPrX648oKkHaHr6kg9Tey0cPZ/7H+2Mv/gUMxEvmm4H0P61kMxORs6c
 tbpjWIzYMiYwZVIiXBPIJqMd/Ll+as88gx1TeF+VBQvehxCZpUV7RHyTP
 PHVNGSGuSNcbNqxBAnSwvezMuwGQd+yIfNSYt91lz+97U1Vz6gg3HrTjC
 QfXRL4wuFT51vKi+iUiIB2BF8T9i3jHxPVe5wZOmbrpbHth5hjfHcCNJt
 ZKLk0G7UCrXJzxPL66E1ItyPDPABbyMeZugNWI2N4aJZI6ol4itJh7MrN
 5HC18jne/M9VReRZoXRRs/2ApSS+6brcMy9061wWtKUlm72B1FDVbLKAs w==;
X-CSE-ConnectionGUID: EodQQMV4QHWwvv2wJua52Q==
X-CSE-MsgGUID: kfWwI7yJTVqiLAzj5Aw06A==
X-IronPort-AV: E=McAfee;i="6800,10657,11810"; a="85532743"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="85532743"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 03:21:50 -0700
X-CSE-ConnectionGUID: aMLvf+ntTtWYOL3Ulo3e4Q==
X-CSE-MsgGUID: IOHZcJ8JTUG0ocxymN7rWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="245573416"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 03:21:50 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 03:21:47 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 8 Jun 2026 03:21:47 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.50) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 03:21:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GrTkbk1WyO8h11RxcCGqPi4h668ww4x6E0n5RDiTKi+ugN4KyCos/D4+l3KCW8SBjy3PKzeko8jkC6+LZ9kd0NkK5Ph/cKwEfabTV8Rdy4gu3FK4YrJc0NYCgTQsmjQW+MwfIvEVxkV++MjGjb+cUpy81udaO9AUanOU9BGE/2sKe5dMY16I7Zh9qqtYtRfsXtfd6G+iEImwoMdWsGnDu1Negh7ZgkInqILU1fc94XDgxGHwhBvsojc/nSHamrYf2uvWz9dBcRE5bHKW2Ph0Q8R8IGNy/8TZld+fE26uIQvT5Nwyfnj+lc+Tf1/Z78+Oeb4BHI2GTaELU3nhlc88Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ywOK7K03baoH8J96hRqwJv87QLVwDcrp4r5tZOnPFVE=;
 b=kXNYhEDR4xRmLW8uY7+mwWllBod1Fp1ONQAMR7EcjaXI6jWUNpWK33e/zvsFdMVcrAKdjPsQo4kEcRhYQdqyi2pGLDUDfNUHPJvOKAjnYR236zrhR8XyqcMQaPMPOvFMflR/IBr6pOB8spgeCBlCtuvgMWLllLn0pdC/T2cgjWkofHXE7Yjfgc7ermOvr51gfiiZCLc8E4yRoU1XcucOP8yoBDg/AYTg+IC6RF57gPMit1vWVM9phmBKTq6penGk1k9koCv8oBJ/nt167nW4wUcas6idGDogRAxrY0kWl85Cj48q9TenvlVc0pQPwfEBf6dfNIzPWx3kF3pfexC1ZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by LV0PR11MB9814.namprd11.prod.outlook.com
 (2603:10b6:408:382::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.13; Mon, 8 Jun 2026
 10:21:45 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 10:21:45 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 19/22] drm/i915/dp_link_training: Allocate atomic state
 for autoretrain modeset
Thread-Topic: [PATCH v2 19/22] drm/i915/dp_link_training: Allocate atomic
 state for autoretrain modeset
Thread-Index: AQHc8av/8sVaaNtH/UOTz/ilxhpoY7Y0fb4A
Date: Mon, 8 Jun 2026 10:21:45 +0000
Message-ID: <DS4PPF69154114F8EC117D21F9AFDA55323EF1C2@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260601093836.3057345-1-imre.deak@intel.com>
 <20260601093836.3057345-20-imre.deak@intel.com>
In-Reply-To: <20260601093836.3057345-20-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|LV0PR11MB9814:EE_
x-ms-office365-filtering-correlation-id: 70bf1f59-44a7-453a-5cb2-08dec547bddc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|22082099003|18002099003|38070700021|4143699003|11063799006|56012099006;
x-microsoft-antispam-message-info: vE6aghV/CSJkNmPrF3FJau2wVncSdpAW3BthkVSGpj/YOYW7PMasgoGcMh6cDC4BqJtYrVIx1g3eBqr1z98tWmWskM034lYRG1e7oLZJHIvXCiMU7WFmkHbGnBwwKVtxzf0yCYf1w3PAcG+VTxDTolo/vK+TaxT5PCYlj46L9UTX4XY3F/+zoOkmJiuoMz5YvqKpKUV2mUr5Ii5kXc1rOr9Urx0/Kovd1aBmdnuvPXsUUBrSuTGj7oeCsoem7cVD5tdcYAvK/zCJJs3a2pcNfOzNwCkLuihI5Ni8903hZYOst8wks7DJo9YgKAilGYS9LMWnMsuyuqKTKGX2qWKl+1Q8GmQ3fw2uKcdOAZBbGbHoiKFG9qxW5YElxNxkJnFfNAWa4rs/q1aX28M6yEmSGD4xPObqMriEElX5RkpAJJvTC7KicB/TnrqMny4N8Vx11yLBsv0/ejq/FZML/b/CChqDN76emewWLTGfRyIXvCezehk1qkIJJ0jnIubTvJjKdeFx/XQhGT2+9sMYMv6YZAelAmGbS/gdHTdrTkQx+b3j+45ydHJCri/HJ6/MdNO5aSzDConx6ELiisBk3JrWbBK2f0NHLGg70nDgO1uZTdPXqgeOPONPL6XEJtckjcRZt+J8jC72CldufrCRqFyWBDCYsEgtmPrn8rRKN4dn6mNTLS8leqHB5/GLxu70hJgShRSeCY/QhW/ATHfgxJh7eErvl0Xz6UHcnz3Ga5y7RQuzoIUgmTLI/QbQsm7WNkGs
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(22082099003)(18002099003)(38070700021)(4143699003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TzRpYTBDckwxaTd1cXNIaElmbXZoV1MySzY1YUVkRkJBR0JpeERKUzBDbVZB?=
 =?utf-8?B?MHROWlFSaWRjU0dKL2tZR1BseDVNRSsrK0NXeHlvUjlmbFVOY1BZcDhEb3FM?=
 =?utf-8?B?eTVNWkdxQ1FDM2h1NUV1N2l4R0dUMTRvbFZUNk15Ym9lODBNbEoyQVNacS92?=
 =?utf-8?B?STY5NXJHVzN6eWNiQ1VPRlp6d1p5TFpHWlVkZi83dDVodVFMTDBpOFRLaUln?=
 =?utf-8?B?Q0VXZ0F0VnRodWlaY1NGakt0a1o5bnYzbXZNNFVyajF3dDNuQ0lSci9zZEZq?=
 =?utf-8?B?NWdXOEVBU2lXamhtYXRvTE9ZMWVQL0htRHhNQngyQ0NKdlROTUdRWjZUL0NQ?=
 =?utf-8?B?Z0F4c3NBbG9ra3NldUdxMG82VlJiam9iOE56KzJYZFBvcVpGaGFKVFJHeEpK?=
 =?utf-8?B?dXRMYXhjRkJNSFZSY2M1a2UybzVFcWlOemRFZXExb09Ha3hpbXg4aTdQSTJQ?=
 =?utf-8?B?YXZpenpjQm5FV0xQMWRqdmRYekNUWXQ5azRSS3ZtdFpwLzQ1YmU4VEo4YWxv?=
 =?utf-8?B?M1E4aVRvb0hNSE5zTG5teEpMRnc3alk0Z1l1MXRpM3BsRjhDeHpRZGpXbjVk?=
 =?utf-8?B?KytkK25WWGl5ckdoT2wwUVVvMnpXeVQ4OGZ3b3NXZi9HWWZ6ZlR2TmJTV0py?=
 =?utf-8?B?U25EV0FRU2tCNmRuRVdNUlFRRkFma3ozSy8zK0tBNFkrMWJheklYeTNocy90?=
 =?utf-8?B?SjVJRnd4R1BuUWZtMjk0STdudWVRanB0S3ZOaUJmREk5VVNiTGNWZVQxamJr?=
 =?utf-8?B?c1c2ankyeVBncDlkVkwwZjE3N3JrVnZ4T2pHWWJlVExhMFpTTVZWUVZBM0w5?=
 =?utf-8?B?M1ZLQUsxWUFmL1JQL2VBWU1reTc0VDVlZ2kvL2NuOE93N2UwNFN1S2VNOTIx?=
 =?utf-8?B?T1BiM1JZZ0lxS1ZTaHpmNXdWanA5Z0x3OGxZcS9FUzdjM3B4d1FZM2RJWU1h?=
 =?utf-8?B?a3hyUlN6UEo2YWdONDU2dk0rTEx4QzFJQmZHU1FObkQvanVSZ0JTaDZUUlhX?=
 =?utf-8?B?NEtEVXVDQmtnUTlJM21SUXhSUEZOOHZPWTlWcFpIamJnRmJxZ3pFTlc0ZnhK?=
 =?utf-8?B?LzJ2cjBDanhjQUVjUGZsUXVXYkoxRThmeUsvT0ZhUFE1ZS9tTkNXaUxlNWxR?=
 =?utf-8?B?WWEwZmR6K3E4amx3UHVJdnlHa2xULzlRL2trTEkyRlRmdlRSOFAyb044aHcw?=
 =?utf-8?B?MDJMY3RTcUZIa1MveEMydytHMjVWbmRmTWxQS0NOYXZJNllRakR1eExTYmRJ?=
 =?utf-8?B?bTBNb0dIdVF0Y3VyNkxQTklKYjhhclgwZHhKYUF5cFVOREdJblFicytLZGpQ?=
 =?utf-8?B?Um1tUWhlbnBnd0hYdTFnbHJYMlBLTjV0NGEzeGRMS2pTWTlBb1pNaEk0dmpJ?=
 =?utf-8?B?UjNVd000SFpkY2lydW5oSzNqUHgyQ2Z1d2xadXdJdEp6SjJLU0Z6di9uRHU4?=
 =?utf-8?B?czhEb2ptSFJVUGV0SGMvaTFieGxCOHUxOEhNNmZ6UXRrbWM4VHQ0M2dERkNh?=
 =?utf-8?B?OGxpaTdMS3ZXOS9KNjFuNk45cTdYdGx4ODRNRW1Lai9QdzlqQTdVeldNdmhR?=
 =?utf-8?B?c3hab0Nlb1R6UVMxek1tQmdEU1JHUkhKMGxZTG1oems5VHZvaDJ5NldoV2tB?=
 =?utf-8?B?MDJRVGxzRXprcWZZTjdUaHkyNGg1L0JnbEZPOGIrYUdOVlc1ZS9uaDJYTlk0?=
 =?utf-8?B?TE1jbENrd3pYbGRhRjY1R1JJQjJzSlZrTEZmRVhXMjIvNVZBTWpvOHdLcG5i?=
 =?utf-8?B?WW9FSm5CU1hIaW93WkhBOTg0VnJoR3ZQamxOVzMyNndtSWluSE9icEdoVHZa?=
 =?utf-8?B?VWp1SWl4SGNVNU1CQUJzeVlOK0dtVitwSFBxZ2RxVmVJOCs5a3VXNzMxQzAx?=
 =?utf-8?B?NWNjOGw5NEc0UGtJT1pmUWdiRDlCTXcwc29FM2NRcmlrL1cvQVNvL2JDTmpS?=
 =?utf-8?B?VWo3Y0hBbk1oWW5GdjN3a1NWWnFFMzU4dnJPajg5RmdCVlhCVjRhVU5hQTVS?=
 =?utf-8?B?OFZYZWVES3pHdnBYdDh1M2FCUlBFblk2c3NhQzh0VCszL01aTm5IaHRldEla?=
 =?utf-8?B?RkE1UnFUdFVtNVltUUQ1Rkc4RzA4WDdyc2lWTVVhc1RFRTVUYWxuWDczeTU3?=
 =?utf-8?B?UzZqdGJPc0k3N1ZISTFJTkh5SmNBUzBPSDVqdlUyZ2RaVnVlL0FyT0tFNUFX?=
 =?utf-8?B?MlB5YjQ3TmtxZ3I0WHYwL09KK1ZDTmJQYkZKTXdRdStFWkFxaDJ6OXRHVi9x?=
 =?utf-8?B?dFE3SWU3b3dIK3JiMXAxb1g2dk1SZXBmdGxIdExwdndUTFozMDk4aEV2ZGJs?=
 =?utf-8?Q?KxbnKctxSU4/EdT2Dp?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: l5WnAUvaElyiPkuIP9ul//RppXC/Htje6jk1asSoP7twgJxJSWlvUZfd8Dw/avTx9Qv3mQC5EWJSUg5PdX57uFU2mHgb5gdj96RQBWjUicY/247N4RNk0UlS0YWM2X4EJovk/8cjbQpQCGCM4QZOiidfF2Z6dp1zk5ntzpNtb8YSUuQuo+TdaRxMAkkTBNJhmjld2HcXbFopvlwSz/z6B07MtldSgwPEKsVYBJQ6wD9a7gwUTbF/fnhJ1SGnNzkWtsZvFDFgYphipeaA0a7QK00NYum62iVxhtNKvOXastZC4Yyc1FAxQj8CzI7sf2iHVe031UOv5FgyqzELfJBokg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 70bf1f59-44a7-453a-5cb2-08dec547bddc
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2026 10:21:45.1553 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CLMuaQT2oW9yeTt0UZNLWADdZsuTNTnVRocRO6Ule8mnwvGtTTTzUpKw1xE9fVr7fzz8f//QI141LPvfp+i2fw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV0PR11MB9814
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
X-Spamd-Result: default: False [-1.21 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:from_mime,intel.com:email,DS4PPF69154114F.namprd11.prod.outlook.com:mid];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BB3DA65500F

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUgRGVhaw0K
PiBTZW50OiBNb25kYXksIDEgSnVuZSAyMDI2IDEyLjM5DQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVj
dDogW1BBVENIIHYyIDE5LzIyXSBkcm0vaTkxNS9kcF9saW5rX3RyYWluaW5nOiBBbGxvY2F0ZSBh
dG9taWMgc3RhdGUgZm9yIGF1dG9yZXRyYWluIG1vZGVzZXQNCj4gDQo+IEFsbG9jYXRlIGEgbG9j
YWwgYXRvbWljIHN0YXRlIGZvciB0aGUgYXV0b3JldHJhaW4gbW9kZXNldC4gVGhpcw0KPiBwcmVw
YXJlcyBmb3IgYSBmb2xsb3ctdXAgY2hhbmdlIHRoYXQgbmVlZHMgdG8gYWNjZXNzIHRoZSBzdGF0
ZSBhZnRlcg0KPiB0aGUgbW9kZXNldCBmb3Igc2VuZGluZyB1c2Vyc3BhY2Ugbm90aWZpY2F0aW9u
cy4NCj4gDQo+IHYyOiBSZWJhc2Ugb24gdXBzdHJlYW0gZHJtX2F0b21pY19zdGF0ZSAtPiBkcm1f
YXRvbWljX2NvbW1pdCByZW5hbWUuDQo+IA0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1p
a2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUu
ZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwX2xpbmtfdHJhaW5pbmcuYyB8IDE1ICsrKysrKysrKysrKystLQ0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDEzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0KPiBp
bmRleCBhZDY3ZjlkZjQ2ZDdiLi4wMjMxY2EwY2VhMzBjIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0KPiBA
QCAtMjcsNiArMjcsNyBAQA0KPiAgI2luY2x1ZGUgPGRybS9kaXNwbGF5L2RybV9kcF9oZWxwZXIu
aD4NCj4gICNpbmNsdWRlIDxkcm0vZHJtX3ByaW50Lmg+DQo+IA0KPiArI2luY2x1ZGUgImludGVs
X2Rpc3BsYXkuaCINCj4gICNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X2NvcmUuaCINCj4gICNpbmNs
dWRlICJpbnRlbF9kaXNwbGF5X2ppZmZpZXMuaCINCj4gICNpbmNsdWRlICJpbnRlbF9kaXNwbGF5
X3R5cGVzLmgiDQo+IEBAIC0yMTY1LDYgKzIxNjYsOCBAQCBzdGF0aWMgaW50IGludGVsX2RwX3Jl
dHJhaW5fbGluayhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gIAlzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwID0gZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpOw0KPiAgCXN0cnVjdCBp
bnRlbF9kcF9saW5rX3RyYWluaW5nICpsaW5rX3RyYWluaW5nID0NCj4gIAkJaW50ZWxfZHAtPmxp
bmsudHJhaW5pbmc7DQo+ICsJc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGU7DQo+ICsJ
c3RydWN0IGRybV9hdG9taWNfY29tbWl0ICpfc3RhdGU7DQo+ICAJdTggcGlwZV9tYXNrOw0KPiAg
CWludCByZXQ7DQo+IA0KPiBAQCAtMjE5NCw5ICsyMTk3LDE1IEBAIHN0YXRpYyBpbnQgaW50ZWxf
ZHBfcmV0cmFpbl9saW5rKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiAgCQkgICAg
ZW5jb2Rlci0+YmFzZS5iYXNlLmlkLCBlbmNvZGVyLT5iYXNlLm5hbWUsDQo+ICAJCSAgICBzdHJf
eWVzX25vKGludGVsX2RwX2xpbmtfdHJhaW5pbmdfZ2V0X2ZvcmNlX3JldHJhaW4obGlua190cmFp
bmluZykpKTsNCj4gDQo+IC0JcmV0ID0gaW50ZWxfbW9kZXNldF9jb21taXRfcGlwZXMoZGlzcGxh
eSwgcGlwZV9tYXNrLCBjdHgpOw0KPiArCV9zdGF0ZSA9IGRybV9hdG9taWNfY29tbWl0X2FsbG9j
KGRpc3BsYXktPmRybSk7DQo+ICsJaWYgKCFfc3RhdGUpDQo+ICsJCXJldHVybiAtRU5PTUVNOw0K
PiArDQo+ICsJc3RhdGUgPSB0b19pbnRlbF9hdG9taWNfc3RhdGUoX3N0YXRlKTsNCj4gKw0KPiAr
CXJldCA9IGludGVsX21vZGVzZXRfY29tbWl0X3BpcGVzX2Zvcl9hdG9taWNfc3RhdGUoc3RhdGUs
IHBpcGVfbWFzaywgY3R4KTsNCj4gIAlpZiAocmV0ID09IC1FREVBRExLKQ0KPiAtCQlyZXR1cm4g
cmV0Ow0KPiArCQlnb3RvIG91dDsNCj4gDQo+ICAJaW50ZWxfZHBfbGlua190cmFpbmluZ19zZXRf
Zm9yY2VfcmV0cmFpbihsaW5rX3RyYWluaW5nLCBmYWxzZSk7DQo+IA0KPiBAQCAtMjIwNSw2ICsy
MjE0LDggQEAgc3RhdGljIGludCBpbnRlbF9kcF9yZXRyYWluX2xpbmsoc3RydWN0IGludGVsX2Vu
Y29kZXIgKmVuY29kZXIsDQo+ICAJCQkgICAgIltFTkNPREVSOiVkOiVzXSBsaW5rIHJldHJhaW5p
bmcgZmFpbGVkOiAlcGVcbiIsDQo+ICAJCQkgICAgZW5jb2Rlci0+YmFzZS5iYXNlLmlkLCBlbmNv
ZGVyLT5iYXNlLm5hbWUsDQo+ICAJCQkgICAgRVJSX1BUUihyZXQpKTsNCj4gK291dDoNCj4gKwlk
cm1fYXRvbWljX2NvbW1pdF9wdXQoJnN0YXRlLT5iYXNlKTsNCj4gDQo+ICAJcmV0dXJuIHJldDsN
Cj4gIH0NCj4gLS0NCj4gMi40OS4xDQoNCg==
