Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B866A5EAD8
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Mar 2025 06:03:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD65710E7F7;
	Thu, 13 Mar 2025 05:03:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TzSRJkdv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1624410E7F5;
 Thu, 13 Mar 2025 05:03:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741842191; x=1773378191;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=blbTlsdF0Aeo70Be9//3oavMptg9ORKQATfnwu6CiOA=;
 b=TzSRJkdvUo21iRjxawQHjq2RxPvAmVzGCAySiJCItxrOyJlTjC5X/HRU
 MZTFXklV76ru7ZEvVyjDhiKN8r2kullfd7wXES9bUXofhdXh+yIJczIpw
 g32SgQSp947sIcO7vkfkTjcGLMySRpuFtfxMGvwsjzb4ocJUcK4wkp7Aq
 mccvwjEtHT0MqRx676a3lgos1eyGliN3vXr7oncQAmQ9shvR7YAGwxIQq
 vxHvttlO9YY+uAZASlDsJ2rnQgXiJBz1qJswGnIh+5tWAr3We1OzZRWUM
 kAD2NPEprZl+S+GXF6Y+K+PjamXdAtwwIPcIYOv39l0hhRd1Zisje6ima g==;
X-CSE-ConnectionGUID: 0AZ9rPW6QZSA7rbbhpKlnw==
X-CSE-MsgGUID: mby+qQ0pQ9ifZDCvgx0KXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11371"; a="42973831"
X-IronPort-AV: E=Sophos;i="6.14,243,1736841600"; d="scan'208";a="42973831"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 22:03:08 -0700
X-CSE-ConnectionGUID: AhaFEj0aS0e2C3OwTRkMVg==
X-CSE-MsgGUID: ysshRHbcQzut7hcX+XRvxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,243,1736841600"; d="scan'208";a="120897475"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 22:03:08 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 12 Mar 2025 22:03:07 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 12 Mar 2025 22:03:07 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Mar 2025 22:03:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mguCMBkwoPexzHbDthJPAV8SqZMiPAKQbingw+tse4gMOCNWUNrRJHrXmMNKhfZityReqaMtOYNH/2k39tDbaJBYQCVCeaRySE+sFcQ2MpDIETmj9gaC3RSRM2vT9+kRjfnWWh99Oodor64Zp3+CoYEicgYYTByKHgD+poDcnxvnsygmtcR3UhAolqJhbOF0P1hYevOcQMD7MomAtlSYsgA+dWpKu9tlXibYOxH1wJuhQWK2mnHU2hKhKto8GfmtrnX3WRTbaxwcc5hr92HKIKfvshDIvU+IU70EReM5TQoySJblrzNkSGR230u8mWCLSWQDU00EkWzoB+vnCOSGNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FXjzEPAzHKwIl6RMW+lymkTLI5SzZoCafl4lOR0M3B0=;
 b=FEJaW/qEee6lassiIzA1kBVnaP56286Y157D3onjt5x9+sqARcY0c6KJlhC9mbxyVDUkEhkOLU5pVKIzvR8dcMW+6JH15N1vTl/VL4zvEwB0yIfvnBTzxMyWar0apAFWwyGswxFVcbs/W47MK4+v0N/VA0S0TbAHDHEz99YbMzWfJrRRYXnvC8vBjzJl06WeNhATE0x9WsEq3XouM6srONn9aa1Bo6q9UpMPCGTyaaJOL5dgdACoKNyHWEbQZBIFk2JyM8JXWqejoOOQsOnssy8KHwoF4FKKjFDrkC6Xu/nMtCw4ym757pqt5Iq85PBn90cTnAURlXy23SNwGxByfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA3PR11MB7554.namprd11.prod.outlook.com (2603:10b6:806:315::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.28; Thu, 13 Mar
 2025 05:02:24 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8511.026; Thu, 13 Mar 2025
 05:02:24 +0000
Message-ID: <80c5e517-4355-4a2c-966f-f9b7ccff182f@intel.com>
Date: Thu, 13 Mar 2025 10:32:17 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: Maintain alphabetical order for
 HAS_AS_SDP and HAS_CMRR
To: Lucas De Marchi <lucas.demarchi@intel.com>
CC: Gustavo Sousa <gustavo.sousa@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250311135925.1523852-1-ankit.k.nautiyal@intel.com>
 <87wmcvfnin.fsf@intel.com>
 <174179922572.12216.11347505165808081803@intel.com>
 <cdb8af14-e5fe-4718-991b-1b44fcea5d04@intel.com>
 <ktvzkpyjl5mf64bizabtr7cumt7qcm4ipe7vpwnyibwtqfoyxk@tuwfw32wl267>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ktvzkpyjl5mf64bizabtr7cumt7qcm4ipe7vpwnyibwtqfoyxk@tuwfw32wl267>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0028.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:b8::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA3PR11MB7554:EE_
X-MS-Office365-Filtering-Correlation-Id: deabf0ab-74f6-4324-f337-08dd61ec3e1f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UG1nNmJEc3VwS1M5eUNZU3RPSW1PTktobmJuSllUUDU2V1BSTzBUcXVjZmVz?=
 =?utf-8?B?LzE0MS81SEtoNGpqWWpENkQ4WFNOK25aRSs2Q1VpV1BJUmFaTGRkYXVrbmh2?=
 =?utf-8?B?dnlwMklaVTROTVdPb3NEQlIyYnc4b0hWMHJSeWtPK0RVbWxCREd6WWFDNVlB?=
 =?utf-8?B?KzFiNmwrWTdRelBkSWYwWkdyR3hsN25ySVQzcy9ibTJjeXRKRldTNVNkR2JK?=
 =?utf-8?B?TXh6OE1zeEQ0cWVGL2RNdW9HbW8wN09KdWYvSVlyZG9lcjBSUlFBY3NGT21Y?=
 =?utf-8?B?RGVqME5Iajl4TVdTMVByNjYzWUFmQWRQRzlmQ09IQmtKWExERjFjeHE3WnRn?=
 =?utf-8?B?TmRlSDBzL2NCZVQ5M1YxQVNHUCtTcnpOWjBHdm9oZXVvTHNiTXJPM2gwTnV1?=
 =?utf-8?B?MHQ5WmRwbXJ4SHlPdVI4MHF3UUp2ak1MOXdlVUhTS3hzbkRhZjRIeVRaeW9H?=
 =?utf-8?B?QTE2RzQ2cVpjK0lzR2VJUHFaQ2NKc3EwOWZCSzdJWkkwL2ZCYjRUWUkwRXpk?=
 =?utf-8?B?UHVXZHpaUzcyWm95UXVhUllFSVZrUzlWVEF5SEZkMHBmTUNQUXVQUFBWL2dQ?=
 =?utf-8?B?eW9ESXJzcjNZUjVUY1BzcUEvRjd1ZnN2cmpGYTJMOXYvclRDZWgza0VRSWxH?=
 =?utf-8?B?dDhUL2x4eFk5QWJRNForKzBZYkZ3YTlBc3RCOWtHTWtkcFJEVm1BcnhxOGVD?=
 =?utf-8?B?dkR3S01USDkxcE1TSVl1emhDMkVndXRyMnVQVUlYS09NUlh2dTJodE4xenRB?=
 =?utf-8?B?UStQTjQ3VUpWb3FxL2VEVlQ5V3Z1eEQzeUgxckRocXNjRDFPdzZqc3YrS3Fm?=
 =?utf-8?B?MDVmekJZR0Q2NWRSNFFmandvd2cxMHVGejgwczF2OURiZHNQcDNGeVdMdUdJ?=
 =?utf-8?B?RnRSaWJFUmxOYXlZNDczaGNsZnFhcmJBUjNZcGtPa1FGY1VNUmJGU1QwMUh5?=
 =?utf-8?B?NzlXcnNSMXFydUZoeHhVRWZ6aDZYUGQrWnVHUEtIbXpxSlRGdm1xYWlXV05k?=
 =?utf-8?B?MVRPdmhxSU1OK3d5QVFlMTB5eFJuN0d1VC9sdi9KK1NCS1NRRlE5bm9MUWlO?=
 =?utf-8?B?Zk5SVVhWRVhySzB5ejZqVlpEeVl2VFM4dUhuSGRUUCtNSVdaUUlTeVI1VHZt?=
 =?utf-8?B?ZmQwV3VpR3dKTkZCL2hlMnVsazYrQ3N2RVZQZWxhZ2E3eFBDa2toUGtLMlVK?=
 =?utf-8?B?a1RJQ0FzNjdmVmVTL3ZqNVU2YXVPMHc1MTAxWllneExUYjUzUjhKWFl3dW5m?=
 =?utf-8?B?MktWTjlObkFRUlRkZzY1bzhsWFZ0Y1VQZ3hDSzltRjdYVHA3QW1MUXBsUEc5?=
 =?utf-8?B?dDRwT0R2S24wZU44d0xlaExiL3hQWVNLNnJsbkNGVmVBOEVsZTJkYVBqQzlS?=
 =?utf-8?B?K0VuTS9yQXArSDlWMTdsdVNOOXY5MFY1c2lwNjVKbUxYTUFlR3RCY2E0bE1L?=
 =?utf-8?B?M0I5c2hGWFo2c3E4RnZHTkNzWGF0YkpsM0QvTmZSeTNnNk1wcTE1R2FkSWJH?=
 =?utf-8?B?d1BLUmRRb2lIVVFsTng5dndXMUFaVktPLzA5bmMrc3dHWUR5M2RkSnFzWC9M?=
 =?utf-8?B?bUk0UVBjWElaRmJNZlJUd0RHR2xrYk43YUMvUmpzN0R5SEh0OWlvaWpBSzBH?=
 =?utf-8?B?clBmdTNHOFpSbS9IM010V05wRE4vblhrOVVYZC80Z1ljdmRVV2JNNVM1OFdZ?=
 =?utf-8?B?dnVHSGlDc0tiOGllQ0E5T1VUZXRCYTRWZGtQRGxFQllxaVlMckJLck9hUG1k?=
 =?utf-8?Q?N8Xt8Sa/PfP6Hh8V8xzSHqr/7gHCdSgm05qaZB5?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T25TT09za3YybkhaWVllUlJJeXVHSVV5cjJWNWZhTDZTQXRYN3ArSWV1WkR2?=
 =?utf-8?B?VmxxV3JnZ1ArMTZ3bXRDUTQza3oxSHRTZmRsZWpkNmVsNjlKOXo1UTUrN2VS?=
 =?utf-8?B?U216NnYzczRiMmNrQStVVjhyaUZMNy9oSmRDUklwbmFDVkN6M1J3bUkvamxL?=
 =?utf-8?B?aHpzVEx3WkJ5MFlqOUNRbEhiK0RpbkpYSnVqRGtXbXFDczYyQWdmdW5qZmtZ?=
 =?utf-8?B?VlovQ0N1WVJIVkVVWU9GZWJUa2RLbHE4T1VDcXBIekk2RTNwblZUTnB2RW9W?=
 =?utf-8?B?R28yZUJvVGV0YXBWY29JbC9PZ3phR1JiSWd4WEhRR3JNRWlYcklmeUR1TjR1?=
 =?utf-8?B?NFExTDRmWFFuV0FKaXBEQ00yNXhSQTdIWlFZeGR3OHRQLzR5SnhmUFpCTkkx?=
 =?utf-8?B?eGM1Q3FPcGlHMVl2YlNITXhUMWxoYSsvQjJDc1hId0psbFRwRzgzajNaYmdJ?=
 =?utf-8?B?RDdyWUtLaTZOeWtsMnR1blZvL00yYkVZTDNKUkZQQVF5Tm1uUUxCYStXS2dW?=
 =?utf-8?B?NDF3WUZEYk1KMGJzNHNZSnFMcWZWN09DZVVaMy83REt6ejEyZmFsM0ppZDl2?=
 =?utf-8?B?RGtMcm10VVRvd0ZYOXdZZFE3aklZd2dJb0N5cDZNdkdCTUpReDNWclFXL0hi?=
 =?utf-8?B?V3AwZzdxU2JBczF4NWJkdVFSTnFVVVFQK1pkdEh4RW9ZQWowNGFxclo5N2Mr?=
 =?utf-8?B?akliYXUwZGxhMkp4L0wyNVdpU1laU280U0lLS0FCQjVZWURRc3RTbkFQWXgx?=
 =?utf-8?B?M2FheDdRNVNRNURUNzV1L090cEFtYjJuUjRtODVkQWw4aHA4MHZHMDB6eUtW?=
 =?utf-8?B?Q0VnY25rR0REbit1Y2xVazJDN2pqQm0vM213ZmhVK2k4Rlc5RkpLZTJvNGtE?=
 =?utf-8?B?VHU5bGZsaHJ2eDRCWk1kVHJpUWYyQVRkNC9KWXc1c0I0OUs5b0lTQURwZ0Ur?=
 =?utf-8?B?NnQyYTNmaWFneThzKzlHcndsdUtudTR4SWY1QjVySFhhTzBXWk9CVzZabWNW?=
 =?utf-8?B?aUN6bjEraVNIMVlybWkrZUs0UG42NzRQdzM3SlFuN0hBQVBXb1NOaHhDMnh3?=
 =?utf-8?B?Qmc2SnVuMStoUU0wS09wYXgwdmJBazhlZDAzUnVMalp0KzBJamVtUDRtM1hS?=
 =?utf-8?B?SWUvVEpySXdGYlQydkUxdFcrenlINWdxRzh6Z1BPcGNqL2Nua1hmc2J1bU9N?=
 =?utf-8?B?bEFiRG5EQWo1Q2tyUUVkbEc1SVNPMzcyMExsOVdDOHVoaFdjZFUxZkZIU0FK?=
 =?utf-8?B?MlA1b2ljeVd6SXJsZEZLOTBweGJ4ZnRjMHVZWEplZE9laUM4RDRobDIxb0xG?=
 =?utf-8?B?RnQwL1E1aWdLbWUwMzdEdElxaUV4SlJWVU1raG5jTkdnU0Y3SkNGMjdibExn?=
 =?utf-8?B?eTI3Tk5iSGVBV2M5TDFUcmwzWEJ0MWxHY29aMnBPLy91eGFLd2t6bmZwQjBo?=
 =?utf-8?B?NnI1Y1QwYkw4dnlvRTFUZ0FOV3hGS3U4UlpCY0k5U1V2Tm1keEdNTTFsQjMw?=
 =?utf-8?B?U0dQTnNkbG02SkxZUzdoZTRINHhBL3prcFF0UDI4a0lMRlBYQlVpN3Q2M2sy?=
 =?utf-8?B?VnlGOCtRQk9xbzlDZG95ejRSUHRPZGZrMDhpZlNySCthZzJlcm0zWUJ3OUJk?=
 =?utf-8?B?clJYYWFHVWN6UmIvTWZJV1VYVUpCT2ZKekRqUVhlQm9tWEw0a2c1Z3FXLytM?=
 =?utf-8?B?V1RvcnhDOEhWQmVhNnFPV0dSWEszZUxxencxN0tDR0s4UGtnZTlwdUsxdFZC?=
 =?utf-8?B?eWl2MWpUT0MyY1hDajE3bEZKdjd3VzNlMVEyRVRuamhjTzhwNkt2cWt4U3VV?=
 =?utf-8?B?R1JWMGNMQWZudlE3MjZBcWV1eFB6VzRtRkUrRVlHZHZpMkhTRC9UaEZ6M0Nr?=
 =?utf-8?B?K0tDSUhZODRyQ0l1NlExRk9Sd3BUN256eFpPcHdKWTFzVVlBYVMzRzI2cmhH?=
 =?utf-8?B?Q0tZSC8wajRtRDBhblNHVVZLRXQxSjJmMURoYW9SYkZCTXlkYUVIWnRKOHEw?=
 =?utf-8?B?Q3BQT2hYakhhaTVjMVBXQlFCNGJPQ0pKSy9aWGFFRUJIQmhNUlhkRFJlOFkx?=
 =?utf-8?B?STgxNWQzbzlyek8vRWZmUGxQWXZHNW4wRXY4QmJmR1orZVdBeFowNzIxSDQ4?=
 =?utf-8?B?cjQ4NWFDRkN2Q1F6ZVZpcGdVK09WOHdsUC8zM0FjYUs3YTQrNDBWRVZPZkxv?=
 =?utf-8?B?Qmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: deabf0ab-74f6-4324-f337-08dd61ec3e1f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2025 05:02:24.2413 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ulz4oqsJbu3X9M3jWTPzdMgRTPiHIldA6dgtwiitCyt7Ypg+EXo5AmvIlL1DyFrc6kS83dJnu2J1h+hpD20trPvZz6u9eUgyRsCfvPNs8+k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7554
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


On 3/13/2025 10:15 AM, Lucas De Marchi wrote:
> On Thu, Mar 13, 2025 at 10:08:30AM +0530, Nautiyal, Ankit K wrote:
>>
>> On 3/12/2025 10:37 PM, Gustavo Sousa wrote:
>>> Quoting Jani Nikula (2025-03-11 15:08:48-03:00)
>>>> On Tue, 11 Mar 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> 
>>>> wrote:
>>>>> Reorder the macros HAS_AS_SDP and HAS_CMRR as per alphabetical order.
>>>>>
>>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>>> ---
>>>>>  drivers/gpu/drm/i915/display/intel_display_device.h | 4 ++--
>>>>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h 
>>>>> b/drivers/gpu/drm/i915/display/intel_display_device.h
>>>>> index 717286981687..332647c4ca81 100644
>>>>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>>>>> @@ -142,10 +142,12 @@ struct intel_display_platforms {
>>>>>          func(supports_tv);
>>>>>  #define HAS_4TILE(__display) ((__display)->platform.dg2 || 
>>>>> DISPLAY_VER(__display) >= 14)
>>>>> +#define HAS_AS_SDP(__display) (DISPLAY_VER(__display) >= 13)
>>>>>  #define HAS_ASYNC_FLIPS(__display) (DISPLAY_VER(__display) >= 5)
>>>> Y comes before _ in asciibetical order.
>>> Maybe that's just me, but I feel that's counter-intuitive in a context
>>> where we use _ to separate words.
>>
>> I do agree. I was assuming that we sort the words separated by '_' as 
>> delimiter.
>>
>> For a given hypothetical list, I thought the ordering will result in 
>> similar items grouped together
>>
>> (please forgive me for making up silly names here)
>>
>> HAS_HD
>> HAS_HD_AUDIO
>> HAS_HD_DISPLAY
>> HAS_HD_SUPPORT
>> HAS_HDMI
>> HAS_HDMI_PCON
>> HAS_HDR
>>
>> But with the `sort` command it will be:
>>
>> HAS_HD
>> HAS_HDMI
>> HAS_HDMI_PCON
>> HAS_HDR
>> HAS_HD_AUDIO
>> HAS_HD_DISPLAY
>> HAS_HD_SUPPORT
>>
>> However, if majority of folks use editor's sort command it becomes 
>> simpler to have the ASCII ordering for everyone.
>
> we would need another command to do "the right thing", for whatever
> definition of "right" we want.  Not sure if it's worth pursuing as the
> sort is also used in other places like includes and build objects in
> the Makefile. Would we change all of them?

You are right. I understand the importance of maintaining consistency. 
With that in mind, have also sent updated patch: 
https://patchwork.freedesktop.org/patch/642578/?series=146185&rev=1

Just to clarify, the example I provided was meant to show my thought 
process rather than to define the right way to sort.

Thanks for your input and the tip for vim too.


Regards,

Ankit

>
> Lucas De Marchi
