Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iIE6FuJ+EGptYQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 18:05:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 012DD5B7580
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 18:05:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8354B10F68C;
	Fri, 22 May 2026 16:05:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gDIy1t6a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCB0910F694;
 Fri, 22 May 2026 16:05:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779465948; x=1811001948;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=lpuOMH7ZA7hA1or/3AATIoBqgeIu7BSwZqGiflogM2I=;
 b=gDIy1t6aioUIbG7fYzNohkCcfrIogY/OPLiNE4i/CYipAbybwTtZeO3V
 irQyHMH4nUMhXcATo0qPw0CXgzWQNCUsWYBM5fekI4XllvBlYWf488sFb
 UMrTn2Lu/LRfHE8BxywdXHdvpqcHaM2bXN9DWVWatt4P92TpCAMf7oSAZ
 I1l1t5Vl48cjo/slYJyZWwAyYUznpU2xrawyATOFKRuKoi+lJ7uv3xSDF
 2gdZ5GhbXzUujkE25MmnZvoXFqx2Rns94DbcejrlD6usfjM5hdrnyeIEB
 bYVCkmC2Ab92sdmPo1Y9530UCi0A1YDhTaKdKlhXzvwyXtQnNd4xqNlz8 w==;
X-CSE-ConnectionGUID: H0YRR+RDRqOFa3vr6iuVNg==
X-CSE-MsgGUID: EW3qoa/sR/GrdC5EUeH1KA==
X-IronPort-AV: E=McAfee;i="6800,10657,11794"; a="79547857"
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="79547857"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 09:05:48 -0700
X-CSE-ConnectionGUID: zQIhQViDRFuJmNY3vvRZNQ==
X-CSE-MsgGUID: MZOYAVuGTQSJzmhLbp2WnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="264491736"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 09:05:48 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 22 May 2026 09:05:47 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 22 May 2026 09:05:47 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.14) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 22 May 2026 09:05:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QCZIRecjtUyyKPme+68/uBYZquaDvGg9q18X3PA2jLONcUa/9f71FRqalIEbeNqn7JfvIm0ZpxYar0Dfg4h7IKL+yqfG2NUwzliFwmkvZtPFbfn5t58gd3KcWnQXTVp2c7KKfjVcbItMrEdGFwovtNfk4KgcJZdIecbFU1yCcxpgoWhwS0ldjlnfk2ibAW0KrNXy8KYnXWl0ZsKZQGt1GEx9/X+FPYE3GIpmxBQ14ADjegihA7ux+cSovl0ICWRTonw2Hk3mOkUR502nlFud6MGm2wN/QHe5UeukSHW0x6pLdQFldzZDNiP7gAbYZP5Y5ZljaxyYSJUsrxxuknzE0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7dF28g48K3KYA29L5X8AuZG5V7RY+a6nt4nM9zq9gu0=;
 b=IhDi6/pQqCS3zBTlpC2E9/98yA1tgPoKwT4jZ8N0i90DM5GPPFjt9la7DQckspiCWXPpjSio2DfayMVdl1PJiCfIM2Oe6a0avyiOmx1QEA+W3xVMycYP2zzeqgfScQych8JvJ1KAWGiWloHOQ0VhqAEMx3e1EAayu/f2emjCGLIF+vQW2DxQY2u3YRBlKNmbD++G1W8417/Zp271BRj25AI32xyfa9gSFWZ/rAY3rsKO9swveiNNkKIa8a87iDwUaVWMDzDaYPK2GkiFL4rFrXmFGKEg/Jd2RMwqcy4bg38h/qh2vInrcgKLvFcV3Cg6ZNntW5eNVqndfQOYO1UCzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by CH3PR11MB8415.namprd11.prod.outlook.com (2603:10b6:610:17b::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.17; Fri, 22 May
 2026 16:05:43 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.20.9913.009; Fri, 22 May 2026
 16:05:43 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v2 4/4] drm/i915/dp: Detect changes in common link parameters
Date: Fri, 22 May 2026 19:05:14 +0300
Message-ID: <20260522160514.2628249-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260522160514.2628249-1-imre.deak@intel.com>
References: <20260522160514.2628249-1-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: GVX0EPF0005F70D.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::38e) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|CH3PR11MB8415:EE_
X-MS-Office365-Filtering-Correlation-Id: 282db2ec-ff26-4f16-8987-08deb81bfa31
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|56012099003|22082099003|11063799006|6133799003;
X-Microsoft-Antispam-Message-Info: hs+8ZqwR5LO9rwrB7Hu1H6GlEzmPbDnijZRvLIpBHq6yyED8pUV1TgO/8nKei2hrEs7ZytpAM+NZjhaDPjdcY53kMInuRG+lZ0jYLng/MoFSO5RSks9/Kvz1M67BY4gkrHI/GN4e9Uhcde5H+LHvleDaEXhzcrXD8XVRkLnmHl9GpBgQAWAqWhrw6vEvERRvB4y6KgMzcpClzfDV+rKKJGIiCkY//FV/dWPV8mJuJ/FHC0jFMFpfMkwAT6X5D/cCCH0E/9WSHaCG6JBtXYc/uUDCYXIoffQHf0VeNkReD3TNr1SpvwFKDc90HWN2UXQAUPiglT9e44dax57PI4aOKYAJeY8U8yCo0HK56P33NG6epCUVQRJW4+Hct0TmS9yStSn1BXnz5DLrgDmOLdpsYKYeeiAuy8tv3sjCEyWTsxmgVNLgRJYCAD6WTHNdji7p2aeMBnUxK3qElQLWmgi/jJd9LloogQaNEnUz9CCiM2tK5p+iQS+yFN9o4BgFAKhPFyp3XlOuuSEnikkqEjh6ZhNeCk0mqGDx8C7Ss9rlfovXlvF62j+B90ZJvFpZGtvNf+tavFkxAnvZPUTTPpprpNunyZPrTwIvFSpJN/3Etf1/gqZyrbIjrgVa7Ai8Xwh0LvpnBjm6Xlbc20zMQ1Prw+R6gaJcipO6ppDDouGR2vyBGaodATkEpFRV/0G9ZGpr
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(56012099003)(22082099003)(11063799006)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RDVJS0hJQTFQQW43UzZSZzJYaDdMWHJEMktyTmV6U1N2aXdwZ0dEcjNRVzFM?=
 =?utf-8?B?TURKWWRsZmNHVStSMWJObjExZ3I4L255WFgrVjlWQXpXaVZ1QXk4UnFnRVQ0?=
 =?utf-8?B?Ni9RWjBhSG11LzkwUmhmL243ZFRtYUNnN3RKWWFDbnVEZHFtdGQrcGRYS0s1?=
 =?utf-8?B?eFQrZmZXaDNsdEttYVlDSnpMVG9mUlNTaEhuaUZueEhZeFJuZnNwWGdNTGV2?=
 =?utf-8?B?V0N1dUNraThhMEs0UHFxVXR2dFZHc2NDdVY4dFI1RjBRVGY2Sk1aVDFhdTNu?=
 =?utf-8?B?N0pqTmpCOVBNM05nNE5tNER6M2RBOTRlSTNNYVFHSVpSbm16WmJZaG5JZklC?=
 =?utf-8?B?OHBtcUFiYTFhUG1DcEY1VlhFVGdIVTRxWlpkVzFhVWRiZ1dIeVM5cG9LQ0Vo?=
 =?utf-8?B?MU5aMDUvOVdqTFp0ZVdYTUdydWl6bWpFbnRsRVU0OUI5L0xoZ1BpeW56bVlW?=
 =?utf-8?B?UVBSK3ovWElaZlEydE1OdzdjeG5tOXc2bjlkT24rZmF2Z2U3bzhCVDlUT3Rq?=
 =?utf-8?B?VGZEVjBoVEh4ZHAwTVppWk5sWTM1RURIVFJDU2x6UkFQWlB2TTQyQmVXMVEw?=
 =?utf-8?B?R0dvVmEyeWN4TEVvYzE5WGNrakpiSmxFMHZ0ZG4zcGovTm5iNkYrZk82QmRZ?=
 =?utf-8?B?S0dNd0E1dHRYR2dRTmFjUUdUZ091QzRxb1JXZVFKdEY5Tm95Z1Q1RlpXenFq?=
 =?utf-8?B?STJQUDNUazBmcjV3YkwzL0ZEaUxpWnRQWG8ybWFtUSt1djNtUVoxZ1dxNkcw?=
 =?utf-8?B?UG9VUklobVZOdkVYZGR2MG9JcTZjQzJhTmtsQW1QWU1DVWJuMmUzcnpuUjIz?=
 =?utf-8?B?UTRObWxnRUhDckVndW9tMWhrUGFxaGhWT3A4K0J5QnV2YU1hdGdHVDEzeDdR?=
 =?utf-8?B?U3hNK2ZHRUk0VHFXbm15L3ZDS3NVTElsTVpYenVNaEdCOTNsa0o1UWt5Mllr?=
 =?utf-8?B?THd5Y3l6RUlZZnY3RzEraWQ4WFBjVzBrNnpvOTk1Y0JlMEtCZklrTWV6RHhW?=
 =?utf-8?B?cXlxeGlSVzRJd0FwQk9qQWkyVDBKSHRLTlpPU2tFMkI4UU42dWV0MERTbVpm?=
 =?utf-8?B?UVF0SEZDTXhnWEQ3MDBGaVpaOW9JQVErVU9wMUk2WUxvc2ZmZjVlTXpLNm1B?=
 =?utf-8?B?ZnE5TmpERUxwY21xY3ZoNEIrN01yYVBBRm1ZaG12VHU1cmVTdWRZYVZKSWp4?=
 =?utf-8?B?ZEViRlJZU1N0M2JrNHpaUndKRWpJdnlkaVZwdktVZ3BaaCt6KzRORnQ4cENB?=
 =?utf-8?B?ZTJpc2Z0TlFmRzlWdUM3RlFMQVNJZ3NaNUpodTlySUp2N1VzWHJTUzJRN3Fh?=
 =?utf-8?B?cXVpL282bGtsVENhbHhUVzI3bEJTdFdaZGJkZ2s0d2dNeFlGUEV4SFh2T3V1?=
 =?utf-8?B?K3hvSHV4OVcyMDBZS3FZZUd1bk4yTWFkSFlGcUNjVHNsTXowSk0xck92MmdI?=
 =?utf-8?B?ZlBTZGZJVGFNZU1tazRzck5KdVkrT2JiY2FITklmS3c3M0puTExqb201cFF5?=
 =?utf-8?B?T2E4cmlPSWl4bFFJdEpVZU5ZQlE0cDUrc2JWV2NPQ0d4dTZNQzVycmpNdFBK?=
 =?utf-8?B?OFdWYmtCTGlSR1J2Z3NSTW9RTHFFM1dpZ1IrelFlMjVNR2dsYUV6bGs3Rmh0?=
 =?utf-8?B?eFVpSHFmZkdtajlWa0lQMUVmMjFpVDA3NVRvcXowc0d5TkhiTW9SOEZBMFNS?=
 =?utf-8?B?L3NsSkdJMFlYZm5lSnkvdHNEMmdIbHdCcUlJdnpJWGxhandGTUdOODJkL05B?=
 =?utf-8?B?WU95cHlZdmxYVzNNUE9oaEUrQ3Z3Z2w5UFB1QThvdEJSTVFFZTYzem5PMmhL?=
 =?utf-8?B?NjFVdS9WaGR1WWRad3VqNDlVQi9BV0lJOXdVTHNlTHRmUUNpTjFya2hXRzNs?=
 =?utf-8?B?ZVJWYlE4enhHckgvSElCeEI1dFpSREMySU41aE1hbDk2QmF6OExiM0R1aW50?=
 =?utf-8?B?eUxoWG1LUGNOL3phRmNENjFscWlVdy9XK25xTVpXc1pmUEdUQzlRU0ZRSi9M?=
 =?utf-8?B?TndlUWxzdDF2anI0bUhLSzI5SXN5ME5vNU1ZalliUE1BcVZ0TDJNWU9MMHJo?=
 =?utf-8?B?WUxtTjlDL1NkTDJiWkNpL1R0cXNjZ0pKRVk0MXpFWDZ6dlBCQ2d2VVUzUkU0?=
 =?utf-8?B?UDBUQU4rdGlJNDV2a2xOS1ZFanhSbWdQWXRRak9nN091Z09HbWp4cHJKY2I1?=
 =?utf-8?B?MTk4WjRWOWlGMXRwNVRzd254QXVTbXNBZE9xcnVIZnUvSjNsL2dBMy81TlpO?=
 =?utf-8?B?NElSd1FZcWUrdzBudVY1WkdxV1FGY05TMy8xYTV1L1JjcThNTmtLUm5YM3Bh?=
 =?utf-8?B?ZFlkeXBiSnR2dmw0encyM3QvUkRGMGF3Q2hNZjJweVlpSnFTUGgxZz09?=
X-Exchange-RoutingPolicyChecked: jyKMHv/PlDgrFNY5zr0DrP/IIc2IZM8gb7RbIOdJO1FRge/doM0SwLUsPsWG/LwB0lkHkNeRCt31NU071sWxQkq2gwX8MT4k8ofKyDEmHJmASCRbIWTDDyfB8BhYDxVaSHjVfim6o4E0mnB4MQt+Zf8kXxVRFhXDsRxMLl2MOykQvvWUmBGa7D7JwtQFJVE2iyPZIKfj/ZwBhAsKMQQaDH4Yqj1leRXuEZRKgzSupUNGK67sgj7UxvWcBJFZN9eibZ0K+DcuAHie956jsSW16e4OSoxggjxYRN5VEA2MKWV6NDeSemqyQwDCHNcIgWV6vjFpqXm7EOMn9t1Wgs6MKg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 282db2ec-ff26-4f16-8987-08deb81bfa31
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2026 16:05:43.7019 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: viPw+kB7aw7uwcJXx1Jr/J3YJHLC8COfP9h1JMl1+dzUFgspWFVVOgYMGGD+NfsHzRt/FeMzWgQKr8QlPyfLBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8415
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
X-Spamd-Result: default: False [0.69 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 012DD5B7580
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Detect DPRX capability changes without a long HPD or RX_CAP_CHANGED
signal and queue a corresponding link params reset.

Besides detecting the above unexpected capability changes, this also
avoids races between queuing and handling a deferred link params reset.

v2: (Ville)
- Query/set intel_dp::reset_link_params instead of using helpers for
  these.
- Assert matching types for old/new common rate elements as well.
- Add TODO: for adding a struct tracking both rates and number of rates.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 54 +++++++++++++++++++++----
 1 file changed, 47 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1a6d00852eb13..3f9123a532447 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -362,19 +362,25 @@ int intel_dp_max_source_lane_count(struct intel_digital_port *dig_port)
 	return max_lanes;
 }
 
-/* Theoretical max between source and sink */
-static void intel_dp_set_max_common_lane_count(struct intel_dp *intel_dp)
+/*
+ * Theoretical max between source and sink.
+ * Return %true if the max common lane count changed.
+ */
+static bool intel_dp_set_max_common_lane_count(struct intel_dp *intel_dp)
 {
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	int source_max = intel_dp_max_source_lane_count(dig_port);
 	int sink_max = intel_dp->max_sink_lane_count;
 	int lane_max = intel_tc_port_max_lane_count(dig_port);
 	int lttpr_max = drm_dp_lttpr_max_lane_count(intel_dp->lttpr_common_caps);
+	int old_max_common_lane_count = intel_dp->max_common_lane_count;
 
 	if (lttpr_max)
 		sink_max = min(sink_max, lttpr_max);
 
 	intel_dp->max_common_lane_count = min3(source_max, sink_max, lane_max);
+
+	return intel_dp->max_common_lane_count != old_max_common_lane_count;
 }
 
 int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
@@ -792,13 +798,22 @@ int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lan
 	return -1;
 }
 
-static void intel_dp_set_common_rates(struct intel_dp *intel_dp)
+/* Return %true if the common rates changed. */
+static bool intel_dp_set_common_rates(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
+	int num_old_common_rates = intel_dp->num_common_rates;
+	int old_common_rates[DP_MAX_SUPPORTED_RATES];
 
 	drm_WARN_ON(display->drm,
 		    !intel_dp->num_source_rates || !intel_dp->num_sink_rates);
 
+	/* TODO: Add a struct containing both rates and number of rates. */
+	static_assert(__same_type(old_common_rates[0], intel_dp->common_rates[0]) &&
+		      sizeof(old_common_rates) == sizeof(intel_dp->common_rates));
+	memcpy(old_common_rates, intel_dp->common_rates,
+	       num_old_common_rates * sizeof(old_common_rates[0]));
+
 	intel_dp->num_common_rates = intersect_rates(intel_dp->source_rates,
 						     intel_dp->num_source_rates,
 						     intel_dp->sink_rates,
@@ -810,13 +825,26 @@ static void intel_dp_set_common_rates(struct intel_dp *intel_dp)
 		intel_dp->common_rates[0] = 162000;
 		intel_dp->num_common_rates = 1;
 	}
+
+	return num_old_common_rates != intel_dp->num_common_rates ||
+	       memcmp(old_common_rates, intel_dp->common_rates,
+		      num_old_common_rates * sizeof(old_common_rates[0]));
 }
 
-static void intel_dp_set_common_link_params(struct intel_dp *intel_dp)
+/* Return %true if any common link param changed. */
+static bool intel_dp_set_common_link_params(struct intel_dp *intel_dp)
 {
-	intel_dp_set_common_rates(intel_dp);
-	intel_dp_set_max_common_lane_count(intel_dp);
+	bool params_changed = false;
+
+	if (intel_dp_set_common_rates(intel_dp))
+		params_changed = true;
+
+	if (intel_dp_set_max_common_lane_count(intel_dp))
+		params_changed = true;
+
 	intel_dp_link_config_init(intel_dp);
+
+	return params_changed;
 }
 
 bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
@@ -4885,9 +4913,21 @@ intel_dp_has_sink_count(struct intel_dp *intel_dp)
 
 void intel_dp_update_sink_caps(struct intel_dp *intel_dp)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
+
 	intel_dp_set_sink_rates(intel_dp);
 	intel_dp_set_max_sink_lane_count(intel_dp);
-	intel_dp_set_common_link_params(intel_dp);
+	/*
+	 * Handle unexpected sink cap changes, or a race between setting
+	 * the deferred link params flag in the HPD IRQ handler and
+	 * clearing the flag during connector detect.
+	 */
+	if (intel_dp_set_common_link_params(intel_dp) &&
+	    !intel_dp->reset_link_params) {
+		drm_dbg_kms(display->drm,
+			    "DPRX capabilities changed before long HPD or RX_CAP_CHANGED signal\n");
+		intel_dp->reset_link_params = true;
+	}
 }
 
 static bool
-- 
2.49.1

