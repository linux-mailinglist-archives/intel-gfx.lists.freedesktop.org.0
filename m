Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 666F0B08B89
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jul 2025 13:09:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 042AF10E801;
	Thu, 17 Jul 2025 11:09:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DMzbClMI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A08210E059;
 Thu, 17 Jul 2025 11:09:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752750564; x=1784286564;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=4eP3lN65h7LbbGl+YPXu8M6x02qKWLRBXptYV5+Mdt4=;
 b=DMzbClMIYdFNFpNY/twxWZvA5k3hfiWeC/w/S4SaowqZ7MzPVUMuZkKO
 SUeEa/l7XYTR8e0WQXBOccUshieBjYBur1upygLmyhuPbxhOUWzeuj+sg
 0ToBS8D7IHLsxwykk+YWos0x75IZR56AszqaTjKGCrhgAmKyBJWnP+HeW
 RS1AcMKj4HAsV75mYdQdpPVGFFaG9CuMY+B8ma2MygQ6pSEetTKSq32b3
 rvBYyZjJzY5OXzPIKY29PJKv1GZjPLqmPS9eILIxEP8YZzie1eGIH6aVf
 YULnEY/ursvAytsVQOIrfHXohWLStNWi4tPVWyM3CR9G0BT5y4v9j7paY Q==;
X-CSE-ConnectionGUID: rzktKeIIShiITzdd8J7CDw==
X-CSE-MsgGUID: mKY1FIm4SLer04tMDiDBiw==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="55171093"
X-IronPort-AV: E=Sophos;i="6.16,318,1744095600"; d="scan'208";a="55171093"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 04:09:24 -0700
X-CSE-ConnectionGUID: rdJcuci6Q1q7HCnB/Jo6kA==
X-CSE-MsgGUID: iRpTZFZHRzyP6NbS1Z6o+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,318,1744095600"; d="scan'208";a="162063726"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 04:09:23 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 17 Jul 2025 04:09:22 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 17 Jul 2025 04:09:22 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.82)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 17 Jul 2025 04:09:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dZSmEwr/pchv/27ugD6oGNMFnwpbZvkxsznZgoYoAwXcklqzh0g8zIIZ8HfSG7FBKJ3ujz3nWgcw9BD/cgkRxMq3L1TeVR6RlxyAsp4agaJ9TxaJDt+d6MrYbJoSuCAHMgiCoa6Shr4p9D1922d4g0UdHxi6QDjQ5fJ36pLHTE6qBNi/NS7J4s75eVSDHKay4eMBovjygwzu86AetY0ujJ0rZS+mlSWFz9/JChq43YCFTNh9Jg6SNTeE3KunFAoDYN+28uiAMlA9s2J1EbG7ZbECWO5xDciXDZnyQA+k/LdiS44kN7IDnjOkcxi9wKPgwReyKqVd0jvnLhbE4O+HcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zHVbiJfcTOqLLQjBN3GH6A6sbMNr5+mn7OOaWomPFpo=;
 b=CIGjwOaVHF79lwrPvFdRzTzp9wtw3ccwO4rXiMv8rgbMk7DvkONpq4VdAsQSucTh00aCJ4oTL0x+kYYd/qleaeutm40xrSvWwqsdtVlvp57OVtieMGwxgcXCvlGLXASmZNBrkhRS1UZwnZYJOmOGFNI6DJWVMQS0sV5R5KyZa1Wr1bUPvd1As2+wb87VcpY5y4Du6SRHt0Ui2xpmLIARvRFCfW53R/3ygU8J45DSPAlkxLyk53PypLj87tBSmoPAlugDcd2Zlb0a0sEBjoDUoQFTgGGF3GHBH7liRG9TYJN/DJDXY6vDNOHMrxDYe3XJNNJqTstyY9Jnp4F9+RPY7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by CY5PR11MB6390.namprd11.prod.outlook.com (2603:10b6:930:39::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.37; Thu, 17 Jul
 2025 11:09:20 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%4]) with mapi id 15.20.8922.037; Thu, 17 Jul 2025
 11:09:19 +0000
Date: Thu, 17 Jul 2025 11:09:10 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v5 1/1] drm/i915/display: Add no_psr_reason to PSR debugfs
Message-ID: <oje7e3zratt3eplbvkcqd3jy6dma5hscbciz2vbppxhdyxeu7m@7bjphqwbj3gs>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20250714160931.821383-1-michal.grzelak@intel.com>
 <20250714160931.821383-2-michal.grzelak@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250714160931.821383-2-michal.grzelak@intel.com>
X-ClientProxiedBy: WA2P291CA0020.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::9) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|CY5PR11MB6390:EE_
X-MS-Office365-Filtering-Correlation-Id: 0f098db3-dcc5-4ea5-64fd-08ddc522604c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MGpSZkU4RUZPYXZvZzFHd2MxUkc4aVhUZEVZcXE3WHVaM2UxWHNEcXlhZUg2?=
 =?utf-8?B?RXY3NnhMb3VySGozcTkzREpOOFQ0KzIydlQ2bmkyZU0vbkN0TXJpZHFSR1V1?=
 =?utf-8?B?VEZnMUE3MGoxdTVKTmdlRzdtZmI2ZEI3Zlg5MFV6K3BSNmhMckw2U2QvNExs?=
 =?utf-8?B?cnZzRTE5ZjViMDhyRmc5WEwvbUtXY2JVc3VxamxwejZxcms1SER6VS9kYnFw?=
 =?utf-8?B?MVI3Tk1MWDVTUnM3eG5hZWlid0dNNDVvNzg2V0FIS1oya3dZL2dhbnV3aWE0?=
 =?utf-8?B?b3ZxaUVTWkFWUEFlWU1VVFNLcitReW1SRmpnRThoY2hxWmpSUFV1QUY1Tmdo?=
 =?utf-8?B?TzFKcHNoc0p1OHBwWVIzakVFZHl6ejQ1d1JBZ3BVWDI3UHJIOW5ySkhLaElN?=
 =?utf-8?B?RTQwYlJHaktMMjFIU1lEcnZvSzlnNDR5TzJmcjRqL0dUWHNOSUhPRDFoTkZM?=
 =?utf-8?B?Rm1aRXIvc0FFeGZLazgwVHRJeUsydDk5U3Z4SVRKV0NtVmVuWWVHSmdVN09Y?=
 =?utf-8?B?UWxFSmVzcWlBQlFtTHhYbDdsMTZUWWV5cUQxbytYQzFyaGpCU3F6YzgrajVU?=
 =?utf-8?B?T2ZjdmlnUit4aFVvUzVEVFg5R0J1MmdYbUllNEtDWW54SjlrTjZ0MkxtdTFw?=
 =?utf-8?B?eTJtc0gwc25DU3R1M2tZU2ZpVS9EaUt2b2pybW1JN0JNQTREdjhld21lbFlE?=
 =?utf-8?B?V1hNMlpwdlRBYWxzQ1FxK3dRZGtXbzdlb2dVcFp4WnBSTDBaaklyRzhqNVBP?=
 =?utf-8?B?RXlHMWthaGhoT01IdzNsOUhLblVDa294YzdCTlFyTk5TRVBzMm9vYXNSSjk5?=
 =?utf-8?B?SWliMFI4MnpHdy9KZUVBcC9MQUJVYWI2ZktjKzY2Y2l3Nmw4YkFuejVsUXBy?=
 =?utf-8?B?ZzQza3FwZkdwV1pWNlVzcG5iTzlyYUtuV1A0Y0ZRTy9XRk5lYUh5ZHBZTHEv?=
 =?utf-8?B?WVJkVWZrajFwaW5LK0NzVGQxalhnbnVGVXIveUNqNUtiSDJlWlNwNTBMQ2l6?=
 =?utf-8?B?eTFyZTRXSUVUZHlrY1pDaG9UOFgzR3IrQUI5cGVPMm5OcGVYNXVQWmRHS2ox?=
 =?utf-8?B?bHpGNHJVa2s0OG5PUXd0NUZrazc3cW4rV1lNTWl0Skh0UVVtQWQ4NWs4UUVX?=
 =?utf-8?B?VGpRcjJ6WithelE0MHNwRU1LOGtCZlQxU1BzR2EyRUs1MjlNMzRjQURYRzdX?=
 =?utf-8?B?cE9SSEtTYUptZXVEeDU2L0VYYjJUVk9ROUczS09WcmpESkpRanNFcFRlTDFM?=
 =?utf-8?B?QzMvZmkxdnFsK053Nmw1WEk1RzJwcFJqRG80NDR2Sms4RmwzeVF3bmg2b2k3?=
 =?utf-8?B?Z05oMzRwNzc0UCtjMG1nVlovODNVN3NZdUtreXdYZDZCUzZRODR5Skg3Y0U1?=
 =?utf-8?B?akVBUXNkZ0w5TXlnZEtBaVdiQ0k3QVpVNjkxYzVrekJEWm1zYkxNeEs0ZDJi?=
 =?utf-8?B?VkR1ayttVGdsYmM5cVFNSXFKK2FrNFFvL0pUSGZiTklYNkhrcVZ0RGxQczFG?=
 =?utf-8?B?eTdFWjFNTzZabWZhcUJ6QjlGU3pBeWF3dlRSWXB4RFQvNnhmcWxiVXNuOUpI?=
 =?utf-8?B?QzlFVXdmbHI5OEZpVFFLeDQwT2U5TnpkbCt1Z2dCLzQya1llRzU2L0J4bE9T?=
 =?utf-8?B?Q09kSkFITEtPWHNCS1g3YlVucURURVRUemJRMkJCbE9TamdsOHpTWWVPdGM5?=
 =?utf-8?B?aXJFTTl3dnlsTm4vblhzaWNLazBTZDdKTWxrbVhLaHR6b2FBTTFPWkZLQ05Y?=
 =?utf-8?B?a0NoUk5LcHBjc3JsZnFPZXE3SGZrZkdOUWtRQ0JBTDJXSE1aR1plZkFJc2V2?=
 =?utf-8?B?YU5rbHY5TjZ3TjBwV2JWdUMxZWpnUU82SnJjVjRxSVF1YTF1Z2NTTnNBcGR0?=
 =?utf-8?B?RjVIY3ZsMG5yVmZ4QUllRmdKT0FMU0QzNzRrdjVrcHNZVkNobkhFaEJLemJ1?=
 =?utf-8?Q?VdM5DJq+QFw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K1R5eDEycTZ0cFduMi9NUWV1YlNRZEdCanRHNjlXaCtsQzlsWVRHbE45Vm1S?=
 =?utf-8?B?NkxGUEJvbWhuTHNqaWFUVVRCWkJPZGJqY0dYcjFMMWp2WXdGQ3JUYW9ZRVJF?=
 =?utf-8?B?QTN3UjdNSHoyMUhDODUwTG9HYWZ1MXhaTHhyd2lKUFBMRGdRbjhpY00reVpS?=
 =?utf-8?B?Q2pxWnF2K2NqUVM3TlZNcXlNZTZhTEVURjM4S3ZBQTY1L0kxTFhkZHJuUDMv?=
 =?utf-8?B?M1JtWjNlK0g0UkgyRlMxbEVMNVJBNHRNVjZFM0Y2MUN1VjFsMm1vd2YwbFZn?=
 =?utf-8?B?Vkh3T3M4RXJKK2pzR3ZDeTlxaGI1K2l3UTAvUnJIc2Z1bmgzS3owWXY5ei9R?=
 =?utf-8?B?QjhIWWcxZEdDaHpxY3RDZVh1ZjFMSHFmVC8xU0JWZGRPd1p5YVNKNTdWYXpN?=
 =?utf-8?B?ZXEwa1pMTlYwUmJiV1Bkdy82ZTJUOWg2TndsdzE3WHMvOWFwNThkdVNDeHpv?=
 =?utf-8?B?TkFoUUJjb3NaK1RGYTdLWTl5dkc3SWtLakFYaE82NUl6akE2S25tUi83Wmo5?=
 =?utf-8?B?V1RTYXRjOHRmNDAzNm5LQVF1Z0U2MHc1MGdqdksvWXpIbXIzWGJKQ2VHMVZi?=
 =?utf-8?B?Ynp4TmFYaGJOTGVFVFFCTS9BT21VZlZLQjZ1TkNtNDZoNHgxTXBYdjJmYnV0?=
 =?utf-8?B?d055ODdSaFRtcTBMRU5vQkRsMlhPL1AxRkppQ1FCSmxrMjJyWVAzdXBRQmxh?=
 =?utf-8?B?THVELzIrdUxXOUd1NFp2YXNzOTdvcjFPck1sdkF6eFVCdWZWWnlnL0JDUmpP?=
 =?utf-8?B?dWZ3V1dQZ2k4Y0hKRlk5M3pFVnNtRkVtRTJBamJlUXV5enN5Tmw0V3JOc282?=
 =?utf-8?B?OGc1YnpOaXdWREp4N0ZYdkVoYklvRHVLT0pueSszODNBTWY4aFJkaFFWWERY?=
 =?utf-8?B?Z3g4QTlCUUxLd3VPUUpvaVBONitDQVJ4R1VpYWJQZ0dUdmdaYU5xZytBL0pN?=
 =?utf-8?B?R2s2MktNQ1hMZEc5emg5cEJWaXM1d09uUmJiNllSS2ZBSkU2YlY4Z2QzeG1M?=
 =?utf-8?B?a25yZVcrY3pacytmL1p6QkhGSFFyTFBkaFBBVWJFNG1xTEZkTG5GajJBN2NT?=
 =?utf-8?B?dmdsVDBibnZJR2hKaFhudjNaaG1HeG9JcWo4OTdLRXp3a00yQnJBd1FGcVFQ?=
 =?utf-8?B?dWxzNFVKTHQzNURlb0NGc0VldWtjeG1haTB1TTgwc3J5dnlab0NKVk1GMC9Z?=
 =?utf-8?B?RUdOWVNYb0hsUmk1c0t1d0ExRjdncmVwTVBUZjRHWnFsdGRjVTBmTTVZampU?=
 =?utf-8?B?RSswK2w0MFBEREJEU1BxY29MMW02UnpLVW12RmwwaExrN2ZKZlZmeDZQMlho?=
 =?utf-8?B?TnpENVVwQm8xbDZVQ2QxbnNoR0doZEhnb0J4RGRiYTFuaGl6NVI2RGpWTWlw?=
 =?utf-8?B?SzRMK3ZjaGs4eGZzSldDZlhSM2YvUjMvZ2w0MFVhazlnVTRHeDVXNnZaK2hM?=
 =?utf-8?B?TldrR1YrL2Q4VU40OHlCdkVDSUpXb3dwQyttVGdWTjBqVzFEWE4yQ29Cc0I1?=
 =?utf-8?B?VkYyWlMwWVYrOG80WlJzb3JTSU85aStZUldUZ2ZqdVcwcDhFYUFXZ1E5VHlo?=
 =?utf-8?B?dFJFWTVvSkhXMXhHTFBtaUZTZGY5SDNiMnI3NDB6ZG5MdmJrQnpsUXdhTFhF?=
 =?utf-8?B?NFBSMStFQ3kvblprZ2RIL3Z6SUNOOFEycFVJcnlvL2RpbTJyQTVnZ3Z4d29O?=
 =?utf-8?B?YkpTYVhxRzE5ZTg5eGZrb1FNazVJRnBuUnNzZFpuTEhXQmhFNHRPY3JEWTlp?=
 =?utf-8?B?eUNwbW40VGVIbDdtOUVqRmdMQnA5Qjl3SkZFcWFSZnJ2NzB5eHNneC9iYkhL?=
 =?utf-8?B?N0hKOFVna3J0U0U4T2NFTzNPNTJaSlQ0V2tXeGZuZ1diMmE0UnFOK3A3bFZh?=
 =?utf-8?B?dnpZYnBQZ3BtbUZKamg0TEtyRmRyWDdpMVlmODZvb3NYa3RmSXdtUnAxelM3?=
 =?utf-8?B?S2lyV3JIaER0TENRaUV3VXBrQTVaN1FsZXJwRVpEaXQvOENuTGNDSENJZ1dJ?=
 =?utf-8?B?cXZxQTQ3T0E4UW1RRFFpNDVtd0FZSDhpeDgzUlY2L1ZhTnhWdEI0TDBXdGV1?=
 =?utf-8?B?c29hck1LZkRHQWs2TGUwNitrUnpPS25ZMXVzUHR2OEMrM0ord1Z6Vks0K1Qy?=
 =?utf-8?B?RFV1UkM5R0swaEtYc2lLQnRscU5heHlXa0xhVXlnUVpLU1lqQ2NmNEVqZVFq?=
 =?utf-8?B?ckE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f098db3-dcc5-4ea5-64fd-08ddc522604c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2025 11:09:19.6866 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OT0pj9qPYsioIji5jJIE+pOFCTQGlL7AQCDjEoU6cULysqO70F24tNKF/WbkPWHTJ9G5N2pdkJIMAEI/1GXvGG2t5gpSAZc6NHeGLdCUEqk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6390
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

Hi Michał,

[...]
> @@ -2937,13 +2939,21 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
>  			 * - Region Early Transport changing
>  			 * - Display WA #1136: skl, bxt
>  			 */
> -			if (intel_crtc_needs_modeset(new_crtc_state) ||
> -			    !new_crtc_state->has_psr ||
> -			    !new_crtc_state->active_planes ||
> -			    new_crtc_state->has_sel_update != psr->sel_update_enabled ||
> -			    new_crtc_state->enable_psr2_su_region_et != psr->su_region_et_enabled ||
> -			    new_crtc_state->has_panel_replay != psr->panel_replay_enabled ||
> -			    (DISPLAY_VER(display) < 11 && new_crtc_state->wm_level_disabled))
> +			if (intel_crtc_needs_modeset(new_crtc_state))
> +				psr->no_psr_reason = "CRTC needs modeset";
> +			if (!new_crtc_state->has_psr)
> +				psr->no_psr_reason = "PSR disabled";
> +			if (!new_crtc_state->active_planes)
> +				psr->no_psr_reason = "All planes inactive";
> +			if (new_crtc_state->has_sel_update != psr->sel_update_enabled)
> +				psr->no_psr_reason = "Changing between PSR versions";
> +			if (new_crtc_state->enable_psr2_su_region_et != psr->su_region_et_enabled)
> +				psr->no_psr_reason = "Changing Region Early Transport";
> +			if (new_crtc_state->has_panel_replay != psr->panel_replay_enabled)
> +				psr->no_psr_reason = "Changing Panel Replay mode";
> +			if (DISPLAY_VER(display) < 11 && new_crtc_state->wm_level_disabled)
> +				psr->no_psr_reason = "Wa_1136";
> +			if (psr->no_psr_reason)
>  				intel_psr_disable_locked(intel_dp);
>  			else if (new_crtc_state->wm_level_disabled)
>  				/* Wa_14015648006 */
Is it possible to have multiple reasons for disabling psr?
The way no_psr_reason is set above causes only the last reason
to be logged into that field.

---
Best Regards,
Krzysztof
