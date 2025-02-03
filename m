Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE548A2604B
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 17:37:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E35910E506;
	Mon,  3 Feb 2025 16:37:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WUlwFsXg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BA9710E504
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2025 16:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738600665; x=1770136665;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=vCp3K5cvFJf945KjAcXG97WggZCGamnEkqq2uOhZqkY=;
 b=WUlwFsXgkX20djHZ+M63XpDUijecaGF7crL02UJMzvD0fNcmRlnvaKzF
 U7G57V5HxNtTdTXaJ3k/Vt0XM3BShI2mC9MxhnwLqRYErs5Ha4gDlI+p5
 zznppT/tc7w3daKu+qMr4eSFSWp+jW6XmiTBqaOVYBevxopJIrWTirE9h
 RTzQmv1xuBFzBS1zs7xA/zzsbv1za2fVnulkU3o3sasiU8XLnO00d44IY
 m2deFS6+lC9lfEBNCRodoY8+mhUkcvwF+3Lae7rdFwS/qCgJ8kituThKY
 BvVaNr9p/aZlFTBE7MBJHndq9PjOC4qcrBnP9/LF8vTmjN4k+gmvxdklj A==;
X-CSE-ConnectionGUID: vogxNFp3Ryi9wYOuqAfRkw==
X-CSE-MsgGUID: G6L4KHmTTrGIBCDAhJ1l3A==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="43025437"
X-IronPort-AV: E=Sophos;i="6.13,256,1732608000"; d="scan'208";a="43025437"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 08:37:30 -0800
X-CSE-ConnectionGUID: NHpUVo1wTq2SS+S2iYJKvg==
X-CSE-MsgGUID: hF5bwPGNTGmYVRJ5YGEHMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="115484504"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Feb 2025 08:37:29 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 3 Feb 2025 08:37:29 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 3 Feb 2025 08:37:29 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 3 Feb 2025 08:37:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gl9DejyGoqSOOkZskY5k1M5wxm2Bat3iya79geq0z6QVGo996nv24anHjUHsEKN0Hp/zCDeDxZZrjTm1T64AforS1BIhmHEP8oXpxjWjyCUjxe0UlDz1PVn8wxOIJfF1J5eStijuir0HOYWg+fIIj+Xk60HJw7pZsiQnUMSt15Fwx2+phD8Ruj6OaHA3C4jWFMAHaVfBx5W1Bk9O+QmkG9EzPC7SHfMgFORzVsylr0bRz6AETSqfMNym4vKKR2paUY4Rcw0MjM8hxtmxcuyp0zZe4Il+5OJmAVl+ml/s2NF8ZMXOSLrrA60haqO8TzpQsPYjk1JpPdaPfyD8bkCAYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sFlq3EV8iv5fG2BdO0fpG0xERRgYWpS1NnR2VKlmBtI=;
 b=fd/821wHigeN3LU60qq9MkBHfFLuw3cKPx5fgbrrwf4KWSOhmcgCnVQyPgmYaIu6N6LbUUJAkv9M1hcy4wdReAjCPyonLGN2tPFmZagBaY5xBWyS+KU3ABdva9/X9rDlIaeZwmTa7hFDdWn1VX7UTtHcHHXDWao5RWaC/HOMrI0MXjkI4o8u8h4G42IS8veJMUawr6yx+QAqppyx6kIoxN7HhSRmsFVvXsi4SJUD+IRyLwjCOnJ6KSLKuBnZT5Hcr4PzL8Y2A+AawwdzucvAxL374FLXt1XPhJFiUJTpW3zyUbH/lXKlAvZDOW7E+vGaYNQYRTB5keY0mkJ0dzjYMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA3PR11MB7581.namprd11.prod.outlook.com (2603:10b6:806:31b::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.23; Mon, 3 Feb
 2025 16:37:21 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8398.021; Mon, 3 Feb 2025
 16:37:21 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <Z6DdQuYe1Q0Pu4Fg@ideak-desk.fi.intel.com>
References: <20250203085613.236340-1-mohammed.thasleem@intel.com>
 <Z6C5-qxVQTYB3LHc@ideak-desk.fi.intel.com>
 <173858999403.77773.2784787564938835855@intel.com>
 <Z6DSC6Z1q0nsd7MF@ideak-desk.fi.intel.com>
 <173859479977.77773.12623605896722676495@intel.com>
 <Z6DdQuYe1Q0Pu4Fg@ideak-desk.fi.intel.com>
Subject: Re: [PATCH] drm/i915/dmc: Add debugfs for dc6 counter
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Mohammed Thasleem <mohammed.thasleem@intel.com>,
 <intel-gfx@lists.freedesktop.org>
To: Imre Deak <imre.deak@intel.com>
Date: Mon, 3 Feb 2025 13:37:17 -0300
Message-ID: <173860063749.77773.17599385587852958412@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW3PR05CA0009.namprd05.prod.outlook.com
 (2603:10b6:303:2b::14) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA3PR11MB7581:EE_
X-MS-Office365-Filtering-Correlation-Id: 6a8b5b0c-9ac4-4842-accc-08dd447107ab
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dmV3YjZTRWdvT3NaZTdRMHBhU2Y0VGp4M3ZnZTlROE9CUFNMMFA4M3ZvczBn?=
 =?utf-8?B?QUFHWHc0SkJmRW93ejl6Z3FaSHN6bGdyK2J1d2lvU20xa3owTFBYMzMrcEJO?=
 =?utf-8?B?WENPVzZ0UmdmZW1FRFJPYW5JaHBlU0FjU2hUejBmcUpoR21PVTVNb1JtVU1s?=
 =?utf-8?B?SS8vNG82UWhDY1ltYldQRlNvSCtBa3pkVUtpZkgzTzdNZGVmTTFQb1l1RUJi?=
 =?utf-8?B?RUhkd2VSUVNVUjFZUm10U0Y2R0RYSkQvM1BuakRpdUd6d0Y1YTRhMmVzbWpE?=
 =?utf-8?B?elJIWTRVTGVKTkdxSVdrV1lKNzRUMy9GV1EzRGNBZjNZYVNVazNDQXVQUDVx?=
 =?utf-8?B?YU5pOHJ1S3BzdnhuMS9kSG1GTEM1eGNQODlVUzYreWZVNGFlaWh6QkhiQnZB?=
 =?utf-8?B?SStSemFXL3U4bDJVOStSODRqRURialBLUEd5NWM4MEgwWEdORmFXekVLaXVw?=
 =?utf-8?B?KytkTHlpY24weXNuV1p1cXVYTGJhS1VobjQxb2hoNjhCSU5qdnl5bXRZZEdG?=
 =?utf-8?B?QUt6eUtsMDd4Q29kL0w1bTVNSHdCNlQ5SW92bENra2FTYWJYQ2I5eTl0Y3l1?=
 =?utf-8?B?OEtFcENkYURROEF0ZzlteDd5ZHdxa2VTWEZqeFY5UVpZdXl6bmpmVkYxN3FX?=
 =?utf-8?B?dDVWd1lGdmVCY1lEQlZGeE5KUGFKbGFpeFZPTU1VUjZzMnpOOXdWUFp2a0Ex?=
 =?utf-8?B?MnVUU0luVXVjc0VYNTRwSmRVeUxaeG5FcVcwWkNrQjV3K01ta1hCYitiQ0Uy?=
 =?utf-8?B?RzUrS3VtK1V6L3kyVVpnemFOYUsvdEoyaVVSMFRCenRrbGNPOUlyQ2NFL2lF?=
 =?utf-8?B?ampZOWNHc0FEcVhETkIyR1JuWXFIY2c1amZmcWk4dmFVaXVMUm4wL09ZaGk3?=
 =?utf-8?B?QnI2MFdxQTdsYXllNFltdWF0RUhiOFI1YzRaMWJsKzAzMnBzUzBvTnVPRzVK?=
 =?utf-8?B?NlNoV2lESXlEUWdQN21DK0dUMjBja2Y5QWRLK0dxMC9BVURuUlowVUV3MEJT?=
 =?utf-8?B?RFk5OFowNUF5Nm5YbHFsUzkxdzR6c1EzSlhnWnZ3ZUxweGtRYzNoa3o0UWsy?=
 =?utf-8?B?UGd3b3BjVlVXc2dJdUlIa0JFRmFzQVZSbmNsdUM1WGRBYisxU2FaUkd3VEY5?=
 =?utf-8?B?N20xeUEzMGNwdUhBVWgyOElKYjY2WU1rOW1uSzViYm9za0srT2d2b2YvS2Fy?=
 =?utf-8?B?eGtkUFY1UWhDVEg4YW9kYTRkTXZNK0RFUHc5bWptTlRYYng1YUErdjNuVzU3?=
 =?utf-8?B?blR5bGhmVXphWk5LS05VWlhOOHV1WkhXM3VPNkwzZVhuV04wblRGOENPMVBv?=
 =?utf-8?B?Y2MwVXB1ZERzRk95Q0xKYWhmSzJYK25sQlZQdWtOMno5MXI1RDRrZG4vdnM2?=
 =?utf-8?B?Q1R6cFRkazFJUVl5N0s5N0IvdWUvdkNnZFM4OVZuQzRHd1FqSXZscHY4dnpU?=
 =?utf-8?B?MkZnL3R2QnFIOUVsa0wyYWNKcFpTYWs0WTZXSjhFK0JoVVgxQlNWZVdwdm1a?=
 =?utf-8?B?SXVRSTFScXQxQ3MwT2VJV3FnYzQvbXJibS9vc1QvQXowc1l6b1haelpqSCtO?=
 =?utf-8?B?SGtOa0U2eUhITHlqRTN1T0psRzc0TlpwaCtGWGtVSG1vQTFkOVBDRDVwN3Fo?=
 =?utf-8?B?Yk00NUkzWnQ5R3dVeVZoMmJ1bGFkaitMbm5Ndkk0SGdoalUxcWR0djZVVWpP?=
 =?utf-8?B?eWVUd0dod2lMYmFLZkVtT3M4cjFDR2RLYXlkb3hwZ3QrK1JPL1hqZnFZK0dX?=
 =?utf-8?B?QTk3SEJ3VnBBazhnTUMzeTFxOVFPL1JFSU03RGkyTkNUUllKZll1N0ExY3BO?=
 =?utf-8?B?OGV6dVZpRTBKN3ZyNmJUZk9WNUxOTG1NWTRJRlVCczhvYmZJZU9CZDE3Z1I2?=
 =?utf-8?Q?xJIxPDAgfzKJB?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bi8xVk9QWmEyRWNhRGhKS1VrN0xUcll0b3NWVU0yWHQ5UkxWZDhsU2ZnMWlK?=
 =?utf-8?B?WnBWWm95K3pGZjh2NUFhT080YUZ4ZWpnbzJUcnJpTGs1SjVvWEpIV0c2TWc0?=
 =?utf-8?B?Z2JjQURGdWtVbExkK2ZackNTS3JoRGErNzZFQnBrUnBSN3B3dXNUWVJvV2Vk?=
 =?utf-8?B?K1RpS0R5VUhvRm9aMis2TUVwano5bWg1UXk4WEl4T0lhZ2FDN3p1WEV5SFdX?=
 =?utf-8?B?c2xXa09MMVNNY1hNQ2VUNGtwMzEzM1ZteEgwNXVUc3lIU3RWTWRsb2lpdHFo?=
 =?utf-8?B?RzUya2tQTmFxWC9xcXhzN1pDUUN3V1NQd2kweExJcUNvY3NjTng3a1RsUnZv?=
 =?utf-8?B?QnJFSTBEMmRCcWhGcUxEejZseE1CRDdlb2N6VDQ0akgvUjh6ZWN4RklPYndi?=
 =?utf-8?B?MGNoK3hYNUwveWlGU1RvVCtzSGE1enVPRGhTMFFxT2N6WDN4azJCK3R3VUtH?=
 =?utf-8?B?T3RKaHgwdlZUTDFjeXc5SVN1S1BoYldpYk5ick00Umx4N2ptVFhmVmJTS0JT?=
 =?utf-8?B?OXl4OFNpSVUwTUh3bjlNTkZ3eVVWUDNhcjRPdytWamh2d3dSRW5VNFpRUy81?=
 =?utf-8?B?UHhsSk93blltcUg1RDRDUFJ6OW5aaWpXMlNQMWlMVFBtbklwRU56b1pEYXlx?=
 =?utf-8?B?YzVRMDRUZ0ZqMGNYNG8vbUQ4Y1dRNWMyQU9GQnNrM2FCL3dRK1RUejdxL0ZL?=
 =?utf-8?B?Y2YrcVp4SXdKRmZXVTZsQUFTakh0KzN5bE0rMDVSTE5TK0ljSW1WOElDeTF4?=
 =?utf-8?B?VjMzaCtGRUlRV3B0QUhpZG0xaEw5WTJLZHJYVHBGamp0aldYMXR2MWJKUjFG?=
 =?utf-8?B?czN0QXI2OHE2cWdTTnlyZS9vbElPekgwemMrTlVOMHo2VEZNZVcybGROZDg3?=
 =?utf-8?B?M0IwS3pjN2wvdUpHZUovU3kyVGxFdTVoSE5DSFljTlRFQTNFUjM1S2UrdXlZ?=
 =?utf-8?B?UW85Y2ZwRHNHcjMvRmZoZmNIcFRTRVhQaWtWVXVlaTJBZzNxdDB2ZURNNENa?=
 =?utf-8?B?MGdoMnlpblNGUTVobmVoQ1Bya3N3VVFHYWVnaTd4YXIveUR4azVFM0Z3ZDhU?=
 =?utf-8?B?VHM5QzlVbkRsR1FXNCs3S01NSEtYaGNTOW5tVlhsOW9UOVNVdjA3ZnM4cFg5?=
 =?utf-8?B?U0dSeXoyTElyUDdENE9UeEhqNUl4Q2orRTZJa0pTVUVranY4cFNjaXhyWlls?=
 =?utf-8?B?V0Qyc1kvMkJEUVF0UDRjZnpIUVRHNWxDeG9aRmtqc1RLcHdKdHNwekJDYlpG?=
 =?utf-8?B?WmpZV0M5eWRrT1JYUzA3RnAwSzBjN2dRVzVXM1cvUWpkc1FteEZIMkV0VDhG?=
 =?utf-8?B?bTRua1dzVDJwS2RPcmJtSUQ4aGI3N3dtbGJVQWtDZXo5WGlkOHVhSUpRUGNB?=
 =?utf-8?B?V2plSjcwbE9DVlExU2pPaXlmRThOQUJwZWFxaittUUQxVG5rZVJNVXdkSC9R?=
 =?utf-8?B?VnlJQWppRnV5M3Z1UThtbUhSa2wwSGtiWi9lcVd5am5IU3ZVOHFsWXJsaHl2?=
 =?utf-8?B?TWkrMGJuaE5VYjR0WjlwaXpsMWkvREdJZ29iRHFYR1dLQVR5Mzg5SVB6MXBq?=
 =?utf-8?B?TGJDa2hPbGM4Uit6UktNRWNMZFZGMkdCZ1pubWJDdWlUVWVLbHBWdGZJRVR0?=
 =?utf-8?B?dmdvaWJYVzhCQXNJWGZ1SWRhdzV2dHFzdHAyN0s0VlJoMVFPVjVOZFBIRFJ0?=
 =?utf-8?B?YnRGaE1WR2tkQzI5bTF5UTBDQTRaMmhOUUE1NG1mNFIyZStuNDdkMTV3VW0x?=
 =?utf-8?B?QjdSMVFqaktvVGg1NkhncHlidnhaT0M5NUpFTi9VREdDakEyRTBGVWVaV3BM?=
 =?utf-8?B?MHRFOHNNNFJWYXV6cFhpZHdJaDFuMVhoZmdBR3F6UGJLVUlNRWRuWjJndXM2?=
 =?utf-8?B?ak1XK2hCRktxRG1CWDVlWmh1Z3pOTmRBaTNnSWFUZXFQaVV4S2t5b3VRNE9h?=
 =?utf-8?B?bnhNc2UzVkRDSDQ0Mm5vTG5XTFovemtwU2xmaHY3c0xQc0poWi85NXFNd2RY?=
 =?utf-8?B?Q25lWDYvam9sZVc2SVVLVjdReGppdkIrdWg5WmZTQnMxVTJZWndTRXBVSFFJ?=
 =?utf-8?B?ZHc5Zm5GcGtqbDMxa1FmNktiNitIZXE0K0NjaFFlNzNQNDhsdmEzTVJpdEF1?=
 =?utf-8?B?Q0JpUWtjb21GRkRmYWlhWDJ4V25CeDVaQjJ6dlVFTWg3dDBpM0grZU0wNFFC?=
 =?utf-8?B?aXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a8b5b0c-9ac4-4842-accc-08dd447107ab
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2025 16:37:21.1272 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l1O2NmrdhJew+T1KDKohp3qrnC3hMl70y82h5tlyCQneJqvdCR7r1w3Iqf10RN+cL8Tc4WPgwLgLEL0nE8cGbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7581
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

Quoting Imre Deak (2025-02-03 12:14:10-03:00)
>On Mon, Feb 03, 2025 at 11:59:59AM -0300, Gustavo Sousa wrote:
>> Quoting Imre Deak (2025-02-03 11:26:19-03:00)
>> >On Mon, Feb 03, 2025 at 10:39:54AM -0300, Gustavo Sousa wrote:
>> >> Quoting Imre Deak (2025-02-03 09:43:38-03:00)
>> >> >On Mon, Feb 03, 2025 at 02:26:13PM +0530, Mohammed Thasleem wrote:
>> >> >> Starting from MTl we don't have a platform agnostic way to validat=
e DC6 state
>> >> >> due to dc6 counter has been removed to validate DC state.
>> >> >> Adding dc6_entry_counter at display dirver to validate dc6 state.
>> >> >>=20
>> >> >> Signed-off-by: Mohammed Thasleem <mohammed.thasleem@intel.com>
>> >> >> ---
>> >> >>  drivers/gpu/drm/i915/display/intel_display_core.h       | 1 +
>> >> >>  drivers/gpu/drm/i915/display/intel_display_power_well.c | 2 ++
>> >> >>  drivers/gpu/drm/i915/display/intel_dmc.c                | 1 +
>> >> >>  3 files changed, 4 insertions(+)
>> >> >>=20
>> >> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/d=
rivers/gpu/drm/i915/display/intel_display_core.h
>> >> >> index 554870d2494b..cc244617011f 100644
>> >> >> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
>> >> >> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>> >> >> @@ -376,6 +376,7 @@ struct intel_display {
>> >> >>          struct {
>> >> >>                  struct intel_dmc *dmc;
>> >> >>                  intel_wakeref_t wakeref;
>> >> >> +                u32 dc6_entry_counter;
>> >> >>          } dmc;
>> >> >> =20
>> >> >>          struct {
>> >> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well=
.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> >> >> index f45a4f9ba23c..0eb178aa618d 100644
>> >> >> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> >> >> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> >> >> @@ -869,6 +869,8 @@ void skl_enable_dc6(struct intel_display *disp=
lay)
>> >> >>          intel_dmc_wl_enable(display, DC_STATE_EN_UPTO_DC6);
>> >> >> =20
>> >> >>          gen9_set_dc_state(display, DC_STATE_EN_UPTO_DC6);
>> >> >> +
>> >> >> +        display->dmc.dc6_entry_counter++;
>> >> >
>> >> >AFAIU the goal is to validate that the display HW can reach the DC6
>> >> >power state. There is no HW DC6 residency counter (and there wasn't =
such
>> >> >a counter earlier either), so an alternative way is required. Accord=
ing
>> >> >to the HW team the display driver has programmed everything correctl=
y in
>> >> >order to allow the DC6 power state if the DC5 power state is reached
>> >> >(indicated by the HW DC5 residency counter incrementing) and DC6 is
>> >> >enabled by the driver.
>> >>=20
>> >> Yep. That's what I learned as well when looking into this stuff a whi=
le
>> >> ago.
>> >>=20
>> >> >Based on the above, we'd need a DC6 residency counter maintained by =
the
>> >> >driver which is incremented if the DC5 residency counter increments
>>=20
>> By the way, the counter that we currently have in our driver is the one
>> incremented by the DMC. I was meaning to send a patch for the residency
>> counter maintained by the hardware, but have not yet... In theory, that
>> one should be more accurate, but would require us to enable and disable
>> that counter as the IGT test starts and finishes.
>>=20
>> >> >while DC6 is enabled. The dc6_entry_counter in this patch is not eno=
ugh
>> >> >for this, since it doesn't take into account the DC5 residency. Whil=
e
>> >> >user space could check both dc6_entry_counter and the DC5 residency,
>> >> >that check would be racy wrt. the driver enabling/disabling the DC6
>> >> >state asynchronously.
>> >>=20
>> >> I'm not sure doing a driver-maintained dc6 entry counter would be
>> >> something worth implementing. Even if we have successfully entered DC=
5
>> >> and, in theory, DC6 would follow if enabled, this would be a syntheti=
c
>> >> counter and it could be masking some hardware bug that could be
>> >> preventing DC6.
>> >
>> >According to the HW team the DC5 residency counter incrementing while
>> >DC6 is enabled is a guarantee that the display is configured correctly
>> >to allow the HW entering DC6 at all times. IOW this is the HW team's
>> >suggestion to validate DC6 at the moment.
>> >
>> >> On the IGT side, we could just skip if we are on a platform that does
>> >> not support DC6 counters, at least while we do not have a reliable
>> >> alternative way of checking for DC6.
>> >
>> >I think IGT would need to validate DC6 in the above way suggested by th=
e
>> >HW team.
>>=20
>> I'm still inclined to think that we should defer DC6 checking for when
>> we actually have a way to verify it. The way suggested above sounds
>> like: *trust* that DC6 is reached when DC5 is reached with DC6 enabled.
>>=20
>> In that case, just checking for DC5 should be enough for the time
>> being...
>
>That's not the same as DC5 incrementing while DC6 is enabled.

Ah, I see.

You mean that, with DC6 enabled, hardware/firmware flows for DC5 might
be different, right?

Yeah, that would make sense. In that case, maybe a flag (or counter)
from driver that we got into DC5 with DC6 enabled would be helpful
indeed.

--
Gustavo Sousa

>
>> I won't object further if we do the other way though.
>>=20
>> >
>> >> It would be good if we could detect that PG0 was in fact disabled, wh=
ich
>> >> I believe is a stronger indication of DC6.
>> >
>> >It would be good to have a HW DC6 residency counter, but there isn't on=
e
>> >at the moment. Other ways may have a dependency on other, non-display H=
W
>> >blocks, for instance in case of shared clock/voltage resources, the
>> >display functionality validation shouldn't be affected by these HW
>> >blocks.
>>=20
>> As far as I understand by reading the docs, DC6 is DC5 with PG0
>> disabled. That's why my suggestion above.
>>=20
>> --
>> Gustavo Sousa
>>=20
>> >
>> >> --
>> >> Gustavo Sousa
>> >>=20
>> >> >
>> >> >I suppose the driver could take a snapshot of the DC5 residency coun=
ter
>> >> >right after it enables DC6 (dc5_residency_start) and increment the S=
W
>> >> >DC6 residency counter right before it disables DC6 or when user spac=
e
>> >> >reads the DC6 counter. So the driver would update the counter at the=
se
>> >> >two points in the following way:
>> >> >dc6_residency +=3D dc5_residency_current - dc5_residency_start
>> >> >
>> >> >The commit log would need a justification, something along the above
>> >> >lines.
>> >> >
>> >> >>  }
>> >> >> =20
>> >> >>  void bxt_enable_dc9(struct intel_display *display)
>> >> >> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gp=
u/drm/i915/display/intel_dmc.c
>> >> >> index 221d3abda791..f51bd8e6011d 100644
>> >> >> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>> >> >> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>> >> >> @@ -1293,6 +1293,7 @@ static int intel_dmc_debugfs_status_show(str=
uct seq_file *m, void *unused)
>> >> >>          if (i915_mmio_reg_valid(dc6_reg))
>> >> >>                  seq_printf(m, "DC5 -> DC6 count: %d\n",
>> >> >>                             intel_de_read(display, dc6_reg));
>> >> >> +        seq_printf(m, "DC6 entry count: %d\n", display->dmc.dc6_e=
ntry_counter);
>> >> >> =20
>> >> >>          seq_printf(m, "program base: 0x%08x\n",
>> >> >>                     intel_de_read(display, DMC_PROGRAM(dmc->dmc_in=
fo[DMC_FW_MAIN].start_mmioaddr, 0)));
>> >> >> --=20
>> >> >> 2.43.0
>> >> >>
