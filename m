Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uEE8M4N0y2ksIAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 09:15:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3747A364E9D
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 09:15:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88F3B10E05E;
	Tue, 31 Mar 2026 07:15:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j9Jm63Tb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DD2910E05E;
 Tue, 31 Mar 2026 07:15:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774941312; x=1806477312;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jP4rxq7kaIJamJU2Rr4X7H4IxlWRrfz5QXlt5VKnGO0=;
 b=j9Jm63TbzZdmg3BNP/PGM0XDnDoaWfxBYsHDDWfDgsljMYjRLZtn+z2O
 NbRkzBulWK7mZCJduvXfgzHfwO+Np+8PrdydzK03RuILhJe1BPn5wFIAA
 jTwup9s0nbUHEJ6zIs/nrkoveQPKo3JomUHhXdQ5HJODrCd1RYrgdBpPN
 G0ZIQr3K6bST/AemkMJR6ZvW5ieiBVaepVM8j8pRmZY4y+Fmh3Cr4jdLL
 W3EpX8aUsK5DbEorUT5y0iP1vDvY5mH0ewTiVBb1pxzdWjopHH7aWJTdp
 LSzMYkmDjooo/YEmFD1Q77yf1W0yvGcfaDqpYYouIKyjGPLXJWD5AxXus w==;
X-CSE-ConnectionGUID: vMyOBRX4TQ60iJRSoxxltA==
X-CSE-MsgGUID: u7VwOOWpQO2U6s6kjCn5Tw==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="98554318"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="98554318"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 00:15:12 -0700
X-CSE-ConnectionGUID: ioZOAzDoTeiW57lE1DzQZw==
X-CSE-MsgGUID: 52b6FLeARKyxrBE7L9L3fA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="226534045"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 00:15:12 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 00:15:10 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 00:15:10 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.64)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 00:15:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DBaFo8l94g7fk8qEc9tJDpnevav1LtVxqcSS9H5ftR8i1X7j/lJ+zlRIGWQj23yBoEx0l0AF12L7SubfBO/P96gSJUgLTZjazvjIMr+9X1SPeCn04g2iKy+lbnLas0a3h+WYiHS+YqBa1i5eX6LHItqLQKKMYJqCK7Yirkjm1O8LdbJBfI+SKsYoX9BfpfPxe8ZTIp+38gQXJOKEgRe2h5oEe+H4Vbe8FGR2MjDyrEavKuNwmMK9cQUv1HINcV9ySLvGKtABLRWM0Y5KiHWWi82hYWvGu7SwvEHnP0ux+J6bMZ9TMQXcF6R0jbuixfqYEg/BG1L3pZzWJ2hVG8ZK0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HS72Bl+nitLM3nOoympNGxMgxxZ/aXLAzP/hqtrLUUM=;
 b=CvvIhkKK5IFZFVaLqKyktgB+KRTrg2Vd6m/wOintyhPqQ35+XIMMp2L0rAawfG/yOX1qIjQh/elpbjHKN1q86z3vf1CpHt1DMKjIGYbfszUxZR9ijTLuiImby1YfvyORgJihGKhKbufbxBs8sS9p8b6RPGWq5c63F6I5gagJTjc7G21BLKjmN5FmMKawMpeGVTL1iNbBkEjgDIRhsq7eOIc9jtn4g9T3dhsUlNk26w8MZKULoQgvLMAPctmOe3sVn67CikA/N95clzvu8031MM/0jCfxxE2Mye7XW3ZqPQh0k4psYR+DlW6EYOW6I43ZKKImhQsQAeBTNkqc2zykDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB6141.namprd11.prod.outlook.com (2603:10b6:8:b3::13) by
 MW5PR11MB5931.namprd11.prod.outlook.com (2603:10b6:303:198::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.15; Tue, 31 Mar 2026 07:15:02 +0000
Received: from DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::1cfb:82cd:3519:418a]) by DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::1cfb:82cd:3519:418a%6]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 07:15:02 +0000
Message-ID: <bd19bcbb-f662-4b06-b075-93c667c9ab24@intel.com>
Date: Tue, 31 Mar 2026 12:44:54 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 06/26] drm/i915/writeback: Add function to get modes
Content-Language: en-GB
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <sowmiya.s@intel.com>, <uma.shankar@intel.com>, <swati2.sharma@intel.com>, 
 <arun.r.murthy@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-7-suraj.kandpal@intel.com>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260325110744.1096786-7-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0223.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1f3::9) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6141:EE_|MW5PR11MB5931:EE_
X-MS-Office365-Filtering-Correlation-Id: 79201e07-857a-475b-919a-08de8ef5395f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: t+ymtbb/0VvEIh+4kGQIyHyUKLSC2wCi8n+LbspijPWK3R+AMDNb5h7edGA/hbiuHJNuzLOVQvYrmaJ4nd1hr+2CshblwvHnrVPE6QBv75LIoe5HrF81V64Dg9V2pI+sjsAQe3NNM7Jave4g+REtWRGx6t08FQ2PDQBc/XBf6jYxrSZVrjYM/rbsQbgza91EnHGLoJPloacjFLoV3ZUShLpBWGMzCsbKmgiK5ze0Gt9+iHuJCfJ3a/lEAMRU63NJpbfp4O8JfYqdI27KmgaGTci6x3UmI0UptXlmuBZqYmy6X1FrfHBpOZc2Sp12aRvIWfS7Tw5cShuzVIeC7u73SYT+M7LZUJOLVtvbtqFyeueTEdIm9CxtOVTDVlAzxzFw/jenz9DbKT5jL4V9Ep1KobmsUDJuyLOINHUHws30SBx8A1sR2Y1MpThCGO2x8mDBJCiL8/XLVNzLK3p8JKH/L2aySkvMVDcq2Voe8vXpSLbFfS2n9Lcvbs8VCK5iqHTujEGfrXFFp8dxp3KhlH5e5+wJhEU6Q9AeFgxhuVpRLilVLPkIbycsYh7xsegUZiagQJb4PhTQ4r3LfKkfYfznAiNSD0dSLLdX5VjifC+T8pLMcEu3yOayso/N7GFuFtKP9JP8C6RTCu0I09uLf1aJtT77jfWg9wUiLDPrGzY4ACVJNF7D/0p4+X2p4k5/3Z/t65G+PoSYxudBX8NVjUs39yxu4Fd+E6sX3oojXknWevQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6141.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eTlObzdEQ2ZQUDk4djdXYmVDY2ZBd2ZvVzBzOXRxcEZXa2RvQldibFB2ZTdz?=
 =?utf-8?B?SG1tejMrRVEweG9hS2FDVk4xQzJuV0JpRGl4VDVMRWhtdnZGVlRHWS9CT0Ri?=
 =?utf-8?B?elh1ZXhGYURHZTM4ZGZVSis2eHVtNmk3V0o2QUNuZTNjajBVZGhMdGo1cWNO?=
 =?utf-8?B?N2VzZEwxRHpONmVXanVXL2lyQlpkTmFJVEtueitoQVM4SmNid1hFMGdHWS83?=
 =?utf-8?B?RU80YlUrelM1V29UVjRobEVSUUUvK1Z1ZTBnQ05Mc3JnYnZpZXRCYXp6R2F3?=
 =?utf-8?B?eTJHZUM1Ni82RXQvTGZXaHhJVG8vaWJWNVkwcEk4S29zSXhqUFU2ZzBNamsx?=
 =?utf-8?B?ckdId1BhYURPRERENjVOaUNiODlqZEFmYU5sNHdwNmM5Slc1UzZGOEJZNzZH?=
 =?utf-8?B?N21xQXNGbUNtaDQ4YXU0T1E1VWkwcko2NE1uMXdmaXdIOTBqenBodStoTko3?=
 =?utf-8?B?TmpjMGdrZU5mWEV0QXhwM3JkTjZRdFNzenVqWHpxMHVFVERHSVZJcDdwWExY?=
 =?utf-8?B?ZzBjYmU5dXpwSFBvclBMUExLTVFFTUJIRDlIUjIxbnlXclpDaFZYTno1MXh4?=
 =?utf-8?B?c1BxdjliWWk5c3ZPbE8zMVlRRy9SWDJhaHNpdkhlWTdVZlJwclZYUEREUCt1?=
 =?utf-8?B?cHZ3QjJoc0FveUxPeTNyRktydi9CUjNRdGFSQytWaWpHaGY0ZmhwcFE0UXc2?=
 =?utf-8?B?R2NrZTZhdUt1QmRqTllpb25icjE3aVljWjZqRXQ3a2VwR0VGR01CNlMrT1FT?=
 =?utf-8?B?RTRQa2pobzVVTWRBU0ZlSVVuSGVGcXZyd01qOVBtOEF5bVJpd2YwTGdySWZv?=
 =?utf-8?B?aXVUNGgxQjNYZFFQVTQwTTZIKzlGSUpDazF5Tzc3ZUVweElKc05JQkRzR3dF?=
 =?utf-8?B?UjhhcEp1SzRBVXVPYWQ4MDEzS29wTjJLK0NTS1p4SHRteGZTcXNvWUd3WG1G?=
 =?utf-8?B?dlBodEhnb2dPVnloY3hRd21GSWRhL0VVTEtQS1NwZWFmRTRRSWIzQUxpb1hF?=
 =?utf-8?B?Kzh6cjYzZTg4Um5Fc1NOY3ZlV0N5RUZtL3p3NHhwUjFiSUw5TUJlOWJ5aVVv?=
 =?utf-8?B?dXQyRmdMVVJWa0w1U2dGVjdaWHhpbzlQSm1id2ZYU2RqZWFtd2FiV3prdUto?=
 =?utf-8?B?T0FYL1RzV0ZVN2NBTEJ6UTBUOEpjbXRjVE1udDVWRHMrS0t4aTMxNVJFUloz?=
 =?utf-8?B?djJWM2lOaVgvOHpnQU5ySGc4SWNiYzk4bmx3Qk82M2g4NXoxQ2R3aHVyZjJw?=
 =?utf-8?B?TUlKRmdWQVBvS3luaWFIVzF1RzExbm9tSnluTWFtUzhKV0ZYang2RzBXejVR?=
 =?utf-8?B?YUZWUDlIbTNTR1l5Z3VwV3JBR0tidDEraEU0dmEyNU5kdThPTGZhTU9WMXJ0?=
 =?utf-8?B?ai9LUUhZOGRFaVMzbkRvaTB0eU45NW1NbER5Z3RBNm5taytxV1Fsb1RLZWM0?=
 =?utf-8?B?SVYwbUxVRmtYRndRcW9iSEgrQWRBWjVmUWtFV3drZEVxcG5TNEZPdGs1YlhT?=
 =?utf-8?B?L2lNV1M0RjE0Mjh0a0wzZG4wcmNhYjd5ODZSR2V5UHpnZ0wzZ29GYTBhZUdt?=
 =?utf-8?B?dmtweWh2NW9kYTl0d3pHUlR3VzBOR1RYQmdFR2laN1BPZXl0Q0N2N0dScUNS?=
 =?utf-8?B?eS9acktLOGZyMVE5K3B1YUxPbzdMYjZqRVE1d1g4aTl2QVR6K0RmUkN5NTg2?=
 =?utf-8?B?ZTlDWmZJOVVxR29wSFdMSTZIaDIzZ1llQVFobGlTc3FaY3JsOWZ4SEN0NUwv?=
 =?utf-8?B?V0N4WndMQlpDeWk1emNkNlhiNEJ6MjNwMUxad0VyYmRiZHVFMFI4dWE5bzd1?=
 =?utf-8?B?M1lZcG9sblRtUnhlWCtMZFJIL1ByNTFFcTFaY1I3d0tsR1JzU2JrQ050UXNk?=
 =?utf-8?B?TGpHSDN0V2VrMUJ4RytjNjJJVHVkWnh2L2tia1BicXZkQ29DcmtUeEpVRWla?=
 =?utf-8?B?ZHkrMXpnc2s5TXBQN1JHZzJKOGRnK0cybENzMDJYYW0vK05YSE9sMFQ1SHh2?=
 =?utf-8?B?ZnNhNjAzNklaVFgvRExJOFJ3dlBPa0UyeVUwOFYyQUFoSktPK0pPSzVHcUJF?=
 =?utf-8?B?NTBIQVlZRWtLWkV2eDdpdUxqa3pyeEhHWExCWlpDdG9qNm8xcUlVMmdQRDkz?=
 =?utf-8?B?K3FQa0hHYW0zdjhCUUd2eUw1cjZvaVdRQVhzaEJFTlNiT1BrZldTc3h3bG9h?=
 =?utf-8?B?RUJ1VkFkOVprR3pCb1ZJSzcxSFN0S1dIS25uZjFhd1pjbCtsYWEvMmZYYXRv?=
 =?utf-8?B?SWt0Y2xFaStIb3g4RUNMVXduZXphUW83cTBxU1RpYkJaZi9oWE8xM3VwVWJL?=
 =?utf-8?B?YTFJSm83OTl6akNKZi9NUndlOURRV1NSclAwWVE5Z3JXOGg3N3dEelpTSjla?=
 =?utf-8?Q?1pc883H3aWvFFxZeqtEqFHPEH1NLEVQT3Ifk5?=
X-Exchange-RoutingPolicyChecked: kR2vZV5pPvMyhpTqYREOyM9+6TalWjeNrZmvxef7uUwojT+fdTdwS7qbCUGXSWLynWs0DFy1QZaa+F7AbcEpcnTV3IQxcdn7HyOUrrBzKKJgbItZt69L6+TwKgmr3RqEihsYglaTXVwj2x250b0XIYvwpY0vMP6HmltjDzV6c44m/nxmintZyXXTKXpobwXTFJSVlIdxzTn6GkI8Lg/YbZAZU7NSJTMvUE90yYKBFaZrinFRE8bays+uTxsN7Bz+vXPMK06sB5NkyXtY2QGLjsniRgPbKlGYTQTz5ZOiN1VOtwNp14Z9G9Axv2K5lhEvieBiiPFGxHQJr01JzVvrxA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 79201e07-857a-475b-919a-08de8ef5395f
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 07:15:02.1442 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TaXskB6FlseGNoY+VMmPl5KGg7QbllHYheI9bnvG/Wbc5yp9Fg2T5kV6Olk8SCkHSUfURu9Vzw2coGMYu+/dgPgPmFIo0oRDyWMndIXT4nA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5931
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	RCVD_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 3747A364E9D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/25/2026 4:37 PM, Suraj Kandpal wrote:
> Add a function that get modes for writeback connector.
> Since we have a restriction on supporting only 3840x2160 60Hz modes
> at max we will create modes only up until that point.
> 
> Bspec: 49275
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_writeback.c | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
> index 73101ee17d74..852951933348 100644
> --- a/drivers/gpu/drm/i915/display/intel_writeback.c
> +++ b/drivers/gpu/drm/i915/display/intel_writeback.c
> @@ -10,6 +10,7 @@
>   #include <drm/drm_probe_helper.h>
>   #include <drm/drm_fourcc.h>
>   #include <drm/drm_encoder.h>
> +#include <drm/drm_edid.h>
>   
>   #include "intel_atomic.h"
>   #include "intel_connector.h"
> @@ -58,6 +59,11 @@ intel_writeback_connector_alloc(struct intel_connector *connector)
>   	return 0;
>   }
>   
> +static int intel_writeback_get_modes(struct drm_connector *connector)
> +{
> +	return drm_add_modes_noedid(connector, 3840, 2160);

This is based on drm_dmt_modes and the only 4k mode it lists is 
4096x2160 which means we are capped at 2560x1600. Therfore, we are 
missing out on the best mode our HW can support.

Perhaps we need something based on edid_cea_modes_1.

Also have we tested if all the modes we advertise work?

> +}
> +
>   static const struct drm_encoder_funcs drm_writeback_encoder_funcs = {
>   	.destroy = drm_encoder_cleanup,
>   };
> @@ -69,6 +75,7 @@ const struct drm_connector_funcs conn_funcs = {
>   };
>   
>   static const struct drm_connector_helper_funcs conn_helper_funcs = {
> +	.get_modes = intel_writeback_get_modes,
>   };
>   
>   int intel_writeback_init(struct intel_display *display)

