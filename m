Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 391409E4DA6
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 07:38:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72B9B10E5AB;
	Thu,  5 Dec 2024 06:38:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XkJ4YOPE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53ABF10E383
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2024 06:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733380685; x=1764916685;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=23m5IgFNsJYVieBXakZsRt5zYVd82EdRMy+3tE26TvI=;
 b=XkJ4YOPET6PM32aPNe1vuwpV/0JkaoLQ9DBqxmcqw09eBojm86xriYDk
 l2FnHY4sEuJJKIu2Ky51Py/Og5c0kKccas9KJTMO6Ysih3mQzyDdE20o+
 MALDgqDANB0/5WKH05l6Z4OgMaKFymOEwxd/n/fopH+AWwID/y+/YdP65
 VPHNkB3DPRW+OP1kML8vXVixVDu6oUA5BihKBP9zDZxGVbVRnDpAQsIkD
 MAR/7Sxux/G5rCIFe4o1m/egOukK0Yw+kl/6AiE6noB2Y/tj1/exjDSFo
 KF9AixwI2FWQuzt7rAAps5YHzRmWJz/jbCHy682maw9011kjupQO67r4x Q==;
X-CSE-ConnectionGUID: 6fuXVK6JS0u4uj6/fQaUGQ==
X-CSE-MsgGUID: CltWazJESw24h6A2srt+Qg==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="33589610"
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="33589610"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 22:38:05 -0800
X-CSE-ConnectionGUID: +YBhsLrQT72kZ66MDP/sAw==
X-CSE-MsgGUID: sNc2Pr4QRmSwnqq8vwROvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="94187891"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2024 22:38:05 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Dec 2024 22:38:04 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Dec 2024 22:38:04 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Dec 2024 22:38:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D2c5l5fhMnP5EBPlQFSHBTdqFu+ZJ9Y/gas3MGkBOcfKRtWtB2qnrNkbLEqF68ifM98io6i9EDSxPDX827SQu9L9VUny4/fdfsMCTbM/ue4dgtN3rtImEUdRn8sVQlimIcXE0/dc34b/yWryOQQFS1aAgZB4azpJxlACM6DEDh57j28bWfxs0Il/stSjcRbObG69vfKrbnuRYH/7SLxA7jf6Hyi1Fk2GgHx5T6lITYIwet6uCQ4utbhSALVaPKSjfEUJAYziE4R3BASgJuEh9zO1UIIfIWNMVy00ejDYYXwKO4hBwRpLF8P5OMNzkl+LPh8cWQ3mxnmJMl4b4dGEjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LjJXRy1NTpIIT+DD7bLw+zd2tiJGFabhsQAZ1+EdPqQ=;
 b=B+5CVi3fUa9V/0dMkTUBwVd+6OTHPyDeuHbBFVUrmaSNPBKJmooJTewZtUi4EzmDx6fjO9qwFy5K/OFGc2cXHctp4z2gxPciQzxlrWQl5mMubnskReGCNOfKsk/NHvwwkdnPEczfZGAaKoew1J3Jo6rNfxDR6GBUWO1+V01OWkEy+AnGnJLZ85MGVfyKUEH/HWhcMCZtc3u+CiDLaPO7Zv0TaDGQKEaDtlb/AwzsR2v6ybEsj7QPRNSmLm6XZMNsElJOxTN5sy9/8eGk0ijwJAExrjMjHfVodDYyrvHrB+jCTD5NWHLn4xIbTkHjxAK/1aksLIByqUVGjVZHfj95Kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by SA1PR11MB8279.namprd11.prod.outlook.com (2603:10b6:806:25c::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.20; Thu, 5 Dec
 2024 06:38:01 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad%6]) with mapi id 15.20.8207.010; Thu, 5 Dec 2024
 06:38:01 +0000
Message-ID: <261f6705-665e-4226-8fc7-b62ae95b7be1@intel.com>
Date: Thu, 5 Dec 2024 12:07:53 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915/selftests: Add delay to stabilize frequency
 in live_rps_power
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <badal.nilawar@intel.com>, <karthik.poosa@intel.com>,
 <anshuman.gupta@intel.com>
References: <20241203061114.2790448-1-sk.anirban@intel.com>
 <8734j559jc.fsf@intel.com>
Content-Language: en-US
From: "Anirban, Sk" <sk.anirban@intel.com>
In-Reply-To: <8734j559jc.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0124.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:96::12) To PH7PR11MB8252.namprd11.prod.outlook.com
 (2603:10b6:510:1aa::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB8252:EE_|SA1PR11MB8279:EE_
X-MS-Office365-Filtering-Correlation-Id: bfe5792e-49f9-4881-9b29-08dd14f75d26
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WmtZZmxxdjA5Q2xzRW9IeXdkM3dVTG9kRE00WXc0UW5Ia3dmOUh3Wm4yang0?=
 =?utf-8?B?SUZYVHZPdTA0M0ZlWHRKYW5MN2ZxeGhVZ1dTWW5ZenptclVBcGFNMHJZTTdH?=
 =?utf-8?B?T0FLdmlIMGF5akkxMjFnZE1DNmM3MHdSVzM2cTkvSmkvVDdVekdWcXZNSHdH?=
 =?utf-8?B?c2NnbUhBZFJvSTRYK0pzUFNScEQrMjZYMC9aYW5oUDdSeEdLTDZ6aEpDQmxI?=
 =?utf-8?B?cTY3WkM2TEE0bm1oNWdyN3ZLbCtaMXlLQWoxSHB0OXNFMmJ0Z2kvMDh3RHpP?=
 =?utf-8?B?d0JSbFZSSXMyL0t5NkZPV3NkOVBCVFA0cGtMUzJISUJ5M3JZdU1kV0JwVkl6?=
 =?utf-8?B?TjFwK2s5YWk5dzVBZVVNUWdlSmxYdDBmOUxRMU5NSkZJdWFuZk9qOTUyMDUr?=
 =?utf-8?B?SjlBRFNQb05GTnRWdzhwbHYvdm5lUjNZRVN6U1JnaDVuWFM5ZHhtYzJVQms3?=
 =?utf-8?B?VUNxUDcwN2czanFmV0ZqOGdvMjdrVFZ5NmJHZmJBY2VKZkRKRHlpaFFxaWJm?=
 =?utf-8?B?a3N3UUswSTV1OUZia09qS2NGcVhRV29QV3NQbVBzTWUxb3lxZWl4U2dIL29i?=
 =?utf-8?B?WmUvV2dsVitIVGJ3c0VRMUV0MVZ0STRnN3N6bUpHWjhDcUxVRDRsUVlQKzRs?=
 =?utf-8?B?WHhCZ2ZPbWcrcERxTFNqY2llWGx5blFLL1publcyNzNwN01ONmZWUTc5RGx6?=
 =?utf-8?B?M1RLVGVxVDVnQ2RXK0FRQ2ZqSUJJWllYRU9sM2l0WGY0b3djc3FFOVFzNWFU?=
 =?utf-8?B?VUNuTEp1SU56TGZPTVdob1BUb0JlQlN4amdpU1JzY21Hb0dZWk12dFhJc2pw?=
 =?utf-8?B?WWU2cklMVnpXeUNoVzluaTNKM0ExbDI3ZHhMVDg5WnNyS0drOE1hQktEbWFQ?=
 =?utf-8?B?bGJKYXV5OTdIQXhSczMvdUxRL1hJMUpvRHFIQWJ5ZGZ3NEEveUgxcGRGTVVW?=
 =?utf-8?B?OERITS9LaVRQcFJZb2pWSitGN1Q0OHg3Z2M0Z3BQeWVrWGJhQ1l1VmJIcnF3?=
 =?utf-8?B?c3pnK1V2MzRWK0MyektscDc0ZXBVd0h5SHNTSmdDNVgyTHE0S09FbjYwMmdr?=
 =?utf-8?B?VXhMczc2VlhCRTV3NGEybEZEVGZudHBpZzE1dFZFN0Y2OHpCcGRYVkpyZTRC?=
 =?utf-8?B?bFFkcDFpMHdyUER2aCtYMUdEVTRDTFM0a1NmaWFSTU5vZ1FJNmp4NXVZQmZJ?=
 =?utf-8?B?c1ZOS3RiMW0rd3d6ckVlano2Zmh4R2wrQVk0T2lRTWVkMTdScEZlWjM1ZlMr?=
 =?utf-8?B?YWVWQXJRSEFDL3cxT2pEQ2tRVHhSd1cxRDEyMEt1S0x0WExqZ1VHUDJqT2gr?=
 =?utf-8?B?OCtlVytDV0x3SmFTUFV0aXJTZzFSSFJVeXB5UVdwRHl2U3EweHN2S01STTMz?=
 =?utf-8?B?ZDF4dFVNR0lBc2wydytNTnNjT3p1YWhxTzRjNUhUbE1FSjBERUxKTDl0Nmhl?=
 =?utf-8?B?WFE4UFdtT29ENXNLdlBmb2UvdUg5OFhvNGU3andKL2VQSkEwOFh6cTVndVc0?=
 =?utf-8?B?cWpTRDExNXo4WGtxVllsb1FpN05DTUQ5NWEva3VsK3B0T2VsWmhVN1hZK2V4?=
 =?utf-8?B?bFRHeDFuVnd2ZTYzemxyU3c2cFY1Y1JMNDhxVWtWbnpPR1M1UnRabGRlakM2?=
 =?utf-8?B?WkF2ZzJ0QUpoMk0vTVBtdXNJd0lEUmFpZ2FndEErd25zcmdaODgvR0pIOGJ0?=
 =?utf-8?B?TDFhMGJ0MUN6VGp6dkJGK21Ya3gwOEI5OXlJZjA1dC8zc0hrUkFzR3ErL0lI?=
 =?utf-8?B?N1Z3TnVLaTU5eCtEYk9haVI1S1A2RHJPOGQxVGZ0aEdXbE9xdGJqWk1uanlB?=
 =?utf-8?B?a3NZVlU0TEo5cXNBc09VZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OFZrQlNjR0l5dWtMMmxBWkxqUVdaNnFsNzJOVXZBVVE1SFZtUmxUV09wMDkz?=
 =?utf-8?B?cjc5a0RPKytEZlBvWGNhR2h1Lzg5RUo1MDJLUEtXSXkyeCs1ZU9UcU1OZGcw?=
 =?utf-8?B?QlRwZ2ZrWWRQNVEzWFU5Mk1SL1pzOXRZUVVTTGpJR3h5NlVsYUw1TlNzL0ZM?=
 =?utf-8?B?SUVUa0wveGpkVHEzSGFOMHlpamorTEl3YVNSMEFxaURFeFQweHFQdkg1TjJM?=
 =?utf-8?B?ZVptSGRPOXVXUmxjR1VLKzJwRUFpZnkzWGhONXU3M04wQ2pkazh0dFJzU0Vw?=
 =?utf-8?B?SmJMRDFxMmVuc1Noayt2cDNjeTRqSC9qeitkMlJzOUpDOVk0emdOY01MdEp3?=
 =?utf-8?B?TVpjTmxZckZCeTBpL3VUblRWS0hMSEJaaUxYdFlYYlpFTlJURkhrdUtnWFll?=
 =?utf-8?B?cEh0aUJCM2o0MGRPempTRnk4TnJUTHpZVlNtS2xqRUpYR0pCZVcwbytCNTdj?=
 =?utf-8?B?aG9LSGg4cDdvVzNUWkNlZFlwVlU0L3g1eFc3R0hkTi9Xd3Q4VXpFd3ZtMDJL?=
 =?utf-8?B?QmtMMDdCQUFMTTAyYnJ0eDgxTWR2SVo5dHFBUDF4TFBvaGx3SjJ4Z0REZTZl?=
 =?utf-8?B?MlFoOGEwYWh2ek1zYWNkalQwajg5czBQa2ZRTEdGZkl0TlZJTzZFRWREQUFV?=
 =?utf-8?B?cXV5dVU1djZIS01EYnp0LzA0bkVTWjVVa3ZBd1RuckNxa2R0MHJMbXk4bTIy?=
 =?utf-8?B?VmFraVVoV0hGQW8rMWlhWXdTcHNiNFFrbE1UR2s0VEhYSWVJQkdNa1RJdWlI?=
 =?utf-8?B?RjRhblNxRWFqdGhadTVLYkhkUWxtd1JmcWhkTXBjaG9UQ3ZhOHNZemIrb3N3?=
 =?utf-8?B?THg5YnAyM3pBUzVKQmFlS2hlWW1VYzJxZzdxUFVFT25wWVlvVXQ0SWFxcUpD?=
 =?utf-8?B?UEZlZU1QWUg0a0hqYzZHVFlmS0xEYVlwdVRpdEZtRXVhWVdoWUZuN1JwdVA3?=
 =?utf-8?B?Wk4ya2JlaDJJSkNJNVk1U25KbThKbXc2MlNId2NlRXE4VzRmelQ5T1ZyU1Zz?=
 =?utf-8?B?TUJyYUtNVWtZQkJqU0UwYjFOZDBjQi9xY3VWMEFubkFxWm5hbWw2SzE5NVAz?=
 =?utf-8?B?SWh0V1gxUTZpSW13NXFnaVdaWWRXZDMxR2VJYXNnOVlvdGVocEtudkR6aEFB?=
 =?utf-8?B?WUdESzVndTZlLzJqTk5VRmo2enZxU3Z3YTB3djRwRWlXQjE1VXgxL1Bkbm14?=
 =?utf-8?B?cHZCeWVKUWtRbkhZOEppYk0rV05kQTJDSU5GaVRKbnJJOTF5Vm9ad3AybzdU?=
 =?utf-8?B?Uk5WMEpHMTFKNDBpNWNtMUF5em9tWXVIUzh5STJsNWlrOEwrTTkzYXlmckZo?=
 =?utf-8?B?TnB2NXZuR01uM1E0dnF1L1VHcG02SkxYTHVBLy9YZTcwTmJxMW5TMUFmempz?=
 =?utf-8?B?N3dJZXhGY0FVUjJmQ1c4dXRDbE9PeXo4dGlCUEZ0c2dnUDZFQXFBTDdzWlVq?=
 =?utf-8?B?ZDh6MHlrcUZ4QmFWOUUyVWJMeTVSSzhkRWg0MUFCZVkyd0FYVzM5Q2htTlBP?=
 =?utf-8?B?aTREREVSWUNrMGFrQXlwWmRLWGZVQVhWSS91d2pjelZRWVVjZmhvWjhJUmNK?=
 =?utf-8?B?dmNHaTY0dUs1eGM1TzZZUjEvc0xobm12S0NtcWcvSVF2YTdDRkIvMEpyY1V6?=
 =?utf-8?B?VS90ZzJTYTlsLzhKVXpaNllwd1pGVjdnNVhtS2hudTI5cE5RQlFqbnJjNFFJ?=
 =?utf-8?B?SHZPWXRsV1VyUFFuVHNyVEhGUUx0ZlAyRWIvNmI4NDFnVkVKN24zMmFIb3NP?=
 =?utf-8?B?VDhMOFhrNlhkY2V4UmJvUlBzT2UvWUdvUXJsZC9ldDVRWVVTb096Y0dwNnhi?=
 =?utf-8?B?L1gyTEdVY2pCNFU4OUVpQ3VIaHdtZ0JOeWdqWVZtcXg4MGhQcjQrNnp6UHZr?=
 =?utf-8?B?U3hXQjhNVzFNRFkzRHZMS01PS1FyVW1sWDZBcVZocWVaVFdQY2dXQjBzdGZO?=
 =?utf-8?B?ZGRSSy9wYW56NENBVTE1bXRud3hGRTZ3YzNXbTRueHZvUWFQVXZkbndvYVdl?=
 =?utf-8?B?ZjhYNHVUblQyZ3ZaSzZWUkdiSVdTZ1ZWYlBZMGtsS2daekhjMnFBVGFpTXRk?=
 =?utf-8?B?aTdjbStvL0s5YjNzaG9oek1BTXdtQm1yT1UrYVFHRk9nMnRFUUZDZVNJN25H?=
 =?utf-8?Q?ghLyythpFrSnfQUOaw7DSWmkF?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bfe5792e-49f9-4881-9b29-08dd14f75d26
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2024 06:38:01.0074 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Hu77CVLiHJSXBp52OpzBK3XnHMN/EYSgyGDAHcpFuoHK5dLh9zOhfjgu+7aOlpS4Vo0e7ncL3EswRCgC/Mh48w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8279
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




On 03-12-2024 16:16, Jani Nikula wrote:
> On Tue, 03 Dec 2024, Sk Anirban <sk.anirban@intel.com> wrote:
>> Add delays to allow frequency stabilization before power measurement
>> to fix sporadic power conservation issues in live_rps_power test.
> Looks like band-aid. What's the root cause?
>
> BR,
> Jani.

In some cases, we have observed that the power consumption at the 
minimum frequency is greater than at the maximum frequency. This is 
likely due to the actual frequency not settling. The issue is sporadic, 
and to address this, we are adding a delay after setting the freq and 
before measuring the power.

Thanks,
Anirban

>> v2:
>>    - Move delay to respective function (Badal)
>>
>> Signed-off-by: Sk Anirban <sk.anirban@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/selftest_rps.c | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
>> index dcef8d498919..c207a4fb03bf 100644
>> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
>> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
>> @@ -1125,6 +1125,7 @@ static u64 measure_power(struct intel_rps *rps, int *freq)
>>   static u64 measure_power_at(struct intel_rps *rps, int *freq)
>>   {
>>   	*freq = rps_set_check(rps, *freq);
>> +	msleep(100);
>>   	return measure_power(rps, freq);
>>   }

