Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 1A9eME8tEWoNiQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 23 May 2026 06:30:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2186A5BD1EA
	for <lists+intel-gfx@lfdr.de>; Sat, 23 May 2026 06:30:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E830F10E2C9;
	Sat, 23 May 2026 04:30:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hjdm0t1g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 614C710E2C9;
 Sat, 23 May 2026 04:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779510603; x=1811046603;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NnQfg6bthp1mE4pXzivw+ir53nxv4Mrevi3XVCA44tk=;
 b=hjdm0t1gfrekYO8NqPNEFrXkc4RyuTtw4MQO4V3Nf8bF+PoWyciU36lo
 lePrPOCEpFF2q9pqPBgHWuIPqEJoTaFs0H7h0huKLRbsjW8ufa8MxPvWF
 QKRieRVpTIhBBN0/m5fGrEOgrzzkHWNuqhJ/CnR0XKBVIuc+SW4V5JP2G
 jeYzN2Oa77CmzPhIgTp5ipqOF1FVaOF2AwyVeaZVXL4MkA2qvuorR3wlb
 mBJkyAfswQj09/H3fef2K+TIGweOoQjMrSKkNiv39LRb55y1otwIEbRHr
 5MSn7rBoJF3PiuNZsmPAzjMbX8uxxIoMsMquR/GZ7lbpAk3czxtOVSLYM w==;
X-CSE-ConnectionGUID: 33QzgiDJTgWppiPnrdGJbw==
X-CSE-MsgGUID: 1UVYHRWeSCGyn+KtnppK1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11794"; a="80162709"
X-IronPort-AV: E=Sophos;i="6.24,163,1774335600"; d="scan'208";a="80162709"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 21:30:02 -0700
X-CSE-ConnectionGUID: Ovjv3+8TSheFsCuR7XrZMQ==
X-CSE-MsgGUID: x4D4qZCpSyeTnDAUiudYpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,163,1774335600"; d="scan'208";a="245377733"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 21:30:03 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 22 May 2026 21:30:02 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 22 May 2026 21:30:02 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.0) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 22 May 2026 21:30:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hs+uNj2upHystbMc8jpSTUv4qTgMvxCu/sHaRoIcgIXNPRR7RMWk51dRu2jq2XbcyKY0ROK0hNlcWAeg2Aewh5q4NgkgFBKL33v1wiqmV11pnHedD84kUWbEOTZyuakgO98EnqYgab9exvoGqEPcxtM4KIuHPMe6/bjtynRBHETFTBJi+CZyOaR5kMnzPrLjRboImOQYiUgHO+byWGJBvsA+uc58qVJ81fQFRqgD/XBTvBMrAbMHdmzGZ/y9rBsohzDyKXEcYGTHDRa3Ky5V2E+ks15aACGE3y2fZ5VXPRvbMCIhlg8TwXIZg/zhOme/zhGk+YhHTIhxWjbx6MZQBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tljPAoIukwIC2Pi8ZcluzcMiTpTcM+y8kT161wcrOCc=;
 b=cM/YqCnw4DGehEkzN4ZVhknDE5yz2Db3ymKiGlybFgjjMJ4rQJiWSwVlLKwvTTNcZlyEs4hQj4eHGg/8vC7pNViOv6HFqAHsM9Hkn3gX0npZ8HroNwjiVT1y12j3dAKtSYKFyVi8QArkPh16Caa42DsDJmh8M9nmRMyRaQ2wOERbYxgwiZEgf3Nrnw6Eaox4If2TBUaqxvHzECly3CjZCv7LjmsGgm60wTDO6jQow0azCjmMsudSFHFGmvd5/AXxikBeeGdj3ofl1+Sxj+Gizwz1PGd/xuVSiO8W6MyWEYP5qiJoc/NA0Day1xmLE+2H4ApDMRvFC/oZapLhVWZYDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN0PR11MB6301.namprd11.prod.outlook.com (2603:10b6:208:3c3::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.14; Sat, 23 May
 2026 04:29:54 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.21.0048.016; Sat, 23 May 2026
 04:29:54 +0000
Message-ID: <a929c869-03ba-4461-b5ea-6e60d90b3c81@intel.com>
Date: Sat, 23 May 2026 09:59:46 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/11] drm/i915/dp: Always enable AS SDP if supported by
 source + sink
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jouni.hogander@intel.com>, <animesh.manna@intel.com>
References: <20260518035502.2909359-1-ankit.k.nautiyal@intel.com>
 <20260518035502.2909359-12-ankit.k.nautiyal@intel.com>
 <ahB1dIPqMJcGTU1n@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ahB1dIPqMJcGTU1n@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0108.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1d1::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN0PR11MB6301:EE_
X-MS-Office365-Filtering-Correlation-Id: 425ea0a0-3232-4782-8375-08deb883efea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|4143699003|11063799006|6133799003|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: Sg/bcnbG30VPozMLvp/vadE8Xgbm3f4jHYzdqV5RbQnq7qjB/EcZ8liEesD1891F0fwbS8ed4+1d8FWWgijIYzebAFRF4KYEMj4JTWfSD9syoBu+IAvw578qavey93PTNte3OKGTcLBF6Q6nmXxVCkiG7VagGrXsL65YxyB6poRgMryfBezO4kFVRwzHgSUfY7gv7ruK1QcPolCPfrjh2XV9hVGOehLbLIZzf8CptFsl6ew2dBKB3rYyKn0sczF9K4yf0fo4PgTGlAL+uioRVLdBwJPizj+KnB+bbL1wmBJ3IR9MD3WwJG6sx0MiGvceFA4inzdZHNe6AdzRMarn5uhOucgdlzO6SPbQ9CL9t/qBh+T+E1h14jt5ABb0K1XSPC8WqRl67+mZWqJQdrrUJ7pgiV3+ejLlY7Zut+iJSkmZFukR0jCQVyMcmkKMgYA2aCrmPOB5kfOLisvcrEjKr/ZNPfPYvtBxIkIuJslZOtX+nAI2S+lms95QG2AIWjsWOBI9KPUMQKM8vHLf7TarQUmTAg0+mkz+LjYmR7KWhDvQ52ivnJJg3hHr21NgLjbj9d7x0YRBuNEwmXmEnrg4OptDOsbEgECBeJWZETApHQMpeOPGvg5jp2TVQ3F4Xw8jQFge/GlQGPDM3NFwaVI5AIsPtVaTuTR+kLpF0WPvcJ8Ud8DK4UDYqqOpR6FDHC8V
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(4143699003)(11063799006)(6133799003)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bFBmRHFYZGdjQUVVQWpzZEpmQ2pickFJTUJUMFRQQ3g5NVNnTGlJQThtdEJV?=
 =?utf-8?B?VS9OSUFMK3Q2ZW00MWxwdHhZaXFMSnJuRGtTMG5DRkQyVmVoQWJ3Q1RIY3RH?=
 =?utf-8?B?NTJXMVluRngyZlpGRFFDVkdHV1RqNXVtTGw4K0NPZzBDTmE3QkpDVnh1NWF5?=
 =?utf-8?B?MFArUVhTN3NUNDZhMUVXREVKc0xrYUFHMGFtUlZIa2xlWU8vZFFBa1lpWHpw?=
 =?utf-8?B?QjJ2SFJLaWlETTRBQlJ3TmxHR1M1ZlpKRisxWGJqZkFOdDBpdE1LTXJwcU5z?=
 =?utf-8?B?ZlpmaUhVaXhKMndPdkNJZGVVZi9SZlhxay9HWFZraVprYXladDZ2ckhnYXhV?=
 =?utf-8?B?TjFBU2RmMmRXQm5rQTFDdU5zN3dYUDFSaDZKSEdlK0ZiRWt3aFB2WHNZQTFL?=
 =?utf-8?B?VWlpTG9INUZORDloQjFzUUQvV3JVbmlzTUZwK2NhZ0cxdWNmZElNT2xwZklT?=
 =?utf-8?B?UkNaYUQ5Y3hiQmhTQnJ3ZTVpL2Z3OW9wL2JlK1pEc3BLcExGMnlWYVludHlX?=
 =?utf-8?B?ZkdYMTBWTXVUTXRqQWhmVk1sQmRFZkpCZ1J4NWpyb3AxWWVhQzBVejVUQVdK?=
 =?utf-8?B?cHphSlpxUmdkVEdPRlFjWUlJVnVZLzh1REhKTzZHS3VubTFYTkhKVXN6bXMy?=
 =?utf-8?B?aXpzclI3c0pTWVh3SDJJcUtkK3JTRVhZVmYvVWRyaDBRa1Byd3FXeFgrTnhH?=
 =?utf-8?B?QVBNTm1MQVVHSWZPRnZxWXI3Kys1a2xZdUI3TFlOT3lDZ0E1d3had1N5STdp?=
 =?utf-8?B?YndKa1JwMWZTdmlHTHU1YTNuVHlVRTNDdDJ6UkJjTlJlMkZZeTVOSXJJNEl4?=
 =?utf-8?B?SkFRUis2YURYdDF4enRyRkVubVBLNm0rUUlKMDUydEtGU1ZIWXFrWE5mKzVX?=
 =?utf-8?B?N2N2SUtMak00T3prZkZKdXdnVkdCRkhhNFFTdkc2Q0hkam16OGRLK0RVNFJa?=
 =?utf-8?B?ZTF6RzdqYWtjRy9rNWRYdTNDdVBiR0NEUGczSU5HYlBTU2RVbE5QLy8vK054?=
 =?utf-8?B?NzZ5SEp3MTdhOGNYZUdjaWFLRUxlRjVVNU5PMXduaEdjeVVhRmJuYkJlUFZ4?=
 =?utf-8?B?YTZ3dWtzRDhLc0xxMlRYa3VpWktISWE3M1Q2YU4rOURUQ1ZZRWwwRC9JWG5B?=
 =?utf-8?B?R0lKa2gyZzJ3Z29PdDk3K2JOckRVSzVYUSsrWFZra1F5RnRXZHhqQ0o3bzBu?=
 =?utf-8?B?WVlEaTkxVk03OUY5Q0dSdFBsK2psWVhadnlrM1o2K2czZWVJRlh0dFRLdkZM?=
 =?utf-8?B?ZjRWOUV6MlNmMGZQQkc2TjhXeXNwSGZ4VGpqNy9wUHhnZ3Nxc2pFc0RiWm9T?=
 =?utf-8?B?V0UvaXJ2UEVxcktLNUpwQ0c0allYTEtRR3pVcTl3WGhoV0Y3czNsV0ZSM0Jz?=
 =?utf-8?B?ZFlmQzNUVzUrK2RIRlgvdTE5cXQyTmgwbVEwVlUvTDZOSC9sVUFoclozVWJ6?=
 =?utf-8?B?Zkpqbi8zV09idkR0TXZZWmVTZzVSMHdwaW0vVzgrZGdQRHROMmtJMGpONjVP?=
 =?utf-8?B?M3ZDbUg0YkpaZ2hTVzBSZ3RKWUc2bk55WUJWUkVhT1I3cFVBeG9qMUJmcmtx?=
 =?utf-8?B?dUN5aVAxdGpmZmQzSkxZM0RIbkxpZWpkOGtBNlAyQVlkYnZHbkVRWWJzV1Mr?=
 =?utf-8?B?b2VmU1RvM2QrNEk4WjlUU1VSREwxZW9kVWFrN2dxb2VheXJlYnRISUhabVBJ?=
 =?utf-8?B?QzBWa0tMYUJaRDNpOTkzTjlMVWNGWVpJMi9qc0lJSHJ0SHBteHg3VHJqY1pk?=
 =?utf-8?B?Z3c2ZXo2aDZhM0xGVEZVTW1QdS9MdTIyU3k1RnpRTzRjMDZFMEVTc3Y0MnBy?=
 =?utf-8?B?dVVybUZVT2RZZnRNYmhBL0s2SnVpZkFidjVSTmpqQ3d2WE13TTl6RmRmckJX?=
 =?utf-8?B?N0NWYUtZSGQxVjA2cHc5REs0Q3B1SU5XYjV5eXQ1UGxCTUdKUzRhcUJDWlVT?=
 =?utf-8?B?T1pmYkwrbndaZDRBcDUvOS9KL0pKVjFaeU1LMjljU0pLemhlZ0hyQ29VRlpu?=
 =?utf-8?B?WWhUaXJtR3pqM0tDU1p0M1FZWkt3NkVmVG9iZkdNYTNQUDhpc0JrSTNkQmEw?=
 =?utf-8?B?SGVSY1laMy9ocEt1Q3VEb29VdFRFWTdNMm16Ry9MRjNBbElJRDJ4OStmYW44?=
 =?utf-8?B?UUg3QmxKWFI4clV2NzBiNWp1QkpXRG9UN1VMVGs3WXg4YVV5NXpXZ0RmNVZP?=
 =?utf-8?B?TUtCSVlxRGdnNGtTNkdWNUJiLzVJRGpxMkp1MnlPT0pEdngzeUJqMTVxRjZj?=
 =?utf-8?B?Ui9xYWFKYXBlVHhNZDJCK051Unc5RzhUMjJjWlpmelJPMFRBODNxaFJ6eWtX?=
 =?utf-8?B?TExGTDRWNDJEWTVRaG15YUkzWjBERE8rY1czVVozTlg4MkQ2b1FVV045ZnVO?=
 =?utf-8?Q?3D2gw+wU5VwGIb/U=3D?=
X-Exchange-RoutingPolicyChecked: UDF+MQvvigIKfuF/l1kRT5MHHrTfeY6nD9FKUvYH3Y1mgMO69e6o6XBSPAdOWgreMMutrBZmpNYYNTWRY37JHSG/MvTUHNEUn33ckPd4sDqD1NgMgoLat+GaxkpasFvEH23jzpeWUfMXg8qv7970snKutdDABrvmDTdFLOfxvWUJlITKek71vfgpTHaD7w3usDQFb895oAd9bdkCiEgQVqQfwvnlxs7imU1iy+eqK5Fs8C4kJKjWCs+x1nMnMnsGPdqp8s4AtlUKLmuIK4BwfycJyDBxS6E7Lm504khBovV2ol3BN19yitZIIoDtky4TqVc3vv/UA3nd1MMlWaz3cQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 425ea0a0-3232-4782-8375-08deb883efea
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2026 04:29:53.9878 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YeHTbrDrpr83OoEvtnPy3Iofl56zFQosLZGT5iTMCbMdYHQeplN1ELGpmlv/9P2B6/Nyr5SBoMU52AuvaEr1XF4xRH21wGWfmWs7TQHTKeA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6301
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 2186A5BD1EA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 5/22/2026 8:55 PM, Ville Syrjälä wrote:
> On Mon, May 18, 2026 at 09:25:01AM +0530, Ankit Nautiyal wrote:
>> Currently AS SDP is only configured when VRR is enabled. However, other
>> use cases like CMRR, Panel Replay, etc. also send information to the sink
>> via AS SDPs.
>>
>> With optimized guardband, we also need to account for wakeup time and other
>> relevant details that depend on the AS SDP position whenever AS SDP is
>> enabled. If a feature enabling AS SDP gets turned on later (after modeset),
>> the guardband might not be sufficient and may need to increase, triggering
>> a full modeset.
>>
>> To avoid this, always send AS SDP whenever:
>>   - the source and sink both support it, AND,
>>   - there is a possibility to use it for VRR and Panel Replay for
>>     synchronization.
>>
>> v2: Check if AS SDP can be used for synchronization for VRR or PR. (Ville)
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 6 +++++-
>>   1 file changed, 5 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 69eb474fede7..2c1dbcb0a2ca 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -3181,7 +3181,11 @@ static bool intel_dp_needs_as_sdp(struct intel_dp *intel_dp,
>>   	if (drm_dp_is_branch(intel_dp->dpcd))
>>   		return false;
>>   
>> -	return crtc_state->vrr.enable;
>> +	if (intel_alpm_is_alpm_aux_less(intel_dp, crtc_state) &&
> That also includes lobf stuff in the check which we presumably don't want.


I think I will remove this check and just have intel_vrr_possible() for now.

Regards,

Ankit

>
>> +	    !intel_psr_pr_async_video_timing_supported(intel_dp))
>> +		return true;
>> +
>> +	return intel_vrr_possible(crtc_state);
>>   }
>>   
>>   static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>> -- 
>> 2.45.2
