Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0JOUG3Ggu2kLmAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 08:06:25 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D07252C7145
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 08:06:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF50F10E880;
	Thu, 19 Mar 2026 07:06:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="isVzHYet";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4978E10E880;
 Thu, 19 Mar 2026 07:06:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773903982; x=1805439982;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=B9aHtT66Um74phmO1NDFNE5PvnZm5YdJqEq7iLkx6AY=;
 b=isVzHYetdjshdilbLM3p95p+bZQiDlnDWeTev0DKugrmj6Dgb+SUo5Zl
 MBfJjLHHNOAinJ6f5KuFoid5QgCaQAr+zGXUzNGnTyVFCndjYTMhKv3xN
 W+qP0Y1FcdKguDW+2SvCDk3Ox9xCJAI7xX/8wZqfhRIpbhUEb66nwNTPO
 yidYkTimUhfvrrKhKX/t/6pc9SB8CxfI2GWui7vKZOO7lJC1gAGMnDqWA
 tULvXu9jnzmjW46N8/BOM9D/VXOMw/l1w1SfCo3PQECoj5PmTitq/upgZ
 BL9I4eiGbHXkPgIgyPW09FXyEBnnVCZleg0ocdn/rCVHvAe46knTsVYhM Q==;
X-CSE-ConnectionGUID: ZOi6KDEMSF6PUUFx+e6vCg==
X-CSE-MsgGUID: JNvOEESDSNq4hMUqHvWzVw==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="62538979"
X-IronPort-AV: E=Sophos;i="6.23,128,1770624000"; d="scan'208";a="62538979"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 00:06:19 -0700
X-CSE-ConnectionGUID: 1wxdZ/LgSOqLK05UMxOdCQ==
X-CSE-MsgGUID: 95GCm94KT2SX6dsdJ89hTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,128,1770624000"; d="scan'208";a="224891040"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 00:06:18 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 00:06:17 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 19 Mar 2026 00:06:17 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.54) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 00:06:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PrTYd5bKER3uW/IxH0iBRfmfKQ7sK0hAXurJ//WRyuf30LITfvIDjRbD01vw4VPMIIDm5rupGa9xdDZcfK8pdWAiSvJD1aG+WaCvTfQj8M62POxQ1Ze5X4mTwNjhbafNehCKopGaFpDLHSeokP8bofqegoeeMfCr8Ii/A0YvwmYZKjukgmf6oSKtSSYMqdosi2YhjQkLf/IrVOHtem2UJfVrtoOgUb7aNMHa0JU9VV5G+NFjt6KYwveEIEwuTqTIBo3CIdvpfsiYsjN/FLd+dCVC6HOPMw3uJu5P6Ry3WFk5S6PARvuKOmuWQV7YKxFP+tn4yYA0v+LO2dN3FNeZPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bMj4voy8hNLa8AU0oYP1QUVwkC/9PcLM9rmNfUu1hc8=;
 b=ixRnfppDLll1vraO6kfHLpE8ABafnO+ojMfjoJmBhY7u510zpIRW5/mUfNn5Y4NKWTziS3xqRcaYOiJ7YmyDb/PB2EMykSduMTdhZZ5HAPEut9Wex3jZj3sbUFu1GUD2ATDY+DL0TPPNwUBn9bvnV32CK8V7OQXUkBPB+w1CD8yln/V4mhKlghjR62WZVJeQ5+lpJ4AD3hyR004ldUuiF7XQYNAM6WvFjiv2In7slaPo8yJIA4NT73wJ7WKrsS5CfIUndBJcVQYYdZAoL46yrG8XPV9zy3sW8mK+OWH5z8ytDbxC78F9BfvLrojD3eG3Iz4QKqmkhbAUCYvzed0qLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by CY5PR11MB6462.namprd11.prod.outlook.com (2603:10b6:930:32::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Thu, 19 Mar
 2026 07:06:15 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9745.007; Thu, 19 Mar 2026
 07:06:15 +0000
Date: Thu, 19 Mar 2026 07:06:05 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <igt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "Kamil
 Konieczny" <kamil.konieczny@linux.intel.com>, Zbigniew
 =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>, Thomas
 =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH i-g-t v2 1/3] tests/gem_lmem_swapping: Improve
 concurrency of smem-oom helpers.
Message-ID: <6mwrfiywsl7qzojnfqfhi5uw4xjomahdfclojnyet6uestxgmf@byhyrijjrosn>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260312181032.20485-5-janusz.krzysztofik@linux.intel.com>
 <20260312181032.20485-6-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20260312181032.20485-6-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: WA2P291CA0035.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::11) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|CY5PR11MB6462:EE_
X-MS-Office365-Filtering-Correlation-Id: d7e93d8f-7b7a-4ca1-18ad-08de85860297
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003|7053199007;
X-Microsoft-Antispam-Message-Info: om6zRmfYg/dCYplFmaSVLDRwBu54O00ovc0tiBYnpydmzXm+3OrgB9Ax+QjowjN3MIh4srxvksB69V3OwQnqOD7DtCr/Lq1K8VRKTUf0Bqn1QbNYVib1hVV4zZsnlTgym3foCcdAw4hcqNDHjJuID0H7b5hnZAjBxB4jJ3QY1WVtkIiHyLlmWX0ZRXnY7zZMKAHy7kD1W+8NNzeJj+v0BJf+LexKJHFzmCPFO8O4NvIRamQ3Gj2JDYJGIX2HZLgXyt47QaJ8XqgbJa0arIubliOzOG6+y5Z7jC5S9wLBNfBx3/K7VvueqbS5eykUMwdtlNJpAqks2vZYgcPHqOvyukLwVUrtChzq7WAdyeu0nEhzl2l+JzlLE6zeo1Sz6MU2HHahq3ZEtaQZ1FK6Y0GURbARD5pczAqVgN8Ka6Lu40pWmty7QrqTiwiar6Ly3wbn47UP07mwV843VTjy+bZevhvR3ls/zbaqMNqRga3Vq+FthIPlyC1bbn1U6jRGVKlygmjLpHXW0rntkgg75/CFdn9pZrB4yBKyDkCDi8y/5H0TQ52Rnt6xtHLrNO+QTEIQROynKM4h6sAJfTxx+8X/vEmqW73Lh75fbhM6z/5318DXG4KST6SW6XHL97tI3H5I4/mt4/vqqguY2CStAbVUtKMgkt2G/tWDdambCO06TTbitb38Ha5yI2zA5SElXGcnnDit6AWos1wJ/dDWPTRyar9j2CSXK0oyCtiu4sjvy4g=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003)(7053199007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SGFCVjZGUGVWbDhFUHpsOHhMbmEwcVJzYWZjMjFQc1FaUnl0dm9zQldLbDVv?=
 =?utf-8?B?QVJvSXAzdXJmVDEvenVqbjdvZWtBUzNlWTlqblJZRkxySEorNnlrYXNoNith?=
 =?utf-8?B?VVU3UGRNMm9ydml1d0ExeHlkTUZsdmgyT1JSUTRUMDVQM0NPTnNwMkhHdi81?=
 =?utf-8?B?TGhVTDMxOG5vUWg3VlJ2ZXByK2VvMW9xenN3YlFjcTZWTkNINDZjRFRQYi9O?=
 =?utf-8?B?ckFvdkNUOVBGenJkYVlCRnpjemVSblZlWW13YW5NcUVQZDNQU0F1T2h6V0hq?=
 =?utf-8?B?bDRKRldxRWw2cG1Zb2pWRnY2czJlU2RnUUwyVDZWVGFaQTJ5aFlxR1kzRnpy?=
 =?utf-8?B?UGdMeFlhSHp4U3pubU95OENwTnF2akdHOThGclY3V1cvMzFlelM5Y2NpRmdK?=
 =?utf-8?B?bWxXUndZWUFnalhHUlMxR3VoZng4UVE1NjNDaU9tOG9ObDUxMXJrdGNLNTZn?=
 =?utf-8?B?OGVTU3JNa1RjWmhQUnNZR3hnSHE0TkxtRkV0Zk8yYmRpOUdmOGhFMDVSYnVG?=
 =?utf-8?B?dmdZT2VJTUpaTnI1bnNnVmhaYTZjR1BiWHYxS1ErTTBzdzZjbDJZSEQ0dytv?=
 =?utf-8?B?VTMrVUxWL1RSSXR2bXFXVllTZGNsY1ZzWXRnRU5RQXFVMTg5YnhzZGV3Q211?=
 =?utf-8?B?a2JBSzZSQnhXMTBlUUhIQitYeGw4MEttNzVwSDhXUS8wbnVaY2VzYk5keVdk?=
 =?utf-8?B?dlQyY3FtVU9NTjRtdDc1YUp0OGRvVU9WdGFtSDh6dEh3UXhpM2VHNVhHSFQz?=
 =?utf-8?B?YzlvdmhKZXRib0xSL2h0SGkxVXUyeXBiSDM1SWd4cGUzQjl5L1RvZGg3ei85?=
 =?utf-8?B?VVpzZEZWa29HSENJckMxUlZHcUQ5UUgxRWJXUWRiYUw2azJjaTVWMGNjQTdo?=
 =?utf-8?B?RW1tUzhuWVo5Q2JwVkRCWStiMWQ5by93RElWZStwcEVKR0lFbTJxK1FGWXBk?=
 =?utf-8?B?amp2M0VDTXFnTUpVNFM5MW5TMzdMRFlWL1NiQjFhMTVic1lHVGVMeEhMOGVo?=
 =?utf-8?B?SThXeW03VXhacHYrbWJjSHJXLzN0dXQ4SXgzZVhTNVdmdysyVlg0Zk1qdjFI?=
 =?utf-8?B?N0hkbXl5VklDekIxd1hWSGVGMmhUMnJEa0VBY0FuZlkvcmllOG9oc0VtRCtk?=
 =?utf-8?B?RG5URnQzNFY0RDJMUmx6TWs3Tk9WTmVlNEFtV29ITVhwUW9lTUZreC9KaXBh?=
 =?utf-8?B?QXhNWjFSeGczTjB3YU5tK1lGRmFlWDdadGRzbVpxdFM4Q0s1NzIzellCY2pC?=
 =?utf-8?B?VnNYSktJbllrcUpaR1VRUjV5RUUwZFpMREV3dDFUOEU1NHlGTCs5aGkwQzNk?=
 =?utf-8?B?N2wxNHRXdXNHVnVYNy9tY1Q3RUFpcWxuN0pkQUtqTUw5NkNZUytlT2dWNmhL?=
 =?utf-8?B?M2toM08wbmFJbDRyTEFKYWx4ZHlydWdFSWhuZk1GV3BHTWNaVnhkTnZraFkr?=
 =?utf-8?B?S3RLUEF0NUJpOUttMWQ5RkZORG9vZW1iYmRMWnIwQkI1RHhRc2tHbi9IdlZQ?=
 =?utf-8?B?Y0d0RWEycmdlY3pSRG1zemZKdUt0a0RkYVRHSXgxWHFCNW4rZHJYVlA5SHJu?=
 =?utf-8?B?ckhLSHNMVXRoMWsyT3BBaTJneUZ1TUQ1TFdFOHJocEhyRGhwdWx5MHhIN1N0?=
 =?utf-8?B?T2FWL3hWWkhlT2IvUEtnN2V4R3dMbFVXUy9kcGpsdThKL01TOUY3cnAyNGV0?=
 =?utf-8?B?Ui9hT0RYM21oOHVSb0JRRk5lSzZBNXJBcTdFeGRKcGVyUzZyTXJMbDRRRVhh?=
 =?utf-8?B?aUd6TVNoVVdSeHRsekZubkZXV3M1TUx2Z3hGbXV6MVJxR1ludER5UlRkSzNw?=
 =?utf-8?B?ODFRUDhuS2lCLy9TQVZWL1lWaTZhSkR2cTVaTkw4M1dCMWpZU3owd1BwV0lL?=
 =?utf-8?B?L2RKKytJMTNwSVlvWFhCckdCcmdZcHlIelFHYUdvV2o3cTZLUzFRWnlUVzEv?=
 =?utf-8?B?ajQvb1ZzL3VWZHJaQ3NORVNTTE9iMVRhK2pseU5SeENaZm54a2htQkxGbmE2?=
 =?utf-8?B?OFhPRjIyVXpaSGJaVHVqczUxeTFad2ZHUkNRR0NWcWZDSnpwcTRSdHp3ODhQ?=
 =?utf-8?B?MkJNMno1VWhZWi95cTllQTlpVzVETSttTlhzK0tXVExBRFFqRE9LdG1UKzFJ?=
 =?utf-8?B?bUJobXN0Qk0wZ0ZpZTE0Ny9DVStGYVRvaDk5UWVaN002WjBDd0wvWi9wZzVu?=
 =?utf-8?B?ZTVsSXlNdEx4OUloVVR6bUxGSGQ3QVFuZ3IzR2xhTThZSmZoZDRUWWpPZGlv?=
 =?utf-8?B?Ty9ycWczT281UXhzMlJlMWtQODBnTDJMcXJQbjhsZUVyT1lxRnhKNjFTaWVv?=
 =?utf-8?B?RDZCTUlwaUJ5QVZWZngyWnJaOE5IMVBUY3JxN2x3Q1RlU0h4RDlPY3d5c0Rr?=
 =?utf-8?Q?8T0sbbi9pWUVKvdE=3D?=
X-Exchange-RoutingPolicyChecked: ePeEFKEjfhpF3tZx959Rf9CZ2G9/UO0udPSVgpehqkWlhngWeOOjEBbZlzmMfZNAR48ihVmS+3bCQ9bDjAeqmTwY1exDqIeWZsmukazKcSxIFUVH+ZktduYp8zAGMU0Kzo/E8u33EdZ2Q1m03mVLRb6UND5rLZOfOomgp42Wa7f4Hw5JuHhpMwXhdk0xc1+UXzyqyJrpknN3zKf4z5YSWbyHAb9nIGdPw8b01uhQ9TBgEBhNF4S/Q86xGV5M4K7yFKeYhhJal+F7RU9yWo4It7mNBuu8PWFMhH9YJaWvFSwnDHFUkQ6IQg+9rtmFV5VOTAEeao82Z9W3s5NyZnyOHA==
X-MS-Exchange-CrossTenant-Network-Message-Id: d7e93d8f-7b7a-4ca1-18ad-08de85860297
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2026 07:06:15.0173 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ns0kUyJennIlZY9quqHBrQz/rsA89LpLnACtnCsMHfO8gu1JjKRVcnp0TB3/XgubMD9JwTgcgZRMyW6mr1rtBJ6nOC7lW2ojIoBjjvKdEUM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6462
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
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D07252C7145
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Janusz,

On 2026-03-12 at 19:07:33 +0100, Janusz Krzysztofik wrote:
> The smem-oom subtests re-spawns two different memory leak helpers.  Any of
> those two may either complete or be killed before the other and not
> respawned until the other is also completed or killed.  That imbalance may
> actually affect the shape of OOM conditions, most probably intended to be
> a compound result of those two memory exhaustion activities of different
> nature.
> 
> Respawn each helper from its own loop.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

Just one question out of curiosity: did you ever run into the
test looping unable to cause oom condition yourself?

-- 
Best Regards,
Krzysztof
