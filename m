Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F9EA47A6C
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 11:36:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB7F210E262;
	Thu, 27 Feb 2025 10:36:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q6+FPFX4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 420BA10E262;
 Thu, 27 Feb 2025 10:36:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740652603; x=1772188603;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hKe1KEP0PAg59PVMMdXMTe//srh35YSGhAIwWjAt/EM=;
 b=Q6+FPFX4WeYgpbO6xsjt1ifEV+VFFodweXZJkslrp3oyg9j3fjeXkLju
 ENh0f8QQZhnVYlepk7r1qYvtR0Fm2QgFfv2fGfvA1m8rEl8jMK1uLup9C
 WKyIIjzWJq9kmEWxKgXT/QPfkU9r+S2j5pddhjySVlJWT+UKPo6/x101j
 9wqKwtZp0sl18ok9SpQSWg7ScSgfpjxRtJ8GMFlgVJr0GYRC/0Jhc+VdU
 joBnBE2WzddFEhUObxtq0ongh9eA8mpPtddpqxhSw0OGbRWdgBq0YvxSL
 70O2Nd5X7ranM+2BaX4KH68jq04B2VnXklbSZuNUz1g81Eopi1/go0TS0 Q==;
X-CSE-ConnectionGUID: mt1oM4ZaSy+dR97Ft+iDWg==
X-CSE-MsgGUID: GCAMQORwQe+OLexzQyUlGA==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="41789489"
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="41789489"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 02:36:43 -0800
X-CSE-ConnectionGUID: Mv04mOAlQmy62XUTXczViw==
X-CSE-MsgGUID: /u8VYBpiRqeg0DaNCuGd5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="116997169"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Feb 2025 02:36:24 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 27 Feb 2025 02:36:23 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 27 Feb 2025 02:36:23 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Feb 2025 02:36:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=atucc7Siu3iaWzt77nNge60tLpB41EglkrEK/pa2hsr5ZSgL9qMNJibLZgI3nK/E/sNu/K7GzNUcc38K6OO5VTbBFYpJeQ2E6v1N0nQI6pa1GvH72VrZ0yK9F1uiIr5STyW/vu0tFzrcizg8vLkKfXTMJVss5Wmvp4ghiGvoJXAEUc29dc4rJgNuVoJTmfQmnnd5Sso3VokIYGcAO+1ZUkika8G8FlZbHaE1Gz90q5GYDXPcHhGN+5eHA6bBhUnEY4omeEQdmYBPTPMe2Oxsv6QEUTm1Inx5NFpgGsju04sNwN4lGOgsg2cSwqhpKi+1i4+X17qEc8qlVL14LIDVFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CjL+p37mWtCQxs6wv/u87AfHCvqzder5MDzhg3G6Ygs=;
 b=XB2dxBZ3iyrMh+CR8Q24PxgCz+ykbainrw6B61L2tdQoDdVUV86D+kLYRD7bq30Ad0TgHF6DLbT1V81+TtOFGtOHwEBQCTyIdFil2uZe9W9toW7mbjJ0weU+Se0lrVY8ses3Dme+t3PTJooXaPWyRy2rfX+vfNxRCpKLS62gXmK8Pi09eOTjdv440rA5D7kEAsEf04pGoO3+HcP7ShMCI1EklJUSxJbpfs4JiKXUMrpqXBt8s8dKSx1g6blhS14JZ0uyszBa8WSa7dMXLfcuq0GnszNPmfvaELIsydacf1GYOu5fhAcXGiXzL+bQ+n0hwKpMgmrp5/j+KPT+ZXQ4nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW4PR11MB7077.namprd11.prod.outlook.com (2603:10b6:303:223::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.22; Thu, 27 Feb
 2025 10:36:21 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8489.021; Thu, 27 Feb 2025
 10:36:21 +0000
Message-ID: <ac0e162a-0b0a-4a8c-b77b-9a272f2c30dd@intel.com>
Date: Thu, 27 Feb 2025 16:06:15 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/20] drm/i915/display: Extend WA 14015406119 for PSR2
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
 <20250224061717.1095226-13-ankit.k.nautiyal@intel.com>
 <Z78dSlvSmDfF6zRD@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z78dSlvSmDfF6zRD@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0109.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:11d::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW4PR11MB7077:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a17dccd-827a-4cc4-f082-08dd571a938e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NFpLRGVBZ3FUcjNMWHRZdTFsdzdMdVo2ZVo2b1pYZGdWdGhtS1Y4QXNLWlhM?=
 =?utf-8?B?V085clFiMUVzcjNUM0FtaitOOWdmWkFnQk10WmdzV1RzU1R6OUhEWXhySER4?=
 =?utf-8?B?UVZzRlJmd1h4dm16UFM1bXBTWnZhMnBZY3Bqc1JYTU5ZNzFMNFVxbkF3SzhR?=
 =?utf-8?B?QiszdnM4azFNU01URWhWMXJ0UkJxWjF4Syt4QU0wYyt5T2hib1k5OVVoNW5L?=
 =?utf-8?B?bW03ZFl1alk3NndVRFZ0WVREV1duYnZkWC9vSVdSYjVVaUs1dTVpeE4wVENY?=
 =?utf-8?B?UFIxcUpXalh5QXZEZzE1RDVkVG9waCs0clpYQ1dKdVNtZEVjVmRFOEpvMzJF?=
 =?utf-8?B?WGJJZFJUeWVwR2dEVXIyQmNKSTQ2OUc5RHYrMnAzOHJLcURIcTJFc2NwV2l5?=
 =?utf-8?B?RCtuNXYzQmllZzFXRjEySDZHMFcvSW1VRFRER20rcExwRDJTVHMyZnhRcGdp?=
 =?utf-8?B?MVBBK2MxNGw2bVZyRlBVTVJDN2RoTFJqQ3dLNStxZ0FKdDh0U2RwMEo2TGZR?=
 =?utf-8?B?OUtqVVBjQWhxQ0I5S0pmZTB3OGVmOGNIeWRLUmhYY1JPTWNCL0ZMVTBwWFRw?=
 =?utf-8?B?MzZOZHRVVVZxR3NYVXdDZDE2ZmtrSDJ5cTlGMDNieFRDYXhGN3lCUFlFcTUv?=
 =?utf-8?B?bHNCYm5DRExDZ01tSTdiNEFveVB4dHBwVXhIdDFSSkhaWUw5dDlTaVVyUmUz?=
 =?utf-8?B?amg4VTR0M1RtYkNGOVJLbDI2Qi9FVXdzWmR6S1VjSDVweEVwZU1VZDZFd1Fm?=
 =?utf-8?B?WWhZb0h2WGdIZzFENGdrMUtteTJkb1NlbHNTR2liZCtpdkl2UG9HZkdqSTRS?=
 =?utf-8?B?cXh4d0JTaDQ2MWRORCsxNElxcklxRUgyb3N5ZW5ta3Uwc3p4RlhsWXQzcEVa?=
 =?utf-8?B?d21LZHlsUDY2aVNDS09kamdNWFFMb21EeExnWEFpUU5QZjFDMTl5RDczbk1u?=
 =?utf-8?B?SjhnR0hsNHI0UEx2RGxKU3JmRm1kVVJLVU5VNlBtY21FWFM4SFVkM01sZlJT?=
 =?utf-8?B?T0VEVFkzMmxEeGx1MzNKeE96L3dFMVJ0dlBqK2pKekNMVy9MdHpwV0pjU3ls?=
 =?utf-8?B?WkdWdXFsWVZUNXBkaW16azR0eS9KR3BXeEo0RVM3VXJvSmV3SDV6UkprcW9Q?=
 =?utf-8?B?T21uYzV1NjlLOGJWanZzV0ZEK0w2L0oyaVFOdmxsT2hwUHdIbm1JUUxEdXJI?=
 =?utf-8?B?akdRTmtmQ1ZiRVZoUkV0eEpIRzNQdHBHdFlKT3ZNd0k5TnV6ciszV05abENk?=
 =?utf-8?B?bGRnWlNxbEdTSVdtWDNMMGZjNDF2RGd6VWU3dllUc1dMOHZONFNCWEJ2K2Vm?=
 =?utf-8?B?VzI1N0Q4VGI3TzdHTnJnaDU5V3NNZy9sZVN4aFh5N1JEQ3VLK0hSQzNWTi82?=
 =?utf-8?B?MUtiMzcvbnZ3dE9TWk1BSGpPZUorbk1LQmlhd2xheFJkTkJCWEZwamNSYVJa?=
 =?utf-8?B?VFlaNVYxajJ0d0FseklGaU9TUklSN2FlTGVQMStQTkxxZzZKdkxIbVlHa1o4?=
 =?utf-8?B?Nkw1QWpGNzFJdnZIQlk3NGlpRVBTZFNoNGZzc1p0UCtxeW1XMVpUT1BKYzYz?=
 =?utf-8?B?aHpWZ2R3aEUxcWsxOEl0dlpwMDh3WDkzWG5lV202dlZVY0xrbzJWQzlJb0Uy?=
 =?utf-8?B?WXVCNFMxRFl5WU05Y0RyaVRvdjBTTkpHVjhIWG5KK0tDYW93UFdIcEZWNHdV?=
 =?utf-8?B?YlNBc3RCamtSYWxnYk83TCt4a2J3RVNBeDZRWEc3WVZuUTkyQlkwZTRDQlZQ?=
 =?utf-8?B?cndVYzFkWVRuOURsRnBKOVRja0hNZDZpT1NnOHhCeUVldWs0dXpyNTdwcFhM?=
 =?utf-8?B?NUI5WEZlNWRDY0VUcmlqNk54MkwrSXFCcnkwRGtNSHdoVndRdjFFQi9QU2Nr?=
 =?utf-8?Q?8rky0cCM1RzMw?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z2N6dy9Ra29wQ2lQYS9obGhPeTRqL2hvbDFvVWJ4K3d0Z0VMSEEwNXdtSGZ2?=
 =?utf-8?B?RzhxcjBremRrUzdxTCtGeFFXYmRZWUdGaGFZSy9NSWcwbXQ2NzN3N01XSG1L?=
 =?utf-8?B?dSs1YTFiTGRHeFROdG05dmtmeU9qVitxMHJXTHo5Q0tWYkYxdGRRcDRteGNm?=
 =?utf-8?B?VDJVaFhvc3dnT3VlRnd1V1RTdlJOMFh6dzRlVUhQMG1QNy9PQkExaUxmMEhG?=
 =?utf-8?B?c1NhTFNnYTFMT1owZFp5ZGVNM0tUN0tOY2d1MFhFay9VcGNabVVXM3RPQTNR?=
 =?utf-8?B?QlRXT3JWSXdMQ0NyMjVzaWcyZ2ZkTkxDSTFmNzV2c0EyRko2NlNneVZLTHg5?=
 =?utf-8?B?QzVUekFweWlqYkI1R3Q2Rlc4VzEzdlA4NHViYjFGeU5WQktqek9ldFVsRnN2?=
 =?utf-8?B?TExyQlRNSjhKR2xqeHlrOTJuc3hNRVNYTm5IbTZSbCtrSllVMGxUc09wcEFF?=
 =?utf-8?B?eGNBaE44TmZXM2poRENOT0dvdFpxS0JaZXNRNE5UbkpJS1hZS1FCVHAzcWp1?=
 =?utf-8?B?cVV5SXViZXBYclJRVmZNQlBiQlhjWkx6RVRpcGVkVWQyRjdCYlN5LzJQMGps?=
 =?utf-8?B?UUlaY3dqK2UwNVEwRHNzRzFKNlpGSEVFZXJOeTlTeUFZSExDdkN4QjBSdlQy?=
 =?utf-8?B?SjlOTkV5a0YweS9IR1pvdUpkczhWQ1R0NmIyWlZFbEhlb0xTNlF1M1FiZ3NT?=
 =?utf-8?B?SmdLSEhoUFM2OURGdlNMNVc2bkJjTUx6dVFYNzduQXJtMW1vUG05QmtNMUpz?=
 =?utf-8?B?dTAyUUlDc29vQmFYamhRMXFUMU5raEk4bENpQWJJbnliT3ZwTUp3bEhmbkJ2?=
 =?utf-8?B?SHdROVZQY1VUaFozaVVjbEEwV3JXUW84NysyeHVUMTQ3cmJ5SjhJRFNiRENm?=
 =?utf-8?B?MW1sbjgyTmtNemZPTUp0aEZuRnBKbGg4UVhzSnZja1NGVG8reDhZN2o4V2cr?=
 =?utf-8?B?ZFNGWXF6NmpyNmtjM25BZHczSDQwaWYxRTRha20xOXJjY2d6RUtYTWZyeEV5?=
 =?utf-8?B?ZHlLNldCbEtndEpEaUNYL00wS0IzMzB5dHNGcS9lWlk4eTl1dHZTRlBXbmw5?=
 =?utf-8?B?NVFtQzN3UHhGQm9uNFRxNERVOWU0YVM0SE45cTFSZnRMdlhuK0JDKzhDZVlI?=
 =?utf-8?B?Q2pXVldTZ2VZbm5vVkpKRDB4RkVqaXZGZDlWeVhUdHgzdFh2SFcwQ3dXaUJK?=
 =?utf-8?B?cE11UkdLNnR5OUw0MTUvRE55dXpsNmhhZGZXTkY5K1ZBaWg4emxXWFBGRUV6?=
 =?utf-8?B?TWFtVVFDTUhwcytWWTA2anVveXBKWHVSa00yQ1p4MVRIdVFoRitjY0kzSTAy?=
 =?utf-8?B?SjJ2YUQrNVdQb3AvR0R0ZVVUMVJncTZ2WVRyaVVhVldhdkJUU0pwakN1OTJ1?=
 =?utf-8?B?SnhxZmE3dUtudUxieU8yNTRLaHNjdmdrTFZwWTZzR1NJK284N1h2VEl0NE40?=
 =?utf-8?B?NHBlcFlZdTA4NnY1ZmtySFV0UytVWUdzTmw2bmlGK2JXVTY0b0R1aDQwSlVz?=
 =?utf-8?B?UDR3MkJxRnV5R0NMZWhsMXJWMUNjam1uZE5JL2s3b1VJOHhSRklDYVlMQWht?=
 =?utf-8?B?N0VOc0V4T2NiaTBBTmlVVndLTnp1MW5JUEwzaG5zbHg3UU5JZjc2blFvaFJW?=
 =?utf-8?B?cjhrYUVZVmgxS1FQRm1DSFVCNUxVRkNSN2kzcFFZNlZLTmYyK09DZWgwV1VE?=
 =?utf-8?B?emlOYzdhM1RKRUh1ZFFFbnNKQ3RNb0t1dUhhdEVnY3paOHZqZjVYbkdRcUk5?=
 =?utf-8?B?STdzSzU0c1pPR0ZLWlhqZXZ0czVpbmxjWlo2VHlFT2JHQmIxUENLeTJDRGVH?=
 =?utf-8?B?eG1vNEptcnpKN2lQOEtHVUlIeVF6Sm4wZndiZ3lMNjZjbzdHdW53N3hTWkhS?=
 =?utf-8?B?R2M5UUFBOTcvNjhPbFFCL2xSSlhPbGExcDlQUzM5M2VndWRLYXQ5S2VTd05M?=
 =?utf-8?B?Q3lFUmlNc2tWblFpWTVnMmpBaXRrRWZjMU5tTnZudHhJb2UwQTU3ajQ5WDRD?=
 =?utf-8?B?ZHBZV0FtNkNtU01GWTNZMS9aMVVUdi9RRkM5TUtvYU84aVF0NzlKYUxEWkZT?=
 =?utf-8?B?ODFEVUI0dEwzQjBXRjBEVWZmTjlpY28wbzZudDRaTTVLRlBxdFFCb3kzS1ZH?=
 =?utf-8?B?bTZYeVRWU3pXRHhveFhXWUswUUNEYk0yNXA2NTlqWHlpZllkWHlpZGM2dFd3?=
 =?utf-8?B?Y3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a17dccd-827a-4cc4-f082-08dd571a938e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2025 10:36:21.6483 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xd+bSzNlejMKeu3iIPfNbHiouadCgm7oOOq4tABwEphrgXTL6yiSqGske/dbMv8HzeqOPmzNbJdKitEEooRnNm1wmsQNbewY7YmrlMof1e4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7077
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


On 2/26/2025 7:25 PM, Ville Syrjälä wrote:
> On Mon, Feb 24, 2025 at 11:47:09AM +0530, Ankit Nautiyal wrote:
>> Wa_14015406119 is required for PSR1/2 while working with fixed refresh
>> rate with VRR timing generator.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c | 5 +++--
>>   1 file changed, 3 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 0db84af1063a..752ed44d8892 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -2508,8 +2508,9 @@ static bool intel_crtc_needs_wa_14015401596(const struct intel_crtc_state *crtc_
>>   {
>>   	struct intel_display *display = to_intel_display(crtc_state);
>>   
>> -	return intel_vrr_possible(crtc_state) && crtc_state->has_psr &&
>> -		IS_DISPLAY_VER(display, 13, 14);
>> +	return intel_vrr_possible(crtc_state) &&
>> +	       (crtc_state->has_psr || crtc_state->has_sel_update) &&
> I presume you wanted some kind of use_vrr_tg_always() check here instead
> of that has_sel_update thing (which is a nop since it should never be
> set unless has_psr is also set)?
Thanks for pointing this out.
I think I misunderstood the flags. Its clearly documented that `has_psr` 
is always set for psr1/2, panel replay.

Also we already have check for vrr_possible which checks flipline, so 
this is covered for our case.

I'll drop this patch.

Regards,

Ankit

>
>> +	       IS_DISPLAY_VER(display, 13, 14);
>>   }
>>   
>>   static int intel_crtc_vblank_delay(const struct intel_crtc_state *crtc_state)
>> -- 
>> 2.45.2
