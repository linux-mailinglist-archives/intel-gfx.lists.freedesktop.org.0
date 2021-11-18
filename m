Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9612D456390
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Nov 2021 20:35:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0C8B6E0DC;
	Thu, 18 Nov 2021 19:35:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B52CA6E0DC
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Nov 2021 19:35:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10172"; a="320486955"
X-IronPort-AV: E=Sophos;i="5.87,245,1631602800"; d="scan'208";a="320486955"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2021 11:35:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,245,1631602800"; d="scan'208";a="605303368"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga004.jf.intel.com with ESMTP; 18 Nov 2021 11:35:14 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 18 Nov 2021 11:35:14 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 18 Nov 2021 11:35:13 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 18 Nov 2021 11:35:13 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 18 Nov 2021 11:35:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gBc0dduNTQ3WDylL7FEtHOTwGHmWCdEVLU8HDcgA2ywXGLDn6VBHnvplcbrQcP1zRfO8rT24J5BeKujnp22tthE942n88udaYizXVwvOfpPdSD7CRdljtCyNHVU+vk8ufUffRR334T4edr/hSjvc+a/9pmwfZ6fIWksrq253dNmaulfy9P1OKbCY+6G0dtEtVmDBPx7RfdOWakeEewcuvNYM+5R3vVc7BC/eGWvtG6bjExszbII9TdKm3miCOvjxHdMmHK5rNMi+3bnZK+ZQrj3B4A5Lg6oQ0w9xWUzJhEb/SmDmYVsq2KaGGPznQ0X8l17VxuATHKJUlMaC3lJKvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xj5fQAahKxBi6bF9AofAyQ3SNlOO52068wVBucczP/I=;
 b=CKhO9i9Tk3BXXNms6s7itz6SV5LixSuAWS8YUKElf1g13LUme4bfkyVsPgncaavtUXMkCX9ErDoZHJLcbMTsP7ddwWItbII+pYZ2TfiQBIcZLxsSTfpiWkwMqjiqeHDeaR/w3RzjO8v/PyHegHHpbLDB9LHTwwsllZR/WBRcgVD3NiklpMaYahppt0KeUi+BIMbNKvjbafivoBBfGedmOw+CGIKHcLj+sgVhQuecbji1l4ahDj1POVnjnpM5zePZMSzhCJhHf1JBLVcLWwGqL+jlbAMnV9WejQKOmNKz+vbF2OaFDb5Leg51R5jVC9rnGzR0TbOPvP+6Dxt6tU1hkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xj5fQAahKxBi6bF9AofAyQ3SNlOO52068wVBucczP/I=;
 b=rSwdjHG+1PV40EBGJJaL5mrRGn/SjyHxjZpM+T7ErYlr3YyGjyGzIhDHTBsD69CHd1jyao3kOnQVIwzIPJEc8+mZKj1kr8hP2/PaTlx8x36R5cFkXo1vaf3ZMgQ7uLxR6E/xODs68NdNpB5SyYRCmAedc3ZfH1pIvfGBTU/pTFI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5475.namprd11.prod.outlook.com (2603:10b6:610:d6::21)
 by CH2PR11MB4197.namprd11.prod.outlook.com (2603:10b6:610:42::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.26; Thu, 18 Nov
 2021 19:35:11 +0000
Received: from CH0PR11MB5475.namprd11.prod.outlook.com
 ([fe80::cdb5:a20d:8182:c9f4]) by CH0PR11MB5475.namprd11.prod.outlook.com
 ([fe80::cdb5:a20d:8182:c9f4%9]) with mapi id 15.20.4713.020; Thu, 18 Nov 2021
 19:35:11 +0000
Message-ID: <7b3a4b58-d604-9465-34e4-9cf167f110f6@intel.com>
Date: Thu, 18 Nov 2021 11:35:08 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.3.1
Content-Language: en-US
To: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20211117060321.3729343-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <20211117060321.3729343-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR07CA0107.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::48) To CH0PR11MB5475.namprd11.prod.outlook.com
 (2603:10b6:610:d6::21)
MIME-Version: 1.0
Received: from [192.168.1.65] (99.72.232.53) by
 BYAPR07CA0107.namprd07.prod.outlook.com (2603:10b6:a03:12b::48) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4713.21 via Frontend
 Transport; Thu, 18 Nov 2021 19:35:10 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5dfb78bb-7ccb-409e-21b5-08d9aaca8930
X-MS-TrafficTypeDiagnostic: CH2PR11MB4197:
X-Microsoft-Antispam-PRVS: <CH2PR11MB4197C584A1E1E79013562724F49B9@CH2PR11MB4197.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Xt/sdUtsWssrUTipS/1bnHsYHR39dEH9L+vZUmmow0dy3pnyLz/efu9e3Tu+O9fsvArDcri6WKDnmTRT9eWTE6dW7E3VOX6vdgzwaVFOH7yt4xzqGRyDd1FJ84HpaQKjUgJMIRn28QoJ5W5TrZRG9UxjnyMUwcBrazNb6wK+SHkhHsgVoilbBkIniQzQmzyHVcyX3V9C0CNaHge2OH0nwZmdT238Ru6YY2MMFZBMXRbsX5i52/ttWliCYYcF9CMigeV0T4JTwN/7LJ/YSO0lJxVEQNYrLUzPynnlctWFcwJLpZSCGSvHXkRdjCh39W4+rOBzgOop1Gc0TFYHPp2lKy19Ana7g2VAG5L3Frw89ndgIZhKvGyTwcFqOXnQboc06NaV7teidfrJZ3tnGpWO6WakPox6OstDryL5UBqo+BSMWix2/BXK/4/dyyrxE132XjDYNVVasqNc/2Wez3E/vXsx/us2yxec+bBI8ATkyshKDnrhba2AS/dqXBbwcJanbJI6dItKwg3aiZ+vQZTLfLOxNugfZgZE6ofA4ho3trFc3wM8HrEcWz5ucB1HmURq4vTfAaVQIWKfCNdPMdk4vUIyWkCMVvLe037yHXvHlW7zWmlXa2w1Rso6TWbKYxsXiW4Kv3wu+z6IMbCcT1qGIHPhJn1iSZDZpIu9tIu/n8cCH50UWior3mzWyGGkt4PkdbsQyjZHXa5jhQxAL6AiKW4hjPBYVOHRYfa534rMC40=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5475.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(8676002)(5660300002)(15650500001)(26005)(86362001)(6486002)(186003)(956004)(36756003)(2616005)(31686004)(38100700002)(316002)(53546011)(82960400001)(8936002)(2906002)(45080400002)(66556008)(31696002)(66476007)(83380400001)(66946007)(508600001)(16576012)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eWJicExhQk13cGpkbytKOVZiVm0zZXl5a2syMVhIS3ZFZGxiSjc2aFlOM1ZQ?=
 =?utf-8?B?ai90THV2NTdtY2VHbERZRGJuSWFFVkFEYlhrSEVCb2RFQjBNbWdQU0FTaUJp?=
 =?utf-8?B?blVJTzQ4ME9YckpnaHp5Y3Ywc1pTLy9MVlQ1VFNPL3pRUG92ZFNkZXNQbUZu?=
 =?utf-8?B?THhqTHBMYmE0eStiSHpNTWtIYUlyZzdqeXhrMFJadlNtOU1pOFN3UXZNTklN?=
 =?utf-8?B?T1NMK2ZpdVNTK0RIMUZWVno3TDM1UUZQKzhjcW5NTlFWU1E2SHQvSXduaGpC?=
 =?utf-8?B?bEt6QXE5OEtvN1o4Z1UrQmFvL1lvcDcxNjlVYnZnaElNcFVNS0V2MU9YRFc0?=
 =?utf-8?B?UUN4UktBTnJIdkJTcDVVUVYvWnAxbTRlVFdzaVhrRHA4K0h2c0FyUStzdEZ0?=
 =?utf-8?B?cHZLSU9adnp1RWcwN1JxRkluajB6ZFN6MnVHaTFGb3BraTN3Y0J3MTRiTUpr?=
 =?utf-8?B?TDYzalk0ZDlSeEJKNGRUVXo3TDZIc2FlMkZWOVBpQ2FCdVRTUWZpem5BbnNq?=
 =?utf-8?B?Y0d1dklYaGFrNFA2VnJEQzg5UmNWRDVQeThIYUd5ZjZaelZucnMrclhVanJN?=
 =?utf-8?B?eXBsQ1RQWWUvYlZveUNPQ25lakFlM1RrY0w4bGc3M3JhMjlVd1REbko3ZXFo?=
 =?utf-8?B?dkR4ZXFHOVYycVB2eWlSTHdZWGV2ak9kT0NSSFpJWFFLa2pmNU4wVnZSVHdR?=
 =?utf-8?B?M3BBeDRTeFhXMHNTdDh4dFZrV2FjVUUrVWF2Tlk4blU2SHNnbC9TbUc0Tkh4?=
 =?utf-8?B?WnBJY2d5ZXJ3MmFIQ1p3MEtMWWJINzJKbGREcDBWK1RiakNTL3h5TzBSbFlL?=
 =?utf-8?B?Z3ZYZXdjTjBkczFTV0hSR3AxaWI3VjVEMWhWbFRUa2pObjBjeVMzQ09SR3Vv?=
 =?utf-8?B?dnNINTVucHZvSm94Sk5hUzFSSmtVa2EyUmNEZ1lucFlPbDMvWEFDMmhVb1Vv?=
 =?utf-8?B?Q01wVFdsZld3UHNoNnZ5ZUZSeHRFN3lTL2NKd1h5YlFZVEZ4SjFOaFZsZmMv?=
 =?utf-8?B?cjN1MWhIeDFjYkFUMUp5K3J2QWpZSEVMQXI2M3FDQVlFckE0TDFvWXBTSDRQ?=
 =?utf-8?B?M0NMRlJSZ3FHSlU0S292aXMzem9jUlFkNU1JbmtWRTBYUlNZakprNk5IWTZY?=
 =?utf-8?B?MnFQVk4wc0tjN2JJaTR0Z3dIM2ZnWlk0UGpEM1dkWThrTlAwRTUzellkM0pm?=
 =?utf-8?B?WnFnZVZMUDZ0MUV2eFhKNkF6c0taTG13TVdnd1JhdDQvMnl4U2o5VjJLZWl2?=
 =?utf-8?B?cU5DRit4R0xsQlFHNENXUzM5alJiRjRPazB3cFlzMHZZbStKQ05EOGd6dHd6?=
 =?utf-8?B?UlpLUzUxcHFtN3M3TWZYbTBTSGVRZTVvSUplb0QxaVJvNWpLSTNDQU5SREd1?=
 =?utf-8?B?N1JxeU5HZ01rR2czWXpWNS93dTlSMldtdEdSaGhsWDNsaExJT1V6d3BiYzlR?=
 =?utf-8?B?c1lPSWpSWU1BejB5MHlIdXJHYm9VQU5icWM4MDU1Sys1ZTNiWDhEZlU0MXg3?=
 =?utf-8?B?b1o2bWtxRWJkR09kR0loU2w2c3FQdzVKNlBTd0FMYWlQK1Q3OG1LNjlQQlNN?=
 =?utf-8?B?Sk5GSmpRdjREQWtFRGNVTnIrVmZTWUR6SS9TUVVQYkN2SHNQN1ZZOStDVWFy?=
 =?utf-8?B?Z08wNkZvd0htK0xnd3VWMmVyVWVDbWRjSVdvdzZxMmNRVElBY1ZjMXpKOVBY?=
 =?utf-8?B?K0kzTGdDSVJ3emlXM0F1NHBiVUJUYVdpTHBiUlJWMHA1U2swT1NhcS9NRUh1?=
 =?utf-8?B?dGhIZGZIUThheS84RG1hb0ExbzdhUjJTU1hlY0ZtdjlSRVRBbEoxZTl3WFAv?=
 =?utf-8?B?N01xSUtEeEFxTlBjQjJZWXU1QjdQeUdiNFVIUUV5enIway9YY3c1bElEcEJl?=
 =?utf-8?B?MytITzRxQTJXRm96VXFFQ0x4VSsrQXg1RjFqVXFKd1UrSGtBQ0xTY1k5SEFm?=
 =?utf-8?B?NlZKZVZNOUZhWnZMRW94NUVZRTUyWVZ1aXU2UmJROS9wWDJNQ3NFZDBReHp0?=
 =?utf-8?B?TzNyWlpDRW5GYktFakxRYXMxNWoxbkFneDNoclRiTklsK0JmNnR0TDQ4SnFI?=
 =?utf-8?B?c0F0WllPS1J0aXk4eUlTaGcrQ01vQ0pLUytvcVAvOTRBUTNmMHNaZXlPR3A4?=
 =?utf-8?B?TDZaUWV5SUoyQUNndkhLazloK2tkV3N5bEtuSWpTK25ZR0N0Qlg5a2tySks5?=
 =?utf-8?B?NUhIWkZIOCtITTlGNGZKdEVNL3ZWUkd1QVBCMEZINXVJMjZPY0MzMW1jazBL?=
 =?utf-8?B?SFc2RTU1eUg1VVZzck1hWml6WVlBPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5dfb78bb-7ccb-409e-21b5-08d9aaca8930
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5475.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2021 19:35:11.4839 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0Q3pNqiShBJ4W4sf57QvkMBrJg3Xa2K1VAfPK90EGkqUsUpmtgfzWQUB+BqXRok4jgj5bG8MDf6bgAUcHSrAq/xNUIEcg6v6+OcWOLiO89U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4197
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V4] drm/i915/gt: Hold RPM wakelock during
 PXP suspend
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



On 11/16/2021 10:03 PM, Tejas Upadhyay wrote:
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
> Changes since V2 :
> 	- Remove boolean in intel_pxp_runtime_preapre for
> 	  non-pxp configs. Solves build error
> Changes since V2 :
> 	- Open-code intel_pxp_runtime_suspend - Daniele
> 	- Remove boolean in intel_pxp_runtime_preapre - Daniele
> Changes since V1 :
> 	- split the HW access parts in gt_suspend_late - Daniele
> 	- Remove default PXP configs
>
> Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Can you send a trybot with the PXP config enabled before we merge this, 
just to make sure the issue is gone?

Thanks,
Daniele

> ---
>   drivers/gpu/drm/i915/gt/intel_gt_pm.c   |  7 +++--
>   drivers/gpu/drm/i915/pxp/intel_pxp_pm.c | 37 +++++++++++++++++--------
>   drivers/gpu/drm/i915/pxp/intel_pxp_pm.h | 19 +++++++++++--
>   3 files changed, 46 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> index b4a8594bc46c..c0fa41e4c803 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> @@ -303,7 +303,7 @@ void intel_gt_suspend_prepare(struct intel_gt *gt)
>   	user_forcewake(gt, true);
>   	wait_for_suspend(gt);
>   
> -	intel_pxp_suspend(&gt->pxp, false);
> +	intel_pxp_suspend_prepare(&gt->pxp);
>   }
>   
>   static suspend_state_t pm_suspend_target(void)
> @@ -328,6 +328,7 @@ void intel_gt_suspend_late(struct intel_gt *gt)
>   	GEM_BUG_ON(gt->awake);
>   
>   	intel_uc_suspend(&gt->uc);
> +	intel_pxp_suspend(&gt->pxp);
>   
>   	/*
>   	 * On disabling the device, we want to turn off HW access to memory
> @@ -355,7 +356,7 @@ void intel_gt_suspend_late(struct intel_gt *gt)
>   
>   void intel_gt_runtime_suspend(struct intel_gt *gt)
>   {
> -	intel_pxp_suspend(&gt->pxp, true);
> +	intel_pxp_runtime_suspend(&gt->pxp);
>   	intel_uc_runtime_suspend(&gt->uc);
>   
>   	GT_TRACE(gt, "\n");
> @@ -373,7 +374,7 @@ int intel_gt_runtime_resume(struct intel_gt *gt)
>   	if (ret)
>   		return ret;
>   
> -	intel_pxp_resume(&gt->pxp);
> +	intel_pxp_runtime_resume(&gt->pxp);
>   
>   	return 0;
>   }
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
> index 23fd86de5a24..6a7d4e2ee138 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
> @@ -7,26 +7,29 @@
>   #include "intel_pxp_irq.h"
>   #include "intel_pxp_pm.h"
>   #include "intel_pxp_session.h"
> +#include "i915_drv.h"
>   
> -void intel_pxp_suspend(struct intel_pxp *pxp, bool runtime)
> +void intel_pxp_suspend_prepare(struct intel_pxp *pxp)
>   {
>   	if (!intel_pxp_is_enabled(pxp))
>   		return;
>   
>   	pxp->arb_is_valid = false;
>   
> -	/*
> -	 * Contexts using protected objects keep a runtime PM reference, so we
> -	 * can only runtime suspend when all of them have been either closed
> -	 * or banned. Therefore, there is no need to invalidate in that
> -	 * scenario.
> -	 */
> -	if (!runtime)
> -		intel_pxp_invalidate(pxp);
> +	intel_pxp_invalidate(pxp);
> +}
>   
> -	intel_pxp_fini_hw(pxp);
> +void intel_pxp_suspend(struct intel_pxp *pxp)
> +{
> +	intel_wakeref_t wakeref;
>   
> -	pxp->hw_state_invalidated = false;
> +	if (!intel_pxp_is_enabled(pxp))
> +		return;
> +
> +	with_intel_runtime_pm(&pxp_to_gt(pxp)->i915->runtime_pm, wakeref) {
> +		intel_pxp_fini_hw(pxp);
> +		pxp->hw_state_invalidated = false;
> +	}
>   }
>   
>   void intel_pxp_resume(struct intel_pxp *pxp)
> @@ -44,3 +47,15 @@ void intel_pxp_resume(struct intel_pxp *pxp)
>   
>   	intel_pxp_init_hw(pxp);
>   }
> +
> +void intel_pxp_runtime_suspend(struct intel_pxp *pxp)
> +{
> +	if (!intel_pxp_is_enabled(pxp))
> +		return;
> +
> +	pxp->arb_is_valid = false;
> +
> +	intel_pxp_fini_hw(pxp);
> +
> +	pxp->hw_state_invalidated = false;
> +}
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
> index c89e97a0c3d0..16990a3f2f85 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
> @@ -9,16 +9,29 @@
>   #include "intel_pxp_types.h"
>   
>   #ifdef CONFIG_DRM_I915_PXP
> -void intel_pxp_suspend(struct intel_pxp *pxp, bool runtime);
> +void intel_pxp_suspend_prepare(struct intel_pxp *pxp);
> +void intel_pxp_suspend(struct intel_pxp *pxp);
>   void intel_pxp_resume(struct intel_pxp *pxp);
> +void intel_pxp_runtime_suspend(struct intel_pxp *pxp);
>   #else
> -static inline void intel_pxp_suspend(struct intel_pxp *pxp, bool runtime)
> +static inline void intel_pxp_suspend_prepare(struct intel_pxp *pxp)
> +{
> +}
> +
> +static inline void intel_pxp_suspend(struct intel_pxp *pxp)
>   {
>   }
>   
>   static inline void intel_pxp_resume(struct intel_pxp *pxp)
>   {
>   }
> -#endif
>   
> +static inline void intel_pxp_runtime_suspend(struct intel_pxp *pxp)
> +{
> +}
> +#endif
> +static inline void intel_pxp_runtime_resume(struct intel_pxp *pxp)
> +{
> +	intel_pxp_resume(pxp);
> +}
>   #endif /* __INTEL_PXP_PM_H__ */

