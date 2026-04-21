Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iKl7EXKQ52n69wEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 16:57:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E9A643C6B4
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 16:57:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1352010ED05;
	Tue, 21 Apr 2026 14:57:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vig6Hvbg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B785C10ECC2;
 Tue, 21 Apr 2026 14:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776783471; x=1808319471;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lG7t0Dc/8A1NelybHc7f9CtArEFFD9HCpVmgA+QGBYA=;
 b=Vig6HvbgmpaRHwaL9UrZ80IW//aIw3tv8LekeT5/GRdB+yz68P5t6DLf
 DybkLofuV3K/kDsxs5AN5I9Yh33/STWDIa8IESev/N91vlBsI89XG6wwn
 j97X9uhrJVW4vZDZRYmaTuSO8okmAPiBJQ/DBf7rWAfluWzS3atkT+6rS
 OMUtPZqaB+I3Q565bKBGXyKk76BD1vE9FFX9q8idAKBLk0mAdz/pYVCW4
 PWfjYhykJl1hUY6COzS6vETosuyiPK3Zv1mOmRpkfB/n1rQOp1XHeJofv
 WZj19i5DruQQi14dLASBL36ryVn2+Hcez4LlDX5EehxKCRQFzACTotaDA w==;
X-CSE-ConnectionGUID: dY2zXX08TgqD09a6S2CJkw==
X-CSE-MsgGUID: L9moEIrWTk+tFnFyPUSGFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11763"; a="89187680"
X-IronPort-AV: E=Sophos;i="6.23,191,1770624000"; d="scan'208";a="89187680"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2026 07:57:51 -0700
X-CSE-ConnectionGUID: UWhpCUIWSxWukkhXvORugQ==
X-CSE-MsgGUID: 1GEj+uG6QPOyBuv6CpMd0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,191,1770624000"; d="scan'208";a="262447057"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2026 07:57:50 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 21 Apr 2026 07:57:49 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 21 Apr 2026 07:57:49 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.33) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 21 Apr 2026 07:57:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QMvqz1U/MympdnKtKB6s78BJ02b1PN1TTbceDEdhkvAKuFb0m8XFrprC/FzlHCX96l1rmGypWS/dRRI/Af3/sKbG2eyMjHjR8t+gn+KzXoCcFwz+6M9R6Grf7kXZdaokDfmnV2v11D4lcuTqgEaFp3pjsAyFK7m6Bx1sNpNPTx8XrFCu0cxKFlPIKA9DOx9Wk2AUTFFQE9fhtIgmNMk2rBTFsIZHn1gt1Y/hwvP3MFfarvHvrBz8JyjV7GYwd5TW5D28scdSMgTAAMrv+DxsfNG47M3adyo+N2z8qh7tgPrJZVwuHG9DR8qHxujQ065iG9dPP0oIuMAeTKoQaqvo1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5UWpQDpvNatzoxrfsfEQxpu3brMzKoERMqZvEcAQGs8=;
 b=Mc0wgzfdhBn9G05cSOxRoZ5w6RciJFMMnIK8vOkZPHBghJp/4fFkxHuEAg46OlLMWovwgOpMlIucuUogcpg1I3z2ZHUnIfeB7/EhmHcisQLZWj22CCFs3g9wwnbgVhTgQnlTCZNgN9aGyOlN8obhpScLB7SvIvJeeOaUIoTtFslez5TGiN3sLYe5WF4dF8vlsIRs/A+mk+Ry7r1eWtPhayV2BzFCY9tRPdqU8SWg/0r2SVR+NtWBntk8HV7PmhNti7E7atHeVISAC3g66uYQJ5zucvj4yzIRqglqXV5BESENSmAfj0lC3wTZfff8rbOsXBBhEy9jiWGHiBGCf3hRig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SA2PR11MB5131.namprd11.prod.outlook.com (2603:10b6:806:116::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.16; Tue, 21 Apr
 2026 14:57:45 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.20.9846.016; Tue, 21 Apr 2026
 14:57:45 +0000
Message-ID: <e4eced80-8b22-473d-8add-7e4a517937f8@intel.com>
Date: Tue, 21 Apr 2026 20:27:37 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/13] drm/colorop: Add DRM_COLOROP_FIXED_MATRIX
Content-Language: en-GB
To: Melissa Wen <mwen@igalia.com>, <dri-devel@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <harry.wentland@amd.com>, <louis.chauvet@bootlin.com>,
 <contact@emersion.fr>, <alex.hung@amd.com>, <daniels@collabora.com>,
 <uma.shankar@intel.com>, <maarten.lankhorst@intel.com>,
 <pekka.paalanen@collabora.com>, <pranay.samala@intel.com>,
 <swati2.sharma@intel.com>
References: <20260408051514.608781-1-chaitanya.kumar.borah@intel.com>
 <20260408051514.608781-2-chaitanya.kumar.borah@intel.com>
 <c15ff4ca-79c3-4e65-bcc3-24e74adc2636@igalia.com>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <c15ff4ca-79c3-4e65-bcc3-24e74adc2636@igalia.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0161.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1ba::12) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|SA2PR11MB5131:EE_
X-MS-Office365-Filtering-Correlation-Id: ed5b0443-791d-457f-4484-08de9fb658ac
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: 4f0FsgeJjIwms6/EuUP+FvD8SS3sXyScf0bAqMIVo8OxNGi/ND2rRLeVJYPi9E5zqZznh1Q+WzmhjlVbqs2FFSRqfnunta9x4Bry2Pfyp9EDGFOT5/MZlyszV3LAgBDvMtcnqbIpHb/X47KV5Gbl0IySF3h7pELexUxz2qLQMwZZ+gAF1a9qqWmRI5C4UJI55NBONsep78Yvs2M1dqFL3tKrr2nAD1+2BoZsupW3wLnnEZ5F8cG+HOkFf8bFLWZPrmxzXlWmQQLM7i2T/inclOZTxpATfYrb+CRMa3IL9eXIDHw5G3eCa79GLqAr0Jr7GBsoq81NLBBW3p9ChlaEXrtlpm+MFHwY5mODAEk3TvE83w/OJVgrtS+frwgigIMvaqTERZAY0FnAoz95RvUysZjS11XCWwrJC0SiJ9ymtQpMjEkjgtEe73sjohlBn1W6NDi3bQqICcOg1PMFpwIP2YWPfPsa9K3dD02uFsQBIkjd8sqlxWQGnMFG+Pi57zSUbU0EidqrbOz24nordaQVQxwY5Rx11OqGTUptmvpkSnRDKLW4zPfN+pBpmEk+btNEopBjSMwDpkeHyXQNiANqAnKvtmFKn4m/ICY3TqR2e9Nc4EZs+5VIbUvK++BlH8npp8VE/xz5TfDIkTQLYb9Pu/6W/k5ADk7aba28pPM5coNv/b1reKcPLWSY1N32S/Ojrg1ze7DcuvPl6Y0vRXxO6vgI9SlWi0+CU6zFewNVn5KN6Xiafkcj0ke+dEKIi4uX
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZFc0V3pZZFhCK1VJZEIzRE1TZG9oOXRnK3UrWDF0OEwyRzVNS0NFTklXWGtz?=
 =?utf-8?B?VVFOV0Z3Y1pIbWtIeEJNYnBTLzl4VXpldzh3SERtK0JtTkFNMUJJTG43VzFM?=
 =?utf-8?B?TzgxRTh4eVRMQ2pTN3JxcGJXZE45RmFpb29VUmtVa2Y4NitLUDdQbGVOaU15?=
 =?utf-8?B?RWF6bWZrdFZjSmcyUUFHc3JmYzJsTWZwRUpTcG5kMTZDWlJTSjBhdCtqUGVW?=
 =?utf-8?B?dGVZdGhtOGJDQldIUk5PZ2NRYStyQnpsaTd3cVVkVVZUY3NnZXBYSGJsWmU2?=
 =?utf-8?B?SitjNFRZbUtmd2RBeHFvdjdaT0toZGtFWU5BZ0pDOHRVNDVEdWgwR2dOUWIz?=
 =?utf-8?B?bHEyaGFsQi9DbkRDaFJ6RVpqM2RYNDR1a1dvSEl3b3U5akRjN0s5dGt5djBG?=
 =?utf-8?B?b0lYVHE4U0E1YWxXR2UxMzZ5VlhCMGpCQm1jaVhjME1XUTVrODAzWWhnbnF1?=
 =?utf-8?B?MFkyWDhhVWJ4OURwNWtMaXcxSmJEeDhSdktuVVMyS0M1NVBLZ2NrVkNRRkN6?=
 =?utf-8?B?K2lLTnVWNk9hL2trazRDajJVbnQvYXV3NEFYb1BEOVJ5bkFNWG40SzNybWpm?=
 =?utf-8?B?UlpYYnJGMW5zWm9wL2YvZmZMdDc3NUIweGZCN0t2TE1XbTFHMDdmR09VMi92?=
 =?utf-8?B?STg5VTFsb2JhNU1ROElzWXZDZjlSMVBvNHV0ais2QWxBM1NwTWlhZjByMVVv?=
 =?utf-8?B?WnFhSnY2NUl6aFVFeER5czRhVnFPenZFWDVrQ2RnYVJ4Q2dMSGRDUmI1NDRs?=
 =?utf-8?B?VHhmZGYzaVN2ZTV0c1RDR2lOVEprYnMydGxyajNDQ09CclQyK01uOXFoOUtD?=
 =?utf-8?B?UGRkSXcrLzZ0Q2k2Q3VTSTdjOXRuR2ZmQ3JhWm1KM3kzSllpMld0cEdoeDdJ?=
 =?utf-8?B?OVJoYUwwdVhQZlRMa2s2TnZOQ1VQM0ZidVE1T0svdldLdW9STzZRRjMwMHly?=
 =?utf-8?B?Znd6dys1TGw0cWVUckFpSXI4VHJvSzQ0bEhyZEljcGRXZ3RPWktKQTJhYXhx?=
 =?utf-8?B?TkNuSkRodm5leVFta2V4R1VNOGlGNUlqSTRuek15aUZCOElwOHZlZnh1b0FC?=
 =?utf-8?B?WmdNcjh2bWF1aXNUMGVNdFZOZmwyeS9CZ05NVzhWbFRVSTFQRnpNYytHZTI5?=
 =?utf-8?B?VytSTUtoZUZYQzdZM1V6OTZNVXFrcTFSemZ2cCtsMnlYR1IzZFF6NXQzb095?=
 =?utf-8?B?dGVaYzlFY3RPeVhiN3FFMTZrVEcxS0dEeUR2Mkd2ZkpXRXlkTklWdi9Wb1NG?=
 =?utf-8?B?dlZNV0RxUkhLS0ZHWG52U2RzRituUmJCMUxDa1VZRHloeG1SakxTZE5kWmhw?=
 =?utf-8?B?UnNYbWRtVnZQcFo2dCtoenpVc0VPQldMdHo4VUhRcllnL1JwdzJhOWU4bEd0?=
 =?utf-8?B?T3hreHBDVjFiWDdrVkl3cVF6UklLcm53YStyd1VUV28wWVFyQzlXalI4U1Jo?=
 =?utf-8?B?SlFLcWx6OENmRDNpaG5iU21zanBSN3ZlZmdYYjdEYms1SDZsWmJnVUhzSFQ1?=
 =?utf-8?B?VkM0aFZuSEcxVUxRanUwOVJlVWNKV29TRmJNb2laaEZUVWN2dGFqcFJleTla?=
 =?utf-8?B?aFdvZStBRGlhQm9Ec1E5TkFHbnRvTlhaZ0xRUzl1R0tMVUlCdEhjMVk3Y1Ji?=
 =?utf-8?B?cWM3dkllZUkvMm90K2hHeTFQSDlGZ3BNOFZJM2FQem5qYUZjR3VHazgwYWxH?=
 =?utf-8?B?aWs3eUN0L3JhYVNmYWx4cWVyQnVmUHVLZGZlMmN5ZkwzSkNjK3hmb2JwUUFh?=
 =?utf-8?B?UVM2UjU5MGdXdTIxWDhNdVpTd2Rud2J2SEYyZUt4SHBuSFUxQTY5M3NqOHdo?=
 =?utf-8?B?NGlpazNSbUhuTEFFQktuOGo4MENGSCt3Z09QT3NLYkdqZXZ0dXpKT0w4SUhs?=
 =?utf-8?B?T2kzKyt0UnpDeWw0TGlWQlpOV3FEOFUyVlE2WTBsOUV5ejZoSEFLU2NwNm9O?=
 =?utf-8?B?d3ZnTVp2YnZ1WlU2Zm9LSTVEMVVIcG1rWStLQkVXMVRFeTdCWkYyQXg5TmNY?=
 =?utf-8?B?bVZGbFF1TlpvZ3l2c0x4N005K3BQQXA4THY3S1JBSnVsRXhyekd6UzNyWDVP?=
 =?utf-8?B?alFaaTBPSmtnUnc4MmpHZnBNKzZ4bHUvL25uKzZlN3M3anJaaUNBMnhwS25V?=
 =?utf-8?B?Zk5wcGsvVzdpR1N6YW9QQnhmaEZFNTlNaXUyN3RVRGV1REowTXJGcmtpdk9x?=
 =?utf-8?B?amJCNkl3VE05NVcvRGVUdW1idE9YOVZ3TUZpdmNTVzJVNzU0dzN6STZLd3Za?=
 =?utf-8?B?eHFkR0VzVzRldm9pYTByZ1RUYmxlSDdvMHpNMnpiY2RoRldtc2ZadlQ5UFlF?=
 =?utf-8?B?WDI5Qkd4aWtOWlo4S0VOS0gwcnZueGxXQWh6YnJPQUk3ZWY4bmxXWlBPblBl?=
 =?utf-8?Q?XPaQqQlPLUIf/Fmj4X5xzZEtdUefcnaRce+CE?=
X-Exchange-RoutingPolicyChecked: n5nBwEX+Kr3Bfi7e9cupg0FVj/+auQhGv/HkzkmDRBpLyXBtLHd+e7SxfIF7/LybOLD/pS0zYYwLiqQeEIkCaIzx4NffZq6Jzj2g148WcecR3Bxk0SJl3TZ49O37selandBFYgw2WQuREy3hh9cbyaGErc1TEmGPitfX0UcrOON3E8AdUGzTFBnFaLIhh0nbkXbQEQUuTK25SnisU8Imsxn7c6aH2qOi05vKb3saPx2jZiRpsX+xOoc1ecM6tvHZt9BjOQuVxOEFGlUCuAYbfwH9h8LsCQSudIk26lS75qycUFSsrInzb5v6iWgWK529JXQVdoUkh46BiOQLc+2EJg==
X-MS-Exchange-CrossTenant-Network-Message-Id: ed5b0443-791d-457f-4484-08de9fb658ac
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2026 14:57:45.5364 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MsWbv8ZMKEYjhr0Pt90JMx3Oe8pWA+xtIodSzSBG/v5uCQF9lPts7/mvm01bJZUz1iPnObOuOmdlrhpMrhjgHKMzU9ekRIL5L8C2dLwIKW8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5131
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
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 9E9A643C6B4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 4/21/2026 6:40 PM, Melissa Wen wrote:
> 
> 
> On 08/04/2026 02:15, Chaitanya Kumar Borah wrote:
>> Introduce DRM_COLOROP_FIXED_MATRIX, a new colorop type representing a
>> hardware that performs a fixed matrix operation.
>>
>> Unlike CTM-based colorops, this block does not expose programmable
>> coefficients. Instead, userspace selects one of the predefined
>> hardware modes via a new FIXED_MATRIX_TYPE enum property. Supported modes
>> include common YCbCr->RGB and RGB709->RGB2020 conversions.
>>
>> v2:
>>   - Naming changes (Pekka)
>>
>> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>> ---
>>   drivers/gpu/drm/drm_atomic.c      |   4 ++
>>   drivers/gpu/drm/drm_atomic_uapi.c |   4 ++
>>   drivers/gpu/drm/drm_colorop.c     | 107 ++++++++++++++++++++++++++++++
>>   include/drm/drm_colorop.h         |  84 +++++++++++++++++++++++
>>   include/uapi/drm/drm_mode.h       |  12 ++++
>>   5 files changed, 211 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
>> index 41c57063f3b4..16a2183b11bf 100644
>> --- a/drivers/gpu/drm/drm_atomic.c
>> +++ b/drivers/gpu/drm/drm_atomic.c
>> @@ -845,6 +845,10 @@ static void drm_atomic_colorop_print_state(struct 
>> drm_printer *p,
>>                  drm_get_colorop_lut3d_interpolation_name(colorop- 
>> >lut3d_interpolation));
>>           drm_printf(p, "\tdata blob id=%d\n", state->data ? state- 
>> >data->base.id : 0);
>>           break;
>> +    case DRM_COLOROP_FIXED_MATRIX:
>> +        drm_printf(p, "\tfixed_matrix_type=%s\n",
>> +               drm_get_colorop_fixed_matrix_type_name(state- 
>> >fixed_matrix_type));
>> +        break;
>>       default:
>>           break;
>>       }
>> diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/ 
>> drm_atomic_uapi.c
>> index 5bd5bf6661df..d69406b08a0f 100644
>> --- a/drivers/gpu/drm/drm_atomic_uapi.c
>> +++ b/drivers/gpu/drm/drm_atomic_uapi.c
>> @@ -761,6 +761,8 @@ static int drm_atomic_colorop_set_property(struct 
>> drm_colorop *colorop,
>>       } else if (property == colorop->data_property) {
>>           return drm_atomic_color_set_data_property(colorop, state,
>>                                 property, val);
>> +    } else if (property == colorop->fixed_matrix_type_property) {
>> +        state->fixed_matrix_type = val;
>>       } else {
>>           drm_dbg_atomic(colorop->dev,
>>                      "[COLOROP:%d:%d] unknown property [PROP:%d:%s]\n",
>> @@ -793,6 +795,8 @@ drm_atomic_colorop_get_property(struct drm_colorop 
>> *colorop,
>>           *val = colorop->lut3d_interpolation;
>>       else if (property == colorop->data_property)
>>           *val = (state->data) ? state->data->base.id : 0;
>> +    else if (property == colorop->fixed_matrix_type_property)
>> +        *val = state->fixed_matrix_type;
>>       else
>>           return -EINVAL;
>> diff --git a/drivers/gpu/drm/drm_colorop.c b/drivers/gpu/drm/ 
>> drm_colorop.c
>> index 566816e3c6f0..dd385e8dacbe 100644
>> --- a/drivers/gpu/drm/drm_colorop.c
>> +++ b/drivers/gpu/drm/drm_colorop.c
>> @@ -68,6 +68,7 @@ static const struct drm_prop_enum_list 
>> drm_colorop_type_enum_list[] = {
>>       { DRM_COLOROP_CTM_3X4, "3x4 Matrix"},
>>       { DRM_COLOROP_MULTIPLIER, "Multiplier"},
>>       { DRM_COLOROP_3D_LUT, "3D LUT"},
>> +    { DRM_COLOROP_FIXED_MATRIX, "Fixed Matrix"},
>>   };
>>   static const char * const colorop_curve_1d_type_names[] = {
>> @@ -90,6 +91,14 @@ static const struct drm_prop_enum_list 
>> drm_colorop_lut3d_interpolation_list[] =
>>       { DRM_COLOROP_LUT3D_INTERPOLATION_TETRAHEDRAL, "Tetrahedral" },
>>   };
>> +static const char * const colorop_fixed_matrix_type_names[] = {
>> +    [DRM_COLOROP_FM_YCBCR601_FULL_RGB]  = "YCbCr 601 Full to RGB",
>> +    [DRM_COLOROP_FM_YCBCR709_FULL_RGB]    = "YCbCr 709 Full to RGB",
>> +    [DRM_COLOROP_FM_YCBCR2020_FULL_RGB_NC]  = "YCbCr 2020 Full to RGB 
>> NC",
>> +    [DRM_COLOROP_FM_YCBCR_LIMITED_FULL]  = "YCbCr limited to full",
>> +    [DRM_COLOROP_FM_RGB709_RGB2020]     = "RGB709 to RGB2020",
>> +};
>> +
>>   /* Init Helpers */
>>   static int drm_plane_colorop_init(struct drm_device *dev, struct 
>> drm_colorop *colorop,
>> @@ -455,6 +464,81 @@ int drm_plane_colorop_3dlut_init(struct 
>> drm_device *dev, struct drm_colorop *col
>>   }
>>   EXPORT_SYMBOL(drm_plane_colorop_3dlut_init);
>> +/**
>> + * drm_plane_colorop_fixed_matrix_init - Initialize a 
>> DRM_COLOROP_FIXED_MATRIX
>> + *
>> + * @dev: DRM device
>> + * @colorop: The drm_colorop object to initialize
>> + * @plane: The associated drm_plane
>> + * @funcs: control functions for the new colorop
>> + * @supported_fm: A bitfield of supported 
>> drm_colorop_fixed_matrix_type enum values,
>> + *               created using BIT(fixed_matrix_type) and combined 
>> with the OR '|'
>> + *               operator.
>> + * @flags: bitmask of misc, see DRM_COLOROP_FLAG_* defines.
>> + * @return zero on success, -E value on failure
>> + */
>> +int drm_plane_colorop_fixed_matrix_init(struct drm_device *dev, 
>> struct drm_colorop *colorop,
>> +                    struct drm_plane *plane,
>> +                    const struct drm_colorop_funcs *funcs,
>> +                    u64 supported_fm, uint32_t flags)
>> +{
>> +    struct drm_prop_enum_list enum_list[DRM_COLOROP_FM_COUNT];
>> +    int i, len;
>> +
>> +    struct drm_property *prop;
>> +    int ret;
>> +
>> +    if (!supported_fm) {
>> +        drm_err(dev,
>> +            "No supported FM type op for new Fixed Matrix colorop on 
>> [PLANE:%d:%s]\n",
>> +            plane->base.id, plane->name);
>> +        return -EINVAL;
>> +    }
>> +
>> +    if ((supported_fm & -BIT(DRM_COLOROP_FM_COUNT)) != 0) {
>> +        drm_err(dev, "Unknown Fixed Matrix provided on [PLANE:%d:%s]\n",
>> +            plane->base.id, plane->name);
>> +        return -EINVAL;
>> +    }
>> +
>> +    ret = drm_plane_colorop_init(dev, colorop, plane, funcs, 
>> DRM_COLOROP_FIXED_MATRIX, flags);
>> +    if (ret)
>> +        return ret;
>> +
>> +    len = 0;
>> +    for (i = 0; i < DRM_COLOROP_FM_COUNT; i++) {
>> +        if ((supported_fm & BIT(i)) == 0)
>> +            continue;
>> +
>> +        enum_list[len].type = i;
>> +        enum_list[len].name = colorop_fixed_matrix_type_names[i];
>> +        len++;
>> +    }
>> +
>> +    if (WARN_ON(len <= 0))
>> +        return -EINVAL;
>> +
>> +    prop = drm_property_create_enum(dev, DRM_MODE_PROP_ATOMIC, 
>> "FIXED_MATRIX_TYPE",
>> +                    enum_list, len);
>> +
>> +    if (!prop)
>> +        return -ENOMEM;
>> +
>> +    colorop->fixed_matrix_type_property = prop;
>> +    /*
>> +     * Default to the first supported CSC mode as provided by the 
>> driver.
>> +     * Intuitively this should be something that keeps the colorop in 
>> pixel bypass
>> +     * mode but that is already handled via the standard colorop bypass
>> +     * property.
>> +     */
>> +    drm_object_attach_property(&colorop->base, colorop- 
>> >fixed_matrix_type_property,
>> +                   enum_list[0].type);
>> +    drm_colorop_reset(colorop);
>> +
>> +    return 0;
>> +}
>> +EXPORT_SYMBOL(drm_plane_colorop_fixed_matrix_init);
>> +
>>   static void __drm_atomic_helper_colorop_duplicate_state(struct 
>> drm_colorop *colorop,
>>                               struct drm_colorop_state *state)
>>   {
>> @@ -521,6 +605,13 @@ static void __drm_colorop_state_reset(struct 
>> drm_colorop_state *colorop_state,
>>                                 &val);
>>           colorop_state->curve_1d_type = val;
>>       }
>> +
>> +    if (colorop->fixed_matrix_type_property) {
>> +        drm_object_property_get_default_value(&colorop->base,
>> +                              colorop->fixed_matrix_type_property,
>> +                              &val);
>> +        colorop_state->fixed_matrix_type = val;
>> +    }
>>   }
>>   /**
>> @@ -561,6 +652,7 @@ static const char * const colorop_type_name[] = {
>>       [DRM_COLOROP_CTM_3X4] = "3x4 Matrix",
>>       [DRM_COLOROP_MULTIPLIER] = "Multiplier",
>>       [DRM_COLOROP_3D_LUT] = "3D LUT",
>> +    [DRM_COLOROP_FIXED_MATRIX] = "Fixed Matrix",
>>   };
>>   static const char * const colorop_lu3d_interpolation_name[] = {
>> @@ -617,6 +709,21 @@ const char 
>> *drm_get_colorop_lut3d_interpolation_name(enum drm_colorop_lut3d_inte
>>       return colorop_lu3d_interpolation_name[type];
>>   }
>> +/**
>> + * drm_get_colorop_fixed_matrix_type_name: return a string for fixed 
>> matrix type
>> + * @type: fixed matrix type to compute name of
>> + *
>> + * In contrast to the other drm_get_*_name functions this one here 
>> returns a
>> + * const pointer and hence is threadsafe.
>> + */
>> +const char *drm_get_colorop_fixed_matrix_type_name(enum 
>> drm_colorop_fixed_matrix_type type)
>> +{
>> +    if (WARN_ON(type >= ARRAY_SIZE(colorop_fixed_matrix_type_names)))
>> +        return "unknown";
>> +
>> +    return colorop_fixed_matrix_type_names[type];
>> +}
>> +
>>   /**
>>    * drm_colorop_set_next_property - sets the next pointer
>>    * @colorop: drm colorop
>> diff --git a/include/drm/drm_colorop.h b/include/drm/drm_colorop.h
>> index bd082854ca74..c13b4b045fff 100644
>> --- a/include/drm/drm_colorop.h
>> +++ b/include/drm/drm_colorop.h
>> @@ -134,6 +134,71 @@ enum drm_colorop_curve_1d_type {
>>       DRM_COLOROP_1D_CURVE_COUNT
>>   };
>> +/**
>> + * enum drm_colorop_fixed_matrix_type - type of Fixed Matrix
>> + *
>> + * Describes a Fixed Matrix operation to be applied by the 
>> DRM_COLOROP_FIXED_MATRIX
>> + */
>> +enum drm_colorop_fixed_matrix_type {
>> +    /**
>> +     * @DRM_COLOROP_FM_YCBCR601_FULL_RGB:
>> +     *
>> +     * enum string "YCbCr 601 Full to RGB"
>> +     *
>> +     * This selects the matrix that converts full range YCbCr into RGB
>> +     * according to the BT.601 coefficients.
>> +     */
>> +    DRM_COLOROP_FM_YCBCR601_FULL_RGB,
>> +
>> +    /**
>> +     * @DRM_COLOROP_FM_YCBCR709_FULL_RGB:
>> +     *
>> +     * enum string "YCbCr 709 Full to RGB"
>> +     *
>> +     * This selects the matrix that converts full range YCbCr into RGB
>> +     * according to the BT.709 coefficients.
>> +     */
>> +    DRM_COLOROP_FM_YCBCR709_FULL_RGB,
>> +
>> +    /**
>> +     * @DRM_COLOROP_FM_YCBCR2020_NC_FULL_RGB:
>> +     *
>> +     * enum string "YCbCr 2020 Full to RGB NC"
> Nit: I think you mean "YCbCr 2020 NC Full to RGB"?
>> +     *
>> +     * This selects the matrix that converts full range YCbCr into RGB
>> +     * according to the BT.2020 non-constant luminance coefficients.
>> +     */
>> +    DRM_COLOROP_FM_YCBCR2020_FULL_RGB_NC,
> ... and here ^ DRM_COLOROP_FM_YCBCR_NC_FULL_RGB

Ack.

>> +
>> +    /**
>> +     * @DRM_COLOROP_FM_YCBCR_LIMITED_FULL:
>> +     *
>> +     * enum string "YCbCr limited to full"
>> +     *
>> +     * This selects the matrix that converts limited range YCbCr into
>> +     * full range YCbCr. Though not strictly a matrix operation but
>> +     * can be represented as one.
>> +     */
>> +    DRM_COLOROP_FM_YCBCR_LIMITED_FULL,
> I didn't full understand how this is going to work.
> Looks like it's merging two properties (COLOR_ENCODING and COLOR_RANGE) 
> in a single colorop.
> But we can only select one enum value. So how to communicate, for 
> example, a "YCbCr 709 Limited to RGB" conversion?
> The driver will have to define a coloro pipeline with two fixed matrix 
> colorop in a row, one with only "Limited to Full" and another with 
> "YCbCr Full to RGB" ?
> 

It depends on what the HW supports. Let's say a fixed function HW block 
can itself support "YCbCr Limited to RGB" then we just need a single 
colorop that exposes this enum. These are being added in the series that 
Harry published.[1]

In Intel's case, we have two separate blocks to do this. One that does 
the range correction (Limited to Full) and then a fixed function CSC 
block that does only "YCbCr Full to RGB" conversion. If they are 
adjacent in the pipeline, they can very well be represent by a single 
colorop described in the previous paragraph but we have a unique 
situation where there is a 1D LUT in between the two blocks.

[YUV Limited to Full] -> [1D LUT] -> [YCbCr XXX Full to RGB] -> [1D LUT].

==
Chaitanya

[1] 
https://lore.kernel.org/dri-devel/20260330153451.99472-3-harry.wentland@amd.com/

> Melissa
>> +
>> +    /**
>> +     * @DRM_COLOROP_FM_RGB709_RGB2020:
>> +     *
>> +     * enum string "RGB709 to RGB2020"
>> +     *
>> +     * Selects the fixed-function CSC preset that converts RGB
>> +     * (BT.709) colorimetry to RGB (BT.2020).
>> +     */
>> +    DRM_COLOROP_FM_RGB709_RGB2020,
>> +
>> +    /**
>> +     * @DRM_COLOROP_FM_COUNT:
>> +     *
>> +     * enum value denoting the size of the enum
>> +     */
>> +    DRM_COLOROP_FM_COUNT
>> +};
>> +
>>   /**
>>    * struct drm_colorop_state - mutable colorop state
>>    */
>> @@ -183,6 +248,13 @@ struct drm_colorop_state {
>>        */
>>       struct drm_property_blob *data;
>> +    /**
>> +     * @fixed_matrix_type:
>> +     *
>> +     * Type of Fixed Matrix operation.
>> +     */
>> +    enum drm_colorop_fixed_matrix_type fixed_matrix_type;
>> +
>>       /** @state: backpointer to global drm_atomic_state */
>>       struct drm_atomic_state *state;
>>   };
>> @@ -368,6 +440,13 @@ struct drm_colorop {
>>        */
>>       struct drm_property *data_property;
>> +    /**
>> +     * @fixed_matrix_type_property:
>> +     *
>> +     * Sub-type for DRM_COLOROP_FIXED_MATRIX type.
>> +     */
>> +    struct drm_property *fixed_matrix_type_property;
>> +
>>       /**
>>        * @next_property:
>>        *
>> @@ -424,6 +503,10 @@ int drm_plane_colorop_3dlut_init(struct 
>> drm_device *dev, struct drm_colorop *col
>>                    uint32_t lut_size,
>>                    enum drm_colorop_lut3d_interpolation_type 
>> interpolation,
>>                    uint32_t flags);
>> +int drm_plane_colorop_fixed_matrix_init(struct drm_device *dev, 
>> struct drm_colorop *colorop,
>> +                    struct drm_plane *plane,
>> +                    const struct drm_colorop_funcs *funcs,
>> +                    u64 supported_fm, uint32_t flags);
>>   struct drm_colorop_state *
>>   drm_atomic_helper_colorop_duplicate_state(struct drm_colorop *colorop);
>> @@ -480,6 +563,7 @@ drm_get_colorop_lut1d_interpolation_name(enum 
>> drm_colorop_lut1d_interpolation_ty
>>   const char *
>>   drm_get_colorop_lut3d_interpolation_name(enum 
>> drm_colorop_lut3d_interpolation_type type);
>> +const char *drm_get_colorop_fixed_matrix_type_name(enum 
>> drm_colorop_fixed_matrix_type type);
>>   void drm_colorop_set_next_property(struct drm_colorop *colorop, 
>> struct drm_colorop *next);
>> diff --git a/include/uapi/drm/drm_mode.h b/include/uapi/drm/drm_mode.h
>> index a4bdc4bd11bc..dc4b8566fec8 100644
>> --- a/include/uapi/drm/drm_mode.h
>> +++ b/include/uapi/drm/drm_mode.h
>> @@ -971,6 +971,18 @@ enum drm_colorop_type {
>>        *         color = lut3d[index]
>>        */
>>       DRM_COLOROP_3D_LUT,
>> +
>> +    /**
>> +     * @DRM_COLOROP_FIXED_MATRIX:
>> +     *
>> +     * enum string "Fixed Matrix"
>> +     *
>> +     * A Colorop block that performs a pre-defined matrix operation 
>> selected
>> +     * via the FIXED_MATRIX_TYPE enum property. The driver advertises 
>> the supported
>> +     * operations through this property.
>> +     */
>> +    DRM_COLOROP_FIXED_MATRIX,
>> +
>>   };
>>   /**
> 

