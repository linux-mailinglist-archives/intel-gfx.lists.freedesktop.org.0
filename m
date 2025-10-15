Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4BECBDD524
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 10:11:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F8C010E269;
	Wed, 15 Oct 2025 08:11:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kh1UhB22";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B5A810E03E;
 Wed, 15 Oct 2025 08:11:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760515903; x=1792051903;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bcxtKgcDJ5nbF/IYXIr76W8Ykj6I84DiQpbp4K9vhGA=;
 b=Kh1UhB22cDVHvOVrWyZhRxESU1uyHgyjPTBrSY8oyInnpugZPFnJTT9F
 sogV+zSnZxtUAXAYnA2uPqhG2vOUY8ozpsIeUVjpbc0SeAUlBthSic5Zg
 To+4PTLrRwSXwbnEkEzdgVNafSZi5IjjCi8fQp+c/mNSeroAzf0mshzqx
 jKgygXLQqbMwx2fopY9TrqVOVuKQtxvIGe4oA0THH6jMp6xQMTpOHZcP2
 wA/0IM5UfceVAWBBB5X/oQEhYhhq2hMSOWR9KOJxoh7FLQhee2JvyjNea
 IvG4Ilf0WblRJLQ3j23C/QspiVbUg+L96DINUQE77zCqfgLl4np4BnIEI A==;
X-CSE-ConnectionGUID: m0Ph3xwOTre6EJFYvvU1pw==
X-CSE-MsgGUID: S9lHV6KBTVCd0Xea9QxCqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="73787078"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="73787078"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 01:11:42 -0700
X-CSE-ConnectionGUID: asMaoKVqQZG+v/SfSJh3ng==
X-CSE-MsgGUID: 7QhSaFMYSPSwqubnlRUxPg==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 01:11:42 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 01:11:41 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 01:11:41 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.65) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 01:11:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dPSxjvwSaxLtPf6OBFvIhB4QWmKkilbNqSDtVKRjjyesDWpfzS6e2PAZdKcdxcpCAr+vbAOo0pwFODfpTc0e15YBI+D4yqGxryKnUUlf/fAnRnhlS4tc+Obft8VdxEbzmn7BdzckPmzRCnmpTufTUqtP3qOOTZdA38e4n2Nt3w6rGBUKIcxWUE8GQSpW9DqvZb2JY+hEewtFVyd2aPKkVs1vcSrLYhAuPLxHMFs8ad6wh27cFhOTES9p5eduf+JsmafRE3usU1Dq9I9HkvujS832hpbF79BbXv/AZKT7X3Zqm+kZ3e2ySYebIssDt/7Ac0Y/Rc0aLzlsv5hWxjz4MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9r/uHgnmu52pI7EWvpc2nmHpZTQyf+NQtsV769RB4hc=;
 b=QYYmK+Ik3skypGJlf4nGMmpbMSS1GSLA2a1UeqBvbnvKov9IVSRz4ef7UodoEpTSavQrTlLLD70MrzDUlxX2Zj3jWOthj5szPmQPGDTiyp8TAshdKyncLYH5XnE+t9mlDsaYKmLoUEk6yzRnix+bY4ev3LPOYRtFKM4DtBnnxuF6q9nggJzWAJjs3IADmCdDzIT2HjsmOK2chdez6wHCicT3IqN1JvX0eQsggKq4xfDXQOWpTbtoDPbudmfgq0J1A7XbtJoZQr3AUbhwDgOM80TJwNVtNkWJPb/3gzNiNlmUhgYHaNHLWBBNTObBJjAOY3Tlm+opQQu1vdWOviXkFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from LV8PR11MB8607.namprd11.prod.outlook.com (2603:10b6:408:1ec::18)
 by SJ1PR11MB6250.namprd11.prod.outlook.com (2603:10b6:a03:459::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.13; Wed, 15 Oct
 2025 08:11:39 +0000
Received: from LV8PR11MB8607.namprd11.prod.outlook.com
 ([fe80::55b1:592:df13:a9f3]) by LV8PR11MB8607.namprd11.prod.outlook.com
 ([fe80::55b1:592:df13:a9f3%5]) with mapi id 15.20.9203.009; Wed, 15 Oct 2025
 08:11:39 +0000
Message-ID: <5bc95692-cadd-4af0-863a-33aba7879f23@intel.com>
Date: Wed, 15 Oct 2025 13:41:28 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/32] drm/i915/xe3p_lpd: Add Xe3p_LPD display IP features
To: Gustavo Sousa <gustavo.sousa@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, =?UTF-8?Q?Jouni_H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Sai Teja Pottumuttu
 <sai.teja.pottumuttu@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-2-d2d1e26520aa@intel.com>
Content-Language: en-US
From: Shekhar Chauhan <shekhar.chauhan@intel.com>
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-2-d2d1e26520aa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0075.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::16) To LV8PR11MB8607.namprd11.prod.outlook.com
 (2603:10b6:408:1ec::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR11MB8607:EE_|SJ1PR11MB6250:EE_
X-MS-Office365-Filtering-Correlation-Id: 88363cd5-4b5e-419f-1cf8-08de0bc2778a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aWYxZnlvaWljT1FXYUp0MjVhZnBTWGhCQkt4SHROdVBaR3pZdjhhYzdWc3h0?=
 =?utf-8?B?NC9nSTJreEI3aGJMZlY3cU9uYTArcEJaTks1UnZyWWtIQUovTDRJNDdzaVRO?=
 =?utf-8?B?STNoU0E2NVV2aGhNOVBZYzdDY3l1WWJwdUtMbW8wUlVIMklsK2F2QldsZzla?=
 =?utf-8?B?andPUHFOUmxWYmRQRHFzQUlKbFF5Q1hxbkRVVFVRZzBsMDhSRjBxa2Z3YXFY?=
 =?utf-8?B?VkxFWngyd3FNbitBY1Z5emk3WnI5NzFTbmFjRURCVU81QkhlU2R0UEdBY0tw?=
 =?utf-8?B?eFR5eTRYdWp5N0dUTGFSWkMzbGd1VlZEbEJ4M3psMHZsV0VPMzVFZ0xnVDFq?=
 =?utf-8?B?NFlVcFlXTitMQXVzemE1L1dmWWVCWGNuazVQZ3pZcmJoZ2dZSUZJSGE3dmR6?=
 =?utf-8?B?Q2VnTkhrL0ltdW1JRDZhUlVQT20wSzcwaHg1SmgvckpNc00wb3ZlUC9KRGRW?=
 =?utf-8?B?RnZWNm13R3o0WUxCOW1PMFd4TFFiOGtzVXhqNHZQcWNUV25DY0RaemJkOWIy?=
 =?utf-8?B?cEsxbXhnWkNGczNkZjNZajJLek9rVndGS1Y4V2Zxa3FKYUFUM2hpc1VlczJZ?=
 =?utf-8?B?MHpKVW1ZYXF3MTVDM0M5S2dFeG1WaVQ3VHdmeWt5T3d6aXJ2ZXJxUVdVamN0?=
 =?utf-8?B?KzIzZVYxWVFYVVBkSk1wK3JUc0MyZVpLNi9DWjM4dVBIbXBCVmRTemhxNnZn?=
 =?utf-8?B?bUtnMVN2dExHZmRNR1RhM0pEMGgwdy9UaWlYbGtibVE4T1E4V0VlRVU1UUhJ?=
 =?utf-8?B?Mm5KN244UUs0Lyt3MWdodVhQRnk4OExZdFJFV3p5b1NsaUtOcVh1WWRwWDdi?=
 =?utf-8?B?ZlFxdGo0WjBkSHhxVmVtWjFFTlZOYjZDN0tZU29kQ2RQM3FERGxvdWdPY3JK?=
 =?utf-8?B?c0dOV3ZVQzJZdFlSVmsxV1pXcXRzRFJGdmh5cEFoMkRrUjNYOGFOZ0QydklG?=
 =?utf-8?B?c1NEL3FUSkVLYzRRK2J2WW5vRkt0akI5OFpyckkzU1RGdXc3QVdwejE3aWtF?=
 =?utf-8?B?dkZ1YW5JMXlyRmQ2Tkh1RzJQQXp1ODBpOWt2RWNlNjJ2Y1NRUFR5VkVIMTFj?=
 =?utf-8?B?KzFHcy9HaDRKbHl4S2F3dzhXRW12bHRuSjNIQWZYNG5ZVENKSVRGamVIQm8z?=
 =?utf-8?B?NUhoazhOZUZOTEVWT2FsT1hLSXhvNnMyVWMvcW9ycm0va1oyWitOc3NKbW1V?=
 =?utf-8?B?Y0FSSkt4VFVYZUViK3VFTE9Vd2ZyS3NFR2tiT1FUUzNqTGdJZnlJZ2VDSUtk?=
 =?utf-8?B?NFlUbzNSUjNyVmExY0dVMU9LV3FWRVY4TS9kb09WMVhTMUlwUGE2YjFjcG90?=
 =?utf-8?B?NFJGcGZmWkZFMmVFRXk4aHpYTHpKT1JPcWdxWlpKTzJQaE1vVGpzSjRjTTAz?=
 =?utf-8?B?NjZiZHltZy9UR0FQS1dJa3hmWjlJdGJVcjZkOHNaZDVMTFArRjJTSndjVjJz?=
 =?utf-8?B?T2l4YnFqdyswWFRwK29ZSjRqaWVEODVGMzAraWphdzdNRXhkcGx0dW9VbjlS?=
 =?utf-8?B?d0Z0d2lWaXVUQVFvNm9uUzBIMzBIUDdjS1RKVCtYcE9wVlBVMTV5STQ4NG1x?=
 =?utf-8?B?YjVxR2Y3RzdKN3dzL2ZocjMvVnpDMElUNWlUMWVyU0d6eDBkSkJYMnUybGhh?=
 =?utf-8?B?YTR1WGtNYUlSdXNjZTB6TmNPcFE3UEhiVHpDNVFDZktuL3RZWForRE5EOWZy?=
 =?utf-8?B?SWFDbVBmSEI5MU9qUmNDNityZUxUT2o5WlV1TjFraXdsclhJMFlKYzM4MFd3?=
 =?utf-8?B?NDdBNDUrZUg4SFl5VDk0dlZlMDZHNS9xcnNseHJUd3dBRFUxdktmeEVKbG9J?=
 =?utf-8?B?TjErTzR1bjlHVEdSdkhEK0JPUlQ5SXZlNEhOaVAyRVdDeVFveTlmUGEwNFMv?=
 =?utf-8?B?TS9DQjIrVGs0UmJoT0E3L1VXanMwQXI2b2lGUStNVW1WRzJBYXNKUFF4Qi83?=
 =?utf-8?Q?lhZ2NJm782jS8q781bHMItPDM5O03Vl4?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV8PR11MB8607.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MTJaZzdCSk41Q24wRFhRNnY0T1ZvN1JxL3VOeUYzRERubE9ZN2E5QWhLeHJI?=
 =?utf-8?B?OTY0RW1TNXphNkgvaEd0MkVpcW9CSWJjcHYxemphbmdJUE9SREd3b0FWQmZj?=
 =?utf-8?B?bE52QUVKRzA2L0pkdVlVc0hnM3BEWCtXTWxxcVlicHNkZUx4b3JNT25jWkVy?=
 =?utf-8?B?L0ZVcTdhdk5XUUxrNktRNGhBMjdMaHFsdlVmbWRFM0kyd2NRajlZcnJrSE5i?=
 =?utf-8?B?RkYvODlnb1JVK3RFVWtuZnpMQ2hLSUpERG9YQm1QTGNOKzBWWDRsN1BtWDNI?=
 =?utf-8?B?ZVB1L1RPR1JmVERPclJiUjZzMGlvc3N6L2FhTE91VURRSVl5WW5NZ3AwODM4?=
 =?utf-8?B?anlDNUFnN25PUWY1RU0zK1V0ZlEramhCbVc2ckNWTEdBYm1zalZZd1hBdjJY?=
 =?utf-8?B?RWZnWXdDSFB3bDYxSlR3RzRvSTlhNHhQakJyWmJGTi9aZjc2d2dpRFg1dnZh?=
 =?utf-8?B?SWhXamk3aTNBKzNYWUhlRStja0g1MXVRQmFGZlhvbjlwa2tYRWpvdWk3OVdQ?=
 =?utf-8?B?V0QxdzYwMDUzajF3RldDVE5xNE5NNjgzNnNQN0VWWWJqdHo0OUNza2FRbkcx?=
 =?utf-8?B?SDhxK2dtUG54THR1cVlqOHB1NG1aK08wVlMxRDI0VGtFZWo1U3dRQXAvV0NB?=
 =?utf-8?B?UEZiajFFQkxPZE5VNXRycHNEWkhGOUpiM2pOMnBQOVgvZFAzV1VudUxvNFBP?=
 =?utf-8?B?MzlLalFhczZweGJrdTBJdWdkTFUwRXoyUy91Y0tncmhWY2JOc3c0QTh6T3Bh?=
 =?utf-8?B?RUZ0NjV2bDZIcWJ1TTRyRE1hSnlpOC9VWk1hSGxuWjNURmhNVDNnaHd5VW0z?=
 =?utf-8?B?U3hZQlg5L2xvN3NvTVVLYlMra3JrVS90VkRib20zNkM3YitycGtyYzhyS0hV?=
 =?utf-8?B?MnRJWUNmVDJJRkZzaG42Z3hmOFo1SXFBQVZYbDJzeWozRkF0T1JWeFl1Vmx0?=
 =?utf-8?B?TkFnYjVJRmZsMklPSTBHRmRRRUU0QWJJcUdSQnExV0VwcVM4NU5NdGY2SFVj?=
 =?utf-8?B?YWtubEJLOFBDcTg2bFp6ZytLY0ZZVStwK0hZNDhWcVg3WndZbXZNcTgxV0I4?=
 =?utf-8?B?WUVOeTZjT01RSVJYRW5IUW1BUXEzMlR3NUprQTdNOU9Cd1BJWmpYSHVaVktH?=
 =?utf-8?B?a0lNd3dtYTVYTkhoNUpJTWRpM3RxZVlsSXRENFFsM2lwUm5sS1ViY3lGcGZE?=
 =?utf-8?B?R0dXbjVCTklJazFHcmU5cmVFUWtEUDZQT0J6eWpEek5OdWVQZnp5eGhGOVVX?=
 =?utf-8?B?OUs0VnBWSStTZlR5OUttY0hXam9DbFFhN0hZQTkvc2dScWVvd3RXRnluaUFK?=
 =?utf-8?B?ZkN2MGlmSmExc3dxR1Z3eGFObXcxZ2YrR21ucDJLdmwwNmJsM2wxeVRjSDFh?=
 =?utf-8?B?NmorbDNoanFvMzIvMFkxUWRVOUlCNzFWK25BQklwZEhIT1p1VWxKbHJ5dGlO?=
 =?utf-8?B?NUNRNE12TUZIaEJsWWVyRUpLZGNkdjNVeWJTZGtlYXdIVHlmVjlzY3BZVUda?=
 =?utf-8?B?Y2kvZEp4RjNoR2JTZHR2VlpyUHVmN0Z3b3UxUzB4a0x5NTREWXNDM3ExNHIy?=
 =?utf-8?B?dmlaQ1BBNXo2ZU1HODJ5VW9SZVFOUnBmRytiSU9pa3dXa0tTTkRIWmIwZHNa?=
 =?utf-8?B?YmhwdkxLZEZqbzFKZmwwOWIvTy9PZXFlbmJvcFlKdHRxdnhsbGZGYXg2d1lQ?=
 =?utf-8?B?L3dtd1V6a0hDUExQQnJ2cVVBK0ZELzNMb0w1dTdNbnJBaDRIc1IyL0FVU0tB?=
 =?utf-8?B?TVpDS2dwanNPeU5ESllwcit4OWJUSjVoUkgwelhVTk5SRG9jVlhyb2FhMGFD?=
 =?utf-8?B?aFhxZWZRNHY1dElJbzFMMEh2UmVPaDZUYlpxL3VtbjdFRGdIQ1puMDlVd2dz?=
 =?utf-8?B?M2xWWGNkbCsrdTJqZ0JxNVo5cTRmYjNMbGk2YmN6N21tdkpidUVBelp5Tk1j?=
 =?utf-8?B?ZGZnUFRnTEJYRndrYWF0SWdlaUl5MS9HV0lKKy9WLzVzLzJISzM0UHNwR1dF?=
 =?utf-8?B?SDY4TFFvVS9HRnBXYVg4MXVVQTlDNkQ1NkUzNmZidk9QS2k5Tlh2UmV0dlFE?=
 =?utf-8?B?blh6RkE1TFdiRmZtQW9BZFBFdFF5ZjRlMXlJV1NjUklqOXJzMjR0SDBuOFZs?=
 =?utf-8?B?dnRBVktZb2RYUlhxNVE0MVd5TXY4K3U3SSt6cmw3cGt3WUZoanFwUlpJUFEx?=
 =?utf-8?B?WWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 88363cd5-4b5e-419f-1cf8-08de0bc2778a
X-MS-Exchange-CrossTenant-AuthSource: LV8PR11MB8607.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2025 08:11:39.4127 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EUYXnprnQvftTmU8cNK7ns/RjqV9daBq+SZ5jxjMlbHY//0/hIxkqOZs+xBABS+XV7JL/8uP7OPr1LYyAXCBXfxDGKwPzgJNDa8YulunHlg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6250
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


On 10/15/2025 8:45, Gustavo Sousa wrote:
> From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
>
> Xe3p_LPD (display version 35) is similar to Xe2_LPD with respect to the
> features described by struct intel_display_device_info, so reuse its
> device descriptor.
>
> Bspec: 74304
> Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Maybe we can add Bspec: 74201 as well, but nothing that might stop the 
block the patch, so with that aside, LGTM,

Reviewed-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display_device.c | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index f3f1f25b0f38..a38de39ed98c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -1507,6 +1507,7 @@ static const struct {
>   	{ 20,  0, &xe2_lpd_display },
>   	{ 30,  0, &xe2_lpd_display },
>   	{ 30,  2, &wcl_display },
> +	{ 35,  0, &xe2_lpd_display },
>   };
>   
>   static const struct intel_display_device_info *
>
