Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F7B4C3C311
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 16:55:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A51E10E947;
	Thu,  6 Nov 2025 15:55:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WsxMSWx8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC37010E944;
 Thu,  6 Nov 2025 15:55:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762444552; x=1793980552;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=2NsbOJ7WFYETT0kEUMbVUJQ8n0dQBBJvFIkRVJ1mU14=;
 b=WsxMSWx8QP+YGL8HnP75D8yMOqgIsa58cGgOLejq+XNvb1FFI/gDad0r
 9h/sVmzpra3xuAU3FHWEk2m9TiIkdsnfGTKiYX6EcKbHOaWG1dVLiaIdx
 s1yufFq7KJL6iA0YCWEJ8vxM3JhQ67V1ARkDnH7aasmPKiJ8r+mAw1x8Z
 bMya7i6l9n7K1pEj6DRbMADz5oTLRA0q9BdGZz4jrczdkQNAjg4SownHt
 R+uGcfUczXdHGYHTm1aFVosPqNPigtqHzVzDKX0K2hortaaZ0jNTscFfA
 ON8rds1yKM3YGBS4eXxvoMwwYuU0e3drX8didKHsRHm1bvKhnl9Q6kjLY g==;
X-CSE-ConnectionGUID: EjZv0/rTSH+NXy5v2yuCSQ==
X-CSE-MsgGUID: 0d6emUm4TnSbidS5ckaVmg==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="68445373"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="68445373"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 07:55:51 -0800
X-CSE-ConnectionGUID: RBUF6gfkQvCvekQVS8nRCA==
X-CSE-MsgGUID: dr9jDCdKSdewzL54o/+EXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="192960366"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 07:55:51 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 07:55:50 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 6 Nov 2025 07:55:50 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.49) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 07:55:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kbIcnfiHortvhpEsEnxoCtxuWd88aKqd2F7DM5pxeNO/LG8tAPY/DGCHPxA9HBJMHCaGM+cXAuSZr54L7ZqPnxLIqP1Dhv1p8MEAZ3poQr8ZGPjEjCToX159mLxIGWJGcnc56LF4PieLynYRsopxDXHwXuFLdQQtpLfOP2TRDwPtchQFWjuGSR9G08pnXvqBYm9rW5r7KRoMLr+xA64BWB+FGY/SbOYHFQpftvxeaygOVQA7S6lQLihwGfXTscfR8vhEdgqKwKweTG0AEBTB0VhwCTQ8DI1zdOJauo6jJ8TrFr9bEW/g3y1sbs3TAbAuY7J76VBPX14SleC16IcBjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wRrSD2lw7s34OA4DH6kJepP+quH6qgsdlvKTaN/BWD8=;
 b=qUp2CHk32xv4TaPFDf26kmFZDqVQ4/3eb5Bz867ZverIq3ys/r3HM15OSKIJNyzRTJIKZgbCT8mkoIqWa1XdWRQZ1j443Ohmp7fqu08w+9tqcN09Wl+e/bAG1uZMpDYiEfO264Ih9YJuLFeDZuvowZCq61osQPdDaabRFRkyxcfA8Sb55se2lyCQvuFm7lGNSIm0g56MmwdjlUpPVIKEMnY4Ip8t3czloxw74zQTEwuOLM0LxlDjqGM2VZuDsOUErOQEqC1N4R8D90SMG322+b6YczY/CTPt9taIveDWniD7PV+NgLsr/2rUoJA4loGPuPGSanoQZ4SuPTRWm8S03A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA2PR11MB4778.namprd11.prod.outlook.com (2603:10b6:806:119::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.12; Thu, 6 Nov
 2025 15:55:43 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9298.007; Thu, 6 Nov 2025
 15:55:43 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20251103223028.GA3905809@mdroper-desk1.amr.corp.intel.com>
References: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
 <20251103-xe3p_lpd-basic-enabling-v3-17-00e87b510ae7@intel.com>
 <20251103223028.GA3905809@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [PATCH v3 17/29] drm/i915/xe3p_lpd: Log FBC-related debug info
 for PIPE underrun
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Ville =?utf-8?b?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Date: Thu, 6 Nov 2025 12:55:38 -0300
Message-ID: <176244453866.3117.4808490944515545642@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: BYAPR21CA0014.namprd21.prod.outlook.com
 (2603:10b6:a03:114::24) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA2PR11MB4778:EE_
X-MS-Office365-Filtering-Correlation-Id: e9b56e0e-c80d-44e0-6450-08de1d4cf10d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aisrek5oenl2cUR4QXJnMEJaemZiNHI5OEZ6VDhkVE5Bd0J0SmtaOHBqWXZF?=
 =?utf-8?B?L0VXOE11QkdEVk8xbVRGRkcybE8yRUdrVFdkZ2RLZjhHT2podWluZzhrek5E?=
 =?utf-8?B?b0JlbjVodkU4TUZFU2VxMmg1MW5vV2U0WkthNTJIWnFRUENmY2JZQnUvUXI3?=
 =?utf-8?B?OVRjbUdwWHcrUnNzb1V6WnppbVBSVTZHS29zVDhFaWxDaHVjcEtQVzl4YzlL?=
 =?utf-8?B?L2tVWitvQ0NQcUxmS0ovcmRXQW9BNUFsdUVqVFQrNGlQTkIvL2NNVjZOWHBW?=
 =?utf-8?B?U1IvVThDb2wyZmpuNlhUVjl2dEtSSi9XREZsWkRleCtDSjNpc3ZCb0FONjFw?=
 =?utf-8?B?aG1RNFh4OFZkVUY3RHV6eVRoYXJLMFo2TlE0QmJwUXRHY1NpOEhEcjFhV1di?=
 =?utf-8?B?WUUrMUZKU2x5ODRydFZINHlHMXRWMWE4RmYvK0h5K1RJNUd1aDUxaGJDR0hS?=
 =?utf-8?B?YlF6eU1EVFd2Rm1SVFBhUkNjSStuSkM1cXZNSjluRVl4SHZnOVBJOHNFVjdt?=
 =?utf-8?B?QTQ0c1pORU1yM0JBV1U1VjF0OHlWOWtKdm5BYy80WlBUQW9Ub25sVnBzRkR5?=
 =?utf-8?B?bzVrZXZ4VEd6cTZCbmVVd0Z2dm5RdzkvdTdiNkptalYwcWRuYU80elg0ejlp?=
 =?utf-8?B?eXlLV2VNRHhza3hIbjg3cVFJV1RTZjlRVFkvMjVMalY0a0pEbjJLbFpUanRa?=
 =?utf-8?B?enQ5Z3dSa1JwMXhzZkQyRE05Ukt2dmk3d093K1pXVlI3MmFFVktjcy9Md0Nw?=
 =?utf-8?B?cTFLazhKVk5GYVFaYmFoRklNOVhBOEpaVkpSeDJ5L215Z2dyaitWc29Sbjl0?=
 =?utf-8?B?NUJZRms2QXZENWIvUGYzMHdvemxPRmpLb0VwMUVQTFh0YUtGZVBhWSs2cm9l?=
 =?utf-8?B?RmVReDlJM3VVcmdPNWRuRFU1MHQvOXJtUTZncm9FdXNQd3hISjQ1d0JFUlpq?=
 =?utf-8?B?cyszSWlqNGdNR1ZvYWZGVURCbE45aGxIaHJqWU9Uc2d3RldxL1E2TU52aWZq?=
 =?utf-8?B?NFJwVnNDTVRWNjdCRjBUQ045ZHd0ejRZY05kR1RwY3piOVRVdDNpNk9UVmNQ?=
 =?utf-8?B?ZEo0VlZnTDdHOVNucVFITno0cVFiVEtNdlk4ZldGb0pEVUl4V1pZR0RRc3hh?=
 =?utf-8?B?MmROWVV6dUlKaEsyT3p1VVhxTDZ1cWIxVzI4OXV6citsU09ndW1PcmNkbmVD?=
 =?utf-8?B?S0xIK2VyNG04R25VZTVaWUVSV0hOWXRkbk5waEc5azhWYk15M3h4NjhRVHI5?=
 =?utf-8?B?L2FmMmJkWTc1YUF5NVI1bmRBVGZSNzBaR1VCbjJCdG1KU3kvbW9HMFlCeVpB?=
 =?utf-8?B?c1U2TUpOVFZhcjdEMEpLTFE5TnFGMCtOWTkra2YzWFFkUTd0TkRsMVo1M2JR?=
 =?utf-8?B?REtMOHo1TGhITmY3MHRQOWI5ZVJlNzZQMjBvdjhaR0ZrMVFEaEIxK29mZ0dl?=
 =?utf-8?B?bERibkduRFRxdjNKZnpHbThWUFJ1U0pvTU95RGxNYUN3RFNlZ2RmNDZUVWVR?=
 =?utf-8?B?K1ZLWExpYTNsQStvR0FZTkpGZFU4N1VQUzUrWmlZbUxPSzYrdnREcEtKUWNK?=
 =?utf-8?B?VlU5NCttSkJGNFdFRkhZN1VKUEF5K0RNQXByL3o3eUgxZlJkL0VEZXVacWlh?=
 =?utf-8?B?bHI0eWI3SzViR3dLSEZzaWtabFVLT3FtcTRCQkM3c0Z0elBiT1NXOWxsZjNw?=
 =?utf-8?B?Q0oxRFVPeWFHWm1hL09jdm1oZHdZV1NLc2ZnRUQrWDNKWVg4SUhCTUZLZTJj?=
 =?utf-8?B?bXpVamw2dFA3WmJBS2ZuV2w0TVN1WHRjVC94aThaa0RaSnBwbkFxbDEyc05Q?=
 =?utf-8?B?Z2l5RmJsTzkxYThBVEJWUTZ4c3c5NDlrdzU4N2lScXJYYXlyMzJRL0dCZkIy?=
 =?utf-8?B?VENONjR0UW43UXpwZ3R3eUtBSXV6bVIyd0E0R3VRNWJFS0xzWmo2cFB6Z0w0?=
 =?utf-8?Q?j4rgovcvHWexsp/J873+EzI2sFzNSxZa?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aDJlMVNBMSttdkYvT3RUL0g1TWJlRDZvdDRLbTliazl3TC8wN0xway9xaTI1?=
 =?utf-8?B?RlZ5RHNNYllJU0ExVzZUeXVLL2JMelprdWVVVjRrbTlkTTVGeTZaTm1GUFlx?=
 =?utf-8?B?aXhFOFR0MEg0bURyMHdqb0lBWEU5WDR6aUs3ZzBEM2g0cGdVWnJZb1BpbEZD?=
 =?utf-8?B?RGlBMXhkMzlGUjhiNmRFMnZXdWxIcHYzNGZ3aHAwcFZNUnFZdGtOcktBNk9u?=
 =?utf-8?B?S3BXYlZyMWZHUFBmZ09pZWZoZlhMNkUyb3dGRDJNcWFMR3BsdlIwQU5Ndi9X?=
 =?utf-8?B?ejY0eGthMkhKckQwZnFlODBYdjd5TnQrMDBEVmtBSE93bjlvbUExNHhDODMr?=
 =?utf-8?B?N0tkYWlPaGhydVR3Q3RSQmJsVmllQlNGZmdEcFV6MjJYMklRek10MkErYkRP?=
 =?utf-8?B?MEJrOVFkUEFmcmgrY1NUMGJDZ1dCQ0pnWm50eFBWeTRzbUNIL0NrQjcySjk1?=
 =?utf-8?B?Qkpwd0hmNzh6b0g0d3o0MDZGc2ZDOHF0VTA0ZnIyNG1hL2toTXRhVzMwMGZP?=
 =?utf-8?B?Wm5OR0VId2pXRDBkSUg5bGUzaEk3UlBwWlFZaVVPWnBjMFFKRDBCRUxCcjN5?=
 =?utf-8?B?RnNNWmpWdTZmbWNXamkyOWZGUitlVE5IRWM3Mmpya3k2TWI3aGxVL2psR2tL?=
 =?utf-8?B?eGU5WTFkK3o1Ym52VkxkTStiUVlTbXBTbitONyt3ZmlsN2lBVm5CRWNhT1ls?=
 =?utf-8?B?MG5QSTBIRkZIZHBnYVIyTi9sV2MvZ3pIbTYxN1ZEZy9KNlBHUFRjNE9UVGhV?=
 =?utf-8?B?alplMlFic0pZSmxjK1lDcnFxTUp6a1BSYmNaVS9DcUxUTy9DaC9EQzA5ZnVG?=
 =?utf-8?B?UVp5QXVmSTJQaTNDdTJIZnhWc0ZDSmQwSElsN1ZKeWF2cWpUM21QTDlwSkxC?=
 =?utf-8?B?My94WlFFMGlqRStoU1hIV1ZGZHU2QnlrVUxDSFI3a1puMUUwUGxyZFNET3Js?=
 =?utf-8?B?UkZyUjA2MFRvWERQUmE0a1VqWkZoZk0vekFmSE9SRjQwSEwxZzNVTHVKakVx?=
 =?utf-8?B?R3FUWjNRa3hRVDBBQnFxVk9KaFJZaTNzMnp3cWtJYWdmRDVRaWluVkk3Tng1?=
 =?utf-8?B?eFRZSnVNbXVNejNPNTVvS1FUNGNVR25DdURkY1k0U1VMTDBNOG0rL3RiQkcx?=
 =?utf-8?B?KzFIMGRzYTVkamg5aWl0ZWw1K2ZYejcxblZscG1KazE0WGN2SWJxanZQa3lm?=
 =?utf-8?B?OUFrcHFTMklTVGdoUEg0STM4TVhFc0MwR2FDNW1IOXdyNlptS1hYWWc0VW5Q?=
 =?utf-8?B?bXJFdU9OciswRzVNV2JLQnpucVhMeFQvdHB0WmZMRnk5VG0wbWFTK3ZFVjd0?=
 =?utf-8?B?S0N0SmdVZE5ZQ0NSTUl2Vk9yL1NQbDVsOHpUY3ZhYXJLNkdoanpJRXJCbUxn?=
 =?utf-8?B?YllFS09ISEE4YU9OcHFDUm4wZHFMQTRZNW1qVllRN2prUVViaWNrZ1NxWnJa?=
 =?utf-8?B?ZTlzd0RMQk9pck82VXZpYUliMmNyUE1vTlYrMU9FWmN4OWcwamNrTHc1SXZS?=
 =?utf-8?B?K0FTdTRVb25Eclk2WXZyZS9xcVlVM2pKbVh6Z1loYkxLMjI0YTFZMHJ5Tjgx?=
 =?utf-8?B?dk5QN2d1dDNiaHNpaE9PNDNPU1FSQlhvYU5XZHBkaWdKYlRLYThUWGpnSEhT?=
 =?utf-8?B?Ry9rSTRBang5dkpKRngzMXorREkrdjc1RFdoT0NwSm5SUlhhTy9Kd1l1UDZH?=
 =?utf-8?B?YUVNWmZoeGVJeDNtVXk1eVBQVVIvNzN4bnphQ1RyRndiNU1HMHRtVkJoeTRO?=
 =?utf-8?B?Rm5ucVVWYlFzRUI2Z2t0cmJrMGF0bm9ZMG9LUWcyTWM2d01hckVVRko5Yk9m?=
 =?utf-8?B?aDlISS9mVTF2azlIUWoxa2s3cUlxNGF5TTNsd0JRaGxIWk53M2I5Lzc4SVZF?=
 =?utf-8?B?QVkvU3JhTnAySHFncFdEVy9URXBUMTE2VVYrZVZJTVUvdU1WQjYrZS9tTXVJ?=
 =?utf-8?B?L2RKQTR0MVQ5Vzl2ZkpDc2pkTlNzbXd3VG1BVVVBRm5sQXE3MzBqR05CZUQ5?=
 =?utf-8?B?WndIdUdyLy9Bem43T2JOMzF3OC9oL3VLcjMzcGtIK0JZeU5qa2dLc0dpQUVl?=
 =?utf-8?B?d0dlYkRIcFhqY1B0VklTYWkzOHpyeGtMZWxnYm5Ld1lGNWhudEMxMFo0RDRV?=
 =?utf-8?B?NDdJbnJSNERoL1lMUi9BS3dBdERJN2VsblczYnl6cmlxSFRHRU1HeGk0bzBB?=
 =?utf-8?B?RVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e9b56e0e-c80d-44e0-6450-08de1d4cf10d
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2025 15:55:43.4588 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5drSZMSE80bpwsTcyGow1DcnkkDCBE0Cj8H91FNNmgzruKBeIECIvkXWtDVV7KrscVA15LIVqXT8GoTEyaYTHA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4778
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

Quoting Matt Roper (2025-11-03 19:30:28-03:00)
>On Mon, Nov 03, 2025 at 02:18:08PM -0300, Gustavo Sousa wrote:
>> Xe3p_LPD added registers and bits to provide debug information at the
>> time a FIFO underrun happens.  We have already handled most of them,
>> with FBC being left out.  Let's handle it now.
>>=20
>> For FBC, a bit was added to FBC_DEBUG_STATUS that indicates that the
>> respective FBC was decompressing when a FIFO underrun happened.  Add the
>> logic log that info.
>>=20
>> Bspec: 69561
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_fbc.c           | 45 +++++++++++++++=
+++++++
>>  drivers/gpu/drm/i915/display/intel_fbc.h           |  2 +
>>  drivers/gpu/drm/i915/display/intel_fbc_regs.h      |  2 +
>>  drivers/gpu/drm/i915/display/intel_fifo_underrun.c |  1 +
>>  4 files changed, 50 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/=
i915/display/intel_fbc.c
>> index a1e3083022ee..24b72951ea3c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>> @@ -129,6 +129,11 @@ struct intel_fbc {
>>          const char *no_fbc_reason;
>>  };
>> =20
>> +static char fbc_name(enum intel_fbc_id fbc_id)
>> +{
>> +        return 'A' + fbc_id;
>> +}
>> +
>>  /* plane stride in pixels */
>>  static unsigned int intel_fbc_plane_stride(const struct intel_plane_sta=
te *plane_state)
>>  {
>> @@ -2119,6 +2124,46 @@ void intel_fbc_handle_fifo_underrun_irq(struct in=
tel_display *display)
>>                  __intel_fbc_handle_fifo_underrun_irq(fbc);
>>  }
>> =20
>> +static unsigned int pipe_to_fbc_mask(struct intel_display *display, enu=
m pipe pipe)
>> +{
>> +        struct intel_crtc *crtc =3D intel_crtc_for_pipe(display, pipe);
>> +        struct intel_plane *plane;
>> +        unsigned int mask =3D 0;
>> +
>> +        for_each_intel_plane_on_crtc(display->drm, crtc, plane) {
>> +                if (plane->fbc)
>> +                        mask |=3D BIT(plane->fbc->id);
>> +        }
>> +
>> +        return mask;
>> +}
>
>I notice that there's also a skl_fbc_id_for_pipe in
>skl_universal_plane.c that relies on the current hardware design of one
>FBC unit per pipe.  What you have here is a lot more general and
>future-proof if the hardware someday starts allowing multiple units per
>pipe.  I don't have strong feelings about whether the simple approach or
>the future-proof approach is better, but we might want to consolidate to
>a single function that can be used in both places so that there isn't
>confusion about why there are two ways to do the same thing in different
>parts of the driver.

For today's needs, I think it is probably simpler to just promote
skl_fbc_id_for_pipe() to a function exported by intel_fbc.h.  I'll do
that.

Thanks!

--
Gustavo Sousa

>
>
>Matt
>
>> +
>> +static void __intel_fbc_log_fifo_underrun(struct intel_fbc *fbc, enum p=
ipe pipe)
>> +{
>> +        struct intel_display *display =3D fbc->display;
>> +        u32 val;
>> +
>> +        val =3D intel_de_read(display, FBC_DEBUG_STATUS(fbc->id));
>> +        if (val & FBC_UNDERRUN_DECMPR) {
>> +                intel_de_write(display, FBC_DEBUG_STATUS(fbc->id), FBC_=
UNDERRUN_DECMPR);
>> +                drm_err(display->drm, "Pipe %c FIFO underrun info: FBC =
%c decompressing\n",
>> +                        pipe_name(pipe), fbc_name(fbc->id));
>> +        }
>> +}
>> +
>> +void intel_fbc_log_fifo_underrun(struct intel_display *display, enum pi=
pe pipe)
>> +{
>> +        struct intel_fbc *fbc;
>> +        enum intel_fbc_id fbc_id;
>> +        unsigned int fbc_mask;
>> +
>> +        fbc_mask =3D pipe_to_fbc_mask(display, pipe);
>> +
>> +        for_each_intel_fbc(display, fbc, fbc_id)
>> +                if (fbc_mask & BIT(fbc_id))
>> +                        __intel_fbc_log_fifo_underrun(fbc, pipe);
>> +}
>> +
>>  /*
>>   * The DDX driver changes its behavior depending on the value it reads =
from
>>   * i915.enable_fbc, so sanitize it by translating the default value int=
o either
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/=
i915/display/intel_fbc.h
>> index 91424563206a..d34282cbe971 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbc.h
>> +++ b/drivers/gpu/drm/i915/display/intel_fbc.h
>> @@ -9,6 +9,7 @@
>>  #include <linux/types.h>
>> =20
>>  enum fb_op_origin;
>> +enum pipe;
>>  struct intel_atomic_state;
>>  struct intel_crtc;
>>  struct intel_crtc_state;
>> @@ -46,6 +47,7 @@ void intel_fbc_flush(struct intel_display *display,
>>                       unsigned int frontbuffer_bits, enum fb_op_origin o=
rigin);
>>  void intel_fbc_add_plane(struct intel_fbc *fbc, struct intel_plane *pla=
ne);
>>  void intel_fbc_handle_fifo_underrun_irq(struct intel_display *display);
>> +void intel_fbc_log_fifo_underrun(struct intel_display *display, enum pi=
pe pipe);
>>  void intel_fbc_reset_underrun(struct intel_display *display);
>>  void intel_fbc_crtc_debugfs_add(struct intel_crtc *crtc);
>>  void intel_fbc_debugfs_register(struct intel_display *display);
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbc_regs.h b/drivers/gpu=
/drm/i915/display/intel_fbc_regs.h
>> index b1d0161a3196..77d8321c4fb3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbc_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
>> @@ -88,6 +88,8 @@
>>  #define DPFC_FENCE_YOFF                        _MMIO(0x3218)
>>  #define ILK_DPFC_FENCE_YOFF(fbc_id)        _MMIO_PIPE((fbc_id), 0x43218=
, 0x43258)
>>  #define DPFC_CHICKEN                        _MMIO(0x3224)
>> +#define FBC_DEBUG_STATUS(fbc_id)        _MMIO_PIPE((fbc_id), 0x43220, 0=
x43260)
>> +#define   FBC_UNDERRUN_DECMPR                        REG_BIT(27)
>>  #define ILK_DPFC_CHICKEN(fbc_id)        _MMIO_PIPE((fbc_id), 0x43224, 0=
x43264)
>>  #define   DPFC_HT_MODIFY                        REG_BIT(31) /* pre-ivb =
*/
>>  #define   DPFC_NUKE_ON_ANY_MODIFICATION                REG_BIT(23) /* b=
dw+ */
>> diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/driver=
s/gpu/drm/i915/display/intel_fifo_underrun.c
>> index 1da90c99f93f..d0dbc4faa3f4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>> @@ -403,6 +403,7 @@ static void xe3p_lpd_log_underrun(struct intel_displ=
ay *display,
>>          u32 val;
>> =20
>>          process_underrun_dbg1(display, pipe);
>> +        intel_fbc_log_fifo_underrun(display, pipe);
>> =20
>>          val =3D intel_de_read(display, UNDERRUN_DBG2(pipe));
>>          if (val & UNDERRUN_FRAME_LINE_COUNTERS_FROZEN) {
>>=20
>> --=20
>> 2.51.0
>>=20
>
>--=20
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
