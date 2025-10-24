Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE5CC068F3
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 15:45:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B8F610EA99;
	Fri, 24 Oct 2025 13:45:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bdXj2imm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FD7410EA99;
 Fri, 24 Oct 2025 13:45:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761313546; x=1792849546;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pHWLc45yPnbmbnm4RD/ROZcTwUNDBPVW025UksjkCg8=;
 b=bdXj2imm9RrCXEEZibYvpXNRAWem/9zKddVuz2PwIT2P9+P3IhppSBuX
 zyB6cJGJ7SHkz4z0nB6ru9Yp36nsT9tnggEoFs0QN8astNX4jpt2mVThL
 p55DbQNCQywlss1nfpp1HSCxSfvWepQ8qnKQtcRzDR3h0JXkzQd6yBLqE
 ToPMG4Wvj/Q0Kl5dkUJrPfIkwnD2+bt5WxZsh9OkVdclzdhkKDZ2SytZ4
 EIb1fS0ErGWNxh3t/vQk2kc9qIK2BoQhGJIC+2hlbctyoZBvnTiCwmSlm
 9YYzT7C/uq9o4W6CbPYDy3tWf3DD94dAv33ITSvbr7CzfuV9KIkRasRoA g==;
X-CSE-ConnectionGUID: alY/DZTSQwSIaTXlFHc9ww==
X-CSE-MsgGUID: xAW27ggMQxiiyRU4TBHCqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="86124946"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="86124946"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 06:45:45 -0700
X-CSE-ConnectionGUID: MvGFptFjQxGekfQibKtShQ==
X-CSE-MsgGUID: TWguzYxTQzetk7I+rTCr9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="189679208"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 06:45:44 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 06:45:43 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 24 Oct 2025 06:45:43 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.71) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 06:45:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=o0xkGI36yYuizzBQAwkKUZd0+wijj+dMW3A+zjzDr1UhltEXMhoyQgwim/mrX9k/+5cKjOcJyGhejL4uZWrU95oR6mubcj/J918QskkY84g8Q9FuiUJVuktuwbn5ijK+AFRzq61719j+ormgJg+uDkxImkKhozRTeDoFRSUZipa3lQtFm1t9zns5EJJNkb1zlYP9MzzMv0daGG3J377XkoTRZR09XRheeV4mFzz9r8ytJUPXb3voNSaVL+DMyfyu4D8/M/2TSE7dwgwY/mjhE/N59j1l8uGarhKCpyl66NNWb3hMa80oH7oAlHtkavahgiE0LzxvNC14SsMtjZlpRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5RQFXcuxy8i37akr61tjEbSN9ICttezHiV8AcQzETg0=;
 b=BSuUbEX262plHrSbPOL92W3T9yDL9NqJZNdZpEpL0meWw1yzA30pOxgJ+Vq7bmZ8gFw0U2TM1kR3H9xZhUNsYRtBHYjcEmsVr6MIOsZJo/SrF0UHM4QZ0Vq+zhnQDA3dN4voSNyzBmVM1teei7doOonBYh+UB9oAAT0gngpecm6z2//ekMX9iv0Zf9O6Zne1pmKF/lW1nn8Ms3XjFwAwPJOxzKwB13jG+tz2UTlvL6Yb/l/c7BSMmVFVbzEnqKVY5s1OGU/X8MtSXXYER1R4vgpteBFQsIZG7/JfUoHZsA9f0siqYecP9HlWf2CHvD+gRc/Ee92iVjshKTOvAq/t/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BL3PR11MB6314.namprd11.prod.outlook.com (2603:10b6:208:3b1::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Fri, 24 Oct
 2025 13:45:40 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.011; Fri, 24 Oct 2025
 13:45:40 +0000
Message-ID: <dc00e52c-01b5-4e61-8f59-c951881a748b@intel.com>
Date: Fri, 24 Oct 2025 19:15:34 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/22] drm/i915/vrr: Extract intel_vrr_tg_disable()
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
 <20251020185038.4272-13-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251020185038.4272-13-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0143.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b9::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BL3PR11MB6314:EE_
X-MS-Office365-Filtering-Correlation-Id: 9a353e3a-eb5b-4e28-1c47-08de13039ed0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S21BMzFXNTBkekdHRUNZNms0L3I5S0VLc1VOQWVzdEVzcVJTTk9Cb2tnUzZ6?=
 =?utf-8?B?VVRPWkVLdWRtMHZRcFdJeTlqb2JKbmFka0Q3WFl6bkxYLzc1T0FDMlFPS2VB?=
 =?utf-8?B?RytnWVNhaUZMVm0wQlVXc1MvZkhyNWJUcHB3b1I5OWtUTFh3WHF6N2Qzd3Bp?=
 =?utf-8?B?U2ExRFgxeG52MWtqb1g5anRRclpDci82SVY3OHozSWs3T2tReHJBejFLVldj?=
 =?utf-8?B?cTJXRmdiVTZrRXJRRGk5MVVpdndhcXhNNk9GOFJyT1U5bG8vSlRHZkgxcXBM?=
 =?utf-8?B?R1pxQnFQSittcHJUNUZxWi9aazl3T1FhNThIay90YnU1dEpJQ1kwV2dUbmJM?=
 =?utf-8?B?aXRTVnFvZjQ2N3JNYWRpYldPQVpRZWRialhjUmtTaGM5U3A4OXVqVklFS1BK?=
 =?utf-8?B?S0J6SG5FeDk1ZDA2OVJXZEFjWktGbnV2ckxZQ244S0FhZGJYWnlNbUFNSm5R?=
 =?utf-8?B?Q3dVazRpR0xONmFtaVVoeVNGNXpaTWtzT2hzZUdBbW1aYnJPbHJ0dzM1TVJ1?=
 =?utf-8?B?QjI2djErTDJzOERvaTU3bGRkWmV3eTRiMmZVUG9Ic2lhREF0UlFsTlFTS2U4?=
 =?utf-8?B?ZFBFTllPRXhaOHJSejV6NjEzaEJYMHNQSGc4eWQ0bzFkMVRRd0dPdVJ3OW0v?=
 =?utf-8?B?LytRM1I2Zk9HT2ZsVHFKSisxM2thcVhmSTJjd1lWWVhnMnk3QVZDRytVRnlv?=
 =?utf-8?B?U0FUempaUmRYMjZOVTlIZDd6S2Mxb2g2QmhZR2tkdHZMY2tVU1BDYkxIc0tR?=
 =?utf-8?B?QkVPSk9NeXlUcEJUQnFIWTJpOThxYTYrWEtvKzl5SmIxUmNic3dmR29oa3J3?=
 =?utf-8?B?ajByK0ZKK2EvZENYUGFtQ0NmTmo0WXBWT0dyS0FnVC9MWlFLZVJ0Y0ptOW9p?=
 =?utf-8?B?VjBad09QNEhpcWJ4SDBCQ0kzTHdtZFowR2RoZTF2RU9nalVYYjl1YTBIdTdN?=
 =?utf-8?B?cWUyb1lsNFVqdEluVmoxenFKeDRlU01pRkNIQjNWN2J0eWd0Rm5iTXRsUnRZ?=
 =?utf-8?B?U24wVmttcThqMHRsb3l0NzVZNFg3eTRjN1FaanJTMUE3WEZ0WHArcDZFbUZU?=
 =?utf-8?B?Mm5xN29uQ0c3NHFPN3Y4aDI5S0lianc4TVRUOVdkOFZCL2RtcW5kVTduZGVM?=
 =?utf-8?B?cVJSbVVTbnovampONmNtelM0RnZMaTdNWTZPSFhyVE9jaDF6VkdDTEZKVmNF?=
 =?utf-8?B?anozN1dxb1IyY2RsSzhkVlM2TTJGaXRoTTE3eHVhMmU5TFdNVUNWblVsbEZi?=
 =?utf-8?B?R1FKOWY0bnAvTlpOUC9pOWVNTEtCelBXUmE4SVR1NmhWR0ordm5tdkRBRTRn?=
 =?utf-8?B?QUx4QzBXd045bFk2N2NMTDZDNk1Vb2tFMTBDZG12WnZiRE5sS1JvRFVDcnFq?=
 =?utf-8?B?ZVZjalU3Qk0wcGZFdnBWa0lVOE1heGpudHZsdEREYjVLTXU1UUlvdEIvdjhy?=
 =?utf-8?B?bTlLbXRvUXFxNjV4QVVMYnljV0dHVlRmOUo4cEk3Qkl5RUxUQ0YyTHY2OUdP?=
 =?utf-8?B?UHZtM3Z0U21kS2svcklmZkJPQ2VESlBmZ2RISEV3VmN6dkdqNW5UMU11UFM0?=
 =?utf-8?B?Y2xBSmhmRmZ4UWttR0JrancyNko1dlcyMlZCa2V3MGszSVgrQnFiOE14bHl6?=
 =?utf-8?B?dXNYVGRIY0tHVW1ZbUUrMVNEMzljMHFIc090TkNQUDY5djdnellPM0RxUmhJ?=
 =?utf-8?B?S200NGpRNGFFK1Uzbi9PWFZTenlKV2hSbm03YjZCeldJWENDZXdVZzM2MHR1?=
 =?utf-8?B?V3hJUVk3RVR0WU53VkVQVWNPMnlIWU9qZ3hBRUU1MjkwaGNRZG1xVGp3MVpS?=
 =?utf-8?B?VFQ3b3ZjTndJOHFoc3VKbmc5NTZlUitCaXdOaFVQRVRLSHhwSWozN2FEOFll?=
 =?utf-8?B?RGs5UnFYc0RtWTc3U1lkMFcwK2JLMmFtZE14aDNXVmhWOTBUWU05cHpqQnNJ?=
 =?utf-8?Q?bjHGzn5adJiGm1DO1xq8t9CtZDMSj2vh?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WWxwK3dyaXJlbmd1dzR3YXp2UTBqL2F4NG5oZ253a0dPcTRHQlArQjhaUFI2?=
 =?utf-8?B?NzIwQ1hMa09kY0Z4NVRGaHlUL0JJSGYzUjF3UlNueHJNWE14RS9MLzV2ZmJt?=
 =?utf-8?B?MGJyVloyMWtZSTdPUUJHYnBTVWlZQndtUHVUeFhlbzdka01EQnkrNHhIYXlh?=
 =?utf-8?B?MkthZDA1VTRTNmEwRTI4VGNiYnAxL2UyWWl3N0FtMjdsL25PTjhqR21YTTJU?=
 =?utf-8?B?SW9Pem1weU1QRUMwb2dvNlBxMC9xeWtrenRPZVdzWXM5VGN2OG0rczVmb0Nl?=
 =?utf-8?B?MWYrNVhrYUNJaHZod0UwSDBJUkNDdWhjam8xd1pqUDRiSW9QSGxHWm0yUy84?=
 =?utf-8?B?c3BaSWVkL2JHVlI5M0t2OUlWR0lqM291ZWJtaDVhbTRPTndPc3VWMHZaWFBY?=
 =?utf-8?B?TVlRb2gvTm9kTXNGMmdBRWNlM25Md2RpMEhwcDI5YWxoTUxPNlBzZDlQK0gw?=
 =?utf-8?B?ak91Z3ZUZjRXelBtL2w2ckRBUk1yYWtUanZLRmZLV003YVMwRGhnWmxabWtz?=
 =?utf-8?B?WW9vbGJIRFYrZVJlL20yUmRVNXdjRXB0YVRtV0JBUEJwN3QxRUJXUXpnT3lv?=
 =?utf-8?B?VGxrN2paY3pFS0J1ODJhVzE1Si9JZGJnSUt0YWl0VVFFWXFKWGx5d25uL3hr?=
 =?utf-8?B?NjJnb1BCOEtpWGlib21ZbnhhN3A3MDdYZUJHNVlBOXJmSDk5K3Z2aXNvR1A4?=
 =?utf-8?B?aUdOQ1A2bWVPMGt3ZVQ0TWlmdXBsS0Rmdyt6MHF0b0Zrbjh6WCs4V3NwS2pU?=
 =?utf-8?B?V3RNYTAyK2dqMFZ0bitnaUpmNU04a2swTVhvTWJLYVAvRWcyRGtMQmhzUUQ2?=
 =?utf-8?B?L1hYSWF3SGJJVUlaV2lCc0l2bGZmUGVqLzRVcjcyY3hGYWtQZUJkelQ5b3Jz?=
 =?utf-8?B?ZDFLZ056YlBCTmxpbjBzc2xsb0pYSy9ZaEFnT0c0ZS9oTGpLUk85RmdZNWNs?=
 =?utf-8?B?VGUrN3MvTzEwSm5sSTFWMXE3RHVEU2t3dUxZdTlrTUtvTXhDL0VLWkJVdU1l?=
 =?utf-8?B?UkNjUEwrb0UzaS9PMjZEVFZmSGtnVG9rRFpkVEFINm5ZSUZTV2ROQnlISlQx?=
 =?utf-8?B?S09UZXRUSm41WWZCeFh2WjFMMThGUlJhZHJYT0REU25BcjFTV2ttUldtTHRS?=
 =?utf-8?B?ZHVEMXpPQkIyMEJXYWJTaFBtQUNwRjlXS2wzVVpSRzg0NzBJZ2NzRDBLRms2?=
 =?utf-8?B?UkZoQ0dKZ2hWVlNDWnpMNzZKYStwbG5KZkU3N0lmUS9USlk3RFRwT2VSZFRT?=
 =?utf-8?B?ZXIwclNJRks2VlpQWnY0aHhzd3RPL3lDSG9NZzZSbnIxeUd1SndHSmYwR0do?=
 =?utf-8?B?NWU4aTROMXJ3a3FXSmI4azNKaTJMUEJ0VVJXdXNHWEhHc09GOXZ4QTF3dVA5?=
 =?utf-8?B?emNuQ0pPWDZ3TnJPMTlLU2xpdEJUQ3lDQWhmYVdjL3FZeHVJZkRNdjhTMHNa?=
 =?utf-8?B?dUhnK2lFbjBaU1pybXdjZThQR1gwVy9JajNQOUxjZGxpclJaZmM0Q1UxWVk0?=
 =?utf-8?B?RjMzZjA5aVlhK2VoaFp1SHJOOUlpalhIdS9VTFpiQ3FTaWlGVkV3NE4yOEJK?=
 =?utf-8?B?UVRFaDB3RGFxYk9OeTNoZlJoL0dvRTc0d2lCRnpPTjhOVEtFOWpzeFErYlI0?=
 =?utf-8?B?V0F3T0F3VzFDNGNhM2M2WGV2WUdmamdHN214ZnE0RUVXMkUyYjJWeGUyRVBH?=
 =?utf-8?B?QS93RStDTCtuNVpVZHhaSkpYcGNVdW5pL08zdlc5ZFpKNmJzRDMrbnQxQXR3?=
 =?utf-8?B?UUJWdnFRaFZ3MEc5ZnJKWTl3a1V0cjIwTXVCczJaSGpHS0U1MXE5bklqaDZ1?=
 =?utf-8?B?MENkTy94K0NQbHhrZXlxdU8zdkhYVDJTVXd2T3RYb3dtVjdMUU9lK1lMM1FI?=
 =?utf-8?B?SFM1ZXBTNFNrVlFHa09ySHZvU0tjWXUyc2RIanNkWktEMlNxUkJoQTRIQUhQ?=
 =?utf-8?B?UGJPaEJkRVQ0b2RjUWg5YUZXTjdaQUUzNm1Tay9VSzg1RUwrb2lPZHFWUVV1?=
 =?utf-8?B?WVlnL244Uzk0cG4rakZFb04wL0NNVFBsVGh3UHNEN3lsRTFWbEw4MkFLbmlw?=
 =?utf-8?B?UFdBYk0yMjRWSTNNajZ2REVJMzBQdG82Z3dncmRacEZ1MktkQUxMSlljS0No?=
 =?utf-8?B?RkF0VWZQZTBleHprRUovN0c2SmRmZ3dzNE5YeksyeGRscFV6ZzQxaUxVMExE?=
 =?utf-8?B?Wmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a353e3a-eb5b-4e28-1c47-08de13039ed0
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2025 13:45:40.7209 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 68q9LTyt0uikC5gNLuTl9MXV5/X15zvj4x6XTktAykGjm+vLEMOKIeebeKpJ8k6iwM1lpsF7CN1nk0JKFnp5e7KVoicpXmKJ1+sUfTsLlHQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6314
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


On 10/21/2025 12:20 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Now that we always disable the VRR timing generator the same way
> we can extract the duplicated code into a helper.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 42 +++++++++++-------------
>   1 file changed, 19 insertions(+), 23 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 19b38ad77189..3ed6a56fb779 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -692,6 +692,22 @@ static void intel_vrr_set_vrr_timings(const struct intel_crtc_state *crtc_state)
>   		       intel_vrr_hw_flipline(crtc_state) - 1);
>   }
>   
> +static void intel_vrr_tg_disable(const struct intel_crtc_state *old_crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(old_crtc_state);
> +	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
> +
> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> +		       trans_vrr_ctl(old_crtc_state));
> +
> +	if (intel_de_wait_for_clear(display,
> +				    TRANS_VRR_STATUS(display, cpu_transcoder),
> +				    VRR_STATUS_VRR_EN_LIVE, 1000))
> +		drm_err(display->drm, "Timed out waiting for VRR live status to clear\n");
> +
> +	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
> +}
> +
>   void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
> @@ -717,29 +733,15 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>   	}
>   }
>   
> -static void intel_vrr_wait_for_live_status_clear(struct intel_display *display,
> -						 enum transcoder cpu_transcoder)
> -{
> -	if (intel_de_wait_for_clear(display,
> -				    TRANS_VRR_STATUS(display, cpu_transcoder),
> -				    VRR_STATUS_VRR_EN_LIVE, 1000))
> -		drm_err(display->drm, "Timed out waiting for VRR live status to clear\n");
> -}
> -
>   void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(old_crtc_state);
> -	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
>   
>   	if (!old_crtc_state->vrr.enable)
>   		return;
>   
> -	if (!intel_vrr_always_use_vrr_tg(display)) {
> -		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> -			       trans_vrr_ctl(old_crtc_state));
> -		intel_vrr_wait_for_live_status_clear(display, cpu_transcoder);
> -		intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
> -	}
> +	if (!intel_vrr_always_use_vrr_tg(display))
> +		intel_vrr_tg_disable(old_crtc_state);
>   
>   	intel_vrr_set_fixed_rr_timings(old_crtc_state);
>   }
> @@ -771,7 +773,6 @@ void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
>   void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
> -	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>   
>   	if (!HAS_VRR(display))
>   		return;
> @@ -779,12 +780,7 @@ void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
>   	if (!intel_vrr_possible(crtc_state))
>   		return;
>   
> -	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> -		       trans_vrr_ctl(crtc_state));
> -
> -	intel_vrr_wait_for_live_status_clear(display, cpu_transcoder);
> -
> -	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
> +	intel_vrr_tg_disable(crtc_state);
>   }
>   
>   bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
