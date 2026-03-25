Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ADyEElqWw2myrwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 09:01:30 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE25A32111E
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 09:01:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34C9D10E808;
	Wed, 25 Mar 2026 08:01:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WaJA1nay";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D88110E808;
 Wed, 25 Mar 2026 08:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774425682; x=1805961682;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VOBVD5ZFzKX3ohJmvmB+82vX4955G8T7jiLtRbNK0lg=;
 b=WaJA1naya3BHP3NrgmHUvsIdqlK4H2eFK8NYI642O4uXQO50zJA1pmUw
 X9CdiNEg3ikhCBuC9yH+uQipAGDsSVbMlVLO7t+q8Oq72yVJcRLDGHOwG
 8DiY/INAQuNiWsZHxYot8aB/X8hbhAbbxotQR4Gs4EyIqOpljwdymkR7R
 UbjQEYrkCE6S9D3BicNxluXEpI2qEywBRAlmAd3A8eJDavrh/uBpkkwpR
 qTgjaXr19atSmzfOequgPSqAAxvZHiyW/cLcPfV3TOcLntx9jcq4I42R2
 McHKEEUPS9bQ2zWJDqsPhP4IooJFT0MyI9EObVfknpLoQJvLXxc//0k2H A==;
X-CSE-ConnectionGUID: oPN+o5ofR6Gm4i9re621TA==
X-CSE-MsgGUID: MRH3zO3OT02t7Wll/jT8IQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="100904444"
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="100904444"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 01:01:22 -0700
X-CSE-ConnectionGUID: wnVwwadASPKEAsPYcJKV9Q==
X-CSE-MsgGUID: le+1oBJpRbeWzplm6YMSzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="224555472"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 01:01:22 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 01:01:21 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 25 Mar 2026 01:01:21 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.57)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 01:01:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TkPPGUh7pfA1Ol4jhU+ln4gWdI7aHA/UJp4Osmyg+qQGHTOIMWfGVGDwr1rAIohzp2fUIDv6ZNVvM/K1cjSii776RQHijqp/YJOdYwXGKXj9vs2TYKp+95kXurq4EtMRausctlNSH+N8a4Rqnrka2yujXEnlHJOeZeEdY/B/IJjKuEoRpBeNYEaGwRLEJ+iTyoL7qf1rWdl+WO3CZjQlgTU7bRiopqQI7AgBl8/uJZ6zEeUEpMBiEnU/2ypBstPNQZd9PNesYnNpJzwoa3NTbyRC8xar+mcgeMH9VNS7YThiK1hP9Nqzqsshqcmn21SOEPfovtD6Ob4QUrfD1eOSjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=674XnxgAP5GAT1ZjgVwB8reo7u2TdoTa0Wo+MJde/nE=;
 b=j6OorhzkGaYKD1prs+ORWPaMxcDsL3Saug/pExeNboFEyBY37TwRC08w320Zn0ymUsQYyrebY/4iGaO2uv+nMbFQHWqIhFijiYMDA7JblzJrWDMQej2ylqzysVZQVlADYXUwo9sCW0lp5Bv/UcGf9hh83M/MG6T3aWD4Jijn8SziIaMY5quu18vupFoX7NXU4xpwah1bQn9mj6w5v5HgNGDJ5WpdOzz/+xtzrcNXy4VNjUgDg4xIGi2NgwF8nR8wfKEHWLG8Wr5jlXTCmyIMIHpoawZeDx/6ePvF2SrKiO6ifKo2DF4y9qbVMl9T/CdPysKJUMBdk4fJlSVXFPVhbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB5093.namprd11.prod.outlook.com (2603:10b6:510:3e::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Wed, 25 Mar
 2026 08:01:17 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9723.013; Wed, 25 Mar 2026
 08:01:17 +0000
Message-ID: <420eb65e-1e59-4f8e-86a4-334a3bf0dad3@intel.com>
Date: Wed, 25 Mar 2026 13:31:07 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/19] drm/i915/dp: Use revision field of AS SDP data
 structure
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <jouni.hogander@intel.com>,
 <animesh.manna@intel.com>
References: <20260311113611.3393194-1-ankit.k.nautiyal@intel.com>
 <20260311113611.3393194-11-ankit.k.nautiyal@intel.com>
 <abP7Lq--PC69q5ex@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <abP7Lq--PC69q5ex@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0178.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1a9::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB5093:EE_
X-MS-Office365-Filtering-Correlation-Id: 2f04234d-520e-4c5f-f562-08de8a44b0c5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|22082099003|7053199007|56012099003;
X-Microsoft-Antispam-Message-Info: 1pwx+6rJa92DImk0Rj9zU5VdtP7dUCtBJp636+2e42J3eQhK9iG/HUi2EAvlvL6N9uNNggA+s92MKO3abkpF5bADCEKP+tEtyfRHxuigR2w/fP3e8IccQb2RKD1PXltL8+DGOPz/PM7NJ279QBZWnVoy6f8n6sHYjATFJu02TXE2IBXsAMYEPhs4iZst864zQ+owrrMsUBxjQqiBfK5ufsohFJ+ugPsAqYiBBZSF1MiZKWf7w77mc9jHi5j8uyRHaX87YaIbXjj8/149MXSTR2P4KdDwYKcCvONKrm4HaPagx0orDFv76ykXyoOxAuwJ7nDoDTyaqY7zHb54O2GUvqmA+rphC9ZWT3EMi/I2s02LaFMEnSz6A21B4sU63lS6wNnfUbVda12zjfZr/qW4eArJNSqYKpNM6iOjzYcpTew3U5BSuRGFJeOYOYAyrtfklbLQD0RQWLLgWe82s/er2vziXImOwR2SSpxOACh3MiyZGs03cbYth+QwlxEMAR0UQvT/6H+/UwfFnbvcDv5Vy5lFpPr8tQAKDTb8/KeZNsdo2eG5B//ac0rlz8tHp4Lg6WafhWR0+c2PSMzzRPLJLCpsJx8kw+gdn8GH212Pc7Y1SXRAWIFibsGkHRbK80xHrMdnikr2jI2UzKa8PTqPBMBfLTyCa5qt9jvxnFJRCOUXxrrrM/sUgg2iM0mDEmCjTxYyqXzeOElvNLSeshQ15ZwoO0M3/2iYDiGO7Bq7WGQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(22082099003)(7053199007)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?alRTaXZlQ3Q2R1NNSGhSeTRwMmJqSlJYb3dpSzFZVWZMYmRhQ2VGWUgrTDIv?=
 =?utf-8?B?clZHM2dYaERIT3pTWlZ1MllMTFMvVk5vdTJ4aWFzb2lJVTFCeFBjUEkzcHB2?=
 =?utf-8?B?aDRJSDA1bjRHY0dSbzFvTTVXQ3Zjd3lLV2RVbWRrQXNNM1R1Rm1CeC8vd21t?=
 =?utf-8?B?a2tzTFpsSTJsbWhOZWxKWnYzZDJrenlVZllLWHZ1ejRwNDdhSGx1Q2JuNkQ1?=
 =?utf-8?B?Ty9WVCtzLzdBamszSlI0UUIyc290MzYxQXRhWlhPNjE3SlVmYUlFbFh5V2dz?=
 =?utf-8?B?U2Z4Rk1jMHdERDdxdXVwQStNWG9MMTNabUEzdjZrbFBPTmhMSCtCbUlpakJU?=
 =?utf-8?B?bEo5VEtLNDVjWWZ3YmoyeExFa2s0TGJVKytLNjllZzlNZzhxMlkwWTY5bWs3?=
 =?utf-8?B?Wnp0RU5YMVYzTHJUb2ZxZnNpQzRQdUppYnZZTmhZWEcxVm1zbThDRElyd05z?=
 =?utf-8?B?bit3V1dLdmZubjFud2VnS29rbCtTRVk5eFVLRlNsZitJUmE1bDh0emljL09r?=
 =?utf-8?B?MEpjeE9BL0E2YTJSK1gzdzBWSXZGV3R5VjN5VGRjRWczNElFd2Y1S0Z2d1V2?=
 =?utf-8?B?UXZUNllJSkVmN252Z01wYUpGbjBHNkIzQzBZaDRoWndnNzBFTFpaeTRzeHZE?=
 =?utf-8?B?VHExNEN1Y1N1SjZPS0wyM3lLSkVOM0t2YmpwRWVuYTF1a0M5a2NFNE1yTXF6?=
 =?utf-8?B?RG82M0Y1aXB5Z2dXU25nV3E2NFRjRjFBd2dISkoyaXJ5RndtcW9DaWtUZStp?=
 =?utf-8?B?bVU0YkRGTDczOUdIQ0h6c2FOdmo3OVpwTjA3NDFhc3QwZS9zYW9zTDkxeVN3?=
 =?utf-8?B?Tmc1RzE1NUFDcDMxakNFZVljamhBcXA5cXkrQzkyaUQ0QnhlNXpTZDZQdzRn?=
 =?utf-8?B?QWtkdjdRM0lhZ3ZkTGNDcFJaM0VCWHQxMUIzREhIcS96aUhHVG9uY3YvRnV2?=
 =?utf-8?B?R3lvWkZ1VlI5Y05hbmdFbVRILzdpNzhNQUtibkx6T1R5YnhFSGlvK0lHRS9U?=
 =?utf-8?B?WGdVRTVTMmtZS2Z6S1JuNVZwSVYxMzRDeTFLL0VlVjNyZ2RjV1F4WExEdDlz?=
 =?utf-8?B?MDkyRWtZV2dQQVpJNU5QQnVhRTV1STZSRWtCMDh1c1RmUVppSTJyQTF6dTVa?=
 =?utf-8?B?YUh5dDlHYUFRb3ZqaU8ycE5oM3hLSEZ4cGVtcnBXNVhOaVkwemJzclJRZEds?=
 =?utf-8?B?MDJHSE11Umdqd3hSalZFSVQ1QVgwc1JzSDk1VXc0cUdaYmNaeHVMdHAweHJk?=
 =?utf-8?B?dHZRYkY1cGpLaEdLMUtOVVExVzV5VGpvMHdxOWZMbTN1aDlBUm10WWV5aVZ6?=
 =?utf-8?B?dkZpR0xUaXBKa3VESnhPcHpxcTdnM2l4eXd2eWhPNHdvQXR2RlpwWFptNHdY?=
 =?utf-8?B?aUkwOTZNcU5zdXNFcEk5N2dLSlVXYnBzd1R2L09YNlhuN0wxMjJxSlU5eGRN?=
 =?utf-8?B?QmsrK2tzRnk4UlpPNFFFcS9oQXQ2ZGt4SzFQNy9yelRtVHFod1dsTm5jMmpD?=
 =?utf-8?B?TFpHczkvVC80QnFMUVp6czM3V3ZreHNFZGtiNzBmanZEUGsxSmQrTnVYaHRP?=
 =?utf-8?B?QW1aWFkvRGJuSWlhdmZtbkZLWkR3U1BVb0xCVWdXeW9oN3JyTUFIRUpaVWRQ?=
 =?utf-8?B?SzlDb2h6elptQ0pabGlpWkpxYnRUUTNqOFpKeWNabjhkb3NjWVJZR1YyZllK?=
 =?utf-8?B?cXg4UnFONjFtZWxWTzdxeUVKS0ZianQrRXhZYUMvdXNIdnBOZTl4SDdsVkVs?=
 =?utf-8?B?NkdFbXFyL0FzNGswdk1qc2NhOFpaNC91ejVlUWtONEluYzNnK3k4ci9pTXcz?=
 =?utf-8?B?L2d2a3p0cGVEQlJpQ2w3YWxPQmNZanREMDFqT1lyL05OY2ZuclkrZmQvSU1O?=
 =?utf-8?B?czh1UVhyY2tpUVU5YVlXOUpzNHQvbEc3ZWpyeEFEd3g1cEZWL25NN2tDdWNE?=
 =?utf-8?B?YlJGQy9rblM2c2tpZUhWRzZWOHFnRFJzZWlwc3pmN2kzWGd5c1haYno0Z01O?=
 =?utf-8?B?YUx6SjlEL1krSDNxZ3BhTUkyU3docXRxS2NPeHRFZlBQYTMvaDVSdVBpVFBm?=
 =?utf-8?B?RGNGWkt3alMxdXlRYkxXZi9XdXFkVkY5ZElvK0p1LzBmamFJeW9SMWdSQ2Q0?=
 =?utf-8?B?VHN1YmtSUFgwZGY4TlpybHV6MUZDcUlydThQYWkvRU9oUU9zYXJWUnpIbU9O?=
 =?utf-8?B?b2lVK3poaEZzOGVFUUxPbFdjb1A0Z1JmK3pJYU1zL3pNWWc2N0N0NEN3SC9M?=
 =?utf-8?B?Z3RFSjd1dTZOMDBWMFk1VEFFaWtSbGdNTFZvVWYxZW9XdkZWU0paTExmQ0dB?=
 =?utf-8?B?QkNOSGh3SkJiMG5jMy9kR1ZMTjNOQm9YSzBYaXV0cXdNb0loL29jMWxrU3lp?=
 =?utf-8?Q?CxCxk5GPpWv+NboM=3D?=
X-Exchange-RoutingPolicyChecked: ZN5uPVWJMvyKCK1h7uV5Um2vo+E1OQvGZ5yG+p+QtS7+pYA8V4qCtbhMZT29JnQIcEg+6+aZDL9nvDeni/EGKmOkRbbMfY3MWbAKP8vevpKQgzRnbBYOyjdm4qsCXo40KMLeKxOHJtHI2XJhTOrvQCitPmunWInIul9haUf0BDIk8DZS5H/3/aZvM/yDMuAhUHT8H89DnfdIg5lp5SZm6wTFLRYuNYYIlsCbB1la0XLPXb/PHpMB9CTKjxkWXSzGqd/0Usy8IfSdawjNmKz9uIdFMN8YOe7twAuvzGkuccB56O6Q4Eycas8NA5B1p2S6rpAAv5CA2ZoPxbtOt6b9Cg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f04234d-520e-4c5f-f562-08de8a44b0c5
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2026 08:01:17.8278 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UEyXM332OGJOQFC83uP4nn+RMsWU5ntWUj41dz3q5M5f79Ksl+yZhQDfrP7ZMObZCpDlOV4KOhAKqtR+wB5Yy70fP3DiKo7btx5+4Va5dtA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5093
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	RSPAMD_EMAILBL_FAIL(0.00)[ville.syrjala.linux.intel.com:query timed out];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: DE25A32111E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/13/2026 5:25 PM, Ville Syrjälä wrote:
> On Wed, Mar 11, 2026 at 05:06:02PM +0530, Ankit Nautiyal wrote:
>> Use the revision field of struct drm_dp_as_sdp instead of current
>> hardcoding for the AS SDP revisions.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
>>   drivers/gpu/drm/i915/display/intel_dp.c      | 7 +++----
>>   2 files changed, 5 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index b18ce0c36a64..88e1b503d301 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -4900,7 +4900,8 @@ static bool
>>   intel_compare_dp_as_sdp(const struct drm_dp_as_sdp *a,
>>   			const struct drm_dp_as_sdp *b)
>>   {
>> -	return a->vtotal == b->vtotal &&
>> +	return a->revision == b->revision &&
> Someone should add the check for the type and length as well
> (and other relevant stuff in the header if any). But that
> can be a separate patch.


Agreed. I will make a separate patch for this.

Regards,
Ankit

>
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
>> +		a->vtotal == b->vtotal &&
>>   		a->target_rr == b->target_rr &&
>>   		a->duration_incr_ms == b->duration_incr_ms &&
>>   		a->duration_decr_ms == b->duration_decr_ms &&
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 17af68a1a9e5..0d2403d48528 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -3154,6 +3154,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>>   	as_sdp->sdp_type = DP_SDP_ADAPTIVE_SYNC;
>>   	as_sdp->length = 0x9;
>>   	as_sdp->duration_incr_ms = 0;
>> +	as_sdp->revision = 0x2;
>>   	as_sdp->vtotal = intel_vrr_vmin_vtotal(crtc_state);
>>   
>>   	if (crtc_state->cmrr.enable) {
>> @@ -5117,7 +5118,7 @@ static ssize_t intel_dp_as_sdp_pack(const struct drm_dp_as_sdp *as_sdp,
>>   	/* Prepare AS (Adaptive Sync) SDP Header */
>>   	sdp->sdp_header.HB0 = 0;
>>   	sdp->sdp_header.HB1 = as_sdp->sdp_type;
>> -	sdp->sdp_header.HB2 = 0x02;
>> +	sdp->sdp_header.HB2 = as_sdp->revision;
>>   	sdp->sdp_header.HB3 = as_sdp->length;
>>   
>>   	/* Fill AS (Adaptive Sync) SDP Payload */
>> @@ -5304,13 +5305,11 @@ int intel_dp_as_sdp_unpack(struct drm_dp_as_sdp *as_sdp,
>>   	if (sdp->sdp_header.HB1 != DP_SDP_ADAPTIVE_SYNC)
>>   		return -EINVAL;
>>   
>> -	if (sdp->sdp_header.HB2 != 0x02)
>> -		return -EINVAL;
>> -
>>   	if ((sdp->sdp_header.HB3 & 0x3F) != 9)
>>   		return -EINVAL;
>>   
>>   	as_sdp->length = sdp->sdp_header.HB3 & DP_AS_SDP_LENGTH_MASK;
>> +	as_sdp->revision = sdp->sdp_header.HB2;
>>   	as_sdp->mode = sdp->db[0] & DP_AS_SDP_OPERATION_MODE_MASK;
>>   	as_sdp->vtotal = (sdp->db[2] << 8) | sdp->db[1];
>>   	as_sdp->target_rr = ((sdp->db[4] & 0x3) << 8) | sdp->db[3];
>> -- 
>> 2.45.2
