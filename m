Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E55548A5E33
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Apr 2024 01:19:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C6E31128B0;
	Mon, 15 Apr 2024 23:19:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HoT8KQUQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1026A1128AE
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Apr 2024 23:19:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713223183; x=1744759183;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YWAvrBAMYZB2Dk4azaKnrIbd5jrKUoKVCvPynSQ3LAU=;
 b=HoT8KQUQjxAMNTfjEHQOOUpqdSXK7sXDFegZMacsmXtfoTG6EzYZ6olx
 9j/w3sLS4GDo6yHGqW1U+ZDysqSrsZrgtGqrjkJFJ6zmavUQ2LbbTwRa8
 YNTGb/D1gL0CtGB96+GzlLFDSEBphklenOaScmxPZIj2SsajQHSy1r8sY
 i5lrXcoZ0bq7/3FGfFk7veFKJVtnKo3Bc6hFK3bmC7BZw0N7YqHpl6HLk
 yHC/Jk7Y87GoczHkkjw2z1kPreqwgSkHJ7Z96kiqhSKQIbemseTGj0dJp
 2A+QE8cboYcXuZfnXulkF83rDAPXx1BInTgNtBq+WmO8mcHiK4O79vsMc A==;
X-CSE-ConnectionGUID: J6f0BKUIT1yeT9RMbFA7oA==
X-CSE-MsgGUID: wKessDcyT0GzMGyM3IDk8Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="12427920"
X-IronPort-AV: E=Sophos;i="6.07,204,1708416000"; d="scan'208";a="12427920"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 16:19:43 -0700
X-CSE-ConnectionGUID: Bkb1bET3RnK83bbePn9xEg==
X-CSE-MsgGUID: s7yXk42DSC6Gm27FO5FynA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,204,1708416000"; d="scan'208";a="22537433"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Apr 2024 16:19:42 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 15 Apr 2024 16:19:42 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 15 Apr 2024 16:19:42 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 15 Apr 2024 16:19:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EtWB39dPRbk4QzkLac2hhHAkQBnzsGGggOB/V20lDoCRBTrbm98ryYNbX/CdzKLxu75UKPIpNOM5d61KHMfM5q5EgndCDHS0GF70psase3t9VerHlqVCHjoMbFUt4mjRTCfwI3yGzQ1TunBB+8/UGuL44wiaYnf/UkUtm2qkKeJGxDuuX0qsk82zeAz9CkWPZLa4A3DkNuA+pEMQ0J+Z3Qr8ZolxlNw5iwEvcz8zg0vK4h3HqdnzkaFMQU8fAz+1T2ix3gndkc5umluX9SgeSzNp9z3/OUzh6OAskC/iqp+h5Nk5ixGFW1lSifsdYelSCJszhUEKldJ2ksw03V9/Vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uhNCyTWySmE3WHKu0jCAhtE5a23HADVJXWYY9OtYIcs=;
 b=DlIDL+1EhgEemG4c9zs7YKqz2Ltjv1Pr2dYNUGXS76q9VmqrN22B271m8mQw/ICTgscQb2pvdfZZvdfdlbvgZ1AGz+TbW9buz3dlYAovzQi8dnfoSymqIblsJEE87Xszk2z/4gjNezqDiqepNSR9tVaikNOrh7f80UlsF/y+KfHAkAIkHArJLw6bOPKYyvOoxeEVON86RXzdUUmICrQDAInUozdM6JRTOV9x4xi2xeLPUD74uZmmNEwLBYrpbhWACvW/IDxhfg/vZljt7IEOyAn/9Q+HNPapKWwVaNTVmfU3FfgH++Nssih5BrkU/Y7p+1doKJ0AvqcMQcg8od8cww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by PH0PR11MB4950.namprd11.prod.outlook.com (2603:10b6:510:33::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.28; Mon, 15 Apr
 2024 23:19:40 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::d720:25db:67bb:6f50]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::d720:25db:67bb:6f50%6]) with mapi id 15.20.7430.045; Mon, 15 Apr 2024
 23:19:40 +0000
Message-ID: <d4b673f9-bb5b-4d7d-bfc8-f33696470e81@intel.com>
Date: Mon, 15 Apr 2024 16:19:38 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] LNL GSC FW support
To: <intel-gfx@lists.freedesktop.org>
CC: Lucas De Marchi <lucas.demarchi@intel.com>
References: <20240415231746.1230684-1-daniele.ceraolospurio@intel.com>
Content-Language: en-US
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <20240415231746.1230684-1-daniele.ceraolospurio@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0007.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::12) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|PH0PR11MB4950:EE_
X-MS-Office365-Filtering-Correlation-Id: d0959a81-0517-4094-bfe7-08dc5da28694
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ded0skjOLTJ1DJ/mf8mVWjLKf2cLjgoukPDWpvv3eZVfubBr4HGD/Ia0QtkIixN+1LbIw1vWfauyt0qhIvAobctgrnQsLLj7Dljg7t6ZoDlxZQblzbk7I/HHwm/n9yAgVdc1HsrrBMAkakpOpXrfQ3t9zB9aYYvoU73eDj4DJV9bgNZop9HmxxCrbrjFM5f5WtgDqHT6iyIQ8khO9TP0j7Os9YxUJPqvSOKDZigSXCJcKcW2xp2igN5BcWA9zLdkmDFMM9ungDOJ4nXuSUtBTewk17zcCC7ekJWfD25w3cUL9knAVjp/yUCYhK4q1CFILyqetH4cZrOXDjJvIGb4kNzvcQi/F1JwY9l8+5hhksb1my6MRygp6EdH+/sV1veJqtGSLtIM2iMxPreLD6NC5uUbpyyyO3HeG7YxFIQvKNv0jOMbIUHuwflG2nIWO2jQpDuVNyl/0j4FMx6IZZbq5HVK7DXLXMaqtZks7FV4IlnZ+0y1GSQeyGD64wT0Hx2MPFFH4rXina/hDQ26qQmoRzN5z41BhAX/bQamNOvLhOYLl0xKU9Ne10cspXcdgIkJYAHpi4zoTGGhig5ruSvTh7jaT+KiUI+aZmVdhOMkdfbuGwz0fHI8ESaL9K6avU+lhtH8/Y+yzsZ1hVUmFqfpK5gmLUefzsKW8e736vv3Bew=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WlEzOE9xZXU5dXh2a21taTkvNjh5Sm5uemN2NmxhUC9XV1lCS1oyZk1VMnBR?=
 =?utf-8?B?YkdIeFF0UVJhTmtZVk5ZaU5nM01pdmhXK0ZIcUdNMlNNTzBOMUhtcjByRHJz?=
 =?utf-8?B?SCtVVkxEaXpnRGJSblY1ZkEwREZhSXNDUmhLYjhVbngvV20xRGczWkx2ZGxT?=
 =?utf-8?B?OEoxR0ZzOWhzdy84ang1MlBFMEIwTXUrUTE0c29ZL08zbWtaeTVjTzNkVWNG?=
 =?utf-8?B?N0tZRXdXR1RnN1FjL2VnQ01hL25mOHBHNlkzNjRRQ1JHdzBBclZ6THoyakp6?=
 =?utf-8?B?Q0hSMU1lZ0V0aXRJY2hGOG91a3ZqMkRGeEUvUjNMRlQ1TVgzcGg3ZEFOcUJn?=
 =?utf-8?B?NTB3UzMrQStMcTZVNjhlZ0gvcStrbTNZRDB4bUlZTFhIdjdkdFNrS1Z5c2RL?=
 =?utf-8?B?aTk0eE1icWJJeWVaZWthY284QVEwVHpvY2NLN1pIQjJ0WUFhRWZPcGFWOG8r?=
 =?utf-8?B?bEY3K2RUS29peGluVFg3dmMwNythTU00RkdEOVVmSUxvdmtYNUpkQ1NTMG1t?=
 =?utf-8?B?SW84bjMwSVFhV0dxZHVCcEhpNllpR2xid0lkOTZydHVOQ3hzZUVqdGJ6OXFt?=
 =?utf-8?B?QUlEOFNZamFqMkszWXdmTVJLVUdyZzI3dStFQ2VhOGFxMmpmMHlTaWVlNnBO?=
 =?utf-8?B?amJpT1Rzb1JhNmJlQ0MvMkk4N0tGdWc0eWI2NThHY3F5b3lpU21SVDFxSGJK?=
 =?utf-8?B?YVh4WGYra0lXR0krc2hDWWdkV3J6MWdobEo3aDRPMGJRNS95dlFsd3NaQVFO?=
 =?utf-8?B?TnNKbDlMb2dwdlArcDROVDhCbFRSN056V3RqTkV5NkdxcVpMaHd3NFR1c2gw?=
 =?utf-8?B?WjFpamFyQ2hGQVUzWDNZS2w4eng0alBNRUZwQjVtbFdiemcwVFU0V2JpZ3E4?=
 =?utf-8?B?NXVDTjZiV1Bqby85Nko2QW5xS0h5RjdOOG5TVzYraTlKUmFoSmRrU3dId3Zr?=
 =?utf-8?B?ejh1YktDSy9ucFhHUXo1QklsdGs5VFZZaTEydEVHTDFqcm5WSHgrRHFKQXdo?=
 =?utf-8?B?Y3EzV3RuQ1lvTnFITWkvNmdjeW1uRldQYStZTDMzQVIvbkx5Qjh5cWxHb0JE?=
 =?utf-8?B?NFBCRkJkYitqc3Q0cmEvd2xOOWc4aWNiU1pZeGZ2a1RjcXVxQlU3TWc2OEwy?=
 =?utf-8?B?UlBINXEwVmNvRGpCb1RsTThLRjBlRk8rRkJMUHN0ajRyK2VvYW9BaEhjNWxa?=
 =?utf-8?B?SSt5b3FuWWdPRlltN0NDaVNGc3RMWncycjJRYnlQT2tTQkIweWZFUUhWTWl1?=
 =?utf-8?B?M3M4K2hjaXVEWmZ2cTc2a0oyT2I1Mk9JNzJGK0w1NWVJZ2thYVdJMDZweXZY?=
 =?utf-8?B?MjZkeUdwWEs1L2V6a1VRMlNidmwzOExPbXhFaCtTQ3JpRjMxK2txbDBVTG9i?=
 =?utf-8?B?RlcydTNkRmcvK3U2SWM3Y1d2amh2TDQ0ZHRIVCtnZzZMck83TkZXWGhCRjlz?=
 =?utf-8?B?WlBwT2tmVlRoQzc2cXJRTWlzQWZzTXVXb2tZU21kdW0vTXN5c3l0RDBjUk04?=
 =?utf-8?B?Wi8rRXhud1ZZenpac1hTRllSM0xrRWlwMXZHc1VlM0E3c3VGQXFkeHI0NFd1?=
 =?utf-8?B?Y3M0QkwxelVGMlk0V3lCN295VTFvZTNOZ2prTitibjJmUVZPNlp0U1JzQ1RK?=
 =?utf-8?B?YkVhMCtMZDBFdmcrZnZyRlF1Ymd3R2s4WVhGTUU5RFIzQkMra3k1eG5rdG0r?=
 =?utf-8?B?cGE3aWdOekE4RDZFU3VDRTR0R2dsTzdyQnhMbkkxVSsxSDEvWmt4Z25uNWxS?=
 =?utf-8?B?SlBNYysyMXF4RUUrNDFRZzZ0U2wwVHdQTDRJcGRBMzNDaUdRV3AxUXRMaHBy?=
 =?utf-8?B?Ly9qYzBqTUxiUVVESnk5ejB0RHFia2IvbHZLOEJtSFVGT3Q3M2Y4SFRKa0lm?=
 =?utf-8?B?M2hFeEc2ZEFSeGJPeml3cSszNlZueTh5b1JmSlpSRVFxY2dqOUMvV3FydlVM?=
 =?utf-8?B?bFhxUTAyQktrLzZBc3labkcrMGFybHdmRndqTHNoZlhYNGN6QmFVS28wU1Ax?=
 =?utf-8?B?WWNQVlJkNjJWV0FRNERMWXhleDlJZWhTWE1kcGJQdHI4N0RYRElVY3RzQUd2?=
 =?utf-8?B?ajlLaC9aU085OFZhcmVPNUlrcGo3a295cXh1eTh2Q0lDTkVsSm42OHFzMDdX?=
 =?utf-8?B?RVREeDNpQ0NHKzFHNjFBT2puNUhIWWQ5VGRZMkNnN2pIYVF0WUk1WmdwVGN2?=
 =?utf-8?Q?i9fpjJHY8lFJfOdp+ewEzzo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d0959a81-0517-4094-bfe7-08dc5da28694
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2024 23:19:40.5101 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TQw31m/1DchIP8gVxwYXRO5m8CwRuIkhA7HD7cfW9EhRAl+GdOWOD9Mr23HarAplm9o6pGH8OL+Osm6Gtd/wpmNYrXonOxevSyLWvEHd08w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4950
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

Ooops, wrong mailing list, please ignore. I'll re-send it to intel-xe.

Daniele

On 4/15/2024 4:17 PM, Daniele Ceraolo Spurio wrote:
> The flow is the same as MTL, so the only things we need to add are the
> GSCCS and FW definitions.
> Due to the FW not being in its final state yet, we can't push it to
> linux-firmware yet so it needs to be in the xe-for-ci branch. Also, due
> to lack of mei support, a second patch for xe-for-ci has been added to
> avoid attempting to use the GSC proxy until the mei patch is there.
>
> I haven't yet added the gitlab links for the xe-for-ci patches because
> the mei patch is expected to be published soon and therefore the patch
> to skip the GSC proxy init might end up unneeded. I'll add the links in
> if we decide to go with the series as-is.
>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>
> Daniele Ceraolo Spurio (3):
>    drm/xe/gsc: define GSCCS for LNL
>    drm/xe/gsc: Skip GSC proxy init
>    drm/xe/gsc: define GSC FW for LNL
>
>   drivers/gpu/drm/xe/xe_gsc_proxy.c | 9 +++++++++
>   drivers/gpu/drm/xe/xe_pci.c       | 3 ++-
>   drivers/gpu/drm/xe/xe_uc_fw.c     | 1 +
>   3 files changed, 12 insertions(+), 1 deletion(-)
>

