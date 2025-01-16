Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B230A1395F
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 12:48:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4456510E58F;
	Thu, 16 Jan 2025 11:48:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fjj1nRjq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58C9710E58E;
 Thu, 16 Jan 2025 11:48:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737028105; x=1768564105;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ev65bFvaKdxskcWvE8aX7EyyQJVLwE2HtZCowp/qHqg=;
 b=fjj1nRjqMpudXW+pDM5s4MWRtrVMPdUEART8jxBgbut425hf2W1lV9TK
 nDcCyhJcy4ifVkdN74bxbYV8GCUfhLpcgKCpaQf4ei9qCxSichX0Az0ii
 0AQ5YvKDHJVxoiktlaX0yFhwQ2dCQyYBB/cPNaN3XvbHYpmpzcgL/5SvP
 eB5q2bvrWS7HQA1BbHFZg3M27E1IqwqC+034T9ZGDcQRuekgenYqyqojp
 c6X3hJl0FWTBXOfiyVJ5OMZJBLPg5dSc5W1TPudlqFgNFUZxXCmBG3Lcy
 G8X7GYew727hC5JFDBNvxulQ3A5S4O5YjkJz+UTiJNFQLcU7XyWsPsxFU w==;
X-CSE-ConnectionGUID: aJB++c1gRDyLwOfSBdx63g==
X-CSE-MsgGUID: QUs8yCouRDS9CPbDHw2gig==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="37647469"
X-IronPort-AV: E=Sophos;i="6.13,209,1732608000"; d="scan'208";a="37647469"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 03:48:25 -0800
X-CSE-ConnectionGUID: +RZXLl3bQL6I/MXy6RL/+Q==
X-CSE-MsgGUID: 2CMotYjSQU2hjczgZH6LEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="110577458"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Jan 2025 03:48:25 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 16 Jan 2025 03:48:24 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 16 Jan 2025 03:48:24 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 16 Jan 2025 03:48:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IOPp3FqXLGfx4jZc6M3IuUhS3ul/0eqJ6RmACjOHmQ9TTMFB9zitSjouWEhCQP3uqaXQ+Hs7P5+/MSaMyuVayPm4ieLZY9UipdJKbZhHqA/yLxb4PJ9TIGKA2Nm0NTG2FOjtbVZozDjan8gn1vu6x4hOgMk76UmLZ/yABBBCk78duoMjn0hfydFXsJt0yk4NacF2ZMe8PLAVe2E3JVeIzOLKZfPwQxM8wxMn0GY0Giiq+LrC94sJt3SiS1fZ/b8YDhzfIthsvQnH2a+nm6rP8oydlpnMDHif81jO2LM5TQEnoYxUxkoYJLs+5ZaZgK0znZcKpwjUHbLk3xK/jlfuYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TAKMQ07pmkE/Xro5+ulacyiFIG+zh1QHML2ENk4Ng94=;
 b=k+2tGaiH0MycyBfuO8Wgmrtjxf0VmvdrtI9m4nl5sCd0Rsh5mM+wloELhvIOMaiyb3UsHGaboPjoZgBOWruK7DdX85yhiVvh2iUztRbnKBGSmeHFZE13tSXxaO9lxUdatTgjrLFF+W23im164F8GLnzLUyQDlJed6+JB3XM8RNAkENbDwTHwocVG7pZWtlg2Ce3ngcyzOxwlhJqGlYmr3lDb15yqugDh0ZeR1uLNhQhfac+MvpSvKd12knjNHFvTFrCpfm0AvDRl8R+4fVX7ZNpMkatTzXWopqXcpcGvPdHF4vhRnBHr/LtvWEpszGFGOLCSR/P5Xqy7vzagsEYTyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB4830.namprd11.prod.outlook.com (2603:10b6:a03:2d7::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.16; Thu, 16 Jan
 2025 11:47:54 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8356.010; Thu, 16 Jan 2025
 11:47:54 +0000
Message-ID: <b9617f03-dd7d-4600-8794-eeac36f06681@intel.com>
Date: Thu, 16 Jan 2025 17:17:48 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/7] drm/i915/scaler: Refactor max_scale computation
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <v5-000intel-xe@lists.freedesktop.org>
CC: <jani.nikula@intel.com>, <ville.syrjala@intel.com>
References: <20250115151714.3665211-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250115151714.3665211-4-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250115151714.3665211-4-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0240.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:eb::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB4830:EE_
X-MS-Office365-Filtering-Correlation-Id: dc4530ee-3534-4756-6800-08dd36239d12
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UzhBNWtlNWx3ZC9JSWNQVmhDOHhVcWNUeTRLWVFZZllBK1BJQVpsNFBLeDQ0?=
 =?utf-8?B?eUVESm9objB0cTN4OVZBM1l3T3l1YmZLMHVUVk8xZlN4OU0rbzZSa1BJWncz?=
 =?utf-8?B?L2p3QWt6WFJvQ0RIQ0hXNnlLZWV6OUdHS1NLNVdpeEpsL2Nic2VwbFZ6RWNF?=
 =?utf-8?B?Um5MTkN3Ui9UWVJmb2FCdEhERWFLN2szaDdmd2xWd25Mckw0dklNMzV5bTYv?=
 =?utf-8?B?MTR0M3ljdUYyT3FpSCtDS016dlJoUEJORGtjZzczb0djd1l5KzZsNC9uME5G?=
 =?utf-8?B?TkJhN1QvR0RDeENPYnFKMGQ5VnlDd3gvUkRybWRqVjFPR1RCTTZZck5nT3RY?=
 =?utf-8?B?S3pFVjc1RjlrMC9WeEoyR0lXa1hmbC9nTVkwVGx0NU5UYWgwL3ViSlg2YzhE?=
 =?utf-8?B?Vmt5bGh4cHhKbHgvNml3a3dLWDQ5NkRqSGkrMm5uMUlmMk5BWXdrNjgwTHBj?=
 =?utf-8?B?b1FHd2FwVGdLMkk3MGRkTU1HeXd3U2ZISFFCeE9tM1ZUMWh1ejFHMjRETHov?=
 =?utf-8?B?QnJxNE9GU2R2QzNwdllyU3dWeDBDSzJRVTNxMWpwSnpnSitoMzlndlFwQVll?=
 =?utf-8?B?QmZsbnNKQU9oRkZIUkJ0V2tVUGw4QXJDTy9UK1F6aEo3T1Q0WEFQM0pKaklx?=
 =?utf-8?B?bm11YnpkeWhqUU01WlgyOWMzNDZlUUpEak5ubnJjZjJqS2xBdkZqMndPSjB3?=
 =?utf-8?B?RUkzcFVRUGt3ZXBOTVVXbEtrU0ZkRlBqRmpEa0JkSVhwZzNyRFpONEkyTFhi?=
 =?utf-8?B?ZVBKUmVtcDBBZ1psNEYzNGJpSkJLTEo3ejBhNkI1QSt0L1VyWERLREJRNlFa?=
 =?utf-8?B?WmkrUFNqMnlQekFWalFJV09wY3JidWc4RHRvYjZLbzFHVXVKcktrYWVzYXZ4?=
 =?utf-8?B?MElhMWFtcXZzd0d1ak1udDZmMXJsWVpleEJFdmduYlZOdW5LM3BoaFo5TWQz?=
 =?utf-8?B?YlJCY0F6ZjhZUE54ZEc1OU9FRzEvckd4UW5SbURoRE9vTWx6YWlLdkt6bkg3?=
 =?utf-8?B?OFJFSCs2MjhtY2prN1lyS29oMm1DT2VjZkdLOFhoMWFMcXdyY2g4TjF5cnF4?=
 =?utf-8?B?a0RmZ0NwYnBlRE5sZEUvVHF5bk5HRzdYVXhJQk12aG1tbjd5TWw0anIrUjgz?=
 =?utf-8?B?aFdLVldITThPUFQzdVBUNi9xUGNjYnZYTVd6NVdSblhJdTQxOWg5K3A5SG1u?=
 =?utf-8?B?cmpxSGtlUWF3V0R6RjZNUmo1a0tsV20rZC93SWxSK3M3dTliWVl5TmtkeGV1?=
 =?utf-8?B?RlZPZGdMVm1Jd0hTd3hyTysxeWNRK3o1eTlVSEprTHZ0ZDk5U3Y5REZ6bVI3?=
 =?utf-8?B?NjhMdmZ3dHFFQVNnaGtSbFBYNHpTMGN1Zmx5QjllYmFsNC9DVjZRbWI3SS90?=
 =?utf-8?B?QUhNK1d4S2F2WW02TGVWMS9ybU8xcklObmlDb0UwcDJ6YVM4YkxwdTRSdjNQ?=
 =?utf-8?B?QTlZL1QvU3FwcnpqN1dibGdwUFJkWlRidk9yS2RDZUJ3TlJYQnVObnE5c3Rz?=
 =?utf-8?B?VjRXYWxZa29pdTIxY2djcVhzOXdweXl6Sy9oRmhQcUpqL1BNMERmbWF3N1Z1?=
 =?utf-8?B?S09aclZDZWNDRWpUTmp6R2pFY2lWUUZTK1h5ajdsTmV4K05PcnlIeHN5YzhI?=
 =?utf-8?B?NERFemRYYmFGZU1wME5GenBvblBFbGlxc1Q4b1psa3FnRzV1MHNBNGJUbVlz?=
 =?utf-8?B?VlR3WnNWeUJhTytYeWx0MGVRTm5GZGlzelcxMjNRWkhrSldzaEZwZUtRWjAv?=
 =?utf-8?B?RmI3RUMyY1pwU09Od05BaXd2djlTKytHbjdZZjU3amZxNEJSWjgwQkVOd2pY?=
 =?utf-8?B?K2c1bUt3VTFQREVQU2NjMFNBZnh6MjgyTTAycTZhSzNJb1pXUHJoZnJ0L2E3?=
 =?utf-8?Q?k8OycqpIw4/vH?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YkN1UEViV2oxSnE2ZkZKV3h2VFI4aFlUd3dpdklYNkFTOWkxc0NIVmlqUFZV?=
 =?utf-8?B?V25oVTJ5K1VFb3dSV3FvUWkyRjNEMklSWTM5eFdQcU1EMkFOTEFGVElTMUF3?=
 =?utf-8?B?d0NyTUpad0djbGVmY3hVaTQ5eWFuNUJRWUhZMHB2T2l1UkxlNllSd1dwZEti?=
 =?utf-8?B?MUM1S0pxRmtYQktvY0g4SmFBTy8ydzdlbVJYZTVORmUwT0o1UkxPSUlIbnFh?=
 =?utf-8?B?RWdtMk9yTGgrOEhtNzFtcFdxWmo4Nm82S1ZhaVJEdU5QZ1BSZUFWdmtNcFZ0?=
 =?utf-8?B?TThmM3RMWk5ueUNqK0o1L3lWV1p3cnNqZDJPMVM0SFJnc0JncWw2ZGN3T3Rn?=
 =?utf-8?B?YUZsdElIUjJyb3pFS1FiSlQ4K1RsM051RUpDWERucmxwenVmZldvSWNBNG1M?=
 =?utf-8?B?NXlBVXNVWDdLbXc4ZTkzdHUxT1RJRnVIWTJnQlkvY2N2MGxDUlJHV2lvRjlr?=
 =?utf-8?B?N2JDa2Z5NWVMWlE1Z09tSnBxblVyVWNtb2ZzVnlUNFNkeW92T245TDM1NTJM?=
 =?utf-8?B?NjZ5VXptd1ZXRVMzdnJ4T2dwMWRwa2kvdERSR0ttV3lTZXlaUVVnZTkvU3Zq?=
 =?utf-8?B?WFNja3kxOTRyOUdWekNsMWtGbVBITG0vMWJRblo4TzNhVEREOTExMWtRMkhr?=
 =?utf-8?B?T2pwWVlQZlEveHBkVnNnNXJxSG5rRG5QMWw1Nml0aVNmeTkxUlBWbkpPQlV6?=
 =?utf-8?B?UnFqSDNTeE51R1BJemJldnNtY1hYVy9zK2E3SVhtQm8vdlUrZzhUYWswNzJY?=
 =?utf-8?B?Zng4MFV0VDZaNmNCQ01FY1hvaDVCWVhjN1VTR1hxWHdtMmw3UzRoZy8vZ0I3?=
 =?utf-8?B?SlBJaWFDVEI0Wk1vbHMybU1WTXpmVjJoZDlmNCtKRHFSenJpbXFWYldqWWY2?=
 =?utf-8?B?TFd3b3A1cEUyU2xMcndPUkpxcXVOVDNZOUJTQnlEUDgxeU8reTVwWXBVSk5V?=
 =?utf-8?B?QzhtREJibXlvaGQ2OEdWb3ZodlFNSlVKSTJIa3A4ZWxHMkZiQWJEbjZCVDBQ?=
 =?utf-8?B?R2Q4aHJsT083SnVMSTFiRGJtWjZBUHdUcm9JT3kwN2Fxd3ZvQWZTSDdOdms0?=
 =?utf-8?B?Rm44cDVJR2FJcE9MbEJMVVZPSGk5bGRycEUrM1RtYUpRamxycWZ4cmc5ZDBu?=
 =?utf-8?B?dVkyRTZwV3ZFTks1eU96L2NCbXAxRmExYnRFa2FtT3JxTnF4QmZMc2xvTTkw?=
 =?utf-8?B?VHpGelkxZy93OVhOOXpOWGRtZ0hIZ0hMbnVHQlRDdTNCQjJLRUVidUJDVUc0?=
 =?utf-8?B?YXNhTGxSUk9SUHZ3ZEtNZWYvaTN3R3FNUU9KWjNyUDlWRW12T2w1OEM5TDNn?=
 =?utf-8?B?MWhVdU40RXREYkdiY0FVNmpjKzZyc25jdnF5NWQrNEpESlN1R05jL2RWNFlO?=
 =?utf-8?B?MGdDU2pTeUZGMjBZdVMwdFlQVEZLREprMktBUmRwanlyRGZDbzdOZndKMElK?=
 =?utf-8?B?a1l5Q3IrVksyVkY4S1cxM0U0Qi9DYnJidVRIRUlUWXYwMUtKak9vZERUY1dy?=
 =?utf-8?B?czMrekZXYUtIRVdubmNPLy9wMUdlUUJscXlvODRtZ2hmbWkxaExXSUJkdWs5?=
 =?utf-8?B?a1NzeVBKdzhaS1AvT2cyS29FWnREUlhpL0l5SGtGRHFkY05NelZTOHpqeHlT?=
 =?utf-8?B?cC9pM0pGdWlBMVRCTnFXK3BtNmRoK1hYeDNPeGNsM1V0OFovRittNWJjcGpq?=
 =?utf-8?B?V2RWVm12OVBiUzdMd2QwU2FqRmg4KzZKTm5zM055L0o3QVVjdVV4bTA4TFlV?=
 =?utf-8?B?Z05KNEZ0eUFET3A2QUJDd0Zxc2FuUTl2a2hYcDc3bzV1eWE2RnVpWnlnZ1Jy?=
 =?utf-8?B?Y2t5ZmhpTm1NM3MzYzF1a2RPRmppMnc0YnhzeG1SNHV2b0g3bmJhcGd5eWJH?=
 =?utf-8?B?SEVPZU0wUWdTVEpnSm9VS29BTnozMXpndHJPZExtR2VIekY1eFpEZEQxcFM3?=
 =?utf-8?B?ODFxV1k4eFd4V0k4blhKbkhGR1h6YzFyb0NOaXJSa1R4S2ZCb2p1R25Zc1FW?=
 =?utf-8?B?OWFGWWJzRVQyL0ZyNktOYnh1ajZqUmFHU2hZTFlJUHBZLytrTVFjem9WZ0k2?=
 =?utf-8?B?b3gxWERhYVF0TUZVMnFTYkNTd25DS2FBdE9BUnorWmVyTEZ3dnVFNnlqa0xU?=
 =?utf-8?B?cmkzekFXRk8zTDRheWlQL3lYWXNyeFZhVUJCM3RibGFlM1ZBa1BWeHVTZFdZ?=
 =?utf-8?B?bUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dc4530ee-3534-4756-6800-08dd36239d12
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2025 11:47:54.6686 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P1k/89vS0PbHBeS58QIifSEqbS9/HNrxjt7mGljeMIYd5uZgoTAmlo9Fd+I7QVq9nPrIZrrSt9gwfgjgzDMTSFWJJXGtPPLiPMTM8pusEPw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4830
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


On 1/15/2025 8:47 PM, Mitul Golani wrote:
> Refactor max scaling factor computation into a reusable
> function for scalers.
>
> --v2:
> - Add missing comment. [Ankit]
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/skl_scaler.c | 70 +++++++++++++----------
>   1 file changed, 41 insertions(+), 29 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index 12efa4008027..a832cdccd9fa 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -319,6 +319,44 @@ static int intel_allocate_scaler(struct intel_crtc_scaler_state *scaler_state,
>   	return -1;
>   }
>   
> +static void
> +calculate_max_scale(struct intel_crtc *crtc,
> +		    bool is_yuv_semiplanar,
> +		    int scaler_id,
> +		    int *max_hscale, int *max_vscale)
> +{
> +	struct intel_display *display = to_intel_display(crtc);
> +
> +	/*
> +	 * FIXME: When two scalers are needed, but only one of
> +	 * them needs to downscale, we should make sure that
> +	 * the one that needs downscaling support is assigned
> +	 * as the first scaler, so we don't reject downscaling
> +	 * unnecessarily.
> +	 */
> +
> +	if (DISPLAY_VER(display) >= 14) {
> +		/*
> +		 * On versions 14 and up, only the first
> +		 * scaler supports a vertical scaling factor
> +		 * of more than 1.0, while a horizontal
> +		 * scaling factor of 3.0 is supported.
> +		 */
> +		*max_hscale = 0x30000 - 1;
> +
> +		if (scaler_id == 0)
> +			*max_vscale = 0x30000 - 1;
> +		else
> +			*max_vscale = 0x10000;
> +	} else if (DISPLAY_VER(display) >= 10 || !is_yuv_semiplanar) {
> +		*max_hscale = 0x30000 - 1;
> +		*max_vscale = 0x30000 - 1;
> +	} else {
> +		*max_hscale = 0x20000 - 1;
> +		*max_vscale = 0x20000 - 1;
> +	}
> +}
> +
>   static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
>   				     int num_scalers_need, struct intel_crtc *crtc,
>   				     const char *name, int idx,
> @@ -388,35 +426,9 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
>   		const struct drm_rect *dst = &plane_state->uapi.dst;
>   		int hscale, vscale, max_vscale, max_hscale;
>   
> -		/*
> -		 * FIXME: When two scalers are needed, but only one of
> -		 * them needs to downscale, we should make sure that
> -		 * the one that needs downscaling support is assigned
> -		 * as the first scaler, so we don't reject downscaling
> -		 * unnecessarily.
> -		 */
> -
> -		if (DISPLAY_VER(display) >= 14) {
> -			/*
> -			 * On versions 14 and up, only the first
> -			 * scaler supports a vertical scaling factor
> -			 * of more than 1.0, while a horizontal
> -			 * scaling factor of 3.0 is supported.
> -			 */
> -			max_hscale = 0x30000 - 1;
> -			if (*scaler_id == 0)
> -				max_vscale = 0x30000 - 1;
> -			else
> -				max_vscale = 0x10000;
> -
> -		} else if (DISPLAY_VER(display) >= 10 ||
> -			   !intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier)) {
> -			max_hscale = 0x30000 - 1;
> -			max_vscale = 0x30000 - 1;
> -		} else {
> -			max_hscale = 0x20000 - 1;
> -			max_vscale = 0x20000 - 1;
> -		}
> +		calculate_max_scale(crtc,
> +				    intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier),
> +				    *scaler_id, &max_hscale, &max_vscale);
>   
>   		/*
>   		 * FIXME: We should change the if-else block above to
