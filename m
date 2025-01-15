Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58635A12BDF
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2025 20:41:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF71D10E7CF;
	Wed, 15 Jan 2025 19:41:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lpcgH+8+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9429F10E7CE;
 Wed, 15 Jan 2025 19:41:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736970104; x=1768506104;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=eL2E9Gg1/GEKs+4TMWYoBFbk5+tQ+ixz7MJUc9lbeUQ=;
 b=lpcgH+8+yl5bruO5rHwmAgZP7sDJ+94Hz+2K+H3hIVIy6lD8GaBa0fVz
 KL/THiD50/qEBa6KCCAuV3Ik/fMtpLZQDYdPGniUoutNwBCnSBPy40Y4t
 rxgXvNNvtJNKYGJZceSChtXEaOdo7+IxornqhsfWbSW1/yeXmuWMhh/S7
 UE5YUbiceeH8V9kOSIEgiZ2W9zcowBmhb05lamaL1pL6UzJtbWk0TgVQ1
 5sshxluMkYuDkNnFjPxed70ILphebSuon2/LNCH7xaY7hxd02Cq9LMR3X
 CH+KMOMJfQCoMiHtI51eJhGaIciJZ+Nm2+fMM5VuqnR1NvbgrKv/GtGSv g==;
X-CSE-ConnectionGUID: 4LR78dWhTI6dBVqhIS7eZQ==
X-CSE-MsgGUID: x5d0VHbVQM6UXsvSLVpBMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="47983541"
X-IronPort-AV: E=Sophos;i="6.13,207,1732608000"; d="scan'208";a="47983541"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2025 11:41:42 -0800
X-CSE-ConnectionGUID: vVZuedC1S6yCH9Tf1ZoAsQ==
X-CSE-MsgGUID: iL2GGnCLSFm6Wbk0Hz7H3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,207,1732608000"; d="scan'208";a="110209231"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Jan 2025 11:41:42 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 15 Jan 2025 11:41:41 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 15 Jan 2025 11:41:41 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 15 Jan 2025 11:41:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pykCitgKVANH3R1jO5FdAmivo+/jkxX7DPTJ35aEQsso57leqcztyr5fcLwst+czIx7/DL4TDxHIaHr7API61Y+cq6W+qklAIodYXpyRm6HagrU6QUgsrlILaFbBVD+furT9Ki8PNT8WjHN+Ka8sufbbFLxoTPUFIBtLXN7FzYgHGFfj81PH2GwSM+MrEHYWstlAiITkc0jytfyABnIMdYpH4F3nb/wFZIyagTPyrTxK6rK07OvBN/y4JoY2ygZBBio4g5lDz92YtEmJUhUfMdUWYMctcG0gmZTzz5JgB8Jrf3B1fvLAU5/0Pb+1BojSivlY8H0DDZGkqxXxe5w7TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ONWl64ooCn4SkJQ7J0x2x3kW8euXvuXSCC57DPtg15M=;
 b=djGShtlH2v1Bo0r/eJOI8ZIv5QpVTUS8DCAWlVpe5lXfL5PXZyilgg/g6JYTSBG6cOqtD3xvWezQev7oQXPINHl82ecwxb7xo2ivDrAE2tbOm/cmn3pL2dcFx0IgbL83anf+xRPBpm/6ztm8mFs4y3IoKQmVgE7Rxc6AzK7SQOnAuyxQi0Cicso0q/B7OIAFuTNurNYJfZqI/Vb8osbhxS8QrJp8Ql/4XkWRT1cXnkx4b9ZQFZadIY45QJ0oSKOXAwJDzsbfjxGYPzPFNxMFLAlEIfW8JTAkABSwlU1biwdUwyhoL8tWOQhGMwYC23NTTSU6eKfdflmCFs3IhSmR1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA1PR11MB6290.namprd11.prod.outlook.com (2603:10b6:208:3e6::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.13; Wed, 15 Jan
 2025 19:41:11 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8335.017; Wed, 15 Jan 2025
 19:41:11 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <173695792830.3159.388878827702803545@intel.com>
References: <20250113204815.114019-1-gustavo.sousa@intel.com>
 <87msfth14h.fsf@intel.com> <173687228001.2823.13065824358956469360@intel.com>
 <Z4afvb-BsavfTC54@intel.com>
 <173694505428.3159.15238384116175670777@intel.com>
 <Z4fPO_hBt9tr-gY1@intel.com> <173695792830.3159.388878827702803545@intel.com>
Subject: Re: [PATCH v5] drm/i915/cmtg: Disable the CMTG
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 15 Jan 2025 16:41:05 -0300
Message-ID: <173697006552.3159.7695562530356807466@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0280.namprd04.prod.outlook.com
 (2603:10b6:303:89::15) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA1PR11MB6290:EE_
X-MS-Office365-Filtering-Correlation-Id: 5fdd02a3-8ea2-4dbd-85ad-08dd359c907f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OUhJM29Mc3FBcklzVkw5Q0NIVFhtNmF1bmZRVGFIVTVYemtsQWpYWDBaZHBM?=
 =?utf-8?B?Vm1FV2tTT2NQYmJyOVY0dFpyYWN0aFdOdlZCcCtqMXlwRFlhcWwrQlRiQTRJ?=
 =?utf-8?B?ZGdlaTY1QTFJU3ZCNUZDUkFyTG84ZURiOWliV3pDOFYxN3BzQk1STStqT0o2?=
 =?utf-8?B?SDhGREpiRVdvaGdaTGtXQ0JpbUdVekJhUU9vUmRHM1Z6Tk11WitHdjdkTDRB?=
 =?utf-8?B?Ym5EeDhEa1VFRDBFa3VXUUdwZDVzSGN3Z1RwK05TUUhSb0xoczd2VlVBdU5T?=
 =?utf-8?B?bUVJWkorNWN3RXQ5OEVVdm05ckVSckQvSHV0LzViVDNzSlMxRVFRcVFCZllF?=
 =?utf-8?B?bnE2M3RCMWpwWnA2eXUwdmRxbHhBcTlub0JsZko1UloxcVllbE1vOS81ZmhJ?=
 =?utf-8?B?cWMwaGJzdzdMOU1tZWZQZ2FMM0Q2dzNRb3NzNlVIY1g5YVFrMHNvOGRkN3dv?=
 =?utf-8?B?RXUza01BTU1SdU04dmdzdURsYVNkRkdwb0FhVzVsRER1akdQUXV0eW9NaEhL?=
 =?utf-8?B?dTFrMTJVZWlVaW9YSUtldml3SUJzM3NZN2psRHBIeDhlTjNOTVh3a1FDWUdx?=
 =?utf-8?B?dmt1alhUMmFEMjQvWW05aTdYcVNra1JmdGhwdCtzZTRPb1d6SFIzZkl0ekhW?=
 =?utf-8?B?OUFzUEk1QTNNZndGaVQra1h3UlRyc01rWk41NTNDN1JyekYwVDVROG1Yei9B?=
 =?utf-8?B?NjFqN0dOUmJvVVJMLzdJaDg5ejRvcWMwUGt5R3BYMXNSQUtnV3ZiV245NmRy?=
 =?utf-8?B?YkU1QTN2QlBUbVN1SWhQQk1vVzZETVlLN1F5THJZZlRPTnlwQ3Z2MTBDUDY5?=
 =?utf-8?B?ZjVBa3pPSEFWUW9vcmVFV2xQV2l6ajNTcnY3bzMxTmRWZ3dYS0Q3K2Yrb2VZ?=
 =?utf-8?B?Z1VvQjM3THA0UUsvcWhwOXEzRFVWYnEvbDZYQmxDamZwVW9JVDdiMGwwTkQy?=
 =?utf-8?B?VHFhbTRnVHpjei9vcFB4aW1reVNOZVF6a0htRDFidHZRVGxxRUNYQ3FLRVdK?=
 =?utf-8?B?aVByZW9OanBuS1hicDZHK1A2MW1jcXdRUnRCTGFCUzJKY2xRZW5nK3JQaVo1?=
 =?utf-8?B?UTdHWVVHcUxRcTJsamQ3ZWdXbllLZ1lBVVp4UnBDTStQZXNiciszOGVpeU4w?=
 =?utf-8?B?UFExT082TUR5WXdZYmFiL0piUEZiZXc4QWpuNGJiOEUvU1Q1UkpHZ2gzWXZY?=
 =?utf-8?B?R2hqN2FOUlRpMExVZDlPNjQ1Z2FONnpiWmR1OHlCZnZveEtKelBvWTNLc2RP?=
 =?utf-8?B?ejVqZHE0enoySHlGZ1hwbVVBbW1MSVVIdExPS0NNaEJiYm04THVUVGp5VGdQ?=
 =?utf-8?B?aGFCWnZ0djcxRi9ldlR1dldkdmtlNFE3ZUh1eE9ycEVqSDNXdGNsaFJQUkZy?=
 =?utf-8?B?OVpKWDRJZ2txRjVjc016aWR1dUFReXpSTzJTQXhuV3JvTmZZYjR0eG1mZnV4?=
 =?utf-8?B?c2c2SW9Od3ZvaWhmQlJmbzZJMGFsOHVvdXEvc1pvZXpYWTZkQ08ySHIzY2gz?=
 =?utf-8?B?aUd6TGJBeXdkZkg5Y3JYcXF4a3FyQTFPTzFDWTFSN3EzNFMwOXE3NGZ3VFlz?=
 =?utf-8?B?NnNwU3RPRFhvVjFJNUdjczIycFo2M3FhUVQ2KzJlNGlHNUxxUmwvNnVibXVM?=
 =?utf-8?B?cVhxcDRSTks5VzVBN2tVVjA5MUpRbmtxc1lDb2VpS1lKY3V3MHZTVkR2S0tH?=
 =?utf-8?B?SktlOTdkaVRjRDF4eGFhT1pMYkc3bDNUTTRqeEg0TW5TQU9YU1FTVm5YWVBE?=
 =?utf-8?B?VFVvQnFjRDJZQnlLTDhlUE9kbzgzZHZYWUtDSmc1VUZCMGJtcGhSSlo0ZHhx?=
 =?utf-8?B?R3RmdHpJZUZWTExjOFA3TVBXVFBsTE1Cck9FVisza205YVFIcWYySmJzcVRL?=
 =?utf-8?Q?jT1UGIcZWs+xL?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eWFKaUJiUFgrcFpLeDRzbGxrRG0zaTRoOExtek1PZWcvbm5nL3ZIOUdNM0Rj?=
 =?utf-8?B?cG1VV0dtTjAzcDc2TzBFdTZsUHBPZk5JeDRLU2VNVHhYQ1dISldXY0t3RFR4?=
 =?utf-8?B?RkFLVEVoZGhQMFZUQnp3ZHpuc1NhOUczTXV6VnZtVXlCWVloMEd1d3NoRGJF?=
 =?utf-8?B?Ynl6V3RuVklHNWlVYkFMUWhYdG9iRjhIdmo5WktTZDJIZWRld3llR1QvUk9r?=
 =?utf-8?B?YlpGZGdNWlF6dEE5MTQwNHJpWG1yMnlPZEo0OEVqMWgyR2JEUHJWaXl4Tk4x?=
 =?utf-8?B?S0g3ZkFiL2ZEdWs0NENMcFJ4RGxTbTBRTnhFaDVUWGp1SEVLOFc2UjlFTTEw?=
 =?utf-8?B?bE9VUTdzd0VIc250N0g4TkdaU2paMXRXUWxYbWI0NzlveG1NdGhiYjY4c2o1?=
 =?utf-8?B?c0xSQkMyR1h3NytSSlh2N1VGWlkwc2F1bGlLTnBCMzhYeGdGNXREdTJwdTBL?=
 =?utf-8?B?VlJMYm5odUlYYnJ4TW50bTRram95QzVUYjMvSzdKL0xWU0FpaGsvelY5NGZ4?=
 =?utf-8?B?NDRleUNMSzVVeXBTQ2RBcnJYRDhjbmpUNjM5TGN3NlVUZjRMMFk3b0lhdmtM?=
 =?utf-8?B?eTlXT0YzcDhuaENJc0ZKdXRlVEVZc2g5V25oWUJHdHJmdkFjdzN1REZmTExh?=
 =?utf-8?B?ekJVRUFGV3VhQTRpWWZlbktHeTRRU3Z3KzlIQ2Q4eGhLMlk5QjJhWFVFS3Rm?=
 =?utf-8?B?aWpSOFdFbzNpcm9MTjk1SUlNU2RzTWttckpYeSt4MUJkYm9sOUhvb1E5OWUx?=
 =?utf-8?B?QUZYRzBxQWFVVUZYWGxHMEgvU3UwUklFMFFTUVdXQmF3OEcyd2RBYmttWHYx?=
 =?utf-8?B?Zmg5R0sxa3lqRmR6UEZJUm91WVRNT2NTRkQ0d3F3R2s1UGJBak1PbUsyVHRX?=
 =?utf-8?B?MytVeW1HOFBlWmpxSnZFQndXZmphQjc2NzMxdWpNTVZjSjd3L2lRNTFuV2x2?=
 =?utf-8?B?aTN1S0hpU2lvL2xMQjZsQ1cvZk81RkFHVmJiU0lUdDNZRkVNRlF0SjFkUkNW?=
 =?utf-8?B?akhhdnlhUi8ySXRJbVJua3F2YjF5MW9RNUNWRFFiNmxYVGNlZUMxdVAxWjVU?=
 =?utf-8?B?QkZYZnZJM3BybStGRktYWUNMTU5Pdkpla09IS2NLMDZkSnByb2EwRTViOHpQ?=
 =?utf-8?B?bzRnWGF3ZlVxWjFMQk9CZVllVmhJeUhsK3FIbHViNGpRSTNhSXN1V1F2T0du?=
 =?utf-8?B?RlB1c0JVYXRCcDQ2NzBCMGp3QlJEWVZ6c3poQmNUK3RkSkVRdFZ6UzB6eXpO?=
 =?utf-8?B?b3d1eVJUQk5iUEFVQmovV1pHWmNiQnZEeEpvZ2V6SC8ySHdlYWYrKzFZZUQv?=
 =?utf-8?B?VXNsSFh0dFhxbTlkdVY5RzVhdVplNHh4dTBPaWU3cGhvckxhaWsvY05VYWtP?=
 =?utf-8?B?cVJtUFFadG9CUXVoazIyT3c4MEVTZlJSNmUxREpTOEZNQkJPK3VPcWpTQlpS?=
 =?utf-8?B?blVzYmk2aDNUT1JOTXRsQjVweVVFR2Q5RXluUmxDWFN4dnhnMGlTTjdzWk9q?=
 =?utf-8?B?SS9ROXJGLysyK1h4TE9vMDBpNkV0NXc0Z0FhalJMNit1Uk1FeXQ5Tzl4U09I?=
 =?utf-8?B?aDlOYjBMOVp0aHdVS0FRWWluU2wvRXVHYUdXeWNWSkFRZzBOS2oxalJ6Ri9n?=
 =?utf-8?B?WlRqWElLYmV5dG85L0xVdUViVHpwakM4cWJWUzJPd01pc0Y2U3EvNlNsaEFC?=
 =?utf-8?B?OE40QnpHdlVDUE1RaWRaOUxCNThVekFiVlBFYTI2VStUMHJmYVJQeGNmUWQ0?=
 =?utf-8?B?Y2lwRGtRUFRqaDNNbjRrbklZcFRmSkhqNStYejRNWEhXMEd1cGNHMSs4MCtv?=
 =?utf-8?B?SW82TWQwTU5QNHZGY1NHMGJMQ1lKTnhxaU9LamJtUW0wNndGc05xMlNYa1RY?=
 =?utf-8?B?MHpXQkdXem5haHZiKy9nRGpTaXJCNUVoTVduRGk2NExDai9OUG1FZjB3Tk1s?=
 =?utf-8?B?STdmK3BIZ0Z2OE9hODZneGdCZW1hYm1XY2N2L0Q1eXA4RnBmdk5CUkFSVzlD?=
 =?utf-8?B?bWdRaFE2bVllZi9qS1U3MThkMmtrc0V0S3dNQXpWUTZDeWxaVm1KK3hVZ0xG?=
 =?utf-8?B?RUpndlh2bVFBb0E5bXZHQjFaTlhaS1MwV3hVWHVud3J2STVxMWNMOVppY3Zx?=
 =?utf-8?B?aDdwOVNjeTdSTXlWamxTU0kwb3RMRHJXYjV3ZFpGR25SQ20wUFN6UjBjSGxq?=
 =?utf-8?B?NlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fdd02a3-8ea2-4dbd-85ad-08dd359c907f
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jan 2025 19:41:11.4571 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U3XMmdbXdZHoorEP71wMIyFL0IGjJxiPD/J/9m/psi1hnyAH2qHbiKaBa38AOldFYAPm84EzK7b03AjKSe0OmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6290
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

Quoting Gustavo Sousa (2025-01-15 13:18:48-03:00)
>Quoting Ville Syrj=C3=A4l=C3=A4 (2025-01-15 12:07:39-03:00)
>>On Wed, Jan 15, 2025 at 09:44:14AM -0300, Gustavo Sousa wrote:
>>> Quoting Ville Syrj=C3=A4l=C3=A4 (2025-01-14 14:32:45-03:00)
>>> >On Tue, Jan 14, 2025 at 01:31:20PM -0300, Gustavo Sousa wrote:
>>> >> Quoting Jani Nikula (2025-01-14 12:21:50-03:00)
>>> >> >On Mon, 13 Jan 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>>> >> >> The CMTG is a timing generator that runs in parallel with transco=
ders
>>> >> >> timing generators and can be used as a reference for synchronizat=
ion.
>>> >> >>
>>> >> >> On PTL (display Xe3_LPD), we have observed that we are inheriting=
 from
>>> >> >> GOP a display configuration with the CMTG enabled. Because our dr=
iver
>>> >> >> doesn't currently implement any CMTG sequences, the CMTG ends up =
still
>>> >> >> enabled after our driver takes over.
>>> >> >>
>>> >> >> We need to make sure that the CMTG is not enabled if we are not g=
oing to
>>> >> >> use it. For that, let's add a partial implementation in our drive=
r that
>>> >> >> only cares about disabling the CMTG if it was found enabled durin=
g
>>> >> >> initial hardware readout. In the future, we can also implement se=
quences
>>> >> >> for enabling CMTG if that becomes a needed feature.
>>> >> >
>>> >> >Doesn't this patch disable the CRTC, not the CMTG?
>>> >>=20
>>> >> It disables the CMTG and that's it for LNL and PTL.
>>> >>=20
>>> >> For platforms prior to LNL, disabling the CMTG requires a modeset;
>>> >> specifically for those, the CRTC is also disabled during the
>>> >> sanitization process (not sure if there is a clean way of forcing a
>>> >> modeset from the sanitization routine).
>>> >
>>> >I'm not sure why this whole global state stuff is needed here.
>>> >It seems to me that this should be handled more or less the same
>>> >as port sync. Ie:
>>> >
>>> >- track the cmtg state in intel_crtc_state
>>>=20
>>> The main reasons I implemented CMTG state as a global state were that
>>> CMTG is not a exactly per-pipe thing and it could affect multiple pipes
>>> (A and B), at least not on pre-LNL platforms.
>>
>>I suppose. But it doesn't seem to be fully really independent
>>thing either especially given the dependency to the port PLL
>>and such, and that's all handled per-pipe.
>
>To make matters worse, it is possible for CMTG A being driven by PHY B
>and vice-versa.

So... I'm trying to come up with a way to handle CMTG state as part of
the intel_crtc_state. I have some questions that I was hoping you could
help me with...

 1) For those pre-LNL platforms that have a single CMTG, what would be
    your suggestion?

    I was thinking about keeping the state on pipe A's intel_crtc_state, bu=
t
    then how to handle when pipe B's eDP TG is sync'ing with the CMTG?
    Should we just pull in pipe A's into the atomic state and deal with it?

    If it is just transcoder B's eDP that is hooked up wit the CMTG, pullin=
g
    pipe A into the atomic state only to handle the CMTG seems rather
    unnecessary to me. Just accept it and live on?

 2) As of LNL, eDP A would sync only with CMTG A and eDP B, with CMTG B.
    So, I guess having each state in the respective intel_crtc_state
    seems okay here.

    If we were to encounter a CMTG dual sync mode (is it fair to
    consider that a possibility from the GOP?), since only care about
    disabling of CMTGs for now, I guess we do not need to worry about
    turning sure the secondary CMTG (which will also be disabled) into
    primary, right?

 3) There is also the case that we could have a CMTG (the single one in
    pre-LNL; A or B for as of LNL) being clocked by a PHY that is not
    being used to drive any transcoder. Not sure we could expect that
    from GOP, but it is nevertheless a valid configuration.

    We probably wouldn't be able to disable the CMTG during the initial
    modeset commit in this case, because we need the PHY up before
    accessing CMTG registers, and such PHY would be already off because
    of our sanitization routine after hardware state readout.

    Since our driver doesn't even model the PHY being active and not
    driving a transcoder (to the best of my knowledge), should we keep
    this case to be dealt with in the future?

--
Gustavo Sousa
