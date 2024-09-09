Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CAA8971227
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 10:33:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E124210E329;
	Mon,  9 Sep 2024 08:33:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LKM0EaGw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFAEA10E329
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2024 08:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725870790; x=1757406790;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=D/NH3fXGgizN694UvzGjxq+394ua7B76+4CbyS8mhMo=;
 b=LKM0EaGw/ybTjQoTU2w2s1cxuwEZzE+CwQLRMDnECwuj+72OHgxug57S
 F/X2uWX1i6VcunFOyMVMUnE3KuZ3Pezbd6G34KKMqQ5tVxnt0g0cFXqNF
 3am6BcQwPxX7EhK/zidm0uaD+WPrdVwy0ljcZSntoYAe8DQlIx4HGvRBH
 HwkvMbOok4TvOgiLNs+AITk+Y9yt0ngF/siutcApGlvyrnF0otljw5UYG
 0ybrE1alvWMKrzaGLKQj5G6BV1aWjmb9GXH6D16pM0415loRnCMHLQ8B3
 3yCX1ARLThFFrLpwOhtva48P2x5ncBAXaPJz6gm9RJ9zlBxizSw8bYyI+ w==;
X-CSE-ConnectionGUID: QOMg49TzQbKyhSY4s2blPw==
X-CSE-MsgGUID: DjP8vFlORuqYBtQBNmETjA==
X-IronPort-AV: E=McAfee;i="6700,10204,11189"; a="35219012"
X-IronPort-AV: E=Sophos;i="6.10,213,1719903600"; d="scan'208";a="35219012"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 01:31:48 -0700
X-CSE-ConnectionGUID: PyRhkeNgR8uDf7xTnOQsSA==
X-CSE-MsgGUID: fWi2YaJKRV+fqKRczxrh+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,213,1719903600"; d="scan'208";a="66227889"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Sep 2024 01:31:47 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 9 Sep 2024 01:31:46 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 9 Sep 2024 01:31:46 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 9 Sep 2024 01:31:46 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 9 Sep 2024 01:31:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Roi47YXUXBn4NkEpRDjtQfK2qv/vRKQSoeMk/H8oRHn1bbUQETyYVVIQVQpGKc0vHa0HpWTaIA8OzUtDUayvG1HYnjyWQPb9UXQ1QG9C6hgIAnaH3TEM82jptLrwOFmm+L+j2qz5AsO889cVIJ2IvdGOIkKM/dDjlVe16OEgTSSnsmeHlhUIveXMRp14E1g33TIKpp1eCh6DCLH3TNu34HSjJT8vGLfKi/i7eusiTiPqu/g/aICZKS1z/yF0cAF8lB9EjQOy6yGmJSF9oOr2xJuGATD6hZJJ4qKHeKmOvhZ8ZLWsGR9ONbC6dD3s8mfFCsvLYgDHZTbW+YB9Bu+1yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MfoKRfL275+i5TbK4ZbNj0+OEwStS6SQOLGEzcs61zg=;
 b=ZbvOR6aOv5WWbhOr5FPIAnabwD2yLc1rJcBDv1bcn+KyQKjAqkXdFBQPB+xCKnlSCoySoaRtCqkQcOmkQ2I/ocvehzgwa8PxEoMC/QRfEwjfo5P+5J/ezQrQYzUWOC3FDjCaZDjUXvHtCw2yrbiRLOsgrvT4SnEUDEBZg7FbghWzghNsGwbxjArw0kQTioeubw49ednGcLL0QHgtudwkdtfS8WvujZjuUnSq2iDAMK4Dr5m58b1rIF5uXrex5IeSBElj2Z3RQD8ssvPfN6KiI2E9PpvFNLB47v8dDhYKXK5xYmPm4ZrxTGzfVqVEdzO+iPOYK/q1lmZwAwBgh3STUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB7927.namprd11.prod.outlook.com (2603:10b6:8:fd::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Mon, 9 Sep
 2024 08:31:43 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.7918.024; Mon, 9 Sep 2024
 08:31:43 +0000
Message-ID: <fa3186d3-a275-4475-9f02-e219503f954e@intel.com>
Date: Mon, 9 Sep 2024 14:01:35 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/14] drm/i915: Add bigjoiner and uncompressed joiner hw
 readout sanity checks
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jani.saarinen@intel.com>
References: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
 <20240906125807.3960642-8-ankit.k.nautiyal@intel.com>
 <ZtsiFvgj6_GAu26S@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZtsiFvgj6_GAu26S@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN0PR01CA0044.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:49::19) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB7927:EE_
X-MS-Office365-Filtering-Correlation-Id: 8da4d5ee-fba8-4407-47bf-08dcd0a9d58c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZElUdG4wWjNrcnpQdjNlWlFoazM5NkdwMXk4cWVJcHF2NlVzTjhyckJ4TUpV?=
 =?utf-8?B?VnU2eWlnOW5ENWd3Zmt3ekdjMzltR3FrK2x5YW9NY1JTSUw0VFhWUFhTRWlv?=
 =?utf-8?B?K2Z5VklvT05tajZUZVRQOHVVbnN6NUUybW9ITUJ1RTlCYjhra0grdmFNQksv?=
 =?utf-8?B?d0dPRmdqWXhUcTIxME5teVNXMXZRRDJCR0l0eW9MOTc1aHJSZ3dEOW53bG45?=
 =?utf-8?B?Tm9pMnJrdDYrcCt6bG5EeHFnNlRnVjBXYW9RQ01FZ09qZ2hYSjRpMFdiZVZk?=
 =?utf-8?B?aE5IV1drN2FBcWI5dm9nVW0xUUV0aDM1OWZLaklwYy9PMlluMUFPMld4VGhY?=
 =?utf-8?B?YVZSaG5qNk8vN0h2RFN4TnNKV3MyNmI2bTgzSk9uRmxtM0hhZkJFQXFBbGlY?=
 =?utf-8?B?YnFNTjlhMTBaVFdTOFNMaWg1ZnVwbExyZkNmUmJxZitsYkFVNEIydmhVWTNk?=
 =?utf-8?B?Tk5zYU5WbVFoK2dxYzgwT2JrM0pURHgzMG5DdlMyR0xPWms1c2NNZnhTVTd0?=
 =?utf-8?B?Y2JrR1JxRnNHVGIxVktEZzhBd2Jpc2FlbkNFanlJOUdTVzNXcURpblkzS3Nn?=
 =?utf-8?B?cGNKS0FxaUw3NkNWb01WRm4rL2JMU3BoUWhQSzFybGpYQ1BSUVROalRpbnlv?=
 =?utf-8?B?dCtTa0RPTGprd3R3b21pUFA1Y2hKUmhsOVl0UUdzUXFFMythTGpqODhDUzc4?=
 =?utf-8?B?d213ZGdmTWV6dnBOZUdySmV5dTU3d1IrZ2owZ0dQZlRic2ZyekxEK2l1YTZR?=
 =?utf-8?B?K1F1MWx0WmJpZ0gzWW5ONjRBU0tWT1NFVHdqSUk2LzFtRE9GRFdUaURCYnN4?=
 =?utf-8?B?UGo1Z05vaEVUQXdNTkEyR3phNEEzbmt4WTlteGt6ZEpSTlkvZG5zc1c1a3F0?=
 =?utf-8?B?T2VqazNHTXBOdHJMZ0Y1TkZhSmdPRElobldJOWs0S3JWZHBFV1ZTcWVneUxI?=
 =?utf-8?B?OGdmUk5jTnd4RUdYMEpOMkhNMlNacTVMeHR0cVlwcldNOUlSak9QcTZHcHFK?=
 =?utf-8?B?Wk9reWJ5UDZwSFVmWWRDSDY2eE9hQXM2aWtjWG4wN1pkeTVONW1GSi8rQ1VK?=
 =?utf-8?B?cmRiamVOdXNsejlEL1ppVWxvYUZmN1A0UEhFemVxdzJjdTZqenlydFBtQzN0?=
 =?utf-8?B?Q0tHQkt5SWMyWEpRR1NEalJZQi9IbzJsUi9DNHFiby83dFlzWXczTzRXcUxY?=
 =?utf-8?B?VEFuWHd4eloyWEtUM0VhVWg5ZWxaZVg2eGRiZytoUnI5TDk3eVdIMWV5YW9i?=
 =?utf-8?B?bXoxelUvM0JTK0M1UTdDazgvYkRoL3paTEdUQVhXc0pManNDZHJoMFJRQ2hL?=
 =?utf-8?B?c0NoOGI0WnlycitEYWwzejEwRUgzL1ZkKzYydVdsSHNmOFlBS1lwQ2E0dG5W?=
 =?utf-8?B?Wmd5SUJ2Q0thZjBjclR0ZHUyWWkrZ2RMV0JEdHFYWS8wZW9FUGNJUVZidTZF?=
 =?utf-8?B?ZExOdm1wcUp3Y2p0TkVqOE9BMjl1Y0RRMnVIRktuUVRrRjBTMTRxYlMxekRX?=
 =?utf-8?B?TEZNZ1lKTXZnUTFVVHBTN0NMb2QwRnJLQzM1RHpRc2tsTTl6dUxVbHhUM0Ry?=
 =?utf-8?B?dzBhV09iYm5qTGErREErcnRoSExYUm56YTJkamdKVTJBMndRL0l1V3lJbFU5?=
 =?utf-8?B?YzB4bkFhVVN6TkpjaHhVMGt4SFdnUC9Lc2VxT3gwNjR4eWNxc2crZ1gxNWQ2?=
 =?utf-8?B?VG9Ld3cyNHhjb3NYV2twVTRaMTgyNHdFWGJSTnQrNk92M3oxWmVmaXhnNHE2?=
 =?utf-8?B?MFBFdW44M0JLdDJyV2FDMU9KeTg1UklyUG5xTDhSeVlRK3dIRTJkT1FKbEtq?=
 =?utf-8?B?M0RzT1dHTmQ0STUwcFhuZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bHpQUjRRSDNlS3IxT0tKZzcvUjNMcDhlb2lSblpJcDc2ci9hRXg0cG1WbHdt?=
 =?utf-8?B?ODM4cVZkQ2hxVHVaQXVCajk1UGs1eXIwaWs1aFdNOVU4Qjk0cGlaeVAxQWJK?=
 =?utf-8?B?cVoxQWFCcjRiN0svS3JyekEwcXMyQUN1aDd4Qm5LQTB6WjV5ZHdTek1PYTN0?=
 =?utf-8?B?VW9KSXRvSEVDT0RYTkVFd3RGcm5ZUDBPNGMxMG5jNU5hQ1RRRlY0aFhOdzN3?=
 =?utf-8?B?SFJVNFRDNW1yZ3VPOHA0R0pmUm9QamxTSGw0NnFsMU8renBJcUhUTGlxUkd6?=
 =?utf-8?B?R2tFQXhTOGt4Q0h2WmtjV0JVMGZvSkZZNy9JZ3hnRUpIQXowY0FsUGpSYlZo?=
 =?utf-8?B?cnFWeGJWcDkwbklLeFpkTERMUk1kdHg1RTU0MTUrOHZVZjZzTWpLT1RVZlI1?=
 =?utf-8?B?cmFycHhjU0krRUFPdWo2ZkJMS2VRcjdZSWE2RklhbXVhc2tsMmpaQ3IyWjZl?=
 =?utf-8?B?VUk1OFF1RTZnd1BuV09zYStKcDZONGVaaEJSVGpTcHErMm9weVlveXptTVpj?=
 =?utf-8?B?VWVHcjhuOTNCSVVSTlAreC9QVEoySXJYanNONmRjTjJQaHdPanN4V0tUMlVt?=
 =?utf-8?B?ZitDeE9SUU9ZbDRCQ2xZeWd4MDE5OEVQVVVBRDY0ZGFoNy90UVgwT2haM25J?=
 =?utf-8?B?V3crMGdDR0xlVkhMamhjQmxsblh1NjBVWVh2SlFvdjkyaGtyS0VCREtYVXY1?=
 =?utf-8?B?a001N3IvTURyY0dHN3pUazRNR2JKZ0NPR3hIT0FmRlBEclozMzhKOVJyS2pY?=
 =?utf-8?B?U3dXcStZTm9zZFpiTUdKUVN3VVp0d0hOc0tvVTArWFBwOGZKcEN1aWZ0UDBa?=
 =?utf-8?B?Y0RySEw3RUxwT0libDQrWGJFdHI2cnVIbGlEamQ4OGNSRFhCdDFrNVl4Yy9m?=
 =?utf-8?B?UDRTN3hvdjExV2RwRGlGNkpKMURqQmZRd0YrL3JoVXh0bmxoU3NTSEk2bnUw?=
 =?utf-8?B?L0FqdnB4OU1LcjluaTNJZUVqdk1KcHQ4Z1Y0YWFqV2s3d3N1VmZzUnZZMFow?=
 =?utf-8?B?Ujd5d3p6UzhCelc3eTJrYkVzSkZQNlJVZDYrbzBEY2NxZlNwNzQ1U3pPUmhz?=
 =?utf-8?B?UnhUZE1kR2oxcm9RanRzNDRMeTlLYWlzWXdIQy9ySEVFL0pyb2JvNXJ4UmpF?=
 =?utf-8?B?TUcwQVNYUnFhMGN4SEh6WmNRUStCeUZKbTlYVitEUWVuR3ZlWHNVUnM5N0hZ?=
 =?utf-8?B?SFF4UGNVRVhwcGoxZ0NzVW91THA4M0tsdVRLY3piaXkrNytKTFhyVW1LbmEw?=
 =?utf-8?B?VXJpbUI4VFNtSUx4cW5vN2VFd3gwZis3WSt3dnNIUFlZZnJLcnJSSC9HaHQ2?=
 =?utf-8?B?ZXFDQ3JIWjloanV5dlNnNVA5OHFkZU1uTGJ0endJQ01MWW9nUmxIUGhOTmJl?=
 =?utf-8?B?ckhtek5HZzVPYzJGUld0ZCtpRG9ZdElsTHpVTE1MK0ZPbUxkaGNPcVppenNl?=
 =?utf-8?B?OG1aNFlIQVdzNDVncVltZzVYU2p1cUxlcmFlUkRwd3RZRzRKU29pZ1dPNzRj?=
 =?utf-8?B?SjlIQkVQWVlnUnRJOFcrM3ZRM2pDTTkvcGZzQzFpYllYdzEzWFV2bUVBVHdH?=
 =?utf-8?B?a1J0MjVvbHl2VnZYUTdUZzRSSUpPWGh2MGF5M3ZUT1lWTkI5YzBjOUR0VDF3?=
 =?utf-8?B?YkNaVldMVGlaUjIxM2plQkUxbXRseWwyWjNDa2ZtZ2VmZFdvSFk0d0pYL2l3?=
 =?utf-8?B?aEw0YjZYQXVQdUxueEdhckRVdzl0WTRjeno1YXFNN0w4ZDhEM0NXV01TM2hj?=
 =?utf-8?B?Qk1JV0ZLRUdFbFZ0RTQ1VGE3WHNPSTRPazk0VXBqVFJROUg2eDk5MzZEZEkz?=
 =?utf-8?B?NmF4Rm9EdTJoUVlOSGR6bklYUnI3OStrTTJhdG5ITjJ5VjhpSHhKYzRVdnlD?=
 =?utf-8?B?cEJUcldmaGFhN0xlcnRud3J4ZHM3dW92OXBBY0NmOXpLZ3FzQVNHZVpBS0pH?=
 =?utf-8?B?L2RNTlgyT0dpOVcvZUpoSzNwSlZGV2o4R0lzbDB2TFFBTzZCaDA3MEU3cCtO?=
 =?utf-8?B?RzhnaDd2THRoWkpuZVdqc1hLbXZaNmg4b0hZWkJHcFYxK21kN3RZeVVVM0J3?=
 =?utf-8?B?dEE4ODNZVzJydWtsNWhEV2pTQVlXUkNReFMrQk01UkNOSEZpR0hqblZna1Vr?=
 =?utf-8?B?RDRvRWZtaUNGc01XQkZieW1zd2xWSllwbFc4Tks4bmFLZ3ZPbkRzTnlXdStt?=
 =?utf-8?B?UHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8da4d5ee-fba8-4407-47bf-08dcd0a9d58c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2024 08:31:43.1617 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vxwkPEsfL2aRpXL7i6m3idd+RA8kiwrO83GSQaOcfl7WB3kauOgEIybHC6ESJIhQVRkP7Cqq2cCdpDq+G4pmhdJSqFtHeZL7x1GaEZXHvho=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7927
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


On 9/6/2024 9:09 PM, Ville Syrjälä wrote:
> On Fri, Sep 06, 2024 at 06:28:00PM +0530, Ankit Nautiyal wrote:
>> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>>
>> Adding sanity checks for primary and secondary bigjoiner/uncompressed
>> bitmasks, should make it easier to spot possible issues.
>>
>> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c | 24 ++++++++++++++++++++
>>   1 file changed, 24 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index cdc7531311fc..6f098383479f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -3638,11 +3638,17 @@ static void enabled_bigjoiner_pipes(struct drm_i915_private *dev_priv,
>>   	}
>>   }
>>   
>> +static u8 expected_secondary_pipes(u8 primary_pipes)
>> +{
>> +	return primary_pipes << 1;
>> +}
> Extracting this should be a separate patch really since it
> was already in the code until the previous patch erroneously
> removed it.

Sure, will move this to another patch.


>
>> +
>>   static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
>>   				 u8 *primary_pipes, u8 *secondary_pipes)
>>   {
>>   	u8 primary_uncompressed_joiner_pipes, primary_bigjoiner_pipes;
>>   	u8 secondary_uncompressed_joiner_pipes, secondary_bigjoiner_pipes;
>> +	u8 uncompressed_joiner_pipes, bigjoiner_pipes;
>>   
>>   	enabled_uncompressed_joiner_pipes(dev_priv, &primary_uncompressed_joiner_pipes,
>>   					  &secondary_uncompressed_joiner_pipes);
>> @@ -3650,6 +3656,24 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
>>   	enabled_bigjoiner_pipes(dev_priv, &primary_bigjoiner_pipes,
>>   				&secondary_bigjoiner_pipes);
>>   
>> +	uncompressed_joiner_pipes = primary_uncompressed_joiner_pipes |
>> +				    secondary_uncompressed_joiner_pipes;
>> +	bigjoiner_pipes = primary_bigjoiner_pipes | secondary_bigjoiner_pipes;
>> +
>> +	drm_WARN(&dev_priv->drm, (uncompressed_joiner_pipes & bigjoiner_pipes) != 0,
>> +		 "Uncomressed joiner pipes(%x) and bigjoiner pipes(%x) can't intersect\n",
>> +		 uncompressed_joiner_pipes, bigjoiner_pipes);
> Please use 0x%x for printing hex numbers
>
> Side note: maybe we should switch to the standard %#x instead?
> Though we'd need to double check whether prink() follows the
> idiotic C standard or not:
>   printf("%#x", 1) -> 0x1, for any non-zero value
>   bs.
>   printf("%#x", 0) -> 0 (sigh)
>
> If printk() behaves the same way then I want to see %#x anywhere
> (pretty sure we do use it in a few places already though).

I will check how %#x behaves with 0 with printk, accordingly will use 
0x%x or %x#x, (we do use it in some places).

Regards,

Ankit

>
>
>> +	drm_WARN(&dev_priv->drm, secondary_bigjoiner_pipes !=
>> +		 expected_secondary_pipes(primary_bigjoiner_pipes),
>> +		 "Wrong secondary bigjoiner pipes(expected %x, current %x)\n",
>> +		 expected_secondary_pipes(primary_bigjoiner_pipes),
>> +		 secondary_bigjoiner_pipes);
>> +	drm_WARN(&dev_priv->drm, secondary_uncompressed_joiner_pipes !=
>> +		 expected_secondary_pipes(primary_uncompressed_joiner_pipes),
>> +		 "Wrong secondary uncompressed joiner pipes(expected %x, current %x)\n",
>> +		 expected_secondary_pipes(primary_uncompressed_joiner_pipes),
>> +		 secondary_uncompressed_joiner_pipes);
>> +
>>   	*primary_pipes = 0;
>>   	*secondary_pipes = 0;
>>   
>> -- 
>> 2.45.2
