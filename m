Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF239DB5CE
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2024 11:36:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9038F10E34E;
	Thu, 28 Nov 2024 10:36:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cRJ1fbH7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F52510E346;
 Thu, 28 Nov 2024 10:36:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732790162; x=1764326162;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3G6fFAN7vy5BNy0+617YRT7UetQrjAzZy9ssO9mNkYo=;
 b=cRJ1fbH7GW1gtN/CrGEicR2JdnDCTwY3LtjK+EHu80voJLh7lNWhLODW
 Td+etcq/KygXOAAaLtQ5M2fhHFuowO2ip97vKp841cQKtEJgobZT5R/iM
 tsrNfr4NhTWf1tC6GgEXCQzWtJ+PDVat8yUB2KzSRJEIiAjXFOEuF8eaT
 m57+tO2dQ9mgCLlr/B7DTVwOs7Dk13yGHgmvI/2EeOrl7r680YYXtbjw2
 ubduBGsi3sIn5KQqci04qSN1cozkTr1ALo7Ix9v/3Rt0ykZ/x/6Esb0cr
 7Di2PzVr+qk/qXWBzZDpYje6rkgICVsrJ7yUJKHuF3h20mN+GaQGT30xC A==;
X-CSE-ConnectionGUID: veMYCH6lRyaXml+QKxneag==
X-CSE-MsgGUID: tWYN5ayvTOaUyrETL/qyUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11269"; a="44395341"
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="44395341"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 02:36:01 -0800
X-CSE-ConnectionGUID: 0ZS969KLTx6ecwMY2OAYUw==
X-CSE-MsgGUID: ES6apXzeQUGuXwD6qtrY0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="97161399"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Nov 2024 02:36:00 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 28 Nov 2024 02:36:00 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 28 Nov 2024 02:36:00 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 28 Nov 2024 02:35:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q8AGCVfzO0kpMyAhnaL9bTsgLgFajQGgZ4Dfy0nxMsQk6ezwVh9arDOA7GkrPfzGW2CDvMjAPEiP+qp4olzzK4H8qzSM22BIM85HXH75IK56T9isZJ9LJGBkoPybkBGDE8HfU349+C0ZbDQwxMEYiBjKUUWFhjA90AgCIpfqq7SZV6hxEGkrfZo0gn7i18K1QbjW/r48fksissELjLx+2jNpFWzWr6TIaM/CixR0v8bkH+cOCqnF4CfZwAqZ7TOQXcR0GBfrK2+VQK3LVRYoHmXZ+wdQGroStYB7Yv2JOBWdwL+DhpiQH/VJwY027xudUa7jhCks/vn+ZZYANoLV3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p2Fwui4ca42+LVagM/zykL+aw/WFw2EtDe9D+RdipXE=;
 b=FOh8J6KK6ErR5KxdK4WfoLhCTiMbLeaf79EFiF21APQnrIquzktFFf+KjTlxb77dK3Ao+HbP15HM9d5OH5Cl+SLjVUmbVZTzl+QW6rvkk4sNuTl7TL81yH7+UFx34XNWOhxq/4CyLZMLZrSmF92YGbvXuWKoA4k3S75p6u6heHIrgYj6wd8zigg/Aq2porOziRNaqNvMBz0c1P5iedTC/6tAxRyYWBh2JIaVQZ3obcClKI1SkNuO1Jgu5Hah8utqw4EYQ7dJxNQadFUac4mFolRf1ax0u08hPY7LxZERkxk4ww8Arfh7yTN7RcsybcNl8Bia23RB1YKi/slKoRphiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB7033.namprd11.prod.outlook.com (2603:10b6:930:53::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8182.21; Thu, 28 Nov
 2024 10:35:52 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8207.010; Thu, 28 Nov 2024
 10:35:52 +0000
Message-ID: <31cb0937-9d32-458d-b677-bf6d971b45e9@intel.com>
Date: Thu, 28 Nov 2024 16:05:45 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/12] drm/i915/dp: Remove HAS_DSC macro for
 intel_dp_dsc_max_src_input_bpc
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Deak, Imre"
 <imre.deak@intel.com>
References: <20241120103802.134295-1-ankit.k.nautiyal@intel.com>
 <20241120103802.134295-5-ankit.k.nautiyal@intel.com>
 <SN7PR11MB675042B4919A1FF3AA643F14E3282@SN7PR11MB6750.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <SN7PR11MB675042B4919A1FF3AA643F14E3282@SN7PR11MB6750.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0082.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9a::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB7033:EE_
X-MS-Office365-Filtering-Correlation-Id: dc1aef29-41c3-41d6-c7d0-08dd0f986e53
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VENDaW1tK3FUQXFGUXpjamk3dy9XcXJ3R2dJc1NOUk5IVGtqd3FRWWpIcEph?=
 =?utf-8?B?ZGNSOUJwYmZKUlVSME9TaGtoQ1V1bnN3akYrV0g2Y2JsU1YyTlhoSGR2MTNQ?=
 =?utf-8?B?UFpnR0k1Y0FlajlsNlpaMjNycTRMSExXQ0J4QWlBWXNON2U0NHU1bG1BNkR2?=
 =?utf-8?B?Z3JyYUhSR1NpUkd3SGlIKzRvSnlMZklyaUxKcDBGMGEvSFpZNjA2aHZoTnYr?=
 =?utf-8?B?Z1U0VnFockgydEwzbGNBRkVLVll1amtzdCtqWXV6TVl1VkF0K2diSm5zaUV2?=
 =?utf-8?B?akhUSkpkWFg1UElhSFl2YWE5VWcyWkFaQmE0T3RlSC9UZGRPV3E5ckwwTXVp?=
 =?utf-8?B?UnF5ZEduOWFib1RHVlMyc281SVpMNlBYcXllQ2k5QVhScnltak4vWnd2a3NI?=
 =?utf-8?B?d0lMWWl5UlVJWlVGMDhCY0dMUzBQRU50MTRtVlk3ckdSdzR5ZnQzWnNMWkp2?=
 =?utf-8?B?SG5VeUdXdmpMOFdnUmNMRWVaWEFUNmRobzRONGtUc1F1Q1JGNHFtcmJXaEVJ?=
 =?utf-8?B?TGxCeGFYZHMxemVaQXRTTnY0c3NBbFJyMlQzY1QyT0l6WmVBYnUvT0FDb1pz?=
 =?utf-8?B?ZEY2aGk5SjladVJzeHd2eFZ0RlA0V2hDWFkyWkNOQWRORjE5SHlNc1R4d2Y0?=
 =?utf-8?B?TzZMQklUUVJnNjR0RitnaUNrN1JxWTQwUEpTb1BkYTdIcFNjazZ2R1ZCOGRy?=
 =?utf-8?B?UEdVWWEyczJjdk15OVpYVnhJTHFMRnJycUwxR1R4R3luUmU2U2Q0MlVHNy9j?=
 =?utf-8?B?K1Vpc01SMXJQVHN0dzZ5M2hKZ0FGSklyejZiOWJNV2RFRXF0eHQ2bHFBbkNN?=
 =?utf-8?B?RXVpRXA5WnoxUHZucHZaa0tnU3hjWGFQdmkxYWJOdkl3ZzJNVzRkeDlJOVg4?=
 =?utf-8?B?NU8zUVpsZzYyYzdDOStNMWpQaTdWcEk2aWNjdTVFTTJUWjdiaEpJSTZpNW1h?=
 =?utf-8?B?dktpRW5ENUlhWmc5aVRqdGpsWXBhd1loWlJEcC9BYWxQZ0hQM3BvZUQ2MEE4?=
 =?utf-8?B?UDhSNW5XblBrWmFhMC8vd3MxTk02UmgrbkY2Q3BnMjl0bGJzOFFiTU44REw2?=
 =?utf-8?B?di85bWkwakxrbFNYeU9yYXVWK29KN3pZdEMxLzV1ZUsxUlNCbmVwK3ZyZjdZ?=
 =?utf-8?B?YXZCaTJlcWlqcUU2TFpiOEFjQ3ZBR0hEMmIwdjNzZnRpRTgrWnlaMkxkcXpF?=
 =?utf-8?B?QmhnUmtLekJkK0JzUkJaVS82Vm0rbUFtL0xkK2srTDJuWGNQTWoxVkM1ais5?=
 =?utf-8?B?L2JUVWFNSUtiYjlGVnhicmc2aktpV2xpZTlqVU1hUHE0LytuYk5FS21GS0R5?=
 =?utf-8?B?bUN3S1JCaW93b25mSjdsaWZnMjNCYzJxWmRmcFJ0QnFwbis4OU1jN2doRTdp?=
 =?utf-8?B?U2tEQjk1dzVqQnNhdXp0M01peC9MaUE2cDFMeG9nMmorWTVPVng0K3QvbUhE?=
 =?utf-8?B?aGtHR2o1SXErS2daTUhFdVFvYUFQUWpMT1NXNGEwMGFxYkxHamtDR0ZFY1Fm?=
 =?utf-8?B?eXFGSUFYdnJCUE92VnJZa0FDZXVTTm1XRFVCSzVmR2x0YloyZkpMbE5qYTQ4?=
 =?utf-8?B?V2J0elZzZ3RnTUVRVXVndzNNTmpURVdhOXcrbGFvSkN3SXBPKzZybWxtNzdp?=
 =?utf-8?B?Y05zQlZBdzllSjRlWTdoWlRoWlYwZzdITmlka3ZqRkY4UG9EUmpYRXNoWGVY?=
 =?utf-8?B?bTFza2hpemtpa3VDaEdxTmlYcG1aNjExaEp0c1lYZEhIS09DL2dydk9jaVBW?=
 =?utf-8?B?V1Z3NXNMSzBUbSt1cmtveWdwSE9UeUVScWdESGlaTGVneGh5aDl4dmhYUTVO?=
 =?utf-8?B?OHVjcHR1aGNoR0w0QUhxQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NkNyOVJiMlpKcUpESUNjUjNNaEhLZ0RCRkJwSUowOEFoQ09PZ1Q0ME5tNWNj?=
 =?utf-8?B?MElwZkpSWW44aCtvSnVhZzFoZ1F6SHFWZG5UZ25jNGR1Y1N5aDhlcU9WRHBh?=
 =?utf-8?B?eE8vY3NEQk9QWjUyTW44M0UvV0tVZGhaZERtcTgzZTN0eFJpYm5YVkZpYnZl?=
 =?utf-8?B?VVdnbE9pUXc3WDNmZVBvWE9SVUdadzhCYkxPY3RpN1BoTUlSSmlvM0NQdnJ0?=
 =?utf-8?B?cEo3bE8yUnNDMUVBa3RlaVFRVEppSXFQdHVVQ3NPdTByM3k0VWJTUFNaNFhk?=
 =?utf-8?B?QnBLR3FnNjVyWmJTL3hIYzBzcEh0Vm1wT01oMjNjQUlpZElLQ2dqaGVkN3VZ?=
 =?utf-8?B?L1BxMlNzVE1hclV6SXl6cFkrS09NcVlzK1RhRzZTYWdFcUJXcGczSi9HcTVw?=
 =?utf-8?B?N0pZeUZ2RGJHeUlwTUhjMHRCeDZHMFVwM2FVdnV5UnpuZW5SbjBJaXArem9t?=
 =?utf-8?B?c1lXSTc4dk1JbmFIQjdRdDdCbUhmTmpYNmZ0dGlMNXdjU3JtbS9IcHJzcHF5?=
 =?utf-8?B?cVhPcE0zaVdnc0psaEFGRW10K2xZVHhJdDNMODdSei82MUljRGtXNThSQTFN?=
 =?utf-8?B?Z2FSelRjRmtPN1psczlKbFRLYm9VZCtJbHRJdzBYY2Q3OGF5bWNlMWk0cWRF?=
 =?utf-8?B?WkpEUHR2U0FxT0FIYWl4WktqRnFZaXE4VDZJbU43RlYyN3FJYWJZOVFIQ2V3?=
 =?utf-8?B?aWZ4dHFkd2xXZEdSMXZ3b2dEOFVLTzBYUFE0U1lZTjgzZW9iKzUxYmU3Qm5W?=
 =?utf-8?B?dkJWd1ZTcDRYc3pnRGs1ZnpsN3hqRTh2SHlGdFl0WjRXeWgvWFNvRHBvbkdH?=
 =?utf-8?B?cTlqRG44Z200M2o3WjVyZGVyUkpwSFQxUGhqR2hpTkpCZ0dQNWlIZitTR3pr?=
 =?utf-8?B?eTRqcUZrU29iZGFKWnFPWE9WbXphbllrWk5hKzJUMGVvQ3FSRHpoZExzN1NZ?=
 =?utf-8?B?RDhRaU5DZmNMZngrbmFTeEN3ekxvY0IrVlVFV3BlemxrMTY2dGdVNTJFa0Yy?=
 =?utf-8?B?TWRYekMxajVvcEdIM3IreHFBQXFsdG1KeWI1c3pudFkvT2VUSHpmbHdIV2gr?=
 =?utf-8?B?bzR2THhKWGFYa2pTVVp5QVQ0ZktPYlBCWmZOaXA3VzFMVkhvVldRZENnUCtM?=
 =?utf-8?B?MEVmUFluTWVlVys4aXBpZFptQ3h3d0FKNWMrNUdqYndkUm05THBpK0N3bXR3?=
 =?utf-8?B?VFVEekJTRSt0NHFTbGsrQjVocEJlMGcySjA4OWdXcXFGbjlkWkpmVGFpa3FX?=
 =?utf-8?B?czhUZVVONnJtQis5YmwvL2RPc1IrcE1RRzNBUndScVpIQVV5NDhZTk1aK0po?=
 =?utf-8?B?ZDhsUGNFWitIRUNvWUNaTk1RQ1ZkWjRIMnd6a3d5T2JWR2ZjeE94MExRay83?=
 =?utf-8?B?dGFIalZ6SEx1eDZTb0FINDBUQktVdkRnSlZjZCtHQ2JXSUdOWTlwTGpLRDBn?=
 =?utf-8?B?UGtlWjFUeitUSGcyVDJnWlVJNUVzT1ZhTlArWHNmWldiZEtyVmRNTHMvZ3B0?=
 =?utf-8?B?bVBDbGh2dytDSzlaQkZ6UldwYVlIMyt4cXE5M3d1dFp1dHhaYzFnUVB1NXgz?=
 =?utf-8?B?UEwza2lpZjAyK2pnMUFwdkpRV003N0xOZ3hvMmdHeFZzYXF4bXlwWklWWVlF?=
 =?utf-8?B?dHBXVlh2bGZGK2RUSXFJMGhHdEY3bFRNSVcwNlVLZXRQekRCeEdWQ2FCM1dG?=
 =?utf-8?B?U3NSNWxqRU82U2FyZkppdjBUR1UrZ0dLQ0NXMUM5Nmk2Tkpuc2I1ejZIMlht?=
 =?utf-8?B?NVVnNVphWVlnbkltcEVLVkkyM3hXSXhjSnVlTWhEU3E3dHZxRzFFbERoQlFF?=
 =?utf-8?B?VVAzNWZubG5xb0dTVnVlMndoS2FWMEtJOHRnNk8yNUExOTU5N0tzK3ROMDYv?=
 =?utf-8?B?QlQ3bHgrejVGOHIxRTdiL2UvdHA4RVNkVWYxZFZsZ2Y2Q3l3eUdPZUFhSUgr?=
 =?utf-8?B?NVlXQzNzbWFtbllhTldKd1BlN0pSMjRVZWVMUmxNUHlhcGhmWnhmYUlpZkll?=
 =?utf-8?B?KzJ4YzJnUWZ1S0xGWktDS3VyVno0Sm9pUVhGOG5hellmN1hxaHZGT0MremVx?=
 =?utf-8?B?OFcrbmF2bExVTmxnR1N1OUNvTzhtUkQwdEtIWWpGZ2RwNllwRFdiR0JzYTZp?=
 =?utf-8?B?dHdPQVpUMXJjdldMRDR3endtSXh1YXFBbXpGKzNyV1JDcXNESEdBUkh5Mk9n?=
 =?utf-8?B?T3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dc1aef29-41c3-41d6-c7d0-08dd0f986e53
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2024 10:35:52.0312 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GjsiNzUuVDyd67+yB3NZ4lw1xt/DbA24zRl/2OuKpgPdHgqCLdU59/lTjCu02w49Ta8bu5tzyGWbZJUktQeCey0cg4qR42ozXIK/64o2esI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7033
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


On 11/27/2024 11:15 AM, Kandpal, Suraj wrote:
>
>> -----Original Message-----
>> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
>> Sent: Wednesday, November 20, 2024 4:08 PM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: intel-xe@lists.freedesktop.org; Kandpal, Suraj <suraj.kandpal@intel.com>;
>> jani.nikula@linux.intel.com; Deak, Imre <imre.deak@intel.com>
>> Subject: [PATCH 04/12] drm/i915/dp: Remove HAS_DSC macro for
>> intel_dp_dsc_max_src_input_bpc
>>
>> DSC support is already checked before the helper
>> intel_dp_dsc_max_src_input_bpc is called.
>> Remove the check from the helper.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>> b/drivers/gpu/drm/i915/display/intel_dp.c
>> index d82e25d0dc5a..dd60ca532ae3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -2195,7 +2195,7 @@ static
>>   u8 intel_dp_dsc_min_src_input_bpc(struct drm_i915_private *i915)  {
>>   	/* Min DSC Input BPC for ICL+ is 8 */
>> -	return HAS_DSC(i915) ? 8 : 0;
>> +	return 8;
> With this change we don't really need to pass drm_i915_private to this function how about we make it a void function
> This also helps us move away from intel_display

Yeah I agree we dont need to pass drm_i915_private. Will fix this.

Regards,

Ankit

>
> Regards,
> Suraj Kandpal
>
>>   }
>>
>>   static
>> --
>> 2.45.2
