Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D3FFADA9DC
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Jun 2025 09:50:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DD0510E2D7;
	Mon, 16 Jun 2025 07:50:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hoQFWxqh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B164410E2D4;
 Mon, 16 Jun 2025 07:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750060243; x=1781596243;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=gECAdJSiMvIfT3POe7g2wratLdGZr+jOD6FvEv0zglw=;
 b=hoQFWxqhDcFVA4tRI5qlc8O/ywY55WgIUqWKHajE3G3NUz8jBPMU2cOo
 EuWH6u/jkvh6iSsuEg3c2X5EqxI1MaeUyRFpcw3Fz0f0U4fLaI4htQMLm
 BRNHIfUvTQBM3ZQUi0pxtNvFpdeUCqmAT3c1CJHDfFHKqTB0qL6TdBKTe
 cFuaKJHOYXZ2i/j25XyD6hfHk/gmtd9eS8pA5ZMMbuMOlHwF+eAPDgCLi
 h4xezNZ0Ei5zUjJohM6q2EAZb4lHTPpQic1ZT/zjKuQhQ+pGkIJP2G8V3
 jHGCHBczT1HtER2Nrjj31Y3xyfTbEB8yuKtZRkZzfKIsmV5E7mesSsLaN A==;
X-CSE-ConnectionGUID: gKSqdJUxRnacVdX0h5UNjg==
X-CSE-MsgGUID: Rq44dQpeRwGp1fowD4s7fQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="69771716"
X-IronPort-AV: E=Sophos;i="6.16,240,1744095600"; d="scan'208";a="69771716"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 00:50:42 -0700
X-CSE-ConnectionGUID: rvCZ2DkCQQ2Lc4FW7dvizA==
X-CSE-MsgGUID: t747p52ZTLW2bewOX6EtCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,240,1744095600"; d="scan'208";a="148232670"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 00:50:42 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 16 Jun 2025 00:50:41 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 16 Jun 2025 00:50:41 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.48)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 16 Jun 2025 00:50:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W+rLQD0ro8PZHisBso7+DBNpHXjIuWXBnmKu7Jbpgd5Ycq/zdzKTKdZpd5n91Lrx3PnzxOfURTfIrmtmpGnZQ6fWExuG6oIMBsFWu7gaJUCkVSELcwJCbp/a/fa1oBt+snZH2TM0eH3SsTi5jseZINKCBJRF1Sqx11E3qriMh3dQK2M0wB6ba+UZLd9aCjMs7B+Qq8IgRgzNPQ1AYML3CWyboKL8z6UpUAATwV5SrfZOKWGLkU7R2M7d8S81X1wsaMKM698YOKo3P8HO+3Z/wla2KhTC+oOy2f5+fzR/bAVbQf5X91gRknJo41ahOdMc5jJSc6YzToiX8I7Kz73r/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4/vCEHeH69kuO/oUW21DxltmIqEVjwn/8ztbUMOY5Wo=;
 b=CrcvU2q+yTQH6MAMy1KUlxZiZW+zC5Fl0zys1T6M8xls8QuFTSMNM/o3JQRRWGT3gx6faT1qdwLHjbWHhjhZqGn3tSxzF95rwYnlN7zKYxqaz03U+W6pGFTGJCcs4ngc89PPVmqNfv4LqEaXU3TgkMy0sB3ONAKQOxUZYIHAvkRQNxiLS40sWKbvrCCpdIYmO4JckH7kGapNZI6POPproTQDCNI5e6yYoCpIPJFfBXU6tSYAbyDeQiYQWr9SZqbcKl542SEG3j2HAWX9mVi4nUnBKYrGrgcjYcCVolIn44iot7n0F3NqELlW5CQzkKmbgnaTZZD4WlPxTORLu8IJWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by CY5PR11MB6234.namprd11.prod.outlook.com (2603:10b6:930:25::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.27; Mon, 16 Jun
 2025 07:50:10 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%4]) with mapi id 15.20.8835.027; Mon, 16 Jun 2025
 07:50:09 +0000
Date: Mon, 16 Jun 2025 07:50:04 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <I915-ci-infra@lists.freedesktop.org>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?Q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm=2Fi91?=
 =?utf-8?Q?5=2Fselftests=3A_Kee?= =?utf-8?Q?p?= mock file open during
 unfaultable migrate with fill (rev2)
Message-ID: <zgwavegl3heflqwlkvguznj3sob6pke3jydftad6ckskxao2ny@a6qai7a4noao>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <ihbtaij3hk3rl63yl6vgbccwizv4igb2erm63vqzsqlp4e66m3@jo4r6iji3yqr>
 <174966791694.68730.15466492294168140498@1538d3639d33>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <174966791694.68730.15466492294168140498@1538d3639d33>
X-ClientProxiedBy: WA1P291CA0023.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::7) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|CY5PR11MB6234:EE_
X-MS-Office365-Filtering-Correlation-Id: 9a4c8032-037f-4814-aa98-08ddacaa6ae6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|13003099007|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?d005Rk94RThIcDBSOFhDc0xCQUV0SHkyWUNmUnk1OFpvL3IweVRXM2REWEY2?=
 =?utf-8?B?M0hVRUs1RUtDc2ZLblI0TlFwMTZqTUpWZWVtZkNLWTU3L3dqMjBRMS9UK1Qr?=
 =?utf-8?B?RnZHczhlLzdsTVIwNDlXVG9SOGdZNTVDUG1TTlVsZUdLQTdTSENPYWI2NUNT?=
 =?utf-8?B?UE5lL2dZTFY1S0VOSDR0Q2Z6ZDdsd25WVTJaYzRhNVJ1MGxWWXZDemxOeWNa?=
 =?utf-8?B?RVhTcG1ESUc0eHYrWURiK2FEdG9KVGo2bHB6NDI3dXE5UUdENk5BREJhaGtH?=
 =?utf-8?B?bTNhR3VhelJ0MU9UK3BEQy9EZ09HeTZ6U1cxQUtRbnYydzZXTmQyT3VVOGFu?=
 =?utf-8?B?VkhleU53RlpMODFOTXEzSm1sdTE5Smd6WkM3eG9XVFV6eVhIRFZwb0VyZndY?=
 =?utf-8?B?SURhbWQzcU84amZGaUFmemQ0RERuQytXb0xSY1VaMXNXR20xRkZjR2diVmg3?=
 =?utf-8?B?UW9JS1NCZjNnbUpxMDZZd1BoV2ErSXpPUTVENzFLNldvUkQrZmZORGFHeTM1?=
 =?utf-8?B?SGhvdWQycU40eVRFMzlMQTRhczNJb1BrVngyU0ltR3NHc05McEd3Mk94OVJh?=
 =?utf-8?B?Z1lqdjJ0b1IyazFKMGxnOExCRWtkMUE0WTc4VC9HaDY2bnRlTy9YWUR0enZM?=
 =?utf-8?B?SDV6Y0xsUFhLakFlckhReWZ4N2JEVjJpUHNlaDcrRnVZeTBzRUd2cUhvMTIw?=
 =?utf-8?B?VFROV0ZhTUY2ZkJBZHVpaFNRUjJMSFd3WEZCTEVOWkFLeE5TVjJJOW9GM1VU?=
 =?utf-8?B?M3lYb00zYThTREcyVlV1NGFydW9yVWJDeFoxZG5FbXk5eTc5NmlETjhFeXdi?=
 =?utf-8?B?eGNSM1RlYTZGTkZxdU1iekkza2wrT0U1eE9tdVcwWHZJaFBNNytYUUNsYWZE?=
 =?utf-8?B?ZklhMlhDMG5Nb3FrUWo2Ly83dHAvSFljN0Y4bVArT0VnMHBMQ25KWnk1ZDVU?=
 =?utf-8?B?MWZmNU1icU1rS2g2UDBhYzJNYlV4RW9uMU9iRVFvcE5rc2s0dkthQ0Nmbmtt?=
 =?utf-8?B?U2owVk54aUhMbG52M2YyMDdZbzRjRThoeWptWFZlSHhNKzhJOWtOTjFhTmJT?=
 =?utf-8?B?ZjUvL1dPUU9FVGtPL2pHMlQ0a0V2Q1pQekViOWFmRUJpSGNUVzRwcGozSTNu?=
 =?utf-8?B?aW9raFFweEJFNVkvc0tnZE81UUFXMmszK0NQMWZNbUtsRjdVd0ExakZ2V0hU?=
 =?utf-8?B?LzJNU1BONEFHNHRjOXpya0l6dVVOYjNXWHkrc2lISDY4czNXazY3dUxtNyt6?=
 =?utf-8?B?emYxOGJVdi8xS0FrSWg2OHJ0K0VtdFNRWGlaSlQ1Q2t3THlqNER0RXBMWWFs?=
 =?utf-8?B?OEszZjZFditYUTVwcThFMFFuK2h3T0pVY2lRRDVkYmdSQlhrQnpHbmR5cG9Q?=
 =?utf-8?B?NUNNS2l6dTI4T1k3VVdLYUF0Um5NanF4QVlFL0NObjhnNDNSeXVPTVlleUg5?=
 =?utf-8?B?ZG9XQ0dkWGV0bFBKaHlKdXBCeHpRb3ByblE3a1JRNVc2RCtHeW1OQ1dKbzlD?=
 =?utf-8?B?YW1QM3dVc213aWJXSENJZ25GSG5XYXBjRkxjS1R1QjNOd3lITUZYcHhXTmQ1?=
 =?utf-8?B?a1RXU2JPTmZDOE4zNlN4bzd6aG5CcUVDeW52cE9HVWU3Z3M3MWpwMHdnSVF3?=
 =?utf-8?B?bysrQi82cDM1UFNCSit1bER5ZURDbXlyVVJGdGlCTnREVjRKRkxhRUZwa1Rj?=
 =?utf-8?B?cENHNUhzWklnUVdFdHAxenNWWVZHTEJ6QjlEc0c2K2V6MExEZmR3cXl2UXBi?=
 =?utf-8?B?emowQTQwNTdvNXl2dTJOK0R6U0xQc0RRcS9ZdVg3cmlDV0VXNnkrTm1vd2Jm?=
 =?utf-8?Q?pmzrPj7rbqvvN8QBkAr8ICequC5YNLCKXLaks=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(13003099007)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d3RFNVlCd1p5eEthUWZ5TWZnWm9OUTk2MFRtamkweU1xaDZMdVhRT0xjSHhY?=
 =?utf-8?B?aEpETi82T0ExbmZHQ0MzK2FzLzh5SkNYNVppNU9xTGYwcFRLTDRZWnRndUtp?=
 =?utf-8?B?RFEzYTMyY3U5bkRUMTZjMTlEQkxYemN3WnBLKzllVHUvZXk2LzVtVkF0UnpU?=
 =?utf-8?B?TVBTVlplaUVKYk1yN3lDNXlpb04wNmtuUVEyV0xQbGF4TXZVM0NndHZZNHFT?=
 =?utf-8?B?NCs4MjhyRTRXT3RFVTJGWklEVFJwVzlQei9UYVdGeFlJVm1GQ1RnTXphOHpy?=
 =?utf-8?B?ZFgrRjNMQVNreG5vL3M1enZXNHJ1Q1N0ZmxNbDY0dDhrQndkeEJSalQrNk1U?=
 =?utf-8?B?dXpuT1FMQXJSZXY4a1ZQMnhJRWlPbDNneGZrSlF1Q2xnV0p4NWc3MTZ1cE1L?=
 =?utf-8?B?bE8vaE9SR0Z5ZCttZUJrZVEwM1pRY3IxZWtyNHBEMDloVmpvaEg4N29SUHdG?=
 =?utf-8?B?NStPUCs3WGg0c1Era2RDa3pScFkxdnY3bndBTkNsUHFqQzlWZEZkL1pNTU1v?=
 =?utf-8?B?dmVTOVhUcTJSODdWT216RWRsZFhPVTQ0bFo5MEJScjduYVppL2RCQ1gyRXZ1?=
 =?utf-8?B?dEVDVG9MZnZKdzF4RCtJdExIZFZqUW1EYTluN1NHcFlrR2R2WkVMc1pldG5z?=
 =?utf-8?B?K0JjNER4M3ZkQkpXQzhYa0ExM29HZEVtVGNPVnAvZk9NTUNWK2Rsa2dMR1hV?=
 =?utf-8?B?Vm02clRCeVR4aCtqR3U3QVlqUFpSSS8xWUZveDlvaVBZSDMzVTg4eDlCNEU2?=
 =?utf-8?B?WFJBblA3WHU2Z2UrVld3UUs1eEpUdTYvbE05bFRoditXN3FTUi9wS3hseXNn?=
 =?utf-8?B?dUkyMUZKb3hLaTVZaFMyK05yc2VYNnNzd2NIVklHWXE4U1RBRmR5RU5WT2p1?=
 =?utf-8?B?elluenhxbGFEdUJwNUYxYlFjUDc4R3ozVzJVQ1lvUlNGNk9aV3N2RC9kYU1o?=
 =?utf-8?B?d2JWeWJwSmxsUnRyeWtJVHhqc3UwTllJdm9LRHBZQjhSdUZLRW9oUldtM1p2?=
 =?utf-8?B?N1Z6NHpTalQzc0FnY1JkSGc0RjluZno3dW1tYzNrbmNFQTJOZDJpanppZ0lu?=
 =?utf-8?B?M0dSd1lNTnVmOUJJVDlzSnloQ09rYi9uNDNMYlFrSHhzT0kyanBQdHN3RmhY?=
 =?utf-8?B?V3g4QVllUUdiMG5PUmtwMVh3STJwOTNsWktRcmdjS1ExcWV2WnQ1bmQ2eG9D?=
 =?utf-8?B?U1NkeURJMTA5VVZjMVRSZ3FCYlBxMHJKTnZSQ1F0ZlFWRG80bi9oTXlRZXQy?=
 =?utf-8?B?ejJ4a08ycUl1dFBQS0crUDYwcktUL2xpSDFsbm1rNXZUcXoxaFYvcE5QMkdC?=
 =?utf-8?B?QlpyQktBY3dUVHhsdWNvaDZHQVFJZHQxU21IN2h2OTlTTmxFN016MlB6UGVV?=
 =?utf-8?B?NUs5dWVGVnQrZ3I4QklqSGpKNlptTlErM1kxc0I0ZytxMExraCtIWTVjWU1q?=
 =?utf-8?B?ZFlSYmRieVZJSmptMGNmUnlsYW9nWCtDaC9TOTVSM0tYS2xUY3U4Q0dLdnMy?=
 =?utf-8?B?V2pjM3lQZlhqT3plMG5nMTNyTzd0VDN5RUxCK1I0QVNoWktSeExqU2QyWWVE?=
 =?utf-8?B?bFBRNjFITDgvN01qRG5wTEh5N3U0L2dXWEtxdmZMVzVHSTU0eVV2MW9JNUl5?=
 =?utf-8?B?SDREZXdlQU43RDdjMEx6RitsQzdYMnNZdmxOZFRxVVB2YkNYcEZZTkd4djFN?=
 =?utf-8?B?NTB4a3plNUNXVCs4bXNTSC9BUTVCdEFqT0RRVlF0b3dXazU4OTl0MXlvZGNy?=
 =?utf-8?B?OFJkSlRZZUpPR1ZiWW5YOFNGb3JMSTFMdGJtZzVRQlVVdEFpSUpzVDZGUGsw?=
 =?utf-8?B?TC9RSFA1clAwN1dGaU5XeExsWDhncTlWMnIzeFk1OE1tcEc4Z3NtYnJVVXA3?=
 =?utf-8?B?TVRxZWs2ZitSTk0zTldGMTVRTWh2SENRQUVlbDRidnpDUW5TWElleXQ5ZFFy?=
 =?utf-8?B?cHRqU2xONkdTQjQ4L29tY1ZuRk94SWlmZFlqSlNtTWpYU0pmZENJYmZGOFZD?=
 =?utf-8?B?dkRRdWg1blRBVkU2MkpCbTRQREZiaWVlajVUN1Z3ZjJHeVNOQWtDamVGTG1L?=
 =?utf-8?B?VkE3YmJwb1FLTkdYMC9oUG5zblFuM2tIVjdXYkJUeHdRQks4eW1waFhEQ3BO?=
 =?utf-8?B?QkN6cEIybW9ORUtuYldYbEZRR21EYk4zZ2pNR3FjaW5GMWlIY0k0b05xaFEv?=
 =?utf-8?B?b1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a4c8032-037f-4814-aa98-08ddacaa6ae6
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2025 07:50:09.9130 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Gq010Vqx4TJcr5mHiYcPlOrPb4eZ+tWsZ4NG94lreyeHzFPrulW8qtOuYgcYohjouIXuTKbgs9RnKOfL/U+ZraKifrZ+Qyw4afzAY8Ovn7Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6234
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

Hi CI Team,

below failure (DMESG-WARN during module reload) is about GUC,
which my patch does not touch.

Best Regards,
Krzysztof

On 2025-06-11 at 18:51:56 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/selftests: Keep mock file open during unfaultable migrate with fill (rev2)
> URL   : https://patchwork.freedesktop.org/series/150033/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_16684_full -> Patchwork_150033v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_150033v2_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_150033v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (10 -> 11)
> ------------------------------
> 
>   Additional (1): shard-dg2-set2 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_150033v2_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_module_load@load:
>     - shard-dg2:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24]) -> ([PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [DMESG-WARN][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-1/igt@i915_module_load@load.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-6/igt@i915_module_load@load.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-1/igt@i915_module_load@load.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-6/igt@i915_module_load@load.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-2/igt@i915_module_load@load.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-7/igt@i915_module_load@load.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-1/igt@i915_module_load@load.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-8/igt@i915_module_load@load.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-10/igt@i915_module_load@load.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-2/igt@i915_module_load@load.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-3/igt@i915_module_load@load.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-8/igt@i915_module_load@load.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-11/igt@i915_module_load@load.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-4/igt@i915_module_load@load.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-10/igt@i915_module_load@load.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-4/igt@i915_module_load@load.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-5/igt@i915_module_load@load.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-2/igt@i915_module_load@load.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-6/igt@i915_module_load@load.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-7/igt@i915_module_load@load.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-11/igt@i915_module_load@load.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-11/igt@i915_module_load@load.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-3/igt@i915_module_load@load.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-5/igt@i915_module_load@load.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-11/igt@i915_module_load@load.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-10/igt@i915_module_load@load.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-4/igt@i915_module_load@load.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-8/igt@i915_module_load@load.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-2/igt@i915_module_load@load.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-5/igt@i915_module_load@load.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-6/igt@i915_module_load@load.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-10/igt@i915_module_load@load.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-1/igt@i915_module_load@load.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-2/igt@i915_module_load@load.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-3/igt@i915_module_load@load.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-4/igt@i915_module_load@load.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-8/igt@i915_module_load@load.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-7/igt@i915_module_load@load.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-6/igt@i915_module_load@load.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-11/igt@i915_module_load@load.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-10/igt@i915_module_load@load.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-5/igt@i915_module_load@load.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-11/igt@i915_module_load@load.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-3/igt@i915_module_load@load.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-2/igt@i915_module_load@load.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-7/igt@i915_module_load@load.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_150033v2_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@object-reloc-keep-cache:
>     - shard-rkl:          NOTRUN -> [SKIP][47] ([i915#8411]) +3 other tests skip
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-3/igt@api_intel_bb@object-reloc-keep-cache.html
> 
>   * igt@device_reset@cold-reset-bound:
>     - shard-dg2-9:        NOTRUN -> [SKIP][48] ([i915#11078])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@device_reset@cold-reset-bound.html
> 
>   * igt@device_reset@unbind-cold-reset-rebind:
>     - shard-tglu-1:       NOTRUN -> [SKIP][49] ([i915#11078])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-1/igt@device_reset@unbind-cold-reset-rebind.html
> 
>   * igt@gem_ccs@block-multicopy-compressed:
>     - shard-rkl:          NOTRUN -> [SKIP][50] ([i915#9323])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-8/igt@gem_ccs@block-multicopy-compressed.html
>     - shard-tglu:         NOTRUN -> [SKIP][51] ([i915#9323])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-7/igt@gem_ccs@block-multicopy-compressed.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][52] ([i915#13356])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-1/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][53] ([i915#12392] / [i915#13356])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-1/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-tglu-1:       NOTRUN -> [SKIP][54] ([i915#7697]) +1 other test skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-1/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_compute@compute-square:
>     - shard-dg2-9:        NOTRUN -> [FAIL][55] ([i915#13665])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@gem_compute@compute-square.html
> 
>   * igt@gem_create@create-ext-cpu-access-sanity-check:
>     - shard-rkl:          NOTRUN -> [SKIP][56] ([i915#6335])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-7/igt@gem_create@create-ext-cpu-access-sanity-check.html
> 
>   * igt@gem_ctx_persistence@heartbeat-many:
>     - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#8555])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-1/igt@gem_ctx_persistence@heartbeat-many.html
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-dg2-9:        NOTRUN -> [SKIP][58] ([i915#280])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-rkl:          NOTRUN -> [SKIP][59] ([i915#280])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-3/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-tglu-1:       NOTRUN -> [SKIP][60] ([i915#280])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-1/igt@gem_ctx_sseu@mmap-args.html
> 
>   * igt@gem_exec_balancer@bonded-dual:
>     - shard-dg2-9:        NOTRUN -> [SKIP][61] ([i915#4771])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@gem_exec_balancer@bonded-dual.html
> 
>   * igt@gem_exec_balancer@bonded-false-hang:
>     - shard-dg2-9:        NOTRUN -> [SKIP][62] ([i915#4812])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@gem_exec_balancer@bonded-false-hang.html
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-tglu:         NOTRUN -> [SKIP][63] ([i915#4525])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-7/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-rkl:          NOTRUN -> [SKIP][64] ([i915#4525]) +3 other tests skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-7/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_big@single:
>     - shard-tglu:         NOTRUN -> [ABORT][65] ([i915#11713])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-7/igt@gem_exec_big@single.html
> 
>   * igt@gem_exec_capture@capture-invisible:
>     - shard-dg2-9:        NOTRUN -> [SKIP][66] ([i915#6334]) +2 other tests skip
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@gem_exec_capture@capture-invisible.html
> 
>   * igt@gem_exec_flush@basic-wb-pro-default:
>     - shard-dg2-9:        NOTRUN -> [SKIP][67] ([i915#3539] / [i915#4852]) +3 other tests skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@gem_exec_flush@basic-wb-pro-default.html
> 
>   * igt@gem_exec_reloc@basic-cpu-read:
>     - shard-dg2-9:        NOTRUN -> [SKIP][68] ([i915#3281]) +10 other tests skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@gem_exec_reloc@basic-cpu-read.html
> 
>   * igt@gem_exec_reloc@basic-gtt-read-noreloc:
>     - shard-rkl:          NOTRUN -> [SKIP][69] ([i915#3281]) +16 other tests skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-8/igt@gem_exec_reloc@basic-gtt-read-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-softpin:
>     - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#3281]) +1 other test skip
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-1/igt@gem_exec_reloc@basic-softpin.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts-chain:
>     - shard-dg2-9:        NOTRUN -> [SKIP][71] ([i915#4537] / [i915#4812])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@gem_exec_schedule@preempt-queue-contexts-chain.html
> 
>   * igt@gem_exec_schedule@semaphore-power:
>     - shard-rkl:          NOTRUN -> [SKIP][72] ([i915#7276])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-7/igt@gem_exec_schedule@semaphore-power.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][73] ([i915#4613]) +1 other test skip
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-7/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][74] ([i915#4613]) +3 other tests skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-7/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_lmem_swapping@verify-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][75] ([i915#4613]) +1 other test skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-1/igt@gem_lmem_swapping@verify-ccs.html
> 
>   * igt@gem_media_vme:
>     - shard-rkl:          NOTRUN -> [SKIP][76] ([i915#284])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-8/igt@gem_media_vme.html
> 
>   * igt@gem_mmap_gtt@basic-write:
>     - shard-dg2-9:        NOTRUN -> [SKIP][77] ([i915#4077]) +4 other tests skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@gem_mmap_gtt@basic-write.html
> 
>   * igt@gem_mmap_gtt@pf-nonblock:
>     - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#4077])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-1/igt@gem_mmap_gtt@pf-nonblock.html
> 
>   * igt@gem_mmap_wc@bad-size:
>     - shard-dg2-9:        NOTRUN -> [SKIP][79] ([i915#4083]) +2 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@gem_mmap_wc@bad-size.html
> 
>   * igt@gem_mmap_wc@write-read-distinct:
>     - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#4083])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-1/igt@gem_mmap_wc@write-read-distinct.html
> 
>   * igt@gem_pread@bench:
>     - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#3282])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-1/igt@gem_pread@bench.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#3282]) +14 other tests skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-8/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pwrite_snooped:
>     - shard-dg2-9:        NOTRUN -> [SKIP][83] ([i915#3282])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@gem_pwrite_snooped.html
> 
>   * igt@gem_pxp@create-valid-protected-context:
>     - shard-rkl:          NOTRUN -> [TIMEOUT][84] ([i915#12964])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-7/igt@gem_pxp@create-valid-protected-context.html
> 
>   * igt@gem_pxp@display-protected-crc:
>     - shard-rkl:          NOTRUN -> [TIMEOUT][85] ([i915#12917] / [i915#12964]) +1 other test timeout
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-3/igt@gem_pxp@display-protected-crc.html
> 
>   * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
>     - shard-rkl:          [PASS][86] -> [TIMEOUT][87] ([i915#12917] / [i915#12964]) +1 other test timeout
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-rkl-8/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-5/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
> 
>   * igt@gem_pxp@regular-baseline-src-copy-readible:
>     - shard-dg2-9:        NOTRUN -> [SKIP][88] ([i915#4270]) +1 other test skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@gem_pxp@regular-baseline-src-copy-readible.html
> 
>   * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
>     - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#4270]) +1 other test skip
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-5/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html
> 
>   * igt@gem_render_copy@y-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#5190] / [i915#8428])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-1/igt@gem_render_copy@y-tiled.html
> 
>   * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:
>     - shard-dg2-9:        NOTRUN -> [SKIP][91] ([i915#5190] / [i915#8428]) +5 other tests skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
>     - shard-dg2-9:        NOTRUN -> [SKIP][92] ([i915#4079])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
> 
>   * igt@gem_set_tiling_vs_pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#4079])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-1/igt@gem_set_tiling_vs_pwrite.html
> 
>   * igt@gem_userptr_blits@dmabuf-unsync:
>     - shard-rkl:          NOTRUN -> [SKIP][94] ([i915#3297]) +1 other test skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-7/igt@gem_userptr_blits@dmabuf-unsync.html
> 
>   * igt@gem_userptr_blits@forbidden-operations:
>     - shard-dg2-9:        NOTRUN -> [SKIP][95] ([i915#3282] / [i915#3297])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@gem_userptr_blits@forbidden-operations.html
> 
>   * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
>     - shard-tglu:         NOTRUN -> [SKIP][96] ([i915#3297])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-7/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
> 
>   * igt@gem_userptr_blits@readonly-unsync:
>     - shard-dg2-9:        NOTRUN -> [SKIP][97] ([i915#3297])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@gem_userptr_blits@readonly-unsync.html
> 
>   * igt@gen3_mixed_blits:
>     - shard-dg2:          NOTRUN -> [SKIP][98] +3 other tests skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-1/igt@gen3_mixed_blits.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-dg2-9:        NOTRUN -> [SKIP][99] ([i915#2856]) +1 other test skip
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@batch-invalid-length:
>     - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#2856])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-5/igt@gen9_exec_parse@batch-invalid-length.html
> 
>   * igt@gen9_exec_parse@bb-large:
>     - shard-tglu:         NOTRUN -> [SKIP][101] ([i915#2527] / [i915#2856]) +1 other test skip
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-7/igt@gen9_exec_parse@bb-large.html
> 
>   * igt@gen9_exec_parse@bb-oversize:
>     - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#2527]) +3 other tests skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-8/igt@gen9_exec_parse@bb-oversize.html
> 
>   * igt@gen9_exec_parse@unaligned-access:
>     - shard-tglu-1:       NOTRUN -> [SKIP][103] ([i915#2527] / [i915#2856]) +2 other tests skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-1/igt@gen9_exec_parse@unaligned-access.html
> 
>   * igt@i915_drm_fdinfo@busy-check-all@vcs1:
>     - shard-dg2-9:        NOTRUN -> [SKIP][104] ([i915#11527]) +7 other tests skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@i915_drm_fdinfo@busy-check-all@vcs1.html
> 
>   * igt@i915_drm_fdinfo@busy@vecs1:
>     - shard-dg2-9:        NOTRUN -> [SKIP][105] ([i915#14073]) +7 other tests skip
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@i915_drm_fdinfo@busy@vecs1.html
> 
>   * igt@i915_drm_fdinfo@virtual-busy-hang-all:
>     - shard-dg2-9:        NOTRUN -> [SKIP][106] ([i915#14118])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@i915_drm_fdinfo@virtual-busy-hang-all.html
> 
>   * igt@i915_pm_freq_api@freq-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#8399]) +2 other tests skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-8/igt@i915_pm_freq_api@freq-suspend.html
>     - shard-tglu:         NOTRUN -> [SKIP][108] ([i915#8399])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-7/igt@i915_pm_freq_api@freq-suspend.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
>     - shard-tglu-1:       NOTRUN -> [WARN][109] ([i915#13790] / [i915#2681]) +4 other tests warn
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-1/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
> 
>   * igt@i915_pm_rps@thresholds-idle-park:
>     - shard-dg2-9:        NOTRUN -> [SKIP][110] ([i915#11681])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@i915_pm_rps@thresholds-idle-park.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - shard-dg2:          NOTRUN -> [DMESG-FAIL][111] ([i915#12061]) +1 other test dmesg-fail
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-1/igt@i915_selftest@live@workarounds.html
>     - shard-mtlp:         [PASS][112] -> [DMESG-FAIL][113] ([i915#12061]) +1 other test dmesg-fail
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-mtlp-2/igt@i915_selftest@live@workarounds.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-mtlp-1/igt@i915_selftest@live@workarounds.html
> 
>   * igt@intel_hwmon@hwmon-write:
>     - shard-tglu-1:       NOTRUN -> [SKIP][114] ([i915#7707])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-1/igt@intel_hwmon@hwmon-write.html
> 
>   * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
>     - shard-dg2-9:        NOTRUN -> [SKIP][115] ([i915#4212])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events-tiled-atomic@pipe-b-hdmi-a-4-y-rc-ccs-cc:
>     - shard-dg1:          NOTRUN -> [SKIP][116] ([i915#8709]) +7 other tests skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg1-15/igt@kms_async_flips@async-flip-with-page-flip-events-tiled-atomic@pipe-b-hdmi-a-4-y-rc-ccs-cc.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events-tiled@pipe-c-hdmi-a-2-4-mc-ccs:
>     - shard-dg2-9:        NOTRUN -> [SKIP][117] ([i915#8709]) +15 other tests skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_async_flips@async-flip-with-page-flip-events-tiled@pipe-c-hdmi-a-2-4-mc-ccs.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-rkl:          NOTRUN -> [SKIP][118] ([i915#1769] / [i915#3555]) +1 other test skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-7/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][119] ([i915#5286]) +9 other tests skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-7/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-tglu:         NOTRUN -> [SKIP][120] ([i915#5286]) +2 other tests skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-tglu-1:       NOTRUN -> [SKIP][121] ([i915#5286])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][122] ([i915#3638]) +6 other tests skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-8/igt@kms_big_fb@linear-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
>     - shard-dg2-9:        NOTRUN -> [SKIP][123] +3 other tests skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-16bpp-rotate-270:
>     - shard-dg2-9:        NOTRUN -> [SKIP][124] ([i915#4538] / [i915#5190]) +7 other tests skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_big_fb@y-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#4538] / [i915#5190]) +1 other test skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][126] ([i915#6095]) +87 other tests skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg1-15/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#10307] / [i915#10434] / [i915#6095]) +2 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-8/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-b-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][128] ([i915#6095]) +34 other tests skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-1/igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][129] ([i915#6095]) +34 other tests skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-7/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#10307] / [i915#6095]) +190 other tests skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-4/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
>     - shard-dg2-9:        NOTRUN -> [SKIP][131] ([i915#12313])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][132] ([i915#6095]) +31 other tests skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#12805]) +1 other test skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-2:
>     - shard-dg2-9:        NOTRUN -> [SKIP][134] ([i915#6095]) +4 other tests skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#6095]) +28 other tests skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#12313]) +3 other tests skip
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#14098] / [i915#6095]) +41 other tests skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-3/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-c-hdmi-a-2:
>     - shard-dg2-9:        NOTRUN -> [SKIP][138] ([i915#10307] / [i915#6095]) +44 other tests skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2:
>     - shard-dg2-9:        NOTRUN -> [SKIP][139] ([i915#13781]) +4 other tests skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_cdclk@plane-scaling:
>     - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#3742]) +1 other test skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-8/igt@kms_cdclk@plane-scaling.html
>     - shard-tglu:         NOTRUN -> [SKIP][141] ([i915#3742])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-7/igt@kms_cdclk@plane-scaling.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-c-dp-3:
>     - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#13783]) +3 other tests skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-10/igt@kms_cdclk@plane-scaling@pipe-c-dp-3.html
> 
>   * igt@kms_chamelium_audio@hdmi-audio:
>     - shard-dg2-9:        NOTRUN -> [SKIP][143] ([i915#11151] / [i915#7828]) +9 other tests skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_chamelium_audio@hdmi-audio.html
> 
>   * igt@kms_chamelium_edid@vga-edid-read:
>     - shard-tglu:         NOTRUN -> [SKIP][144] ([i915#11151] / [i915#7828]) +4 other tests skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-7/igt@kms_chamelium_edid@vga-edid-read.html
> 
>   * igt@kms_chamelium_frames@dp-frame-dump:
>     - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-1/igt@kms_chamelium_frames@dp-frame-dump.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-single:
>     - shard-tglu-1:       NOTRUN -> [SKIP][146] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-1/igt@kms_chamelium_frames@hdmi-crc-single.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd:
>     - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#11151] / [i915#7828]) +15 other tests skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-7/igt@kms_chamelium_hpd@dp-hpd.html
> 
>   * igt@kms_content_protection@content-type-change:
>     - shard-tglu:         NOTRUN -> [SKIP][148] ([i915#6944] / [i915#9424])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-7/igt@kms_content_protection@content-type-change.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#3116]) +2 other tests skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-7/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_content_protection@legacy@pipe-a-dp-3:
>     - shard-dg2:          NOTRUN -> [FAIL][150] ([i915#7173]) +1 other test fail
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-11/igt@kms_content_protection@legacy@pipe-a-dp-3.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#9424]) +1 other test skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-7/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#9424])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-1/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x170:
>     - shard-dg2-9:        NOTRUN -> [SKIP][153] ([i915#13049])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_cursor_crc@cursor-offscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [FAIL][154] ([i915#13566]) +1 other test fail
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x512:
>     - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#13049])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-random-256x85:
>     - shard-tglu:         [PASS][156] -> [FAIL][157] ([i915#13566]) +1 other test fail
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-tglu-5/igt@kms_cursor_crc@cursor-random-256x85.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-2/igt@kms_cursor_crc@cursor-random-256x85.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x512:
>     - shard-tglu-1:       NOTRUN -> [SKIP][158] ([i915#13049])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-1/igt@kms_cursor_crc@cursor-random-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
>     - shard-rkl:          NOTRUN -> [SKIP][159] ([i915#3555]) +10 other tests skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-8/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
>     - shard-dg2-9:        NOTRUN -> [SKIP][160] ([i915#3555]) +2 other tests skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x32:
>     - shard-tglu:         NOTRUN -> [SKIP][161] ([i915#3555]) +3 other tests skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-7/igt@kms_cursor_crc@cursor-sliding-32x32.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#13046] / [i915#5354])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#4103]) +3 other tests skip
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
>     - shard-dg2-9:        NOTRUN -> [SKIP][164] ([i915#13046] / [i915#5354]) +3 other tests skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
>     - shard-rkl:          NOTRUN -> [FAIL][165] ([i915#2346])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-7/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
>     - shard-rkl:          [PASS][166] -> [FAIL][167] ([i915#2346])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-rkl-8/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>     - shard-dg2-9:        NOTRUN -> [SKIP][168] ([i915#4103] / [i915#4213])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>     - shard-tglu:         NOTRUN -> [SKIP][169] ([i915#4103])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-7/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
> 
>   * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>     - shard-rkl:          NOTRUN -> [SKIP][170] ([i915#9723])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-7/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
> 
>   * igt@kms_display_modes@extended-mode-basic:
>     - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#13691])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-7/igt@kms_display_modes@extended-mode-basic.html
> 
>   * igt@kms_dp_aux_dev:
>     - shard-dg2:          [PASS][172] -> [SKIP][173] ([i915#1257])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-10/igt@kms_dp_aux_dev.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-4/igt@kms_dp_aux_dev.html
>     - shard-rkl:          NOTRUN -> [SKIP][174] ([i915#1257])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-8/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_dp_link_training@non-uhbr-sst:
>     - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#13749])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-7/igt@kms_dp_link_training@non-uhbr-sst.html
> 
>   * igt@kms_dp_link_training@uhbr-mst:
>     - shard-dg2-9:        NOTRUN -> [SKIP][176] ([i915#13748])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_dp_link_training@uhbr-mst.html
> 
>   * igt@kms_dp_link_training@uhbr-sst:
>     - shard-tglu:         NOTRUN -> [SKIP][177] ([i915#13748])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-7/igt@kms_dp_link_training@uhbr-sst.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][178] ([i915#8812])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-1/igt@kms_draw_crc@draw-method-mmap-gtt.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-wc:
>     - shard-dg2-9:        NOTRUN -> [SKIP][179] ([i915#8812])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_draw_crc@draw-method-mmap-wc.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - shard-rkl:          NOTRUN -> [SKIP][180] ([i915#3555] / [i915#3840])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-8/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_dsc@dsc-with-bpc:
>     - shard-dg2-9:        NOTRUN -> [SKIP][181] ([i915#3555] / [i915#3840])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_dsc@dsc-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-formats:
>     - shard-tglu-1:       NOTRUN -> [SKIP][182] ([i915#3555] / [i915#3840])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-1/igt@kms_dsc@dsc-with-formats.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#3955])
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-8/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_feature_discovery@display-3x:
>     - shard-dg2-9:        NOTRUN -> [SKIP][184] ([i915#1839])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_feature_discovery@display-3x.html
> 
>   * igt@kms_feature_discovery@psr1:
>     - shard-dg2-9:        NOTRUN -> [SKIP][185] ([i915#658])
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_feature_discovery@psr1.html
> 
>   * igt@kms_feature_discovery@psr2:
>     - shard-tglu:         NOTRUN -> [SKIP][186] ([i915#658])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-7/igt@kms_feature_discovery@psr2.html
>     - shard-rkl:          NOTRUN -> [SKIP][187] ([i915#658])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-8/igt@kms_feature_discovery@psr2.html
> 
>   * igt@kms_fence_pin_leak:
>     - shard-dg2-9:        NOTRUN -> [SKIP][188] ([i915#4881])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_fence_pin_leak.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
>     - shard-tglu:         NOTRUN -> [SKIP][189] ([i915#3637] / [i915#9934]) +5 other tests skip
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-7/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-panning-vs-hang:
>     - shard-dg2-9:        NOTRUN -> [SKIP][190] ([i915#9934]) +6 other tests skip
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check-interruptible:
>     - shard-tglu-1:       NOTRUN -> [SKIP][191] ([i915#3637] / [i915#9934]) +1 other test skip
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-1/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1:
>     - shard-snb:          [PASS][192] -> [FAIL][193] ([i915#13734]) +1 other test fail
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-snb7/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-snb4/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:
>     - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#9934]) +2 other tests skip
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-1/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html
> 
>   * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
>     - shard-rkl:          NOTRUN -> [SKIP][195] ([i915#9934]) +11 other tests skip
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-8/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a2:
>     - shard-rkl:          [PASS][196] -> [FAIL][197] ([i915#13734]) +3 other tests fail
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-rkl-8/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a2.html
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-6/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-panning-vs-hang@a-hdmi-a1:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][198] ([i915#12964]) +11 other tests dmesg-warn
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-7/igt@kms_flip@flip-vs-panning-vs-hang@a-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-suspend:
>     - shard-rkl:          [PASS][199] -> [INCOMPLETE][200] ([i915#6113]) +1 other test incomplete
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-rkl-5/igt@kms_flip@flip-vs-suspend.html
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-3/igt@kms_flip@flip-vs-suspend.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible:
>     - shard-tglu:         [PASS][201] -> [FAIL][202] ([i915#13734]) +3 other tests fail
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-tglu-5/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-10/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
>     - shard-rkl:          NOTRUN -> [FAIL][203] ([i915#13734]) +1 other test fail
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-8/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
> 
>   * igt@kms_flip@wf_vblank-ts-check:
>     - shard-rkl:          [PASS][204] -> [FAIL][205] ([i915#11832] / [i915#13734]) +1 other test fail
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-rkl-3/igt@kms_flip@wf_vblank-ts-check.html
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-5/igt@kms_flip@wf_vblank-ts-check.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode:
>     - shard-tglu-1:       NOTRUN -> [SKIP][206] ([i915#2587] / [i915#2672]) +1 other test skip
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:
>     - shard-dg2-9:        NOTRUN -> [SKIP][207] ([i915#2672] / [i915#3555]) +1 other test skip
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-dg2-9:        NOTRUN -> [SKIP][208] ([i915#2672]) +1 other test skip
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][209] ([i915#2672]) +7 other tests skip
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][210] ([i915#2672] / [i915#3555]) +1 other test skip
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][211] ([i915#2587] / [i915#2672]) +1 other test skip
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][212] ([i915#2672] / [i915#3555]) +1 other test skip
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling:
>     - shard-dg1:          [PASS][213] -> [DMESG-WARN][214] ([i915#4423]) +2 other tests dmesg-warn
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg1-16/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling.html
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg1-14/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][215] ([i915#2672] / [i915#3555]) +7 other tests skip
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt:
>     - shard-dg2-9:        NOTRUN -> [FAIL][216] ([i915#6880])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-dg2-9:        NOTRUN -> [SKIP][217] ([i915#8708]) +11 other tests skip
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:
>     - shard-dg2-9:        NOTRUN -> [SKIP][218] ([i915#5354]) +20 other tests skip
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
>     - shard-rkl:          [PASS][219] -> [DMESG-WARN][220] ([i915#12964]) +9 other tests dmesg-warn
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][221] +32 other tests skip
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render:
>     - shard-tglu-1:       NOTRUN -> [SKIP][222] +40 other tests skip
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-msflip-blt:
>     - shard-tglu:         NOTRUN -> [SKIP][223] +35 other tests skip
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
>     - shard-rkl:          NOTRUN -> [SKIP][224] ([i915#1825]) +54 other tests skip
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][225] ([i915#8708]) +3 other tests skip
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][226] ([i915#3458]) +2 other tests skip
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt:
>     - shard-dg2-9:        NOTRUN -> [SKIP][227] ([i915#3458]) +12 other tests skip
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][228] ([i915#5354]) +6 other tests skip
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-modesetfrombusy:
>     - shard-rkl:          NOTRUN -> [SKIP][229] ([i915#3023]) +38 other tests skip
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-rkl:          NOTRUN -> [SKIP][230] ([i915#12713])
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-7/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_hdr@invalid-hdr:
>     - shard-tglu:         NOTRUN -> [SKIP][231] ([i915#3555] / [i915#8228])
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-7/igt@kms_hdr@invalid-hdr.html
> 
>   * igt@kms_hdr@static-toggle-dpms:
>     - shard-dg2:          [PASS][232] -> [SKIP][233] ([i915#3555] / [i915#8228]) +2 other tests skip
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-10/igt@kms_hdr@static-toggle-dpms.html
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-4/igt@kms_hdr@static-toggle-dpms.html
>     - shard-rkl:          NOTRUN -> [SKIP][234] ([i915#3555] / [i915#8228]) +2 other tests skip
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-8/igt@kms_hdr@static-toggle-dpms.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-dg2-9:        NOTRUN -> [SKIP][235] ([i915#3555] / [i915#8228]) +1 other test skip
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_joiner@basic-force-ultra-joiner:
>     - shard-tglu:         NOTRUN -> [SKIP][236] ([i915#12394])
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-7/igt@kms_joiner@basic-force-ultra-joiner.html
>     - shard-rkl:          NOTRUN -> [SKIP][237] ([i915#12394])
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-8/igt@kms_joiner@basic-force-ultra-joiner.html
> 
>   * igt@kms_joiner@basic-max-non-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][238] ([i915#13688])
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-3/igt@kms_joiner@basic-max-non-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-big-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][239] ([i915#12388]) +1 other test skip
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-7/igt@kms_joiner@invalid-modeset-force-big-joiner.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a:
>     - shard-rkl:          [PASS][240] -> [INCOMPLETE][241] ([i915#14412]) +1 other test incomplete
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-rkl-7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html
> 
>   * igt@kms_plane_lowres@tiling-yf:
>     - shard-dg2:          NOTRUN -> [SKIP][242] ([i915#3555] / [i915#8821])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-1/igt@kms_plane_lowres@tiling-yf.html
> 
>   * igt@kms_plane_multiple@2x-tiling-x:
>     - shard-rkl:          NOTRUN -> [SKIP][243] ([i915#13958])
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-8/igt@kms_plane_multiple@2x-tiling-x.html
>     - shard-tglu:         NOTRUN -> [SKIP][244] ([i915#13958])
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-7/igt@kms_plane_multiple@2x-tiling-x.html
> 
>   * igt@kms_plane_multiple@2x-tiling-yf:
>     - shard-dg2-9:        NOTRUN -> [SKIP][245] ([i915#13958])
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_plane_multiple@2x-tiling-yf.html
> 
>   * igt@kms_plane_multiple@tiling-4:
>     - shard-rkl:          NOTRUN -> [SKIP][246] ([i915#14259])
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-7/igt@kms_plane_multiple@tiling-4.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-dg2-9:        NOTRUN -> [SKIP][247] ([i915#14259]) +1 other test skip
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-tglu-1:       NOTRUN -> [SKIP][248] ([i915#6953])
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-1/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format:
>     - shard-dg2-9:        NOTRUN -> [SKIP][249] ([i915#12247] / [i915#9423])
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-d:
>     - shard-dg2-9:        NOTRUN -> [SKIP][250] ([i915#12247]) +7 other tests skip
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-d.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-c:
>     - shard-tglu:         NOTRUN -> [SKIP][251] ([i915#12247]) +9 other tests skip
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-7/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-c.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c:
>     - shard-rkl:          NOTRUN -> [SKIP][252] ([i915#12247]) +18 other tests skip
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25:
>     - shard-dg2-9:        NOTRUN -> [SKIP][253] ([i915#12247] / [i915#6953] / [i915#9423])
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_plane_scaling@planes-downscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:
>     - shard-rkl:          NOTRUN -> [SKIP][254] ([i915#12247] / [i915#6953])
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-3/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html
> 
>   * igt@kms_pm_backlight@brightness-with-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][255] ([i915#12343])
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-7/igt@kms_pm_backlight@brightness-with-dpms.html
> 
>   * igt@kms_pm_backlight@fade-with-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][256] ([i915#5354])
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-8/igt@kms_pm_backlight@fade-with-suspend.html
> 
>   * igt@kms_pm_dc@dc3co-vpb-simulation:
>     - shard-dg2-9:        NOTRUN -> [SKIP][257] ([i915#9685]) +1 other test skip
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_pm_dc@dc5-retention-flops:
>     - shard-tglu-1:       NOTRUN -> [SKIP][258] ([i915#3828])
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-1/igt@kms_pm_dc@dc5-retention-flops.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-rkl:          NOTRUN -> [SKIP][259] ([i915#3828])
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-7/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_lpsp@screens-disabled:
>     - shard-tglu:         NOTRUN -> [SKIP][260] ([i915#8430])
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-7/igt@kms_pm_lpsp@screens-disabled.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-rkl:          NOTRUN -> [SKIP][261] ([i915#9519]) +2 other tests skip
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-3/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-non-lpsp:
>     - shard-dg2:          [PASS][262] -> [SKIP][263] ([i915#9519]) +1 other test skip
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-3/igt@kms_pm_rpm@dpms-non-lpsp.html
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-8/igt@kms_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@kms_pm_rpm@i2c:
>     - shard-dg2:          [PASS][264] -> [FAIL][265] ([i915#8717])
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-11/igt@kms_pm_rpm@i2c.html
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-2/igt@kms_pm_rpm@i2c.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-dg2-9:        NOTRUN -> [SKIP][266] ([i915#9519])
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-tglu:         NOTRUN -> [SKIP][267] ([i915#9519])
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-7/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-dg2-9:        NOTRUN -> [SKIP][268] ([i915#6524] / [i915#6805])
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_prime@d3hot:
>     - shard-dg2:          NOTRUN -> [SKIP][269] ([i915#6524] / [i915#6805])
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-1/igt@kms_prime@d3hot.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][270] ([i915#11520]) +3 other tests skip
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-7/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:
>     - shard-dg2:          NOTRUN -> [SKIP][271] ([i915#11520]) +3 other tests skip
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-1/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf:
>     - shard-dg2-9:        NOTRUN -> [SKIP][272] ([i915#11520]) +5 other tests skip
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][273] ([i915#11520]) +10 other tests skip
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-8/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area:
>     - shard-tglu-1:       NOTRUN -> [SKIP][274] ([i915#11520]) +3 other tests skip
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-1/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-dg2-9:        NOTRUN -> [SKIP][275] ([i915#9683])
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-rkl:          NOTRUN -> [SKIP][276] ([i915#9683]) +2 other tests skip
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-8/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@fbc-psr-cursor-plane-move:
>     - shard-dg2:          NOTRUN -> [SKIP][277] ([i915#1072] / [i915#9732]) +2 other tests skip
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-1/igt@kms_psr@fbc-psr-cursor-plane-move.html
> 
>   * igt@kms_psr@fbc-psr2-no-drrs:
>     - shard-tglu:         NOTRUN -> [SKIP][278] ([i915#9732]) +7 other tests skip
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-7/igt@kms_psr@fbc-psr2-no-drrs.html
> 
>   * igt@kms_psr@fbc-psr2-suspend:
>     - shard-dg2-9:        NOTRUN -> [SKIP][279] ([i915#1072] / [i915#9732]) +15 other tests skip
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_psr@fbc-psr2-suspend.html
> 
>   * igt@kms_psr@pr-cursor-mmap-gtt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][280] ([i915#9732]) +10 other tests skip
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-1/igt@kms_psr@pr-cursor-mmap-gtt.html
> 
>   * igt@kms_psr@psr-sprite-plane-move:
>     - shard-rkl:          NOTRUN -> [SKIP][281] ([i915#1072] / [i915#9732]) +29 other tests skip
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-8/igt@kms_psr@psr-sprite-plane-move.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-tglu:         NOTRUN -> [SKIP][282] ([i915#9685])
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-7/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-tglu-1:       NOTRUN -> [SKIP][283] ([i915#9685])
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
>     - shard-rkl:          NOTRUN -> [SKIP][284] ([i915#5289])
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-7/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
> 
>   * igt@kms_rotation_crc@primary-rotation-270:
>     - shard-dg2-9:        NOTRUN -> [SKIP][285] ([i915#12755])
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_rotation_crc@primary-rotation-270.html
> 
>   * igt@kms_rotation_crc@primary-rotation-90:
>     - shard-dg2:          NOTRUN -> [SKIP][286] ([i915#12755])
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-5/igt@kms_rotation_crc@primary-rotation-90.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:
>     - shard-dg2:          NOTRUN -> [SKIP][287] ([i915#5190])
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-1/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>     - shard-tglu:         NOTRUN -> [SKIP][288] ([i915#5289])
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>     - shard-tglu-1:       NOTRUN -> [SKIP][289] ([i915#5289])
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>     - shard-dg2-9:        NOTRUN -> [SKIP][290] ([i915#12755] / [i915#5190])
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
> 
>   * igt@kms_selftest@drm_framebuffer:
>     - shard-rkl:          NOTRUN -> [ABORT][291] ([i915#13179]) +1 other test abort
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-7/igt@kms_selftest@drm_framebuffer.html
> 
>   * igt@kms_setmode@basic:
>     - shard-tglu:         [PASS][292] -> [FAIL][293] ([i915#5465]) +2 other tests fail
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-tglu-3/igt@kms_setmode@basic.html
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-9/igt@kms_setmode@basic.html
>     - shard-dg2-9:        NOTRUN -> [FAIL][294] ([i915#14353] / [i915#5465])
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_setmode@basic.html
> 
>   * igt@kms_setmode@basic@pipe-a-hdmi-a-2:
>     - shard-dg2-9:        NOTRUN -> [FAIL][295] ([i915#14353])
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_setmode@basic@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_setmode@basic@pipe-b-hdmi-a-2:
>     - shard-dg2-9:        NOTRUN -> [FAIL][296] ([i915#5465])
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_setmode@basic@pipe-b-hdmi-a-2.html
>     - shard-rkl:          [PASS][297] -> [FAIL][298] ([i915#5465]) +2 other tests fail
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-rkl-8/igt@kms_setmode@basic@pipe-b-hdmi-a-2.html
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-6/igt@kms_setmode@basic@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_setmode@invalid-clone-single-crtc-stealing:
>     - shard-tglu-1:       NOTRUN -> [SKIP][299] ([i915#3555]) +2 other tests skip
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-1/igt@kms_setmode@invalid-clone-single-crtc-stealing.html
> 
>   * igt@kms_vblank@ts-continuation-modeset-rpm@pipe-b-vga-1:
>     - shard-snb:          NOTRUN -> [SKIP][300] +1 other test skip
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-snb6/igt@kms_vblank@ts-continuation-modeset-rpm@pipe-b-vga-1.html
> 
>   * igt@kms_vrr@seamless-rr-switch-drrs:
>     - shard-rkl:          NOTRUN -> [SKIP][301] ([i915#9906]) +1 other test skip
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-3/igt@kms_vrr@seamless-rr-switch-drrs.html
> 
>   * igt@kms_vrr@seamless-rr-switch-virtual:
>     - shard-tglu-1:       NOTRUN -> [SKIP][302] ([i915#9906])
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-1/igt@kms_vrr@seamless-rr-switch-virtual.html
> 
>   * igt@kms_vrr@seamless-rr-switch-vrr:
>     - shard-dg2-9:        NOTRUN -> [SKIP][303] ([i915#9906])
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_vrr@seamless-rr-switch-vrr.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-tglu:         NOTRUN -> [SKIP][304] ([i915#2437])
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-7/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-dg2-9:        NOTRUN -> [SKIP][305] ([i915#2437] / [i915#9412])
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf@per-context-mode-unprivileged:
>     - shard-rkl:          NOTRUN -> [SKIP][306] ([i915#2435])
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-8/igt@perf@per-context-mode-unprivileged.html
> 
>   * igt@perf@polling@0-rcs0:
>     - shard-mtlp:         [PASS][307] -> [FAIL][308] ([i915#10538]) +1 other test fail
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-mtlp-6/igt@perf@polling@0-rcs0.html
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-mtlp-2/igt@perf@polling@0-rcs0.html
> 
>   * igt@perf_pmu@all-busy-idle-check-all:
>     - shard-dg2:          NOTRUN -> [FAIL][309] ([i915#11943])
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-5/igt@perf_pmu@all-busy-idle-check-all.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-rkl:          NOTRUN -> [FAIL][310] ([i915#14433])
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-8/igt@perf_pmu@module-unload.html
> 
>   * igt@perf_pmu@most-busy-idle-check-all@rcs0:
>     - shard-rkl:          [PASS][311] -> [FAIL][312] ([i915#4349]) +1 other test fail
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-rkl-8/igt@perf_pmu@most-busy-idle-check-all@rcs0.html
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-5/igt@perf_pmu@most-busy-idle-check-all@rcs0.html
> 
>   * igt@perf_pmu@rc6@other-idle-gt0:
>     - shard-rkl:          NOTRUN -> [SKIP][313] ([i915#8516]) +1 other test skip
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-8/igt@perf_pmu@rc6@other-idle-gt0.html
> 
>   * igt@prime_vgem@basic-gtt:
>     - shard-dg2-9:        NOTRUN -> [SKIP][314] ([i915#3708] / [i915#4077])
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@prime_vgem@basic-gtt.html
> 
>   * igt@prime_vgem@basic-write:
>     - shard-dg2-9:        NOTRUN -> [SKIP][315] ([i915#3291] / [i915#3708]) +1 other test skip
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@prime_vgem@basic-write.html
> 
>   * igt@prime_vgem@fence-read-hang:
>     - shard-dg2-9:        NOTRUN -> [SKIP][316] ([i915#3708]) +1 other test skip
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-9/igt@prime_vgem@fence-read-hang.html
> 
>   * igt@prime_vgem@fence-write-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][317] ([i915#3708])
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-5/igt@prime_vgem@fence-write-hang.html
>     - shard-rkl:          NOTRUN -> [SKIP][318] ([i915#3708])
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-8/igt@prime_vgem@fence-write-hang.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-off:
>     - shard-rkl:          NOTRUN -> [SKIP][319] ([i915#9917])
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-7/igt@sriov_basic@enable-vfs-autoprobe-off.html
> 
>   * igt@sysfs_heartbeat_interval@nopreempt:
>     - shard-mtlp:         [PASS][320] -> [ABORT][321] ([i915#13723]) +1 other test abort
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-mtlp-2/igt@sysfs_heartbeat_interval@nopreempt.html
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-mtlp-4/igt@sysfs_heartbeat_interval@nopreempt.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_pxp@fail-invalid-protected-context:
>     - shard-rkl:          [TIMEOUT][322] ([i915#12964]) -> [PASS][323]
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-rkl-4/igt@gem_pxp@fail-invalid-protected-context.html
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-8/igt@gem_pxp@fail-invalid-protected-context.html
> 
>   * igt@i915_pm_freq_api@freq-suspend@gt0:
>     - shard-dg2:          [INCOMPLETE][324] ([i915#12455] / [i915#13820]) -> [PASS][325] +1 other test pass
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-5/igt@i915_pm_freq_api@freq-suspend@gt0.html
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-10/igt@i915_pm_freq_api@freq-suspend@gt0.html
> 
>   * igt@kms_cursor_crc@cursor-suspend:
>     - shard-dg2:          [INCOMPLETE][326] ([i915#12358] / [i915#14152] / [i915#7882]) -> [PASS][327]
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-4/igt@kms_cursor_crc@cursor-suspend.html
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-5/igt@kms_cursor_crc@cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
>     - shard-rkl:          [FAIL][328] ([i915#2346]) -> [PASS][329]
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-rkl-7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-3/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
> 
>   * igt@kms_dp_linktrain_fallback@dp-fallback:
>     - shard-dg2:          [SKIP][330] ([i915#13707]) -> [PASS][331]
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-1/igt@kms_dp_linktrain_fallback@dp-fallback.html
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-11/igt@kms_dp_linktrain_fallback@dp-fallback.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-rkl:          [INCOMPLETE][332] ([i915#9878]) -> [PASS][333]
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-rkl-3/igt@kms_fbcon_fbt@fbc-suspend.html
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-7/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-vga1:
>     - shard-snb:          [FAIL][334] ([i915#13734]) -> [PASS][335] +4 other tests pass
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-snb5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-vga1.html
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-snb5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-vga1.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a4:
>     - shard-dg1:          [FAIL][336] ([i915#13734]) -> [PASS][337] +1 other test pass
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg1-16/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a4.html
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg1-14/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a4.html
> 
>   * igt@kms_flip@wf_vblank-ts-check:
>     - shard-tglu:         [FAIL][338] ([i915#11832] / [i915#13734]) -> [PASS][339]
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-tglu-5/igt@kms_flip@wf_vblank-ts-check.html
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-2/igt@kms_flip@wf_vblank-ts-check.html
> 
>   * igt@kms_flip@wf_vblank-ts-check@d-hdmi-a1:
>     - shard-tglu:         [FAIL][340] ([i915#13734]) -> [PASS][341] +3 other tests pass
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-tglu-5/igt@kms_flip@wf_vblank-ts-check@d-hdmi-a1.html
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-2/igt@kms_flip@wf_vblank-ts-check@d-hdmi-a1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
>     - shard-dg2:          [FAIL][342] ([i915#6880]) -> [PASS][343]
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:
>     - shard-rkl:          [DMESG-WARN][344] ([i915#12964]) -> [PASS][345] +4 other tests pass
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
>     - shard-snb:          [SKIP][346] -> [PASS][347] +1 other test pass
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-dg2:          [SKIP][348] ([i915#3555] / [i915#8228]) -> [PASS][349] +1 other test pass
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-2/igt@kms_hdr@invalid-metadata-sizes.html
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-10/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_joiner@invalid-modeset-force-big-joiner:
>     - shard-dg2:          [SKIP][350] ([i915#12388]) -> [PASS][351]
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-1/igt@kms_joiner@invalid-modeset-force-big-joiner.html
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-11/igt@kms_joiner@invalid-modeset-force-big-joiner.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-rkl:          [SKIP][352] ([i915#9519]) -> [PASS][353] +1 other test pass
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-rkl-4/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-8/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@i2c:
>     - shard-dg1:          [DMESG-WARN][354] ([i915#4423]) -> [PASS][355] +3 other tests pass
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg1-15/igt@kms_pm_rpm@i2c.html
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg1-18/igt@kms_pm_rpm@i2c.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-dg2:          [SKIP][356] ([i915#9519]) -> [PASS][357] +2 other tests pass
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-6/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-3:
>     - shard-dg2:          [FAIL][358] ([i915#9196]) -> [PASS][359] +2 other tests pass
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-6/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-3.html
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-2/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-3.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-tglu:         [INCOMPLETE][360] ([i915#4817]) -> [INCOMPLETE][361] ([i915#4817] / [i915#7443])
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-tglu-8/igt@i915_suspend@basic-s3-without-i915.html
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-tglu-4/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs:
>     - shard-dg1:          [SKIP][362] ([i915#6095]) -> [SKIP][363] ([i915#4423] / [i915#6095]) +1 other test skip
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg1-16/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs.html
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg1-14/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          [SKIP][364] ([i915#6095]) -> [SKIP][365] ([i915#14098] / [i915#6095]) +9 other tests skip
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2.html
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
>     - shard-dg1:          [SKIP][366] ([i915#12805]) -> [SKIP][367] ([i915#12805] / [i915#4423])
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg1-14/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg1-18/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-dg2:          [FAIL][368] ([i915#7173]) -> [SKIP][369] ([i915#7118] / [i915#9424])
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-11/igt@kms_content_protection@atomic-dpms.html
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-2/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-dg2:          [SKIP][370] ([i915#7118] / [i915#9424]) -> [FAIL][371] ([i915#7173])
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-1/igt@kms_content_protection@legacy.html
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-11/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-dg2:          [SKIP][372] ([i915#7118]) -> [FAIL][373] ([i915#7173])
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-2/igt@kms_content_protection@srm.html
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-10/igt@kms_content_protection@srm.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-dg2:          [SKIP][374] ([i915#7118] / [i915#7162] / [i915#9424]) -> [SKIP][375] ([i915#7118] / [i915#9424])
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-11/igt@kms_content_protection@type1.html
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-6/igt@kms_content_protection@type1.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-dg2:          [FAIL][376] ([i915#1339] / [i915#7173]) -> [SKIP][377] ([i915#7118] / [i915#9424])
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-10/igt@kms_content_protection@uevent.html
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-7/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc:
>     - shard-dg1:          [SKIP][378] ([i915#8708]) -> [SKIP][379] ([i915#4423] / [i915#8708]) +1 other test skip
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt:
>     - shard-dg1:          [SKIP][380] ([i915#3458] / [i915#4423]) -> [SKIP][381] ([i915#3458])
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:
>     - shard-dg2:          [SKIP][382] ([i915#3458]) -> [SKIP][383] ([i915#10433] / [i915#3458]) +1 other test skip
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
>     - shard-dg2:          [SKIP][384] ([i915#10433] / [i915#3458]) -> [SKIP][385] ([i915#3458]) +1 other test skip
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16684/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
> 
>   
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10538
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11527
>   [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
>   [i915#11713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11713
>   [i915#11832]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11832
>   [i915#11943]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11943
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
>   [i915#12358]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12358
>   [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
>   [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
>   [i915#12394]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394
>   [i915#12455]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12455
>   [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
>   [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
>   [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
>   [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
>   [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
>   [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
>   [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#1339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1339
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13665]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13665
>   [i915#13688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688
>   [i915#13691]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
>   [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
>   [i915#13723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13723
>   [i915#13734]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13734
>   [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
>   [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
>   [i915#13781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781
>   [i915#13783]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783
>   [i915#13790]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13790
>   [i915#13820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13820
>   [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
>   [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
>   [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
>   [i915#14118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118
>   [i915#14152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14152
>   [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
>   [i915#14353]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14353
>   [i915#14412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14412
>   [i915#14433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14433
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
>   [i915#2435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4881]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4881
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5465]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5465
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
>   [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7162]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7162
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7276
>   [i915#7443]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7443
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7882]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7882
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
>   [i915#8717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8717
>   [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
>   [i915#8821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8821
>   [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9878]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9878
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_16684 -> Patchwork_150033v2
> 
>   CI-20190529: 20190529
>   CI_DRM_16684: 6989c5689c982c207b57b8634d117f6dfdd5e698 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8404: dad4b2bb9e5a2c87ae0275efbf9f0df00a67ef46 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_150033v2: 6989c5689c982c207b57b8634d117f6dfdd5e698 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v2/index.html
