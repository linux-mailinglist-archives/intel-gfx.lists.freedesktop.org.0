Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A21B14E4D
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jul 2025 15:22:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4171910E271;
	Tue, 29 Jul 2025 13:22:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g5a1qIo4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16C3C10E25E;
 Tue, 29 Jul 2025 13:22:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753795331; x=1785331331;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=j3rEKGs6oEUkAuXwWQC7wR7Mfe3r6Lutz1IuUAMEmdE=;
 b=g5a1qIo46OtqrbtL0QvWrbzbyvX8u8jkFYeE//gdB0+RYLRPROnkWK55
 HXaVJl4jSxkiYEy1DkY8Db8B5gN7K7FU9BnJm/cFDk2kw3oNOmDO9tqUL
 cVGlOIVqepgfy5cds7U8GcyOawx4lZrMR5aAyyY7EI7yr5YGcTVdPq1B1
 w4Zgn4q5/osoAiBzAsjL3gX/oWl0k+JzQcg0O26bdAodl9VR2Y0zqsLuS
 0e3bqnEjxktau5mwM9n9QSmNH5FgBF6mvT+sIG4yCyDAaJZy9sp6Mjhm8
 rr3XBUx6LXH0Kl+FfgEycjGQ+MsUUKXcilsL52Hi/8VrbGAtBe98BNh4K A==;
X-CSE-ConnectionGUID: +kqbo8h7S5+GdXizCSu1fg==
X-CSE-MsgGUID: t8Ij9b0bRQGJyWXSGHBEeg==
X-IronPort-AV: E=McAfee;i="6800,10657,11506"; a="55763988"
X-IronPort-AV: E=Sophos;i="6.16,349,1744095600"; d="scan'208,217";a="55763988"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 06:22:11 -0700
X-CSE-ConnectionGUID: LsiigmSRTO6mkNWMYZHc1w==
X-CSE-MsgGUID: RefeDRFUTZ+BxMu6dEaQeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,349,1744095600"; 
 d="scan'208,217";a="166875538"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 06:22:10 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 29 Jul 2025 06:22:09 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 29 Jul 2025 06:22:09 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.43)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 29 Jul 2025 06:22:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Bd2ABL1ouWbSrio1CBM1Mfp742z37M1aI1IDaB5b+kEhGjWQedC5GV1VMHYo3yb0OvwyJJmyn1uVSlLoqrVCK3qOe5dooo69ZJ7gwQg/kc9kLmiYy9jN3ZEYtfn++CEJouefP4hYAqsH08CD9xDBQrR40qkY2UzD44Fao/lCFuc6VtQbXkkzlacnFKC/OBkiAkoPfq73uWfDUPWoSJQG16hDKSXXHl6ONYTImclcxFwKIRebhUdrBp/8TSNgzbilTNBKsPZwiipZDVdb/3wfz58ieDwHYq1fJOSfzayQVvDma0agNeaSwjJo5NSdYy3t2OpL3iRP4GwBK1JFGfmpiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T1zfDlkLCRmIRhgF+WymOp5qbEygczkSnNm2JoBL26U=;
 b=Sfu1mSUxLZZbEEYtFykICIW9xVnclQICqPP090Dhg2F/zbD5RdSLX6ZHnANq/rD6crxd4hxsr/62O3y64Ulas7PM91bIob+B0OfZvYZIyV2NGSEqHiiDq4LFwwpfrltjimZLqZ4qxG5JsSMwFGBahnq5tuz9viTJDxbn2SK0LPnoEDA5/3nnDy7DJiClG8aLs4r++dPDYHj6jwHHeJFPYjfxu798RrQrytUoc5cz8cXVtaYCmjoraqUiZ5aIQUhbTj6ElJYzdFOrINZALWwV1DPYcgc5LRVqelcA9+8c4G6AJZOT6Y8wRY2hDKPdUiRHCeknOoLYtR5jREFlZGcwHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA1PR11MB7175.namprd11.prod.outlook.com (2603:10b6:208:419::5)
 by DS7PR11MB9500.namprd11.prod.outlook.com (2603:10b6:8:258::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.26; Tue, 29 Jul
 2025 13:21:34 +0000
Received: from IA1PR11MB7175.namprd11.prod.outlook.com
 ([fe80::21c:1228:5006:c7ed]) by IA1PR11MB7175.namprd11.prod.outlook.com
 ([fe80::21c:1228:5006:c7ed%4]) with mapi id 15.20.8964.025; Tue, 29 Jul 2025
 13:21:34 +0000
Content-Type: multipart/alternative;
 boundary="------------DB0z9UgyIFL60diVPfPnKiRD"
Message-ID: <22f5e747-a7d9-4c7e-a132-3a64cd52e6a4@intel.com>
Date: Tue, 29 Jul 2025 18:51:09 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4] drm/i915/display: Optimize panel power-on wait time
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>,
 <arun.r.murthy@intel.com>
References: <20250728051237.2322256-1-dibin.moolakadan.subrahmanian@intel.com>
 <018afd66168bd9a55abe4e14c24e9b11a89ab15c@intel.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <018afd66168bd9a55abe4e14c24e9b11a89ab15c@intel.com>
X-ClientProxiedBy: MA5P287CA0021.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:179::10) To IA1PR11MB7175.namprd11.prod.outlook.com
 (2603:10b6:208:419::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB7175:EE_|DS7PR11MB9500:EE_
X-MS-Office365-Filtering-Correlation-Id: 757e8a43-6bf9-48ee-7140-08ddcea2d719
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|8096899003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?L3IyTTNUdTNPRkF4WElqR2FnQnlXZnhjZE1jUVhFa2FkRDV6MEdsV2l6eHFo?=
 =?utf-8?B?Mm05WUpRZE5aSmJrNHNWcjN2SCtnejVoZTFmWlVlRTRQVmZLU2t4dFJSK1hW?=
 =?utf-8?B?Nm9oU01DdG4vZFVVWTU2QURIc21XYWN5LzMwVHlMZEJJSXBHdEZsam5zelNP?=
 =?utf-8?B?TGh6ZTJqYTZWdW0vdzRCNm1JUGJrNk9MWmxFRTNFdFdzdzFCTERzbjd1Unpr?=
 =?utf-8?B?YlU0Vld3ZSs3ZGlONGpCaE50QmcyeVBhSXd3N3pBQXhvZWxOSXlXTXF5Wm9q?=
 =?utf-8?B?Ykx6b3RQbWJTVnZxNHFLN2JlSENXMVRuK1VpT2RwZHoyL01aM3VqZUpPVHBz?=
 =?utf-8?B?R2MzWThmT2FsZFNnTVc4U09OWVMrVFVPYm85MHM0YVU1d1gwOE40OUxSci9r?=
 =?utf-8?B?d0RJTHBzdHYzbnJXY29lc3RtME9sLzBNaXFSdHl0TlNJQmErTlMyeTB3RkRv?=
 =?utf-8?B?SVA0QXJQUjFLVjVjVHlDVys1dHp6TWJORlo0dy8wbDNJNGlFUXd2THVTWkpj?=
 =?utf-8?B?UEgxS1B1N0UzT1BmRjE2aUZoa3Z6NDZ2bVJzQ1RBaUt5Q2NmZDIrVHpTUnhh?=
 =?utf-8?B?Y1dERFdreE02aWpvTGFDWUt0WU1MOTExTFcxNU5qUWdvM1BQbTdXNGhmSE9E?=
 =?utf-8?B?NTJKNGo0M3BkQTQ3bm10ZDVJQ003OURlWHU1Z0lsVERJL3dwRnhTbTZ5V2pC?=
 =?utf-8?B?ZWI0c1l5WkVOOVNMVXNYUjlKMFBDU0l4Q0ZPT0l0VkpZVUprcE00ckJZVFVQ?=
 =?utf-8?B?RDRQWGlrY3lVbFlXMXhZenJiM0IxMmQ3K3lBZ3Y3dEpxdWxPNmU4Mzc5dWV1?=
 =?utf-8?B?eUFyY04zR2JudUhUZlhIREVRMnEvd2pFb2N2djNnSm5iMWlNTHMzazVzQjJL?=
 =?utf-8?B?UkY0YWwxd2pTcGdTdVFJQUoraEd1UG93OWRaOGhDdnBLK3JXNUI0cGVIeXJt?=
 =?utf-8?B?Z3l0OVUyTGUxWnA0L1M4YXdoSkVpZmNIOUp6UWRrYlpTTHJENkFMaTg5TjBV?=
 =?utf-8?B?Ukdzc1BFOUI1VmlVVU9TWU5UMFBMUEZnSEVZT2kreHIzVGhDL3hjZzBBd0Ri?=
 =?utf-8?B?UUxHeURBRloxK0JDZ0J5SVk1d3NuaHFSOTNBS2pSSWVSMys0OGhWcDNVUUp4?=
 =?utf-8?B?WmJZclZoSXhSK2FKNkVWT0FpQXhHL1hNZlhHcjErbGNqK0xsV0NnV1d1dWJv?=
 =?utf-8?B?NFZhQk1RUkJJT3BVUG5HTm0vazdNT3AwR2J5aUNLc0VzMlQwQi9sRHdYbzdO?=
 =?utf-8?B?Z05xY0JuVDV5bUNhK2xhNlJhUXdwaDU2MFBzVmJRM2JzcVV2VHdWL1AxRnBx?=
 =?utf-8?B?WERldk1aTW8xdEg0aHU4cmR6WFpHZFdqR3lzZG5BZktiWFRNVStVaUNGc0Ry?=
 =?utf-8?B?MkNtNFVpbm1nUjlvSnl5eHZyWVVUTVoxQ3ZvMWFVZUtIOHRQVDI2YUx2VFcz?=
 =?utf-8?B?WVBSdDh5VC9sVWM2NGJvcXZJOHE3QkMvc2NodytSUEpYMmFSL0hhcDYrbnpv?=
 =?utf-8?B?K2pGTHU5bW1lQjhVajMvR0NacTFFK0Zsc0dlYmEyWVZBa2VjektkWEtodEFh?=
 =?utf-8?B?bnNDaTBIaTZySzQrZ1o3ZExpaXNBT3ZPSHNLMDNaaW9TT1JEdGV3bmlJUnBa?=
 =?utf-8?B?Mk9Vcnkyc3k2QjliemJGSWtRbm1NR2JEcktieWdKSjVVSmRUN3BrZW4rL2Iy?=
 =?utf-8?B?cTRPQjJzZDJlYm1lY3FkbzB2b2tDSmRaL1lmbGZjdmpDWVBvQXJUWWtDc2x0?=
 =?utf-8?B?bHZjWEF1T0JBV3o1Z3J2eFFJZGMzQVUvTk0ycFdxbFRmdG5QU0VRaERWNjg2?=
 =?utf-8?B?OUpSNnR6MXhkelF5QVJmOUlMdEFvNTV2MkZPUDFFWHZtTDN4MVRJbmc0Qm1X?=
 =?utf-8?B?WFhWMHpNWkovNVluMGxFc3pmVVNPWitjVnlhLzNaSnFzbHc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB7175.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(8096899003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RzBxWHJBTzBiS1k3K3NiSEVWc0daZUdHSUF4NUhwS1M4ZDFpQUdTbGlPVW1N?=
 =?utf-8?B?S1B2U0pXVktLM3Q3c1JrRDZQK2lFd1h6cXlOWVhJVmxSdnV6cTBYUDhCVlpn?=
 =?utf-8?B?TEFIeUhDQlpjU01ocFEvYnJDY1c0ZXYvVSs2N21jcUdoUFVEVHJZcWRSaCt1?=
 =?utf-8?B?djA4MTBDWUtxNHd1ZlpPai9KTWpHcjM5VjVDNWVDR1E4UEpVODkxcUM0NmtG?=
 =?utf-8?B?aytSeE00NFRMRjZIMlJ5UHNFOFlQUHFaMGd0aUdyVmhNTFNDUXdXWWlQM243?=
 =?utf-8?B?UDRnTHg3NkZkV0w1UWpTRlpnM082bXphYlB0VUxEdlNtcHI3SkpFMWQ3M3p1?=
 =?utf-8?B?TlJYc2h1OU0zaFJNbW1QeXh4ZlJURzNMcC9ENTNCT3o2dzVxbi85cDBiR1ZW?=
 =?utf-8?B?MkpaRFhVMEFqMHRabWdKMVQyMTdnVFhFdkYwZFllK3d4bVFKRHZqS3pBdXhY?=
 =?utf-8?B?em1zZkFCckpDWUpTMEZoWFZVRnJxLzArejcvanBFQk9uam02YXY1QnhUcS9B?=
 =?utf-8?B?TE13czNoK1pCeDU5eHdLK05mdDlqU0tYMUpvVFBlQk8wMzZaaE1wdGJPdFJM?=
 =?utf-8?B?ODY0bGo3bTJBdmUyeFlRNUc2M0Fub29FbGFTOTVYTnRyK0V0QlIwSFJLU3Nl?=
 =?utf-8?B?RnZqNytjSVhROVRZUXpDeUxQK0JWa0xMdGFwbkJWd2V3RUxnSGJFV0Zqd09W?=
 =?utf-8?B?OUhWWVJXYlVWZU5zODB5ZFFvZG9jajZMYXIrZ1VlSlhaRHo0L1R1TG52VkZR?=
 =?utf-8?B?SmZYbkVJRGY4c1QzUDlHbEYrU09KdlVlT0gwSUpqQnl0Q1oyeDFFaWU3aEhY?=
 =?utf-8?B?UkZoelVydTlCUnJMdVVPVVgyZ09keEJmYTQ0S1YyWDdhVVNoWnZNK2tHOTNB?=
 =?utf-8?B?TGV0Vms2T2taZlBrN1g4c0V5NlFaa1hXeWFXVm14MDM5K3JPdTlmUGdUY0FU?=
 =?utf-8?B?OTc3dXdBZW0rY1llVnZyWmdmNzVYa3dLS1R4ZkhVdWpUY0EyTG1wUVpibGpx?=
 =?utf-8?B?SDB6UEVjc2NXWDhIV3M0VG44anZ4dnd2d1hMQTNkV2EvQ1pSck9UYXNvdTRO?=
 =?utf-8?B?cS9xaGRyenU1MXJFUzJ6S2ZzWEJNbG1wai8yMG9xc3ZDaFR3TGdKc3NkakFT?=
 =?utf-8?B?eng0ejd2L3pTMExaUjU3bUtqcDFqeVBTNE15VzFqMW5MU20wSysxc0Q5OThv?=
 =?utf-8?B?L3M4NkhGTmkycEEzS3pEUjRNdHA0SmtZYjJZZkVlUVpzMitHWnFuSUdoR3kx?=
 =?utf-8?B?NVM1S0JtaFhYdU83Q0haZEQvbUZrU2FvaDU2YkduNVY0RXBjNzJTZk9RTTdp?=
 =?utf-8?B?MGFSaE5QczY3ZTRYc0dlS3pMUGYyV0hBVDVWcHdPNlZSRW5RdWZCdHBOWGlH?=
 =?utf-8?B?WmZzd3QxR2dwS1BLM0h1eW0wZ05YeGJWNDdGbFd5a0laWEJQTXo4QjJzT3Iw?=
 =?utf-8?B?b0dOZHJuVnFuRDFDVmNBWWxyUkNFTlZSMThxdU9UUG81ZzRYMzFKVjlZWnFi?=
 =?utf-8?B?aG9heEtUbHl2MTJoNXh1WjVHc1Vpc3QrL3hjaEl5YkliNit5aFFmTDF2NDJs?=
 =?utf-8?B?TGZmU0JVcTF5bjhwQ0RWamc5RU9kYTQ4M1k3eHE2SERCZCtIMThOVUlSYnJq?=
 =?utf-8?B?S1hWSzJlcEYzZktvUGRhU3d2WHQ4L3J3am40Y05KMzdxSHducWg0YVkzaFIr?=
 =?utf-8?B?QzhTWjhVZmMwS0xwMU5HNHRLS0J6ZndoSGp6YTdPSzIrM3ZtS29VWjRLOGQz?=
 =?utf-8?B?cTNPdnhZZU1UNWtQenlwMTF4aEVvWmdGZEhVeVdqdU5BbTFUU01panU5TW1G?=
 =?utf-8?B?UFdiZm90RHprWXFuMGY2QVcxSGNxaDdDOWM1OVhJczc5TW9aTHMrSXc0VXNC?=
 =?utf-8?B?dXF4K0dWdG96M0prVlBHTE9kcjhVU0ViZmpaS2s4bytTTG5Wakg5Z2FaV3V4?=
 =?utf-8?B?RWkyZkdjU1YvNXQwZXgrR3U4RHZTWWRwNmNXSVRPbW5Ha21zSjA3YjM2WG1Y?=
 =?utf-8?B?ZEMvWnJuYjQ3MmoxM2pvZ0NoOWhQL0s2Z29JVEo2Y0tnTWZhbjFRZWZIallH?=
 =?utf-8?B?MGpiRHoyUTZsOU82Nll5eWo3QU5xZTNFQXNkWk1KUDIvOGNXVGdSVVdQSG9q?=
 =?utf-8?B?U0M2a3pVUkFvbGEyNmpzNnFpMmt6M3Y2dWlud3VteDRRVExtWkVUM1kvWjZD?=
 =?utf-8?Q?kKoGcUIPiSGwBfWY0JmWwp9YcDwpiSqmg4XsA6V3b7ia?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 757e8a43-6bf9-48ee-7140-08ddcea2d719
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB7175.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2025 13:21:34.6861 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SK8zHJBsjNj3e2P8rD4rCAKRslFjCC2Hx/QZ3Sk3bJOiFUMdBE3tJqaJyefvABdUhZCmbIeX0+l+lY8rCcHXyIyX1J8FaEp8T1fkAhRL8szB64oBSiBV8H1TodlW7JJ5
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB9500
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

--------------DB0z9UgyIFL60diVPfPnKiRD
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 29-07-2025 13:47, Jani Nikula wrote:
> On Mon, 28 Jul 2025, Dibin Moolakadan Subrahmanian<dibin.moolakadan.subrahmanian@intel.com> wrote:
>>   The current wait_panel_status() uses intel_de_wait() with a long timeout
>>   (5000ms), which is suboptimal on Xe platforms where the underlying
>>   xe_mmio_wait32() employs an exponential backoff strategy. This leads
>>   to unnecessary delays during resume or power-on  when the panel becomes
>>   ready earlier than the full timeout.
> It's not about the timeout, it's about the exponentially increasing poll
> delay.
>
>>   This patch replaces intel_de_wait() with read_poll_timeout() +
>>   intel_de_read() to actively poll the register at given interval and exit
>>   early when panel is ready, improving resume latency
> Please do not say "this patch" in commit messages. Just use the
> imperative "Replace ...".
>
> The commit messages is unnecessarily indented with a space.

will correct this.

>
>> Changes in v2:
>>   Replaced  two-phase intel_de_wait() with  read_poll_timeout()
>>   + intel_de_read()
>>
>> Changes in v3:
>>   - Add poll_interval_ms argument  'wait_panel_status' function.
>>   - Modify 'wait_panel_status' callers with proper poll interval
>>
>> Changes in v4:
>>   - Change 'wait_panel_off' poll interval to 10ms
>>
>> Signed-off-by: Dibin Moolakadan Subrahmanian<dibin.moolakadan.subrahmanian@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_pps.c | 41 +++++++++++++++++-------
>>   1 file changed, 30 insertions(+), 11 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
>> index b64d0b30f5b1..56ef835fc2eb 100644
>> --- a/drivers/gpu/drm/i915/display/intel_pps.c
>> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
>> @@ -22,6 +22,7 @@
>>   #include "intel_pps.h"
>>   #include "intel_pps_regs.h"
>>   #include "intel_quirks.h"
>> +#include <linux/iopoll.h>
> Please look at how includes are ordered in every single file in i915.

will correct this.

>
>>   static void vlv_steal_power_sequencer(struct intel_display *display,
>>   				      enum pipe pipe);
>> @@ -600,14 +601,18 @@ void intel_pps_check_power_unlocked(struct intel_dp *intel_dp)
>>   #define IDLE_CYCLE_MASK		(PP_ON | PP_SEQUENCE_MASK | PP_CYCLE_DELAY_ACTIVE | PP_SEQUENCE_STATE_MASK)
>>   #define IDLE_CYCLE_VALUE	(0     | PP_SEQUENCE_NONE | 0                     | PP_SEQUENCE_STATE_OFF_IDLE)
>>   
>> +#define PANEL_MAXIMUM_ON_TIME_MS		(5000)
> The name of the macro is misleading. For single-use things, maybe better
> to just keep the value inline as it were.
>
> Side note, the parenthesis are superfluous here.

will correct this.

>> +
>>   static void intel_pps_verify_state(struct intel_dp *intel_dp);
>>   
>>   static void wait_panel_status(struct intel_dp *intel_dp,
>> -			      u32 mask, u32 value)
>> +			      u32 mask, u32 value, int poll_interval_ms)
> Can we not add the extra parameter please? Can we have a meaningful
> default instead? 10 ms? Is the 1 ms poll interval really required?

Motive behind adding new parameter is to adjust the poll time based on case.
Currently each call is taking different time to complete as below
for panel power off time   - 82 ms
for panel power cycle      - 0.074 ms
for panel power on         -  327 ms

Making default poll interval 10ms will  increase panel power cycle time  to 10ms


>
>>   {
>>   	struct intel_display *display = to_intel_display(intel_dp);
>>   	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>>   	i915_reg_t pp_stat_reg, pp_ctrl_reg;
>> +	int ret;
>> +	u32 reg_val;
> Nitpick, usually just "val".
will correct this.
>
>>   	lockdep_assert_held(&display->pps.mutex);
>>   
>> @@ -624,14 +629,27 @@ static void wait_panel_status(struct intel_dp *intel_dp,
>>   		    intel_de_read(display, pp_stat_reg),
>>   		    intel_de_read(display, pp_ctrl_reg));
>>   
>> -	if (intel_de_wait(display, pp_stat_reg, mask, value, 5000))
>> -		drm_err(display->drm,
>> -			"[ENCODER:%d:%s] %s panel status timeout: PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
>> -			dig_port->base.base.base.id, dig_port->base.base.name,
>> -			pps_name(intel_dp),
>> -			intel_de_read(display, pp_stat_reg),
>> -			intel_de_read(display, pp_ctrl_reg));
>> +	if (poll_interval_ms <= 0)
>> +		poll_interval_ms = 1; //if <0 is passed go with 1ms
> Without the parameter, we could get rid of checks like this.
>
> The comment just duplicates what the code already says.
>
> Also, we don't use // comments.
will correct this.
>
>> +
>> +	ret = read_poll_timeout(intel_de_read, reg_val,
>> +				((reg_val & mask) == value),
>> +				(poll_interval_ms * 1000),  // poll intervell
>> +				(PANEL_MAXIMUM_ON_TIME_MS * 1000),  // total timeout (us)
>> +				true,
>> +				display, pp_stat_reg);
> The outer parenthesis in the parameters are superfluous.
>
> The comments are useless (and have a typo too).
>
>> +
>> +	if (ret == 0)
>> +		goto panel_wait_complete;
> We do use goto in kernel, but primarily for error handling. Please use
>
> 	if (ret)
>
> here, and the whole drm_err() thing remains unchanged, and doesn't
> become part of the patch...
>
will correct this.

>>   
>> +	drm_err(display->drm,
>> +		"dibin [ENCODER:%d:%s] %s panel status timeout: PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
> ...and it'll be easier to notice you've left your name in the debug
> logs. Oops.
>> +		dig_port->base.base.base.id, dig_port->base.base.name,
>> +		pps_name(intel_dp),
>> +		intel_de_read(display, pp_stat_reg),
>> +		intel_de_read(display, pp_ctrl_reg));
>> +
>> +panel_wait_complete:
>>   	drm_dbg_kms(display->drm, "Wait complete\n");
>>   }
>>   
>> @@ -644,7 +662,8 @@ static void wait_panel_on(struct intel_dp *intel_dp)
>>   		    "[ENCODER:%d:%s] %s wait for panel power on\n",
>>   		    dig_port->base.base.base.id, dig_port->base.base.name,
>>   		    pps_name(intel_dp));
>> -	wait_panel_status(intel_dp, IDLE_ON_MASK, IDLE_ON_VALUE);
>> +
>> +	wait_panel_status(intel_dp, IDLE_ON_MASK, IDLE_ON_VALUE, 20);
>>   }
>>   
>>   static void wait_panel_off(struct intel_dp *intel_dp)
>> @@ -656,7 +675,7 @@ static void wait_panel_off(struct intel_dp *intel_dp)
>>   		    "[ENCODER:%d:%s] %s wait for panel power off time\n",
>>   		    dig_port->base.base.base.id, dig_port->base.base.name,
>>   		    pps_name(intel_dp));
>> -	wait_panel_status(intel_dp, IDLE_OFF_MASK, IDLE_OFF_VALUE);
>> +	wait_panel_status(intel_dp, IDLE_OFF_MASK, IDLE_OFF_VALUE, 10);
>>   }
>>   
>>   static void wait_panel_power_cycle(struct intel_dp *intel_dp)
>> @@ -683,7 +702,7 @@ static void wait_panel_power_cycle(struct intel_dp *intel_dp)
>>   	if (remaining)
>>   		wait_remaining_ms_from_jiffies(jiffies, remaining);
>>   
>> -	wait_panel_status(intel_dp, IDLE_CYCLE_MASK, IDLE_CYCLE_VALUE);
>> +	wait_panel_status(intel_dp, IDLE_CYCLE_MASK, IDLE_CYCLE_VALUE, 1);
>>   }
>>   
>>   void intel_pps_wait_power_cycle(struct intel_dp *intel_dp)
--------------DB0z9UgyIFL60diVPfPnKiRD
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <pre>
</pre>
    <div class="moz-cite-prefix">On 29-07-2025 13:47, Jani Nikula wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:018afd66168bd9a55abe4e14c24e9b11a89ab15c@intel.com">
      <pre wrap="" class="moz-quote-pre">On Mon, 28 Jul 2025, Dibin Moolakadan Subrahmanian <a class="moz-txt-link-rfc2396E" href="mailto:dibin.moolakadan.subrahmanian@intel.com">&lt;dibin.moolakadan.subrahmanian@intel.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre"> The current wait_panel_status() uses intel_de_wait() with a long timeout
 (5000ms), which is suboptimal on Xe platforms where the underlying
 xe_mmio_wait32() employs an exponential backoff strategy. This leads
 to unnecessary delays during resume or power-on  when the panel becomes
 ready earlier than the full timeout.
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
It's not about the timeout, it's about the exponentially increasing poll
delay.

</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre"> This patch replaces intel_de_wait() with read_poll_timeout() +
 intel_de_read() to actively poll the register at given interval and exit
 early when panel is ready, improving resume latency
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
Please do not say &quot;this patch&quot; in commit messages. Just use the
imperative &quot;Replace ...&quot;.

The commit messages is unnecessarily indented with a space.</pre>
    </blockquote>
    <pre wrap="" class="moz-quote-pre">will correct this.</pre>
    <blockquote type="cite" cite="mid:018afd66168bd9a55abe4e14c24e9b11a89ab15c@intel.com">
      <pre wrap="" class="moz-quote-pre">

</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">Changes in v2:
 Replaced  two-phase intel_de_wait() with  read_poll_timeout()
 + intel_de_read()

Changes in v3:
 - Add poll_interval_ms argument  'wait_panel_status' function.
 - Modify 'wait_panel_status' callers with proper poll interval

Changes in v4:
 - Change 'wait_panel_off' poll interval to 10ms

Signed-off-by: Dibin Moolakadan Subrahmanian <a class="moz-txt-link-rfc2396E" href="mailto:dibin.moolakadan.subrahmanian@intel.com">&lt;dibin.moolakadan.subrahmanian@intel.com&gt;</a>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 41 +++++++++++++++++-------
 1 file changed, 30 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index b64d0b30f5b1..56ef835fc2eb 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -22,6 +22,7 @@
 #include &quot;intel_pps.h&quot;
 #include &quot;intel_pps_regs.h&quot;
 #include &quot;intel_quirks.h&quot;
+#include &lt;linux/iopoll.h&gt;
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
Please look at how includes are ordered in every single file in i915.</pre>
    </blockquote>
    <pre wrap="" class="moz-quote-pre">will correct this.</pre>
    <blockquote type="cite" cite="mid:018afd66168bd9a55abe4e14c24e9b11a89ab15c@intel.com">
      <pre wrap="" class="moz-quote-pre">

</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre"> static void vlv_steal_power_sequencer(struct intel_display *display,
 				      enum pipe pipe);
@@ -600,14 +601,18 @@ void intel_pps_check_power_unlocked(struct intel_dp *intel_dp)
 #define IDLE_CYCLE_MASK		(PP_ON | PP_SEQUENCE_MASK | PP_CYCLE_DELAY_ACTIVE | PP_SEQUENCE_STATE_MASK)
 #define IDLE_CYCLE_VALUE	(0     | PP_SEQUENCE_NONE | 0                     | PP_SEQUENCE_STATE_OFF_IDLE)
 
+#define PANEL_MAXIMUM_ON_TIME_MS		(5000)
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
The name of the macro is misleading. For single-use things, maybe better
to just keep the value inline as it were.

Side note, the parenthesis are superfluous here.
</pre>
    </blockquote>
    <pre wrap="" class="moz-quote-pre">will correct this.</pre>
    <blockquote type="cite" cite="mid:018afd66168bd9a55abe4e14c24e9b11a89ab15c@intel.com">
      <pre wrap="" class="moz-quote-pre">
</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">+
 static void intel_pps_verify_state(struct intel_dp *intel_dp);
 
 static void wait_panel_status(struct intel_dp *intel_dp,
-			      u32 mask, u32 value)
+			      u32 mask, u32 value, int poll_interval_ms)
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
Can we not add the extra parameter please? Can we have a meaningful
default instead? 10 ms? Is the 1 ms poll interval really required?</pre>
    </blockquote>
    <pre>Motive behind adding new parameter is to adjust the poll time based on case.
Currently each call is taking different time to complete as below 
for panel power off time   - 82 ms
for panel power cycle      - 0.074 ms
for panel power on         -  327 ms

Making default poll interval 10ms will  increase panel power cycle time  to 10ms


</pre>
    <blockquote type="cite" cite="mid:018afd66168bd9a55abe4e14c24e9b11a89ab15c@intel.com">
      <pre wrap="" class="moz-quote-pre">

</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre"> {
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	i915_reg_t pp_stat_reg, pp_ctrl_reg;
+	int ret;
+	u32 reg_val;
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
Nitpick, usually just &quot;val&quot;.</pre>
    </blockquote>
    will correct this.
    <blockquote type="cite" cite="mid:018afd66168bd9a55abe4e14c24e9b11a89ab15c@intel.com">
      <pre wrap="" class="moz-quote-pre">

</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre"> 	lockdep_assert_held(&amp;display-&gt;pps.mutex);
 
@@ -624,14 +629,27 @@ static void wait_panel_status(struct intel_dp *intel_dp,
 		    intel_de_read(display, pp_stat_reg),
 		    intel_de_read(display, pp_ctrl_reg));
 
-	if (intel_de_wait(display, pp_stat_reg, mask, value, 5000))
-		drm_err(display-&gt;drm,
-			&quot;[ENCODER:%d:%s] %s panel status timeout: PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n&quot;,
-			dig_port-&gt;base.base.base.id, dig_port-&gt;base.base.name,
-			pps_name(intel_dp),
-			intel_de_read(display, pp_stat_reg),
-			intel_de_read(display, pp_ctrl_reg));
+	if (poll_interval_ms &lt;= 0)
+		poll_interval_ms = 1; //if &lt;0 is passed go with 1ms
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
Without the parameter, we could get rid of checks like this.

The comment just duplicates what the code already says.

Also, we don't use // comments.</pre>
    </blockquote>
    will correct this.
    <blockquote type="cite" cite="mid:018afd66168bd9a55abe4e14c24e9b11a89ab15c@intel.com">
      <pre wrap="" class="moz-quote-pre">

</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">+
+	ret = read_poll_timeout(intel_de_read, reg_val,
+				((reg_val &amp; mask) == value),
+				(poll_interval_ms * 1000),  // poll intervell
+				(PANEL_MAXIMUM_ON_TIME_MS * 1000),  // total timeout (us)
+				true,
+				display, pp_stat_reg);
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
The outer parenthesis in the parameters are superfluous.

The comments are useless (and have a typo too).

</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">+
+	if (ret == 0)
+		goto panel_wait_complete;
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
We do use goto in kernel, but primarily for error handling. Please use

	if (ret)

here, and the whole drm_err() thing remains unchanged, and doesn't
become part of the patch...

</pre>
    </blockquote>
    <pre wrap="" class="moz-quote-pre">will correct this.</pre>
    <blockquote type="cite" cite="mid:018afd66168bd9a55abe4e14c24e9b11a89ab15c@intel.com">
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre"> 
+	drm_err(display-&gt;drm,
+		&quot;dibin [ENCODER:%d:%s] %s panel status timeout: PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n&quot;,
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
...and it'll be easier to notice you've left your name in the debug
logs. Oops.
</pre>
    </blockquote>
    <blockquote type="cite" cite="mid:018afd66168bd9a55abe4e14c24e9b11a89ab15c@intel.com">
      <pre wrap="" class="moz-quote-pre">
</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">+		dig_port-&gt;base.base.base.id, dig_port-&gt;base.base.name,
+		pps_name(intel_dp),
+		intel_de_read(display, pp_stat_reg),
+		intel_de_read(display, pp_ctrl_reg));
+
+panel_wait_complete:
 	drm_dbg_kms(display-&gt;drm, &quot;Wait complete\n&quot;);
 }
 
@@ -644,7 +662,8 @@ static void wait_panel_on(struct intel_dp *intel_dp)
 		    &quot;[ENCODER:%d:%s] %s wait for panel power on\n&quot;,
 		    dig_port-&gt;base.base.base.id, dig_port-&gt;base.base.name,
 		    pps_name(intel_dp));
-	wait_panel_status(intel_dp, IDLE_ON_MASK, IDLE_ON_VALUE);
+
+	wait_panel_status(intel_dp, IDLE_ON_MASK, IDLE_ON_VALUE, 20);
 }
 
 static void wait_panel_off(struct intel_dp *intel_dp)
@@ -656,7 +675,7 @@ static void wait_panel_off(struct intel_dp *intel_dp)
 		    &quot;[ENCODER:%d:%s] %s wait for panel power off time\n&quot;,
 		    dig_port-&gt;base.base.base.id, dig_port-&gt;base.base.name,
 		    pps_name(intel_dp));
-	wait_panel_status(intel_dp, IDLE_OFF_MASK, IDLE_OFF_VALUE);
+	wait_panel_status(intel_dp, IDLE_OFF_MASK, IDLE_OFF_VALUE, 10);
 }
 
 static void wait_panel_power_cycle(struct intel_dp *intel_dp)
@@ -683,7 +702,7 @@ static void wait_panel_power_cycle(struct intel_dp *intel_dp)
 	if (remaining)
 		wait_remaining_ms_from_jiffies(jiffies, remaining);
 
-	wait_panel_status(intel_dp, IDLE_CYCLE_MASK, IDLE_CYCLE_VALUE);
+	wait_panel_status(intel_dp, IDLE_CYCLE_MASK, IDLE_CYCLE_VALUE, 1);
 }
 
 void intel_pps_wait_power_cycle(struct intel_dp *intel_dp)
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
</pre>
    </blockquote>
  </body>
</html>

--------------DB0z9UgyIFL60diVPfPnKiRD--
