Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1DAD8D16E4
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 11:07:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFD6189AAE;
	Tue, 28 May 2024 09:06:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fBgsBPzR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92A5A89AAE
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 09:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716887215; x=1748423215;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=A86gHyalf95w+kz10eyF0x8OZd2EZ0hOlgvqvDJVAU8=;
 b=fBgsBPzRByiQ3ostQPOs2QauaNG2Hgy0e7BScD3aOjPn3NQXcm0yfSnB
 k++CEleQmme7rt/js/I90YVLmNtt46J5N9vxNzcn5EYLMH/hhVnI2663+
 3KtnjG0Z24qVTdQEMxvWWQeKmy/6neNuwMzaoZGpVdR6NEh41HPdik6vP
 rIHFG7+nISLPFuudjpJmsJWXgdaGmd1FrKiiSubGTe8Hg6ZXJMF9UMxZV
 PVy4I41xc1m/TFjjJ+/orXVfM/4srOSj+UGo27OF31g/V9GyyOIRgy+s/
 z27vZqNBm51Sk/CfwLgH2A22XtnBT6MYvyTV9iPFUyUgMLEeL3kIRtmzf Q==;
X-CSE-ConnectionGUID: Sn5sW9T9T/OwyK1HPJ4PZQ==
X-CSE-MsgGUID: BE5Y4LAGT7emeFvTIo4f2w==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="23883538"
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="23883538"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 02:06:54 -0700
X-CSE-ConnectionGUID: LBFljJCtSHiA9GIKM0c/YA==
X-CSE-MsgGUID: cLRwAG0XSkembXByl/2qtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="35088688"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 May 2024 02:06:55 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 02:06:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 02:06:53 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 28 May 2024 02:06:53 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 28 May 2024 02:06:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h5x1GfLToBzOLg1pUtBAk9e/4jgqQBNfUrT0Ij4YydwRbm5aUNAJ7BXcN4AKCC60tpO7Q14Ov9j/M9XdltbiLVE3VSsE995FKDcMU/4ewHefIrppLU7HXkkaascJh1TL8lhbLQmQvDzDSsCoNSlnpAx7JcFjYZvSiXefF9E3p6Qk16apv+GIWw9atQDgD3P5hH/+q/ywk+u4i4bPByGl/7lIWD2p5SP/zbphIi3aGNd49WcRR7xlOQ7OZAnCa3M5lz0qYHF6Orl0iz8lf7S041VqKYfi8kIE6TfPLK5tkSJX8wRgAaNQ8XeTXY7eRKvRP9uhXRvHtDB/mcNCWW/Tkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8xitmvHP5JzEyZYzFRZElWFtchuVt9cNFoaBvZO7Uhc=;
 b=brO9MqlsrSdOYMgjzKfYW9AZkGrUCPH9BNjxiS/6C8QZDfeirYMgTiEX6+D1zyC6wgKQFcVrzhU1LHUCG/yL5UjgIXeTo10ht8whnFD/SjkTIwBaI3nABTJe/Zs+sNpY/1a5GkFNYgfK8AHw+ph/9owJXi3Bys0w5wmmOsVCWuPoStA0kU6aDFS+KpQXEVVYiuv01HC7dlpcJFvtKNGU6zk3KbiRSmAaM3tt1MGWzh2ooMDhZ3tLDuTcO0jbZk8L51BbC3jwiwpNZXEsDS788GHmoQlxbNtfxCBFaA9jL1hN1FH+r9mC/HugL2NzjBxyxUYYi0s+IbRRhH2+3KsZBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH3PR11MB7914.namprd11.prod.outlook.com (2603:10b6:610:12c::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.19; Tue, 28 May
 2024 09:06:51 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%6]) with mapi id 15.20.7633.017; Tue, 28 May 2024
 09:06:51 +0000
Message-ID: <c4cd829c-9120-4c8b-b1b2-124257052873@intel.com>
Date: Tue, 28 May 2024 14:36:45 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 2/8] drm/i915: Update trans_vrr_ctl flag when cmrr is
 computed
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20240524102432.2499104-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240524102432.2499104-3-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240524102432.2499104-3-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0153.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::23) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH3PR11MB7914:EE_
X-MS-Office365-Filtering-Correlation-Id: dbd436c1-e481-4003-b635-08dc7ef58369
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R1ljeFM0byswZ1FKQXFBQmdVRHZkdHhXNWJNV1ZKcjU0cEJCRXdhN3hRaTBJ?=
 =?utf-8?B?ODMxaGZ3VDRNZk1aNFcrSXRld3BUTUdpWGdoSEpPemVnVEdYVERHd0c2ai8v?=
 =?utf-8?B?TjZhcUFXdlpWZHVkRWVBYzRvY1VJdXU5US9hMU1LZXppRC92bU1TOS9XTWVm?=
 =?utf-8?B?dTlrbXFQcWt3VEJvRUlNeUFhR0FnNUovb2FTYXZnK2lYcGx2WmhBU0F6a3BG?=
 =?utf-8?B?Tldoc09HY2FiY1pHTi9vSmJhT2tjdithYjNEMjdhVThRR1BSY3J1cU5qWXda?=
 =?utf-8?B?RnEvQnJGMEJBVVpOTXNLMXRrZVpudkJtMVE2WTlzanF2dXV1WlFjdDRQS0JT?=
 =?utf-8?B?L0lFd2wzTWZWTWl2VmQ0Zk9iRmZrWVVaOVJMc29OWXd1bkhXZnBuSUdUd0Jy?=
 =?utf-8?B?WFhmNUdDNnNmSkRVRVBLTmNOS0d4cWNiR215Nis2RU9vdkVVZ3AyRTJ0dGFF?=
 =?utf-8?B?YWFnYVpnMXNYTXZRYUxsK1lkZWRlNVJWV1hWOGpLL210ZTVSbXkzRnhjNUxm?=
 =?utf-8?B?NmNNbEFVTC9CbVk0KzNiTHFvTTBYSnQ0VHoxZENRNjZjY1J1RzlzL25oWTV2?=
 =?utf-8?B?aXJNTUV6b0d1R3FodWRuQ3ZON1F0elR2aDBrNjhMZGh2Wm9ObTlSaTc5NElB?=
 =?utf-8?B?V0Jma2pMMzRNNVJrOVlZa1l2ZnFJSU90Z2J5SDBQZ3VEVlpUaXd4b1dZNGJw?=
 =?utf-8?B?dEVpSDhaZEhCMFk3YURCTmdaM0ZMVklTcnBjbnAzV2JwL1JNcWNpWC9mRVIv?=
 =?utf-8?B?V01rbW44QjAvUWpPdHlVWUMvNCtKVmNqdzMxcFcrSU8xVFFBZEs1bkxtTEJk?=
 =?utf-8?B?MXNreFIvQy9ITEdiczh6M3JYZW8rcGJsaXlHL3BLbEtsYXJBeTVPbnZpQjFP?=
 =?utf-8?B?NjlqTGxyeS9Gc3pqeGhTRks4cFpabW11T2JOYkFhNkpwaHl5cy9kNlhMMHF4?=
 =?utf-8?B?U2NkVGpTTzd3Z0lMcG8wWlZFNE5heUhLWWRMZTFMYTZnVWhRNkNLRDFvT09q?=
 =?utf-8?B?MFE4Rm9LK2Q3UlU0a2Q0WDBxL2NmRVcvdDY0RzQzWjN4aU92VWpxMksxaktj?=
 =?utf-8?B?L3FxaTU1Z2trcXE1MTEzUEI0T3lMQVJEVjFBQk5JK0FwOVk4Y3lVWTVNNlY4?=
 =?utf-8?B?azJmT3F6c3o2bjN1KzFNbkhnOGhOUFAybG5UbXd2MUQ3cVlBT0ZMdzU2S2M5?=
 =?utf-8?B?cjdxWVFIYkUyZnBEeDRONXhzQ01TbVhKWVNLSmhnWXNCaXc1K0JDanBZb3JY?=
 =?utf-8?B?TVhTME1ZeXVtbkZ6aS9kVkd1dDhkOVV4eFpJUlJyTlNSZjFvNFRZWWJrR2Jt?=
 =?utf-8?B?emk1N3NVbjE4SmpRVGRwN25DeklrdW5DcU5uQTk3ZWdIcHRXbFMydENFSHQ0?=
 =?utf-8?B?MzNwYmgvTSsxWmpCdzdMSnQ4NExoOS9EOXhMdXI2NDRaY0NHbUpyWUdaalFU?=
 =?utf-8?B?Qit6dDZDTTdkTUJ0RGpCcm1ROUpiL0JpV3NZUWIwZkZRZEdtZ1B5WmhDM3By?=
 =?utf-8?B?UGdkU00rb2VWb0R6bGZNb3NaSlVoSVN0a0VvK3hxbFRzMVlsN0ZUaGV1ZCth?=
 =?utf-8?B?S0ZXVE5uWmN3ZVB1WFpVM285Zmp4dVpUbXp1VFRPMko3WjJ2QWs4YnJROXlJ?=
 =?utf-8?B?K1dvSkhtcmxVUzA0RTdqUFk5YnI0bkwvZXpGS2tTWEYxMTg4d2NYMkU0VjRy?=
 =?utf-8?B?V2FXWHo2dE1NQXRhaTV2WjlEaHpxcTFaWDFxdzQvc2V0M2xrMTNYdDRnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NitVblhTb2tMTGwzU3ZMczhHK1dTWHkvVUYvc1dVRHFxbkFSSmR2MCs1cWZp?=
 =?utf-8?B?ek1kTDhTQStJY3FJZGJlY1ljUnd1RWZ0QjlsRVYzWXRMR0lFaTZhUE9rODh2?=
 =?utf-8?B?dG5wV2pZVGlOcmdlOW9WRHpSanBVRVd5TDFBZWJ5WjBuWm5MWGo2TWMyRVRW?=
 =?utf-8?B?dkROb0JPZ0tFYVU3eXR0YzBhL0plRUJIVVFYRGFsN21BTXVESXZKS3BmQ1g2?=
 =?utf-8?B?aGZhRlV1OXdtRjEvUkEyeHI0MWdVcXFod2p3OTZjWE45OXBESG9MSWxrQU9W?=
 =?utf-8?B?Z1hvblBnNksvVnVRUU1ZNUo3ZklBUENEM01oRFZaeXAyVEMrbHFIRUU1M01w?=
 =?utf-8?B?dHVyalBLVmpvZy9FWWtOOStmdnZSeVVHdzdFUlBhRjhIZm1UdzZGdW4yZjFs?=
 =?utf-8?B?ZTVabElBQjFlNmpVR2tCU2FyaVBwUS9DVzRXcUhDYzkyU09hU0tkWW4wZmJX?=
 =?utf-8?B?YVZoV0sxM011N1RaeU15aFVpQTNFeE1NblJHeTFrK1lPbllQWWxkaVgwRWtB?=
 =?utf-8?B?MHdvZGRtZ3FKOGdTdEZUb29Ec0srR09obWJmMGVuR0pUOVpYd0NXdFo5Q2sz?=
 =?utf-8?B?a0JmbWpxWEdIL212dU5TSGRUMjVmT21HamhMQWx6Q3FsbWN6Z2FQUVRDT0xi?=
 =?utf-8?B?ZmxmQVVwT1M5eUJPc3llR09uTnpIbWRISkwyY2U0ZXZ2eTBCVzFXVUgxSDVu?=
 =?utf-8?B?cCtLOXJ1cHcrdGN6Vzd3bjZHV1k3aklLNkZtcUYzVHVmSEI2Nzlqdk9GQk9p?=
 =?utf-8?B?V2dIZXNJdmludXdoYUp6a0IyV2JoUEsxT2tscldYZHFnZ0U4RmY4cXlnTlg3?=
 =?utf-8?B?NHJ4eWJzdlQrRUZ6K3lVYXl2cVV0QlV5d2hGTmFqSnlaeVByZDJQSVhiUnFT?=
 =?utf-8?B?V1JqelA5N0tLMHowUlplYVdQUmNZVnZTYzBldVY5Y1ZycDMvQS9xVVBwdUpi?=
 =?utf-8?B?T1pRUVZ1cUtrOHNYSGs0Q0hFKzlrb3lwM0ZjOHJ2cWZSdklKbzcrMnZrUWJl?=
 =?utf-8?B?VTZsZHliWWptbUdKL0ZVZVNpam4xNG1WVGl5NTZSamJab21PV2xVMVphTWxI?=
 =?utf-8?B?dXA5Z0VzMEw5aUt6V0ltRFZKTWp3OWlObnZqTjdmTm9lb0VvVEFlRjhvM0hN?=
 =?utf-8?B?UWZhSjFydERBVExMY1N5eEc4azI0TVQ4eStRZUF2ZTJ5aDg2TDBBeVpxNUcy?=
 =?utf-8?B?dzRZS1ZFS3VWV3lDRVBRZFZUcXFaRGhoNVY0bDRza2JmTWVNQUJXMUU5VnRX?=
 =?utf-8?B?RVMzOXdHd0VEanlQMVRDZEU4YWNLaHN0TXU1TVh6UEFxSTdleEpadHJKN3lF?=
 =?utf-8?B?QmNNT0lsMHd5cnozZXUwZHNTRzBld3Fvbm8vcCtGeStmejhWeFVvZG5tMG5U?=
 =?utf-8?B?ckkxQjdZZTl3d0FxL3VVRlRSYU1nSXNFRlZicm9Qd1BIbVFCdWkvWTFnOCta?=
 =?utf-8?B?VXZmRHd1Sk42T3pyTkgzdUc2M2NPRUs2ZW9iUzZXYkQ5N3ZPNWJaUDJZcENJ?=
 =?utf-8?B?alJmSytHL0xRK1p0MlRDM1h0RmdOcm92NDV4ZmhkZ2pVdFNkRjRkQ2dqUmts?=
 =?utf-8?B?WDcvSTJLSWg5M2I3Q1k1MDhXcCs3OVFWSFRZbThFSWZVb2tSdVQvMFFWQ0dM?=
 =?utf-8?B?cXBVcFAzcGxLMjFpT2d6WjNXa1pUU0ZaUFpYZ1Arb2o1QWpnNXZTT0FZV2pa?=
 =?utf-8?B?dERsakkrMFRTWlZKdmhQa09lZFRXcTZ0ZWFNcEZydG5EeEh6U2NzdlhpU2Jv?=
 =?utf-8?B?K0c5TVYzbnBHTFB4cjFtNmRKOEFUc2VwMDA2Nm42MWtPKzlyNmRwTXRaL3Zr?=
 =?utf-8?B?aWMxd0xLcVRxRFRySEdNZDdlWXFvcnY5L2F4REJlYTAxSTBJc0xoWHRQbWVE?=
 =?utf-8?B?dmtTZkFiM3R2NXloM1dEOG81K3UreDNHZHVGa21LdHdKaWE2VTcwMTV4cTZq?=
 =?utf-8?B?UVd6emhNNnNZS2cwNU0ybG81eWMvdkVWSXJWaHVSSzhrSG5ZVGlyME9uY3A2?=
 =?utf-8?B?ZHBwbmI5b3BrNjZqMmVEWUhvMVpYa0wzaGxzSVQ3eitsSit6Rm1icnFzaG1m?=
 =?utf-8?B?NnNNMUFXM3pIOFdWWnk1SEtENWRMWHFsUGt4YU5jbk5XZzBqMytTZU14Mmg0?=
 =?utf-8?B?anlYdkVlTHhEWVo2QWVRT0tETEVPeDVCZHMvcWltODZaN2daSmYwZ0NCWFlV?=
 =?utf-8?B?L0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dbd436c1-e481-4003-b635-08dc7ef58369
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2024 09:06:51.7445 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QAEuBLWsnTHKqs45WQFFfHK7RIkFQlWtbyn2tOjqme232wMmFPZJEqALLexB9ejb14x0dG36QLTuPA+Amr8w4hF+wNtzdaifNE8WTiHPAv0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7914
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


On 5/24/2024 3:54 PM, Mitul Golani wrote:
> Add/update trans_vrr_ctl flag when crtc_state->cmrr.enable
> is set, With this commit setting the stage for subsequent
> CMRR enablement.
>
> --v2:
> - Check pipe active state in cmrr enabling. [Jani]
> - Remove usage of bitwise OR on booleans. [Jani]
> - Revert unrelated changes. [Jani]
> - Update intel_vrr_enable, vrr and cmrr enable conditions. [Jani]
> - Simplify whole if-ladder in intel_vrr_enable. [Jani]
> - Revert patch restructuring mistakes in intel_vrr_get_config. [Jani]
>
> --v3:
> - Check pipe active state in cmrr disabling.[Jani]
> - Correct messed up condition in intel_vrr_enable. [Jani]
>
> --v4:
> - Removing RFC tag.
>
> --v5:
> - CMRR handling in co-existatnce of LRR and DRRS.
>
> --v7:
> - Rebase on top of AS SDP merge.
>
> --v8:
> - Remove cmrr_enabling/disabling and update commit message. (Ankit)
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 11 ++++++++---
>   1 file changed, 8 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index b96a8b2e7083..3b250e92af98 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -277,15 +277,20 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>   
>   	intel_de_write(dev_priv, TRANS_PUSH(dev_priv, cpu_transcoder),
>   		       TRANS_PUSH_EN);
> -

Line removed from here.

Otherwise looks good.

Regards,

Ankit

>   	if (HAS_AS_SDP(dev_priv))
>   		intel_de_write(dev_priv,
>   			       TRANS_VRR_VSYNC(dev_priv, cpu_transcoder),
>   			       VRR_VSYNC_END(crtc_state->vrr.vsync_end) |
>   			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
>   
> -	intel_de_write(dev_priv, TRANS_VRR_CTL(dev_priv, cpu_transcoder),
> -		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
> +	if (crtc_state->cmrr.enable) {
> +		intel_de_write(dev_priv, TRANS_VRR_CTL(dev_priv, cpu_transcoder),
> +			       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
> +			       trans_vrr_ctl(crtc_state));
> +	} else {
> +		intel_de_write(dev_priv, TRANS_VRR_CTL(dev_priv, cpu_transcoder),
> +			       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
> +	}
>   }
>   
>   void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
