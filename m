Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E00B29947
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Aug 2025 08:02:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 457F010E1BD;
	Mon, 18 Aug 2025 06:02:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="COBA9yBg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADE6A10E1B7;
 Mon, 18 Aug 2025 06:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755496943; x=1787032943;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pfjgLx0PgjW4tu4wDZjjz5u1/NzhzOn9walgC4+ATLU=;
 b=COBA9yBg9lwUegsTEoQb/yIZ+Zt8pyLVEv36b8WR6ZN4QV6rpw7jnzE7
 aCV0EmeXbMKAvNYk2m2fhQab1l1kjU13aCxP+GdOQO1SRbGnQqtJQKXHq
 h4Y2nkiKwts8JomWoCanpAngwFpYrPcLYHcXvHOi7kMMRE82XdEiscI+j
 OxxYuE9wTTQhmZuiOUjMlMDlXkztpDrPoRzafP/9EIqUX9YQbs3RTBYDE
 yNRznaQb85uoOwnl/9YFWrv//43CtCQhu6687/zTdeYwMov/uUhZcZ+D0
 AzTPTaRne/zbXkk1OzWNxQcd734pcCw7Ay7pvxl32V34Pn/zz7J1eItrC g==;
X-CSE-ConnectionGUID: h9EEfl+hRcK62LuGQ5FN5A==
X-CSE-MsgGUID: DlVw09aJSq+WrY/1nOcruQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11524"; a="68804501"
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="68804501"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2025 23:02:22 -0700
X-CSE-ConnectionGUID: Tteim4uKR4u1NK7JiWP00w==
X-CSE-MsgGUID: ZfTpXDRPR+iComm8G8TB1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="167836997"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2025 23:02:22 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 17 Aug 2025 23:02:21 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Sun, 17 Aug 2025 23:02:21 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.69)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 17 Aug 2025 23:02:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZbX+h+Aw2RAao4GlRQDSBbRo0AzXi56QV2O88QTUNjsFxRwKwAa834RTtCV7MDsLxpxRwQE7918+wfCKtEs5XaK6zI9bgbKrAS435fnaOQ8qTcL54p4qvUhMyc/SZpWX+W2B5Kp8zrMD7mlAuHH98DLvFWPLr37PAHPJ30KZrMgZhFTb39R+AQ//63NiZswaXE4Vh+1jk4Nok7kKHQfk5W7gSjouT4/9qZxIOoyHD07DVUm+IYun6mNoK+Ff0EPP18/s6eL9UXBSx0os+6ujyaFSBFh/2SQdLaOloAT8yjfL2eMMnJIBGpzbv+UEprz/kNAponPUWVe4wzdh0ZRFLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+K4kstYmfZB4JLgnEoOuOczgjoQ9WoYzx3SI06cb/GQ=;
 b=wW3QMhilTWRVHln5L53+Ad5hhlfYzNXmX0qFsKjQKEtsp1D1N672gR743/aapPjogb02hvBaXyXcnSz1+hULE/54jRZhmE8sb7HYbUrcni316IhTEj8AIcIejyywbQBDuO+nC3Ecm1h71j/GbvZtgmhgoSM6caYjyLNP/rQ+4qbpX1DnLDzX6ovL87JXY87GZ5Dlfv1haE67uxAdIVQ6HP+wbp0T6lm217CyG1VW4oL3HZX4mnlj3/Bfh5H6jXyH1YoToWuYEdBFpbPnvdT7dBkur0I+wE40EIHjcIOwum8pz/HgDbjsfVBvfcqwWpm/Ty9zGh17KzBOB0w9Z1Wr+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA0PR11MB8301.namprd11.prod.outlook.com (2603:10b6:208:48d::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.23; Mon, 18 Aug
 2025 06:02:19 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8989.018; Mon, 18 Aug 2025
 06:02:19 +0000
Message-ID: <048460fd-1865-4ba4-a95b-f4c44df8d66b@intel.com>
Date: Mon, 18 Aug 2025 11:32:13 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/12] drm/i915/display: Add guardband check for feature
 latencies
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250807111548.1490624-1-ankit.k.nautiyal@intel.com>
 <20250807111548.1490624-9-ankit.k.nautiyal@intel.com>
 <58f184781929da07c8968970e1bc92f141223410@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <58f184781929da07c8968970e1bc92f141223410@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0153.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::23) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA0PR11MB8301:EE_
X-MS-Office365-Filtering-Correlation-Id: e47ee165-9fd4-4757-8088-08ddde1cca7d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TE1mUG0wbC9Sb2dicFpUY2tQd2gwRFVaNGV1YXpZTFlNWVdhdUxhaWV3V005?=
 =?utf-8?B?MFQvSlR2STVuNlh5Q0RvZHNXWloyRDg4ZHlSVGVmRHAvblRyNlRmQzNnRWl0?=
 =?utf-8?B?aWEvWXhiV0pCZG5obHNQNUI1VjRCQmtCa21KVHk3TVdsbUsyTmxRNWJlLzdV?=
 =?utf-8?B?OFNGbUFjZGhybE5JVnRqNDZYRGRjSGF3NG1Lekx0anRKRWFRVHFYYk5RU24z?=
 =?utf-8?B?bXB5VnE5em11UW1RZjkyWXNxZmFCWFBaTGhQU0J4ZWQ1VGhqa1htSkxBQmwy?=
 =?utf-8?B?bGQ0L0dSYnIyV3M2V3ZrSDUxV2NBVW1XK0RyajZpV0JieWVYanNpUXE4SWxG?=
 =?utf-8?B?cER2OGsvUHViK2ZWcTFpQml5S2c2ZG9oSExKcTAybjJFOHYwSGJ5Y0ZLdU9Q?=
 =?utf-8?B?VzNOOHduNGtQMU94M0hMTHdmQ0U1L2dwaElNRlJkSkJKdFJVYjVEYm9sTzIy?=
 =?utf-8?B?MUk1ZTNmZGF5ZGhHZkxTbDJHTHF0Rks3VSszeHhmdDNud3ZLTlZNbXlwMGJv?=
 =?utf-8?B?L1NVTUt1c3c4UHQ0bi9pYU1rZ0FjVlJyVU1tYlZtOG9iejhUTXFKc2E5SUht?=
 =?utf-8?B?OFo1SFVwWHZrQTFvM0VmRGpwMS9kYXkxOTd6cjhRVlR3WXQ3MmdPdGN3U21P?=
 =?utf-8?B?YUhIdXR0NUhJaWdndndkQm0zQ1gzVzFuZ2hzSlkwSU1leTdOY1NUR1dHZXRL?=
 =?utf-8?B?Wk5vay8xUktpSXM1bVp2bDQzYm83V0Z5VTIxKy8reWd4d055NWZyTnoxZnBp?=
 =?utf-8?B?QnV1MXkzdmQ5TEErY0RMZEU2aU5GeVF0a1hRRmdFWDFjR1oxQzRNTFhSYmVk?=
 =?utf-8?B?Z2RhcjJZVWxnSzhRR0VuZVVJNnYreHdzZzZSTTIxK1YxY0ZNd3JQaUUzaGgr?=
 =?utf-8?B?MzZyMkZWOXJsZW1JcGoxNzFDWjFQWUlNdUpRWWtaejIyMmRNVFBNaTZkZDdW?=
 =?utf-8?B?L0tmdFdteDIrVnNZSCtkdXhCRnZkd0hsOURNbFFHWnM2TDZBU0VvQWQ3MkIz?=
 =?utf-8?B?NitYbkZkeFFxWHQyZUR3c3dwMzA5c0RWQ2lXSDRiOTRvOTlQa0c1WFZiNnpo?=
 =?utf-8?B?Mk5WMHh5dk51cm1OMm1HVUVNNDJCU3pQamZ2MXF0dnpsN1pyQ3V2ZGZDTkRn?=
 =?utf-8?B?eXQ0OE9CWnQ3a3g0N1FZbTJXREQ0Zm1rdEFIVFZnUkx1SC9uRVFsVkFpOVQ4?=
 =?utf-8?B?b1Z6QjYwMG5uTndScFlqV3ZVMmVjckVleUt1TnpkOXQxVHBFZ2tDd1gwSStN?=
 =?utf-8?B?c041WWJ5eU1wb2VMR3lpSUFCU1E3RjR3WXF5Z0NyTjlLZzJIN29keC9DV1U2?=
 =?utf-8?B?ZTJkZzFSMFF3dXB6TVFNRzdlamFYU01PTmlxdlR5aWcrZGkvb1hIUzN4eEtv?=
 =?utf-8?B?MGR4Q1BWUDNuZmtvL01aRmxRQmFIaEtVTEhtQ1R1Q1crcnV4TFZGb1hrU0pQ?=
 =?utf-8?B?eU1henZWTXh1VjRLaDBZcTVPZm45UWg3ZHJGSGZHZ01xNWpZZXYwWUs5aFIw?=
 =?utf-8?B?MTlqaDMrL0NidllWekd3T2p5aHdIblcxY2dSQTM5V1VCbUtsUEVhT2NiekE5?=
 =?utf-8?B?OXpHaW5FWmtWNzNpcjlzbkRUajVHRGNTRmZlSU9VeUYzTGhpcTNTd3BxMytC?=
 =?utf-8?B?eHZhRDNmdUtEeHoyd0ZOSUk1bks2RG5VN2FKVnNOVHJNZDJLYmpSOFkwazRw?=
 =?utf-8?B?NU8yZVNyQkZNalFHRkV5ZnJLZ2t5cVptaExMVVg1S0VzSXhTN3pJamFpUmFv?=
 =?utf-8?B?TWNNUDBQeUoyb21vVExMUGM5Umo4Wmp4SmZ1UHI0bTNFVW5HRHNIYXMvT1pG?=
 =?utf-8?B?aGl3cytyNTFqVzJ3dmhkSjd5QTBDZnZJeVlJZlRCWFgwcjhmbEJkNE5CR2VK?=
 =?utf-8?B?L1JjSk1qcHQyMVE2V2FwenRhOGFmbGRLVW55ak1udFMrTE5jT3VQVTUzN3Vt?=
 =?utf-8?Q?5EStyD3qbpU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VW1CZGpqOXRJbC9ha3VhSkd1WWovTFFCSlN1OXhTWmVpNXhISE1rbWZTZENo?=
 =?utf-8?B?TnJhcUllZ20xYlJqeXdZZDB1YnBQVUlxdFNTNmlSK0w4c3VRdFNxTytrcjJw?=
 =?utf-8?B?VjllQUVKS1N2WGNaS3A0TUYyaFNmRTk4bmxFTVd5RzhBZnNjQ2JjVFZpOWdi?=
 =?utf-8?B?elZtVFhiT1lRNjR2OUxZSDlUUnVwLzBZSDhNV0N4SldnR25ZaEI4eC91Uk9R?=
 =?utf-8?B?eEdvQlFmc0RaZlZiUk1DTzRpM0xBMDZKbFU1ZFYvMis2YVhNNkJTZkxOVGVN?=
 =?utf-8?B?akVrZWdSWDkwLytKQ3A0aUNhOTBpTUxkY1lHQTU5SEQyNkJHdHNycHdyemcy?=
 =?utf-8?B?eUF3UWMzNWRrYkQ3K1BOcTdOdDBVc3Fzajdqb2FhT3dTZHZLcm5scjZYSXpa?=
 =?utf-8?B?OEhsYzdqMUQ1YjFSMi9uL3VGdHVGeG8zcHMzVEkyR1o0V2xMdUhCLzBIaUp1?=
 =?utf-8?B?cUdNK21nMEVKWGptT3p5Y09jYzl1T1VDc1l3dFNvaWFLSFBoK0F4OHNiV1kw?=
 =?utf-8?B?d0tuWUZtOElVZ3RQdzdnS1duRjNVM1FiQmdDOTlkQ1Uvd2FYNkZobG5RRTFT?=
 =?utf-8?B?Qm9BTW9Qb1BNZ0hibkNhYXVUa3l2dFk2bzVjMzNtdXlwMnVlWlZSYmNpM095?=
 =?utf-8?B?NXlNZ0dqYnBJSWtvWUxkUjNnNkxiakpsdzZ6dnpoK01iYnU5K0d0OGRJYUY5?=
 =?utf-8?B?SUlheHM3Qi92aHRwK2I0WkxCQXBkNS9ha1NlSHB6YjN5QWpOOXZkV056bUta?=
 =?utf-8?B?U0hwZWJvWDBOeVB3enhNU1piZTFVdzlrNHVydlBQVkh3eVdMR1VyaVhpNElo?=
 =?utf-8?B?OUg5YmhDaVZ2YWVORjlJeTZGYmpNTERJcC9rc2JIbW1STjFGMkpGbjVFdmF0?=
 =?utf-8?B?NWlwWDgrYjR5YUJBRUZNVm16eWlpcCtFTTkra0ZpcllISmJDQnhOTC9BRU5I?=
 =?utf-8?B?SzlNNGNNM2lXK0JtbVpWckhsMHF0N01DU29qTmloMko4R0UxMjcwb3VrNXR3?=
 =?utf-8?B?QlQ4RkVTdE9ZeC9uaWJPdXJITlVMNG5hQ1RCeTI4dmdhY0w3WnF5U3lBUDFk?=
 =?utf-8?B?MUorNGRBNWxmeW5Uci85bU9IaG1WUnBIUEo4eWRsMzc3OERqNHZ5NCtnNnNL?=
 =?utf-8?B?MnlkUE14VFQ3Sjd4K2ZKVUZRNzBYdkxQdFZhbjZqc2ZtWkhJSzNDb0NuTjF0?=
 =?utf-8?B?ZW9RTGhrYmNnKzlFWkN3dlJUU2MrMCtCRkdWczZhclFCRWZtdTVLWkF2cm9C?=
 =?utf-8?B?bjBWUEI2ODhHMmNTNmMybU05M1JyUUExTU9FQnprM0p2M0VxNmtSOUhka1hp?=
 =?utf-8?B?ckVFbzlDTHJWWU5xZVVKYStlaEI1dUtkMTRyRk5nV3dHaW1QU1hVUGIxSXhS?=
 =?utf-8?B?UnkzdEphK3VEcDQ2Vm4xTTNZdnBEWmY0cXJ2emdtMTRmV3RIQnl2ajBybENL?=
 =?utf-8?B?eVRQS3VFaytybjBRY0Z5ZjFHNGlNMFRkemNzOExDNHpHMlRyU3FEVE45cEQ5?=
 =?utf-8?B?cTAyb3VQWEsveFJEZVNzZWV3TitxMjA2dmxiTTgxakhxcXlBVng0SXRiVmU0?=
 =?utf-8?B?UkpjeFNNYmM0eDVaTXcwU0FPblJ6Z2wxK0JMbDZ1SkNnSTJMSk9ma3NpQW5j?=
 =?utf-8?B?bkNsN24xWHZrOUlnMUFsNG9sazRXOTZ5SGsrRG5kSnVyS0ljNy9GRXUySEhC?=
 =?utf-8?B?MzljMWJVNEpGTzQ2RWp1MTlROG8wa0plR0kwVkNkOTZYRzlCZVRraVVOU3Bu?=
 =?utf-8?B?ZTg5SjdUWTBtK3haUlBFN3lTV2RJK1NkZ0dJOThnSVdKMlZXRDZZUVFac1Vh?=
 =?utf-8?B?ajdBOFNKbGdEL0J0Qi94dit0ODhBMUdnSElGeVU0czdySXBET1puZ0dWM1kz?=
 =?utf-8?B?aVV3bmowVTZ5dmtKcGtXWkM0NFRORHRvcTRDZUZUeWpWQkJhV1NKWWt5ZERw?=
 =?utf-8?B?TmdYZWZPRi9YWEo0VjZZUUJhekdQa2czOElSRTFQTTIzN2dab2VGcHNhMU5i?=
 =?utf-8?B?REgyZmZNbXRBeVJMQWRpNjRZcEY5ZjVGVWxuemZkRTVKU1FFbFA3OUczdjMr?=
 =?utf-8?B?RjJ6MTAyUlFjcWtNVzJycFBPcXdLTVlIdllwbytRVmdFeUZUSGpIU2g5eWZF?=
 =?utf-8?B?VThwWklObFEvRXJhMk53a2dEUmcwNDBxcjhZemNNd3p5UklQZnhmK0lSOUZu?=
 =?utf-8?B?UXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e47ee165-9fd4-4757-8088-08ddde1cca7d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2025 06:02:19.7920 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CnLQIXtnt4BIIp5Pw92Xus7R1j5kC0G1hqzuJn3vZMs7kScYHzYFHPi5lyuVDYkEfPmlk8OBu5DA92wv+kn/zLjV2BKZLONHe5yIJnYa304=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8301
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


On 8/11/2025 8:44 PM, Jani Nikula wrote:
> On Thu, 07 Aug 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> Add a check during atomic crtc check phase to ensure the programmed VRR
>> guardband is sufficient to cover latencies introduced by enabled features
>> such as DSC, PSR/PR, scalers, and DP SDPs.
>>
>> Currently, the guardband is programmed to match the vblank length, so
>> existing checks in skl_is_vblank_too_short() are valid. However, upcoming
>> changes will optimize the guardband independently of vblank, making those
>> checks incorrect.
>>
>> Introduce an explicit guardband check to prepare for future updates
>> that will remove checking against the vblank length and later program an
>> optimized guardband.
>>
>> v2: Use new helper for PSR2/Panel Replay latency.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c | 138 +++++++++++++++++++
>>   drivers/gpu/drm/i915/display/skl_watermark.c |   2 +-
>>   drivers/gpu/drm/i915/display/skl_watermark.h |   1 +
>>   3 files changed, 140 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index af4d54672d0d..c542a3110051 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -4227,6 +4227,138 @@ static int hsw_compute_linetime_wm(struct intel_atomic_state *state,
>>   	return 0;
>>   }
>>   
>> +static int
>> +cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state)
>> +{
>> +	struct intel_display *display = to_intel_display(crtc_state);
>> +	struct intel_atomic_state *state =
>> +		to_intel_atomic_state(crtc_state->uapi.state);
>> +	const struct intel_cdclk_state *cdclk_state;
>> +
>> +	cdclk_state = intel_atomic_get_cdclk_state(state);
>> +	if (IS_ERR(cdclk_state)) {
>> +		drm_WARN_ON(display->drm, PTR_ERR(cdclk_state));
>> +		return 1;
>> +	}
>> +
>> +	return min(1, DIV_ROUND_UP(crtc_state->pixel_rate,
>> +				   2 * intel_cdclk_logical(cdclk_state)));
>> +}
>> +
>> +static int
>> +dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
>> +{
>> +	const struct intel_crtc_scaler_state *scaler_state = &crtc_state->scaler_state;
>> +	int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> +	int num_scaler_users = hweight32(scaler_state->scaler_users);
>> +	u64 hscale_k[ARRAY_SIZE(scaler_state->scalers)];
>> +	u64 vscale_k[ARRAY_SIZE(scaler_state->scalers)];
>> +	u32 dsc_prefill_latency = 0;
>> +
>> +	if (!crtc_state->dsc.compression_enable ||
>> +	    !num_scaler_users ||
>> +	    num_scaler_users > crtc->num_scalers ||
>> +	    num_scaler_users > ARRAY_SIZE(scaler_state->scalers))
>> +		return dsc_prefill_latency;
>> +
>> +	for (int i = 0; i < num_scaler_users; i++) {
>> +		hscale_k[i] = max(1000, mul_u32_u32(scaler_state->scalers[i].hscale, 1000) >> 16);
>> +		vscale_k[i] = max(1000, mul_u32_u32(scaler_state->scalers[i].vscale, 1000) >> 16);
>> +	}
>> +
>> +	dsc_prefill_latency =
>> +		intel_display_dsc_prefill_latency(num_scaler_users, hscale_k, vscale_k,
>> +						  chroma_downscaling_factor,
>> +						  cdclk_prefill_adjustment(crtc_state),
>> +						  linetime);
>> +
>> +	return dsc_prefill_latency;
>> +}
>> +
>> +static int
>> +scaler_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
>> +{
>> +	const struct intel_crtc_scaler_state *scaler_state = &crtc_state->scaler_state;
>> +	int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
>> +	int num_scaler_users = hweight32(scaler_state->scaler_users);
>> +	u64 hscale_k = 1000, vscale_k = 1000;
>> +	int scaler_prefill_latency = 0;
>> +
>> +	if (!num_scaler_users)
>> +		return scaler_prefill_latency;
>> +
>> +	if (num_scaler_users > 1) {
>> +		hscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].hscale, 1000) >> 16);
>> +		vscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].vscale, 1000) >> 16);
>> +	}
>> +
>> +	scaler_prefill_latency =
>> +		intel_display_scaler_prefill_latency(num_scaler_users, hscale_k, vscale_k,
>> +						     chroma_downscaling_factor,
>> +						     cdclk_prefill_adjustment(crtc_state),
>> +						     linetime);
>> +
>> +	return scaler_prefill_latency;
>> +}
>> +
>> +static int intel_crtc_check_guardband(struct intel_crtc_state *crtc_state)
> Please avoid "check" naming like this. In general, it's a poor verb to
> use, because what it does is ambiguous from the name. Is it an
> assertion, does it return a value, what does it do?
>
> However, as a special case, if a function gets called form the atomic
> check path (which I also think is ill-named, but what can you do), with
> the same parameters and conventions, then name it accordingly.
>
> Thus intel_crtc_guardband_atomic_check().


Got it. Will make the suggested change in next version.

Regards,

Ankit

>
> BR,
> Jani.
>
>
>
>
>> +{
>> +	struct intel_display *display = to_intel_display(crtc_state);
>> +	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>> +	int dsc_prefill_time = 0;
>> +	int scaler_prefill_time;
>> +	int wm0_prefill_time;
>> +	int pkgc_max_latency;
>> +	int psr2_pr_latency;
>> +	int min_guardband;
>> +	int guardband_us;
>> +	int sagv_latency;
>> +	int linetime_us;
>> +	int sdp_latency;
>> +	int pm_delay;
>> +
>> +	if (!crtc_state->vrr.enable && !intel_vrr_always_use_vrr_tg(display))
>> +		return 0;
>> +
>> +	if (!adjusted_mode->crtc_clock)
>> +		return 0;
>> +
>> +	linetime_us = DIV_ROUND_UP(adjusted_mode->crtc_htotal * 1000,
>> +				   adjusted_mode->crtc_clock);
>> +
>> +	pkgc_max_latency = skl_watermark_max_latency(display, 1);
>> +	sagv_latency = display->sagv.block_time_us;
>> +
>> +	wm0_prefill_time = skl_max_wm0_lines(crtc_state) * linetime_us + 20;
>> +
>> +	scaler_prefill_time = scaler_prefill_latency(crtc_state, linetime_us);
>> +
>> +	if (crtc_state->dsc.compression_enable)
>> +		dsc_prefill_time = dsc_prefill_latency(crtc_state, linetime_us);
>> +
>> +	pm_delay = crtc_state->framestart_delay +
>> +		   max(sagv_latency, pkgc_max_latency) +
>> +		   wm0_prefill_time +
>> +		   scaler_prefill_time +
>> +		   dsc_prefill_time;
>> +
>> +	psr2_pr_latency = intel_alpm_compute_max_link_wake_latency(crtc_state, false);
>> +	sdp_latency = intel_dp_compute_sdp_latency(crtc_state, false);
>> +
>> +	guardband_us = max(sdp_latency, psr2_pr_latency);
>> +	guardband_us = max(guardband_us, pm_delay);
>> +	min_guardband = DIV_ROUND_UP(guardband_us, linetime_us);
>> +
>> +	if (crtc_state->vrr.guardband < min_guardband) {
>> +		drm_dbg_kms(display->drm, "vrr.guardband %d < min guardband %d\n",
>> +			    crtc_state->vrr.guardband, min_guardband);
>> +		return -EINVAL;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>>   static int intel_crtc_atomic_check(struct intel_atomic_state *state,
>>   				   struct intel_crtc *crtc)
>>   {
>> @@ -4289,6 +4421,12 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
>>   	if (ret)
>>   		return ret;
>>   
>> +	if (HAS_VRR(display) && intel_vrr_possible(crtc_state)) {
>> +		ret = intel_crtc_check_guardband(crtc_state);
>> +		if (ret)
>> +			return ret;
>> +	}
>> +
>>   	return 0;
>>   }
>>   
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
>> index 4474f987de06..5ffa76cb1633 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>> @@ -2249,7 +2249,7 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
>>   		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
>>   }
>>   
>> -static int skl_max_wm0_lines(const struct intel_crtc_state *crtc_state)
>> +int skl_max_wm0_lines(const struct intel_crtc_state *crtc_state)
>>   {
>>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>   	enum plane_id plane_id;
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
>> index 62790816f030..8706c2010ebe 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark.h
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.h
>> @@ -78,6 +78,7 @@ void intel_dbuf_mbus_post_ddb_update(struct intel_atomic_state *state);
>>   void intel_program_dpkgc_latency(struct intel_atomic_state *state);
>>   
>>   bool intel_dbuf_pmdemand_needs_update(struct intel_atomic_state *state);
>> +int skl_max_wm0_lines(const struct intel_crtc_state *crtc_state);
>>   
>>   #endif /* __SKL_WATERMARK_H__ */
