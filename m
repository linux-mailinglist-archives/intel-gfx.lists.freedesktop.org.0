Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A7C8A5D51C
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Mar 2025 05:31:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49FFA10E6BD;
	Wed, 12 Mar 2025 04:31:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F0iWxSdA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 040CF10E6B6;
 Wed, 12 Mar 2025 04:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741753871; x=1773289871;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=w9aB2nDJQ9ddBImOSnA6jI1Cx+XtCxYm9hdajkF0UqY=;
 b=F0iWxSdA7eWfzt1AMfQEzhRFhlWzhoNzYhkNJjKBrFA1cqAZG1zJYoLa
 CiUFbKbuRbY+G5hzmIODU1R//LmDKnIBEcmeo5loKSgRcG6g8qw/Amy7R
 1mIsT9k84M989TX7skqfDFHI1HuyZItnO3D8+635TEfmVRzJKZEAWT/zy
 Uxl4J0IM2hZWsyjzxRiahXOq8EiASqIRNm9Ca+NvKIPaY7irAfVJtuVct
 IyFJM7N8/YdO5lAJzE+YjLWwAFtc8xQIydX/mzwCmg4vIQf7kgdYMATTh
 m0L4liJCMEBhJZadSDKbO5SFzmv78efGlAXlYZTS/Vupz7ZU3GdFvsRPl w==;
X-CSE-ConnectionGUID: gV4iutfUSfa1Afa299Xx1w==
X-CSE-MsgGUID: Hrd1z5GpQBSeTehR2BzE/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="60364579"
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="60364579"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 21:31:10 -0700
X-CSE-ConnectionGUID: ls+3lLMjTViH+3475Fqh4Q==
X-CSE-MsgGUID: qtCuwGjWQoK/yYTovxDJtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="120471096"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 21:31:11 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 11 Mar 2025 21:31:09 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 11 Mar 2025 21:31:09 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 21:31:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OXEFvudyDrEkvae2jCc8BjCeZe4KkEBoQ2NF8eeENjCtSgWK2Nzr2PTsXQervrcahavSul6+d4JDZhZpfm40abcJsjuhYxPGMp0uBcFv7DqNDqvhWErOmGh0flDYju25o2ZRpYkhL0sg2tTEwIWnZCqQhEH0XfwSDy35ClmVj/OtqHGBQuZVi/2c6FVeZtgy0TE9EU34+xn9xGiv7d2mnlb6x6+HCsE6fQKntsKxjTyvZCw3ZKf2A9jVhwBBSW7NHqj6SIO+oY13qAoMxHWE8xgkS6OgBe/RvhzYO/BoaId84BaQUC3xpFRgB7SOJpKebAccY9qLTuCLWT7B+TK25w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rSwk+9YI64auTvkyqIAFZpCXvHoR0vKd/k/1N5pm6aY=;
 b=L/EoLT7IC0ptmZuFSNS5KRNZxfhef/Af5Opp4coBft1NRlh+igsAxgiL3oJY6h9p1MgmoIoVeWR4WHsxMqODFBmU4sJ+XueLCy0p6nhDTaiu+VQMCB4Ron38k8HRJ50qYpdaOQIN6k1HAZft7w81eU5ZWqSqjmwFV8sENHyCyNELvAe7K4DY9hDbIzRz1/5NN8rCtx8ReB2KsZMlaBqeJcUTzF5DG2L2HSWivtQ7U0hhQvc+XyJXHKQJRF+fujRvPYC3HqTOaxbTBDB5Kci8vE/ya0f8AhhC6w2M6hqqp3qn/br+S4JbDQZo0dvkP809b82IrF3wYU9PDS3qs+QAMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB5085.namprd11.prod.outlook.com (2603:10b6:a03:2db::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.26; Wed, 12 Mar
 2025 04:30:49 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8489.025; Wed, 12 Mar 2025
 04:30:43 +0000
Message-ID: <3e96d168-77c9-4726-a127-3f105b26f6ae@intel.com>
Date: Wed, 12 Mar 2025 10:00:36 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: Maintain alphabetical order for
 HAS_AS_SDP and HAS_CMRR
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250311135925.1523852-1-ankit.k.nautiyal@intel.com>
 <87wmcvfnin.fsf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <87wmcvfnin.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0172.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:d::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB5085:EE_
X-MS-Office365-Filtering-Correlation-Id: 432956ed-5b7a-431e-8226-08dd611ea671
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cVUyWU1NZmNpTVVmY25lSTJYZVJQL0RyL1dTOUN0c1Y4VG1lZ1d3SENsT1Vp?=
 =?utf-8?B?NGh3bW1wM3RQemRESFpteXJMMWdGSUpjbXAra0ExbnUyOWIzb005dHhXYVNH?=
 =?utf-8?B?TlRrME8zMC9tNXIrZnRITzNCN09jTlYvS1kvUDI2NWFzeGdLQllWanh3WndQ?=
 =?utf-8?B?a2s2eldFMDJiK0lNRStkRVpSVGFJUWR3cFoyOWNhV3ZnTzgxSlcxeFozanZE?=
 =?utf-8?B?QlZNd25tS1I0dVgyVExOdFZ1SnhIVUxHNFRheU5ISzJrckhSWHB6bE41dFJY?=
 =?utf-8?B?QVNQVTU2OTM2NWp1QXRoRjFza1dvcU5CQVVGNEtsRVRoaFEzRU9YVEtJOGlH?=
 =?utf-8?B?VFFWTVpJZ2FkbHp0SUc5YXlYY2NxRVErckNoeUVURjNoeTdEODBxMHEybWh5?=
 =?utf-8?B?MWlVYVFvdjdVdjZldzc4QmYxajg4U1M5Qmk1MkNzRUc5UU82SmdmSkxyQ3Qv?=
 =?utf-8?B?QnRjRWlzMnVXcHZ5d3lRc0xvMUxYeStLNFVVanVYTHNwR0hBZ00vVGJ0cFhQ?=
 =?utf-8?B?eWR5NVdmZnkwV0NUdlExUUpWZ0VUaFNKNUYzY2d5MWdtVXAxMHJmM1g5QkRE?=
 =?utf-8?B?NTg3M0N1em5NU3ZHeHR1empxNXFHZW0zdFczQ290QlpaVjhid280NEdWK1dB?=
 =?utf-8?B?TVRUVWc4bzl2SXZrT0V4UVloL3NIL0YxZUk2WnBlZWg4LzVpZXprWDJHb25U?=
 =?utf-8?B?eFZFSm9xSXlJUURUL0FQNUorMFZyZXhrM3ZNTE5nWXhMZUpvMnlUd3lmMSs0?=
 =?utf-8?B?Z1V0Y0ZDcU5RMWdlaWZiWUs4WnhMOWpxUzA5Z0RyZnN1aHAwMGVnZ2QyeDFL?=
 =?utf-8?B?ZUxFVmh6RWRGbWdkQWNaV1RkTG9JSHdhNEpQdGR4NUgva2hTSzE3R2VnbGds?=
 =?utf-8?B?c01aR1FUN3I5azQ1SXBUWDJLbmJNcGN0NVV2SHkvaGRYdkRCd1lWbzVyZzR1?=
 =?utf-8?B?Ylg2WnQvc05uZmxvcWsrMUpERXFuSVZ2Vlp6dGhSM0JPc2lGR2dpZCtlaktB?=
 =?utf-8?B?ekNubzJycFhDRnJSM2NUWEljMlVxZ3VhNU1vMmhSRFp4VW9KWWpOaXRtSFg5?=
 =?utf-8?B?TVlVS2tLanJLUVE3QjlyV3NVNHZaNk8xZEY0aGdocXRiOEIvWmtoN0xVMisr?=
 =?utf-8?B?SHQwc2prNnhaN3F3OS9mSXNQYlg3NVJvSlM3WjdIVTRYckxPeW8vMlVXaTl4?=
 =?utf-8?B?TFV1b0ZKZ2dlTTJiVlpTeEsyZ2FEdFNVWEprSTlyNm9XOHlrL0FjWFdBRVpZ?=
 =?utf-8?B?dW9LV2pxYzQ4d1hDMjk2S216S2I0YXo4UDZKWDZRYTdHbWNvbGR5Vm5hU0Zy?=
 =?utf-8?B?RHRER05DUkY3clFka1FTWC9nZ0IrUGZCRkF6T243NVBVQlhhSDhackx2VGox?=
 =?utf-8?B?MW92MkpsSW1HRHUybGFodkRxRzhieEVDNCtxdGZUM0s3TzRHKzJWUTFya0Ey?=
 =?utf-8?B?V21lMzBWN1BlV3VDdEhxWUYxS1JpS0FuTlhaOHpFdE9VSVkxNys0NkV2eVly?=
 =?utf-8?B?a3hjY2w3MnlDV0lMOTZBWDdxaG1ZSDR1bzhXTmVQM3hPVFJlejlqUnF3Sjl4?=
 =?utf-8?B?eW4zNUx3bjlscEFsTEtrTUZGbVkrQzl5enZGeGk1M1dMRk4zSEtCT3R0YWxp?=
 =?utf-8?B?WWtiRFlxbjB6ZnZuY2M3dmQ2UWtyOEVHdmZ3OWo0S09mTjRWaDJ3c2xUVWpE?=
 =?utf-8?B?N0FjeERvMzR6NjBOSFJnOU42ZllReUw3UWtMRXFRL2paV3JvaFBUazlzS2ZL?=
 =?utf-8?B?VVhQdUErV2N6U29vV3hOdm9GMmpyTHFzaDNWQmVtQkZXNkRCZEswMm9QZDJE?=
 =?utf-8?B?cjhSK2NvV3dVS2J3dzNOVGY1Mm40azZHeGRkMjNIYVIzVDZnY1BCUHRjK1Ft?=
 =?utf-8?Q?71WzMZdK5Fg46?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M1JlWnpTMlBpVy9sNGFkMytuUEdXNFd5QmQ4bXpvdER5S2pjMStsTVd6azh3?=
 =?utf-8?B?bnh1VFpoTGc1blowMEZrRjFrTENqNXlDRDhzUEJGQnlRNmJiaTlESzdPZmx6?=
 =?utf-8?B?UWhBRTdaYW5DclVPSC8zRHlGVGhjYUU0b2ROM1RmMFJiTjBpOS9VbXN0TDA0?=
 =?utf-8?B?clJsazE0M3hySU5IaVhId3pTR28zQUdTU1RzS0llRnV6MmlyMFdESUQ0Z1hk?=
 =?utf-8?B?Wm5hcElmZmpXTVY0NmZSczExK3ZIdlphb1JvcGZ6WGZ1RzFseGNhdWN4R29H?=
 =?utf-8?B?Ym02R3o0bDhWT2VGMXlpTmQyV2Exb01XRURYR1J0UERsNExkZmk2alFsSG85?=
 =?utf-8?B?S2pRYkMzcmpiOGIyZllHYkRsZEEzRit3bk5GSTQ1ZzVkeTNFZEszWldmTWpR?=
 =?utf-8?B?UG5KamhBOXFxTjM5Ylo5WmFiVnNhRy9EYjZmeVFIZjdkUU12YlVDY3d0cFll?=
 =?utf-8?B?TUZMajFXM2xtK3l2RzVaYXR3dHo3NEp5ZVd1Slhib2hhMUxRYnFTY2JrdXZR?=
 =?utf-8?B?b2hLelBwRkR2UXYyMFcrRVJDbksrb0RaT2o4a0hyNnJ6UzBnSkx4a1RoR2Qv?=
 =?utf-8?B?OGR0UXY5MHVVSm5VYTlqYXdtc1U2T3lLcXNpdDVSN3dlaVdRU0k3QndxaCsy?=
 =?utf-8?B?Tkw5Zk1IR1lxemJoN1ZDTGVxR3ZIZnFOcmZ0eWlJL0ZaSW03WXJOMlc4cU9L?=
 =?utf-8?B?Y1VvM3ZNUlk2dWIybk05OEZIb2FOY3RRTEJLaHh6OFg2SEYwcEFRV052cDFU?=
 =?utf-8?B?aEoxNVRRWU56ZVoyU1VmdnkzdVB4RExkLzM0cmlqa3grbHg0RkZWV29ZbDIr?=
 =?utf-8?B?dUhwaW0yTmNJRFB6ODBOUlMwL3lTWkFDTk9VcnljUVB6N3lKZDM4K0xsa3Nj?=
 =?utf-8?B?UDdJalp4TlU2N3JWOGIrcXFBSkpBNTRNMnR6VS9LVEU4ZnovVGFXRVJjcEJX?=
 =?utf-8?B?bnJ6Y21ESjRqWS82Z3FzZjZPc3ZZNVNlWk56TlVqWVN5dUtZRnFzdEt4SVVR?=
 =?utf-8?B?Zmt2VThhVmExZ3g5UkFTdTFCZWZ1enhmZU9CWDZCczcrd09RQmtFejBDb3U3?=
 =?utf-8?B?WExpMUtzRGEvWm1IalB4UmJsem4rZmVuNmI2ZzU0cHV2V0ZNeE42SENibXRn?=
 =?utf-8?B?dXkrbTJhWU1tNHA3ZlNwVWx5ZzA0Sko4UVFlRkQzUnRoeHp6ZVZtWkQ3dzU1?=
 =?utf-8?B?WUdpVjA3UWRQLzRsTythYjA3c09mSEUvdnM4TGFSeG4wNXNBT3c1THVrN3gx?=
 =?utf-8?B?L2xNb2VFWnpoY2ZnNGUxZGViVmhhQ2JiY0pYS1dwanNiVUpsNXhKOSt3Mlo1?=
 =?utf-8?B?UmZsRjlVam54VlF0aDA4ZElwc2FNejdvMVFIMlpBeU44cVMrSXZvaFJZU0R2?=
 =?utf-8?B?T0kxclhRbkRCRGgveGlrNERFSzZKeE1OWmJvYnhRM01VaXQyU0tZU2tjZ0Ew?=
 =?utf-8?B?b3JwK29RVnY2ZWg1UTBRRDlyampkMTVnb2RGaWVkbzA4bWF0c1VLTHZUc1VR?=
 =?utf-8?B?TGs1a2ZOU2ljOHRoSzB2Y1FhMFpvS3ZDUk8xc2Nwb0YwTWtGWFptZGUzQWtK?=
 =?utf-8?B?YmVqUmF6ZkU3TlY3QnBLYnp0cG1pK055NTdEeFVZVThUMW9PajdtcG4yYm83?=
 =?utf-8?B?b1dMV3p5dTd6cWxSd05rcldqL3ZvSzVMY1IxTWEvTmhWY2cvTTBud04yRGM3?=
 =?utf-8?B?YWhnR28yZVVTcnVNcU1CZXlJVk5mKzV3YnFpQXdoNHNEb0RPeXlyKzc0by9N?=
 =?utf-8?B?UTVxWTJWQlJhRkxkblI2Mng4Ly9rVGxVK0xjQUUyZi9oMm9UYThNajBDVHN1?=
 =?utf-8?B?MEN5bTNXRTRRT3hRUzl4N0hwWE9zbnNlanNWWjFyamJmc2ZoK2Z3N1lQNndD?=
 =?utf-8?B?d3pUN3Noc3JROC9TaDVrazc5cEt0RkgwaWtyazZrdUg5bzdNYlp2QWlKU0lz?=
 =?utf-8?B?VmYwdGFQV3M1WXNJRG15TmxzYmVuRXRLbUErbXQ4eUNqTE5WQ3huakZwZk90?=
 =?utf-8?B?QzJya1FFRUEyYXV2WEF0dms4cXN6WmdsWk43NXdncHk1aE5YQXlOY2IvT1pl?=
 =?utf-8?B?WkNIQngraXkyMzIxTnRrTUJBSnpVamlMcDRJMll1aWZtb25LZ25uYVVNamxo?=
 =?utf-8?B?RVMyWUtFNGJpUXZ5b1cvZ0pzZmdBQ1ZONGt6UVhkWjdPc2JSc2ZEdXdGWTV4?=
 =?utf-8?B?c2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 432956ed-5b7a-431e-8226-08dd611ea671
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2025 04:30:42.9146 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: giZrrq723d0lAXpgGG3NG5M/KnTMWsqQpUFPgAYkz315CxkK/AzuPiME2Bter/S2P9HBGHelqpvnXTc67D9ja+m4B238xlrvRb+ODLIVUcI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5085
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


On 3/11/2025 11:38 PM, Jani Nikula wrote:
> On Tue, 11 Mar 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> Reorder the macros HAS_AS_SDP and HAS_CMRR as per alphabetical order.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display_device.h | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
>> index 717286981687..332647c4ca81 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>> @@ -142,10 +142,12 @@ struct intel_display_platforms {
>>   	func(supports_tv);
>>   
>>   #define HAS_4TILE(__display)		((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)
>> +#define HAS_AS_SDP(__display)		(DISPLAY_VER(__display) >= 13)
>>   #define HAS_ASYNC_FLIPS(__display)	(DISPLAY_VER(__display) >= 5)
> Y comes before _ in asciibetical order.

Thanks for pointing this out. I had a misconception that we use _ as 
delimiter and sort the words in alphabetical order.

Will correct this as per asciibetical order.

Also will change :

HAS_DP_MST
HAS_DP20
HAS_DPT

to:

HAS_DP20
HAS_DPT
HAS_DP_MST

Regards,

Ankit

>
> BR,
> Jani.
>
>>   #define HAS_BIGJOINER(__display)	(DISPLAY_VER(__display) >= 11 && HAS_DSC(__display))
>>   #define HAS_CDCLK_CRAWL(__display)	(DISPLAY_INFO(__display)->has_cdclk_crawl)
>>   #define HAS_CDCLK_SQUASH(__display)	(DISPLAY_INFO(__display)->has_cdclk_squash)
>> +#define HAS_CMRR(__display)		(DISPLAY_VER(__display) >= 20)
>>   #define HAS_CMTG(__display)		(!(__display)->platform.dg2 && DISPLAY_VER(__display) >= 13)
>>   #define HAS_CUR_FBC(__display)		(!HAS_GMCH(__display) && IS_DISPLAY_VER(__display, 7, 13))
>>   #define HAS_D12_PLANE_MINIMIZATION(__display)	((__display)->platform.rocketlake || (__display)->platform.alderlake_s)
>> @@ -189,8 +191,6 @@ struct intel_display_platforms {
>>   					  ((__display)->platform.dgfx && DISPLAY_VER(__display) == 14)) && \
>>   					 HAS_DSC(__display))
>>   #define HAS_VRR(__display)		(DISPLAY_VER(__display) >= 11)
>> -#define HAS_AS_SDP(__display)		(DISPLAY_VER(__display) >= 13)
>> -#define HAS_CMRR(__display)		(DISPLAY_VER(__display) >= 20)
>>   #define INTEL_NUM_PIPES(__display)	(hweight8(DISPLAY_RUNTIME_INFO(__display)->pipe_mask))
>>   #define I915_HAS_HOTPLUG(__display)	(DISPLAY_INFO(__display)->has_hotplug)
>>   #define OVERLAY_NEEDS_PHYSICAL(__display)	(DISPLAY_INFO(__display)->overlay_needs_physical)
