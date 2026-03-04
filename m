Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sM87JunLp2lyjwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 07:06:33 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B2F1FB049
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 07:06:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58B5A10E94D;
	Wed,  4 Mar 2026 06:06:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="On77Mz93";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4708410E5A1;
 Wed,  4 Mar 2026 06:06:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772604391; x=1804140391;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=A+ad6pWk3k+9J0eckEJWpq7MxU/0sh/Pzl7x0WdS4tw=;
 b=On77Mz93R9/uSblzbc7ZwlPV8c0JAN6WAW/MI18Sw47P0WEca32XtdbN
 829tnutzCCt1WZO4rXG8HzLJ98kWMGBLI2cBCnBdyda0AJRXgOxynJrm1
 dYqzCsmazq6yuW28abfJuX0/dEzdTpFgllPhbYQjngBZpjU40xQlWKtVl
 bDADCz1B3C1VCMSvob4FbGqk/Seow63KCGiK/5XFTH+IXDe8ksA8H7Dxx
 yKk6xaD2dtjgidvaHqcP9RksRYRddViW2J9qRsJpG3l44DGMS6rJGOLv8
 XrrZzkUzh8DUmqD6w27FbxcSt7EirCyW6X1RUwwZDzMlN18BgjXl7E5Ip g==;
X-CSE-ConnectionGUID: uBVvnQ9SQpGPv12L6gryxQ==
X-CSE-MsgGUID: VrSFnhwhQVmwkWWSpfa+lA==
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="73707768"
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="73707768"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 22:06:28 -0800
X-CSE-ConnectionGUID: HzD5nre3RbeMbh48AdZDDg==
X-CSE-MsgGUID: Gdbq61LYSF2nmACHHbTGHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="222905485"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 22:06:27 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 22:06:27 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 3 Mar 2026 22:06:27 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.63) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 22:06:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jyh1aoK8qu2w8JdhrNoqMNhlKzu4aAl5NDt4fDyQiMY7B+nP2bdSS/LYqndX3IMm460xfrwkPoMQrb0HMPNjUBw6Roj6vUfe6G4SD3znrV4Ft74BDSa1OIbiqLb7vARQgSkmEW9XTf4IA2exXL4VdkOOhsPhN2jFnfcKHEJLvd6QFWJD4lsdLS959n9AX6IZbcCnxDo2FUAttpsz1y1fKO9Ys5FsRviwpf6mUWURmBbtXJyR71BM8EHZ19HfHmYWzh1yGhaOOUk1sDzl1H7choEitJQK4Nw4KZ5R8QD4gW3spQa86NLC4lAl+9A4puiyYAH1qBT3VAKpDnczTKdDUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/uOMCxbLtuMQrgRJ7GkhG5c43NOSx3CZOeLP5xc6Vo8=;
 b=JIayKc0O+Sa06M8bHJtb+SqOiGR4v2HKheN3W6tZbVvdnbPsWKyQ5+cemt0pZD0Eb11+2IlObSIwRuBaDQL6hMqLub0+Oa+L72EE3R/BP5WbAJXYeQaKx9RFULfSqJee4NegJM0/U6I2niWcNWXvKR7Fnobwh9U2KlPdnJxKebLFzuueBMllmmuF7fPgGNT8gkQ2ccEXKqq9lsRC6gHp0u8Ks3gWbBrN+hsZTZZW8ggqIM0BX1XENepEBm3ycu8mOp04dnnoT+8olGi7GIaS+bQykeGgC/dv/wWvUi02dzG0mndIDsOlAFS6V9CWrxYJcDavUDfVRHBKsf0IS4JQUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BL1PR11MB6051.namprd11.prod.outlook.com (2603:10b6:208:393::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Wed, 4 Mar
 2026 06:06:20 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9678.016; Wed, 4 Mar 2026
 06:06:20 +0000
Message-ID: <53aa591f-7245-4b4b-b13a-dfa050134000@intel.com>
Date: Wed, 4 Mar 2026 11:36:12 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/vrr: Configure VRR timings after enabling
 TRANS_DDI_FUNC_CTL
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <stable@vger.kernel.org>, "Benjamin
 Tissoires" <bentiss@kernel.org>
References: <20260303095414.4331-1-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260303095414.4331-1-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0239.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b1::15) To BL1PR11MB5333.namprd11.prod.outlook.com
 (2603:10b6:208:309::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BL1PR11MB6051:EE_
X-MS-Office365-Filtering-Correlation-Id: 8e9619b6-90d5-48bf-536c-08de79b426df
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: zL6dbKeEzUGFEJwXfaGxqgtgkhUaz3ilYQ1h+gcwegezR6JHwIEfyinoUkjd0+NZQPp/TPkprCAbbm0RFEuCrSXReNwf0IP7IcdaWyT7JBnshcFXex48YEOs9RJoj9V0MLPKZWeVE7cGg1aL30goTf9zNtELiiTiVTc1ID8gYxVHYZ5A55Cm2LkEyhtrrDVRiZ50GdYvw8dq6Q01zDY/mfFeK7mbEIOi7rb0LT9AESVBzV1HTwzpQqfcsfx875HFN1UKr8IJSMcvHEAEenrGm+CqYfLzw1te/GaRRTe+L/Bi8RQstOe0V4VgnYRmEgOusltojR95CpMyP1c3jGUhVKgsgzYxHbpG0Prj1YCyXUViGeQ7RXqAK1QEAUeunKHpJ25JEFj+3MtVULBrgxVOonBNGf0lAlOupuW5ApQvzo0OD04qXo7WkpYURbnMbcirA2Wb9/ucytXPURKJnsRMPWxV82QJERFUEb2MrEE8bj3SufECktzg2JaD4QY5/0u+FIpYI8ClvlwJJk0qmGF4HTl5OsPuLtTIAfbxNG0onm6pPdH50nuqGn74DB7p9cTkk/GPsZT5eCST9ERJdMjYFHwAHMqTwPISs+ja+I271JNfIfcc328hR2Lu1EcAjhuMgiy2vOFYfC0ggntiOgK+SB5ig7rHPYLnEAclyhyMEUKpC/keZM5NDCy35c4QVHDO
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WkM0RFdPc2pVQ3J4VlhKeXN2SHYwdDh4R201dGZKSzdodU9lWjN5djliNERC?=
 =?utf-8?B?bW53WVNyWTBINDdQcEZrWlhQTElBOE5XeXYzSm4wbHJCcmdzdkFYOHpJUXNs?=
 =?utf-8?B?amxOL3IvR1JjOVorMm1qVVZGU3dTdytJaW5tckNKSEdkNWJ2bllQM1dUNzZn?=
 =?utf-8?B?NzlxNFltdVlyRDBERUtZc0kwZTlRYzVvZmllOGtxMXZuaWJNNVdyWkZsUGNu?=
 =?utf-8?B?QXJiSG5TRjhhT2xTMmphNitLQ1duM0lVZjdUS05aUklsdFFLUkUxWk93alJj?=
 =?utf-8?B?M2JkNk9CNmIxODJDYjdyZFFnYThZZ3duRU9tVlpKRFdYTnNVZFBmN2ZLSDUw?=
 =?utf-8?B?bzlBVy93SWRQREtnbG82VGViUno3dmR1bE9zYm1VeklUTitsY2NnOXIybEVC?=
 =?utf-8?B?VWJHRStmeDBLN2QzdXNIcFg5eHdZUUI5SnRMV3JlWDdRVnp5VGk4bGFDanUy?=
 =?utf-8?B?bWE0WXRtWHFrSkQ0bUg5bzUvY2o1bEkvUmJ1M0l6bGVVakVXcG44TENpZ1dZ?=
 =?utf-8?B?dW53T3F0YzJFeHdTVGdKRm1BbkVzVHVQMDBwODRtamIxWlgyUE44cTR5cjlI?=
 =?utf-8?B?QmthNGk5RlVWZHFXY2xDamFQcTh6YlBqVittL2xiWWxiMk12anNtMUpQNmp6?=
 =?utf-8?B?dTJ2L01zdVlEUW4vR3JZTjU3aFpjMWo2YTF6UWNKU1NSWjBjQlozR3pPUloy?=
 =?utf-8?B?S3dUakRLQU5BUDVSSHhqZ3k4VHdTQnFYemhVRVZTSkliTURyUE1hdzVJOEVp?=
 =?utf-8?B?cXN6TEdURDJpZmYwWHBkOVZ4M0Y4LzlESmpKR3o0K1g4Ymc2RHlxdWNJem5Q?=
 =?utf-8?B?ZzFVbFFQZkJXUEF0STRwUm41c0RTUXh5MUUyM05zTStTOGorUFRNaFJvRGF2?=
 =?utf-8?B?QlU4dEQxTXVGaXZZUWF2ek4xQXRlL0RNOFBwUGNXVk9KaUtOem1rNHhOUHgv?=
 =?utf-8?B?MzRqeDVROEE3d3BGVlRJSDhJbkdtQ2JHN2Y5NnJQeTdwa1RXdk1janNDc1Nk?=
 =?utf-8?B?WmpIS2VaaURmWTRvUFJiOGJ1QnRQYWRyT091S0Jtb3MrZmVGZ0lzM3RaZkQv?=
 =?utf-8?B?YlFzaldLRzlXaklBRlY2R1FRajE0dDVqa0pXYVh6TjRzVVg1L014Tnc4UVg4?=
 =?utf-8?B?SEVoR2FuZ3R0cklRUG1JRUYyVDNpV1hxMVplOHJrenFBcjBVWkVBUzRSSUhL?=
 =?utf-8?B?VUw1cGgxKzM3Mm1vTW1RaHpYWG5QSDIzcnNSRzNHS295ZDBSQll0K3o3MjdO?=
 =?utf-8?B?aldkYm1IcERSVlUrcm5XSGN3aWhwTFMyb2RtYjYxNW8ycitYMGFXZ3R5TFpO?=
 =?utf-8?B?UmRYckhlUTFBKzBPemR0VFZEVWtycE1hUlZkeEtlNERvMTdnNzQ3RkQwWG45?=
 =?utf-8?B?OGRqaXN2SXBNRlcvUXZ0cFA2WG9ZUzJuR09KSlZRS0QxRUd2bEl4ckJYQmd5?=
 =?utf-8?B?dm5udzZweWI4dU8zZkxZQjRHeW1hZmdFMHFqT1ZnamdpZEJXc1M5bkpTSWw3?=
 =?utf-8?B?cjl0WW9oSUF0bzFjb0JTK1JNZGxlQUprYWZEWFQ1YTM4aG44NWJMZzN2Q2hD?=
 =?utf-8?B?OTZ6L2tQeXJnQ3R4SUZvR1FzY2ZLait3WUU3U0tKUUlHbGhwalJZOGNDTUYw?=
 =?utf-8?B?WWIxK0ZoU3BvVDJSTDJBdlpJRmJwanRsbUgwSnpSWW5MbDJFNTFLQkM1SFdV?=
 =?utf-8?B?ZXMwSVdRRUlnb3NQSUpGS2t4QTBaaTZhaTZSNW5nZ1FwN0VVWitOaWxEWWdx?=
 =?utf-8?B?WGJTV1I5VXJXTm9xbXdYSHRhSXZiWTJ2eWNaTjNEVC9EUnJzcnRsSCtxYlVZ?=
 =?utf-8?B?LzEybW4zQTNwcUg1L2lTWklXLzVNektpWUhGeDI1dXZtZ21zOUt5NEU3WDNq?=
 =?utf-8?B?eXlKbG5NSk1ncmptdVFvVElZcmIvU01IOUJNRTB0b25hanBiSWt4RUkyb0VS?=
 =?utf-8?B?ZWVVMUtCY3RRSXR2ZnFlMnBPa2ZOdnA0d2dZaDk0NUx0SURZRzV3dTdoVS9m?=
 =?utf-8?B?TzVSTlhrOXBXaVk1UmgvR09HUDd0ZzlxMWthRE90OHdWYkdDdC9NZzZvYUY0?=
 =?utf-8?B?a1d5N25CajNZaW41ekZrTWlyY3ZWSHg5dGEyN2lUZ0JoQ1AyWDhuUllRMmxi?=
 =?utf-8?B?eXE4aVBEQklaVGozZ3J1VnozRUFlYTk0R0JiZ1lUODlzWnJsZlUvRUhhMVVQ?=
 =?utf-8?B?MnhwRUErMUx0VDlYQW1zQkdrZnZ5a1YxdzExTld0SzIzZUNHYUZOcjFMMVB3?=
 =?utf-8?B?YytrVHVjdHR2a1JoRFNKN0NIWnZOM1JOdE95TTM0c1FESXJBQjJvRkhyWFRX?=
 =?utf-8?B?OGdXc2o5c2NHUXZqd214VkdnNFJkR1ZhZzZScm8rTFlhNmFKYVFvM1dHb01M?=
 =?utf-8?Q?XBz2NgV+bk8ZBUGQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e9619b6-90d5-48bf-536c-08de79b426df
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5333.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2026 06:06:20.8022 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6sQ3zUl0Uo1Aa81zESO3kIey6AOtgSXIiTywSU3MX0uSiFQhiwZAPE6F7x18fkBj+7RC6WhjTzE0BgbnC4ScNhbgPxyZBvD8F89yGd7gRx0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6051
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
X-Rspamd-Queue-Id: 03B2F1FB049
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid];
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
X-Rspamd-Action: no action


On 3/3/2026 3:24 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Apparently ICL may hang with an MCE if we write TRANS_VRR_VMAX/FLIPLINE
> before enabling TRANS_DDI_FUNC_CTL.
>
> Personally I was only able to reproduce a hang (on an Dell XPS 7390
> 2-in-1) with an external display connected via a dock using a dodgy
> type-C cable that made the link training fail. After the failed
> link training the machine would hang. TGL seemed immune to the
> problem for whatever reason.
>
> BSpec does tell us to configure VRR after enabling TRANS_DDI_FUNC_CTL
> as well. The DMC firmware also does the VRR restore in two stages:
> - first stage seems to be unconditional and includes TRANS_VRR_CTL
>    and a few other VRR registers, among other things
> - second stage is conditional on the DDI being enabled,
>    and includes TRANS_DDI_FUNC_CTL and TRANS_VRR_VMAX/VMIN/FLIPLINE,
>    among other things
>
> So let's reorder the steps to match to avoid the hang, and
> toss in an extra WARN to make sure we don't screw this up later.
>
> BSpec: 22243
> Cc: stable@vger.kernel.org
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reported-by: Benjamin Tissoires <bentiss@kernel.org>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15777
> Tested-by: Benjamin Tissoires <bentiss@kernel.org>
> Fixes: dda7dcd9da73 ("drm/i915/vrr: Use fixed timings for platforms that support VRR")
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

You are right. VRR timing registers are indeed supposed to be programmed 
after TRANS_DDI_FUNC_CTL.

Thanks for catching this, Ville, and thanks Benjamin for the bisection.

Change looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_display.c |  1 -
>   drivers/gpu/drm/i915/display/intel_vrr.c     | 14 ++++++++++++++
>   2 files changed, 14 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 27354585ba92..138ee7dd1977 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1637,7 +1637,6 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
>   	}
>   
>   	intel_set_transcoder_timings(crtc_state);
> -	intel_vrr_set_transcoder_timings(crtc_state);
>   
>   	if (cpu_transcoder != TRANSCODER_EDP)
>   		intel_de_write(display, TRANS_MULT(display, cpu_transcoder),
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 00ca76dbdd6c..8a957804cb97 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -599,6 +599,18 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>   	if (!HAS_VRR(display))
>   		return;
>   
> +	/*
> +	 * Bspec says:
> +	 * "(note: VRR needs to be programmed after
> +	 *  TRANS_DDI_FUNC_CTL and before TRANS_CONF)."
> +	 *
> +	 * In practice it turns out that ICL can hang if
> +	 * TRANS_VRR_VMAX/FLIPLINE are written before
> +	 * enabling TRANS_DDI_FUNC_CTL.
> +	 */
> +	drm_WARN_ON(display->drm,
> +		    !(intel_de_read(display, TRANS_DDI_FUNC_CTL(display, cpu_transcoder)) & TRANS_DDI_FUNC_ENABLE));
> +
>   	/*
>   	 * This bit seems to have two meanings depending on the platform:
>   	 * TGL: generate VRR "safe window" for DSB vblank waits
> @@ -961,6 +973,8 @@ void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
>   
> +	intel_vrr_set_transcoder_timings(crtc_state);
> +
>   	if (!intel_vrr_possible(crtc_state))
>   		return;
>   
