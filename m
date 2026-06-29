Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id W9nTKcPxQWprwgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2026 06:17:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D7466D5D0D
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2026 06:17:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="glKy/RWt";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90FB410E025;
	Mon, 29 Jun 2026 04:17:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 107C710E010;
 Mon, 29 Jun 2026 04:17:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782706622; x=1814242622;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/TXlzKiExwTbZmDTFvBVrvJMAyiPUFmvDcjnaOUW0/I=;
 b=glKy/RWtX5DHiW3Sv6qqoOMkC6/7dSHOd0+j1V2ZIOEVv4NTBYq8nNZk
 TKZw3aB8seB9ZVdrpsZAbOOZsYN9IwUyXNnihO95EpkIa78wBGh/8YhUZ
 QUd1sHp8muhSJhZaez2DEmQyy6J6xd8weGZfj34bL5KuyWNsYf1LVkQdc
 i8L3YUZ9BKJb74uZANTCFFPciZ6kSwF0T1NcgbUZoMLQDBjM8qyc4Yvtg
 YXC1LG4zyTvreQQP8xnXGq0ZxaW9M8Til1Sk7qrxIu7GAnMbQ29oO906m
 oYZFsSAd0+ZSQoXiTStU+5tkobwqNWkas01WBKFl/j7w6sOUPvcqwC8xh Q==;
X-CSE-ConnectionGUID: X1DJkmLTSNOfRKnpMs/WFw==
X-CSE-MsgGUID: F1azpsGFRkGkRpN4j/bW9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11831"; a="83479321"
X-IronPort-AV: E=Sophos;i="6.24,231,1774335600"; d="scan'208";a="83479321"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2026 21:17:01 -0700
X-CSE-ConnectionGUID: PafIeNOSR5CHuTHCQ+5DiQ==
X-CSE-MsgGUID: W6yvm6X9QFeekZtmp3gQ1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,231,1774335600"; d="scan'208";a="248478484"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2026 21:17:01 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 28 Jun 2026 21:17:01 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 28 Jun 2026 21:17:01 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.43) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 28 Jun 2026 21:17:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E7BkWpwa/tfXEJaWpLMkg7ztcap3o/fJpjpTiDN8+gBZwmgmui9ltSr6hBfzdCaq8+pAkdpt9k7mLIp0IM81Q85oM78WEDPfCK04T+nAMr3HlY0/Qh8olo8DfIUKVJaBo9hMdifDo6oli8Pfa6m1HLAVNoZ+kdl3nxdU3KIK6UPX35RKYuKa1CdNO2inz2Ga+4N2Yrxug+sBpMCncOBtIS9MkEGJZDxMJsfU/ve3WALKniDm5deBMqV8Y4HjAeWNquwh2+EjnCNWBehMNlWrgOB6fsQ3V7mCcNE5rOJN3h7PXYP7Z0QbF82KTEBQxGj9mM508cgaygQoCviF7jklow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p16Xu24gj71iFCupDh3pWVVPb2/v7XaYe9QmYLgs1Aw=;
 b=W+h6Rjif5nOKrpdDMFjAZGXB1T5waEOf32/HaV+wUJrmwKybuoqx/SJpKnYOzY4USVl8Oak6Mx8cLOZov3bHMrc/J/qcpHxf29WHqwrKeh6FTZ4imp6Ljo6DXkajmfW0nBoaboMJHTjb0Um6eiJkZHuipoELXtaq6ilgCBwZxK+OV7KsiAPSwMvrEq5CYojktJgVmDRcXSq9ttYMRtrfrcs+hSWvmXIQC7KqMTOXIYaNtiBK5c8s72Ze6USZmOBr5KB1froPDYbye/n44RTK05o0plV7rj3pFzLCvatBat32kn6+fQDkLwa8VjGTxXr9Mf+9QHUvd3HHVqiNh8pqgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA3PR11MB7554.namprd11.prod.outlook.com (2603:10b6:806:315::9)
 by DS0PR11MB8020.namprd11.prod.outlook.com (2603:10b6:8:114::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Mon, 29 Jun
 2026 04:16:54 +0000
Received: from SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b]) by SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b%5]) with mapi id 15.21.0159.016; Mon, 29 Jun 2026
 04:16:54 +0000
Message-ID: <19361dc8-2ecd-4ffd-af43-e6839fffc064@intel.com>
Date: Mon, 29 Jun 2026 09:46:46 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] drm/i915/dp: Check FRL bandwidth limits in the HDMI
 bpc computation
To: Alexander Kaplan <alexander.kaplan@sms-medipool.de>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Imre
 Deak" <imre.deak@intel.com>, Chaitanya Kumar Borah
 <chaitanya.kumar.borah@intel.com>, Nicolas Frattaroli
 <nicolas.frattaroli@collabora.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20260610174413.5881-1-alexander.kaplan@sms-medipool.de>
 <20260610174413.5881-4-alexander.kaplan@sms-medipool.de>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260610174413.5881-4-alexander.kaplan@sms-medipool.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0034.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:17a::11) To SA3PR11MB7554.namprd11.prod.outlook.com
 (2603:10b6:806:315::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA3PR11MB7554:EE_|DS0PR11MB8020:EE_
X-MS-Office365-Filtering-Correlation-Id: 7de872f3-cafe-4f09-5e43-08ded595402b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|23010399003|1800799024|366016|3023799007|6133799003|18002099003|22082099003|5023799004|11063799006|56012099006|4143699003;
X-Microsoft-Antispam-Message-Info: gEghs9aRb6o8sx0t2ih/9y3ARxVJKKnIj/vxG5064hVUkKwIqb3dDi6VwTE97BOU1QHGb+nE6rDJCLDYlhGayqDG0jJ2dNS3LbMrxAbxaBZ+mcznObg4sMm3c00n/uZge/4leyd2czDLPKW/muXaJ94YeyhkleMUijenViNCWfG7aKSC6Mqs9LHxRZMUpjo8HMFhhM55qSlkezRzIPTxBqBDxvvcp7kg39Cl7PzUoPCIrnPFVSwJhTMtL1fR+6QKaNDleEitHP7xKDvWDaqpXAkOdSTzV9GsInByHQlh7EjNKZ/1gGwl3wxnPTI3u6TsXJrQ5gTeTi7VuKUOiFMCdNVMX7H78qaKHgtDgs+L76DH6ek2kT7EHgmpDM7rUazRg5K/CvyifgOBK+h4DMlIIpBw9h+3CgxE3UsUhZPZVu54XVnA+BLuD+l2+K3HBkdVKe1Kj0rnXBV9tX5fXmKgMHN9hdGvWzsQjkoXiQ6yhl8ZulcGYRErQ3fEbRfduOG66p/52Be9C/6lH9bHGnxCP+OG0+/MbMswqWSYjXta6pGKsgt8qgEqPdmCx/Zf8hdPaEXcvHGMUPwMJhGa9dtIyop0gfvDcH9fu3DswC4eeTg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA3PR11MB7554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(23010399003)(1800799024)(366016)(3023799007)(6133799003)(18002099003)(22082099003)(5023799004)(11063799006)(56012099006)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MHBFaGlacFJkbUlvYTkzK3VzNE54d1d1dWFOVnJRMGZlL1h1ZEx2MkVmd3ZX?=
 =?utf-8?B?Y0NaaEZudTNjMkJnMUt1L2plMUdYVjhFY1ViTVlCUnoyVG9KaVZZSm9CNXN0?=
 =?utf-8?B?QmNmWS9hNG83MzB4cUl2WnViazI3MkkxODdmR1FPR3hDL3pwd0UvMXJVdE8z?=
 =?utf-8?B?ZW1iZ3lGSlgxV2dmWXBOcXRUaGt1bWt1bjZPbHpsSCtUYVJnZlhuN1ZtMThT?=
 =?utf-8?B?c0pFMWQ1NGdhS0NyNHgxZHdOcU1lMEZHVVNLVXJFVXVwTEdwVWV0c3RoNStP?=
 =?utf-8?B?KzFOMHNtT25DV2ZLMlUrUURLNFIvcm9MNXZhdk82YXlGNHZNazlsRXo4eXdP?=
 =?utf-8?B?WTNrZElxVVFrZnVyTXROSUY5dmZoVXc0ZDBod0J1cEZhWlVCay85bk12STYy?=
 =?utf-8?B?Qjg5aG1PVU4rWXR2SWZlRmY1TldGd2tOZlluWjdXOSt1ZGV5Y1lIamdUejYy?=
 =?utf-8?B?UmFKdGZGZFllY0YwVzZTM3h3eDIvc1VtNk1JYzlyVkIxemg4cDh2ZENHbmo5?=
 =?utf-8?B?TndieXJQenJ5OUZ3RTcrc000MmxISFlRZHBHSkVtRjRWb0V4OXN5V3ZLNURi?=
 =?utf-8?B?NHRuUWRUanhPTVoxTWphY0IwY3hkL0RabXhQMzNBSTVNSTZaUFY2N09OUVhI?=
 =?utf-8?B?VkNFcEt3RHRxOE5hbGlLdzhpdmh5SHk2NDVsT1FnZ3pNaHVmcUk5NThJREdF?=
 =?utf-8?B?U2YzcXNsSHhXbGlCMW9QcnVQUkRXaFJKc2w4OXNFTktKTElRWVZmcTIzK2R1?=
 =?utf-8?B?K1g2c0poSDNxV3RZRzRlRmFXQVlreGFFZFFlT2k3S1k5a1VDaE10ODJualln?=
 =?utf-8?B?Mk5SQmJMQ3QvdE51SklHR04zUDlaeHUzWU51emxwdjZHYjZ2RnlrTUFPSDd0?=
 =?utf-8?B?YVFmVmlZc0F4ekZOc1dTRS9VejI0T1U4UzBVUWFlRVdaUXl4cW9GZHpNcGZa?=
 =?utf-8?B?blhlWFFMZmU4djVxQ2t3NDJINFQreWJkL2NTYU5qSmU3M1FiWUNScXhoYTBp?=
 =?utf-8?B?Y2loTy9ZZ3hZYWNhTEl3WjZ0d0hqaDc4NkNHdURQdW1LY28xRVFkeHRNS3Jv?=
 =?utf-8?B?cVZ4c2tUdFE0aTZPZU5jUmhXTEVxRlVjZU4rZTgyNWt1aE1mTUQzSUhubVVl?=
 =?utf-8?B?V2cwRmRHWlBPeW9OaGFIMjlSQ3VhVmx0M0JxdWhNbjZIczdyL21PeXVBdHJt?=
 =?utf-8?B?emNJRXBkcy81dDlPNnBtUlRwcmp1YU5zdkorOUNRclRwMk9jdkhvMkVNenkz?=
 =?utf-8?B?YkNWbC9QbXBEWnhJcUIwQ2gyVFgvbEtJQnczaU5EVkVaMmxrY214NGpKem8r?=
 =?utf-8?B?eUVuZGFGOVlFZXFyeG12eEdORzh2WnBOaXJhVkFlV2lRRzRjYmdTYzByUXc2?=
 =?utf-8?B?NnRVWXpKL25jeTNsZkVVZkZHRGQrVkd6QWxYcWg0ZFZXSXA5SUNwOHNtTjFW?=
 =?utf-8?B?dzJOcmdGdlBSV3JmSnlxK0lqc2QzQUUreDd1eTdiUWNwd2RpSlNUcVVVeWJn?=
 =?utf-8?B?VVJLckUxOUgvM2VMQ1ljRmtZS0F2cDgwNVY2VTh5TktCRFFvVUNoN1pOQjZx?=
 =?utf-8?B?VzUvamVVcEErQTcrZ3JTUEo5NFRYa3VUWWtUK0E0MXJqRUp6eFVNM0FBOFpu?=
 =?utf-8?B?SlNMN3NpeFhnOEtzNlJYSGF4N0lmV3VvK3dmZXMxQXlVa0FlcjdwK2dkYXBr?=
 =?utf-8?B?Q281VW11REpaTnlUMzIxemFFVUdWUVc4cDNId1FYM0xQQkdWMytWUzMzK3RJ?=
 =?utf-8?B?ZUJCQXg5bkQvS1pmZG9jSGVKdkpuK0VaWVNKbS9saTRoTmNCNTV1bDYxU0FT?=
 =?utf-8?B?UVVwTHA4YXlHWUNCMjM0V0dzb2xGdGNuV04rSWlMZWFyWmI3YmtPZVNhOUY5?=
 =?utf-8?B?RG13eUFPUTh6NFFMUmFZaWw1YTV0VDJSeUJaOS80UmhKRnJkK29YaHRpNGpX?=
 =?utf-8?B?OFdOall4VHlxdjdYdEdqTGVmdGhMM0RGK1VLNmRGTFZDeUJqUnJVMCswbStH?=
 =?utf-8?B?S2xFSFFiZVYvZnJjYWhGNkZzT1JKRkNsQ083WTdNNWhEajFNd2tic0lGNFha?=
 =?utf-8?B?bnErVDhhZmFRelNzM2p0SjBpN3ptUWxUQVNoTG52N2VpSU5sWCs0eXZRY1Bk?=
 =?utf-8?B?ZVFXN040WC9LdkdFclZTQjNacHg2NTFPWHJkQ0tndkFxOEVxb1hmTFJWUDNy?=
 =?utf-8?B?T3cvYWhnUVQ4dkJlNTUrcTRldk5TYldRVkVmRWg0dUpUM1dOU2hnMVN2c0Zq?=
 =?utf-8?B?a3JtWHhuZmdHMGhxVHdlSzlzUFhQOTJ3ZjhZNmZSQVVqKyt5QXZtdW5qRU5S?=
 =?utf-8?B?VFNiTDZiQ1d3ZFJFYmZZa3JFSytSdHRFbVpzekhiREVlV2xxaTNYbkNFNkNq?=
 =?utf-8?Q?4YWSzwEsUSqtOtn0=3D?=
X-Exchange-RoutingPolicyChecked: hFB+rJF0WncgZgRnLLmTLF8HOA4h3fUG0X01BwfIN/D5j2P4sO4L2L3bJ8gu0BMdTRV/C69VSh5WeTQTtsODTlHxsf/3hK0WR1mI/CsGooz3bZrFwds0tDNexahPX9noKv3KkayNgj3HLmt6/iEGpicXpvWV3Uk5zfCaEf+EXHxSsAqXJSqIhBCp9NMbGyWZikmB2FNTwqfjH3Fg0hk4AVKG/LmV1YULIASLbH9KvPnAnavFNzqyfS0DyFEk8r1JvmpfSAPbs62k2HvYpH2BIi550l3MpTx/ZBn2azB0kwqvt+BArXu0POnXmTE4V7ZwMBTxTiKd3LzC5VZRumnCsQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 7de872f3-cafe-4f09-5e43-08ded595402b
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB7554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2026 04:16:53.9826 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eMTst1/a+LNWlnacvlPQN9QpYGCimuzdFlBGbsQH+hTJ0LqW2jjiKdgwrwjPsO8fkqRSPZUK/8YztdaLfh91xdaySC/iadaD269KuZmSlqo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8020
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,sms-medipool.de:email,patchwork.freedesktop.org:url,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8D7466D5D0D


On 6/10/2026 11:14 PM, Alexander Kaplan wrote:
> The bpc computation for HDMI sinks behind a DP branch device
> (intel_dp_hdmi_compute_bpc()) validates each bpc candidate against
> the sink's TMDS character rate limits, even if the video will be
> transmitted over an FRL link, where those limits don't apply.
>
> This caps such sinks at 8bpc whenever a deep color mode's
> TMDS-equivalent character rate exceeds the TMDS limit, although the
> FRL link has plenty of bandwidth.
> E.g. 4k60 RGB 10bpc corresponds to a ~742 MHz TMDS character rate,
> above the typical 600 MHz limit, but only needs ~17.8 Gbps of e.g. a
> 48 Gbps FRL link.
> Modes whose rate exceeds the TMDS limit already at 8bpc (e.g. 4k120)
> are additionally forced from RGB to YCbCr 4:2:0 output.
>
> If both the PCON and the sink support FRL, validate the required
> bandwidth against the FRL bandwidth the link will be trained with
> (the same min() of the PCON's and the sink's max FRL rate that
> intel_dp_pcon_start_frl_training() uses) instead of the TMDS limits.
> This mirrors how intel_dp_mode_valid_downstream() already validates
> modes against the FRL bandwidth for such sinks.
> Sinks without FRL support behind an FRL capable PCON keep using the
> TMDS limits, since the PCON transmits to them in TMDS mode.
>
> The sink's deep color EDID capabilities still apply via
> intel_hdmi_bpc_possible(), and the DP link side limits are handled
> separately, as before.
>
> intel_dp_mode_valid_downstream() currently checks the FRL bandwidth
> only against the PCON's limit and also skips the TMDS checks for
> non-FRL sinks behind an FRL capable PCON.
> Aligning it with the limit used here is left for a separate change.
>
> Tested on PTL (xe) with a Synaptics VMM7100 PCON and an LG OLED G4:
> 4k60 goes from RGB 8bpc (dithered 6bpc pipe) to RGB 12bpc with HDR,
> matching macOS (12bpc) and Windows (10bpc) on the same hardware.

Thanks for the patches, and for the testing on real PCON hardware.

Yeah, the PCON mode_valid/bpc path needs an overhaul here.

The fix is correct i.e. the compute_bpc shouldn't apply TMDS limits on 
an FRL link.

But it covers only part of the problem:

  - It fixes only intel_dp_hdmi_compute_bpc() and leaves

    intel_dp_mode_valid_downstream() on the old PCON-only FRL check

   (as you have also mentioned in the commit message).

- frl_required_bw() is uncompressed-only, so modes that would only

   fit via PCON DSC (where both PCON and sink support it) still get 
rejected.


I had sent a few patches to address these sometime ago, but didnt go 
through [1] [2].

This patch overlaps with my earlier 2023 series [1] which fixes both 
compute_bpc and mode_valid via a common wrapper.

I've since extended these with the PCON DSC bandwidth handling [3] and 
I'm about to post the updated series once I'm done testing, I'll Cc you.

Since these touch the same paths, it'd be good to converge there rather 
than land overlapping changes.

Feel free to take a look once it's out. A Tested-by from you on the PCON 
hardware would be very welcome.


[1] https://patchwork.freedesktop.org/series/107550/

[2] https://patchwork.freedesktop.org/series/99311/

[3] https://patchwork.freedesktop.org/series/169372/ (trybot)


Thanks & Regards,

Ankit

>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Alexander Kaplan <alexander.kaplan@sms-medipool.de>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 37 ++++++++++++++++++++++++-
>   1 file changed, 36 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 2831b274d88a..511d99326af4 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -124,6 +124,7 @@ bool intel_dp_is_edp(struct intel_dp *intel_dp)
>   }
>   
>   static void intel_dp_unset_edid(struct intel_dp *intel_dp);
> +static int intel_dp_hdmi_sink_max_frl(struct intel_dp *intel_dp);
>   
>   /* Is link rate UHBR and thus 128b/132b? */
>   bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state)
> @@ -1347,6 +1348,40 @@ static int frl_required_bw(int clock, int bpc,
>   	return clock * bpc * 3;
>   }
>   
> +static enum drm_mode_status
> +intel_dp_hdmi_clock_valid(struct intel_dp *intel_dp,
> +			  int clock, int bpc,
> +			  enum intel_output_format sink_format,
> +			  bool respect_downstream_limits)
> +{
> +	int max_frl_bw;
> +
> +	if (!respect_downstream_limits)
> +		return MODE_OK;
> +
> +	/* The FRL bandwidth the link will be trained with */
> +	max_frl_bw = min(intel_dp->dfp.pcon_max_frl_bw,
> +			 intel_dp_hdmi_sink_max_frl(intel_dp));
> +
> +	/*
> +	 * If both the PCON and the sink support FRL, the PCON transmits
> +	 * to the sink in FRL mode, where the TMDS character rate limits
> +	 * don't apply.
> +	 */
> +	if (max_frl_bw > 0) {
> +		/* converting bw from Gbps to Kbps */
> +		max_frl_bw = max_frl_bw * 1000000;
> +
> +		if (frl_required_bw(clock, bpc, sink_format) > max_frl_bw)
> +			return MODE_CLOCK_HIGH;
> +
> +		return MODE_OK;
> +	}
> +
> +	return intel_dp_tmds_clock_valid(intel_dp, clock, bpc,
> +					 sink_format, respect_downstream_limits);
> +}
> +
>   static enum drm_mode_status
>   intel_dp_mode_valid_downstream(struct intel_connector *connector,
>   			       const struct drm_display_mode *mode,
> @@ -1831,7 +1866,7 @@ static int intel_dp_hdmi_compute_bpc(struct intel_dp *intel_dp,
>   	for (; bpc >= 8; bpc -= 2) {
>   		if (intel_hdmi_bpc_possible(crtc_state, bpc,
>   					    intel_dp_has_hdmi_sink(intel_dp)) &&
> -		    intel_dp_tmds_clock_valid(intel_dp, clock, bpc, crtc_state->sink_format,
> +		    intel_dp_hdmi_clock_valid(intel_dp, clock, bpc, crtc_state->sink_format,
>   					      respect_downstream_limits) == MODE_OK)
>   			return bpc;
>   	}
