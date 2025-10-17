Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09444BE7CD3
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 11:37:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D401D10EB7A;
	Fri, 17 Oct 2025 09:37:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sysw8DJF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86DA710E041;
 Fri, 17 Oct 2025 09:37:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760693847; x=1792229847;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TVZIgdcxNf1rjXPFhMZBtt3KfRNBq3JmNN8S28ohZds=;
 b=Sysw8DJFBrZ2L/LDoWr3GeTDvr4AK9jQNhIUq/CnMhT69bCvBhvMOb7i
 T5V85sSUWzBLao4QW7K2E3dPSVbpYXBR5lwQHogT1hdDz4hzGg6f9wHXF
 rfB6xm6SWeqXYZCgl3FYR0Vb18Q5s/KN2F730k3Xvw0NBowdyClh2U/bc
 0U8Ht7oB6LOi5Lo0c128Pei9WQCzXFaPOn9QIfjIAu33GJsdma6sfMCdI
 X/NoKo0bUcs5b+1Q07ZSw9l8j71e8X7PQqZXWpfxOW5U+p04OdcwIjYIl
 NoGiIHWrgHrR9dctkLPTr4WaCBdEJs9+K+2h8JkYTw1ArM/pMF8fjn+43 w==;
X-CSE-ConnectionGUID: FtKNULcITyytn3HS+4em9A==
X-CSE-MsgGUID: J5WWVrkfSdyp4Dek1uuAyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="85519133"
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="85519133"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 02:37:27 -0700
X-CSE-ConnectionGUID: KrXUqMgGQR+uWnV2HUXDWA==
X-CSE-MsgGUID: Q2MUMhj2TdmufWFHAxNVBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="182497725"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 02:37:27 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 02:37:26 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 17 Oct 2025 02:37:26 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.9) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 02:37:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G9o45buvSBZ40pocvFp3TNiahMqmIhrX0/rryY73C4hwIpS7rf/crkwe9VvTmtU6CR4l+7W2wVe8T9JWcB2nT5eVs7CksNHGGhJNneNGNCqoAAX41zKQ7iAPV5MBCSlYnIZ+9yYsaat7LMdA0LP0aM5IN2B2k0S6tnDOc7xDDBUM8c18lTMGgq1hTGCxxZpJN0dtryeBTvc4nOKdw0zbu5X6vxpQP5NV8Ds+Yegff+ycLjoCPZbyeWaEd+taVMlfdXUeHvVw0r8Okz0eqsCPhlxxRx5LZ10f6FlJypdoLuK0Judar+tVumnOLGoa9m0nOpfi+Jf3Bm+3LxEJwsNG4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bxuSD70ZvgLB/rieWcmv7dp2FwZxVSiPUY2lcAFGJrg=;
 b=XhJA+L2CuQ+63LZd1ohLZvVShcs8wDNElpyGciU3oRw4gax/Cn2uRIVb58UkhMOtcJoq0O5BmLgTKXOFK4/C3eLB42AVorYMWaeRd2X/ou7iC7yVUijVN3/wL67IsvBg+6I5Sj5JRPxcxeTY3ujKn8MHBikzVeKHWJnaQxcAcjZCczq+8VSswnqam+I2TMeZDWMeSQ+ZQ5fCdjhOTQGtwyQaORuiVR45XRSx6BHqfYcLHsPaZ8TUzEpZKdaduLCP3SnyjToiPZMQCZStMvGXb0hqPVxyKS0UTl2KucYZWgSZP52ExR4+ZFWNpovKySSUy5Zg4ioe9s/xTBC+nmC83A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB7515.namprd11.prod.outlook.com (2603:10b6:510:278::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.13; Fri, 17 Oct
 2025 09:37:24 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9203.009; Fri, 17 Oct 2025
 09:37:24 +0000
Message-ID: <ad6cd831-517a-4eb9-b812-1fb4dadea00d@intel.com>
Date: Fri, 17 Oct 2025 15:07:17 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] drm/i915/psr: Add helper to get min psr guardband
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
References: <20251017050202.2211985-1-ankit.k.nautiyal@intel.com>
 <20251017050202.2211985-2-ankit.k.nautiyal@intel.com>
 <4300808467d7a93f080b170faadee3748e7bb2e6.camel@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <4300808467d7a93f080b170faadee3748e7bb2e6.camel@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0074.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b3::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB7515:EE_
X-MS-Office365-Filtering-Correlation-Id: b6e782b0-af76-4406-458e-08de0d60c6df
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZmVoN2hFNXlkYnpmUDZtdEhMQmR4dXpLcmFkQTBLSUozZ1NDSWFqSkZCNUZr?=
 =?utf-8?B?eG03WW8wVUFidmJDZzdDNUdYd1NzNFgvejlDRkZDZWlOWnlxcXY5RHNzSHht?=
 =?utf-8?B?bHBaVWllRTBGanYzK0hYN3hRQkZRZTloM091MFpTbzE1MHlGbys3cGk5ZFNQ?=
 =?utf-8?B?UDFJSExjTFZtd0NHcEs4a3B0cHJHVm53d1A0amFoYk5WUGZta0ZZZDI4bFVF?=
 =?utf-8?B?UWovZGQ2eC9ZR1lMUm1SWDIzSFZzcFBzblNJZzdIc3JYUzlsSGlMUkdmNlZW?=
 =?utf-8?B?UnVvY3RlL25kMnFKeWZpUkhHVFJ3d05SYzY5a3k5ZE9KbGFha1V0K2JzdDJo?=
 =?utf-8?B?cVA1cUh2MDhBV3UwazFrVmNaUjNPR05lM3ZkQzJNRWExWE9tS3RzY2p1aTYx?=
 =?utf-8?B?MEVDREluVVl2dHJVM1E2dUpodXU0RlhWSk1xbEpqTHV1WFYyK1M4NVZNWFlz?=
 =?utf-8?B?NTRiVmgyYURpaXdiWDlsc1dIVXhvUnhaZU0xeStlSW5rdmd5MjFubWVNanNq?=
 =?utf-8?B?SlNyOHpIVzB0NmZQbG9xR2hSK2xpQmtYUFZzSjlhRFhMOXM1eTg5MHMwc1Zm?=
 =?utf-8?B?d3pET2gwVC9kMjZvNVFoUUtQblFPSm8zbU9BUzcrWVVhVCtFenpJVHNMc25s?=
 =?utf-8?B?NXVHMUJMYWpDNmViY2RiWHVDV20rcnM5djFwYlVqZHY5ZFhheEl3aExzM25S?=
 =?utf-8?B?dnh4Vzd5M3JweHRrRG1neTFHei9LUVhwWGdoTWExYVN2dzA0QVJZTEVoM1du?=
 =?utf-8?B?dEVLSkI2RXdSWmkvcUx5TmxoQTI4UGtTcmdCT2xlNWh0RnBYbk9EWHJCcDhR?=
 =?utf-8?B?WWlXejlqb2prOVBGdDZDNCt5TFRwd1N4Y1hBL2lUS1J5Z3hsdkxnTW1pU1VZ?=
 =?utf-8?B?amRMMGk3dU95VW1iSFlSeXRyclh6eTlMV09sZXJ1VU8ydGtrMmhOL0kwYVBx?=
 =?utf-8?B?MUtaTHArQUhTRTJiRE5ibThOS25OWVYrdVpJS3h2ajFRdmRtMVEyV1Z2dERL?=
 =?utf-8?B?Rk1EWWhrS0RyMVF1WjBKR01XOEhxZzV0SlJXZEJ0YTMzZWV2R1htUlF6RVVl?=
 =?utf-8?B?RWtibE45MDQ2eWJ4MVdRZFYwTThFSjJBYkpKNGdzemovaVkrZ2IwSjhmNWp3?=
 =?utf-8?B?azIzb2duMkowK1IwN1kvQ2hJclpwMFJyU0Mzc3NZZDNNeVhCNyttWGRQUTVw?=
 =?utf-8?B?TXlQWjU4bzdna1p3a0dFUGsvQkVSQ3JSUTBRWXBFSm5zbmJONUZFaGdteGcx?=
 =?utf-8?B?Z216Nm1pVE5MV0x4M1FwSVhXbC9KaDExVmZnY2p5MXBlckU2Q2FCbkE0RXFS?=
 =?utf-8?B?QXQwekVQQkFWVjJTQVJtRVJtcmpOdTlXcWl0U0xtOTVVb2IxRVQrS1ltc0sr?=
 =?utf-8?B?Rlh1bXNIZG1KR21CZXZWcUtQcjB1UDgyaWpMMzRGWHU1Ym1neWtnZHBXUC9Q?=
 =?utf-8?B?MHZuOWVScktDeW1nQlBTdVR3cDBRcng3VU91OTFNYkdKUnYwY2VTL2wwbkxp?=
 =?utf-8?B?Z1p0UXROS3pxNm5ncFhWbTY4TzNOKzkwRTVXV0N4RXdqMEgxRjBCK1A3SXY0?=
 =?utf-8?B?YWRuSFpMVDhwZ0lQbkdoYU9aakRCblNIaUhXTXREL2ZHS2xXNFk1dk9CM2Rw?=
 =?utf-8?B?aG9WZkZtZjhObTdlSm9YUERXM3IwYVBCWFcvQU1WVisreHJKd1FnNWhkRkNM?=
 =?utf-8?B?cGphYkZiVnJLTTlzWFZ6dDkxenpwb0JIbjJla3EydGZaMEJJbERseVRXWXY1?=
 =?utf-8?B?Y05pdkJtTHg2ak12VnV3OGM1LzlKT3FJbWMwSmhVd0wxenJSV05IYmdhcG9j?=
 =?utf-8?B?NVgxb1U5TE8xY2h4NUtWYWQyQjBqVXI5U2haYmJOc1RLYjVCYStGenVGWHgw?=
 =?utf-8?B?cjViM0p6ZjYrc2tmbWNqWGN2QUtRQWdwV0Q1VjNZa2pQNWVkU3NzRXIyRC9a?=
 =?utf-8?Q?e4HPY/wUuu4FuJPvjKAcqH+t41NNJfKW?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Nm9OWG5ZTmozTmhYbGgyRE85S3N6NSszK0tXQ3JQanBXVDQ0aDRoOE8vZWpN?=
 =?utf-8?B?NDB3b1B6TndjOS83enVGWjh1ZlY1WDNJZ0JFbzFQNCs4TVkyd0VEeERONWlI?=
 =?utf-8?B?UVJZQzZVekFPUzNiU01scGN1STIvVFBRRHNNTEdRT1UwSEd0MFFOSVlPc25v?=
 =?utf-8?B?bVRIMGpEK2hhMUhvK0NlRVZJWlgyWWo5dTlYNlp1eDJIQmY3M2F1VzhVd1Uy?=
 =?utf-8?B?UXVOSkVGdmRXOGV6MllRUjF1cHhRQ21Ccm96eDVldVkxUmtFNzdpdEFIM3pX?=
 =?utf-8?B?Vkdxam9NU1pMU3U5aHB2d1BVdVNLRjFQTUU4M0lUY3AyN2hYbHZMdVR4M0Jw?=
 =?utf-8?B?azh3Nk01WkY2M05MTyttdTRjd0NSSUNUeERPMTc1cEVsZlNhbldOTW5sejB2?=
 =?utf-8?B?MldxY0cvbTBHWjc4NWp5Vm9qNGdVaXlqZngvcXluVGtTdkJrcXVuRXh4alk2?=
 =?utf-8?B?Nm5yOXdOamp4SXNmaHdKR0ZTSExzeU5KR1BJWTV3aDB0S2RpZUN1R0RhcU9n?=
 =?utf-8?B?T2pwcFhkYWxtN0tWbVdyOUM1b0lhZWZRa2JuM1lNZDErSk9zc1RhRXhnZndK?=
 =?utf-8?B?ZFNwTlJ2blRMME93YThEQmRqNWVtSXBHMTYrVGpVY1hhUlJzVVY1OENHR0Ja?=
 =?utf-8?B?TjFRNjVoWEpGb0hvRXVVZHExbG9yRjZGakdBNXE5YlAraGFyTUdxSmRPb0Zw?=
 =?utf-8?B?RmRLL21scU9RdkxFUEpvekRKdWhvTEVTaTM4bDg1V2sybUFPVmx4WGx1T1gy?=
 =?utf-8?B?bzlpSW92Ky8vY2lkV3pVNnBJZ20yZkFYbnlqZHByYUFza2V1QWloeDVYWEgv?=
 =?utf-8?B?K2RRaTg1K1k3L0FKVStvVEJHR0hCQlhTU1YyM3FHbWg4cEkybDIzUDROTFpl?=
 =?utf-8?B?SXNqOWlHa2U5L1JTMkpWSFFFUE1meWRCdklzMFVhRTJzOHlldUljWmpTeWdp?=
 =?utf-8?B?WVdoNVVKVHY0YlEzNlVsbXhrOGVjMmZDcmMycnlxT1U2MGU2T1g0R0FXZERs?=
 =?utf-8?B?Nkd6eGRFYnRpWmdJSFNKbUhBWHBhKzhsZnJXREZWaWx5cFY0VVQ5VEZTTlRV?=
 =?utf-8?B?VXM2WExmZnBScU5vNEt2ZFhRbDBUSmNLajNxZ0lqT0tIOTJpREJPcStITDUz?=
 =?utf-8?B?YVQ0SVJEVDVyNEJXMzFFWlordUsrS0xlTGlKMU9BZEI3QnJQS0FMcDMzaXB0?=
 =?utf-8?B?ZER6NmZhSHhFU3lGWGMxa0xTSFVzT0pqL2xtTkxEMHZvT1NVTHJxSys5bGda?=
 =?utf-8?B?RUx1b3Q1NkM0aFNQc1FHelorYVJPUHU5dXA4bytSRjF4NHJLV1JEN1kvSUwv?=
 =?utf-8?B?NEpJQTdiQXc0cERYSXJ6YlhTK1pCZHJrbEVKUS9WNFl2d3RuYThNSlRKMmxK?=
 =?utf-8?B?bDM5VkR5K0txMHBkTWZoQmw5eC9Jc3lGRUtBOGFUdUpPd3lTdkdIMjR5YTdE?=
 =?utf-8?B?czVQajJUVCtQajMxOS9jbmRhWHkyZ21MV3NqNkxKemhQbFZvTksyOFgzZGxP?=
 =?utf-8?B?bFhxQktyZkl6RlpWZ201bTk0TTI5bEFhWlA2Wlg2RjlZampFUUdZSk4xeksw?=
 =?utf-8?B?WlJxR2ZxMTBzSmN2cXRNdmpkcWdKMW45eDdXeTJiRFU1cHBpdnhSWWsrWkJ3?=
 =?utf-8?B?b0ZIWjRTcEJaVFBRVnZIa3RqTVp5V2dvVkNtdFJFQXNxaTdTdDR6TzUzVlV1?=
 =?utf-8?B?cTBvS2JmVktnemhDOW1KRkV0U0Jjb3NmV2Y4VVkzSmdBSFVHYjFLM2thOUtQ?=
 =?utf-8?B?anFCUnVZeFhTR3M1ajZjMkdhQk1JT0dDM1ZvdmNBdE9IS0FaME1oSWV5RWsx?=
 =?utf-8?B?b1VJVTBpVHY0aUVKUFNyYkNBc0FtNWdzTWxnanoyaTZWNGVmei92WnlqZ240?=
 =?utf-8?B?aFZBVUZTWUR3VFpySFVZTTVlZGh2Y2gvL3B6b3l4QWowbmUwN0VJTWlndXht?=
 =?utf-8?B?NVVSK0UwM0dJbDY0ZGNHaE0wQ3RqOFpzWUFYZUpCdTFuYW1uUTBmK1pEVzdL?=
 =?utf-8?B?RVdYRVd3WWh2NTI1UXUwZDVzOTZZZmdRblZHU2Vtbnp3SWpOWnZkdUl4c2Qy?=
 =?utf-8?B?SDQ0bVk4aFBhRklmaGNBc2U0VHBXa2pyV1RpckFZQ01EOWo0bjV3RzhYV2Y1?=
 =?utf-8?B?NHUvRURVYmlIckwwNmZQSi9OQkV5a0VzcUJCMlFRN09ZWDBkQjZUT1pjSDhp?=
 =?utf-8?B?SGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b6e782b0-af76-4406-458e-08de0d60c6df
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2025 09:37:24.2463 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gUr9Kc1PDFj6v2g3TgFrGZA7L70kL0xt2sNHW5lRRC6ewb/xxk2L0sJ8HmzNPjeZi0nHJVchXih0F9WzpwOXSQo/z2x99+aWU98nte2aWW4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7515
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


On 10/17/2025 2:37 PM, Hogander, Jouni wrote:
> On Fri, 2025-10-17 at 10:31 +0530, Ankit Nautiyal wrote:
>> Introduce a helper to compute the max link wake latency when using
>> Auxless/Aux wake mechanism for PSR/Panel Replay/LOBF features.
>>
>> This will be used to compute the minimum guardband so that the link
>> wake
>> latencies are accounted and these features work smoothly for higher
>> refresh rate panels.
>>
>> Bspec: 70151, 71477
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_psr.c | 12 ++++++++++++
>>   drivers/gpu/drm/i915/display/intel_psr.h |  1 +
>>   2 files changed, 13 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
>> b/drivers/gpu/drm/i915/display/intel_psr.c
>> index 703e5f6af04c..a8303b669853 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -4416,3 +4416,15 @@ void intel_psr_compute_config_late(struct
>> intel_dp *intel_dp,
>>   
>>   	intel_psr_set_non_psr_pipes(intel_dp, crtc_state);
>>   }
>> +
>> +int intel_psr_min_guardband(struct intel_crtc_state *crtc_state)
>> +{
>> +	struct intel_display *display =
>> to_intel_display(crtc_state);
>> +	int auxless_wake_lines = crtc_state-
>>> alpm_state.aux_less_wake_lines;
>> +	int wake_lines = DISPLAY_VER(display) < 20 ?
>> +			 psr2_block_count_lines(crtc_state-
>>> alpm_state.io_wake_lines,
>> +						crtc_state-
>>> alpm_state.fast_wake_lines) :
>> +			 crtc_state->alpm_state.io_wake_lines;
>> +
>> +	return max(auxless_wake_lines, wake_lines);
> hmm, now if you add:
>
> if (crtc_state->req_psr2_sdp_prior_scanline)
> 		psr_min_guardband++;

I did not get this part. Do we need to account for 1 more wakelines if 
this flag is set?

What we want to do is to check for min guardband for 
panel_replay/sel_update based on the required wakelines.

Whether we can use the auxless_wake_lines and wake_lines as computed 
above to estimate the max wakelines or instead we should use functions 
from alpm.c :

io_buffer_wake_time() and _lnl_compute_aux_less_wake_time() to get the 
worst case wakelines.


>
> Whatever is the PSR mode it can be enabled what comes to vblank
> restrictions and you can drop psr_compute_config_late?


I think we cannot drop the psr_compute_config_late as it checks whether 
the actual guardband is enough for PSR features.

intel_psr_min_guardband() is used along with other features to have an estimate on the guardband that works for all cases, without a need to change the guardband.
It is bounded by the vblank length available

Regards,

Ankit

>
> BR,
>
> Jouni Högander
>
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h
>> b/drivers/gpu/drm/i915/display/intel_psr.h
>> index b17ce312dc37..620b35928832 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.h
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
>> @@ -85,5 +85,6 @@ bool intel_psr_needs_alpm_aux_less(struct intel_dp
>> *intel_dp,
>>   				   const struct intel_crtc_state
>> *crtc_state);
>>   void intel_psr_compute_config_late(struct intel_dp *intel_dp,
>>   				   struct intel_crtc_state
>> *crtc_state);
>> +int intel_psr_min_guardband(struct intel_crtc_state *crtc_state);
>>   
>>   #endif /* __INTEL_PSR_H__ */
