Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27EB0AA0157
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Apr 2025 06:18:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60F9A10E23F;
	Tue, 29 Apr 2025 04:18:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HfUMtn4B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 444C210E148;
 Tue, 29 Apr 2025 04:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745900296; x=1777436296;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=53NtMfbWn0vmrP23Qw5gmUQc6WNNKVZRY4WAs/oNtUw=;
 b=HfUMtn4BlyXHXGQUOJb4azBbalGL8xnUHAHzv1lhW4RG2jETL0+7PuDj
 AEuH/yX0KC/uk+Q/YveRb245DLg88VkitSomufZzHi18ZCXJw1SBF3HNd
 j/HLVK81Q1R12DN+aHagHaSMHa7DVOQgR6ESC5rdPbCKv95DcS2ZWD8qB
 IoIvZXp/SAPYyQ55lcgxplZ2sQa8D65Xb7T8zm1mekrlaTx7wtXyDuvTr
 oowWb0rlYLk3wT5Y2bzmSyOXA9UStOZNL57bhJtBxeD3Wm3cYzGR2E8pu
 b01NWqt/ylGrtJy4sOAbMWXFV5eaETTSGnAHuJryRyjhe0kbGJDpoVRoi w==;
X-CSE-ConnectionGUID: 0O0lcV7aQJSg4b11t6yKfA==
X-CSE-MsgGUID: skcx+0roTkS3I2aM2SIktw==
X-IronPort-AV: E=McAfee;i="6700,10204,11417"; a="47396158"
X-IronPort-AV: E=Sophos;i="6.15,248,1739865600"; d="scan'208";a="47396158"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 21:18:13 -0700
X-CSE-ConnectionGUID: kP/gbIyIRGW4sGsBaa/O1Q==
X-CSE-MsgGUID: LdjSUcIfTfGsRSCQw7mbCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,248,1739865600"; d="scan'208";a="164662616"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 21:18:14 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 28 Apr 2025 21:18:12 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 28 Apr 2025 21:18:12 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 28 Apr 2025 21:18:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dM+n/hFf2ntH3+JTnJPKleXMJokilF6zhdmx+KDFYxuF3d7s/uURVWfiJVH+SHqomM1IbCWGow4wPjPZnMUksCfZFuYQI0yVE/Mw9AXlTpcIygVNvDpeaXFbjZuAIWWRrE57yjTgPjR1RIJVeHaJZeZmyiFoj3D3g4HoLN2/YnmZq2iUgrXLgPJaTWjvgtyxIYK57kI2J62WXu4xBlHAnHRwgeYnCE/jckl8kL7Lbbri87HCBZOQAH072XVbXYkIM4ZkSXTzVUbm40qDnEYEUDBj69ErGQHY0HCXSs1wFqebII4mHKQGwVFVqrrUILoH1HMPNJMdif7nW6ce0gleOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RAWS0G43tDfBWrNwXhJOC/n2OKyNPxpnhfVQ+tgA2fc=;
 b=N/rhy90ZsdxfSWdvjcdK1N72glAfGdld2TEs49a/gsvyOyc1A/yrxucRqYOWGNRGXyxq3AphO4CEXTOOEuj3INiBO72kREXIHqKd4CnpiFTMBrbYXGP/fh4XT7+9lUD+19Zd+rzWVp5SmdZt2A7LuH4YkCKGm3VYXxEk23eTqM0QBJpFqLzxd8axJOT/vT3zBL1ps6iRWsL41c+u1+cdz9aTuUT7x5RqNWcmXOIgYPybQ+wXwVl/g2M6ttgpaqdXW3/DiHJ1IRQghyQjxz06U6HxxyzJNBSpi5J7kP0QXaWc+PaEuZD2+naSLRSppd9153Kd0JlpmsdspR7KCpvNow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY5PR11MB6437.namprd11.prod.outlook.com (2603:10b6:930:36::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.31; Tue, 29 Apr
 2025 04:17:56 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8678.033; Tue, 29 Apr 2025
 04:17:56 +0000
Message-ID: <5309a68b-01e3-4df1-a916-c4b656637485@intel.com>
Date: Tue, 29 Apr 2025 09:47:49 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 13/15] drm/i915/vrr: Restructure VRR enablement bit
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@intel.com>
References: <20250428062058.2811655-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250428062058.2811655-14-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250428062058.2811655-14-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0151.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::21) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY5PR11MB6437:EE_
X-MS-Office365-Filtering-Correlation-Id: 326f9dbb-b044-4b48-43a9-08dd86d4d16f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RnZLUFhTYXNXL1lObjZkS09oUXFPWDB6bG1ObFpOYkhyWTl6bWN5S3V3cDMr?=
 =?utf-8?B?UnNrQUhWOVgyT3p3VVhkUUo5NGIvR096K0MrRnFxM01jV3ZqRFphd0ZVY3ZI?=
 =?utf-8?B?U0ZCdktGa29zaWN6Z3ZKcml4TWs2VVUreTZYSk1JMGhpQzVFWW5VbjZwSStw?=
 =?utf-8?B?WWc5MzFyN0dQeVg5SHV3RWNhNUo2dVBVOFhCa2hkUGRhUSsyK29uTytKVm4y?=
 =?utf-8?B?cGxWN0t3VzRhVzBPTFZxdkxGNk5XNTQvTFE0d3BtWlU2RVZHNE8yN204ZEFl?=
 =?utf-8?B?OTJqdWJYSXFkTzFEY1I5Vmd1cytETE9sekl6TVNYMHFZNHVHc1VrelVGZ1Vy?=
 =?utf-8?B?S2dLNDhZVWcwMWQzTm96MFQreU91R3lDYStaMFdNVHFBVUpibDY4Y3VyWHQx?=
 =?utf-8?B?ZGVqNk5GRWdPK09LK3FyR0R5aGdpa2dRd3F5U2FURTJJQTg3cm93MFgxdFVZ?=
 =?utf-8?B?UG94RTArK09kUG41TU9qVWlkR2ZwL1Q4NXRoV0NwTWh6czFienlWTWhBVUtw?=
 =?utf-8?B?cmZnaTdiNUcxK3FJWHl6WVJhUFFTaW9zOHk5enZVamZpTyttZEJYTVRRckV1?=
 =?utf-8?B?Z1JyNGdIUWM5TGNzUjdIblNuV3RXd2Y5QkF1aU9uRDE2Q3JOVG5vdU5LU2tI?=
 =?utf-8?B?a0hjZ1JYU3lYekFlRzZHb1Q2bkVIS2phT3pCZE5DK2Fyc1FOT1B4ZlBZcUxv?=
 =?utf-8?B?c1I3VFdqRHRUeW5ZTXgzNlZ1RG15L0h5QW9ucVZIQXFERnhqWVJzRm9zM1Jp?=
 =?utf-8?B?bVhnVTI5VDYzbmZBczNpV2hDMmxCOUxqL0hERkNRSGUxOVArNFVDdTd6c2ti?=
 =?utf-8?B?c2dtZDlLaWJySzliSlR2ZlBwaklpbUFDTzRFT1I0ZTl0NUluUEVkOHVlNHRP?=
 =?utf-8?B?MzF4elVnL3g1eW5vbE8vWEoxZUdpbFFIT09WZDdybFVGTDJpQ0VIaURIQmxk?=
 =?utf-8?B?S2l2SExZWWttZWh2L3huTTM1OGJ6WmkyNjV2TkE3L1Z5VkUxanlQQWdGLzFS?=
 =?utf-8?B?UzJTa0ZwaTA3UlFPUEo5dzhsTC9oRzJiN3dDOUZZV0ZPUUdELzBkeUVLcGxm?=
 =?utf-8?B?MXlPU0g5RVB2RHdLbVlnWEN0SDZ6U01ZUmpoRWpWcFdRdE9vOGtwYVpOcjZE?=
 =?utf-8?B?TlNSWG82bnpSSmdVUjM0eS90bS9Lbnp6Z1VyZ3pwZ2cxOFBQenZEVjFUOTFQ?=
 =?utf-8?B?MmFZczBnL0pPekEyMEh6V1JDSTJndjF5cEQ3dGYxUHgyMnB2bE5MUnB4eVFJ?=
 =?utf-8?B?dHFHSTVQTk5oZGZoYkRNdDJLQ1J6bkVNVlZNYnhmTTVuOVplallwcXNxenoy?=
 =?utf-8?B?YyszbmxOaEthbS9ldjQxRm13dmpRejFiTmI5WUVxTzFMSEkzWEk3cXhXOGNj?=
 =?utf-8?B?TVRhd2U5VTVlVUlVZDBzakhCWE0xV2FXMjQ4OHpqWUtPSE9RUHFYTHZuY2JT?=
 =?utf-8?B?SUV1MitPUUVyODkyREdXelhPMVh2N29XKzBkcnhXTzk0MWNmUDRaRGNwa0Iz?=
 =?utf-8?B?Y2Jjc2dVMlJvSHZ6S3lma1NwUWNwYW40T1BWMkYvU1RMaVBianZjMU00TUdB?=
 =?utf-8?B?THpiekNGWkI1TG9KbkxCTzM0K1hvaDRlaFdFYStvSG51bG9xZVB6RjhFaENV?=
 =?utf-8?B?a05iTk1CU0FvODgvS3pFUGw3SW94K25ZRGJOaWM5SXlOOGRqWS85c0tydzhG?=
 =?utf-8?B?M21QRzRaaXJQdFVQTmlVOG85WDBPK3c0YUdQQldVZVcybFE4UDB6dTErQ3A2?=
 =?utf-8?B?T2ZxNTlRSnM2SlgvUG5yS3ljbVZyc0ZGLzdiczdqMmdTSmdoRGlSbjBTV1V2?=
 =?utf-8?B?K3o0ZWNkTzY1Q1NaQ2RZb1pYZzJUdTV5Si9KUXZUYjBENEoxeXQvSFJpandt?=
 =?utf-8?B?UkdPUnZqWDJsaFFmbSt6enhYVjZ2eFJtUVlLMjlkN29xWGc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NlZQRlBsdkd6T2VZMnhkanpFQ2ltMHpsbm1hUjJ2WmVGa2gyYzIzUVUyOEM5?=
 =?utf-8?B?b0VJbEdFUVNpUDBMSTQvQy9MdGJRQmhQSGt0UXMzTDBBSWlCSzdBQVE5Z0Nq?=
 =?utf-8?B?QWFhU1Nsb3lLNUJaNFRRNG5ROVJYcDZNWjAzSlJ3QmFrUnMvazNYRVYrcnhY?=
 =?utf-8?B?MHhYSFduVEEvVlFqY1BNeWRwLzRxM1RrZm5NUGxYNjZBcVk1T1FpOFZNOUVa?=
 =?utf-8?B?V1JEZm1IendhcXZ1SjJJMUFjaG9oSlk2MlBmeHFScFBnZURiR2hTMk1PQnZD?=
 =?utf-8?B?SlR2eGthdHVPdXBFNlRmN0ZsVjhyajZvTEVGMytRcjhoUVBpblVVVGorQWky?=
 =?utf-8?B?NFBua3ZETGNPanh1SU00TU12ZGJvdE51MmgyNUE5WmRVbVZBTWNJbTFCTDZ6?=
 =?utf-8?B?anIyYlJMekVubTc2YzdGd0lIR1ZjWFBKcHFSNmg2dmVDYXpGbmFzM0k0cVg0?=
 =?utf-8?B?bW9FVVM3aDE1a3pYZGdWTHlJVUZxZUZoL21jTnlJeGFMenNjNXZCTVN3V01B?=
 =?utf-8?B?NWZPOVIvaHNjZC9FN0Z2WmI2c1FaQklzZHAybEZYR1oyaHo5NnBFRGREa0tI?=
 =?utf-8?B?Y0pEa3AwaXhpYkVNNjVJdWUvSWIwN0RjeVhUT1NjNk5FT04vamJOK1ZZaFVs?=
 =?utf-8?B?SHhKdjRTWE5rNDgxTUhvWXZ5N2xtR25Ua1BDczNva2o0MVNhMithRUdRMUVM?=
 =?utf-8?B?RGZObEVHZUxuRTc1RXVGN0FuTEJBZ0xLSnYwVlJjUVFUWEx1WVpaM084ZTUr?=
 =?utf-8?B?YWF4MmI5Z3VKcEpWMW5TTWY2Nm83c09QZm9pZ3RnNGJkVFFKWTQ3dEhaMGd5?=
 =?utf-8?B?a241dUtuemdCVzdQSjl4bkpsT0F2RWtpSjdQb0tXRTV5dFBkTlB5ZnV4MnRu?=
 =?utf-8?B?UDJwR0hrUzU1SnNHTHQ1M2NrNzhienlLZ0V3d1EwOGM2Rld6dy9KY1JvTy9s?=
 =?utf-8?B?VlFOSUZBUVRqQ0Fwak1XT1hFRTJYL29LYmg0MEgwWGlzQmVwbkJ0dDF1TXVi?=
 =?utf-8?B?VTYrOFZiSzdtTmJZMHpiNmNWV3l2b005ektIRlhNRVh2dW9sYi9lM1k4QUE2?=
 =?utf-8?B?aUFlRWp4YU1malR3Y29HNlRwMDFqd3U0TDEwTWkxV2hxS3NteFQ3bmthekhM?=
 =?utf-8?B?b2JPVlNJajRTejg0OW5LSDRucFpET1RWckc3Mmk4Z1JBMW1oMVJ2NGxMYWxP?=
 =?utf-8?B?Njg0RjNZYk5MQVNwdTBxeWpoVUVRT08yd0R2VmIzSndKM1hEQndlNTF2YVNX?=
 =?utf-8?B?bmo4M3BvNjNZSkc4OXpramNkbHFBUEtGV3BMVVRZYU11RmE2VGppMDhTNTdC?=
 =?utf-8?B?VklwcG9WYnR5RHN3cUNpMEVyU2JCN1pZcU1nbVpNcU93bVN3MjNlTlU3Tmd0?=
 =?utf-8?B?eDI2TUZnS2l2UVFVUlZkeEZKN1hpVWplMnNqNEFHeFFaOUh6NDFVRDJLOUFH?=
 =?utf-8?B?ZHB6ZENUemhtMG5MaG11NSt2Y0JXbHZ1c0NXUDBoM0xKNHRpbmkxL0RNeXFB?=
 =?utf-8?B?SXRFdUd2ZHlwQjNySjZEZzJUdTVVRjVTYzl1cUI4UzhQVzJvNE50VGM0TFYw?=
 =?utf-8?B?QWY0RHczS2lOM0RkY3VhUVJOc3NtNXFrbzNrUHd4UEl3c3FnM0Q2RDcwTC9F?=
 =?utf-8?B?Ni9qOHBqR2ZjcDAzOGVtODd2VEJPRmdwV2NhbWVUSGhncjNueWNaRjNtTWRo?=
 =?utf-8?B?SUFUMHgyamRNYUdMMzZJZSt4Y2xpSVJLSUZ0dkxIbGhqbVFqN3FUV3VxSTJm?=
 =?utf-8?B?RENrUWRyZWMvUVZhRlRHK2VteU5VQ3ptWncrKzBYdmVrSHJZNnFXN2oya1Jw?=
 =?utf-8?B?MUZvSFBpaEcvOU9mM0hFT1RjRUpxWHA1Q2p6QzZ0TUp3dSt6UHAyczNlV1B3?=
 =?utf-8?B?VTNNcm94Y1BaMUtpU0Z0N0ZISGlrOTEreDhoSDFHU0dzUEJ5bEtoVmpjditt?=
 =?utf-8?B?R1BackZDNTdoUWtPR1pLQUM4cklRSUUyd1oxR1cvSlM1aThBMkJLNzcwaEtq?=
 =?utf-8?B?eFJqUEtpMnBRcHBmWU1kdkpoRHQ0a2VzMnIwWVdsV0RhQnpVVEM4ZnVoU3F0?=
 =?utf-8?B?ell5ZmFvMlZmWDBTNTRHYjNsamhHTTFFSk9UWFZVdmV4L0pCVExzdWJOV0ho?=
 =?utf-8?B?OGVrM3E5ZFZkUnpNeitWYlc5dWRPQUN4SytOd055dVNnaWd0ZlhvVkpMUlFL?=
 =?utf-8?B?dFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 326f9dbb-b044-4b48-43a9-08dd86d4d16f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2025 04:17:56.2681 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wpc56DeqfRI7HSOvKP9WPIEhghiJ1kXeDCB+ONFlUEqGUspRw2JkHmn30urFwVZOQbIUHTBTmCbSO0zdMNljb8Js5sa72qaYEYl5SOFmaf0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6437
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


On 4/28/2025 11:50 AM, Mitul Golani wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Restructure bit for VRR enablement.
>
> --v2:
> - Separate multiple enablement from one patch.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 25 ++++++++++++------------
>   1 file changed, 13 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 54b91c2a0a87..86b858222b6e 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -603,6 +603,7 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	u32 ctl;
>   
>   	if (!crtc_state->vrr.enable)
>   		return;
> @@ -617,16 +618,11 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>   	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>   		       TRANS_PUSH_EN);
>   
> -	if (!intel_vrr_always_use_vrr_tg(display)) {
> -		if (crtc_state->cmrr.enable) {
> -			intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> -				       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
> -				       trans_vrr_ctl(crtc_state));
> -		} else {
> -			intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> -				       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
> -		}
> -	}
> +	ctl = VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state);
> +	if (crtc_state->cmrr.enable)
> +		ctl |= VRR_CTL_CMRR_ENABLE;
> +
> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), ctl);
>   
>   	if (HAS_VRR_DC_BALANCE(display) && crtc_state->vrr.dc_balance.enable) {
>   		intel_de_write(display, PIPEDMC_DCB_VMIN(display, cpu_transcoder),
> @@ -650,6 +646,7 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(old_crtc_state);
>   	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
> +	u32 ctl;
>   
>   	if (!old_crtc_state->vrr.enable)
>   		return;
> @@ -665,9 +662,13 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>   		intel_de_write(display, PIPEDMC_DCB_VBLANK(display, cpu_transcoder), 0);
>   	}
>   
> +	ctl = trans_vrr_ctl(old_crtc_state);
> +	if (intel_vrr_always_use_vrr_tg(display))
> +		ctl |= VRR_CTL_VRR_ENABLE;
> +
> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), ctl);
> +

This seems to introduce an extra write for TRANS_VRR_CTL for cases where 
we always want to enabled VRR TG.

Though there shouldn't be any difference, as the timing generator is 
already enabled with guardband and flipline_en bits set.

IMHO it would be good to mention the same in commit message.

In any case change looks alright to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


Regards,

Ankit

>   	if (!intel_vrr_always_use_vrr_tg(display)) {
> -		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> -			       trans_vrr_ctl(old_crtc_state));
>   		intel_de_wait_for_clear(display,
>   					TRANS_VRR_STATUS(display, cpu_transcoder),
>   					VRR_STATUS_VRR_EN_LIVE, 1000);
