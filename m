Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E329DB07B51
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jul 2025 18:38:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6A2810E747;
	Wed, 16 Jul 2025 16:38:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NnqoXn9+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E47010E749
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Jul 2025 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752683896; x=1784219896;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LWW/0aZ12UbrHgUxzSuhgh9lEkt/k4jBPFagbAt99DE=;
 b=NnqoXn9+pgDA4XScum9TRZ+WVIrP1hi9KzaQD3nBGwC1n0Ql1+BJZaZ5
 1NxGsXTjEnrQhZtUK4ow6QC1kA9i/RVNxAM1t6i/4rsf+sB2lg0I7ePcV
 sOWfMk2w0/1c2w4mayfkRFIFHyv/sIJHdkkZx2/C7vj3cDc80YhGSjUHl
 BYWSnbFQSPtytWKrDGZ1qg/AMZtGWWvhDdgxC9Plf5FzK4zQ28yyZL0PI
 0Lac4Hicw1xrvHnDq6EYVB9AVZ8Jx+G8/zmrS9aUrNc6oWREjKx5B+H4E
 2xMAtp3+PaPnTnbmW6auWDjIs5aznOomHg8UdEftBnxRUt2E+P+3T89z6 Q==;
X-CSE-ConnectionGUID: UMEY/PhvTEO6pO2jqXN5vw==
X-CSE-MsgGUID: hJ29Ug7gTDOzfpOU9o/4EA==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="65508905"
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="65508905"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 09:38:16 -0700
X-CSE-ConnectionGUID: u3aI7H1fRRejEWd4f+EoXA==
X-CSE-MsgGUID: WBxy9DyZSlGJBFCLv9eP+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="157642285"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 09:38:16 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 09:38:15 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 16 Jul 2025 09:38:15 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.79) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 16 Jul 2025 09:38:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ysfh8SMQg5AzFBBdA8a1nUT39H3S3Uz4x2oWsBzLdPnXMrKnUFOyExRYgDeo8IaOb9e9Ef8TInlWai33irr1IDrhaxSAUfEP/FQgnY5UNdaiVmtFvDokOklp34S30UFWlY16+g3F1IJ7NS6qXixpYfYQXRHhXFp/TWzqo5OkflfyXX/Tpuw+OTyxUmEBvzKSxn71aPnns/qQQizEV6F9dNxslc/pWJbUV85BJxhn+h5O6SYnkJAnkPx7n24kTPAdkLaGgXJYzvkcXGaMQjyIuLpwGoStI0gc4Sl36xLjkooUEV13tnYqKYfe7uNUNCIIH00VEHAypzwgtCcUzhbe8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0kraljwOlmDYMc6F63Xpd3fPIHaHZAZImNi1paVuwCA=;
 b=NcbyTGpYaTcD5hr3ZaZeXrrDd6DxP0CXMs2NE/oqGHDcF/10iv7vMXLpqffmEP9CQs2YfAAzTYqrSKwkacTTPB32/WbljGMWl1Q7hXJZrDJt62GZgb2+i38tHqeMt4en8DAioLIWuSURKa8NLLapRZgeV9zid0jfeG5hkqms4eMWkJxtUtMnrMXqm0VaJFJBK7IL03pqOrWhgfDXCEXppAqr03Fs5UROJB+FUZfxI3jpK3bB2SpSjEUuu2rL+Qhq46oy1qI8FdsnGL/F+3eNbkxajrGZxGUZ4ZWjGAfNitU0/29pj/Ywuc3J3Xm8WKz9sLJ0iQXMkbOHYUb4s4sgyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by CY8PR11MB7316.namprd11.prod.outlook.com (2603:10b6:930:9f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.32; Wed, 16 Jul
 2025 16:38:12 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::d720:25db:67bb:6f50]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::d720:25db:67bb:6f50%4]) with mapi id 15.20.8857.025; Wed, 16 Jul 2025
 16:38:10 +0000
Message-ID: <5d588a32-fbe5-41c8-8cd5-0d53b1b44637@intel.com>
Date: Wed, 16 Jul 2025 09:38:09 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] mei: me: Add exported function to check ME device
 availabiliy
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
CC: <intel-gfx@lists.freedesktop.org>, Alexander Usyskin
 <alexander.usyskin@intel.com>
References: <20250715225959.488109-4-daniele.ceraolospurio@intel.com>
 <20250715225959.488109-5-daniele.ceraolospurio@intel.com>
 <2025071622-frequency-sneer-0ad9@gregkh>
Content-Language: en-US
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <2025071622-frequency-sneer-0ad9@gregkh>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0099.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::14) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|CY8PR11MB7316:EE_
X-MS-Office365-Filtering-Correlation-Id: f4b9e075-3cf6-4cff-053a-08ddc48726af
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MStWdzNxV1lIRUVFOXoxa0IveHJXK3Nqc0g0WTJyVHNibE9mQ0g1VXBudllt?=
 =?utf-8?B?ZlB2UkREOEMzNTZJZTltcTA2WVlDa2tWaU9EUUtBemVrTlllV1R3bnhNeEFJ?=
 =?utf-8?B?UDJETDhMQWlKTnArT1FNL2U2T2VWTUJobFRxWHBnek5nbmd0M3l0djRHdTdD?=
 =?utf-8?B?RytGaUJha1VHR2pURFl5V0ZRYnI4cjVFT3RtTFVmR2U4UVlnTE50SlBuZFky?=
 =?utf-8?B?T1QycEd1eUVVT3MwWGNoWEtzT0sxNlg1Y1NNTzhpVVo1QmlES0lmS1pubGtk?=
 =?utf-8?B?d0hQVDEzNmFrdG1UbmE5aG9pcm84NjlJUVVwUE1LS0h0MTNkTmhEZDdpUWMw?=
 =?utf-8?B?dWFKdllvUHNKZjVHRDhZNVg3NW5pZGNXeG9QQ29idHVjakNIK2J5WWVtd3Zw?=
 =?utf-8?B?SDFnNzZabVpBMncrRlhDMWZwV0N6OFV3RmdYaTc3OGw0bngyNWQ0c0R1K0ky?=
 =?utf-8?B?MHQwZ3U3TllCaUNzNENpNU10NER4M0ZqcXRLTSt4NUh6Y0VMUWVwL2tBQmdX?=
 =?utf-8?B?ME1mWVZic2xjOHg5WHNYbDJ6cFZGSms5MWNNWVV5MGYrcGl5TkdnQnR3ZEw1?=
 =?utf-8?B?R01kckhNdFpHWDNuQTgrK1JIbGtnTWpsNHdrMnhvclJkZ3hlUWY2Sk9xckhL?=
 =?utf-8?B?WWk4b2VkckhteUE3aU1zaGoyaEo3OHlnQWppK2Z1dXRMYjczTmlDZm0wMTZP?=
 =?utf-8?B?SExLZUpyYjBBMDIxV3ZSdTJKNHRzWGhJRVMvTDMrWVdHUEh3SjU1V2dHdXhF?=
 =?utf-8?B?UDhPM1I4Qzl4NjJIenVRYkNGU1o2MlhBOWV4VTk4VTdsa2ZtRGZKTzRtSHl3?=
 =?utf-8?B?UXlpdUliSEdLanArUSsxOGpTZG9TSzJaMncxZU5LdThvQVB2NzlobHdrcHFB?=
 =?utf-8?B?MmJuRWpLVy9iQlFDZXowcmlVeGpOQllUcDNSbmlWUzZWRnVNNkJRa2RIQU1i?=
 =?utf-8?B?VEdmNDFxVHJ2aFpMYTV6N1RHeG05aUNsR0l6SWxHaGhGY3NQa3d1T3lzWGRZ?=
 =?utf-8?B?akxFb2k2M251bERyUHBFM2lMWnNPZHpHbTN0NWZBUjEwc3BwdlBseDBTakxK?=
 =?utf-8?B?N1NNdCtOU2ZzSFdqWGNjdkFNb0NOOUxqM2lFY09CT2E5UHg5Wk9SQk5jcEJs?=
 =?utf-8?B?REFMdEpwWTJvVDB4YnU3bzRaakE5VmVPdkhCNTVYSHZaVFBvQkdaNTVmUlVs?=
 =?utf-8?B?NGJvM0JPK05NVTNGYzNwTlJFVU9uczg1ZEc4Q3BNNlI2UFpHUWZaanlTME5q?=
 =?utf-8?B?UzlYazV4NWVSSFp6RUxKVml5WWVoazBVSUc1QmxVS1lGUTZxUWo0RktFd2Ir?=
 =?utf-8?B?Y1pEZGE5SmxVdXI0bUVJb3JRc01Md3RkbEZOa0dZM3JIN1J0d3VZd2Jsaks3?=
 =?utf-8?B?OGlkaUJlRWhRcEYzWlNiVFo5enYzWm96amEyR1lYWUhYa0ZXaTAyVVh1cnJL?=
 =?utf-8?B?MHdOUVdlNXJWWi9RcFdmYVBEREhieThtZzRlWDJIK3RmcFgxTnRUdXdYRVBM?=
 =?utf-8?B?U0ZZeVpydEFaVE50cGxVaEdnSmEvYjVvMVdZM0xjUGV4dWF2VWtPTmRHaG82?=
 =?utf-8?B?L2pUZDVFZnhSdlZ6eVcyd25XbEUwOTcvYmMyT2ZxTVVlaW1Pc2hXZGdQOFlt?=
 =?utf-8?B?cSt2enAvcjFEd2xROEdUVUExclhhSHJPR1FEQ1VRZS9HY21yVlBUTGZWR2JK?=
 =?utf-8?B?UllWY0tnL0d0cEM5OVhkL2M5SWJKUmprTnMvTVhHWDVUNUlLUXBRcUQzZWxG?=
 =?utf-8?B?cGdvdVFRSmpDa3dPOXluQjV5cU1FWkNlejZDcmx5Uy8wVWZvMm5NVDFBa1ZD?=
 =?utf-8?B?OGtxWTNnR1JUZUhrU2JHNU9ZMmdyOEpEc01zd3BRUG1ITnZKV1kyMTUwTytG?=
 =?utf-8?B?TzJhL0xwcncrTm5CWFExaWlWdnAxWWhna1RtbTJEWHBkaUd2Q2J2UWNieFZT?=
 =?utf-8?Q?dcEw59S4ssE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SjRQeVlZVGhJcHlsSXpCRVZXVGtLcVAwZUxsbXF3K285dzJaVDFicEhkK3d1?=
 =?utf-8?B?c2s3QkhKYktVQ1VMTUlMK0pHUlVMbFhOZURDWTVaUUwwbitSUnhGSzRUb0hP?=
 =?utf-8?B?SUxKNCtiVjhUenJiUkpoYS9ZME4zUG1aSU54aHlldzVpV2xDL2twWThWa1hF?=
 =?utf-8?B?Umc4N2xzU0VWM3Q0bjFWL0x5aVNuQUE5ZVJqVWxGMzY2R0lWY0Rab1M4ckZo?=
 =?utf-8?B?ai9rcG5DT3JBMmZ1ckFpK2JrR2JjcDd6Y2J6S2xKNnVWdU1SaEJmTHJnR2JY?=
 =?utf-8?B?SllzU2dsdmZiZUp3dGZDZjhVU2VXMGRKVEcvb2VLeXJqN2haWldrZUlWWlRR?=
 =?utf-8?B?V2xTMHQ2dlhSeXdwSG03TVBYdk5seWhHL0c0LzJPUnNqVXZBQUhVQ2YyQ0pt?=
 =?utf-8?B?eTMyL2VUTnRWeVJUL3pKRjNvM3ZNUjc3ZEFnNjUxYjB5eEJrMEVCekErTUtn?=
 =?utf-8?B?Umk5NmNUanljdzV2cmE0WE9peExzbjRXekJsUHVwaE9oOHNnMXJtZTFuOTRB?=
 =?utf-8?B?V0IyZy8yY282eS9DRzhGeC9pVFZoQXljaDBuVFRHMmxzM0hibzRmdm9kMjYr?=
 =?utf-8?B?ZU9WRXUrY2xMbDEwd2xBVWtodlo0S2FkWjNhcW5IWXdLL2gvb0VrclAwSm0r?=
 =?utf-8?B?QmdBSHE4VFJ4WlJ1d3JaUWozTEZwblJNSnJ3Q3cxQzQ0VDQ2Z0Z3UlBob1Ux?=
 =?utf-8?B?cUVHeEwzVFhqOUY0c2xkL2RPN3dHZG9VdzVYdzRWRlE1OS93UjdlMTc5bzdO?=
 =?utf-8?B?Nmd1RUMrU0kwWGJQbXk4eEtqaTBBMjZvWnZsdXAwOFpRTmp2R1VxTEZ4L25m?=
 =?utf-8?B?UGFjQVZhWS90UjFkM1FDV1ZLbWJOTHU4clJqemttSExHSDVkOFYvU2I1bkpP?=
 =?utf-8?B?L1hHVVZrU3J0M0oxTTJtMElJS3lIbWZmUHJZeUhCdkhLWE5JUEozSXpVeHpP?=
 =?utf-8?B?dFh6TXNWcVpXazFUd053VExIdzVxZm1oWDdRV1o1VUU3RkZ5YVBRUUp6UXRF?=
 =?utf-8?B?eEdNZm9GVFZiY01zN0dnT0ptTnlrTU5hN2RHWU5IOFk0UjZCVEt5NUdzVldR?=
 =?utf-8?B?ZURGU2VlVzVKTGtqeC85WXYrVkt2SzgyejlHdStMaE52c3ZnRDBuOWVzRXpC?=
 =?utf-8?B?cnNpYlFSam1ocm5TdUVGN25TT2l3TzNtVG5YaGdXSTJmMzVoMGdlRFFpNi9J?=
 =?utf-8?B?M0VUbGtVc0MzaGVyeXlPWk1vMitjSGdJTXBpUXM1d0M2SFVWSFVQd290VmVm?=
 =?utf-8?B?V21vbFJ6S3E3eXdvak1Gdm9zMnBrdUJ4ekZKUm1oa2RSZUFuOUpUU0REazJ0?=
 =?utf-8?B?OHpVNEhEVk4zZTBRT2V5cml4OTkrUUI0dnRtUXp0OTBFV2lnSlJaR256V3lJ?=
 =?utf-8?B?SXp2VnJKWTVGdU4xNk5lZFEvdU44R2xTa3FOejZSVFlqM0NSTVFLMFRBcGZo?=
 =?utf-8?B?c3JSbGhNZWhzTHM1VFZtZHNkQXNEYlBaRlJiTnR3VE5IMldhTy9hUlFBckNk?=
 =?utf-8?B?cHJRQXRQZXhTMnVwZWlvN1JKc1pZY1pxY2JQL2xLWDRJV3c4THpDcWVBbDQz?=
 =?utf-8?B?NEwxS1hsaXcyMTdNZm9wOGNhclpCL3Z5aHAvT2VtRlFWeDlXZ1F1TFJsNzJ1?=
 =?utf-8?B?NHFoWkdnNDljZ2NPVnlDSUZCWjZDQW5mNlVRTjBQWDg3TnlySTNScXF5bzdk?=
 =?utf-8?B?a2xDc0hPMFo5L2pEVFdndGRYTXZsT2hGZUh3Q003eFp3MjRMRDVic1JrZFpr?=
 =?utf-8?B?Skw1a3NKMmRKcDJpVHI5N2xwRDBkd3VWSExML1hjYStsaWF5ZVdIMUV2Z0JN?=
 =?utf-8?B?U3RzMVBkNmdKYWNBVkh3dDkyUXV5cnNFYXFaQThPaFUrYVJ2bTZUWWtPbXlt?=
 =?utf-8?B?Um9ncVJaeE1XQ0QxNUN0NFZWUDZDM1ZhNmpXNVlTZWZQOStueW00M1FZM1pV?=
 =?utf-8?B?RENkV1NoYjVKZGhwQ0ZkM1dPSlJ2b2VRZ1F6Q2NMRzRzY3AzVytrS0U2VDJi?=
 =?utf-8?B?U3lMeFRJTDUxOTE3YmRkVlpaSTlqeGVnMHZjRHYxZzQ3cEQ4cXBpZk40M0ZL?=
 =?utf-8?B?K2s3WE1VSGt4dGRzdTBKQTVTYkpVa2xWMnFUNEhUYlN6QXQ4NVNqRllLdm9F?=
 =?utf-8?B?bGVJMzQ0QUFhdnVBcFAzK1htOUpCZmRwMDJFR3VBdWl0VGZwK1Z5bFVEbE5k?=
 =?utf-8?B?c0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f4b9e075-3cf6-4cff-053a-08ddc48726af
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jul 2025 16:38:10.6543 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: npghQvnt0wT2x867kvkygaqwjo13TJ5d1EhKVTI+XUkIgFSLWdGSu4X1+/2o7Sksh+83UgaYHnZb6Wv+trsTakFrNhb1sswc1XvFPFzOBn0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7316
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



On 7/15/2025 10:10 PM, Greg Kroah-Hartman wrote:
> On Tue, Jul 15, 2025 at 04:00:01PM -0700, Daniele Ceraolo Spurio wrote:
>> The intel GFX drivers (i915/xe) interface with the ME device for some of
>> their features (e.g. PXP, HDCP) via the component interface. Given that
>> the MEI device can be hidden by BIOS/Coreboot, the GFX drivers need a
>> way to check if the device is available before attempting to bind the
>> component, otherwise they'll go ahead and initialize features that will
>> never work.
>> The simplest way to check if the device is available is to check the
>> available devices against the PCI ID list of the mei_me driver. To avoid
>> duplication of the list, the function to do such a check is added to
>> the mei_me driver and exported so that the GFX driver can call it
>> directly.
>>
>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Cc: Alexander Usyskin <alexander.usyskin@intel.com>
>> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>> ---
>>   drivers/misc/mei/pci-me.c | 17 +++++++++++++++++
>>   include/linux/mei_me.h    | 20 ++++++++++++++++++++
>>   2 files changed, 37 insertions(+)
>>   create mode 100644 include/linux/mei_me.h
>>
>> diff --git a/drivers/misc/mei/pci-me.c b/drivers/misc/mei/pci-me.c
>> index 3f9c60b579ae..16e9a11eb286 100644
>> --- a/drivers/misc/mei/pci-me.c
>> +++ b/drivers/misc/mei/pci-me.c
>> @@ -18,6 +18,7 @@
>>   #include <linux/pm_runtime.h>
>>   
>>   #include <linux/mei.h>
>> +#include <linux/mei_me.h>
>>   
>>   #include "mei_dev.h"
>>   #include "client.h"
>> @@ -133,6 +134,22 @@ static const struct pci_device_id mei_me_pci_tbl[] = {
>>   
>>   MODULE_DEVICE_TABLE(pci, mei_me_pci_tbl);
>>   
>> +/**
>> + * mei_me_device_present - check if an ME device is present on the system
>> + *
>> + * Other drivers (e.g., i915, xe) interface with the ME device for some of their
>> + * features (e.g., PXP, HDCP). However, the ME device can be hidden by
>> + * BIOS/coreboot, so this function offers a way for those drivers to check if
>> + * the device is available before attempting to interface with it.
>> + *
>> + * Return: true if an ME device is available, false otherwise
>> + */
>> +bool mei_me_device_present(void)
>> +{
>> +	return pci_dev_present(mei_me_pci_tbl);
> And what happens if the device goes away right after you call this?

Both intel graphics drivers do already handle the device being missing 
or going away, it's just not very clean. Behavior changes based on when 
this happens:

- if the device is never there or disappears before the component binds, 
we timeout waiting for the bind
- if the device disappears after the bind, we handle the case as part of 
the component unbind call

The timeout is quite long and can therefore impact/delay userspace, so 
the aim here is to mitigate that impact in the case where the device is 
just never there, which is easy to check and more likely to happen 
compared to the device going away after initially being there.

Should I add a note about the device going away to the function doc? 
Something like "Callers are still expected to handle the case where the 
device goes away after this check is performed".

>
>> +}
>> +EXPORT_SYMBOL(mei_me_device_present);
> EXPORT_SYMBOL_GPL()?  I have to ask, sorry.

The non-GPL version seemed more appropriate to me because I didn't think 
calling this function qualified as "derivative work", but I don't really 
care either way because both i915 and Xe are part of the kernel and 
GPL-compatible, so I can switch to the GPL version.

>
> And where is patch 2/2?

Sorry, here it is:

https://lore.kernel.org/all/20250715225959.488109-6-daniele.ceraolospurio@intel.com/

It's just i915 bailing early from the PXP init if mei_me_device_present 
is false.

Thanks,
Daniele

>
> thanks,
>
> greg k-h

