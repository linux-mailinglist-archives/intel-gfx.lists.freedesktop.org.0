Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 511A8A0B36E
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 10:46:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E224810E5F4;
	Mon, 13 Jan 2025 09:46:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="foQVL1d5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1731B10E5F4;
 Mon, 13 Jan 2025 09:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736761559; x=1768297559;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RaX/pHc9gPWkYI2Mcc1xO4Fyalmd00bDJvjUWdxv2nY=;
 b=foQVL1d5MqtsNcDMlB6NzQIRXB9oD7e+3oWJH6jLecC693eIEr804Szr
 D7LJmrvCqtIOhPwqTBwGcGIGy629uYAaWkrYTFC0W8xXILqSYA4tFb7uY
 k6JPML0YLd6mx2D9eWVvfgzDBXmicchHaarnYK1MZwtBRZKKtabOOSPl0
 crZhd2Z9bpH1g+yUpzDnLTISrUtx8ehtjZEJ22YiEiT7fn/dgBHPiKsPC
 4AM8IdlyFvSy7DUPa4fDm9vKYnGeRjMIuxnVj3hW9o4DV9M1LR9V8vV3v
 z6K9LX7YwBsny97xCeiQfo6CP/vAdAaJTFSzo++9eWafNK+i5LCSgPcqJ w==;
X-CSE-ConnectionGUID: xa6g3NfRRNqDLNyr/iUX8w==
X-CSE-MsgGUID: 3lPEAnlpQOqEShwAgBOKag==
X-IronPort-AV: E=McAfee;i="6700,10204,11313"; a="36918759"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="36918759"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 01:45:47 -0800
X-CSE-ConnectionGUID: OLr1rRi8SfG0qr2Ae5fwog==
X-CSE-MsgGUID: TY4ML6qLTR+WpU1J+II4xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="104239310"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Jan 2025 01:45:47 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 13 Jan 2025 01:45:46 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 13 Jan 2025 01:45:46 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 13 Jan 2025 01:45:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LpDYqPHNEMN/S6nWtEqX/MqqeWCMXksxn5jm7S+xloijC0bOuYbsb1Rz8k9CZKCq7fSQRsZOal/PuB90lCSD4sJtiXNbAorQXfvnLW2GUvgNrLuj5xKnpC/+6J4/H0hRrsaeEFWA9BgfzuwFDQGbdHrROzPx0uEjszg/eRfRbU2HDR+H1OPmqQCOGevoeJ4w7UxY0Sn2vx67l2uY1/EVCDcSpFVFsEnrVI4Yx8Pj65u3mP+9AUEe5U0DQnFuw/79ZOcR42HxAHqyhvj+HjLEb0ZEslgmV+fsRSkBIegSDH/F3ZzLRhE3e5xzFM+T3EXESYIhYLBFQG7INZSsqutiNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g/IIElowACwJXTNK3hhgeRxkR6j6zZnKB96C8h2qTCU=;
 b=thPH94BcwPfVr3j5HTL0YzQI3SF/Tz9opSz6spVo4HlumfmZMgFrZ6YoKdYo7j2O8CXkqaMvy5kOYGc8bkacdPQv4bDfq9HMuRbFLvpEgP2GnKazJbINtyoH+DnrSgNiITWb7UliDmtPAnxb800pJGqsWpEQiZl1jrw9cJhRNe76MB+gvUWIZ+XbUdG/WCEvX6y3PT3gCkO9f369Db3FMtkbfA0WTcCgKn+jK+Yu6XMyef7k2MBAFVGsTGP6pAaSJihY8SzCe1b2FWSNGJP1KgShUm/npDOQjG4XCWk+/lrnNT3EFncTN6078Pce6TuxmpIKARuy7YEqlquwsKb8kA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SN7PR11MB7466.namprd11.prod.outlook.com (2603:10b6:806:34c::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Mon, 13 Jan
 2025 09:45:17 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.8335.017; Mon, 13 Jan 2025
 09:45:17 +0000
Message-ID: <b0f4c7ad-eca2-4de1-988d-07a079c4fa20@intel.com>
Date: Mon, 13 Jan 2025 15:15:09 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 6/7] drm/i915/scaler: Check if vblank is sufficient for
 scaler
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <jani.nikula@intel.com>, <ville.syrjala@intel.com>
References: <20250108123541.2101643-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250108123541.2101643-7-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250108123541.2101643-7-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0123.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:6::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SN7PR11MB7466:EE_
X-MS-Office365-Filtering-Correlation-Id: 76c19871-2e90-4f9e-c6f2-08dd33b6fc93
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q1NXbDhrSTBocVFMQzVIclU2QW1rdm42NTg0dTA0TS9yV3ZoSlEvNDhsOFp2?=
 =?utf-8?B?QTZIK05oam5aODVaWE5xK3Z0RmtsUW9sOXFXR0o5OWJ6WGpLaGNwenFERHpx?=
 =?utf-8?B?RktoTFRZK1ZOTjB5azczTm02L2xZWi9mL1hqNGRmZThNZmtVcGdBVEg2azRv?=
 =?utf-8?B?SldYdFhyMDVlSEV4VzRjNWlvRGQ4ZGpnQlc1Uzgra1JrVU1LaDN0MWRFYVhv?=
 =?utf-8?B?Ti9ub1BRb08vMTFxN2tHRG0vVFpZNzBrUzUxOW5lVEwvRXI0RDJ5Q1F5SHA2?=
 =?utf-8?B?RHVrMXNEck1aMW82YU5OK3FIOTF6Skp1YlVnUzRobVA1M1NTWnNvM2g0R0hu?=
 =?utf-8?B?K1dMVmh4cUFaTWIyRnBMSzZuU1R5TEw5K1JDTU5mYktiWG9oUmo1OGVMcUpw?=
 =?utf-8?B?KzFCbUorTmNmYWxXd0dwYVhTMVVxVk1uSUdoa1lqV1ZIcFVUclVlV3UzazJ3?=
 =?utf-8?B?bm5QbGNSeTFocE85c2laZUZXMkRWNGVNS09nS0JWMTRONXIvNGV1ZURFMWZI?=
 =?utf-8?B?L0pSZmo4QVo2MmVSdHR4emhhMHpvK2RzazlsTzhycUFFM2EyUFl2cU9iTVU4?=
 =?utf-8?B?bENQOFcxeGdYOFBjblBjS1BpM25tQUZIWXQ0RXRIUThtMlg1RXBXOUxZcXo5?=
 =?utf-8?B?MTBlcFlPN241QzVRemV6TzMrVVNDYXpOS0RXcGlidFdCUllVbUt4L0d2NkxQ?=
 =?utf-8?B?NFJhbkUvalhWV2t6ZHo5azFBNDFpSDBhallYMVcwNUNMdDVWTWh0bzZWL1lN?=
 =?utf-8?B?dVBFbTNkWi9VSjUrMmxGai9BTzd2dUVxVFRVdTRGYnU2MTE2VEZkQTBkZldG?=
 =?utf-8?B?a0J6Yi9BNEVZOW9vaXFvOGJMR2RMRTFlaE54aldXd2FFQ2h1M1p0VG43VkJl?=
 =?utf-8?B?NXRmdW9FV0xnb1R4bS81NGRFTG1PQkd0amhLc3VoQk1QMDBXZTlzdGpHSzlx?=
 =?utf-8?B?WTgzSDB1SXVOczhpcWtlMjBCYXczcld2N0ROcCsxQmhTSUo5WElKb2pWaEQx?=
 =?utf-8?B?SXFTUkZqaUpydzIvUTFYSGxvTU1wQkJEaW1VUDRlZTRvVkc5cHJvaWYrV1J0?=
 =?utf-8?B?N0xjaDBaTzNnelpHWmdLUVNMM1l6SkJOVTAvRFhFTGRIMkJ1ZVpicnMzS0Q2?=
 =?utf-8?B?c0RRdmVYcXRaV0lacUJ3L1Z6b2JxVFpQREJzVXN4NWRJNU9reFJYTGVZYWl2?=
 =?utf-8?B?SjBDejloWkNDQ2s2M3NORTJZNHlYQnFITS9KQkVmbzd2YUpwakM3c2xwODU2?=
 =?utf-8?B?MlBrbTlBR0FqOGIrY1FQSkJ4Q013RzU4NTRKcnZLVkVxRjg4NmhhTUNObEVN?=
 =?utf-8?B?OXduTWswWG1EK1kvM0ZZcnBrRTlYeHlVaDVubnd2dHc2Vll5emRqQVlQMm1N?=
 =?utf-8?B?SmUzenFvdjJOeHB0b3YwR3pwN2pvSWxUMzdPcUpXczBQVkUyQmJnUGJTY0h1?=
 =?utf-8?B?NlFqTDFUaGc1VmpGRjlBWWw1YzNrZDlGSnFEQ3VJYTd5dUVYckltenFVYy9w?=
 =?utf-8?B?TWloNjhlbDhkaFp4YWtWeGpaMit3NVdjVFVaVXc5em5GNlF6ZEpBT1k0Z1dy?=
 =?utf-8?B?NXRXd0ZuYVV5UDYwZm9OV3JyUTFlNVVTZ2M2QktjMDJmTlBtb3VGVDlBYXFp?=
 =?utf-8?B?NnhoS2lkQkI4WThxS2NZb0YzZHEzWDdXRFJYZzlBSU4zZ3NFcU0reGY3Z2hJ?=
 =?utf-8?B?YmVVWDVLUklBdXBEemhhTStvdTVvd0pRMGJMMmYyaGpzWG8wNjMvMnprNGY1?=
 =?utf-8?B?Zm5LTFFKZ0VKY1RMSUkwVWJnVGZtMndFa2dIWVdsSWYxbFhGeGpXRFFLaHI2?=
 =?utf-8?B?d1BoNEpZd3IwMm43N1loNFpPSFQwT0dVUjlZU1M4WXltYkJYMnhobVBtMkZU?=
 =?utf-8?Q?S2aNIhcT3le3A?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RURsTnZTbnRGckcxTEM1dlJKd0F1VGFCbnI2MzBWdm94aTdXdnRCT3hwNEtS?=
 =?utf-8?B?d01kQ0tEV3RQMzJJMHU5bjlZcUthb21ScWdrR2ZxSUF6UEpoTUVBUDFmekZ4?=
 =?utf-8?B?Wjl6S01wZlVieVFYbDBXYVNFZ2Zjc0E3cm9mbFZLVHFhUW1TRThoQS81Z3hJ?=
 =?utf-8?B?Y0Zxcjk1MXdiSWsxamd1UktycmswM3VSdFBkZG54cDhUN3gveWFDNXFFeVIr?=
 =?utf-8?B?WE1rNzNHL04walJnbG9qL3hpTERocG9IWE91R2JUMHZva0dYNWtFblgvcFFy?=
 =?utf-8?B?Zy9iYkEyamdRcDNFSGMxVURZbTd3aDE4OTV5NTN5c3haUm9TeVJpUE1TcDZk?=
 =?utf-8?B?amxBUDg0RVpnT2syREYrZFhQbVR5MERNY3pEYkxyenUyRFBQV3dnNDBCdkl6?=
 =?utf-8?B?alhwTGYzcXExb29DM3N1ZUovQlJYN0tLcXhXMEY0ZzVmQ1Y1aEd6WDVFSWti?=
 =?utf-8?B?QTdSdDVwV3doNTNLZFhrd0JyaVV1aTQzVzRiTEdhNWtSemtrdW9wb29YVVNY?=
 =?utf-8?B?SzNXRU9WclZyd0h0eWQwWjJoRTIvYW1XVnBRejRyeWpHR3MyQ0Jhd2FWR3hG?=
 =?utf-8?B?QUhhWDQybndhVG9aUlBESkFKeUcvMzJtUmt2by9DcWxJVlI1WVQrbk84cTh1?=
 =?utf-8?B?MlNpZHV0MUV4Vk5Bcnppb0Vxd0NrZi9IYTdKeERwYjJ2VW1iUGpPV0FsOWty?=
 =?utf-8?B?MlFXQnE3dzZ5R0FhaDVRSlU1UUlXVmJ3Rzl6YVAzN2NPMXhnRU9tWE1NTk4z?=
 =?utf-8?B?bUl3NTNTVWFXa1lndnJJdVprUDFleEM1Rjd1bk9acG5Xc09ld25wSjBMekp1?=
 =?utf-8?B?MVo1K1VKdUd5eDR1dTluZzN6QXBtak9DdXJDZjdob3NjZzJWcFVuUnpaQkJ0?=
 =?utf-8?B?YTFYek14TWYzZ252d1NaMFpFbDIwdWlaL3p2T29JMldYMjQ4N1IxdFMxanM4?=
 =?utf-8?B?U2c1TU4zL3hNdEM5TVpjRGJmSS9EejRiS2pqL1NUM200OU0ySG1ZMWpYNlVM?=
 =?utf-8?B?dXZGWVZzWGFkZy9yTXVvTlcyMk43NlRwVlRkcXhOSFFSRGlpbitaT3hqUTZK?=
 =?utf-8?B?OFVrYXNSK2J5VERwZU11Q1FJeEIzN3J1U05pUVY3ZER6d1dDcW9rK2t2Y1Ar?=
 =?utf-8?B?UGtCUVNiTnhzZy93QndqT3lFdldMMC90SjNLcW8wZW5uWmpFU3FuS0RjNEgy?=
 =?utf-8?B?ODZzRUZzd3h2LzdnM1p2SFlpaDduTlJLdHZnOThFMys1d0lqZDM2Q3FXTHlC?=
 =?utf-8?B?eU1KbG9VU3Jxb1NGVFdFTmhaM1J6SEQ0YkUxM3BKcGZ1UG8vQ0srSEk1ekNQ?=
 =?utf-8?B?cFgzaFVDUzB1QldJSEREMVBnNmFIc0dZbS90TWk0RzhnUHNEVUR2MzYvMUR3?=
 =?utf-8?B?QW44ODFUcG5aQ0E5TWNJelhIMkRNWHIzSDVDZEtJdXFjTFlwZk5YYkw4MVVl?=
 =?utf-8?B?TVB2Z0YyM1BMNG1oS1NoVTZZME03bGM2Q3VUN1pqdGcrdzFsUnB3cmI5Szg0?=
 =?utf-8?B?M3ZPZVRSUnZOeG9jczA1OW41WnFFT0dXby9qakhwNFFuMHl2NEVtY0xMWjZC?=
 =?utf-8?B?Sm85VUl6c1FJNm9TcW1FTTArMFJlTGpvSTNOSlZKVzUxQTM3SjJlc3l3SUtC?=
 =?utf-8?B?VUNEay9FTXVrajRQRFh5L3BBaWRxaEVsVE1XMW1TSEU1U2tvUVZWdDJSU2Y0?=
 =?utf-8?B?SXZKTWZWall3THZOcDJHdENUNitLK0VWME5FcXNnZzNaOU94Mk12dzltenF0?=
 =?utf-8?B?WUc5Z0VPTnRsL2ZHKzM5OUs0bG1senJQamo5eFpxeERacTV1NXUwM0pSZ09w?=
 =?utf-8?B?dGxCeXRNVFB3YXY5YU9wek1WbXVJb3FLNkMxanpQMy85d0pJM3R6QS9DQmls?=
 =?utf-8?B?VTRObms3UFppUk55Nyt1cXYrOXU5QUJPTEJpN2VUd0k1WExrcHA5eVExSk9N?=
 =?utf-8?B?YmQ5ZFoxRGUxRnF2S2N0TnQyaFRaWlc1TFNlOC9HMCsvdXRWRGxaZUIyMDZU?=
 =?utf-8?B?Z0hvMjJUcDVhVkpCOVVTY1QwWTVkcFBUK28rdFplM0xRZGRuVGNrUUcyS3Ra?=
 =?utf-8?B?cytPazY5QUNPemZ5Z1Y3eGtmb3NmRHkxeEQ2WlV0dUsybm9lUXFTZE9LYkpu?=
 =?utf-8?B?ZTlaZU1ZVDFldGR3V29iQ1paVi9GVzNGTWZHc2Yxdk13UHNhMW43bG16L2tG?=
 =?utf-8?B?bUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 76c19871-2e90-4f9e-c6f2-08dd33b6fc93
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2025 09:45:17.4685 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iaGhFMachDT0UMti70cBU0fhgmflWwzF59CSAODJavPbWyfufXe5UPVTk9yqDILdOkUJewufEa8Y345FZ+74t/fEGxpakgSM5IKC495O3hY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7466
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


On 1/8/2025 6:05 PM, Mitul Golani wrote:
> Check if vblank is too short for scaler prefill latency.

Perhaps we can elaborate a bit.

Also add Bspec# in trailer.

>
> --v2:
> - Use hweight* family of functions for counting bits. [Jani]
> - Update precision handling for hscale and vscale. [Ankit]
> - Consider chroma downscaling factor during latency
> calculation. [Ankit]
> - Replace function name from scaler_prefill_time to
> scaler_prefill_latency.
>
> --v3:
> - hscale_k and vscale_k values are already left shifted by 16,
> after multiplying by 1000, those need to be right shifted to 16. [Ankit]
> - Replace YCBCR444 to YCBCR420. [Ankit]
> - Divide by 1000 * 1000 in end to get correct precision. [Ankit]
> - Initialise latency to 0 to avoid any garbage.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/skl_watermark.c | 31 ++++++++++++++++++++
>   1 file changed, 31 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index f4458d1185b3..fe91854e456c 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2292,6 +2292,36 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
>   	return 0;
>   }
>   
> +static int
> +scaler_prefill_latency(const struct intel_crtc_state *crtc_state)
> +{
> +	const struct intel_crtc_scaler_state *scaler_state =
> +					&crtc_state->scaler_state;
> +	int count = hweight32(scaler_state->scaler_users);
> +	int latency = 0;
> +	long long  hscale_k =
> +		mul_u32_u32(scaler_state->scalers[0].hscale, 1000) >> 16;
> +	long long vscale_k =
> +		mul_u32_u32(scaler_state->scalers[0].vscale, 1000) >> 16;
> +
> +	if (!count)
> +		return latency;
> +
> +	if (count > 1) {
> +		int chroma_downscaling_factor =
> +			crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 2 : 1;
> +
> +		latency = (4 * crtc_state->linetime) +
> +			  (chroma_downscaling_factor *
> +			   DIV_ROUND_UP_ULL((4 * crtc_state->linetime * hscale_k * vscale_k),
> +					    1000000));
> +	} else {
> +		latency = 4 * crtc_state->linetime;
> +	}
> +
> +	return latency;
> +}
> +
>   static bool
>   skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
>   			int wm0_lines, int latency)
> @@ -2302,6 +2332,7 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
>   	/* FIXME missing scaler and DSC pre-fill time */

The scaler part is addressed in this patch, so this can be removed.

Regards,

Ankit

>   	return crtc_state->framestart_delay +
>   		intel_usecs_to_scanlines(adjusted_mode, latency) +
> +		scaler_prefill_latency(crtc_state) +
>   		wm0_lines >
>   		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
>   }
