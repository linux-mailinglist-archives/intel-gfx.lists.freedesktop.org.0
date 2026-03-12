Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AOqWHzzDsmmvPAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 14:44:28 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4BC9272D18
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 14:44:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28E9910E9FD;
	Thu, 12 Mar 2026 13:44:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dmrk2Kf2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5720310E9FD;
 Thu, 12 Mar 2026 13:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773323063; x=1804859063;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0ystCewz8n8hRuQmPFmFJAPYbQpBWd+H3YoX6LdZ4lU=;
 b=Dmrk2Kf2V/aXCVvsqNRTJRNnSuW8OsfUw6kBxrLazXN3N2w0JdP7nT/m
 ZIlHSPIGtDsZsHwvfo2K2oIIs+2qwuliI4imWCej2/PCDk4Lw11T0WwoR
 ctGjkFBU1NivliF2sdaLRvlY1erhS279iYR6ZnB+2k6fIzYQK50moghdq
 H0TqPp8bJQy/AokLxQ76bTWUhewQPqsawg21rmLtAGL/70qWX0JVDzcn0
 JdvZlM2ZR+ui/E8jOzKXpbYCSP7EjEbd0Nskdns1Kz7nGdjaLoxXql6Te
 VYKBHocKDU3aMqoaY4EF+GNE6LKCeNiJE8nhwdSCS4fcsPeWD2TjOM/Wn g==;
X-CSE-ConnectionGUID: vgwYft2wQqSWWJkPD1IhCA==
X-CSE-MsgGUID: AdltqHArSrWAjFU5hREjZg==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="74455217"
X-IronPort-AV: E=Sophos;i="6.23,116,1770624000"; d="scan'208";a="74455217"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 06:44:22 -0700
X-CSE-ConnectionGUID: U5KUGoHzQw2MHO955p1ASQ==
X-CSE-MsgGUID: jdMBE581QFW/wwDF13+ulg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,116,1770624000"; d="scan'208";a="216942611"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 06:44:21 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 06:44:20 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 12 Mar 2026 06:44:20 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.16) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 06:44:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JvR6b8l9CW+6jk1/oeqd8ffGo9jQb4e5LfTehsmmAADcBxgLUUEQGbnPs32zgE7bk6NplvGTK4ikvgbnvuBk4X4RAxpli1cgAq19bJ/Sm74Irusnm3zrrbxckOpyTWhTtUNhQv8u+WlLRUD3PRou+nT0POIUD6w6WJmLvPAoKL6VzNmmAyoJ32FA/eyHfNjESfqzkrl6598uZCK6zJp5s7nHwwqKfvgzu75SqrNx6pepvZSZf7xzTjixbxJAFum+ZC1vL/3DyQ4PsOAwS80WS5vrZ9fmgA+KlRoxl+hlCD1Pbiup5Ac/qF6xOnLp1zYoWdBJug+oELXnfY4xz/08lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6BBANnbuf4oWdLp4fU6NcuralIVi7eMefTn6JOIMLxw=;
 b=OZ6bXqMuitC7EjEgl2vGM5TZdgKGBWrCJEkOfU1ZKNF4tB10uP7h27WOxpYa842+u0rf/2wjAbJ0k1gRXqIFs0izLQVQ06WBtRw2rWNmA1dxaSbhmhNMQXfN4nQ4LMa/dY3CWM0URqBh92MFKHsavtp7s2RYFqIHxuQMqt2J7HkPnM5/1fM0G1G9xPpNkVdNWvydG3H3h6rET/eHh1ZwGXfj7pMBIB3vqgrwdnFwSe3sCRzrCfb6fWIoweVl7PsbNoSojeXVVqUZHOUx6t4xPZK53IS2PlvBxH6Fljldd8hhbE/CkzMFbKNtjVbACTJA4fH+nGLC9dvmUbK8fo7E5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by CY5PR11MB6187.namprd11.prod.outlook.com (2603:10b6:930:25::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.3; Thu, 12 Mar
 2026 13:44:18 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%6]) with mapi id 15.20.9723.000; Thu, 12 Mar 2026
 13:44:17 +0000
Message-ID: <c84d549e-cbd0-442c-b57d-9ac84eb8c10e@intel.com>
Date: Thu, 12 Mar 2026 19:14:09 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/2] drm/i915/dmc: Update PIPEDMC interrupt mask/
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>, <uma.shankar@intel.com>,
 <swati2.sharma@intel.com>, <suraj.kandpal@intel.com>
References: <20260312132654.2614433-1-dibin.moolakadan.subrahmanian@intel.com>
Content-Language: en-US
In-Reply-To: <20260312132654.2614433-1-dibin.moolakadan.subrahmanian@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0108.namprd04.prod.outlook.com
 (2603:10b6:303:83::23) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|CY5PR11MB6187:EE_
X-MS-Office365-Filtering-Correlation-Id: 49474f66-383e-4ab0-cfdf-08de803d7498
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|22082099003|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: O8K8H/JsfVWMDGggcK4dDXPmhh7yqOltUkCGI/kFFC7Fk76ietR9DpwtgO7eshB7lXCFPmh35MgECwCOBirrtP5HcPi4/9eacT0jS1VEwD99kxjzAE7uNG80tKswgcdNLNyavHHshRpMQKdh7HqoXZ1rp2olCsqjpYPM/BXvt+NFlgQ38YDPBJAgMJB40Nv6Y1BWF2tuy1zVeWb5hxEK2LYtck8YZYNgYGCwDUriNNxVfZflM0J2deHu7B1+30VTgTfjplFE86tTED7uRUNomtcqo7tuNhqnRYV9/FC9kHE7cTxwwREARt/rY6/fExXjjJ1BlgfbMO1VGRZcNfzamSKYRwTIXlaFT+bj8+56EsvF2UT5faND8e2bKqrnB1XF0cAN1CWpKyw8YXZscMAkEmtqqqgnPgYlF+VOnWm3oe0ZBRMIqxlTeSvHOGnKYGo3rKy/F322nfsuOLySNsBcdlKxCyYdCAV+IoooewSjAPk9zXeEbv2CAtF4qoJ9WC2UNQ6yzRc/10BoBi/fRlkeGAE6BbP5Ehs0YSu2nOgQk7XsrH4NsiAjJD5nOm+7guAmTZrBOBtypD+FcLO0kfZ13drbONlA6c1PTw4mijTER53pnAL5EUU1DsIq/zUQZiUuDli2FZKVjDsFaPJ4XDebK3zBxJs/zpBggnQBShFyPtRFEUji+14Y2iOa9bfuZLXPybQPsn83IFh7zK1g4eGOuCmf7rlCqQIC1q4+Ks90aN0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b0w1S1E2bFVXZ2E4MzRaVyttcU9Pc29IMlJtV3NFcmI4bVEwY0x3YjhKODVQ?=
 =?utf-8?B?MDUzR3NyL2JvK0tDQ04xZkIxTEZpUTU5aFlwbU5ub3lFRGVvcytCZTYyL1VP?=
 =?utf-8?B?cHZWVUVNdXRXaTB4QXgrWng0WFpXbllQR3V0N2pEV1dNTWlYUS85RnhtaGNo?=
 =?utf-8?B?blhCbDR2MkVQaHgxNS9kaFNNSzI2bytDVTdibGxLb3BXRDdOMVBBemVZdjVH?=
 =?utf-8?B?dThkNDI5Z0k2Y1RXdE4zeE0zNjFQOEkvTmZmMjlTTThaRXlTcC90ejVLaGZC?=
 =?utf-8?B?bFZ6ZHByMXlZK3NUTGlYVDhLN3hOL1JDclVRNUJWNGgwU3g3RlZ5NDQ0WEZO?=
 =?utf-8?B?MXJXSnRxRVZjSDN4c1ZmbXF5eVJkc1NSR3M2R2haM3FSTGswclBEUm5mUGlq?=
 =?utf-8?B?akJ5dzE1eXRSeDZBWjdtb3BJckVNTFpXT1RJTER6MWQwOEJ4V05DWk1lUC82?=
 =?utf-8?B?NmhEcXF3VlhZcERyemQvWGZzWUFpdUNCNms1c2dqQjBMNWxJMUZmd1V1N2ZK?=
 =?utf-8?B?TGw3ZFhhOHN2dDUzaEhoTjIrcElxcDFPSWxXVDRlZ3F3M2xmRE1wSXB0M0cw?=
 =?utf-8?B?L2tPMVdNdTlvSXVGTzhyQXZGY2NEaVF6VllSaDRtUEp5TUhJUCtFUCtVb0RL?=
 =?utf-8?B?YW1ybUE2V3U1NDRCQlZVZDhFMUlod20wclJKbmNIZEYzODFDOHM4WkJ0cnp4?=
 =?utf-8?B?RnMyczVNTkVNYjNFK2xSK0l0NGpKcm4va0Jpa25LYVo2bGgxK2FVOHFpNm9B?=
 =?utf-8?B?NjludHh0MTc1UUVCS2t1VUorUlg2Ymh1bGdxMzZGc0JNMXBVM1hibHFYTm5w?=
 =?utf-8?B?LzZ4dUFib1FmZEgrNEJuVnptN1hESmJXYlJiU2dXakMrU21oNm5LRUhYMUJY?=
 =?utf-8?B?Qk13T2FVNStqWEFScy9uMFA2TlNLOWFWWGQwSDN1L1hTaXF2SXR4UFAvRHBj?=
 =?utf-8?B?dmZzV1NhSVkxSW0wRjRUdXN2K1dUR21neml4djVORHhwdUFxa0ZySWdVdWxn?=
 =?utf-8?B?U0hlMHJqME1DaGpIa1VjV2RBTFg1ODIyczNua0p5bGd6bUlHWTJmTWNIUGtS?=
 =?utf-8?B?ZnVlZ2RyTlI1eEMyRG4xRFA1Z2N4RDczeWdKblE0d3NqN2FNdFEvbnNBaFZn?=
 =?utf-8?B?NWg3SU5rYnVQY2R4VDQzamlCZ0NnMXF6ZFFJS3VvbVR6TVhCckRuOXBWRGlI?=
 =?utf-8?B?dlNNUlRNMUVNM05LSVJBUDI1bmNzbkttVnBySEdPT2ROQ2h1ZjFZVWdobVk4?=
 =?utf-8?B?UnhSeVVmakozMjZJdUVzV3JMR2R5dTFWSE55Vzd1aFNMUEFwQVI5SjI4b1ZV?=
 =?utf-8?B?VG1CYnBtMkgxajAzT2tCMVpTYTR4TGFjZWsrWHpJNHQ0N0wyTmlQNE9pMzJE?=
 =?utf-8?B?VW0xdXdyZ1g0S3drN29YY25BTFdrMXVkK1hEeGcrMW1Fa2Vzd2FYYkhsbmpt?=
 =?utf-8?B?dFBVYUFZdW83RGZaOWxZdHBCd040VWc5MndlWi93cTdUL0srSXpzT094VmRW?=
 =?utf-8?B?a09mUFVybzhIN1RTT0N1MXNHMlRUblZYUHZvYzR4M0x0K3FVZTlsczNoeUpi?=
 =?utf-8?B?S2FHcmlUSCs3MWM3MFdkZS9RUkIwV2NCdkQxc21lRVpqcUpSSnAxVzE3Qi8w?=
 =?utf-8?B?SnFXNE1ZUXlpWUdLamRnZnVnWklQYncxK2NSY0w2dkVtZlRST05YZndMOTU5?=
 =?utf-8?B?TmJnQ0t6ak9LTjFWcjl0U3RQQUEzTWVpMjF5Y1ZhcmVzcjlZYnVUTjF0V0Zk?=
 =?utf-8?B?Qno3bjVudzR4ZXhBL2JaS29Xdk1DV0xFVlFDU3BrNU96OWJyaUVoMHZXdjlj?=
 =?utf-8?B?VEd1ZERNQkdOL29XNnBtTXI4d2dQYXRkclhYY1hoa3BBd1hDenRMbVBsUHVj?=
 =?utf-8?B?RHdVQ2c2VzR1OVBRWEdubjR2VVMwbkZHeVlVWUlPeER5N09HblhtTmV4TmZI?=
 =?utf-8?B?SkhBRllCWVZkQnFaU29KS3lRNXFkbDRoVmpGcDIwRTVyekhqR0Q5TFNhVm1q?=
 =?utf-8?B?L2tJUzNrSXVGcFNNdmJIZ0lDbElFcEdOTENGcmRBSUIwSHNNc2Q2V3M4M1E0?=
 =?utf-8?B?SkhzUWt6aGkyTDVCL3I5bk5Ib0pyUXlaK3ZqQkZhSGF1OUxCdFVMcUI3dXJD?=
 =?utf-8?B?SnJtZitpQlc1VUFueFgvMVZUVktYSVVTYUd4VFFFYUR5Z0xuekh4TkVZMVRS?=
 =?utf-8?B?T1djSFQ2M2Q1MCtjUEZIWnk3cTBHNEFKMm85WG54TzBhcVpGRkdKVjQ1RGFk?=
 =?utf-8?B?R01pYWsrM1RhRmxpeFI2OER3WnBkckZHM3ZTamt5MDM0ZThEbFZLTDlSLzRT?=
 =?utf-8?B?aUFmd1YxWUl1dllpMndBS3JHL0xoUUZlTXh3K2M3bHAvSTJvamtjZnpnWDJk?=
 =?utf-8?Q?BXxCjccyyrnay00zfnjdUjazKR4ueqXRHfnCPpVzYt705?=
X-MS-Exchange-AntiSpam-MessageData-1: AN/yujFXGoOz1g==
X-Exchange-RoutingPolicyChecked: V5KhQu5xGC2GCKeksCW8tIsZcafgprWUu8aACHiok+XWPL8FWNprk7UobMUz95vQC6FeUbgbddaZgvIpqc6xAUkgruadaqRXQtJhptkjMSnAtPqAJnXajMKiXdnND7FyIhp5V203NTuToiO6m6EIxxWrFf6wevPzXOl2UaBE9WjXCDAzBqzo/mqcRsuBRgVGTvXPq7Hh7BvxSAQyr1xHSWgJYJaYmCF2VyStkQTXWsesFPlqK7Fzu3CsszK2if3OLzutSDZVxbOCe8yy0Q67Jk2437PNsMBh3vfSYMszTjZA3Isi1+n/DydTXrs24uxXP0Ni+NaN9w9PH0aiU2XDuw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 49474f66-383e-4ab0-cfdf-08de803d7498
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2026 13:44:17.2633 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uRUdkjpfjP2+w+SbdSTS94i7R9OUOduIeME4yo3mBq4zMESlm8NO04reKiV/EPYQSXe4QRwo37BuRtGMOtIhe2jBfYwE37RW63YQSUG5t+sxLzy/2zI/L3UjO5YnubKq
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6187
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:mid];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: E4BC9272D18
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

Please ignore this series. The cover letter was incorrect.
I will resend the patches in the correct series.

Regards,
Dibin

On 12-03-2026 18:56, Dibin Moolakadan Subrahmanian wrote:
> On display version 35+ the PIPEDMC_ATS_FAULT and
> PIPEDMC_GTT_FAULT interrupt bits are no longer defined.
> Update the interrupt mask accordingly and enable the
> PIPEDMC_ERROR interrupt.
>
> Changes in v2:
> - Move PIPEDMC_ERROR interrupt enable to a separate patch (Ville Syrjala)
> Changes in v3:
> - Add Bspec reference (Suraj Kandpal)
>
> Dibin Moolakadan Subrahmanian (2):
>    drm/i915/dmc: Remove invalid PIPEDMC interrupt bits
>    drm/i915/dmc: Enable PIPEDMC_ERROR interrupt
>
>   drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++++
>   1 file changed, 4 insertions(+)
>
