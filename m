Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE73DB2F6C3
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 13:33:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FAD010E93C;
	Thu, 21 Aug 2025 11:33:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C0a0la2G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7CD510E93C;
 Thu, 21 Aug 2025 11:33:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755776017; x=1787312017;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8enexMXyvpi/5Jjz6j8hWoX7yWRCGxEpeeGEe4g7myc=;
 b=C0a0la2G/z0dIbPXnLd3a1i9osPWHliqxTuFLBzrnWxicVP53GjlvfuB
 bXgNmoIKgaQKB1tT9yKZqPsqzizq40m1y/7ctTWjlbaO88rkBk87ZIWaS
 T61XKHZ0/HuTPPqHz8sSCgQ6/TmmIvvaEgdsdcg+pRfVSsZS6n78yOsQh
 2kdO49PV4HAOWIJBjMEvuihnlpTTgLzJG86vkUxfaXtu/1czTckT85yzl
 vAjaClVk5//et2+mwb8gmeadcJubKPVMD/SPgZzykmOdZbGEsUdtCfsRl
 i46TwgTyDgXoI6f6ue5JegL4gUf13/l79yGxltR9ZYsPBra3Hqs8cIwEA Q==;
X-CSE-ConnectionGUID: kAxyuOrxREuHTA6weuiZCA==
X-CSE-MsgGUID: mRFURAoIQT+UVFKNgroRQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="57922958"
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="57922958"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2025 04:33:36 -0700
X-CSE-ConnectionGUID: hJVEDnBXRcO3ESCR8sZEVw==
X-CSE-MsgGUID: H4OT9WHfQvi4wMDlJ/OTDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="169195838"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2025 04:33:35 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 21 Aug 2025 04:33:35 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 21 Aug 2025 04:33:35 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.69) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 21 Aug 2025 04:33:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y72VH1LPfvGTqz0+ABR7oXP9QxZEqNZxSPwc/HminVZ05l/JohodWO7+xyB3sGZo3PKggi78WrQ9mmFEp68XMddr37DCPFcgi692aaUd5T0WBGanmt947yBbUPa8s/9w7jzQMDAHWImx/dstPbvTrarEaPjnoFKuVQtUKoyVdgwPmMf88ttWSMX4Iypicc5+WDU9aFg302lVvDJTAfmcdQzZ4mGepaj2NcXP5/S8PcV7vvxlQzDfmOq9xwa7+CcDUgdEOAGzfPh37PbVR40KRdsowCtSFvgf04fV2CVYaOHoEXxXMN7rHAc4/D4ZHOESzy3fBZkmaRfYaiNvdTvHZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lx3sQXLvQBpTR6STHqSCK8tmNpwgjdA5GcZCl9HLN8k=;
 b=Z3uCEKxElO/YOKC4kdF6NTG4H+PBUyzo1p1JI5Y+TeUMS66g0rvvjAh0zRoqGEaWJ9fOvh25C4sSjrVXwARvkNtapjOFxJfNqsadA7LqZc+p9kCmj4C7HGOzXBV45j8xF331gAix5fSqmAdLWNP2VVgjI7YsmRFHIuO8vZ3FJgXuLZWZ9HHNDj05Po2IqHDtrVkH58Lfe6Y+JVkwO4FiKPGTW9FNFyn5JyvMugvc9lBE+NrvTcQ/ZUivLK8PfFpZzWkZ4o+RX3ByVzOe9+6LmfAiRNvEjjISSu8m6ixnWwp+LB2FgmFIV/Ixsr0dfQnnvsWgMqAkaNCHTAbQP4VKLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ5PPF8A49C4DF4.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::83f) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.15; Thu, 21 Aug
 2025 11:33:16 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.9052.013; Thu, 21 Aug 2025
 11:33:16 +0000
Message-ID: <9a034c87-2aae-4b09-8c13-c2c576ffc0f2@intel.com>
Date: Thu, 21 Aug 2025 17:03:10 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/3] drm/i915/bios: Add function to check if edp data
 override is needed
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <jani.nikula@intel.com>
References: <20250821042653.269227-1-suraj.kandpal@intel.com>
 <20250821042653.269227-3-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250821042653.269227-3-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MAXP287CA0004.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ5PPF8A49C4DF4:EE_
X-MS-Office365-Filtering-Correlation-Id: 7bf33e18-ac91-4abc-66ec-08dde0a68528
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M1BsYjczcTM1ZDJnbzhmRWIxaU04NDZISXR5ejI1V2FVQWNkTUlBMFI4WnR1?=
 =?utf-8?B?NEtpdlVNamJPSXlHWG82djBUN3Y1MGJkcDZXVTV2K1luUXhDR3N3RWo2czA0?=
 =?utf-8?B?SEZ6bXIxc3pKU3dnYnF3c2JnTGlPVS9xNFAwZ3N3c3lsN05oTE1lOUo1aHUw?=
 =?utf-8?B?ZVJ1WWxBWCtNekRCc3lIL1R3SWFuczh1U0YzNmRsNUxJc1p5SSthOEE4aEIw?=
 =?utf-8?B?KzE3TExLcmxvdHFySTVZcC9iOFZzdEdyWUhkSElQZWRQNDRnWk9qMmU3VGNm?=
 =?utf-8?B?SkViY3E3eE9LUGlUdzZGR0RaaUFESmZYQ3RFcXc0c3VNSWdpaWpSbitscmNm?=
 =?utf-8?B?ZVRxQXZINHdSNkkwU29ZK1pDbFFsdjNlRG82V3pUYThqODIzcWtGRHpEbXhn?=
 =?utf-8?B?KzN0K2lFSkNXOGdIMmtYRUpvVEVYNVd3ancwbTNaNEJZdG9XM2ZzamR4amFW?=
 =?utf-8?B?TWpidVJESkVndGNHZjFBcUsrZUdpcTAxdVc1VEJ0bndPRkEzL1dxZzVKK0l5?=
 =?utf-8?B?REVNc3JVM3NQRXovZVFjNllRSDhvaXFKM3BLSWhwSkxuVmtnNTN2N0xsQzJU?=
 =?utf-8?B?dWhOVm91SEJoMUo1V0ZXS1FKeXFnaE1qK1hNVHdqTjRXQTZrQTlVd1gyaVZW?=
 =?utf-8?B?Z0YvY0lNa2pMTkVWNVVUSkdBb0tuT2JKOTQ5SFo5RWVoL2dTQ053WnhGWWMv?=
 =?utf-8?B?R1dCeGhNTDVDaVlhUldEV3VQblJGdmdYU3JZODljVEZ4VU13aHBWNXdQMG1D?=
 =?utf-8?B?enpDOWwwLzFmbkRNMDl4MXM0TEo5cUlNWXZXOFMwdHdzZzh6YzUrdDhYNDhu?=
 =?utf-8?B?ZmlFUS9Dekxpa1VEMzlyQllzK1RISTI4SWR4eGVMUmxrek1HRHlJcWZNQi9X?=
 =?utf-8?B?bGpJN1F0VkJwSkNDODBjRktIbjRqSE1xUmwrNjdsMGpCd25MQ2ZkVkFaZTF5?=
 =?utf-8?B?U0oyTXQzdW1oU2tIQVoxbUFvTkFMZlJBcDQ1YVBmWlVvcWxuSCt1N1p5VTJt?=
 =?utf-8?B?dVh5bUJjUkNDWkY4YzAvYWowZmFYK0w1SWpJREp4c3hnRFN0ZXFJMXU2eXl4?=
 =?utf-8?B?anA3MmNjRTdKTXJVVmFhK2Q5Zi95QnUzYjRsWTRKVFRSeFlDNzZCbHV6ZWlE?=
 =?utf-8?B?Q2tBMG92T2hHKzZnVGRVdXBXUnhjdm55Qy9CdzV0UWRqZHBkcmMzWHVHbmZF?=
 =?utf-8?B?RmFaWFpuVzRpK0l2S3MxWnpMa3YzM1VaWXl0RjRjL0x0WkxKbDFIblQwTGVZ?=
 =?utf-8?B?aWZXWS9SWFkxblNlVzVYSStvQm43Q28vOVhjd2czanRKcnBHdWhEQnJjZ0JH?=
 =?utf-8?B?MzVCKzgzcTRqNXNsc0N0MXNrTDQxNGJRaUJiU290YTVTQjJpa0I1cTRvK2Zt?=
 =?utf-8?B?QXdBeUg3cWxLQUxzWkJSeHVEaWxMc2wrSEJyelhUUmVYUFpoTFc4bFlmTHgr?=
 =?utf-8?B?Ykc5Q2M4QWxLNUpQYWhlVnNCYSt6WXhyMHdWSk4xQURSMWFEeUJIdEM5MDBs?=
 =?utf-8?B?SllRaXBQb3gxbUhzNVNPeHl0alAzZTFCS3BHdW1SK2M0cUVkNjVIOVVmRlVU?=
 =?utf-8?B?KzQxRHNMQWVYNU9UYTFvalBlYVBMeUZlTkJSQWxCZE9YbHZHd05ZSlNwdUx3?=
 =?utf-8?B?bDk2YTYvUi91TG5GKytlb3k4TnhtYlFtYU5YLyt3dllLcWNFRjNKNWFCeHVl?=
 =?utf-8?B?SVV6RVlzT0VyUVlEandwZkhMQ095M2hIRVRkNWJHMFFmQXdNMzFzY252N1Rr?=
 =?utf-8?B?akdBVVBsSzNXK1B6S0doQVgxMHozWDJVc1BjdUdoa2hzMjAraDl6UmhaNmh0?=
 =?utf-8?B?cTVoWlpPaFI4SDl1ZDQrN3p4QjRsQytsUFRVYk5OTlVLTXBZTWFkZUoyMUhq?=
 =?utf-8?B?SG9rZWsrVUR6Rm1aeXlhb3lYeEJUWUs3OUlrWm4zWGdGM2srT3FIdFVXcEp4?=
 =?utf-8?Q?8/cTlAZY4DA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Mmt3V1VidjZIaHplRVdncFNrRjl3bHQxZDl5a2F4ZVVyT3pwM3hLTmJpemxo?=
 =?utf-8?B?eUtVSTVCSklxMy9sblFqWll6SGMwOE8wOFdsVEJmZTh4TmFzVEx3VzJjb1FY?=
 =?utf-8?B?T1FrNVhpY0kzUnBONHBwUVAxR2ZjeVowd21wek1MZXNDNTZENXhTT3ljTHRC?=
 =?utf-8?B?UDA0eTFQWFRlYXlOUHFwSnZnL0xTWHJBMFM0SkM0cGp2RG54bzNENlpYdjUx?=
 =?utf-8?B?Q3dmK2Q2ZU1yWmlsbnh6ZDBRd1NnTXN1L0FwOTdsbDNGOVJ1YnNhWVluNHVH?=
 =?utf-8?B?LzlxWm5ESVRBbjFsdVJmSUxxVXRNczdFQWx1bTNacHB2ZTJ0MVppUWUvN1pt?=
 =?utf-8?B?a3JMTWRnVzY3dUVoejh2UEZ0V0xlY01HLy9hdnNuWnJCUnZWanorYTdOSXJo?=
 =?utf-8?B?VVZsVzFXallaQVgyVTFWckJJcWFMZ3ZXQWNpeEhDZTJHVXFGWkdxemRrMDJk?=
 =?utf-8?B?M0NIQnlQcmlIZW1DTXJqVTB0QmdRR01UcHBDbnNscVdNTDlZZi9SYnAzZHVo?=
 =?utf-8?B?K3gwOWZsdENJMG5Pdk5FY1RhWERVbFVDTFJoNjNFaE43T3ozbVRtKzVJU1Bx?=
 =?utf-8?B?alhMeE9Nd3QwVHRWSDBjNjJ4amEweWdvd01JQ1BnRHlNMWxqT1FVdjZZZXo2?=
 =?utf-8?B?T3BKSmE2UEUvbXJSREhCVFh2eXgzdzZpbE9mN1Z4NzZoZmYydUxqUDRCRkVN?=
 =?utf-8?B?YUZQZFg3VjY4NU55dHNwbjJpcisrSEwyRkNFeXE3NThYRkU5NjJ2eXhKRW1R?=
 =?utf-8?B?WGsvcUF5cGVHVzNZN2d1d2tuWWh4T2dFYmtkOWpPeXczOWozNmI2VEZNclNw?=
 =?utf-8?B?Slp6NHV4anFjekxON0t0V0dZYXAwWXhjVm1ieHJGWGIxRkQ0YzZoOWlsN3Z6?=
 =?utf-8?B?ZW5ieXkyVEphNDZmUDRLUTd6Y2JrS281dlVFVzQvZHJ6aEhQQ2I0c2hsenpX?=
 =?utf-8?B?YWpnZEZlRkpuYzRhd3ljNU1SN2U5WDVWYVJXMTF5dzNxbmtBd1AxckptSzIw?=
 =?utf-8?B?UzduVit0TCt4SWVMUkZINmVxTUk0bWVCVjBMM0xRdjlkUUxQeXBoLzBycTho?=
 =?utf-8?B?Yi9YK3dFRndLZnhzNFBJMWNaRWJ5ZmhvaFdUUmZ5UW9oc01mTUNXem9PRmxC?=
 =?utf-8?B?VHZPMExUUnZuNzNvc3RMcGJwcGZYcU9YcFYrcWIzZHlRZTBMaVByd2ZGendu?=
 =?utf-8?B?emFha3F6WHVhZWY5K3M2OG5CTC9nRnpuR1JiNnpHU0pNT2pSTExoQWZqZXhQ?=
 =?utf-8?B?U01uQmVQY1lic3k2YlBLL0NJblA3WVBjRnJOSzFKbFRpbW9CYWxiZ0h1SzE3?=
 =?utf-8?B?Ynk2RFRab08wdzJQTHh5MEVzdU1MUEJXSVEwV2hWOFQwMzNEZFJtVUs5QWFi?=
 =?utf-8?B?NnFhc0luMkQ1WkxVUThzZ0ZqYkxSVlNRZGVjWHFta1Y0YUdzd0t1ZUc4VEFX?=
 =?utf-8?B?cUI4c2ErUlFRZlNLcm5qeUpzK0o1bFFBaWRnVlpxV1hzT284djFwcmtVS3p4?=
 =?utf-8?B?SVZrSnBRS25GY3dOK0NZSElhS1RtalVvM3c5QkpVc21KSHdHY3FTMzJEemxo?=
 =?utf-8?B?QU01NU8xN29TRFFRcFU2YUR1RU04K3V1aHlmREhQd0RENDVzaWRlWEFVQVI0?=
 =?utf-8?B?TWk3SFRQMEYzM3ZpZUtGL1ExbVVDZjJqTElxRVdyR2V0WC8xZEF3Tmd6NTlz?=
 =?utf-8?B?VE9pN1JKQlhSbS9mRVpoa1lWVytVTEZzS28wclRTNUo0ZFU1bHlEeElCSjMz?=
 =?utf-8?B?dFBIMFhPUWZOYkN6Z2JTUmh3N0JnWThDaFBYU2JNZGpWR21FSThBdDBmM1Qz?=
 =?utf-8?B?NEk4ZFR0UkJVMWtMSlBOd2t4L3ZJT2dnMmk2NjJyV1ZraktsRnNsNGdSek5a?=
 =?utf-8?B?WnUxeGtHZFFxc1VBNzZGZDU5cTNRV2hsN3dKNVZkQU0zMml6SGVsdHBiMDUv?=
 =?utf-8?B?Q2hCOWVDZHAwM2hSTkg5QkJxWTgrd292Q25vL2lTYWFVc2dRWXNjTnFHamVZ?=
 =?utf-8?B?N3lJbWR1RUhKcWZERGd4QzM4QmRZWFhIa0c5ZUc5WVRBTmVabHN2UmZJaFU1?=
 =?utf-8?B?VUs4cXFpZFZQR3JaNlhrMEI0VjZtK2VoYW5xY2djeDVGcjFuNWptVEVkT3pw?=
 =?utf-8?B?VXp6YldIK09CS2hTOGxRbCtHZEUzajAvSFgwM2k5d1FGMytNbStGS2Z3aUhu?=
 =?utf-8?B?Nnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7bf33e18-ac91-4abc-66ec-08dde0a68528
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2025 11:33:16.4454 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uuktRMq+jTmfP2j4PTHN2AJw9M1SObDBTt5p86sxQmdpLTAutR/kl74ppRZmEaPxrWFBvBofDISST+eSgmANYLA5TGRchjcIcxOwSFXnZSw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF8A49C4DF4
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


On 8/21/2025 9:56 AM, Suraj Kandpal wrote:
> Add a function that helps identify if the rate provided needs to
> be overridden. For this we need a function that compares the rate
> provided and bitmask of rates provided in VBT.
>
> --v2
> -Rename functions [Jani]
> -Return the mask instead of parsing it in function [Jani]
> -Move the declaration in header [Jani]
>
> --v3
> -Change function name to depict what the function does [Ankit]
>
> --v4
> -Lets not use hweight [Ankit]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_bios.c | 32 +++++++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_bios.h |  2 ++
>   2 files changed, 34 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 8337ebe0f2c8..193c7911953e 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2480,6 +2480,25 @@ static int parse_bdb_216_dp_max_link_rate(const int vbt_max_link_rate)
>   	}
>   }
>   
> +static u32 edp_rate_override_mask(int rate)
> +{
> +	switch (rate) {
> +	case 2000000: return BDB_263_VBT_EDP_LINK_RATE_20;
> +	case 1350000: return BDB_263_VBT_EDP_LINK_RATE_13_5;
> +	case 1000000: return BDB_263_VBT_EDP_LINK_RATE_10;
> +	case 810000: return BDB_263_VBT_EDP_LINK_RATE_8_1;
> +	case 675000: return BDB_263_VBT_EDP_LINK_RATE_6_75;
> +	case 540000: return BDB_263_VBT_EDP_LINK_RATE_5_4;
> +	case 432000: return BDB_263_VBT_EDP_LINK_RATE_4_32;
> +	case 324000: return BDB_263_VBT_EDP_LINK_RATE_3_24;
> +	case 270000: return BDB_263_VBT_EDP_LINK_RATE_2_7;
> +	case 243000: return BDB_263_VBT_EDP_LINK_RATE_2_43;
> +	case 216000: return BDB_263_VBT_EDP_LINK_RATE_2_16;
> +	case 162000: return BDB_263_VBT_EDP_LINK_RATE_1_62;
> +	default: return 0;
> +	}
> +}
> +
>   int intel_bios_dp_max_link_rate(const struct intel_bios_encoder_data *devdata)
>   {
>   	if (!devdata || devdata->display->vbt.version < 216)
> @@ -2499,6 +2518,19 @@ int intel_bios_dp_max_lane_count(const struct intel_bios_encoder_data *devdata)
>   	return devdata->child.dp_max_lane_count + 1;
>   }
>   
> +bool
> +intel_bios_encoder_reject_edp_rate(const struct intel_bios_encoder_data *devdata,
> +				   int rate)
> +{
> +	if (!devdata || devdata->display->vbt.version < 263)
> +		return false;
> +
> +	if (devdata->child.edp_data_rate_override == BDB_263_VBT_EDP_RATES_MASK)
> +		return false;
> +
> +	return devdata->child.edp_data_rate_override & edp_rate_override_mask(rate);
> +}
> +
>   static void sanitize_device_type(struct intel_bios_encoder_data *devdata,
>   				 enum port port)
>   {
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
> index 6cd7a011b8c4..781e08f7eeb2 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.h
> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> @@ -259,6 +259,8 @@ bool intel_bios_encoder_is_lspcon(const struct intel_bios_encoder_data *devdata)
>   bool intel_bios_encoder_lane_reversal(const struct intel_bios_encoder_data *devdata);
>   bool intel_bios_encoder_hpd_invert(const struct intel_bios_encoder_data *devdata);
>   enum port intel_bios_encoder_port(const struct intel_bios_encoder_data *devdata);
> +bool intel_bios_encoder_reject_edp_rate(const struct intel_bios_encoder_data *devdata,
> +					int rate);
>   enum aux_ch intel_bios_dp_aux_ch(const struct intel_bios_encoder_data *devdata);
>   int intel_bios_dp_boost_level(const struct intel_bios_encoder_data *devdata);
>   int intel_bios_dp_max_lane_count(const struct intel_bios_encoder_data *devdata);
