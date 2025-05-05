Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A6FAA9EA9
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 00:01:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5952C10E335;
	Mon,  5 May 2025 22:01:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WZQ3Oi2y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C352F10E027
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 May 2025 22:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746482461; x=1778018461;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=pOCv87BIgTpvq2Z2HGwhDkXQjwrl5XRLQXD2SlLqDi4=;
 b=WZQ3Oi2y3Xx3pP9+Vt7kL1q94whDtZuAqVEe/e0EdsZ1WQae0bh6Xzws
 5zMNd2nDUIpgJdhdjBVy1IrUUro4BTR0s0xMapoX14jBKMR+xA1u6Zf5N
 brH/+wNKn3u7bQqjiYXADm0P6+A66Iowvuf26tW7uy+VVb3viy07N02JI
 EBVd07zVLo+RtEGAg9PTO5U4ca+Db3JxCdnESPlX0a36fUsPT3fonJbaQ
 /R4gwHPvRDiIILmKZiSCCq2nS268QccPLhK9EWM6ZmLr7u9iZ8DOn52Yn
 v50PZAokdJlRQio+HMMSLoP8hZspVib63Edca4JeSCtGiUHRtVHHdyesA w==;
X-CSE-ConnectionGUID: x0+D5uYHQFOuW2UutE4CzA==
X-CSE-MsgGUID: uNcdIs7hRk+ZG0ii0MMAkg==
X-IronPort-AV: E=McAfee;i="6700,10204,11424"; a="51929325"
X-IronPort-AV: E=Sophos;i="6.15,264,1739865600"; d="scan'208";a="51929325"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2025 15:01:01 -0700
X-CSE-ConnectionGUID: 09WITes0SYerB0qju8u4Qw==
X-CSE-MsgGUID: fMq817oPRq2egEK2JG7J8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,264,1739865600"; d="scan'208";a="135111571"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2025 15:01:01 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 5 May 2025 15:01:00 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 5 May 2025 15:01:00 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 5 May 2025 15:00:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d8jtYh+AmX+69sNQnt0hQ/us4bYn/fBaZBKRFyw4vNVd20/FQ/NPMWmoiUm50xQqnb/0gHffNy364jcAaTec4xpdw9u+RG9qguAv8I1zG1kcQOFyAPk9O/2fGexidsBJT748GCVnFk6IDK0wM6X0NAT/PnS6Mgpv2M6chy9KW/rHv9Fi6T1oPC5IVKlDC9+hCbSmECmrx8n06+oL9iOpOYReylAQmkDDHxBMICbusUsdWSIPzZVccknlpnkrR8gY5UPvwkk052bf+dARKvX2rlCNYuXd/yP8v+7m/IHVF4LfpgRtIgmYfeBeh7jqKWWcyiHwvPZcYVqZd3yTNO0WBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U0Ql9lJF2LhohtRMOkLM3N3mDP+okf5PL3NUbAhcDQw=;
 b=JBC4zo7Yv7t2St93NDGc6bxTsu+L27AAfFY0J6ZG3ineMqCGtRpnvhInUcZwe9u8iCB9IkpLnWphoFjMhQ2MFNlQp4SKziCRNdPeS34Cubz05WjD3JDP8D9NbOf3cp+vYqj+N4Nukfmg57+nQzX0k73by9XYmhxRlZtTIfYE/xCNBkO0kTmyWCqYY/G7bevth2xifAiji26VZLxVDHDuMWSATifBN47tMVP+T79PH2+2L8ZvSN5LIXGVWMeKHO1r1H8KIG0z+bykBVEBvjGIqTpd6dESZD+5kSFjiI+hEs9wJW/ATMa1g7KgpuD8UeHI9dMlJnDRNkhfa9TCEzroMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by CY8PR11MB7242.namprd11.prod.outlook.com (2603:10b6:930:95::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Mon, 5 May
 2025 22:00:56 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::d720:25db:67bb:6f50]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::d720:25db:67bb:6f50%6]) with mapi id 15.20.8699.012; Mon, 5 May 2025
 22:00:56 +0000
Message-ID: <e1ae0201-ca98-4ab5-8777-a18918b2a96e@intel.com>
Date: Mon, 5 May 2025 15:00:56 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] drm/i915/guc: Enable DUAL_QUEUE_WA for newer platforms
To: Julia Filipchuk <julia.filipchuk@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20250502223924.94628-1-julia.filipchuk@intel.com>
Content-Language: en-US
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <20250502223924.94628-1-julia.filipchuk@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR07CA0018.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::31) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|CY8PR11MB7242:EE_
X-MS-Office365-Filtering-Correlation-Id: 0ec5cc46-13db-4d58-65b3-08dd8c204fb9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SnRhWU5JbnpjWWs4SnNWNVpUbFZCTXc1bk9XZDQvYWNBR1VuR3hEaTIvZDlX?=
 =?utf-8?B?TkFWcnJjR1BkVE8vSHNROVdnMC9YdllwZGRCbUFvbkRsYUN5RHRFbGtaVGN1?=
 =?utf-8?B?MjQ1WWFpYnRkdFFzbUc2b0RKdkpIVHRTd0IzL1JrSHoyZlRmc3U1THNiQWdS?=
 =?utf-8?B?dkU5RWx2aTFySnRuaGVKUXFIWGxwcWtjMEQxdlVaNGNlTmtHbU9KWXRpL29P?=
 =?utf-8?B?RzhIMnFGV0FZbGpyMWtKREQraGI3aDZiZFdTMW1MNkM4VWRYZmxxdWFjOUVz?=
 =?utf-8?B?Qmc2aHhYbHB3b0JDU0pCeFFBblBxUHpCZkU0Ui9xbVlwMHRNcU1RK0VlTjFT?=
 =?utf-8?B?S1dPQTdZY2dWWDBWaDZsL1p2ZWMzUHNZSzg0R0NBdm1oN1ZZWDd3UTByZUxC?=
 =?utf-8?B?b0JjZjVIMW9LYjJrdEV2U1YrSHNjS0ZwZzVyV2xiWHdlYk55cEF1TkJEZG9W?=
 =?utf-8?B?clFHNFhtcEhPR1hlYkdIV1hMcGlibi9TQml0YmlVbHVXOEFJZHBHYjhKUTdo?=
 =?utf-8?B?ZXNrUmt4c3pZZWRpVGNOTmlQMW9vZVN0VktXT2NJd2ZZV0lxNy85NldrQnRx?=
 =?utf-8?B?MFAyRitwaG53eGcrVENBbmxYSEtkaG85SW52L1RtaEI0djRqeXI1ejc2TENU?=
 =?utf-8?B?c09pZmZaU2Nvc3BwTVdZVkNFVXlacG9ZbHQxZ2c2dm45ZzFQeEg0WnNEOVJh?=
 =?utf-8?B?MGdoYURaYlh5Wk1IUGk2QnQvcS9kblIwTmhla3pEd0ZjaWp2OVVuTnN2ZWRL?=
 =?utf-8?B?Qit0d1JlS3hsSXEzRlJ1K1BGeHBKTW1mRlZHWndydkxlV1pSRDdBcHQ1cWh6?=
 =?utf-8?B?cW82NG5pZHAzV3l5SmlQRjM1Q1hNM3BnTjE2N1lmc24wYUM1YzZlT3diQ0FW?=
 =?utf-8?B?SngwMG1LdE1hbDZ3NnFVNXBaTWZuMTJ4aWVLbk45R2ZYd1RTbUtyZGhLUWwr?=
 =?utf-8?B?ZXZQQlB1MURLbVVickVOeUlySFlrcEZSWmppR0RTd05KZVdPd24rZG9WTTZI?=
 =?utf-8?B?cTZiN3p6RzNDL082eVY1bmtTY3NGYVRta1BIWVc4SHNWOXJmQXVqekQ1WFVP?=
 =?utf-8?B?TkdaZEFTOG1CSDI2MTk4elBTWEdGMHhPVVdmNmNueWtuUjdreXp3Tjk2cXYy?=
 =?utf-8?B?eUxnN0NzTmNqREV5VE5MQmw4cm9hb1A5R0R5NWZ2VWhielBEcGlRK05HMExz?=
 =?utf-8?B?ODdnNVNuWFlYWmxTdWFENGRFY3JId0U0ZUh6bVg1L0cvSzBmdzhqUUxZUHpa?=
 =?utf-8?B?NjJ1TDFUS3pET3pBV1czemR2QVpCdlBjN2g5TVRzUkxBb2RVWjRMQjY2VTlw?=
 =?utf-8?B?bmxvUFBMSGladFE5RU5SemZCc2JVcHkvdXdEYlhUM0t5OVJSYzE4bng3bEls?=
 =?utf-8?B?STA0UDhtQmRmdmkrRGtEM0NCTmRScVZrL2JvTUN2ZVRtYTN5bnhlbHA4Mmdn?=
 =?utf-8?B?T1F3dzcyVEpwWFdZVXdmQ2JWNUZMNUlObFJTMzZTRXE5ZDdWeE92RmdpaFlZ?=
 =?utf-8?B?cHNmdjhNKzl3eTdoZGpOQm1oS0RoSUZ4VUVLdHVCTDMxV2YwMG84d2ErbnVT?=
 =?utf-8?B?S1VZc1lTbHU0cU5xbmFBdlFJWkFpNStqV2QxSzlyeThGMHJjYnFLTjJwbmk1?=
 =?utf-8?B?aXV3N2VXeGRBK1RjOXZEY3ExYUtHamlHTlQyNGdVdCtJdU1ZRVhMMFdDSlRK?=
 =?utf-8?B?QUxKaVEyN2RKc0daYVYyTk5nRisvcWIrVjRrOHJSaWt2SVdMRnZOY2VSUDNT?=
 =?utf-8?B?a3NBM3ZOMUJKSUFmNUI1TEZ4NFhFRC9aSjJUQ3dCcmNiTVJPMkVnV0RUYUN0?=
 =?utf-8?B?MTF1RWpFNTNNUmVTUW84d1hhMHpuVmlrL091bDYvbE9XWnc0enVyRkpoUkkx?=
 =?utf-8?B?a3BlL0RRcld3bWlCKzZzOVpuRjYvTW1vOUQ1OEt4NDh2T0w4OXJpWUFtN2ZT?=
 =?utf-8?Q?aK7gZ6Rq4SA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ekExa1AwOWpXbWtiNnQ1U3BGaGdwOHhlZmcvOTRYYVhMNHVzQkVKNEpaTW5J?=
 =?utf-8?B?Kythbm1hM2JsMldacXZDQnFCbWhmM1JEN0RCeWpUUjMxNk01S2wza09RbHQ2?=
 =?utf-8?B?Sm52bFNKbzI1dFpQQm05byt5WWdQT0xQWGN6Wm9TMGM1eERsTHltQnlEVkxH?=
 =?utf-8?B?Zkc1SmxKY0xBTnpvMmVWR09MdUMxVHU4NG9Ob0ZJWmF2aWRRdlVYN1E5Zkc2?=
 =?utf-8?B?b09pL2lJVngxY29lYTlNNlo5RVJQN3Q3Yk1jSDhhdlVEUzNQeFVtU2hxeUVE?=
 =?utf-8?B?QjMzajc3OHA1SUdVUndmWW05dXJtZFBQRzFEa2o3dDBPZEpUVVFYTkl4K3lh?=
 =?utf-8?B?TTNnQUlIalRHN0JydFBmR3hhYW1jRUxGMmNheC9TK2lncTk2TkNibE9VRW1i?=
 =?utf-8?B?V1A0QVJEUGhIeGlZNGFERTdScWFiMXpHQWd1K2NJMk5HZjVJbHN4TllzUldJ?=
 =?utf-8?B?VzZKV0dEc3o2YktVZ1ZQY3pEOHhSYm41Rkp6K1RTaURRdzJVK1dhcTEya25a?=
 =?utf-8?B?Yk1odXpzaWVlQjA0cC9LWXBaT3U3NzhUZVBxQUxnYmJaRlVoSDBReFViTzNV?=
 =?utf-8?B?elBVRU1BUVhKUmg0MDVZbWR1V1pBTXJDbXBMSVRMSjd0cWk4aDJxRWhkTVUy?=
 =?utf-8?B?ZnBuSnVQRDVYVEtmQytLaERuL2loVFRwc1JGdThlYW56Ni8rMHJDQkEzR1BO?=
 =?utf-8?B?TU5TdWZjNml0bE80UWEvcGQxSEowaExHVUJFUjZYQmNzN2R4MW4yRjI3bGFo?=
 =?utf-8?B?VDk5WDNINzJMSnc5anR3aFBlUlJvb0lyOEVWaTM3MUUxc0NkQk5idWoycnZ5?=
 =?utf-8?B?WnFYeTZmRWwvRUdsSFhXa2ZGTCszT2d3V2JDdjBIbjRJdjBid0d3YlVqeFdS?=
 =?utf-8?B?MFRpdjRDT0hwcTFXSTFGQnQ3UVFFQWxraUpLL1d3QVk3SEo3OE9WaHN5QW5O?=
 =?utf-8?B?N00yZ2g5RVZkV0M2d3E4bHBmWVh4Qk1TSkIzMlc4cmNtSkdUMGZ3dnI0M0JO?=
 =?utf-8?B?c1NBLzdDUjYxZlZ4T3piU0dYc0tZN1V5eHg2UERTVFdpbnFyQ0d2ZENLaHhD?=
 =?utf-8?B?ZjZQU3B4bVE5R2E3NkdIbHNXdVNWSC9PTkR2bC80K0RMczBxSk9yKzdRZXov?=
 =?utf-8?B?QS93RVVOVTJld0d2UFVQYThKNSt4ZFNMTDErQ3d2Ym5PWFptbUJjRnpjR2da?=
 =?utf-8?B?a3lXYzF5YjZhbkExNkhhVnNGOTZWb0VSbEFGTXBUYVJMOENCTzlyaHErcXow?=
 =?utf-8?B?dGxsa3UxS0VnL0haT3hkRDBCUDhaQjA3c1hrdU5Qd29PYi83NHVHTWh4Qkg2?=
 =?utf-8?B?UFdKcWNGR1p0dmRnU3JxcWxmRjZ6SWdFNnMwSGZ2Z25pUEhpYW5Vc01UeVht?=
 =?utf-8?B?d0pZU1plY2VPU21rVFYzK3d0VDJGYXFxOVNWNVd1cFd4K0U2d2lVTTNQL1B2?=
 =?utf-8?B?TmRkVDZpa0VPTVB2d3c3SFdGdG0vTE5xZkE2UUdHa1JaRnhHaXN0cVh1UUJa?=
 =?utf-8?B?d3NtamM0RlF6aDhTY21NOEZoWjllUnRkTFREelcwTmh6aVRWZVlpSlBHNUxt?=
 =?utf-8?B?ZkNKRDNScVdGSmJCNk4xbWQzK3phRklWK1FZQ0QzWXBzWldYaWlxekUwaHJC?=
 =?utf-8?B?ZU1lVXM5UndGczFSdGNYVHNRVUtiaWVsOGlhN09HL3B1SS9tYUUrdUc0VWhG?=
 =?utf-8?B?U3BoZXJtR2N5bmNjcm1leS9EWlFTQmFYSFNsMmdTZ1gzQTZ6NW4rREYzK1pn?=
 =?utf-8?B?REZIQ1Y2QjV4YTlyaFBkUitVVWZQMWZIdURvdFhPekVZMzkydHdrd0Q5ZjU3?=
 =?utf-8?B?ZStjOVBUeSsvNm9ON2llVkM5WU1rUk1oR04zYUtPYmtPZzAvbnN1Yy8xMnZh?=
 =?utf-8?B?N01GWFNUK2pmeHNNREZtaE5qZERCVlc1Q05pNENTQ0c0U284RWplWFExRjJR?=
 =?utf-8?B?M1ZaMFJVUWVkMkhUNU5TRmJWVlJBZ1RhUjlaRHh6RUpkUUNHdTZScFpWMGp0?=
 =?utf-8?B?Mk52VGxSNHFpVmRkVjJrWjJoSTdFUVRob2t5eHl5cWZkZXpHY0lIZGdXMkVV?=
 =?utf-8?B?WFlDeGpiaktoYlZRU2V6czdYTDBsN1d0ek5LTXRESW1FdEJaSEJ0M0J3a0hN?=
 =?utf-8?B?NUtKZVVmU1I2Z0N4WDJueEJzSlZEcDk5SUttZ0poYUppa3pndllKVVpsVXZ4?=
 =?utf-8?B?YlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ec5cc46-13db-4d58-65b3-08dd8c204fb9
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2025 22:00:56.2774 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b0xmwEVi9Y5v05C9e8BrNMDn+q54ojDxZbjQAkDQKAcOO//+eBYMnsgQ4YOkWiE2+dem2xTK3nzHJ7MxAFjhLv8oZLElyThR8tW3VXbURGM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7242
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



On 5/2/2025 3:39 PM, Julia Filipchuk wrote:
> For newer platforms (post DG2) hardware intentionally stalls on
> submisstion of concurrent submissions on RCS and CCS of different
> address spaces.  With this workaround GuC will never schedule such
> conlicting contexts; preventing detection of a stall as a hang.
>
> GuC specs recommend to enable this for all platforms starting from MTL
> supporting CCS.
>
> v2: Use existing macros for version check. (Jani)
> v3: Reword explanation for clarity. Remove unneeded parens. Remove
>      accidental comment change. (Daniele)
>
> Signed-off-by: Julia Filipchuk <julia.filipchuk@intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc.c | 7 ++++++-
>   1 file changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> index 9df80c325fc1..f360f020d8f1 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -313,8 +313,13 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
>   	 *
>   	 * The same WA bit is used for both and 22011391025 is applicable to
>   	 * all DG2.
> +	 *
> +	 * Platforms post DG2 prevent this issue in hardware by stalling
> +	 * submissions. With this flag GuC will schedule as to avoid such
> +	 * stalls.
>   	 */
> -	if (IS_DG2(gt->i915))
> +	if (IS_DG2(gt->i915) ||
> +	    (CCS_MASK(gt) && GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70)))
>   		flags |= GUC_WA_DUAL_QUEUE;
>   
>   	/* Wa_22011802037: graphics version 11/12 */

