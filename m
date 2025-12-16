Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 994C1CC2C8B
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 13:34:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2657E10E7A2;
	Tue, 16 Dec 2025 12:34:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eLrke/XE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1073C10E6F7;
 Tue, 16 Dec 2025 12:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765888446; x=1797424446;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NMZ/AJKUfwFRUJvKvoibLrixi+ihiNWpc5HO5iZ1zq4=;
 b=eLrke/XEGdXXZZPjPUJu/j4PecU7o3e+2A+nqOAf7cJCPXMcGaQy+jL2
 0vnhn6Ly4gu723iMUmMBhxkHCmkD3mijMhP8F7Y/jSd23Aw4qjK1yb6Qy
 WmmHFbK/QuEwnsOFoCVn0dhCPvXe9gvDm9HipEKcWiFf7k2XXIXqucEln
 rERmKzwxmQ0DGxVHebS2FSB6C7lxvYEpqDFZGPm8//cAx7/wBmTt49+Q0
 cI+Ge5bGXVUAn4GMe3fcOg/e5JN0cIDWdH+MiCIPgGfxFWMgyhADXK50J
 aSiaUhJklSw24NDUgOV7uCGx24JsOdxm36zAJi6rjXoIfBQnS0U2AKfpm g==;
X-CSE-ConnectionGUID: 9KSQmNy5T7itcAZnmXAmBA==
X-CSE-MsgGUID: HWfUuLHxRXeAxzpGMY51Sw==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="67839673"
X-IronPort-AV: E=Sophos;i="6.21,153,1763452800"; d="scan'208";a="67839673"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 04:34:06 -0800
X-CSE-ConnectionGUID: 9F9nwVtoTgel2QbF+4L83Q==
X-CSE-MsgGUID: J5HFTZ9hQKahWpaNFWEumg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,153,1763452800"; d="scan'208";a="202504899"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 04:34:06 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 16 Dec 2025 04:34:05 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 16 Dec 2025 04:34:05 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.16)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 16 Dec 2025 04:34:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sCuY9KXfc1TkK7/Bju404/S9OcJ5KgrlFBd4zIkCoGLvKMHkwJEJb2CsRNw2wz3itDmn203t0f96hrhcn0Fo67XSB9HQUtovWg4zLEd/h1lxemBvd/coYo83eJQUhum8vcehoi9tO3QAbixLlDaDZBrtW3HE87iWTHlXVHROSzgp2uv9f0u1k5yMYfZnSJfgtAhVyAL0nRb2XpIZ6o6hg3kOtLMBWMn/Gyf/qupfkyZi+75QdJ8PMdFJouUDwKpZGRKRjokfvgGrKHFuWb6ZM3Fc/CQvKdNGthXFucgKTteovCxcgWjMaHi7jgO6+zQ4H9bBFJR0ouo1/K9gE56zxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZrMUGQx6gfdFVCyosXKt3kGK/YFHH9+EZXX/wK5ZFXw=;
 b=EXftBPy1EwYE88EPuuYj5oN3I5JEQzU2Mq+Gf1V6wfwQgPhpzM7RFyBZDLXSqP8EVlLLXbc89mpz2ywwINIFfdxeC8bWOeBLFftopiLABz3nDUNl3j23mjrdRZK6k3oePeQ9GV2813mUwIrobhfs9n8KurYsKWp9MoSrlSftakRd58/DCrMHej/filS4eHamX3kMAiYERnjcf9tvR/4DX6P1PZj+hFLJP7eicb9Vyo9C0urpPJ1rm71mxvbY4ViZQx2dg/SCmMsJkfcE+mezax8dlu1wu90hT6fmzUEfa6Rc9qqg63UFoBKX+HfWCFJGmydJdaR+MODWFEI3bDcz1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA3PR11MB9399.namprd11.prod.outlook.com (2603:10b6:208:577::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Tue, 16 Dec
 2025 12:34:01 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9434.001; Tue, 16 Dec 2025
 12:34:00 +0000
Message-ID: <000a8e58-48db-455f-bdf8-0de2d9ef782f@intel.com>
Date: Tue, 16 Dec 2025 18:03:51 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 04/17] drm/i915/vrr: Add functions to read out
 vmin/vmax stuff
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ville.syrjala@linux.intel.com>,
 <uma.shankar@intel.com>, <jani.nikula@intel.com>
References: <20251202073659.926838-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251202073659.926838-5-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251202073659.926838-5-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0032.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:178::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA3PR11MB9399:EE_
X-MS-Office365-Filtering-Correlation-Id: 36d6193c-c932-4741-b4c1-08de3c9f6279
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SzlmYWtLRTZuRjNpUm1CQkpmc1JBdkc2dXZ6dVlnSmtsa1F5aDJUbmtqcHFi?=
 =?utf-8?B?N1FqSk9mOHI0dHo2SjhMZXJCRzd4K0ludzB6SUdUMnl1UUdVVXg5WmdIMVgy?=
 =?utf-8?B?SjltUnRDUjgvRnlLREViVlpUaGVlL1VQM0traGF6ZkF3dTJ6d25ialZid3NB?=
 =?utf-8?B?eW93WDNzQWN3Qmc4OXQwZ1J5dXllcWtRbFo1dG45UFJwbEZ5TXhNZ2c2UGlu?=
 =?utf-8?B?UUE1Q29IT3JvZFJXRERNL3AxdFB1S1EzRmtZdzdqYzVxUjhkMVJZbUFDend1?=
 =?utf-8?B?UzM3aHE2ZCtYU3JTbkg1MThTQlBkNEpZMFc1Q0NGN1pUWTZDSHFCMnN1ZUZM?=
 =?utf-8?B?czBxTnlyc0kzdXNjODFXVWFERXk3UUNjZEZVY1Ivc2pSdzNPaW5pZHdZSmhu?=
 =?utf-8?B?Vm5wRHNyZWx5ZjhzSEdDcklrQnllWWhSK1ZMcmYvMjF4RkxhMElCYTJURkNX?=
 =?utf-8?B?NHJpbE9Jdnd6VW1LOEFyVUtxM0RlakdJdGlCUDlVN1BiV1hvU3ZnY0JJbEtY?=
 =?utf-8?B?b2hSRjVnQ3p4RHNkdE1WaHlJM1RSSTY2WTYwelpQb0lWSEpwWkN0dHZWVURv?=
 =?utf-8?B?MnBPSWxNdSs2ME1CcWVVcGQ0eXBtWXBjMmpnK2NQOWFaVnBOWEh4dkdTUG1B?=
 =?utf-8?B?cXlwM21FL0VOcGMvVzlFWTR0NFdZblpZSXRDNzJPNkxHclRERi81d3g3NUl1?=
 =?utf-8?B?aDhhVWJhOGk0UENmZGZqMk5yaUZFdGJKWDV0dHljdGt6VlMxOFY5cCtXWStV?=
 =?utf-8?B?UXhwcTdvV0xCRzNDV0J2WUdJY1BOS1IvaVpqTFJFT2RIYnp3cjk4NzVVbTMv?=
 =?utf-8?B?TW55ZjZOdi8xa2VrWkFaNFZUQXdUZ2tHTENMWFRIWHZ1SlZ1RlY0RmxHbnFI?=
 =?utf-8?B?SXR4cll4aU1Od0dKUVpHdlVtZWxNb0ZYbEF0bEJWeEx2T1pRZnhVU21QV0Nv?=
 =?utf-8?B?aVBFbmU5Qm1yYUdheGxhN1h4YkFKUTBnRzJVRzhyancwcnExM3oyRVZGemtU?=
 =?utf-8?B?ZUNvQUZJazErRmJMcjI3Z2lLTFpkQUJtUmtIb3Vrb3l2QTJONHBrK0x0elRP?=
 =?utf-8?B?b0FBWURTaTB5aUlvemxMWEZqUUY4WVUxQnBSVnM0Slc1c1JVT2VCc3pIK0xv?=
 =?utf-8?B?OTBqUW5uc280a2pzMGMvelAxa2d3VWE0Z0FmRDY3RUE3T0JnQ01DVm9lSHhm?=
 =?utf-8?B?MjNsNFE4RHNxeURTLzZqSFBQV3dVSDRIL0k0RHRlL3E0bVhBMGFNTlk3dGVm?=
 =?utf-8?B?SXZFem9BR2FDcEk4Skhvd204K1BWNzV1VEtwNWtJRC9yNlhwY3pYN3dUcitC?=
 =?utf-8?B?ekJPaytXaU1GKzVGczlyek9KMHVrZzZrZjJlSTJrUjZ4TnNDU0FkK0ZYeW14?=
 =?utf-8?B?T3hDQU52R3lFTTlYWjFhK2RmVHJKRDVGWWFpcVV0aVRHUy9nVCtoSnBwL3No?=
 =?utf-8?B?dktkS3ZSb3NTL3U5dC80V1hDMTh4cXpvZFNyRWxrMTV2RUtIakJXT2wzMmhx?=
 =?utf-8?B?S01kZHRsTkVQM04rYVd1akFZRitnWkVKRlpDM0s1WVd4OXcyYkVuRzlTNG03?=
 =?utf-8?B?RHI0ekRETDNYYVZmaGsvNHl5eE9OeCtSelNXRUIwNFFwTFJGTXFZNGxpZXps?=
 =?utf-8?B?SGg0UjJBdXFRZnVGN3R2OGs0L0NWVllrT1BBQlNNMkQ4bmpHUVhDaG5DV2RH?=
 =?utf-8?B?WmxSSkhKejE5d1d0aE1kdjZLaitLTGFrQWo5ZThWS1BMUmZqdEVETWdpZkZ3?=
 =?utf-8?B?UFZEZDl4NGNLQmZ2UmIwQUg3azBWZ0ZLbHV3aldxQkxuQ2VhYVZYc1RCaCtu?=
 =?utf-8?B?OVordzhWeXh5T2pkRllIbHpFMHBING1KUzNaazlvWEpQeGxlSE5BdW14RFZy?=
 =?utf-8?B?ejRvSm1EemF5MGFFRHBnN0xTN0FOdDB1bS9SZ3BhQ1RkVlZ2Q2tERUIrd2N1?=
 =?utf-8?Q?GVepJYcnqdop+YRxk7x1PGlUVfmL2nm3?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YUQ3bEZ4aGFuMzhiNXZIUjZaaXRYY1pPTGdJUWl1dFI4ZjN5RzViSXZTYWZp?=
 =?utf-8?B?Z0JjQnhydlRRMFFLVmQzT2gvNFQ2ejBsTFZjQ2ZOK05ZcE4vNFdwZHcwcFBT?=
 =?utf-8?B?am5UeldkemxGQ29DVmt6R3dWMk1XdlEwTXR1YWtINnhrUnE3MVRwaGg1QktG?=
 =?utf-8?B?QmR0aFdIWi84Q3R5RTFrUXVFSythMzhyTktvUUxuV0U4V1RhY2NvbE1zUmtX?=
 =?utf-8?B?Tk9ZWkw2eHJQRFpKb3pva3Jxa1Jtc2wwZmJkNXdSYmdscDhZak8rNCtDQXEz?=
 =?utf-8?B?dW4vMTZ2Njl5SktnUUVrbUdOK1N4T25pR0tZQlp2b2FSdzBtTk03bEs2MXdY?=
 =?utf-8?B?TGZOZk1xOW1LRXJxbVkyRG9RampHZzlVU08yVnlmbHQvWHBqT1hQekV2aDlX?=
 =?utf-8?B?VUJMWUQ5UWs5b3Z2OVZUaG5tS0Q5VUFJV0R2VXVSMEk3aEVHTnAxVXNidXVs?=
 =?utf-8?B?ZlFuekNwRnh0eTgrVEhwRzRUMzhEL29XNkFMOGw5RlN1czI1RXdJWkgxSXp0?=
 =?utf-8?B?L3YvdVRqYnJ3N3Rtd3NrMExmbUVxU1BRRW00Y29ScEZmUEtVZk4wUWh6SWdx?=
 =?utf-8?B?Yms5WE4xVW1HUVVMYjhLSXpsMTFYOEg3S1JxTzJwYzBQY3d0dGFoaEowdFZ6?=
 =?utf-8?B?cmJFM29xWWpldU5Kbms1R2llZjc0eThoUzZmYjFhemp2TEI1OVhOaTN5R0pG?=
 =?utf-8?B?K0tocUVQRkxod3BqK002QThiOCtHVlI2UTF4emc4OFUyaDcxV05UN00veWty?=
 =?utf-8?B?QmlxTkY4WVZON0IyUWRTSVdxbHRJcmZEQXhVVDcwWXkxenk0TGdVazRwVXVo?=
 =?utf-8?B?VGV6RlhzVWJRZzBFZ2lQK01ZZ3l2M3B1SFVvYUdoMzQ1MTY2NHAxVW50QUtM?=
 =?utf-8?B?TFc2UE9FcWE0Y0E5WHQ2MWRJeGRpNHBVa21XUlFmbDVIN25ERGRCTS9MRXI5?=
 =?utf-8?B?SW9tSzhNOU9xYTFESzlZYUFTTngzSDRrRUVqY1FIekV1YWpMUkJDYjNYYXdo?=
 =?utf-8?B?ZisrOHk5amtqa2JWbVRlby9sN21qdjdVejQ5N0djNFlzR2hLSkpmNmZ0YkZy?=
 =?utf-8?B?TjlSY3pvQk9Sc1BUb3RwdENJemo3Tmt4S2w0TFhNa0tqTldCd2xqamxkZG5h?=
 =?utf-8?B?MVk4SWk0cVlIL29UbG1vVzc0em5BdlRsem42dVFCWm9vSTcyQXhIdXBQa0pD?=
 =?utf-8?B?LytTWFM1M3ZKT3hhQU5KQUl2U0MrTEs3eTIyblREcGYyOXZRL3R5VDB3c3RM?=
 =?utf-8?B?MmdJMlFXRHVSMFp2Ynd3RjAwajFTcUx0cmpuNW9WdEJMSFE5b0ZLQXdFZlpo?=
 =?utf-8?B?VnVOUTlXczVKVXE2Rm1sSThvakRDNkZsK29zeVZBbzB5bFAwakR6LzcrK2tn?=
 =?utf-8?B?Q0ZGZDExSjluSjZpMmNIc1VVM0RMbU1XbnJVRDhkQmRuVUplckJZSE5jK2Fw?=
 =?utf-8?B?djFGV1FaUTZSR0VSb1VWeTEyY2JsUFdxR2c5NUhDVWVRbi9XVXRuYmpIZzBR?=
 =?utf-8?B?RGRhbmNBazZCMVpyWkxlZ1NucXRoYjFQa1crTGNlUWJwc2hUM0tPS3dBVXdz?=
 =?utf-8?B?Vkd1N3hzMTRRdWVUMy9IWlJaY2RQMEhmV0UvdGxoK0Z1Ym55dzlCbHZ2ek5G?=
 =?utf-8?B?cGl2bkx1WE93SXczcUNrcGZxeW1MMXBmU0E2ZUdJK2c4aVRML29mY3ZHSUJo?=
 =?utf-8?B?cWFLaFkvbUUvV1BOa1FVdHlySjd0L3JQVXptaHlaZFRZMk5DZHAvTXh6RHdZ?=
 =?utf-8?B?U2xRWEoxclltYXZXSmlqR2lxQ0tBZC93V0pVcmdQY0x4Mjdadjc1U1RneUd4?=
 =?utf-8?B?Sm5wR0RlUGVKZmt6Mjh3UXMwaTRZV1pRalFweHZJbElxS0hWd3Z2czEyQU5G?=
 =?utf-8?B?U2d4MlB3bDExTktibUJ6ditQNnpna0hKS0tVVEZ5aDJ6N3N0MXo0NXZlem0y?=
 =?utf-8?B?NUdSazNua3ZabE9JTHNtWGNHY2FpWEdjRTFFTEJ4MnB4aC9NWVFPVWplZUZ5?=
 =?utf-8?B?Y2xSTzZOUlZqK2JMNmVkUGFSdUNyaTZ0dFZPVGRZNWR0MzQ0R3VGeGtNdVBO?=
 =?utf-8?B?NVAzQzIwRE8xT2JsaWZNdUNpUklQc0crZ2hlcnRhR0g0NzlOWUlYakRiUk4v?=
 =?utf-8?B?MjBSOVJTTHNxY1IzMlJ1UURJNENRVmVxRC82aGN0NXdSQUJ0aWI4amUwQ2lL?=
 =?utf-8?B?V1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 36d6193c-c932-4741-b4c1-08de3c9f6279
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2025 12:34:00.6750 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 90l62tvuolmESco5Z50Y0oVejsfvd9Cml8Bd2fuXkzd6FFXIocU1i9a6VT07LrDbfjpOK4pyVxT/O6VEhJm44u4xm/Ekhnwg2uaTkCMW21o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9399
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


On 12/2/2025 1:06 PM, Mitul Golani wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Calculate delayed vblank start position with the help of added
> vmin/vmax stuff for next frame and final computation.
>
> --v2:
> - Correct Author details.
>
> --v3:
> - Separate register details from this  patch.
>
> --v4:
> - Add mask macros.
>
> --v5:
> - As live prefix params indicate timings for current frame,
> read just _live prefix values instead of next frame timings as
> done previously.
> - Squash Refactor vrr params patch.
>
> --v6:
> - Use error code while returning invalid values. (Jani, Nikula)
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 56 ++++++++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_vrr.h |  5 +++
>   2 files changed, 61 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index b92c42fde937..31f3a7b6e00d 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -261,6 +261,12 @@ static int intel_vrr_hw_value(const struct intel_crtc_state *crtc_state,
>   		return value - crtc_state->set_context_latency;
>   }
>   
> +static int intel_vrr_vblank_start(const struct intel_crtc_state *crtc_state,
> +				  int vmin_vmax)
> +{
> +	return intel_vrr_hw_value(crtc_state, vmin_vmax) - crtc_state->vrr.guardband;
> +}
> +
>   /*
>    * For fixed refresh rate mode Vmin, Vmax and Flipline all are set to
>    * Vtotal value.
> @@ -898,3 +904,53 @@ int intel_vrr_vmin_safe_window_end(const struct intel_crtc_state *crtc_state)
>   	return intel_vrr_vmin_vblank_start(crtc_state) -
>   	       crtc_state->set_context_latency;
>   }
> +
> +int intel_vrr_dcb_vmin_vblank_start_next(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	u32 tmp = 0;
> +
> +	tmp = intel_de_read(display, TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE(cpu_transcoder));
> +
> +	if (REG_FIELD_GET(VRR_DCB_ADJ_FLIPLINE_CNT_MASK, tmp) == 0)
> +		return -EINVAL;
> +
> +	return intel_vrr_vblank_start(crtc_state, VRR_DCB_ADJ_FLIPLINE(tmp) + 1);
> +}
> +
> +int intel_vrr_dcb_vmax_vblank_start_next(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	u32 tmp = 0;
> +
> +	tmp = intel_de_read(display, TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE(cpu_transcoder));
> +
> +	if (REG_FIELD_GET(VRR_DCB_ADJ_VMAX_CNT_MASK, tmp) == 0)
> +		return -EINVAL;
> +
> +	return intel_vrr_vblank_start(crtc_state, VRR_DCB_ADJ_VMAX(tmp) + 1);
> +}
> +
> +int intel_vrr_dcb_vmin_vblank_start_final(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	u32 tmp = 0;
> +
> +	tmp = intel_de_read(display, TRANS_VRR_DCB_FLIPLINE_LIVE(cpu_transcoder));
> +
> +	return intel_vrr_vblank_start(crtc_state, VRR_DCB_FLIPLINE(tmp) + 1);
> +}
> +
> +int intel_vrr_dcb_vmax_vblank_start_final(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	u32 tmp = 0;
> +
> +	tmp = intel_de_read(display, TRANS_VRR_DCB_VMAX_LIVE(cpu_transcoder));
> +
> +	return intel_vrr_vblank_start(crtc_state, VRR_DCB_VMAX(tmp) + 1);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index bc9044621635..66fb9ad846f2 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -43,4 +43,9 @@ bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
>   int intel_vrr_safe_window_start(const struct intel_crtc_state *crtc_state);
>   int intel_vrr_vmin_safe_window_end(const struct intel_crtc_state *crtc_state);
>   
> +int intel_vrr_dcb_vmin_vblank_start_next(const struct intel_crtc_state *crtc_state);
> +int intel_vrr_dcb_vmax_vblank_start_next(const struct intel_crtc_state *crtc_state);
> +int intel_vrr_dcb_vmin_vblank_start_final(const struct intel_crtc_state *crtc_state);
> +int intel_vrr_dcb_vmax_vblank_start_final(const struct intel_crtc_state *crtc_state);
> +
>   #endif /* __INTEL_VRR_H__ */
