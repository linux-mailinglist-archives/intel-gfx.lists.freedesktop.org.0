Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 844CD9C584F
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2024 13:52:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9A9910E5D9;
	Tue, 12 Nov 2024 12:52:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XR8rV6Oc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6750A10E5D7;
 Tue, 12 Nov 2024 12:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731415920; x=1762951920;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6h1lATwltjG+nRp9cCs9II++izbneX/JM6wbdUAb+lI=;
 b=XR8rV6Oc2QqW6GyrNjXYX7e0qLuot0T7JHS1w94Up2lCV+Xbiqvf3Jl6
 3MOthz11rPD+JmSHZVJQQNU+aE+KKJghgAtEFJnfHDBr6qkY9PcJ62Voj
 glfYCfXzEbDBUqNm6PDcMngCra4ppZtkVfWb8xmKec/5gNirpYJUCTT3a
 hFFZ/8c28oOrKGzVno1eNvoSZzn/BrwrIoWujhbG6EpF11cptuR9CxtHe
 z9GjVDnqlXACto5ToljIYJ/KHARmhuEa/WShOyQDFIvQ/wWh4u0JAaJ+N
 E0RfvgocpeuUAL+Ohv+7LouBPGJUOCalAIqoNiJpsGG7PqUcoqPWHeglp w==;
X-CSE-ConnectionGUID: bnnK9M5BT42NDWcRnHkmNA==
X-CSE-MsgGUID: 9CQgj/cpRa6xEtXZWgFfuA==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="31342431"
X-IronPort-AV: E=Sophos;i="6.12,148,1728975600"; d="scan'208";a="31342431"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 04:51:59 -0800
X-CSE-ConnectionGUID: fjcmoCbiTdG69Ova1+lTSw==
X-CSE-MsgGUID: j+/kd7M8T+SBWFapZ8Eh3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,148,1728975600"; d="scan'208";a="118383370"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Nov 2024 04:51:58 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 12 Nov 2024 04:51:58 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 12 Nov 2024 04:51:58 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 12 Nov 2024 04:51:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c4PgC14+qhMYmt0BbyMJs2F/yoVb6QzN2Fr/liDbGoGwrys+50GN4fiDA8oa0cwwKRfawBtCazj6ja/uF0XFTR9tNy97vAV+2JOfUkySmk/UT5n5c3SKrNbrbh7jL21k4XvNBIKOLBCrmmLArd3ZhZlMQlcXkvIga2jPofmGAIx2FDd8ChhFXmFKmFZvEfRUMx6f5PjEYyEfNMNNpyJkmJMpIR+N+AUDqJJtngtNqphZOESRnzmoHBLsirOJHsPslZHInmbuK8LlKB1AFHUEgvmVHnIi0MSJz5iBxzKseBRh60Wbw1o4xZqCv16DP6r9QMDDJ+D3LFAXgy+MaT3rGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=63uAmDR2hRbDC5YKzGlNm0PWee60QPu7X59cABXYaW0=;
 b=usUEYHX/WNTHtJm2ojnkE2Xroc47URkFw21BJyIrqGsk44RD48rlg5Wluox1w5CltXlDU3P3krlBX4ToJ8AWxKjzxiJ+fGwjtcBuhXxXm3bcWZ0VFR6UrKvGV1505HIRZLQZQ5xNYsNzadihx4IevyTsgc3t4w9jyuOiyQve8rrWu389yWvb7XpVzYlIo9LkZ0BHIEe22sHqp9AXn3o6FwL1XNwD9q/vFGEQlBPEAHVtxKUIzKhLjzxwkKjRa4bgIMkD0ubjMkvUFa0pbW5gOUgNpmE7RsKREpMEUciPteFUXXHU3hzqF2ppOJnWE3g/vIL76LVfvHl0NoyI/Au7wQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA1PR11MB5801.namprd11.prod.outlook.com (2603:10b6:806:23d::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.28; Tue, 12 Nov
 2024 12:51:56 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8158.013; Tue, 12 Nov 2024
 12:51:56 +0000
Message-ID: <e7b8de12-7745-4270-8cb6-89e1fd1ca25f@intel.com>
Date: Tue, 12 Nov 2024 18:21:49 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/23] drm/i915/vrr: Introduce new field for VRR mode
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ville.syrjala@linux.intel.com>,
 <mitulkumar.ajitkumar.golani@intel.com>
References: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
 <20241111091221.2992818-4-ankit.k.nautiyal@intel.com>
 <877c98d6w3.fsf@intel.com> <874j4cd6uo.fsf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <874j4cd6uo.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PNYP287CA0039.INDP287.PROD.OUTLOOK.COM
 (2603:1096:c01:23e::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA1PR11MB5801:EE_
X-MS-Office365-Filtering-Correlation-Id: c51cd5b7-fb31-4d28-c98a-08dd0318c9c9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TlFEU0F1NmFHRnh4d3NYY1FXc1Fac2NzelhFWXhkRjZsQU1aS2M4VFZTTzZz?=
 =?utf-8?B?MDYxKy8vTk1QZ2ZRc21QOUpWbHZtVjhMV1c1MWpZWFBFY0tja2lET2FMQnds?=
 =?utf-8?B?ZWtrdFJHZ2JBa2Zpd2hKdmVGZDJGakdHZFhJcDE3KzhrVGZNNUZpVDhjOXJt?=
 =?utf-8?B?dk1kbjRXalhYNUpOdFAwM3JGZzU1aUwxMUI2T09lUkxLM1cxMVA3eVhxUnlZ?=
 =?utf-8?B?a1lRN1I0TzF0cUFrRlRWK1JTTFA1ZHhzWVdSL2VZMTBsUUR2UXFDWWhwTmk5?=
 =?utf-8?B?bFdjZGRZaWV0Y05lMGV0M3l6SWZDQUwwWmlvRnNqVlVzcEQ5cWQvc3hqcncv?=
 =?utf-8?B?K25NdGpuVUptaG4wUXd2akJjT0NnaDRBNHhRbGlFK2sxYktXU29rSm43RktP?=
 =?utf-8?B?dXBhRFN2ZmFxTjRwZFV4NGNxSnVPWC96MG1tUUM1TXRYOXhBSytKeUYzWmR1?=
 =?utf-8?B?M000TE55OENIay93aHlCUnVnaDNZdW5jT0tOMUdkVjUxYzRBSm1SYnVEOHJC?=
 =?utf-8?B?cG1OUTNWblVVOC9qc1g3YmNPTG9VQVA2TEFlSjhtVGV4em1DMWtnREVYUVRN?=
 =?utf-8?B?Ulo4QXlZUEltcHhicGk1QitMOHpOdXZJY0dFb0Q1SVorUVdNcEFaUjcxd2o1?=
 =?utf-8?B?UDl4SGZsb2dISS8vYVM5UWQwQkFPVWdHVnNnY24xbmdRQTBtc0dFbGJ6d2Rr?=
 =?utf-8?B?eVoyRmVWdWNuNkxNc2p6c2pFckxUa1hBM3AwbTRkZGUxek9aY2ZqUTBRWEVU?=
 =?utf-8?B?ak02UnJ4SDFnY2tCM1BJOS9oTDJKRk1VOWFrUmRtT2pLRHV5ejFjS1Z3N29q?=
 =?utf-8?B?ampteEhUZHNmZUxzTFE1QnlTTDVhU0N0MyswVHk0ZlJlL2pjdENVOXNoUWJ3?=
 =?utf-8?B?QS85eHd4RDQ5bTErMDBxdmZPWTh5RFlMZlFROVNzclIxMnB5bE5ocFBLdHhH?=
 =?utf-8?B?SUFrYW81Smg4RjJLcS9oSGVITU9rd1FINDZVUnFJK08xcVlvTFdFd1pZWnVp?=
 =?utf-8?B?cGtkQXRvLzUrYS9hVmNpSGlCNWhNa1lSZlhwNjNmejhXeTM0VnlJV2V5TlFj?=
 =?utf-8?B?UE5PTHFxVmZZK25RMnNtQ3FXWXg2Mk1WVFVPc2RsZlAraUd1cFZ3aWx6L09u?=
 =?utf-8?B?RXg4MGJaVGM0UEVjNnZFdGc5WGlvQ1luZVp5NmtreElkL1l3dmlodmRGV0VW?=
 =?utf-8?B?Tm94YnRsVWJQKzdoTUxCeFgzVXo1Z2YvejB3K2I5WTV2T1VGRTFaVVNCaGNp?=
 =?utf-8?B?enlLQ1VkUG1taUt3cHoxd2R5L2p3dGR5RENiRWluR3NXRGt2dmN4blNrWDdy?=
 =?utf-8?B?SHhISmpkaXA4VXFHWERITUVTR0FKS2ZMcHVZYUZQc3VXTG9tdVp6UkNwWDF1?=
 =?utf-8?B?a01zSzlaTjJWUVJBRzdpRUlGZlFhbmgzUDlPaEdxTWs3SnRyc2lLRTF4MHp4?=
 =?utf-8?B?bDV2RDV2NzFhWDJ4ZldnZHpzVGpIaTZvaUVIZmFtbmljbGFBQWloV1VWdm9X?=
 =?utf-8?B?THptTU14MDJya01XYndCcGtEZ2dDd3ZZcXd3RDI3SUpyRTNKbUlSUmZmUGhU?=
 =?utf-8?B?YmZwandhNUp0bVRBT1cyRVo2aWVJYU5VMXpLWHpLdEpOcmsvQTV0akx3blpv?=
 =?utf-8?B?dFltZzZJdFR3Q1M3dS9DYUp5RUxyR3R6SCtRTzlsbkVnbzBXalhHdHAyaG4r?=
 =?utf-8?B?UytqZTB2M214MFhiaWRub3NGaFBZMVc4am9RdEFsVzVqKzJvQkZRKzlmZWFD?=
 =?utf-8?Q?gR6IEp5bGVl3GlEfLA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TENRQzU4blRsUzR1aVI1NWNtUHZmUWpvOFBmVEMvaDcyejRhRU9uYlk1d01n?=
 =?utf-8?B?SFh2Q2ltR05HbFF2bTAzYkJmdjUxOVYwbWJEL3pab1hNUTBqMFNiTkhlTHBM?=
 =?utf-8?B?VDE3ZFFBbjJIYmRwMjkxb3RscTVIOXFpbjY5aVJJeTJuOTUrc3Vlb0xnRVNW?=
 =?utf-8?B?WWc1ODZjZ01hVm8rUlVmVEtYQm5NWXJGQWxvUlVBUXhmMXVQL1M4aXo4TFR6?=
 =?utf-8?B?cXplelVpYTBCTzFSMWJBOEluNEJNQ3pjUklDaHRlTFBVSXFINDR1ejZMR080?=
 =?utf-8?B?ZUFXMkJTTTYxa0tqdEJJR081ckx3QmtPQVFsT0R4YmRnVFBxaGlwZ2tSZEkw?=
 =?utf-8?B?WUZ1cXhRd2lESEZ1Q3VPVWthNkxkcmhpRERsOWhWTHREeTlWck11aVhMdlk2?=
 =?utf-8?B?TTVoeC8rbUZldVVZMG9KUTBGVzlpU0FITWF2WCttZVJ0Vk9UdDEwYThYa2pz?=
 =?utf-8?B?MVE0a01wRWV6L1UvN0NhL2dzR2tJYnZEbVBZZVc1QVZLemZlbHNpUUVCd0hH?=
 =?utf-8?B?UnZLeGZxMm1IbldrYUhseWlxOFhYd0pJTU84NUlwNHUyc1BtWklkV284NHVm?=
 =?utf-8?B?WFp2YVdWU0VFVFcrZ3BHSlBBMUFoU3ZYNXdEK20yS1FDem9PS2hqTEh1Q2k0?=
 =?utf-8?B?aWFmVUkzblErTDgwQVQwTW02TUlTQnJ3bVBzK1F1REFmSFdtclVnVDFKeXhM?=
 =?utf-8?B?MDUwTU8vSXg5ZncrWTRVbUtmMHAyQmcxRVBXZFIzaUtYZGdLczhzeWg5V0pZ?=
 =?utf-8?B?VGZxaitTQUdrQnN2bVcreHpTbXFLTUk2cCtwOHYrbUorUGM3NkhJSHZQaTVC?=
 =?utf-8?B?dGkyRmN0SFZ3c2JHZk4wRVJlY0h3c1UrNmhyQTMxSUs1QllvZ05Ba3o5eGhv?=
 =?utf-8?B?cEhyWGd6ejZkVjJvaGlnMmZDbUQzSWVmQ1MrbG8xdkdqeS9mdU05bE1LYTBG?=
 =?utf-8?B?cHJndnF6MVN4NnN5VkpaYlFMUVlDRnVlN04yMU1lZTY4YVl0TnpwbElUOVZ0?=
 =?utf-8?B?TUxPbENoeTUyNmRQZExCdU05ZHNjempaVWVmZnJBM1JUVUszVlNFMnEvcUR0?=
 =?utf-8?B?cU9ydndOUm0zSG0rL0FSaEJVbVBKUTlkdE1naUNpZjVvWE5tQTNLamYzTFZK?=
 =?utf-8?B?MjVvVHFkUUVHU1krcTl2UFoyeEJwSDhHVi85b3FxUjVFOXM4aGFFYkxSRWVy?=
 =?utf-8?B?VXVxNjdqdnZkMVVMSWpvMzBJRUF3RzRkMDlibWFnM1JlaEVaVUQ1V3U2VDkv?=
 =?utf-8?B?dmM3REh4ZUdabkJrcThCYTFHRUVQNzJRZ2hpQ0ZHTm85V3FqOEpUdS9sZGhN?=
 =?utf-8?B?eXYzN0tBNlpaTXphZGI2OGhHWHJYdW10VEp6MzludXVtMGZzUlhaRmtFdzdw?=
 =?utf-8?B?eE1rRHhtRXhSQTFyVnF5YW9rMFMrZzF0OUh2Q0x4SlA3VUxFZTZqRzRGMzRS?=
 =?utf-8?B?dm1VR3Jxd1I4QmF3UzZaMFRGdU8rMXNGZnFFYmdUN0NaS0Mwd1p2b3Ryc1ZW?=
 =?utf-8?B?ZFRUUUhNaGFTa2txVjZsZEw2aDV1SUYwb2JqaGlXcXFscHBFUS9PWm8zZGY1?=
 =?utf-8?B?Mm1Od1VINGFDalNuT3hzdUN1eDhSYzA5dW1KMTFrV2tVQ3JrUnN3M1FxZTYx?=
 =?utf-8?B?ZFQ3eTlmVExmdGtaR0F6aHlGZnJNQnIrbHNXaG9sb3JUUFVtWFhlZFM0K2lL?=
 =?utf-8?B?bmt5NWJ2RFlMWU14OERZbmlaeFpVQzRoSXBUOVBOSEZvVWY3am9kL1dteHRr?=
 =?utf-8?B?YVk2VzhFR3hTT24veFFEOHJYOG5ud3dJWFE5OGlONXJFL3NHN2pnZDVqYnJv?=
 =?utf-8?B?VzRFcUl4Ym9aeGpxeW1ZcmVLYUlML25xL1p0a2hJeG1oTUVDTVd2UWc1UFhB?=
 =?utf-8?B?U0x2bWdWNjc1dFMrUzI5dkFvMVgxbE5sbmJFWlF2UXdrVkVtWmVQM040eFZ4?=
 =?utf-8?B?THcvQXJETkJXenFvNDMvVVB2TnVpWnpFVldIZDJ3NlpGUUtNSmoxK1BsNGNv?=
 =?utf-8?B?ak1xb0w5R2FvdldZUkZyMWF1cXppL1daVGNBamk5MHJwZWNGK3Ryb1pFVzZS?=
 =?utf-8?B?aDZxZUVyaTZldllRZmVrQjkveW5mSkZDa2IvSkp1SVRhS05aemFVYks2a3Y1?=
 =?utf-8?B?eE0xcWpkdFlodFhwWHU5SGtJaXZxM0x4TU9ZRGMzSnpvZ0xESHJVaGtOV3l1?=
 =?utf-8?B?RGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c51cd5b7-fb31-4d28-c98a-08dd0318c9c9
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Nov 2024 12:51:56.0463 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JkjqxCeWUdAPGHfLoN0CBqAfkaBgyb3DJQgODd7aev4hS39iIgpRPw8jVLhSKnQjF4Aj90Gce/zZixlEmirxRA48quMihyaWTPxSLn6MsEg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5801
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


On 11/12/2024 5:03 PM, Jani Nikula wrote:
> On Tue, 12 Nov 2024, Jani Nikula <jani.nikula@linux.intel.com> wrote:
>> On Mon, 11 Nov 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>>> VRR timing generator can be used in multiple modes: dynamic vrr, fixed
>>> refresh rate and content matched refresh rate (cmrr).
>>> Currently we support dynamic vrr mode and cmrr mode, so add a new member
>>> to track in which mode the VRR timing generator is used.
>>>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_display_types.h | 7 +++++++
>>>   1 file changed, 7 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>>> index d3a1aa7c919f..a1b67e76d91c 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>>> @@ -913,6 +913,12 @@ void intel_io_mmio_fw_write(void *ctx, i915_reg_t reg, u32 val);
>>>   
>>>   typedef void (*intel_io_reg_write)(void *ctx, i915_reg_t reg, u32 val);
>>>   
>>> +enum intel_vrrtg_mode {
>>> +	INTEL_VRRTG_MODE_NONE,
>> I couldn't quickly conclude whether this is in fact redundant with
>> tg_enable.
>>
>> Would it be possible to ditch this in favor of using mode != NONE?
> Hrmh, I meant s/this/tg_enable/.

You are right, tg_enable is indeed redundant now, and can be replaced 
with check for mode.


Thanks & Regards,

Ankit



>
>> BR,
>> Jani.
>>
>>
>>> +	INTEL_VRRTG_MODE_VRR,
>>> +	INTEL_VRRTG_MODE_CMRR,
>>> +};
>>> +
>>>   struct intel_crtc_state {
>>>   	/*
>>>   	 * uapi (drm) state. This is the software state shown to userspace.
>>> @@ -1286,6 +1292,7 @@ struct intel_crtc_state {
>>>   		u8 pipeline_full;
>>>   		u16 flipline, vmin, vmax, guardband;
>>>   		u32 vsync_end, vsync_start;
>>> +		enum intel_vrrtg_mode mode;
>>>   	} vrr;
>>>   
>>>   	/* Content Match Refresh Rate state */
