Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YB5vCF+D/WlcfQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 08:31:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF9D4F27A4
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 08:31:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B421410E100;
	Fri,  8 May 2026 06:31:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HLChRIgs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C74DC10E100
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 May 2026 06:31:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778221915; x=1809757915;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=pbJ/TTzez2sXfuwhFCBbrRd+NGlM+c+GEdyvjG9hdws=;
 b=HLChRIgsfG3WiydGKX50fpGskIQUuwdqtE0qb3jG5VmF0VUGa1cZURFx
 0MbGB5mv5GSd4PUc5UwY6U36elSIQVMEsIfOd5pV3hQOY2TncF4GglvQC
 f9eVq3hl7mCLfSRiARogZCQSJjL6AVPly1TYmOstQqDblIVJoj640D4wY
 fp6gADmKOcYuduU8VrKrgXgwRIriTdtmqk9g8AIZ1ulYYmbF+gboDb7Rl
 Hq0bHPrrM4clvngEsuGlGCWlJg+2Z3p4n1cmfJz9SmQRkkj9wVvPKWnfZ
 1wPxw+s+6OOTzQmbGufKgAMKwOiK1+/NpiypLeJq2IpC4me/Thm5lbytV w==;
X-CSE-ConnectionGUID: ohCWWo+vSbmS1jINDAC0Ww==
X-CSE-MsgGUID: zb0IatkOQq6xU7o3WT6bUw==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="79039836"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="79039836"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 23:31:55 -0700
X-CSE-ConnectionGUID: PiYxvAclQ3uzam5noSySGQ==
X-CSE-MsgGUID: Fdfh/Nw/TCykzreNO4Ek5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="235697344"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 23:31:54 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 23:31:54 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 7 May 2026 23:31:54 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.11)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 23:31:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hyXfvX7zRIimCV1vfVDYGFylPTIOIPKN6uQd8+GoNm3As+pT3QvXyeFCmNSqx7swiksSxf+7TizosSxtTiGsioQIABzZVggK3QHaTbFINLPXyoIT1mLL5d1arWBPPIKb0pFz6TcdmXr9CPSaWKvKPB2lkKzk+C0xA9XeBk1HX64MHrNoqIbrKgVnpOmD4xob2mm92P0TTxmYrTYoFmiUk/bJ25AioO20t7iqZix2kgMiHfll5kCL1qaYDxftxuoU0U2OtWcCE00cnDBEWIfRy7fgEU6OtHX1d1jqJK+oaIcttUTToTKpQtad1grHqlyBkHarQJCCn/l/K9gow7WFnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/qjsubM+9K46hZ92sCAA2PjDN492FEcuKflIbD0OwOg=;
 b=XkYOVHd//W+TupTNnxwyGlPbsdUTGjybvwiw1UTL9CnxdwX9KsUDNuI8tHQAcawLAd65JCKXCgKKRx7FjawmJzdtXdiGP0GTndQeNJVowNBx+UWEehzOvudalUZgyIOkBc1EsDvT5HI3ORfsptSqUvCDiWQDGnbW3PEwjsqVTtjNmhSllQT5QONNkHMSDWPkTPRq2h09XwrssKVLKxVQPpLdon5X/qAHZysc7EiJ2JITsAg33T/wX7oS59xu7XxctH7gCq2jnWKs1u0W4yIMuqm3ks90BmRgAfiEjXAjRaByTtPobJkeLjsiDYOxfmRvUcBIXPP1YTLVvRTJR0gBnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by PH7PR11MB7451.namprd11.prod.outlook.com (2603:10b6:510:27b::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.15; Fri, 8 May
 2026 06:31:46 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9891.019; Fri, 8 May 2026
 06:31:45 +0000
Date: Fri, 8 May 2026 06:31:34 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Andi Shyti
 <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH v9 1/2] drm/i915/selftests: Prevent userspace mapping
 invalidation
Message-ID: <lh4sfvdvnvzeyfgpnhksvpwscpgwpfyu5ncmbcmliqirwzrd64@x7awsqvnshnu>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260507142409.1913513-1-krzysztof.karas@intel.com>
 <20260507142409.1913513-2-krzysztof.karas@intel.com>
 <cb8a871fe01b0c24687da73490a756466ac3755f.camel@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cb8a871fe01b0c24687da73490a756466ac3755f.camel@linux.intel.com>
X-ClientProxiedBy: DB9PR06CA0012.eurprd06.prod.outlook.com
 (2603:10a6:10:1db::17) To PH0PR11MB5064.namprd11.prod.outlook.com
 (2603:10b6:510:3b::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|PH7PR11MB7451:EE_
X-MS-Office365-Filtering-Correlation-Id: e86e50f6-ddb8-411f-3e43-08deaccb78f0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: kqJWHPLRnGUca7kDUD41dRuVCF0SjPEhK/Vi6XQWeM6v5YSApqbeCrBhw89GG6OnO58u26TQ7gIxDUMr19w9cxBX60Bz6wtqGVzG3qKF+USq2wkx2F9Mb0znCUpW1x76I2g6mIHkCQI6X5A9MZAdjhBiM/ug6TVnovBL242RS/Mdu6cv3WBgZeK6XA9QnVePeWll1VFwzwrxv3zijHKxJZIw1O16+FXWbIwcj8SWzcGPhIeRIZ4q/RxWo4MbvnVJVHDjALuj+fsLWFvVgaxUwuU+j2p1ZvBVdcXN0DXzEtNEH78KbvKbxaZ9Z2jAAOJc+9w14MtjsSLV2/8GXkchAnyVvFpONfWJfXsutIDIX6X6jxEAH4U9/NTPk5j+qhaeEXD8f4CrKTE72bf45g6jbB9IupFka30SiC6/M1Bx1upjrYZpSZOZgYt4fXLFRicVumFcUW7s4MGGn6STcyQP4dQU3IjHVD6rMbRyBY4/0HZeroXeyD/LFXzMjSMu+iP55OG/D4jNqcRQxA9dyMe3LYssuxp5aNsmVmwaWqu7nfON7/p9sHlh9jYAK+10ZdK1XvUUIhj0ux9Sqc/8cv4B77+jTK388Ndi1FaYMk15k/neOiMUy/R/dKOOnDZS8dOhn7ECEikcOpVzv9Tw4K1bH/oH9nd2jzxvfnuoDxV0yCq4f9YdY+w/KuBd8aXFQYpj
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VkJlMFNMbitySTVjMWNwNS8vaENlMnEvM0dnZWJLaWJKSmdBNTlUb1dMWHc5?=
 =?utf-8?B?ajBYMzYveU5OWVZzN0ROWW4rRHJ1M1RCc0N5VnlnSFZXdHRFbUorZ0ZubTE0?=
 =?utf-8?B?aCt0WGlhS2VBaDRpQTNaWUJEdGhiYnBGVnRyL1NibTdLSnVBVG1MWUh5UFlN?=
 =?utf-8?B?TTlSRGFEdnhockZKZm9pYVlrZUQvVlRrSjFBZkN6bDhaTGRzS2pNcHQreDJM?=
 =?utf-8?B?WWpJa0FNdWNKbmRjVDNSWmNGK2loWEw1M2FndHpJaU82QjhZVTRIUFVpcTlq?=
 =?utf-8?B?Ujl2amtYUDFLanNWK29qYlpsbjNocEdrT2hCZ2kvUGVXNGpKZ0NPVUE5S1k1?=
 =?utf-8?B?S0hWcFRqWWV2QXJhUTFFeDJXRTlCTklhZjVBU3dieGNlZklqWVB2c1drelFw?=
 =?utf-8?B?TTlDc3lLdWxFWVFkZjJHOXlBVGJURzNFM3JhenRrZmVxN3FiT3o1dG9hbDhx?=
 =?utf-8?B?M2dqM1c3a2gvYStKQjRDNjVUdGtHYkM5eXFvWmRISG5TM014MDB4Mk1JcEdY?=
 =?utf-8?B?L3I3MVprYmN5bCtxamN3Y0tUKzJIdkhrN0FsdTBNcHBiSGhpVitCWmJtaHYz?=
 =?utf-8?B?bzhoMVRMVUZ5QklueHgwbExKYUJsZmV4NFVIK0ZWSmtLbUM4cG9ZSk12Rk85?=
 =?utf-8?B?aTdCNURiZk9EOUY1bjZWMFNRcWVaekYyRGdKVHdQNzFwTjlXM01uYk8zOCtI?=
 =?utf-8?B?SW5NbnRsbFhnYTd2bkkrSnVsNy8rQWRZRzNvOWhtN3pCK1pMblZBRXp6TE5D?=
 =?utf-8?B?M0ljSHNXSTlBVE5lVUFFMHFKVTcxYUZRSnZtQkQ3Z2hoU25wNGpzUGpZVWZ5?=
 =?utf-8?B?cHhROWovNEJXZlAzbGRKT2NwcmNWRmVMRWE1TnUwSzE5Z3VOVUozdytVMGdC?=
 =?utf-8?B?VWVaand0SkM2NEoyalMybEptdDYxZ0g4RDBsS0pHSXpFNTYwOFNvd0xKNnA3?=
 =?utf-8?B?a2RRUzVEcXhXajJZMUxiYW5yaGVaYU1SZlgxaFRuV0pMVmhYY3psUlBlM2N6?=
 =?utf-8?B?YnNSN2lOVkZlK0ZKclA3bW9qZFBIdTVSZ2cxblNVeWY5VkF4OTIyaHNZakow?=
 =?utf-8?B?cDd2eXA1R1F1MVVuYTM0VGFhdFpUNTlpa0Jkd21VSDA3Qmh5cTVwSzVLdEJh?=
 =?utf-8?B?MzFlRitkdVVoUDFucGxTVGN4YzBZai9oQ3puNFhBRDhKN1psVWZDS0hBb2kw?=
 =?utf-8?B?S3FONXptOWwydXcvWFlmT0VrS0VjZk5hTWgvZ3g4RVpZcHJZNDdubTVqMWFR?=
 =?utf-8?B?WTAzQm1lZENDQnNWUktlcWJZWnR2MTdzVTlhd2J2QUFkQzAyMVFpdjdOZHNJ?=
 =?utf-8?B?ZG90WTVuTElVa2t0ejJQUHp5N3BqMTFObGtyMGVSUnppQ1FDTk00aTFZSDFP?=
 =?utf-8?B?NFc5czk2UmZUYncrVmdDNTZNVzROWlZRUW9rVDdMQUp2bmF1bjV4Y09SK2ZN?=
 =?utf-8?B?OUllMWFHUWppSll5RG1NZWNpaFYvSDg3QWlDUGlkRWtMcndBZVViOVc1dEZC?=
 =?utf-8?B?aVIveTJ0MCtMUGZ1Q0NLS2dkV1B2S1AxaW51aGE3ZjhXV1kzMDd3MXZzTktk?=
 =?utf-8?B?U0N6QnBGb2t1VTZRaDZPYVdPZktjYjIrYy9OTERSVVJFTDByNjhVekQvSlJP?=
 =?utf-8?B?Qy9kZUhVaTRNU3pqYXRoRTlZYjdWNTNReURma21uOHhEb0VmTmJmdnk2Vmkz?=
 =?utf-8?B?M3lQRDdWbEdNNyt5YXc5c0hQKzNIeVYwU3JJVExhY1dKNjlVZm02SEtmaFZ1?=
 =?utf-8?B?T3RWQkVlTDVDTytYZTJvTkFtUFBrR250cjlwd09xSm9TRld2dndPL1ViMm1p?=
 =?utf-8?B?SlVNcG1OLy9zOWNGdU5wamxKWWJwaE5kbHVEWlpsL0pmMU9NaFRiNHZUcVFX?=
 =?utf-8?B?SHhIZmxuKzJ2UEtUYTdycjFiSGtCYlc4T3c1cjdjajMyaENkQWpZOUxWNlZo?=
 =?utf-8?B?YVJ4ak50SE1ad3F2V0RobVFlWVlTQk5HYi9lT2FPTG1nc3hndm00ZURqbFJQ?=
 =?utf-8?B?Mnp6aDhZaHRjUUh1WXFCL0RiWDB1SUU1ci85WDlybDY3cEg1d1BUUkIrSEtW?=
 =?utf-8?B?ODd4RUhJZ1VoUTBkSjI3Nno3b01LSWxhKyt4SVhKUEw2RFB1ZEpuaWcvREpt?=
 =?utf-8?B?YmhjMGEyMGk5YXNHZjcvK3AvNHlnaDBJY2RydUI3bmRjcFcrNE5hY2l6b3hj?=
 =?utf-8?B?a0JhaFMydURSK3BwdlAyTHNMVVJLWlF6bE0yU3hGTEQwcXlDNFZBa3NXVzIz?=
 =?utf-8?B?SmR4Z1BsWk41MlhCNlZ1QnhjMm1PWlZyOFdzOWJFZyt3ZDNWZmNVTHlxNkNG?=
 =?utf-8?B?Z0xWeTk4My9EZ2dvb1lac0prSEM4anhTeEpaRzYxSUdTSEpTeElxRUtNMnZT?=
 =?utf-8?Q?UfVaBukItn5rXZ4c=3D?=
X-Exchange-RoutingPolicyChecked: dvRRztfaupUp2GU9eakWEwZEkpH6ZiZgIXNug1rIKX+1fW6VRJ81IGqDnoJskFUpCNY7qW4OPPa0OLqycAideaQA1z236lfzDSO5S7yJB0IU+EIx2N/Y/NYo3WERViYTfshP1vxx3RvxnWzTjc3JDubsxwxsn5XpqwrNNxywJXiRKMn9CHblkaHCVBCb79LXCY+o/6DRPhOixFHKZe3ZwW2Sdp1IZzfR2gEpr3FQW3llK1Esu+xKI2sHUvJF1c6wU4OFWdrr6nKg7gh8PxSy8LtaBu2xK+3NaRtUxkqeeeosxkwnmdMfd5Oh/7SLzg0atuqmkeu0XQNJoiYVnyn+5g==
X-MS-Exchange-CrossTenant-Network-Message-Id: e86e50f6-ddb8-411f-3e43-08deaccb78f0
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5064.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2026 06:31:45.7451 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N4oNLDf1dZE1irQEte/RXegfY+0OvDjquru1y1E4ZPqX+6mbSl0amCYrMnxH9/kYpMCICxAjhI7iVt+oJ2AQ5RqV/oKOMrW9Nqa6xnwKikg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7451
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
X-Rspamd-Queue-Id: 7FF9D4F27A4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:janusz.krzysztofik@linux.intel.com,m:andi.shyti@linux.intel.com,m:sebastian.brzezinka@intel.com,m:krzysztof.niemiec@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Hi Janusz,

[...]

> > +++ b/drivers/gpu/drm/i915/selftests/i915_selftest.c
> > @@ -181,11 +181,48 @@ __wait_gsc_huc_load_completed(struct drm_i915_private *i915)
> >  		pr_warn(DRIVER_NAME "Timed out waiting for huc load via GSC!\n");
> >  }
> >  
> > +static struct mm_struct *
> > +get_mm(int u_pid_nr)
> > +{
> > +	struct pid *u_pid = find_get_pid(u_pid_nr);
> 
> What happens here if the st_userspace_pid module parameter is not provided?
Hmm, good catch, let's be paranoid about the usage and make the
intent clear.

[...]

> >  static int __run_selftests(const char *name,
> >  			   struct selftest *st,
> >  			   unsigned int count,
> >  			   void *data)
> >  {
> > +	int u_pid_nr = i915_selftest.userspace_pid;
> > +	struct mm_struct *mm = NULL;
> >  	int err = 0;
> >  
> >  	while (!i915_selftest.random_seed)
> > @@ -201,14 +238,36 @@ static int __run_selftests(const char *name,
> >  	pr_info(DRIVER_NAME ": Performing %s selftests with st_random_seed=0x%x st_timeout=%u\n",
> >  		name, i915_selftest.random_seed, i915_selftest.timeout_ms);
> >  
> > +	/*
> > +	 * If we are running in a kthread on a multi NUMA system and the user passed
> > +	 * a valid PID of a userspace task, then we may borrow its address space
> > +	 * to prepare a safe environment for the mmap selftests.
> > +	 */
> > +	if (!current->mm) {
> 
> I think this condition should also check for a valid u_pid_nr.  To avoid 
> ambiguity, maybe the i915_selftest.userspace_pid attribute should be 
> initialized to a negative value by default (when not overwritten with the 
> corresponding module parameter).  There is no point in submitting any 
> warnings from here if the module parameter is not provided, I believe.
I like the init to a negative value. I'll also guard agains PID
0, because that is not a value we are interested in, so anything
positive is acceptable (I am checking if this is a userspace
process later anyway).

Thanks for your review.

-- 
Best Regards,
Krzysztof
