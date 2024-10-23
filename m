Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 072AF9ABDD3
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 07:34:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C19A10E735;
	Wed, 23 Oct 2024 05:34:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LkuWpemE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F7B710E735
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2024 05:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729661648; x=1761197648;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ulmEHS3DmfftkILQEt5flj41BFppQPOaEDeLUZwaXaw=;
 b=LkuWpemE/MCPqGukL1tfXCUUrZctm5uOhLYb1YXJwfTPgOCxr5Au7WI2
 5rwl1A0Lwis/UwsA7cm4vPylaslAhJpONttF/ZHeARQKrGt6wRMRfzVVm
 iQjWQ//8QvYeO6J7u2sqhclu3HH1iri5uGq7Q62vc3zDjXt2ZwCRWQZpv
 fN1H5HD2pwzSwpOgwydGWBQJmqS0Vs1zEIgIimZLDqYlXTmIyuDEnUVJP
 C4j/ViBgZjWFMw6wE9r2EpVlwHmzPacjeOzK4xqpX3gVuujcHj5D/nWmf
 hcTk8NCuGND6z7FJzpU3LPDhy0Z3PqvnVgdz2JBjtmghbr2WwRnmBqin4 w==;
X-CSE-ConnectionGUID: fGd+AfaGTXudjchzHfi/Fw==
X-CSE-MsgGUID: tYlZaINAQXu+wi0lV7A4mw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="46691310"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="46691310"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 22:34:08 -0700
X-CSE-ConnectionGUID: AZpqaAzBSRCQ2P9wyvavYw==
X-CSE-MsgGUID: 5fVyXCs6QNue67Lgavn8lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="80429721"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 22:34:08 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 22:34:07 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 22:34:07 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 22:34:07 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 22:34:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gk6ha6Mh1jmGUEPLHAkP0Ff0cjfeTMohc8+PgMJsYnkxzGABMiG6EeRPEE8me42+zJSntqNE7eq94HZVHXqphjenmr1dUcdZajFrT3BKkVkvQkOZTueCXPLg/lLJ5IVDKtFsBJhjI7NLdxeE/kM47DAEIkmLXRF8ELeRdfuTaXo/KiASzSRLyPKqKivtG+rb/A4cD7A3UGy/bZJocFqRqfxVx60toIu+gcvpvLFbymAlVm+Cd89j9f0LOw01Awe58upyI5aiy4VsUjoa0P2/sWVFgQI2RdIgXUxemjVMKcL5eDUYQY2BOanf6YAwA4krCzpjxq9B3h2Ap7vXhfNv+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=poxyhXY5jEZqUTWCfb4Hgoicj2eGPhL7i5PQSbBB4ks=;
 b=INzm3F/FU/c45IdyVTcM0YoTdv+UetHE+1JqdGEoUdqgNkeO3kjrx34dsg4I0xRxix5y1L0Xds6OV0jv6Sy7DxTsXYGLyt6x59+frQynvGagtE6R0f6Jgh5aMmKSD65vY9+ru+5Sb5ZAiyrYwtVsB/CfFYzGSktvsdDoABMr7980De4BMKVrMYxp7Z5UavAw47TouIuEAGEcEopimP8L1iZ0WL+wiqw96qpcyQ8fg2WuArhm8UZ5Cd15r023pdHoemIlbiIJF6aY7xE1mY7qrYvoL+qauNZOwYEctYl9v+WROeEUgYZQTMGTZGBcEYFHcjGN6+xEMySzM8Cs1fXX5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5536.namprd11.prod.outlook.com (2603:10b6:5:39b::15)
 by PH0PR11MB5829.namprd11.prod.outlook.com (2603:10b6:510:140::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.29; Wed, 23 Oct
 2024 05:34:05 +0000
Received: from DM4PR11MB5536.namprd11.prod.outlook.com
 ([fe80::e353:636a:37f:21ef]) by DM4PR11MB5536.namprd11.prod.outlook.com
 ([fe80::e353:636a:37f:21ef%3]) with mapi id 15.20.8093.014; Wed, 23 Oct 2024
 05:34:04 +0000
Message-ID: <c94a44fc-0211-4b83-9faa-cb8d0765f76e@intel.com>
Date: Wed, 23 Oct 2024 11:03:57 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/rc6: Disable RPG during workload execution
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <anshuman.gupta@intel.com>,
 <chris.p.wilson@linux.intel.com>
References: <20241022132226.1110383-1-badal.nilawar@intel.com>
 <Zxeoi1baLtbqDKIr@ashyti-mobl2.lan> <ZxfcPLgi8tmLiomr@intel.com>
Content-Language: en-US
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <ZxfcPLgi8tmLiomr@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MAXPR01CA0117.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::35) To DM4PR11MB5536.namprd11.prod.outlook.com
 (2603:10b6:5:39b::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5536:EE_|PH0PR11MB5829:EE_
X-MS-Office365-Filtering-Correlation-Id: 96c75ef3-6e32-42c3-2535-08dcf3244eb5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MEtJR1NiN21MRm8wL1Z2MkNlN2ljSldDczFtOXErNDhhODA5c3VEdWRMS2lR?=
 =?utf-8?B?bnNxQmV1M1BMRmt6TGN1K05BZnpwZ1F1ZWI1Q0MxcDhCK2U4M0FLNVhZd3Bi?=
 =?utf-8?B?ZTZRbUE1Z0JkeWZsSHA4N1dJN0VPbFVtWTFwODZXbWdNa0pramJCTit1d1RL?=
 =?utf-8?B?SVowM1VNZHFQU1Qya3B1Sng3MFJmVHpyWTJmVjNvRzJQSzdYZjh1NTMwa2wx?=
 =?utf-8?B?dThVM2JVMXBORmZTcExmK3Nldll3RHNMd2grMWkxa21FUnlQVHdrSnVqN0cx?=
 =?utf-8?B?K2l3bGFZR0FTTjFxbkdwaDdXRGlLTVFxRGU1d1BaRTBtOEl3ajVBRkJRalFm?=
 =?utf-8?B?cm9GSXhKekJhaHZPSFRmcmtKMXZyc3JTbldoc1pmODdsY3NmbDFGMEEwbjAr?=
 =?utf-8?B?THlRQ0FRTVlmallwVHVyYTIzM3hPbFZ3Z0xDakxxRkpFTi93czNmQzZDNGJk?=
 =?utf-8?B?NTY2LzJCeHp0VHlwMHlmWE5lcUJKQXNxY2EzdUloK2ZObkh1ZVp1QzJhQlJ0?=
 =?utf-8?B?bVNmaGFoOThKRkpLV2hOUmdYM0hJM1QwU3hnN2h4U3B2cUlLTGlWSHlmL0tK?=
 =?utf-8?B?aG9jeWpUZUo3S0J1Tm90QVhLb1JvN0E1TmdVNllrZ3lKbjk3OVExak40TTZR?=
 =?utf-8?B?ZEdMUURzLzYrSXo3a2djcU5SOGZMYVBRUHhwdGQ1ckwvbWpRTEtKeFVnUjhm?=
 =?utf-8?B?NmxjNDlQMXA1S1R4S01LdTFibUIrV2xyTG9VOVBxU2REblRrUHJFd29qemZm?=
 =?utf-8?B?c0xsczZ3TldPQnVISDJOTjZJUG5tS1BNaVdWcUJZMzZjV3YwcUtYczZ0OVhk?=
 =?utf-8?B?aFBiVUJvdnEwZGtrcGxzMytIUTlxazNUUG5JcElDZ1g2RjRxWVNRRVFPZXhW?=
 =?utf-8?B?M08xSEVzYUwrdGpJL2YyejdxSldXUXVWMkJtNDVHQlZZYWhOK1FBd0g3U3pR?=
 =?utf-8?B?SjJpMUVoQk9EV216a2pYTXpVQ0l5TmZBaUVvZDB5VCtoQm5UNnFFcWpGaXBp?=
 =?utf-8?B?UlRlOGNYZUJHa1VQakovRFVkNlJTcGNtUFdwL1JvVkVwYWxUNUtGdDVScUxo?=
 =?utf-8?B?L0RTMVpOMkxGbFRPZTBldy9GSVE4dVJPWllzWHR1RmNiUnoyMjRFWThHZmhP?=
 =?utf-8?B?L2tvVFM4Nnh5anNXbWF6b3F4MWNIanZPeStlRG14OXRJNWc0a2xJTjUvTjlG?=
 =?utf-8?B?bnZsRU9ObFl2WlBzZzAxdk1lSW5LT1ZndkpVdytJMkIxRjFvU0RjcE0zdXF6?=
 =?utf-8?B?ME5IZkVDYzc3Q0o4Zkt1U1dmQ2o2NGFHS2pJdWYxa1lOYW1mUGNUS09UQVR5?=
 =?utf-8?B?ZGEwdXh5c1EvcXJ5YjhVWXFoZDRMbGtmUFZQUWF2Q1hLeGZTYWZzTDFuN3ha?=
 =?utf-8?B?dW93Q0RmU1JLc29ZQmU3dFF5MkgxbFdCOGsxT2UvZkpyTzlUajU3UFY3MEda?=
 =?utf-8?B?RmROTkJHRVRML3NhbzVCL28rS3ZCWnpjNDcyVUF2Vml1TkRhNUVvOFVRWUFs?=
 =?utf-8?B?cStTSFRRZExjRCtCMTlmNmRIaG1mbVNwVTRDR2FCaFdtak01UDJNRHBpalBi?=
 =?utf-8?B?Znk0QlRXRVFaNFFLWFROcjdoWjBVc05jZkE5QmlyZS9hbmY2c1pLYW9DTDRF?=
 =?utf-8?B?MHJMMk93OTloTmhZZmg0WXBybDlmdVFoYThFNWg2VGlEVmZKNGRNbEMvMzlD?=
 =?utf-8?Q?AKOk9JWZNHnz9P0nGcte?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5536.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ODVGNWtGMGdNRzB0QVZabXZ4YStXUXlkNUR1RVZlTlFHWkF1TnI0QTMreXN4?=
 =?utf-8?B?NTlBL1VBMkRHbXFCWUFyeFlmaUlZTmp5R3JZYUsxVUxCTDdmUmpKU0pidEhy?=
 =?utf-8?B?cW1uam8wNVhwVmE3QVZvSmVDR3VKbU51UWF4Vi8yYTNqWTNjRmdyS0k5a0c3?=
 =?utf-8?B?WmpIWWNnWlhlQ3ZxdHYzT25TMFROQUtoZUgxR2FQdVQ4Q0RTUFRRUkpHbEVq?=
 =?utf-8?B?Tmx3bXQ5eGd6MUxzVzZEeUJld0xDczM0TlRGeDZ3SkRqTklzdUk5eXRDcFFi?=
 =?utf-8?B?cldXUE1tKzRSS0hNcGV5UWFxVldJRHZaNVVxc0Nlc3ZrOFRJSmJGUEVhQ3Fh?=
 =?utf-8?B?ZHV2cFhHY0NxS3FJRFlwNm5ZeUxBeUl1WHlGWTJpSFdtZXY0dGRJdTJ1TTY0?=
 =?utf-8?B?SWQvNWlQcDZoaGowdEV6R1hxeWhxNncvRndlMDJBMHBsQXg5MmthSVFtblZv?=
 =?utf-8?B?RU9tRVVIOGRlNHNDbXpZMTMvVDB1NHV1VmE5ZW5PaGpIcXNaQkVlZjR4ZDJK?=
 =?utf-8?B?LzF2Njloc2xEUHpYOVhDTkV1UUFzZEdVWkVwV3gyc3l0Yy9FZTVTZFZlT0Fv?=
 =?utf-8?B?cENaOHdaNVZaYjVDdVRSaVQ1ekt1Q2RLV1hTVVQ3UEp3NGFlUkNjWjRvMmxM?=
 =?utf-8?B?MjBKMC9JV0RJdEZ4eU1BOURvVHRNeWhPKzB1UDRKQU43MFU1T3F3NUV2MHM3?=
 =?utf-8?B?eDZLU1o1QW81RjZjM2Q2M2NHb1hUQ0ZPZUZ4VEltRDkwSjcrT2pSK3lLM2Fi?=
 =?utf-8?B?THAyTkt6K0ZOK3hMaVplMTZ5TVpjN3hYZWRwbUdrU1hJUGoxVWQweTRkclA3?=
 =?utf-8?B?THF5QkVPWTdWRU1DVDhlTmJiMnhBb3ZUdzVsL09YQzArQm1GaHpOZG5ISWpy?=
 =?utf-8?B?RytFbmZPSC9mZWdNUVdRRXN5WHdWSk9XTDRrcTJLUTlEcXJFVy9LaExnMERT?=
 =?utf-8?B?MVNzWmNDZE00WkxnMkRReTBJNGJxc25wa2V6UHZYOEJwdWFObjd0aEoxWHZN?=
 =?utf-8?B?THQwZ1ZNT2xEZHk3QUljUmFRUWJHaTBwa201UThYV3ZpelVWN2xiTFpEWXA2?=
 =?utf-8?B?TmhMcnBkN0hzSjVpME9udGNjelpCaWp2cFJHSEp2eGFNYnJQWW5LUlg0TnEv?=
 =?utf-8?B?ZVRmTEFFRkl2RzBwYVRzYmlsWXlZRU5wNUFYY1d2SXpjalhzWEE5b2tMaXlY?=
 =?utf-8?B?VkptaTdvdS9kZEp1bW5pUWJSRjdwRkc4bU1NWTRma0VFOCtFYk03RnU1Z2Ex?=
 =?utf-8?B?dlFMMHBwWENjZzJZMHhPdytSNWJaZHV2VTc3T3RsRzhHbW5tbEVLZURIZkk1?=
 =?utf-8?B?S0hZekE1QmlVc1dNdFo1MzY4T05Mcm1nSWorNGJRQTVEanc2VDBWOStvVjhV?=
 =?utf-8?B?VFRBQSsxYlNoQ2tzdXdmRjNZekttRFVXdTBRQjBuZ1g3T1pVei9RQkFXdGtk?=
 =?utf-8?B?NGN4Mmc4bGxOTGVNVXdHYk1rR1ZtT29KcnY2QnhuWGk5Zis2d0VEZkYrajlx?=
 =?utf-8?B?dzhHcTVhMU83OENFcDNsNTRhL1BZYmpNaGUvbUozTituOURIaHZEUHJnTFVP?=
 =?utf-8?B?NjBnVFNVSnlnRzhWRVhoSFlmNUYzcUR5eGlwSHkxTERZZTc4TmZ2N0RMclBn?=
 =?utf-8?B?T1BkRkpLeERpWkoveHFUa1JHbGRCTDdKMXIxV3AzTzNqd2VOK3JhalBaNWQ1?=
 =?utf-8?B?anhIVCtWbVRla1FvTXBPOW1sMnkrdHZIekRDVlFVZ3BadjBQTTFxTzhSblNP?=
 =?utf-8?B?S1ppanA4QzBZM1VnaGNYR2U0NmhWL3UyU3VITWc0YjE5NXIwUlJYWUkvaTJl?=
 =?utf-8?B?SktydjdKOTN0SVlKV2VkMk56UVBGRHNRMkpQTndiWER3YkdOS0hrSkpiTFdQ?=
 =?utf-8?B?bWlDMXVKNmZsWi9OdzZ5bXlXQWt1dkJOVUJQazVqbXYya3E1dlR5WVB4akU5?=
 =?utf-8?B?YjRJbEptekM2MlBjaE53SGVVeGdFRzg0L3VRVGJNVm44L3ZPNFJwcEhVbC9F?=
 =?utf-8?B?NjAram4wU21FTkh4cS9VTThLdEZydkxORHkyeHc3UTdPaFd5Q2VxV2tTUEta?=
 =?utf-8?B?cFVibmRKUXlnWjFBQWE1UUNHeVBIZVFWSHNxQTRVSmJiQVlvSU5CNlhPYzkv?=
 =?utf-8?B?S3JEd3RDRkF2MDE5UnFzejBUR25WOWZWSDA2Zm5CbEFma2lveFE2bm5YL0xP?=
 =?utf-8?B?S1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 96c75ef3-6e32-42c3-2535-08dcf3244eb5
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5536.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2024 05:34:04.8351 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iDblhmgZzJZNoKXCXKQ98rHHQuAkTyJJr1/XMdt3wUq8VUIhJPxDnPQDQn9yWaiLVY/Fb0/5KJaav5VmtUaYVA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5829
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



On 22-10-2024 22:39, Rodrigo Vivi wrote:
> On Tue, Oct 22, 2024 at 03:28:43PM +0200, Andi Shyti wrote:
>> Hi Badal,
>>
>> On Tue, Oct 22, 2024 at 06:52:26PM +0530, Badal Nilawar wrote:
>>> Encountering forcewake errors related to render power gating;
>>
>> Can you please expand your explanation here?
> 
> yeap. More explanation please. All platforms? really?

We are seeing Render forcewake timeouts on ADLP, ADLM, ADLN, TWL, DG1, 
rpl. Issue disappears after disabling RPG. Instead of fully disabling 
RPG I am disabling it during active submissions i.e. during unpark.
For MTL and ARL RPG is already disabled permanently.

Impact of doing this change should be performance improvement so kept 
for all platform otherwise I will add platform check.

This is the issue https://gitlab.freedesktop.org/drm/intel/issues/9413. 
Will add it in commit message.

Regards,
Badal

> 
>>
>>> therefore, disable it during workload execution.
>>
>> ... and here.
>>
>>> Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
>>> Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/gt/intel_rc6.c       | 18 +++++++++++++++++-
>>>   drivers/gpu/drm/i915/gt/intel_rc6_types.h |  1 +
>>>   2 files changed, 18 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
>>> index c864d101faf9..459394ab5258 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
>>> @@ -140,6 +140,7 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
>>>   					      VDN_MFX_POWERGATE_ENABLE(i));
>>>   	}
>>>   
>>> +	rc6->pg_enable = pg_enable;
>>
>> this looks borderline racy, it's fine only because this function
>> is called during resume which normally runs in atomic context.
>>
>>>   	intel_uncore_write_fw(uncore, GEN9_PG_ENABLE, pg_enable);
>>>   }
>>>   
>>> @@ -572,8 +573,11 @@ static void __intel_rc6_disable(struct intel_rc6 *rc6)
>>>   	intel_guc_rc_disable(gt_to_guc(gt));
>>>   
>>>   	intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
>>> -	if (GRAPHICS_VER(i915) >= 9)
>>> +	if (GRAPHICS_VER(i915) >= 9) {
>>> +		rc6->pg_enable = 0;
>>>   		intel_uncore_write_fw(uncore, GEN9_PG_ENABLE, 0);
>>> +	}
>>> +
>>>   	intel_uncore_write_fw(uncore, GEN6_RC_CONTROL, 0);
>>>   	intel_uncore_write_fw(uncore, GEN6_RC_STATE, 0);
>>>   	intel_uncore_forcewake_put(uncore, FORCEWAKE_ALL);
>>> @@ -687,6 +691,15 @@ void intel_rc6_unpark(struct intel_rc6 *rc6)
>>>   
>>>   	/* Restore HW timers for automatic RC6 entry while busy */
>>>   	intel_uncore_write_fw(uncore, GEN6_RC_CONTROL, rc6->ctl_enable);
>>> +
>>> +	/*
>>> +	 * Seeing render forcewake timeouts during active submissions so disable render PG
>>> +	 * while workloads are under execution.
>>
>> Can you please improve this sentence? If I never new about the
>> issue I would be a bit confused.
>>
>>> +	 * FIXME Remove this change once real cause of render force wake timeout is fixed
>>> +	 */
>>> +	if (rc6->pg_enable == GEN9_RENDER_PG_ENABLE)
>>
>> is this supposed to be "pg_enable == GEN9_RENDER_PG_ENABLE" or
>> "pg_enable & GEN9_RENDER_PG_ENABLE" ?
>>
>> Andi

