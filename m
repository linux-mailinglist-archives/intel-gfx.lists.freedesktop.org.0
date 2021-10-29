Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C4B843F3B9
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Oct 2021 02:11:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 155FB6E96B;
	Fri, 29 Oct 2021 00:11:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F36A06E96B
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Oct 2021 00:11:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10151"; a="230411327"
X-IronPort-AV: E=Sophos;i="5.87,191,1631602800"; d="scan'208";a="230411327"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 17:11:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,191,1631602800"; d="scan'208";a="448177003"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga003.jf.intel.com with ESMTP; 28 Oct 2021 17:11:33 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 28 Oct 2021 17:11:32 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 28 Oct 2021 17:11:32 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 28 Oct 2021 17:11:32 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 28 Oct 2021 17:11:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YuhEr+D2WXhQLAQx0jjg9H8BUMWTM75QO/tQGU4UnZkaNjeCUcNMPOFotSFbA4n4cJtLHb8rJaglaBvioZsTRUQvA3o5f3uCpAoCBmWMrG3shSgQC8uBijB08iVX4MBnPhfNOw3k1sdaTSucaefs8CWTtg4u0lA3r5uFDwcbbxq6P8aeTWGW/VMwQjnlciTNDyhPZNYqrjWHXXrwKs8ULfmk3nA9eEN1lCX6BfhJ4tK/Q6ZQ22AXX5fR0cF8dAle7BK6asPNBklz/CcvvTCUeDfxUNN7azLbm4jiZRRhJvjuNBRcj7tNoyoXMzILkQRVDMpb1TgABAEZJeXj7LL2qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IlWWOk06ygTfaXiotV/ZUvft5wR4xvdr9pd/5B1fxDo=;
 b=h6Q0sb+YyQlxSmdr90GhOCY+eUH7pmx05YPqqbQSoiU/sen8owLFZBfwN577CJHXRAMOudjCpKEEGS5W72nVwKFZ7tBGgHKytIDhlwcWcrwVzctLcVrZXChC81wJVPFWYswA79HZbwt3N2zIU6MPj4D14aEsSazfoAY/67aO85wlqClYDLBIGeEB67QakSEM401OEFvqdWJg4zPROL3ycV/1EjEsRaRMVdSIEg+QMo81/pt1+XAYDpV2khl9fkXIRiFHZfMOod/uC5w2hsA9OGxQYaj+sI2OJPObB6qhLXnltnQtvA6st5yPFQra1Pufy+6WQljyt+/v8qtwxuUPOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IlWWOk06ygTfaXiotV/ZUvft5wR4xvdr9pd/5B1fxDo=;
 b=OzAPjcms7M8v5wLWJM8huQVHdf4bnISxCGvhmerUOcEbSG/E7b/tKGZfkguLgL6xi60t9Vk0AYNMi2AC9BObMLhe3LQWPyVUomCGW+3ZnArINwJhy8Mc6pv1Nl/lUpC++7WV2tPSNPysPz/dzH0F8pOIbkkNat/w6x0V5+ERnYU=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 DM5PR1101MB2155.namprd11.prod.outlook.com (2603:10b6:4:5b::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4649.15; Fri, 29 Oct 2021 00:11:30 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::450:6ab1:b0a:a165]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::450:6ab1:b0a:a165%8]) with mapi id 15.20.4628.020; Fri, 29 Oct 2021
 00:11:30 +0000
Message-ID: <3d4d75e6-04c5-c0bc-6294-1893603eca4a@intel.com>
Date: Thu, 28 Oct 2021 17:11:28 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.2.1
Content-Language: en-US
To: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20211025071317.3393329-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <20211025071317.3393329-3-tejaskumarx.surendrakumar.upadhyay@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <20211025071317.3393329-3-tejaskumarx.surendrakumar.upadhyay@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BY3PR04CA0006.namprd04.prod.outlook.com
 (2603:10b6:a03:217::11) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
Received: from [192.168.1.65] (99.72.232.53) by
 BY3PR04CA0006.namprd04.prod.outlook.com (2603:10b6:a03:217::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15 via Frontend
 Transport; Fri, 29 Oct 2021 00:11:30 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 14ff58c0-5250-4ee4-dc3b-08d99a70a892
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2155:
X-Microsoft-Antispam-PRVS: <DM5PR1101MB2155D6906449E6D63F00D680F4879@DM5PR1101MB2155.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3513;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xucBMrWwIotcgDEhvS9L9wethSxLugYuJcJwco+XMsV5VzLsdqp6hXMwqPKttATjChug3zrzy6XKRZqkXcvR4rglEA1dpE/m3NpqcMe9OBxH66ra8fknEFfN93/V5SxYfm2NMYlWKVb7nkqhbLiA+i1OtvvV/sNllcBjT2GkAnQSAM7rzzi8JLnHfZmeodifxwBOp7TmuIpDHAl2UeKL14yhz8VkFWo/8lQ/UB1lm3XZH56TSEFVLjZGwTWxHXLV1Ydxpu96uSt26AQzHXa4Plxp/L3biWt+MpHjZJR3Z9zNtLEF+/jnO/BmRhAXYDJtZ4FNP22ABe8Zr1sj5xD//mSu/IfR414eWksDBltJcVVTdutij/9euAcZrgvfxyb6TjhKXeS5H8+RfCTbghxa0ijDchqqGn7m7phxArKCAjllw2qLwHo4CwdjzBfHBg5KpQoJMlLh4rY7D3FY5hgH/D6JuxpQIlBKolokimBnKkXTSDdtCFVaZo7tcCCwH8f1uXwQNMYbnhAAx+2PS3CdrUCpV+uSFHkzjjZLZSIP2NB28m7rVvZMsjGZJEmbk9pslmRqKpNZWX0Eq4lbnr58tMtXOgjpqdCjXTRQILGkrpUGPkyDcXS7laYhvKbfKUiQ0X4cVu2oMjeMFe3q3GkgLZ7Qig53/HLD+5ysqMvlE0nGjyBo6Z0l92N/LDIDzptPxEzCxZPNLhZx5ya3v0Uv4uOHhCJKs8V91zq2yecv1Xkrk0cOixfI0Bk7bmAC4qKF
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(186003)(26005)(86362001)(6486002)(316002)(31686004)(16576012)(45080400002)(508600001)(82960400001)(53546011)(66476007)(66556008)(5660300002)(36756003)(8676002)(956004)(2616005)(8936002)(31696002)(83380400001)(15650500001)(38100700002)(66946007)(2906002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RWJBRklEU3UxK2ovWk5kWTloZUVQNnVXd0owY2VHMVRCK29lTFdHb1d1RHNu?=
 =?utf-8?B?enNDemVETzVvbVRaUEJlZy95bUI3ZURESWRlTW5lZ3ZNMmViVkZHWFVQemZJ?=
 =?utf-8?B?TXZGS3gyelRLMjlwb3hNendtdGlqS2JsZ3VrNlBPK3F5eGdSY2toNVlodVlU?=
 =?utf-8?B?Y0FrVlJwc2hQZkppR0JRVEVYMjVBVnV4b2Z1aHlkTDkrTWdhdnBqSUpqbnlL?=
 =?utf-8?B?U2xFMTlJU3JXcGVJRjRnNG51VmlOb2loWVdIdEphek45ZU9OWHZFRld4ZDg3?=
 =?utf-8?B?bnRwV3pCMnliQTUrVjlpOEZNeGZMVzJKVXRpVFZ4cTJHdjNMMUd0VmR6eEtr?=
 =?utf-8?B?RWErbTltYlF1U0hjS1oxb1hMb0dzYTBBSHVseGpybnMzMjlQck5KazVNOGtj?=
 =?utf-8?B?WFd2Y002bnhKQVFja1hCY1A1Y3BHWTlzWW1OTUZFc2tYWUg5MDM0RjlVUXFq?=
 =?utf-8?B?VXlYRStkU2Qvb2xxOVVTeGRqdDEvbVp3MGdzRzR2VHYzK2FUN0Zib1JVV0pi?=
 =?utf-8?B?b21LNXp4OFM2YUd5a3lMSVVycVRweG1GcGEzejZFZ1MrVmh4WHMrTlJKNU9T?=
 =?utf-8?B?Vi9IVVB4MUZQVWtLY1NNc3dDR2NWYnpQUHJndWt3NkhDZWduQm90bHE2emxJ?=
 =?utf-8?B?Z2dmV1ZzcEpQcERpQ3dGQlZUSGoraGlkK1UvWjByQ3Y0M20zYjBlajdtVHBo?=
 =?utf-8?B?bWkvZGVjNW9IUkNBR1kvWW53NXJLVmIwa3l2TWdENlp4WS9qSWI2TG9jQjdu?=
 =?utf-8?B?Q04vTGExbFFLYWVYQlJNTjBWdUhWZ0huNzU4RVRjaXhJSVJtaDZPNnpYNC9w?=
 =?utf-8?B?bzF1OXBZVnBXQnR5aDVUVmVaZktkNlV6RGlGV3p5VmRMamtzSVpEdGpjMHVm?=
 =?utf-8?B?cTMycWx3UVNpSXZYc3JEYUhCcXhLK0xiUTdIbVJwa2NobGN0OCtXWGREM1hT?=
 =?utf-8?B?ajF6OWRpNTNYOHU2c3YreXhKODJzcXV5T1lzWGdmYzdFZ2tabkxRU2QrWS9l?=
 =?utf-8?B?YUZUYXhpVGNEdCtGUUt2UVVEamZpSlJOSEJZT05ieE10Nlk0cWFyMlZMWERy?=
 =?utf-8?B?SmJGVGxUL2pFNTI4c0gwT2JzNENUQ0JLL0VpMDY5TjFva1RKRkdMOEpxUklI?=
 =?utf-8?B?Y0w1TVV0SitiazBtTHhTNi9ySHQySGpmOWhjTzZXTllrbmlhbC9ITVMxZER5?=
 =?utf-8?B?L1FocWVacmNwd01tMXN3bWhGVVVoaWNFZDdYQmx0dWtRWEQ4UnJBdFdQdWZq?=
 =?utf-8?B?b01PamVKdlExUWoyTG1Za2laS3F5cmVoYlFmdnZhVmhtUURDdlhkUzlqYUhP?=
 =?utf-8?B?RjJ5YmpqaXp4cTNMdjEyLzZHTEllQmVGanZjaGdxYjkzcGRxQm9ibTZHb1F3?=
 =?utf-8?B?Z3JqdHF2bWxsSDJhK0VDQ2xkY1FKQWFDUWhyZ0daTjhtaVlGRGdaZGluNm1p?=
 =?utf-8?B?TW1ESVVMVkJxMWtzYWRHdkFhQzh5dmVOZzRkOTlpSGlXV3lzMnA0MjBsVFdX?=
 =?utf-8?B?bTZRY1NlcENscVRyYjRjQXM5N1RmR3lhcTc4WDRKbDdkeWJRV0lMeE9TdUVh?=
 =?utf-8?B?dHZWSlA2Wnd4VEo4OXpmcGdxMjN3YjZsUFhINGpZUDIwM01STVBCVGlzNitz?=
 =?utf-8?B?SVlOVWVQOElENFQxOUdKeVpjY3p6NWhvQXZXOUlyQ2tZMnF4WHJDbUg2ZS9h?=
 =?utf-8?B?ZTZMcjEwbnZjS1g5b1hMVnFsUzZJRndaSitWdlhpaUIwU0ZPSGV3ZzlnVjYw?=
 =?utf-8?B?RWpRRkNtOHk1VHQyYnZVcXEvKytRRUVVcnZ5OXdNRHM2NVlIdjNTalJ3alpI?=
 =?utf-8?B?ZFNGWTYwdEZrcnVINXNNbGY3YUZhdklYVGFFWnZBMFR0eVQ5eWhZVFNEcE5U?=
 =?utf-8?B?eklBRys1L2xCUXRBaEc0SEwyUlVWUG9XekZ0SUdDVWVGMXh4U2g3VjNZTVVn?=
 =?utf-8?B?L2J1QzFZSW1kNVRsVU5GTHhWMnNhMFlSdG5qL2hTc0lLSXpZWkNoc3htYk5J?=
 =?utf-8?B?UFBQMWRPcU9mWVZWSXhsbi9ZNzMvYTY3QlkrTTlQWEtEcGxlWW03MXNGTkFJ?=
 =?utf-8?B?RmtaQmJuSnhpTXA5eHlwTE9nL2NDZGgrNHBKeTZBSFZlUVNXVm5MMklhYlVC?=
 =?utf-8?B?ZnZmczJKRzV4SVhqZXV6TjV0QmpOY3htMk9pVjBmQlYzRThjQ1dCUWx1U1gy?=
 =?utf-8?B?SkkwVmZXWjVUWXc0ZVVFYnZnc2V4eTFVNDByQkNSWTJWc2NsSmxXZFF3cmVx?=
 =?utf-8?Q?8QhrOg8JkjIKgj3gexTInySdnZcTto9oWYxFqI284k=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 14ff58c0-5250-4ee4-dc3b-08d99a70a892
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2021 00:11:30.6778 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k/sKJ3A0EwP7fhlE8FvnNxutEGWOtY231OEPHaSi8IzVMLhoUcKTXdHK33kxeFv2Aglv6LxXw6MU3MQDdxiHF2yrI2rNnI00ye6TiJHYH/M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2155
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V2 2/2] drm/i915/gt: Hold RPM wakelock
 during PXP suspend
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



On 10/25/2021 12:13 AM, Tejas Upadhyay wrote:
> selftest --r live shows failure in suspend tests when
> RPM wakelock is not acquired during suspend.
>
> This changes addresses below error :
> <4> [154.177535] RPM wakelock ref not held during HW access
> <4> [154.177575] WARNING: CPU: 4 PID: 5772 at
> drivers/gpu/drm/i915/intel_runtime_pm.h:113
> fwtable_write32+0x240/0x320 [i915]
> <4> [154.177974] Modules linked in: i915(+) vgem drm_shmem_helper
> fuse snd_hda_codec_hdmi snd_hda_codec_realtek snd_hda_codec_generic
> ledtrig_audio mei_hdcp mei_pxp x86_pkg_temp_thermal coretemp
> crct10dif_pclmul crc32_pclmul ghash_clmulni_intel snd_intel_dspcfg
> snd_hda_codec snd_hwdep igc snd_hda_core ttm mei_me ptp
> snd_pcm prime_numbers mei i2c_i801 pps_core i2c_smbus intel_lpss_pci
> btusb btrtl btbcm btintel bluetooth ecdh_generic ecc [last unloaded: i915]
> <4> [154.178143] CPU: 4 PID: 5772 Comm: i915_selftest Tainted: G
> U            5.15.0-rc6-CI-Patchwork_21432+ #1
> <4> [154.178154] Hardware name: ASUS System Product Name/TUF GAMING
> Z590-PLUS WIFI, BIOS 0811 04/06/2021
> <4> [154.178160] RIP: 0010:fwtable_write32+0x240/0x320 [i915]
> <4> [154.178604] Code: 15 7b e1 0f 0b e9 34 fe ff ff 80 3d a9 89 31
> 00 00 0f 85 31 fe ff ff 48 c7 c7 88 9e 4f a0 c6 05 95 89 31 00 01 e8
> c0 15 7b e1 <0f> 0b e9 17 fe ff ff 8b 05 0f 83 58 e2 85 c0 0f 85 8d
> 00 00 00 48
> <4> [154.178614] RSP: 0018:ffffc900016279f0 EFLAGS: 00010286
> <4> [154.178626] RAX: 0000000000000000 RBX: ffff888204fe0ee0
> RCX: 0000000000000001
> <4> [154.178634] RDX: 0000000080000001 RSI: ffffffff823142b5
> RDI: 00000000ffffffff
> <4> [154.178641] RBP: 00000000000320f0 R08: 0000000000000000
> R09: c0000000ffffcd5a
> <4> [154.178647] R10: 00000000000f8c90 R11: ffffc90001627808
> R12: 0000000000000000
> <4> [154.178654] R13: 0000000040000000 R14: ffffffffa04d12e0
> R15: 0000000000000000
> <4> [154.178660] FS:  00007f7390aa4c00(0000) GS:ffff88844f000000(0000)
> knlGS:0000000000000000
> <4> [154.178669] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> <4> [154.178675] CR2: 000055bc40595028 CR3: 0000000204474005
> CR4: 0000000000770ee0
> <4> [154.178682] PKRU: 55555554
> <4> [154.178687] Call Trace:
> <4> [154.178706]  intel_pxp_fini_hw+0x23/0x30 [i915]
> <4> [154.179284]  intel_pxp_suspend+0x1f/0x30 [i915]
> <4> [154.179807]  live_gt_resume+0x5b/0x90 [i915]
>
> Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_gt_pm.c | 6 +++++-
>   1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> index 524eaf678790..65535f459f9b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> @@ -298,10 +298,14 @@ static void wait_for_suspend(struct intel_gt *gt)
>   
>   void intel_gt_suspend_prepare(struct intel_gt *gt)
>   {
> +	intel_wakeref_t wakeref;
> +
>   	user_forcewake(gt, true);
>   	wait_for_suspend(gt);
>   
> -	intel_pxp_suspend(&gt->pxp, false);
> +	with_intel_runtime_pm(gt->uncore->rpm, wakeref) {
> +		intel_pxp_suspend(&gt->pxp, false);
> +	}

Chris had spotted this as well, but he suggested to go with the same 
stile we have for other components where we split the HW access parts in 
gt_suspend_late, something like the below (compile-tested only), which 
IMO is a better approach.

Daniele

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c 
b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index b4a8594bc46c..4f68299d1fd9 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -303,7 +303,7 @@ void intel_gt_suspend_prepare(struct intel_gt *gt)
      user_forcewake(gt, true);
      wait_for_suspend(gt);

-    intel_pxp_suspend(&gt->pxp, false);
+    intel_pxp_suspend_prepare(&gt->pxp, false);
  }

  static suspend_state_t pm_suspend_target(void)
@@ -343,6 +343,8 @@ void intel_gt_suspend_late(struct intel_gt *gt)
          return;

      with_intel_runtime_pm(gt->uncore->rpm, wakeref) {
+        intel_pxp_suspend(&gt->pxp);
+
          intel_rps_disable(&gt->rps);
          intel_rc6_disable(&gt->rc6);
          intel_llc_disable(&gt->llc);
@@ -355,7 +357,7 @@ void intel_gt_suspend_late(struct intel_gt *gt)

  void intel_gt_runtime_suspend(struct intel_gt *gt)
  {
-    intel_pxp_suspend(&gt->pxp, true);
+    intel_pxp_runtime_suspend(&gt->pxp);
      intel_uc_runtime_suspend(&gt->uc);

      GT_TRACE(gt, "\n");
@@ -373,7 +375,7 @@ int intel_gt_runtime_resume(struct intel_gt *gt)
      if (ret)
          return ret;

-    intel_pxp_resume(&gt->pxp);
+    intel_pxp_runtime_resume(&gt->pxp);

      return 0;
  }
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c 
b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
index 23fd86de5a24..7ffdc92e5325 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
@@ -8,7 +8,7 @@
  #include "intel_pxp_pm.h"
  #include "intel_pxp_session.h"

-void intel_pxp_suspend(struct intel_pxp *pxp, bool runtime)
+void intel_pxp_suspend_prepare(struct intel_pxp *pxp, bool runtime)
  {
      if (!intel_pxp_is_enabled(pxp))
          return;
@@ -23,6 +23,12 @@ void intel_pxp_suspend(struct intel_pxp *pxp, bool 
runtime)
       */
      if (!runtime)
          intel_pxp_invalidate(pxp);
+}
+
+void intel_pxp_suspend(struct intel_pxp *pxp)
+{
+    if (!intel_pxp_is_enabled(pxp))
+        return;

      intel_pxp_fini_hw(pxp);

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h 
b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
index c89e97a0c3d0..f1121865dc9d 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
@@ -9,10 +9,15 @@
  #include "intel_pxp_types.h"

  #ifdef CONFIG_DRM_I915_PXP
-void intel_pxp_suspend(struct intel_pxp *pxp, bool runtime);
+void intel_pxp_suspend_prepare(struct intel_pxp *pxp, bool runtime);
+void intel_pxp_suspend(struct intel_pxp *pxp);
  void intel_pxp_resume(struct intel_pxp *pxp);
  #else
-static inline void intel_pxp_suspend(struct intel_pxp *pxp, bool runtime)
+static inline void intel_pxp_suspend_prepare(struct intel_pxp *pxp, 
bool runtime)
+{
+}
+
+static inline void intel_pxp_suspend(struct intel_pxp *pxp)
  {
  }

@@ -21,4 +26,15 @@ static inline void intel_pxp_resume(struct intel_pxp 
*pxp)
  }
  #endif

+static inline void intel_pxp_runtime_suspend(struct intel_pxp *pxp)
+{
+    intel_pxp_suspend_prepare(pxp, true);
+    intel_pxp_suspend(pxp);
+}
+
+static inline void intel_pxp_runtime_resume(struct intel_pxp *pxp)
+{
+    intel_pxp_resume(pxp);
+}
+
  #endif /* __INTEL_PXP_PM_H__ */

>   }
>   
>   static suspend_state_t pm_suspend_target(void)

