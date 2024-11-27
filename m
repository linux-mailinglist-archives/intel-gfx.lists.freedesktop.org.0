Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9809DAA9B
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 16:18:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 876B210EB3B;
	Wed, 27 Nov 2024 15:18:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IMQt40Va";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 446E310EB36;
 Wed, 27 Nov 2024 15:18:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732720692; x=1764256692;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=EQ5UqmGpF99tE4eh0iM0OAZu3OSu7+pZNSXGuMAOzYM=;
 b=IMQt40Va6aDG3ry5VqxgkJ82fxw3QCzVUG//Zv1KucuotMZFt+zaq01a
 HAsI9AY7g7GAOW92I155GzTpskLtidYjzBUCK6VK0b0HLc6+8ps5DI6Ku
 rB7igcUIGQorPLdQr1vV+jp1HSXxBvkRxYONUvyDnz2Wwp4pRkEZgvJBd
 ZonS3DZghanqKrA4baqnqGxPN8KIk8bYKcTXpHW9VHWmiaODUAf74yOHr
 ip7tQSbG474j4DZwua5XsIF1MLJIoF7B/ssq2bhs6SqOCFLf86H1YDZB3
 z/w6vByuvdX/9SVUz060WVWE2jScGtoC4NyRdyKRpjUlxIL0F/zyEFxvJ Q==;
X-CSE-ConnectionGUID: Uy95RbCCRXW96vC0tKObqA==
X-CSE-MsgGUID: S/Y/RItTS0acjIad4Z7lRA==
X-IronPort-AV: E=McAfee;i="6700,10204,11269"; a="44308910"
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="44308910"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 07:18:12 -0800
X-CSE-ConnectionGUID: 05NQTUP/Qgmvt0lldLxD/w==
X-CSE-MsgGUID: jc3zLhKRTq6cbKgyb5Tjew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="96408143"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Nov 2024 07:18:11 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 27 Nov 2024 07:18:11 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 27 Nov 2024 07:18:11 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.45) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 27 Nov 2024 07:18:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PoRFYLwq+ydMLRaM8/FpSs8woyOg8xqIT1s4JSTYWTnH8a+q4WXtPyoTBHFplvjbB+3tiaVKJnOTqYhzEkgw5zbeU5XGrkLrde8PzMeOrsLmDMppNCfkVVHHOCB+0O0Aw+eUlACBWuZEm3AnrDrN5PmchrKtUF/dM2VSCa+nPdta+yrUwdsrczK0hxKjm35ge0PG1vzwSJl61N91oBL9TpH7+fwUpvg4Fl6a9tnoXv/+dxnFxn3WLBXJxe8uOvXsY0SG9ArCky590SOjQ+PIzL/rBcqBAeSunFVKsfPdvkLWnI5NFJGiGmh9HeyRXCS+TAfMz9jyM1D+iQN9nAZyeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DolFLDjtJcT+LjpM1ojmpbDJQI6NEyjfCyxl1NqxxJU=;
 b=ciMHfjmsciULeqrUV1RrQtxuO+/h5ZR7a/Zy1Pq1Qkc4TOU/uopp6jqo6eTrNd3E37u5vtFO1YZVsV4/CNMDEny44n22Xl6oOFmwSMWLlRXsepKY6mkbXIMQ8NzCPgP7v/RjEbOug6STxf80TszuNa7X9XG1FJmipmNpv3+WsucCifl0l0M2PRpFU5G2NO9pLfQQ+SafWwcRaut3AbvDOLaOTWTnUwG3eNoGpAu2GgNMJXjmKY6+mOFVjk0Uu9vPnQFI/iFfP21owCUtfRrsB0FDVejchpjNNR1G6vnsCg1ciLgJdmVxz3WEW9YRjvbkiMD4KK70hNbmJL/UO6qFug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH0PR11MB5880.namprd11.prod.outlook.com (2603:10b6:510:143::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8182.20; Wed, 27 Nov
 2024 15:17:57 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8207.010; Wed, 27 Nov 2024
 15:17:57 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20241127131838.3268735-1-jani.nikula@intel.com>
References: <20241127131838.3268735-1-jani.nikula@intel.com>
Subject: Re: [PATCH] drm/i915/dp: use seq buf for printing rates
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Wed, 27 Nov 2024 12:17:51 -0300
Message-ID: <173272067132.9041.672991565423824805@intel.com>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR02CA0016.namprd02.prod.outlook.com
 (2603:10b6:303:16d::22) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH0PR11MB5880:EE_
X-MS-Office365-Filtering-Correlation-Id: 01d49b20-5d90-4822-5109-08dd0ef6ac7f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NW5hUnBJOU9yUW5UOUlNdVFhTTU2OVZoZHhhQTBmVEhrcDFvcHY5N3VDWjRp?=
 =?utf-8?B?aVVtZVdoRFRvVkl2SzMzYVg3UDhjT3FwUVVCdlRqRHZHZXV2dzRZZWorVzFG?=
 =?utf-8?B?dllPS0VsNm5HdlU3N3hFaU1QbUpDVU9rSEZmenZMMFkvb3ZtbDl2dmpKWURn?=
 =?utf-8?B?OUdYSE9nQ1lMTXZBcGVBeDc4V3d4Y0hFaTUrRThaM0txVmIzc2gxNGQzb1Vp?=
 =?utf-8?B?VzlQZ1IvSHFOQkdRbmQ5dC9JQzFBZ0R3TUlxRzhRVzlaNXhjaVM3aGUxZ3lF?=
 =?utf-8?B?Vll3VFdpN1FFN3g3V0tPR1MzYVh5eEhpV1N5dmpwbG1SMG1XTzduUHJCTGRZ?=
 =?utf-8?B?OE9DU1NWSXpUWGY4QlJ2L3ByMW1hZngyanVCUjg0S21Qbk9KalhmbndVU2ZR?=
 =?utf-8?B?aldPcnRpelkyUzB4d3JLUm05K1U4UGgveXN2Y01mdXdDM2M4VExIL3RuSXQr?=
 =?utf-8?B?b3loczk3RzZhZmpjVGtFcXh1TW84TGUwRTFUV0lwZTViRjduekw5dWowTTlI?=
 =?utf-8?B?L0JJcmhKUUNwVmJGR3lJRUovQlo5bEFtZWpDNTdTRFprRmtMbExyUE1oZE51?=
 =?utf-8?B?TzhLNnp2MzlPNzJVSEFiT0FiVUxobHFBeTAzZWNaaWtCSU9yRURMWE9RVVh4?=
 =?utf-8?B?bTBXSmpuVkR0NXkzM2Y1am9kR1p5ZDhtWVFoYi9TbXR2NU5Fd2tiOTltK3ZD?=
 =?utf-8?B?TU5vQVZwR3Q2Zm1naFZVa0RIT0dOWHhBSVN5UDNvOVh3eTVzSkFuQjdtTml1?=
 =?utf-8?B?SWxJZkJITmJNZERuWDJ6bWdUckk0RlJYekh2cU1oVU9yV1hKVTJGc0xxeFA2?=
 =?utf-8?B?Mm1FeXRIMzZJT3FScGxXOCtrQURZU1FVblZwc2dUY2J1Ui9HQU1OaDIycElO?=
 =?utf-8?B?WFBBNEQ4QThieGFqVk4zMGU3YkZ0SzJlNTJUeEpQNWs0ZTVwUzNDNElSODgw?=
 =?utf-8?B?VjZFdjNVUnBXSHV1WHl3N3orRUNKOURoejVpKzRSZEpmVmpEcCtGVFh2Z1kw?=
 =?utf-8?B?QUhMQU8vRGxZVjg1YWIvd1hYVHdvY2FicFdPS3JHVnI0Sm1YQ253ZUU1L3lG?=
 =?utf-8?B?aEYrWTdIbFNtV2FHYzhyekw1SkRZYnBWTzZMWHNHbEoyNmJiRFZtOUJ5MmQy?=
 =?utf-8?B?aWplTEtJL1FGZjQrYVdCZUE1aXprWEJaZUhGODRncDVQd002TnJQNm40eVEx?=
 =?utf-8?B?eWR0anVLTXZrcFc2U2RJN1UwelBxaCswNkRDbHFzRGFBTXdrL2dlNjUvR0ox?=
 =?utf-8?B?clM5Szh1MVc2UUVRUys3bDZjYXVIQlVDakR3Qkw5dDFIcXU2OUJ0NFQxYzl1?=
 =?utf-8?B?YjZhNzR2WHdteWpkT3ZoRDByYzlxWDdTeTNHd1hBNFhmTUtaazdEbkZUWDNC?=
 =?utf-8?B?clJ2MWY3a3E4NXQ1NTNaeUw5cHd6ZC9TQUROSTNwWm9mOWo2SlFCNVRadlJB?=
 =?utf-8?B?d0FnOEV0TVlla1VNKzF2WmFqUGZ3bnRIQzNlN1RrNk1NalV5elUzL2d1SDFC?=
 =?utf-8?B?MlR0WTl5dnkvL0NkR0RCWFd0WE5ORnorbE8wcngvbUxyeExKMFI4ZGFTcWQ3?=
 =?utf-8?B?a2phMHpRckdhS1VIZ3lidDNOM1ZxMVYrWENyT2ppSWNoUTRlV09HZ3ZCRWNv?=
 =?utf-8?B?cGRJajVEbElHTkl3YmlBc0ZqMUdwZUltVWFaTk1TQ0p2RVpNcjlPOXh4NkZD?=
 =?utf-8?B?MUExL1k1L2o3RjZVR2dPK1pWYTIwdzNYc2NzQ21CWndUZmhvN0xtYkp4LzNZ?=
 =?utf-8?B?M3VWQ0dRVGwvY2E2MStPN0JNaVF2TGFMeUt0cFlmd0FGRHhqT0tvbHdlUDRN?=
 =?utf-8?B?QUlQRzZIQVc4encvU2pQdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?clZCYUwrL2JIelhpeW1EbzN2ajFJemFUUHRhWHdSenZzaHR5MzVkc2NRMjR5?=
 =?utf-8?B?SWtiZkZ6WHNTa0xiSnNRSEFHSDgvUWY4cUE5VVZQNlhzSmV5VHdDSUh2aU9F?=
 =?utf-8?B?cjNtUUI2bTRSV29CM0UvYUtMd2NxSjJDaVVxeTQ2MXdKYjgybklzdGxHMzB0?=
 =?utf-8?B?VkI0T2VMNkhVOUp5bjF4aGd0WjhpWHhlWHhhR0I4Q3RDaHpYRjJtTGNDZVJ6?=
 =?utf-8?B?dkhsbk1ueXFMNWhpZ3R4MlIrWUpHaFIxMlNWR3Y3Mkc1VmlGQUtXZVMwekNU?=
 =?utf-8?B?Zk40Wm5nTXo3clJrQWZreWJ0alpwRER5VWpSUEhIeFpNZlJTRFBzTWRIWG9p?=
 =?utf-8?B?SFEzVUYwSHN4cWx2QlNmQjE4MnZYdXI2bnRXSHhrTzJuZU93UFFGRXM2TEZp?=
 =?utf-8?B?UzY0TkRwMUVEdE8yQzVsSlZYRXB5WGJHTk85MVQ2blB3ZW40di90ZFZPV2hO?=
 =?utf-8?B?UXkwMTliK2tpYkhmK3VhNVBVWEttejh6T0FuM3JFaS9zd0liYTJBSzRXeStM?=
 =?utf-8?B?MFFSMzFSajFiL1ZGODQ1THVKbjNadEEydDV4VGNOWndiU3l3VmJxOGxJR2tO?=
 =?utf-8?B?SVZOVy9mcTJiZmU2VTNUYWRaYlg5VlZnSEtsUDVmZ0Jvc0VJZGovN2IxSWQ4?=
 =?utf-8?B?bTZ6aEhNeVdGMXlGRWpRN2RteHlrMFkvNHp6WVJPVDZOemVqM2JBT3hZell1?=
 =?utf-8?B?Y3d5bU05VDMrNFZyK041MldUOUxOQ1lFUzY5MkdCMWxVN1h1cnE0b3JOS0xT?=
 =?utf-8?B?YXZzQzc4bVA1S2JMMXpnYnNUY1RZMExPZ2Jqai9UL2daNWtFT3EvcXVZRFMy?=
 =?utf-8?B?Ynhva2dUblpMa05KVEtkQWZ1S2hpL0gyTHNQeE9MeDZVbFhnZGtDWUZiOU9t?=
 =?utf-8?B?QndBajYvRUhFZzU2dENOZnZraTZ2Y0NuZjZFalAxNWFLYXk2bVBBQjN4ekpz?=
 =?utf-8?B?YUp0RlhUMzI4SmZEZ2FTTDVGaDNBVXdDSHFNajJSNE9zZjI5aUpLWTRWSDdZ?=
 =?utf-8?B?Z2xoYUc4azBSWUdSb0hYdmdGNTVFUVRBU29nVTFuR2kwNUYzWi83bExCakZJ?=
 =?utf-8?B?allRVGtnTVpFamUxc2RFaFlwdU1FbnpyeWhid1VQa0FiL0p6a3Urc3RVTlhh?=
 =?utf-8?B?WWp3OHd0YmUyWkZ2YkhJNW1HTXIrT2xWTEpKNnlTTmd6UG1lWVFma2NUMzlR?=
 =?utf-8?B?ZmRBMFE1K1NSRGlueTZWK01vSFV5TktUVHpaSGpyQXk1Q3dVcWF2b3dCMXRY?=
 =?utf-8?B?eXdUTEd0bkp3VFg1M2J3bGVqV1lnbnJhdzFwcE1vZ3YwSWRud0lFS1J6SnRL?=
 =?utf-8?B?SllSbFliZzJja09XWElVV3dFWnRNQWo1OWkvL2ZhSFBPbDNuRnhZcW8yL2Jm?=
 =?utf-8?B?N2c3UFA3M1d5Q2tCam0weHROK2RJVkFUTFExNXhPY3pXVERLQ2NpcG1QRlBj?=
 =?utf-8?B?NGFvNWpGUGhKdmMyd1NhWW0rNmMzUHBOTnJTMmRLWUcwenFXMHRuRDk4bTFE?=
 =?utf-8?B?WkJ6M1VJU2hQQ3VNMjlncTFXck9JTHRobUgzQy90N0RsWVRYQzBSbmh1MEM5?=
 =?utf-8?B?MncrWFlSQVdiVXB4MlVaalhpMnVMRzB4VGlWaHNRR0pxNms5Z0dEeG95YmY0?=
 =?utf-8?B?SW9SdHlydS9kdnVJYkFobitCNXdBVFlyZTJLRVEyQTRQUXRCRm0ra0tMcDBk?=
 =?utf-8?B?emZEN3lJWEFoQjVpR1JndWpxUUdmZHBrOTB4dzhwYmpseWVkWFFpdFZHRTd4?=
 =?utf-8?B?cDlQNkNhRllUaVplWHRYWHdSdjk4NWViclpmdEh6cmRwMjZGZXZqRlNFdmhI?=
 =?utf-8?B?VGZiSnZOTGZtMHl0bE12YWFKVjM3cW55aWh5UjY3dEZiSWdER2FkRjdRZm9w?=
 =?utf-8?B?MGZLSEhnNVpqVjd1czVzTDNSN3lFRUpXZ0JLTENWbFBhUHlocHBDbStYcm05?=
 =?utf-8?B?RGFWQUJXNTlOUFNFaTVWZGlYRlNwdmxaSUFrVGJMZlQ0T2lQVHBTSmpuTFBR?=
 =?utf-8?B?enU1T3JHMUNrVjBoQUhZR1FyVmh6dnJYa1dzWnJlNjFlc3pXNE9VcGFwd1Zy?=
 =?utf-8?B?L2F1MFJBWG5NTDVKNlZycUZhanVYck15dTZoRGV4cmlMc3NwUE1SM0FBa0tn?=
 =?utf-8?B?NlRTazdDM1JzTkdsVEZSUE12RjV1TmRXVjZYdnVVR3p3d25tTWhNQ1RaekJm?=
 =?utf-8?B?SVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 01d49b20-5d90-4822-5109-08dd0ef6ac7f
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2024 15:17:57.7998 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wAENxjnEh5+L+ZQ/6RAbcO9HLBqFlH7EdbAd+J/J6akXxNKD4UpP695lhWIvpiVjXpsk+lc2zhDL723s84TSNA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5880
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

Quoting Jani Nikula (2024-11-27 10:18:38-03:00)
>Hand rolling the buffer overflow handling with snprintf() is a bit
>tedious. The seq_buf interface is made for this. Switch to it.

Cool! Today I learned a new kernel interface. :-)

>
>Use struct intel_display while at it.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_dp.c | 36 ++++++++++---------------
> 1 file changed, 14 insertions(+), 22 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i91=
5/display/intel_dp.c
>index 053a9a4182e7..4471c8fcd478 100644
>--- a/drivers/gpu/drm/i915/display/intel_dp.c
>+++ b/drivers/gpu/drm/i915/display/intel_dp.c
>@@ -28,6 +28,7 @@
> #include <linux/export.h>
> #include <linux/i2c.h>
> #include <linux/notifier.h>
>+#include <linux/seq_buf.h>
> #include <linux/slab.h>
> #include <linux/sort.h>
> #include <linux/string_helpers.h>
>@@ -1506,41 +1507,32 @@ bool intel_dp_source_supports_tps4(struct drm_i915=
_private *i915)
>         return DISPLAY_VER(i915) >=3D 10;
> }
>=20
>-static void snprintf_int_array(char *str, size_t len,
>-                               const int *array, int nelem)
>+static void seq_buf_print_array(struct seq_buf *s, const int *array, int =
nelem)
> {
>         int i;
>=20
>-        str[0] =3D '\0';
>-
>-        for (i =3D 0; i < nelem; i++) {
>-                int r =3D snprintf(str, len, "%s%d", i ? ", " : "", array=
[i]);
>-                if (r >=3D len)
>-                        return;
>-                str +=3D r;
>-                len -=3D r;
>-        }
>+        for (i =3D 0; i < nelem; i++)
>+                seq_buf_printf(s, "%s%d", i ? ", " : "", array[i]);
> }
>=20
> static void intel_dp_print_rates(struct intel_dp *intel_dp)
> {
>-        struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
>-        char str[128]; /* FIXME: too big for stack? */
>+        struct intel_display *display =3D to_intel_display(intel_dp);
>+        DECLARE_SEQ_BUF(s, 128); /* FIXME: too big for stack? */

I wonder if just using drm_dbg_printer() would make things simpler,
without requiring a buffer.

Anyway, the patch looks good to me, so:

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>=20
>         if (!drm_debug_enabled(DRM_UT_KMS))
>                 return;
>=20
>-        snprintf_int_array(str, sizeof(str),
>-                           intel_dp->source_rates, intel_dp->num_source_r=
ates);
>-        drm_dbg_kms(&i915->drm, "source rates: %s\n", str);
>+        seq_buf_print_array(&s, intel_dp->source_rates, intel_dp->num_sou=
rce_rates);
>+        drm_dbg_kms(display->drm, "source rates: %s\n", seq_buf_str(&s));
>=20
>-        snprintf_int_array(str, sizeof(str),
>-                           intel_dp->sink_rates, intel_dp->num_sink_rates=
);
>-        drm_dbg_kms(&i915->drm, "sink rates: %s\n", str);
>+        seq_buf_clear(&s);
>+        seq_buf_print_array(&s, intel_dp->sink_rates, intel_dp->num_sink_=
rates);
>+        drm_dbg_kms(display->drm, "sink rates: %s\n", seq_buf_str(&s));
>=20
>-        snprintf_int_array(str, sizeof(str),
>-                           intel_dp->common_rates, intel_dp->num_common_r=
ates);
>-        drm_dbg_kms(&i915->drm, "common rates: %s\n", str);
>+        seq_buf_clear(&s);
>+        seq_buf_print_array(&s, intel_dp->common_rates, intel_dp->num_com=
mon_rates);
>+        drm_dbg_kms(display->drm, "common rates: %s\n", seq_buf_str(&s));
> }
>=20
> static int forced_link_rate(struct intel_dp *intel_dp)
>--=20
>2.39.5
>
