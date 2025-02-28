Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EEA8A49F44
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 17:49:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7610F10ED0D;
	Fri, 28 Feb 2025 16:49:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g/jmuaMB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 040AB10ED0B;
 Fri, 28 Feb 2025 16:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740761356; x=1772297356;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=et/dHPtrwHIcJ9C5V7JnglFV62aR8rwydjTci1Ykg7M=;
 b=g/jmuaMBvXa0az44E+3bQzEMYRjqK/ZQLTyJSVcViYmEBvz7Z7PS6O89
 DCDAtA6Jjl+4MRorYlJ2FrK3P4BINobJop5/FlXLTpy5e7qkPNNgZgRUe
 nXudXXqy14/HgOZ4emCYQP2maia4tI9MuRBBOX7Wa3u+TVhMm8pTNOEt4
 8vcCTDtWePh+X4n/yZRYHe8BoK29N05xGwj2L9mUrDddTNuE76pVP/MSE
 7uXsuhvkZrDPG2JCkmv1bViTBQtUaCbRCeBbFgi9307cUK4g3jDw+Ifng
 hJeYW4gAK/tXoyl3I3RPRcqDTHiEANnCJeSJcbkzZaIptBgG8kVY8KKUh Q==;
X-CSE-ConnectionGUID: H8uhFho7QuuStA/V88+10A==
X-CSE-MsgGUID: ubEO1cdcTqixyJUVA4tpvA==
X-IronPort-AV: E=McAfee;i="6700,10204,11359"; a="41397903"
X-IronPort-AV: E=Sophos;i="6.13,322,1732608000"; d="scan'208";a="41397903"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 08:49:14 -0800
X-CSE-ConnectionGUID: 2SKh9Tk+QOWPYsmnydqu5g==
X-CSE-MsgGUID: poulBVCBRA62hjenpHi5mA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,322,1732608000"; d="scan'208";a="117569525"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 08:49:13 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Fri, 28 Feb 2025 08:49:13 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 28 Feb 2025 08:49:13 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 28 Feb 2025 08:49:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fgOzIHFsNpi10i5BaGGmNKkcOaJ85gseFAist9+xrhED9n3wcqHmgt0jcKn+TPN+QdUzKf28f9wF/HbsKKWhjNLB0SUWawCNRCA/DvoqD3Mhs7HrMFDeZofvY1LqKqINcmWCPUttRy72ieHJ3FgXI3rd+O10PMDFeHhqg+2RE86zfHhuIWnyluO9SP1CHVnE5heWOqHOth6qdbWc97xuytMv4jbOFd3QQiJpGz4hNT/U3l4UaRip5bg+5Dq0omRYmAgqkGTblqjbVXZECkxNxFlwMeMzZY3uoSgetcfwW2Ort/MuqvGqGTPpGIRKRMUtAbaWgO8vZabAE/MSgNG08w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=17XA+NQPlh+y2xjhzeI7prfpCmdB+L6SkGXhdS0uC+c=;
 b=KUd+pDWMH9ghoqaYs4vHxqGtEPLWpLPnQT21FIL6XumH+ufXHsMYYV4BnB10zf+7msx6y9C4VR+OsGtWMtjG9quxIpgqC8d5J7/Hmthy/gq3Sbd9GIiUhCAourqnwR7t2PANeQGyTpVRYLQ74MmxLLtt5JaW9EM3U6BeYjH67fDs08OhgYz/M0LDCFoYD7AITu3eYUFIXsX+ab5ELBlHghwHFrRNrKG9CEWhPWC0BmOXb4AZ+1NC+lypCijtL/hO0BbDiVU0/I+qisxpcw3VuTt37YTaxxWNWQdP1VBtq38W7AO+mjXC/ucmpPNXWCi7WXEBUQHwvjSTuFoHkf9gng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB8280.namprd11.prod.outlook.com (2603:10b6:806:25d::21)
 by SA1PR11MB6808.namprd11.prod.outlook.com (2603:10b6:806:24f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.26; Fri, 28 Feb
 2025 16:48:29 +0000
Received: from SA1PR11MB8280.namprd11.prod.outlook.com
 ([fe80::13a:4240:8d73:3c88]) by SA1PR11MB8280.namprd11.prod.outlook.com
 ([fe80::13a:4240:8d73:3c88%4]) with mapi id 15.20.8489.021; Fri, 28 Feb 2025
 16:48:29 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250227-improve-type-safey-power-domain-macros-v3-0-b6eaa00f9c33@intel.com>
References: <20250227-improve-type-safey-power-domain-macros-v3-0-b6eaa00f9c33@intel.com>
Subject: Re: [PATCH v3 0/2] Improve type-safety on POWER_DOMAIN_*() macros
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Jani
 Nikula" <jani.nikula@intel.com>, kernel test robot <lkp@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Fri, 28 Feb 2025 13:48:25 -0300
Message-ID: <174076130513.17587.2926163121650486100@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0013.namprd03.prod.outlook.com
 (2603:10b6:303:8f::18) To SA1PR11MB8280.namprd11.prod.outlook.com
 (2603:10b6:806:25d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB8280:EE_|SA1PR11MB6808:EE_
X-MS-Office365-Filtering-Correlation-Id: 2990d1ab-3787-4ba8-1cc5-08dd5817ba5d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|366016|376014|16122699012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VUgwWnJ1My9TYkFtUTZQcHlPcjNKNnEvNzJpRVcvVEN6Q2Z0K29DQmFnOG5I?=
 =?utf-8?B?RDIyb2NsY3NkNEtPcGxvZmQ5NUtGR3RGUjJqdlpkOWhGTHpBdG1RdlNSa1hV?=
 =?utf-8?B?NE12aS9pMW9ad2F6cDR1ZVlRR1FHdjVYUXFiYjFGQnFFSnNuTzY4OTVKZDVj?=
 =?utf-8?B?TFZWN0tVYUJadDZ2azRHdncyTTluQ3IwRWVOaElDOUFJTHAvRmlBK1VXK3Iv?=
 =?utf-8?B?MFdJS01kU216R09GWXVwbkMzZ0owMGpsM01DaS9UVU00cmR1UmtPVkwwUmww?=
 =?utf-8?B?ZnlPUTBPbk14YjRJSTQ4R1RJTjZHa3QwOEJ4MjlZQ2pDZDkrQUpyMCtGNHpX?=
 =?utf-8?B?dlV5WURXNDh1ZE8xT1cxZnJvZHdmb1lKSE5aTENWOHhmaHUrREl3elZ6eDRI?=
 =?utf-8?B?cTVIYVpadEZ2VnkzTUtwREthZFMrVVNERkZ3Y3NxYVg5V0JQRk4xK0hIY3BB?=
 =?utf-8?B?cmFXNlBBcE5lL1p4WUJmMzFSVjJLSnl4cTg3cEVzdFlCZkJVTUhxZkFOZ2Uw?=
 =?utf-8?B?NFBpb0Z0T3NiWm0zRUtydWZoWlpBTVlVUGhyamtiMVRocUpvazBEaFhldk00?=
 =?utf-8?B?WnJhekRFS2hhNmdoRWdIcFA2QXJ5QkhZN3V0cEM3VVRjNmJpajg5Sk9OazRP?=
 =?utf-8?B?SUxsWjZUUlAyOUxGTlN5Q2RzMTdsclE0U280bTdtOHVpQnVhRXM1ZzhhanEw?=
 =?utf-8?B?SzhKVkR5UFI1SDQ5cVNia0g0dTA5VUpyc2NzTThpS1FmRmJCZ2dyQnljcm83?=
 =?utf-8?B?K0xCek9kTGRpYUlza3FmdzVzMkRLTXJsaVhleXZEMUY3NzNvU2pOcVFXRXVI?=
 =?utf-8?B?OEVHQlczU0lTbkRaVzlmVVJNN3dhYWs1bkp0bGFzMUE2UWxUbG9iRzFYaXM3?=
 =?utf-8?B?TjdUVEdST0U3WUdZSHp6Vy9XY3d1MGN2bm9GeHg4cjlSMEFPak9JRTNnUEpT?=
 =?utf-8?B?aVdzc3N5TDNCeFhBVlc4K2hKOGhERE91STJoa0dqa0liRERzU2E2VGhmMHJF?=
 =?utf-8?B?cnI0T1FUZ1FoMVdFTGEvOFovcXVmOUtqZjhnV1pRRzJlcWhkRE1kMEM2bkxZ?=
 =?utf-8?B?TzJGWVlpU2hOdUpYNFhUN3BTUWsxbERRSzdoRVdsQzVObFdySXZWRnZZOUl1?=
 =?utf-8?B?WjIvMzVyMTJ3OXlwNDZMZFhMaGlMM1dRQjRXR1R5OFA5bWRqL1g3VlQ3RUxu?=
 =?utf-8?B?cGcvYWkyU0VkZndaSnFPU3NHT0d0L0RvUFA5ekoyWGZTRzRBNm5HcXd5VzE1?=
 =?utf-8?B?dm4vRHNMWFRnbnBxZDZ4VGt2d3VPdFhuVnVDTzdDNFVFV1R4cEp3NW9oRkdt?=
 =?utf-8?B?YjNoUllvQlZoTHRlVC9CT2syVktUbndKUEkybmVKdWI1bmNrZnV0Tzk0engw?=
 =?utf-8?B?VXFlTHlpaG5kWXFHbHdFWEhEK1E3NkZpQk9CdnVqcHZ1NUdkczZzMThzaFQ5?=
 =?utf-8?B?QTlFeXRZbnFha3NETXFJTm5RYWpMelBDZytmbzJ6WEtSdDQ2NjlkbW90RmlS?=
 =?utf-8?B?dCt2SDBId2pBeVhTOWlFdHBUVXAyMVJ2WWVNb1Z3U0tZaFpDakZ2djBZaVlo?=
 =?utf-8?B?aWhxK3hNTVhvem0rUUZYS1dZckZ6NzhQbGhnQ2V5cDJIYjRTOWhkR2ZJMU12?=
 =?utf-8?B?S3RSaVYra0tvZTVidzZ1Vjd1dWxKNGMzTU5ZRFJaWmlSWnFrNzhURC94VWRv?=
 =?utf-8?B?YnZ5MU1NNzMzemo0UUVwbE9iQ293eDl6WGgzRHRMR1BsdnJ0a0JVOUYrZUcy?=
 =?utf-8?B?eHVvL0hneTh4MHp3ZnNXOVFYM2VPN3JQWmRZcjN1MjBLUXkwS1dLazNLdUFz?=
 =?utf-8?B?NDhIRmQ1Z0pZcjhOZ0hCUG43MkU1VHI3b3BRSzVkNENVQzdreEF1S2Zkc0hW?=
 =?utf-8?B?M210VmJUVGdCS1hnVW8rTldyZnVsbTJuVkdQbmZYTHY0RWlrUWJ6M01yMWdo?=
 =?utf-8?Q?sW0Uh16ddKG1s0H4MxMgposJ8ri9Cl1W?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB8280.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(16122699012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T0hxTW9Ib3ZCaG90TEdDSnRIYVBDYUJSNjRaL0hQdUV5YjJJdStWOG5qNUxE?=
 =?utf-8?B?M2F3dWtXWWxETlNMcmRNa3M5djQwOFczanVzbGpsZjArMW9icHZ6S25KVEtK?=
 =?utf-8?B?emxGSkxjNmJDNnU1cWdHUHM1SjJsN0FrYjZSOXUvU3piTWxFSmZLV1pXaUdR?=
 =?utf-8?B?NGgrNFdGYlJVaS93SXBXWitLcnhLRC92WHdJSUtZTUkyNmxRdWswWWxWY003?=
 =?utf-8?B?LzhyWkVnQWxwRmV5SEtlRFJBd3JTY21WMERKSUt3b2ZOVzR2ejZHZnRLUGJS?=
 =?utf-8?B?dW5QUjNDcEtYOTRSOVhwTEtDa1BzVThEMkF3QnpsYW5iNFJuOHlBcUM4WjhC?=
 =?utf-8?B?L1FnSVdPOS9aNWsrR3JIUERnVWFXcGticEJSMEZtYlZjMjJnUEkzQkF5eU9v?=
 =?utf-8?B?WkQ4UStXNUdnalNWaHZjYkY1Vmx2WlVReUNXdTZTdC93aWkreG0rSmNyUDR1?=
 =?utf-8?B?VkNxa1ZtaTA1WGZta0dWeENBajd0UEFtYXlhQ3k2dDNHT1o1M3Y2T0NERHZk?=
 =?utf-8?B?TngwZEJlcE40N3lHNHo4VHBWaTNQeXZDYWZvM1RBRjBxRmJGY3d6R215cnVG?=
 =?utf-8?B?MUZZYmVrTkM0SDdTZkpwZVlrQmtvZFdiR0tHZnJ2ZjM3NnZSY3p6YWRtSkFk?=
 =?utf-8?B?WHUvbElWZ21MRkZrbGhyalVONk5EbXBLVGFiVFRrand2Q3NUbjFwK3BoTUhV?=
 =?utf-8?B?UmMzYzBLc2xJa0FtQ2dpQnZmalZLc3ZjMStuS0RSN01Nak1ub3l1OFZuditM?=
 =?utf-8?B?cHpvZnJVdlF3bTdtUWtwdjhqcnY1OENFb0I4S3hJODF4eDNEM2pSQjEvcXlM?=
 =?utf-8?B?SE4vVzNHZGNvVjh5V1lkaXV1a3BkT0JpZ2t2aVUyUFRkbzlSaXZuSEZFQXlq?=
 =?utf-8?B?SFpVOVpWRm44MzZDOEdBSGp4VUV2V0FHRkhpWlJqZUxOK0R3MCtrZUxQVjFi?=
 =?utf-8?B?YzIxZndMWlBIa3QwdGJNOWlKZWdmOFhmN3hJSExneDJybmZmRk95NDZqN0w5?=
 =?utf-8?B?Y09Hc042SVZDRTFiMUM0aC9aMW9UKzNKVUM2bUZDN3oyU3AvbkxkMkErYU5L?=
 =?utf-8?B?b2Rzb1ZpSmZ6VzBCRmRDNXRmL0tDS0N4WjQvUkp5Y0VQQTNzckdNTVdKSVhv?=
 =?utf-8?B?K2NPQmtTUnNtMXdsU2oyOU9neCtma3V6VDJiV1JURlk0UCs3VWdFMXFMSEVI?=
 =?utf-8?B?VU1RRkVjR1RSUndaQnBhV01sbW0wYlhqdHRLZmZsdXRYWXkxZHNrQXhVbTRv?=
 =?utf-8?B?dko1MEFULzgvT1hLYVk2bFlMWjE0RTdoOFBrVWszSHU1bFNUVjZZMTVIcGtV?=
 =?utf-8?B?WEltdGpiWWhQdUZmQ0Y0M2VoMy9qemIybWx3akozbWkyVXYvWXJ2OVM2clRw?=
 =?utf-8?B?K3JQMEVrOU9VMWpHSnduY3B5Sjh5WUV2aW9CQnRDV0N1RDBlVzFFMXc2U3ZF?=
 =?utf-8?B?eXNmQ0VzZUxKb1c2blFnemwwMlRwZ2w3ZFB3SmpnRHllRGNLT0FMcU5WVTlU?=
 =?utf-8?B?VitrU2FDQ0o1bjlmQjMzMlZLamxSQ1N2ZHBFTFFTTHAxN1RldG5SYVBHSzE0?=
 =?utf-8?B?RlhabGg2by9EdDlyc2NaMzRmMXJEQ0NNZHg3UE9LZG0xdzBhcDVBYm9QaDBW?=
 =?utf-8?B?L29SdzhWSkZ3V0FPR1NkMThVMkE3cDA3VHZFMnM1T0JKUTdvTG9YNmQxaXFU?=
 =?utf-8?B?R21KYmxMSmNLRUNqc2VZaDdBTUlKS0NjQXNtNTJ2clpmdng4Nlh3OXBWTWtD?=
 =?utf-8?B?YmJpTmUwYStyQ0NYQ3VnSitGZy84MWRUTmtGeHppVmJRM0FrUC9aVnZXY0Fi?=
 =?utf-8?B?YzIvTUR1VWoxZXNFYnhIODBUSXpQSTd2V0tJci90c3NBbFFudlZtcExRdDhD?=
 =?utf-8?B?UFo5U2FIV2lWaXo5YjlRemhLM2p3b1VUZEhBeTBudGFUZjlLQmZuZnEyTk55?=
 =?utf-8?B?T3RVZzVJcEd6OFhtSjdZYVpJMXExUXp6R0I4a3pSNm5QOG8vVnhMaTdJWWFx?=
 =?utf-8?B?Qk8rUHRJMWNmbDY0WHlqczVSMzdMcy9OQXlEWi9lY2dOdWVhSDZnOC81Z3V6?=
 =?utf-8?B?K1Mxb2tONS9TOE9MeVcvSWJVM0N4bVc1YVZ2dVYybU4zdE91UkYwV2kwdGFo?=
 =?utf-8?B?Z24vcE0xbHNBMHN4MnB1eCtaYU9ndUZvb21BdEdnOTJWeWdjMFpMZFVGVE5P?=
 =?utf-8?B?bnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2990d1ab-3787-4ba8-1cc5-08dd5817ba5d
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB8280.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2025 16:48:29.3242 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iSobI+f2l/O3vjSkDxZjXnhKvd+y/rxXHwNJNKg/wWPrBPHf3AZTaLzb6SEhtgJHD1qVsMoaI1vKDaLmGn2+qA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6808
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

Quoting Gustavo Sousa (2025-02-27 18:09:11-03:00)
>Fix one issue[1] reported by the kernel test robot and also take this
>opportunity to improve POWER_DOMAIN_*() macros by making them explicitly
>return the expected enum type with patch #2.
>
>I decided to send this new version with patch #3 dropped in order to get
>CI results and merge the already reviewed patches #1 and #2. Patch #3
>from the previous version is still under discussion and will probably be
>respinned as a standalone patch.

Pushed to drm-intel-next. Thank you all for the review/feedback.

--
Gustavo Sousa

>
>[1] https://lore.kernel.org/oe-kbuild-all/202502120809.XfmcqkBD-lkp@intel.=
com/
>
>---
>Gustavo Sousa (2):
>      drm/i915/display: Use explicit base values in POWER_DOMAIN_*() macro=
s
>      drm/i915/display: Make POWER_DOMAIN_*() always result in enum intel_=
display_power_domain
>
> drivers/gpu/drm/i915/display/intel_display_power.h | 7 ++++---
> 1 file changed, 4 insertions(+), 3 deletions(-)
>---
>base-commit: 6badede10d92c242241bd7bf59a5488b5eba5aa7
>change-id: 20250227-improve-type-safey-power-domain-macros-8bf2a14f43f9
>
>Best regards,
>--=20
>Gustavo Sousa <gustavo.sousa@intel.com>
>
