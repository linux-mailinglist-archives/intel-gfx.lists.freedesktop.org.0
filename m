Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 712E5A229DD
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 09:54:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6313F10E057;
	Thu, 30 Jan 2025 08:54:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D6ixmvPC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54F8510E057;
 Thu, 30 Jan 2025 08:54:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738227268; x=1769763268;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=erfSKO3v/eUayWykgvrs3kezI3NF9Drw3WB63v6JFV0=;
 b=D6ixmvPCpQ+V+yQBRX0SAgLnFnCJVt8JQKmLNFdsUsxPpF/IweZZO8h1
 1H4Lbcy5uAYvR/9gpO16WUigzqtCGXG7/PExO95MJZLXtowqHQD9sLV4k
 JNZfuFUX5d/veySDiEgZ3QdnWTeviqniwKcrRvF2SrOQ45K8Xyg+pHBqY
 wXRjMWnFBx0YpZFjnGUJvtnD1T3PjJg1CvixESnIxdMnYNo2E992Lwkkt
 A1ok3wpyystrbbrOwxzn9DsPHihUfAcJ0TIuhOZEi63h7kv/vHLk8X6JD
 Fibh3PLb5RNRBC00RuUasIIT5cy+Qp3u6wNbVAcUMF7JYxhk+saHKeRWR w==;
X-CSE-ConnectionGUID: YlaaN7FMRdyin+wwaNY1bw==
X-CSE-MsgGUID: voxCqbsmTuCms2gHMVelhQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="41596325"
X-IronPort-AV: E=Sophos;i="6.13,244,1732608000"; d="scan'208";a="41596325"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 00:54:28 -0800
X-CSE-ConnectionGUID: 0NoYdDaVQfawVuBJx/LQ8g==
X-CSE-MsgGUID: q/r+pljfQimdp30Pxi5/2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,245,1732608000"; d="scan'208";a="140166718"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2025 00:54:28 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 30 Jan 2025 00:54:27 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 30 Jan 2025 00:54:27 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 30 Jan 2025 00:54:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hy+g1TqklD+8/YzgdzGk83C9aylI6EXZq3/3bb1NJ+0QWsF75HB8ejBnx4O1st2DCz/jB94cqmtzI1rd7xbS5wCqXDfDi7k1ggZN3ggwnrv/OCXtSqJUvpL0cm6HUkkZ9TbQkhgjRY6qtjQySHaXE5Bt4nnYxogruJR2XX0dVLQJn6+82PgZs6666hgiQIVZyCl163vgfoDBJz6wVDS3jLaZctyvZvu/Rx1POt7LN+BhlhfoAGhba58Y9M81KEVeGwEiLtjZPt1tZIyNacqRe+n75SSiwYam1mXgDuKk107Bjg6Ib4gi0TkmzPTVLI4NBb6CXOk6gYhVBsbeH3QRfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NdN+qo6Ctdv/vDR/lniS/FdYNzPrG6QgqQn3h2us5WE=;
 b=vF67Oh06I8yI5QT4pYhqMtMPcYs1zXd4vfdLbEN7ENYPbpFdJCq3gC+Dsd4+/qTO7d0kS5IWD/1kkKGGxea5Tgnk5aNS5FiBvlX82fXpmjA3Ycm3xDNqDvemdQcccdCT/hkrWXKCyw8TiRJo1o2oCY5kiz7pIbaf6Rn2I8l1/9qN1JSOEz6Jsw8Vp5YO97DDSdp2r6cPqcRZKoTD0BLJGp4m1OkM5mtA9imTI9sA3ARiLWf74vlQYdTSYsq3B6DmNy8uXANJnUKH+l4cuxtVjTpDUqtVlEGwNRdPRzPznamslB6ZdYAd7SY8NBoAElKznfiDJDzfrRCZi1KZms0zMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB6974.namprd11.prod.outlook.com (2603:10b6:510:225::16)
 by SA3PR11MB8120.namprd11.prod.outlook.com (2603:10b6:806:2f3::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.22; Thu, 30 Jan
 2025 08:54:25 +0000
Received: from PH8PR11MB6974.namprd11.prod.outlook.com
 ([fe80::c0b4:f63a:9c33:ec4a]) by PH8PR11MB6974.namprd11.prod.outlook.com
 ([fe80::c0b4:f63a:9c33:ec4a%4]) with mapi id 15.20.8398.017; Thu, 30 Jan 2025
 08:54:25 +0000
Date: Thu, 30 Jan 2025 14:24:18 +0530
From: "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 2/4] drm/i915/dmc_wl: Add debugfs for untracked offsets
Message-ID: <Z5s-OvQ3j54lDND6@bvivekan-mobl1>
References: <20250117220747.87927-1-gustavo.sousa@intel.com>
 <20250117220747.87927-3-gustavo.sousa@intel.com>
 <Z5JqFwchTpIXdDbJ@bvivekan-mobl1>
 <173765046077.34727.6436685522751214954@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <173765046077.34727.6436685522751214954@intel.com>
X-ClientProxiedBy: PN2PR01CA0183.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e8::9) To PH8PR11MB6974.namprd11.prod.outlook.com
 (2603:10b6:510:225::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB6974:EE_|SA3PR11MB8120:EE_
X-MS-Office365-Filtering-Correlation-Id: 4a0c65e0-f74b-4388-e647-08dd410bb25f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ejBhTzMyLzZyNUU5clhvZngyMDU2SWNHQWphSVdwQVp0TGc3VjBFYmJFZzg3?=
 =?utf-8?B?VEdVWkQ4L1hGTHpMME1jUCtvbXBySHdueFNic00xOXB2RGlIdkt6R29kWEN1?=
 =?utf-8?B?aU1xYmt1NERIY0VrZFEwdm81RGJ2Rk1Va3IvVVZXS25wYjdZcTJ5UENJTHBu?=
 =?utf-8?B?cVVlTFlhUGNhZlZuQUtPTjQyamhOYXBmRFk2ZzkvN0pXckc0MmxSendyU0VR?=
 =?utf-8?B?bDNoUUZMRWVna2FvZmZraS9ONGdYSU5BZUxTQlVQRjdRdTk0R1ZTWU0yWVhN?=
 =?utf-8?B?M1lGbCtjZG5VM3lDSWdIdEFjbjJBMDkzOFRPM3lZR2hFMlB1b0FPcjNqbmRF?=
 =?utf-8?B?NWVuOHBKVmdDL29neW9rUUFUL1RWeVZ4eTVnVy81aWNmamFRZFRrQWZjZEVG?=
 =?utf-8?B?ZUEyTm9jdS9mcm8xWmRrdGhKNU5uZ2tBNldkN3FrdmI3ek9pOGJUVjlPWjV0?=
 =?utf-8?B?T0RpY1N1SkFwY1liN0VpTXZoYlBmK2pOQjkvOGhwTmxxUEhqVCtCUmFwM1pp?=
 =?utf-8?B?VWFBQXpRdHlIL0QwdWtNRHJ4OWNBZjZsUnU1TEhTZFN1SG5qaFA4b0RTV0Jq?=
 =?utf-8?B?M2xtZHZWNmY3ajI3dW5DSno2UW1JQXB0U0NoT25jNG4veldpdkVEUUJYbnVB?=
 =?utf-8?B?RVNtMjlVNSs3b21XNWpBUEVYeDN1aWdIK2s2ZU9HcjBYS2dmL1hxdzE5SlVk?=
 =?utf-8?B?ZERuZGxSNHNsYUtHZ0VZSE5pYi9nY2VzNWc2ZDVaZjdOWngyV0RHckRTNWFL?=
 =?utf-8?B?ZXBpcDZROUpNQUhhZkxkVGdQRnp6N2x5bE51N1pjb24xTDhjcWpVcFVrNHdV?=
 =?utf-8?B?WGlpL3FtdkxCV0JkVFR4SnFtcmo1MzhZRnp4V1R5d3NubEdpNzNodFJORU5s?=
 =?utf-8?B?dXpHTFpXMTlBa1Zsbk4zdFpOcTZyQjRiZ0QxRlJlNDYwUlNGbzdlaTlKM05W?=
 =?utf-8?B?Z3ZnNEZnOFYrVUlRS283dXd1Y0tXTWpTaytqYjJJSGtpd1JzV2xFZElCMkJm?=
 =?utf-8?B?ZlQ0bTFrREJUTzRabTdYaGU0UmdjdjdTQUY5ZTlwUmhvaUROY1pMbHZOemVl?=
 =?utf-8?B?SlBlT25UMEhnVFpSaFNkRmN4dk4xOURkanBhaGZSV2tTWUlMMnVUUzFwU244?=
 =?utf-8?B?TEdPVGVkZXlkTU04ODlkRzgwVTM0Z2t2SVJtcjNZQkROSGlubDM0Q0hSdUNJ?=
 =?utf-8?B?ODQ4VmVUMGRLSnFqZDRJSlZaV1dKY1VKUVFjRis5RzBseENSR2VlOEQwSTdG?=
 =?utf-8?B?aEttTlpXNFV2cEJXV0kzcEV6aTc1WDJQUXJSSUEwZTEyQTRXWHdIbWJBNVRW?=
 =?utf-8?B?QWZqcXJvdm9DUEhsM0txbG0xVmQ0b0pNTW9GSXJIYTVOaElDTnlheDdRMVZn?=
 =?utf-8?B?dWRrOW9SYldmNDZtZ2NJTWlZcFBvWFJjbXdidFV1aWZQNTNJTzJtMDBsUFBz?=
 =?utf-8?B?MnVtV0FlMVJGL3pnc3NGSDRUUlhVNXVHYVYrbkVxV1FtMmJ3OHlmYkhkUm9U?=
 =?utf-8?B?cnJFREtySFVoNE9ZTWRWL1hIeFBvVDM2RmlKQ01QbHU4bmMwMVpxMUVPNUFO?=
 =?utf-8?B?RjQwVzhQdnBFYzQ4ODFUVExDTHBLSy9JSnErdlQ4YXhhdGdQWUVKQnROU0I3?=
 =?utf-8?B?NmU4enFrUTM0ODd1cVlmbVlqUWd5Z3phczlkTkJPd0FmNXZYNmN0bzlLY3Zx?=
 =?utf-8?B?Yk0xUU0zWk1WaVlTaFZISjNLeUdJQngxbmM5TXBOM0tLemc2K1NoYWdvbXZZ?=
 =?utf-8?B?UllMQnpYS0hrZGhxczFZcDhRUHZGdE1zSDdGTzJ4a1ErQmQ3SnFyMDBkTHZO?=
 =?utf-8?B?dnNnaVNQOGhYTk83b214QzlyZ1RYcGpDK2tWc3A1cm5rS0d1RzBpdjBKSmpZ?=
 =?utf-8?Q?LC/T+jLl43TSa?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6974.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dDU4SDAyRTJuazlxS3BFcGdSNW1NaVZKV3RRZFpwNi9wTW5TeUdzenFHVUNV?=
 =?utf-8?B?RVNnZ0tqNVUzZm5NT1VmamdJVXBEaVovSlVnYzB1SDBYQWtGUTFxd0VxTXM4?=
 =?utf-8?B?cDkydzY1Q1BURitiTVFtZW1jYVh1ZG4ydUhFV3VXQSsrZllKK1lGM0FHaklP?=
 =?utf-8?B?RmRQMWxuMVFnc3ZVb0hMODJCbE5xZFM5czNGYWtFcjRpbHJMRlJPS2pqRUgx?=
 =?utf-8?B?aE5rSGF0UVBTNFVkbExCbGJ1dys3QTRvaGJHaklvanlvOFppcU1XdENOeVl3?=
 =?utf-8?B?L1pSdks3azI5QmhzeVJqWXlmY240T2lvOTUwQ2lyd0dNSWsxS0dCd2ZYN00w?=
 =?utf-8?B?dXI3enV0MEQ5RDMxM0Ixa2dBMWtwVkhZMyt5MkJtdmx5enpLQkNsSHBYajZY?=
 =?utf-8?B?RkVUMDYwMG5jaGMwTUxFRHJtbW5KTmE2T0NGMWN6NDhFVHA5ZTgzVFdGa0Fz?=
 =?utf-8?B?TVE0TExuUi9nUGh3UHFadzAwTG5aQ3Y5VU13YjJxTGlLYTlQakxHMURBc2Nt?=
 =?utf-8?B?bkFVa1pKWWFKbkhWdFZjaHRlL3J1SExXYW90algxaThmQ1JXT1pPQ1oyQ2hG?=
 =?utf-8?B?OFRBWWRHeU9RSTFzMWlKS3VQOHY5Q09idzZFV1F5NDVzdUNYVkpzRVVrOXBt?=
 =?utf-8?B?SVNsdUZqZTZhclR2OGdSOUF3eHlqVk9GZmVIMWxiOEZGdlFrcElaM21tZlYy?=
 =?utf-8?B?Umt3SkhMQ25ETzJYNDFzK1g1Sk1adkJ6emdtRjA3YTNTN3dHZXFGVmh6ZWNa?=
 =?utf-8?B?S3Irbk00MVFNNWZQWDBOMmxjaGRNMlk0WSttWU5PNm9ZTjdsU1FOcHRyOUVM?=
 =?utf-8?B?c2pydTAwNWttYmJEVm5WT1RUc3doZ2t4VFpNQk9veTlLdFQxbnA3ZUZQKzE0?=
 =?utf-8?B?aTVzMmM3UmhLWmxtdUtpU01MVjkxMlBqSERad0t5TUlJUlZseXVJZjBqWHBG?=
 =?utf-8?B?UUtRdHI2dXpRd2cvUGRyUUc1MGVDRmw5TzVuL3NrQm9QMXBPYytqbHM1UkhN?=
 =?utf-8?B?M2pxNUg5REFSQnAvODlnbzFSVldKajh2N0t0b1hqdE1oS0Rhcm5vZDdteXhk?=
 =?utf-8?B?OEszdzltYVJOWkg4cU1DZkozcHl3YnQzNmJXZDNxUnM1YzFJbnNEblBwYmtt?=
 =?utf-8?B?T2F6ZlRyMTdmWTd4U2pxUFdhckNIdmYwQnp4SXpZdGJ3Q1V5RGNvTEJrS01T?=
 =?utf-8?B?YlBneFI2QmZwSGdtTFNDQWp0a0tURFEzRHFEeklYdyt3VzlvZngzdFZRVjdz?=
 =?utf-8?B?eHVxYUNMS2JZRkdGOUFwWW50ZXpHUjR2OGo3QlBOeVN0WHVpNUZubDZDNlk4?=
 =?utf-8?B?UXNudXQza3NHaXVyN3N2MEFqb1J1SWFqOU5VMFVsd1NJVWo3elpJdFViNFQr?=
 =?utf-8?B?ZWJaUlZWV0xmSEtxaXZKa2dYbmJybFh1ejZscEFQd2FIdFRHTVk0VnFpTllG?=
 =?utf-8?B?SThSM1lQYnZzcktWckdTWTIvNzJITVF6RFIwd3JVN1R4N0xOMVA2S1hkcWlL?=
 =?utf-8?B?TExnYU5oZ2liU05vOGViZUF6eWJFdys3dW1VdnJPUzJMcWcwKzJrYUNLZFdS?=
 =?utf-8?B?aDExbjFQT1JCQ2pHNlBaTHN4eHJEYldwNUZVU2EyNFlJelc0Q1BJQ0duNHlw?=
 =?utf-8?B?eGN0THczK2FaQ0V6aWhBbWVPRzYvSG4xVzhSZ294cmtzWWROSG1jS1dwaTJr?=
 =?utf-8?B?VnJDRFFOdW16VWNaaVh2cnlSRzBIdFJnd2xUUUR6blp2NzZveDI0cGp1azZ4?=
 =?utf-8?B?Vkk4OVQwVWhmc0tQTVVRVnFaK3FZWTF5TUFhc2FlR3ZkTFZ5d2MwTDlzcHJ6?=
 =?utf-8?B?eWZNS0g3NkN1Sis1OVlPSkVwRTN2NXd0a0w2c1I4M1BxbS8xV0swTGhma09s?=
 =?utf-8?B?M3oyZzI2bjhGRVNjeXcyTnBaQUlkWEZpOGhGbnhiQmQxL1F1QkVQdkZySVMy?=
 =?utf-8?B?ckxPNWNYWC8rUlIzTHNrS3JVTGovcVB6TE5NSlN3b3AxSnBsZWxUUFg2SnlD?=
 =?utf-8?B?OEMyWjdNSCtWdVhHNzkvamh4ZmFNVU9FODFoTmtpajFpc3RnMG5hR0lSaC9W?=
 =?utf-8?B?VE5wSnU2c3JFbU5mbjFlenpaSVNMYVYvT1NmeHlKdmhkOCtMTVp5QTdXc1Vn?=
 =?utf-8?B?SnJWeWl2NEhpMXlyMVdBbGprM3d4amRkd2xWVUZkSHdBZTg2cFVNb2JJVi9G?=
 =?utf-8?Q?fGLeTl6LKSAvIJfHOcC2hRE=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a0c65e0-f74b-4388-e647-08dd410bb25f
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6974.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2025 08:54:25.0779 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y7SdkBItkNn4aRUAbKb4e4Jv23egG4mvvoUpVPKyIASAeYXCE4MfA7OSrNQ56YsWqiu90RoaJV3LyHbfvi1XfUozgtUlwYuZBJtekHFIrygWm7IdGpkqoXCqmkyaTvQI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8120
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

On 23.01.2025 13:41, Gustavo Sousa wrote:
> Quoting Vivekanandan, Balasubramani (2025-01-23 13:11:03-03:00)
> >On 17.01.2025 19:06, Gustavo Sousa wrote:
> >> The DMC wakelock code needs to keep track of register offsets that need
> >> the wakelock for proper access. If one of the necessary offsets are
> >> missed, then the failure in asserting the wakelock is very likely to
> >> cause problems down the road.
> >> 
> >> A miss could happen for at least two different reasons:
> >> 
> >> - We might have forgotten to add the offset (or range) to the relevant
> >>   tables tracked by the driver in the first place.
> >> 
> >> - Or updates to either the DMC firmware or the display IP that require
> >>   new offsets to be tracked and we fail to realize that.
> >> 
> >> To help capture these cases, let's introduce a debugfs interface for the
> >> DMC wakelock.
> >> 
> >> In this part, we export a buffer containing offsets of registers that
> >> were considered not needing the wakelock by our driver. In an upcoming
> >> change we will also allow defining an extra set of offset ranges to be
> >> tracked by our driver.
> >> 
> >> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/Makefile                 |   1 +
> >>  .../drm/i915/display/intel_display_debugfs.c  |   2 +
> >>  drivers/gpu/drm/i915/display/intel_dmc_wl.c   |   5 +-
> >>  drivers/gpu/drm/i915/display/intel_dmc_wl.h   |   2 +
> >>  .../drm/i915/display/intel_dmc_wl_debugfs.c   | 251 ++++++++++++++++++
> >>  .../drm/i915/display/intel_dmc_wl_debugfs.h   |  29 ++
> >>  drivers/gpu/drm/xe/Makefile                   |   1 +
> >>  7 files changed, 290 insertions(+), 1 deletion(-)
> >>  create mode 100644 drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
> >>  create mode 100644 drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h
> >> 
> >> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> >> index 3dda9f0eda82..ac1ab79de9c8 100644
> >> --- a/drivers/gpu/drm/i915/Makefile
> >> +++ b/drivers/gpu/drm/i915/Makefile
> >> @@ -251,6 +251,7 @@ i915-y += \
> >>          display/intel_display_wa.o \
> >>          display/intel_dmc.o \
> >>          display/intel_dmc_wl.o \
> >> +        display/intel_dmc_wl_debugfs.o \
> >>          display/intel_dpio_phy.o \
> >>          display/intel_dpll.o \
> >>          display/intel_dpll_mgr.o \
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >> index f1d76484025a..b032535f4830 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >> @@ -26,6 +26,7 @@
> >>  #include "intel_display_power_well.h"
> >>  #include "intel_display_types.h"
> >>  #include "intel_dmc.h"
> >> +#include "intel_dmc_wl_debugfs.h"
> >>  #include "intel_dp.h"
> >>  #include "intel_dp_link_training.h"
> >>  #include "intel_dp_mst.h"
> >> @@ -883,6 +884,7 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
> >>  
> >>          intel_bios_debugfs_register(display);
> >>          intel_cdclk_debugfs_register(display);
> >> +        intel_dmc_wl_debugfs_register(display);
> >>          intel_dmc_debugfs_register(display);
> >>          intel_dp_test_debugfs_register(display);
> >>          intel_fbc_debugfs_register(display);
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> >> index 330b43a72e08..3686d4e90167 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> >> @@ -338,6 +338,7 @@ void intel_dmc_wl_init(struct intel_display *display)
> >>          spin_lock_init(&wl->lock);
> >>          refcount_set(&wl->refcount,
> >>                       display->params.enable_dmc_wl == ENABLE_DMC_WL_ALWAYS_LOCKED ? 1 : 0);
> >> +        intel_dmc_wl_debugfs_init(display);
> >>  }
> >>  
> >>  /* Must only be called as part of enabling dynamic DC states. */
> >> @@ -444,8 +445,10 @@ void intel_dmc_wl_get(struct intel_display *display, i915_reg_t reg)
> >>          spin_lock_irqsave(&wl->lock, flags);
> >>  
> >>          if (i915_mmio_reg_valid(reg) &&
> >> -            !intel_dmc_wl_check_range(display, reg, wl->dc_state))
> >> +            !intel_dmc_wl_check_range(display, reg, wl->dc_state)) {
> >> +                intel_dmc_wl_debugfs_log_untracked(display, i915_mmio_reg_offset(reg));
> >>                  goto out_unlock;
> >> +        }
> >>  
> >>          if (!wl->enabled) {
> >>                  if (!refcount_inc_not_zero(&wl->refcount))
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.h b/drivers/gpu/drm/i915/display/intel_dmc_wl.h
> >> index 5488fbdf29b8..d11b0ab50b3c 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.h
> >> @@ -11,6 +11,7 @@
> >>  #include <linux/refcount.h>
> >>  
> >>  #include "i915_reg_defs.h"
> >> +#include "intel_dmc_wl_debugfs.h"
> >>  
> >>  struct intel_display;
> >>  
> >> @@ -27,6 +28,7 @@ struct intel_dmc_wl {
> >>           */
> >>          u32 dc_state;
> >>          struct delayed_work work;
> >> +        struct intel_dmc_wl_dbg dbg;
> >>  };
> >>  
> >>  void intel_dmc_wl_init(struct intel_display *display);
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
> >> new file mode 100644
> >> index 000000000000..41e59d775fe5
> >> --- /dev/null
> >> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
> >> @@ -0,0 +1,251 @@
> >> +// SPDX-License-Identifier: MIT
> >> +/*
> >> + * Copyright (C) 2025 Intel Corporation
> >> + */
> >> +
> >> +#include <linux/debugfs.h>
> >> +
> >> +#include <drm/drm_device.h>
> >> +#include <drm/drm_managed.h>
> >> +#include <drm/drm_print.h>
> >> +
> >> +#include "intel_display_core.h"
> >> +#include "intel_dmc_wl_debugfs.h"
> >> +
> >> +#define DEBUGFS_UNTRACKED_BUFFER_SIZE_MAX 65536
> >This macro is not actually the size but the count of offsets stored in
> >the buffer. This is used as the array size for drmm_kmalloc_array call.
> >It makes sense to rename this macro as count
> 
> I think size doesn't really have to mean number of bytes, but, in this
> case, I agree, that "buffer size" could be easily thought that way.
> 
> However, couldn't "buffer count" be somewhat ambiguous? One might read
> as the number of buffers and then only later after reading the code that
> it would refer to the number of entries in a single buffer.
> 
> Between the two options, I think I would still go with "buffer size"...

I was thinking something like DEBUGFS_UNTRACKED_OFFSET_COUNT

Regards,
Bala

> 
> >
> >> +
> >> +/*
> >> + * DOC: DMC wakelock debugfs
> >> + *
> >> + * The DMC wakelock code needs to keep track of register offsets that need the
> >> + * wakelock for proper access. If one of the necessary offsets are missed, then
> >> + * the failure in asserting the wakelock is very likely to cause problems down
> >> + * the road.
> >> + *
> >> + * A miss could happen for at least two different reasons:
> >> + *
> >> + * - We might have forgotten to add the offset (or range) to the relevant
> >> + *   tables tracked by the driver in the first place.
> >> + *
> >> + * - Or updates to either the DMC firmware or the display IP that require new
> >> + *   offsets to be tracked and we fail to realize that.
> >> + *
> >> + * To help capture these cases, we provide the intel_dmc_wl/ debugfs directory,
> >> + * which exports a buffer of untracked register offsets.
> >> + *
> >> + * Untracked offsets
> >> + * -----------------
> >> + *
> >> + * This is a buffer that records every register offset that went through the
> >> + * DMC wakelock check and was deemed not needing the wakelock for MMIO access.
> >> + *
> >> + * To activate the logging of offsets into such a buffer, one can do::
> >> + *
> >> + *   # echo -1 > /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked_size
> >
> >This knob is setting the count of offsets to be stored and not the size.
> >I think this should be renamed to indicate it as count.
> >
> >> + *
> >> + * This will create a buffer with the maximum number of entries allowed
> >> + * (DEBUGFS_UNTRACKED_BUFFER_SIZE_MAX). A positive value can be used instead to
> >> + * define a different size:
> >> + *
> >> + *   # echo 1024 > /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked_size
> >
> >For me passing negative number doesn't look intuitive. Thinking do we
> >really need the case of passing default buffer size. We can allow just 0
> >to disable and any positive number to enable with the buffer size set as
> >value passed.
> 
> Well, this is already supported. The use of -1 is just a convenience,
> and the user is not required to use it.
> 
> The current interface doesn't provide a way of letting the user know the
> maximum value and I think it would be a bit overkill adding another
> debugfs file just for that purpose.
> 
> As such, I think -1 is a useful way of letting the user use the maximum
> size, specially when she doesn't have the up-to-date documentation in
> handy to know what value that is. That's certainly better than having
> the user finding the maximum via trial and error.
> 
> >
> >> + *
> >> + * Every write to untracked_size will cause the buffer to be reset.
> >> + *
> >> + * It is also possible to read untracked_size in order to get the current
> >> + * value.
> >> + *
> >> + * After enabled, the buffer starts getting filled with offsets as MMIOs are
> >> + * performed by the driver.
> >> + *
> >> + * In order to view the content of the buffer, one can do::
> >> + *
> >> + *   # cat /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked
> >> + *   0x000c4000
> >> + *   0x0016fe50
> >> + *   0x000c7200
> >> + *   0x000c7204
> >> + *   0x00045230
> >> + *   0x00046440
> >> + *   0x00045234
> >> + *   0x0016fa48
> >> + *   0x0016fa40
> >> + *   0x0016fa5c
> >> + *   (...)
> >> + *
> >> + * The order of those offsets does not reflect the order the checks were done
> >> + * (some recently seen offsets are skipped to save space).
> >> + *
> >> + * Once done with it, the logging can be disabled with::
> >> + *
> >> + *   # echo 0 > /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked_size
> >> + */
> >> +
> >> +static int untracked_size_get(void *data, u64 *val)
> >> +{
> >> +        struct intel_display *display = data;
> >> +        struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
> >> +        unsigned long flags;
> >> +
> >> +        spin_lock_irqsave(&dbg->lock, flags);
> >> +        *val = dbg->untracked.size;
> >> +        spin_unlock_irqrestore(&dbg->lock, flags);
> >> +
> >> +        return 0;
> >> +}
> >> +
> >> +static int untracked_size_set(void *data, u64 val)
> >> +{
> >> +        struct intel_display *display = data;
> >> +        struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
> >> +        s64 new_size;
> >> +        u32 *old_offsets;
> >> +        u32 *new_offsets;
> >> +        unsigned long flags;
> >> +
> >> +        new_size = (s64)val;
> >> +
> >> +        if (new_size == -1) {
> >> +                new_size = DEBUGFS_UNTRACKED_BUFFER_SIZE_MAX;
> >> +        } else if (new_size < 0) {
> >> +                drm_err(display->drm,
> >> +                        "%lld is invalid for untracked_size, the only negative value allowed is -1\n",
> >> +                        new_size);
> >> +                return -EINVAL;
> >> +        } else if (new_size > DEBUGFS_UNTRACKED_BUFFER_SIZE_MAX) {
> >> +                drm_err(display->drm,
> >> +                        "%lld too big for untracked_size, maximum allowed value is %d\n",
> >> +                        new_size,
> >> +                        DEBUGFS_UNTRACKED_BUFFER_SIZE_MAX);
> >> +                return -EINVAL;
> >> +        }
> >> +
> >> +        if (new_size == 0) {
> >> +                new_offsets = NULL;
> >> +        } else {
> >> +                new_offsets = drmm_kmalloc_array(display->drm, new_size, sizeof(*new_offsets),
> >> +                                                 GFP_KERNEL);
> >> +
> >> +                if (!new_offsets)
> >> +                        return -ENOMEM;
> >> +        }
> >> +
> >> +        spin_lock_irqsave(&dbg->lock, flags);
> >> +        old_offsets = dbg->untracked.offsets;
> >> +        dbg->untracked.offsets = new_offsets;
> >> +        dbg->untracked.size = new_size;
> >> +        dbg->untracked.head = 0;
> >> +        dbg->untracked.len = 0;
> >> +        dbg->untracked.overflow = false;
> >> +        spin_unlock_irqrestore(&dbg->lock, flags);
> >> +
> >> +        if (old_offsets)
> >> +                drmm_kfree(display->drm, old_offsets);
> >> +
> >> +        return 0;
> >> +}
> >> +
> >> +DEFINE_SIMPLE_ATTRIBUTE_SIGNED(untracked_size_fops,
> >> +                               untracked_size_get,
> >> +                               untracked_size_set,
> >> +                               "%lld\n");
> >> +
> >> +static int untracked_show(struct seq_file *m, void *data)
> >> +{
> >> +        struct intel_display *display = m->private;
> >> +        struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
> >> +        unsigned long flags;
> >> +        size_t remaining;
> >> +        size_t i;
> >> +
> >> +        spin_lock_irqsave(&dbg->lock, flags);
> >> +
> >> +        remaining = dbg->untracked.len;
> >> +        i = dbg->untracked.head;
> >> +
> >> +        while (remaining--) {
> >> +                if (i == 0)
> >> +                        i = dbg->untracked.size;
> >> +
> >> +                seq_printf(m, "0x%08x\n", dbg->untracked.offsets[--i]);
> >> +        }
> >> +
> >> +        spin_unlock_irqrestore(&dbg->lock, flags);
> >> +
> >> +        return 0;
> >> +}
> >> +
> >> +DEFINE_SHOW_ATTRIBUTE(untracked);
> >> +
> >> +void intel_dmc_wl_debugfs_init(struct intel_display *display)
> >> +{
> >> +        struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
> >> +
> >> +        spin_lock_init(&dbg->lock);
> >> +}
> >> +
> >> +void intel_dmc_wl_debugfs_register(struct intel_display *display)
> >> +{
> >> +        struct dentry *dir;
> >> +
> >> +        if (!HAS_DMC_WAKELOCK(display))
> >> +                return;
> >> +
> >> +        dir = debugfs_create_dir("intel_dmc_wl", display->drm->debugfs_root);
> >> +        if (IS_ERR(dir))
> >> +                return;
> >> +
> >> +        debugfs_create_file("untracked_size", 0644, dir, display,
> >> +                            &untracked_size_fops);
> >> +        debugfs_create_file("untracked", 0644, dir, display,
> >> +                            &untracked_fops);
> >> +}
> >> +
> >> +static bool untracked_has_recent_offset(struct intel_display *display, u32 offset)
> >> +{
> >> +        struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
> >> +        int look_back = 32;
> >Define a macro for this magic number
> 
> This is very local to this function and I guess the variable name
> already convey it's meaning?
> 
> >
> >> +        size_t i;
> >> +
> >> +        if (look_back > dbg->untracked.len)
> >> +                look_back = dbg->untracked.len;
> >> +
> >> +        i = dbg->untracked.head;
> >> +
> >> +        while (look_back--) {
> >> +                if (i == 0)
> >> +                        i = dbg->untracked.size;
> >> +
> >> +                if (dbg->untracked.offsets[--i] == offset)
> >> +                        return true;
> >> +        }
> >> +
> >> +        return false;
> >> +}
> >> +
> >> +void intel_dmc_wl_debugfs_log_untracked(struct intel_display *display, u32 offset)
> >> +{
> >> +        struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
> >> +        unsigned long flags;
> >> +
> >> +        spin_lock_irqsave(&dbg->lock, flags);
> >As this code never gets called by an interrupt, we can use just the
> >spin_lock instead of spin_lock_irqsave. Same applies for all the places
> >where spin_lock/unlock_irqsave/irqrestore is used.
> 
> This code does get called in interrupt context. It is called by
> intel_dmc_wl_get(), which is called for most of display MMIO access
> functions, and that happens both in user and interrupt context.
> 
> >
> >> +
> >> +        if (!dbg->untracked.size)
> >> +                goto out_unlock;
> >> +
> >> +        /* Save some space by not repeating recent offsets. */
> >> +        if (untracked_has_recent_offset(display, offset))
> >> +                goto out_unlock;
> >> +
> >> +        dbg->untracked.offsets[dbg->untracked.head] = offset;
> >> +        dbg->untracked.head = (dbg->untracked.head + 1) % dbg->untracked.size;
> >> +        if (dbg->untracked.len < dbg->untracked.size)
> >> +                dbg->untracked.len++;
> >> +
> >> +        if (dbg->untracked.len == dbg->untracked.size && !dbg->untracked.overflow) {
> >> +                dbg->untracked.overflow = true;
> >> +                drm_warn(display->drm, "Overflow detected in DMC wakelock debugfs untracked offsets\n");
> >> +        }
> >> +
> >> +out_unlock:
> >> +        spin_unlock_irqrestore(&dbg->lock, flags);
> >> +}
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h
> >> new file mode 100644
> >> index 000000000000..9437c324966f
> >> --- /dev/null
> >> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h
> >> @@ -0,0 +1,29 @@
> >> +/* SPDX-License-Identifier: MIT */
> >> +/*
> >> + * Copyright (C) 2025 Intel Corporation
> >> + */
> >> +
> >> +#ifndef __INTEL_DMC_WL_DEBUGFS_H__
> >> +#define __INTEL_DMC_WL_DEBUGFS_H__
> >> +
> >> +#include <linux/types.h>
> >> +#include <linux/spinlock.h>
> >> +
> >> +struct intel_display;
> >> +
> >> +struct intel_dmc_wl_dbg {
> >> +        spinlock_t lock; /* protects everything below */
> >> +        struct {
> >> +                u32 *offsets;
> >> +                size_t head;
> >> +                size_t len;
> >> +                size_t size;
> >There is no need of both len and size. head will always give the count
> >of entries in the buffer. During overflow, we are keeping a flag to
> >indicate a overflow, which indicates the we also have date in the buffer
> >above head till the end of buffer.
> 
> Ah, right. If overflow==false, then the length equals head, if
> overflow==true, then length equals size.
> 
> Maybe the inconvenience is that we will need to calculate the length
> every time we need it. But maybe that's not too bad...
> 
> Thanks! I'll remove the "len" member in v2.
> 
> --
> Gustavo Sousa
> 
> >
> >Regards,
> >Bala
> >
> >> +                bool overflow;
> >> +        } untracked;
> >> +};
> >> +
> >> +void intel_dmc_wl_debugfs_init(struct intel_display *display);
> >> +void intel_dmc_wl_debugfs_register(struct intel_display *display);
> >> +void intel_dmc_wl_debugfs_log_untracked(struct intel_display *display, u32 offset);
> >> +
> >> +#endif /* __INTEL_DMC_WL_DEBUGFS_H__ */
> >> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> >> index 81f63258a7e1..f03fbdbcb1a4 100644
> >> --- a/drivers/gpu/drm/xe/Makefile
> >> +++ b/drivers/gpu/drm/xe/Makefile
> >> @@ -221,6 +221,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
> >>          i915-display/intel_display_wa.o \
> >>          i915-display/intel_dkl_phy.o \
> >>          i915-display/intel_dmc.o \
> >> +        i915-display/intel_dmc_wl_debugfs.o \
> >>          i915-display/intel_dp.o \
> >>          i915-display/intel_dp_aux.o \
> >>          i915-display/intel_dp_aux_backlight.o \
> >> -- 
> >> 2.48.0
> >>
