Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52631C65046
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 17:01:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78B8110E3E6;
	Mon, 17 Nov 2025 16:01:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bcm0i99L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A62E010E0A9;
 Mon, 17 Nov 2025 16:01:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763395308; x=1794931308;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=s62yWUV79KKNQ06zDbyR2fELOS7MVkA2RysL1XMpRWY=;
 b=Bcm0i99Lbt/etvfmLreONh2ieqbEwdXgbDKTZ/RzbRlb/LxnxcuaMLli
 KKWxfD+gziDxozDAjcB7qVqPxYAN9ZiffAmpC0j48uPWfe50pyjoILUpz
 71lkLljCY9FZL+rxwTGiDVKCGiotoddDl5bJtHt/iwEohTgsgGQY4++6q
 olMcwAOsgiAl0xOcO+b3xz3YEbElfDwNorJlYMlYdPhdmb7kHwYmBIAHv
 LiE4uknxCA0SVL0dY3j8LNiDH/jUNXeksE91V8IPtl4SCQ6dq+jLrwP+T
 ap6oP2gEn2ITcmud1v8B5Xc5jAUzskSQ0JPro8otSrIljW3Raa1sze5jf Q==;
X-CSE-ConnectionGUID: u/xDuvdmSZiOJPO1SbrNoA==
X-CSE-MsgGUID: wJGhAYi1SMa4/uA5BujWVQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="68004921"
X-IronPort-AV: E=Sophos;i="6.19,312,1754982000"; d="scan'208";a="68004921"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 08:01:20 -0800
X-CSE-ConnectionGUID: AhTV1KgPRv2njLjYtJZe5A==
X-CSE-MsgGUID: 8T0KUULtS3SbthLbNTIGHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,312,1754982000"; d="scan'208";a="190722297"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 08:01:19 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 08:01:18 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 17 Nov 2025 08:01:17 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.7) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 08:01:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jFR0YhAgE0OK7K6eBWm7e9phuTIQT8in5yQWpXqcILew/9NBFJaJHDGzVFwW8XjXVqp/4O44ShcPstD4bHdBXkIeMF8ZZG7qplyAqnUzqhA/g9QFMT1k8zjAIO4J4dnNM6liWSE4FzAyQUmLJG+fVWr496R6evnEvki2IUv92JcF+EULelg9m7YMDJ5XMPyb8uqmwxV6mXoNszeovtExrABjYs6VNX/+YtNlLK9+4k6EKBYXg/epjJ6Y70tuRZFpRkGiSs8OLlQ53Y6iQDaVA86+gqH+8za7hnN1CzPKI47UC7SHv8/pqWPM6NGSjmUyarxpFh26QFOJv2jg8X0kkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FyLJSIy/uMosLgqE7YUGeBbN8SV0hZBRetRTPZ0S5Pg=;
 b=Zk9b5QqP0xZPAugzdqgbssvVH7dEjdFhMGhcbQx9A/oBcPk9bheNIOq2SNYmxE3HhrE75f/BIleexnDIPb4C0dnXf8ze97w5tMy1tKe3SlrElQPOxyyxlNR4LDeMqEc2Vy8IBqUisd2rUlAP2QNTgYODv7WXtP5IRHG3uOQJkvHwseCppgVI/iG43n2GVgO40vq+xcpkhFLjznFYbX45lHapdiBnHUMqJOTewkRHkZ+UKHvPjPxD77RC4MPHK8nZlhV+jcw2ou1ZYo60Nx9qIZWS++YCU095lB70PF3eOOWJvqpjD3qoVVOsbxJYmPxIDbOMzQF8xSA1dS386+I4dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA1PR11MB6417.namprd11.prod.outlook.com (2603:10b6:208:3ab::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.21; Mon, 17 Nov
 2025 16:01:14 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9320.021; Mon, 17 Nov 2025
 16:01:13 +0000
Date: Mon, 17 Nov 2025 18:01:07 +0200
From: Imre Deak <imre.deak@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?iso-8859-1?Q?H=F6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
Subject: Re: [PATCH v4 07/11] drm/i915/xe3p_lpd: Extend Type-C flow for
 static DDI allocation
Message-ID: <aRtGw_Uv8Xf5-jH_@ideak-desk>
References: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
 <20251107-xe3p_lpd-basic-enabling-v4-7-ab3367f65f15@intel.com>
 <aRTJq2h7ic7EcpL6@ideak-desk>
 <176314958906.3698.11640605946760436324@intel.com>
 <aRfL-CWPYR6gC6F6@ideak-desk>
 <176339358223.5989.12199179619494954075@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <176339358223.5989.12199179619494954075@intel.com>
X-ClientProxiedBy: LO4P123CA0016.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:150::21) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA1PR11MB6417:EE_
X-MS-Office365-Filtering-Correlation-Id: e4531d4d-521d-4afe-8c83-08de25f28870
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?z5xtZfygUCHdb6Hn3VZUo81whEZnrdtXybI1d0KVfT9ep/52rlIQkh/bXAue?=
 =?us-ascii?Q?pjkCCOmFy4EefkTKdKOxNssDCSko/48rTo65/Fa5iBbiz3zUmvMfySh07+52?=
 =?us-ascii?Q?1aGSUEgcREi7r6d7ZrJzjNDzlu8qEVRt+kfOf2gHcr+Vjgv1tBadD/2BQd6W?=
 =?us-ascii?Q?cAQ7s8YkirUrHCcpKvvvLAzkIhkB99pjnrHNdVQnC+OUpWF5neW2fCB1AtAo?=
 =?us-ascii?Q?QbORhM1lurEPO78a9RRMpY9yUs71RBNTUaH8wDke6FdBRlrQ2IRzTv5xYLnU?=
 =?us-ascii?Q?I2T56fq2IOvTz6ZU0HfcIARTJtlvqlP8NPjlqBaiPBt//d+R4TBfnlugPuGZ?=
 =?us-ascii?Q?qe+MQ//S2Xs2rDIMjYVCoOsdOL/9F9dmDLcdPIJ/vR4mr1zsdql2QmVtGS9w?=
 =?us-ascii?Q?aHtGBopiFfHROtRrKazCWa2cHmyOtCYsHHBjTmvuA+E5Kyhh/q+dl3MD8qRX?=
 =?us-ascii?Q?LeBsPZ7eMAlW8O4cUFqZ3t8Ji27LjwLfY/er6QDeiA9dEWYrS7rukjIAUkvu?=
 =?us-ascii?Q?LDYoMeD71uFbbIf56tFFy8hqjfdH9+o/7lCiI78jeK4Wj/M9J/maZ6IfkFEh?=
 =?us-ascii?Q?QhuQuDqmuux/I2tLnaJ1mRsUJpYnP+VhOBv6KSenyK+C6PAfcqWwqALLU/YI?=
 =?us-ascii?Q?XJHt5YiL2uJV8q74xGeN8vx10IlNoFmQS3w9ESDggjvq7YjA923hV8ZauvRb?=
 =?us-ascii?Q?DH1kGfG8IHTdHUUpElOetJHjGlRq+g5wcSVyTkmdP9BpEbDedU7tJxXhnFpJ?=
 =?us-ascii?Q?Fw9HDLXd9uk3BqOVIk7UFXFY2Z2jMrqW4hdy0Aca6toxwzAScVBgkY8WmGGU?=
 =?us-ascii?Q?3CLGWAqMerpan76E4/wSmcfH9bHUVEHxZq18vHwPmePROpCkD6CZs7mABzEb?=
 =?us-ascii?Q?Se12z3prvFUsYvps0RccGdNWS9qvIHfVuuNlE8t7/QcCkItU7oGjD2vpYTag?=
 =?us-ascii?Q?9HsGTYx2wvxw+AqtKybZfGuZvaSOoUDABYkErAB4LLg1tV1tLzT9hEkg5RoC?=
 =?us-ascii?Q?QvobBV1VGmwSSTIR7N1bru9E8bU6Wk1oJhTmyYZ2accBVUQDe77va6rvZE2q?=
 =?us-ascii?Q?Te0dkeYn05HGtxULMdelOlyhUEA7FTpFMhn6cMSurPcZCCJ5ALPMD+VJVhMt?=
 =?us-ascii?Q?BI8jE4WaECdAX71pLH/PfLN4C79wwDMK1HVTzwKdl7aTQkuOmPTcWeal40G+?=
 =?us-ascii?Q?9kGRuDeKbfNt+kvXGtf7PO5Te7Y8vlqiOHo0p6/8BTx5noAThDkNA1PtMnR5?=
 =?us-ascii?Q?PA1qKad2wlEos1xLdbjVhW797PsijJjL0kt2WowDtOmt72MYJnorXBvKuClh?=
 =?us-ascii?Q?JdYw+Sd/ZVVLw3W8ofILzhfw8y0l99w/Gej6YgDTyojkc/S4zlPsYeXOyrw4?=
 =?us-ascii?Q?/Xc6ZWR8HE8jWZqA0SRaEIl7yQyUIFJSifxvmapghkQUXM11Tg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wTP0W3/U7GjOkfKPMZ/bBCYLHj/Fcc5rcwm4LSHyF3TIydr0vqiAhgCyT9ab?=
 =?us-ascii?Q?sp/NvZa9P97yF2lO4AMRiN2P3JSz0q/R2UPZvJ/srAK+lReuLsd3UZDe7lS5?=
 =?us-ascii?Q?V8fMgT4guoWFJmGJKLPbMawGz7EgJY1vJC2JHIYlIVBz5Usj9LBFBfLsm8++?=
 =?us-ascii?Q?5Rd/zxvrYHihXLvnjDk96sQO1xBqPzRJyS7Nq1iF5c9HD+Ak4FyrxMoozTvd?=
 =?us-ascii?Q?Uq08fvxYkfcNbAKEryNcnx/YcSDFWWh6c0pKL1GQHWw9Ur5MhpH51EOt2GRn?=
 =?us-ascii?Q?fkFOOf1pSuH3cunGm6Gy2dy31B+y1NIwOHG+T1X+COfSl08Qb15YsRCj2p4R?=
 =?us-ascii?Q?uI63ejB8gvv81xE3ojzQefcmmxSH3m7rwz06bGPO0+lt1/oIo5NNkKvfoaSB?=
 =?us-ascii?Q?jkTTBB/J30Kx7E9eVPL3gERJqf4ghrfNEIYF44nZIjwN6PDk5CIsIqPArjhd?=
 =?us-ascii?Q?5Fg47LggHBg/JntSB4EANAc2kasffoq1aNuafNjaG6f05NMDDJTAYdJqtPni?=
 =?us-ascii?Q?V/Vc7rOXJLF1Aozb2oaekUVmOjJ4jSK0Vln6aWIYEGlprv+rYOLiGY+acNxg?=
 =?us-ascii?Q?TK+z0cf2qmMpJSIGjn2I3X2mEXbKK+EuGRLnj6lX3kC0u6KCK8U9UChf/Hcy?=
 =?us-ascii?Q?5et3ioZQWA0Thy8CewiQ9eZqqP/xioCNEQg7I5DLyLLAI0fUrkSkfjvi2N6X?=
 =?us-ascii?Q?C+hFqxOHJ6mYWnuyi0WTfAL52D/5O2DJipCgPvqT9vkx46shDIS94LoS373J?=
 =?us-ascii?Q?ObvQ65LCrtUxJSXzs4LKgppH/VOuOQfDqSZu4HPPRxLCFiHKCjqfdGKgOzdX?=
 =?us-ascii?Q?LxWsP1qjpSHTKwuetUQUoB8KouN3nqwl0U7S5MDLJD/v6RpEncprwM5jByzH?=
 =?us-ascii?Q?+X0S5ZxOmT8ikeg7bPMZBAxPWnpslWj3xgkMvTe/C5WzQYWrNCxv/EburQ/9?=
 =?us-ascii?Q?kTSvlUi3WOzb242H5vWvc3mjDmCheWYw6ahoMr9LPBelneZ7cmwKK05iIbpU?=
 =?us-ascii?Q?sZEA+CbkUWDL8+qf9dVmUcocoG+DjPlYLs33oG7GdWyKNB2M0/yCtWrlg9us?=
 =?us-ascii?Q?og1n3LEoTxxghBhkAnSWNpBV/RaAAqVHg/PdFiXUlwYohU2yHB10jvB+loLZ?=
 =?us-ascii?Q?1LB7vR4nj9Hq/nZqK19yR9Vn2aJrbJBFg/gg0SG2DmfXVYAKtfzHK6aSjd5z?=
 =?us-ascii?Q?YaHxizPk/thghVtqMtQIb6hTjA/TM6BgEkv8TdaBwLn5oLAHl9/6GVE2qpl7?=
 =?us-ascii?Q?D3uYdOlGJTAJcGg6tVU+HNfwaj0beA/3HMBMAuGnjsO1AwK7Kv8EtJHQpTFh?=
 =?us-ascii?Q?vufrCPpQ6c8itp/36Eb3kQcvhU3ZtIfCouxguh8T3wKXUR3YEc7djdsMseXL?=
 =?us-ascii?Q?P+nb16ygIxYzgoxALCl6KkCwLVam+ZA5F69n1ANER10aQErCtkC3V685EZAU?=
 =?us-ascii?Q?x39B6/jEJego6hpBIwvPJVZ3kRgnZH9KdQ/hJrjeJa3ehP0EHi8Cja2tn5qz?=
 =?us-ascii?Q?bB3KcxIwK15iUZedkPe0qwi3SnUwaZWvhVflL/oJC0qOHYCenwHIMTgvJIO1?=
 =?us-ascii?Q?djPWIa98DgF85CWSwe3xdZ4F4q0zdFt8PzvtBZGHAyUlrEWsZGy90qyBP9Wf?=
 =?us-ascii?Q?UaaDbWf345YKe/u572ajBst/vp2/ikO1ZMvWKkc7jNBv?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e4531d4d-521d-4afe-8c83-08de25f28870
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2025 16:01:13.7860 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CnHYm728/4pZpRBr3PoTYrKhE680xhZRMdTr+gxTnuzVC6ahgG8szQfizXeHjPxyyOG20BTyWjJKd1EtkGuLqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6417
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 17, 2025 at 12:33:02PM -0300, Gustavo Sousa wrote:
> Quoting Imre Deak (2025-11-14 21:40:24-03:00)
> >On Fri, Nov 14, 2025 at 04:46:29PM -0300, Gustavo Sousa wrote:
> >> Quoting Imre Deak (2025-11-12 14:53:47-03:00)
> >> >On Fri, Nov 07, 2025 at 09:05:40PM -0300, Gustavo Sousa wrote:
> >> >> Xe3p_LPD has a new feature that allows the driver to allocate at runtime
> >> >> the DDI (TC ones) port to drive a legacy connection on the Type-C
> >> >> subsystem.  This allows better resource utilization, because now there
> >> >> is no need to statically reserve ports for legacy connectors on the
> >> >> Type-C subsystem.
> >> >> 
> >> >> That said, our driver is not yet ready for the dynamic allocation.
> >> >> Thus, as an incremental step, let's add the logic containing the
> >> >> required programming sequence for the allocation, but, instead of
> >> >> selecting the first available port, we try so use the 1:1 mapping
> >> >> expected by the driver today.
> >> >> 
> >> >> Bspec: 68954
> >> >> Co-developed-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> >> >> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> >> >> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> >> >> ---
> >> >> 
> >> >> NOTE: This patch is still a WIP. There are some opens to resolve here.
> >> >> Nevertheless, I'm sending it here for early feedback.
> >> >> 
> >> >> For the HIP-index stuff, I have a local refactor started and need to
> >> >> finish it up and send it.
> >> >> 
> >> >> The other open is about concurrent calls to iom_dp_resource_lock().  It
> >> >> is likely that we need to have a software lock to prevent concurrent
> >> >> access to IOM_DP_HW_RESOURCE_SEMAPHORE from our driver.
> >> >> ---
> >> >>  drivers/gpu/drm/i915/display/intel_display_regs.h |  20 ++-
> >> >>  drivers/gpu/drm/i915/display/intel_tc.c           | 151 +++++++++++++++++++++-
> >> >>  2 files changed, 169 insertions(+), 2 deletions(-)
> >> >> 
> >> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> >> >> index 89ea0156ee06..0cf7d43ce210 100644
> >> >> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> >> >> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> >> >> @@ -2908,6 +2908,25 @@ enum skl_power_gate {
> >> >>  #define   DP_PIN_ASSIGNMENT(idx, x)                ((x) << ((idx) * 4))
> >> >>  /* See enum intel_tc_pin_assignment for the pin assignment field values. */
> >> >>  
> >> >> +/*
> >> >> + * FIXME: There is also a definition for this register in intel_dkl_phy_regs.h.
> >> >> + * We need to consolidate the definitions.
> >> >> + */
> >> >> +#define HIP_INDEX_REG0                                _MMIO(0x1010a0)
> >> >> +#define   HIP_168_INDEX_MASK                        REG_GENMASK(3, 0)
> >> >> +#define   HIP_168_IOM_RES_MGMT                        REG_FIELD_PREP(HIP_168_INDEX_MASK, 0x1)
> >> >> +
> >> >> +#define IOM_DP_HW_RESOURCE_SEMAPHORE                _MMIO(0x168038)
> >> >> +#define   IOM_DP_HW_SEMLOCK                        REG_BIT(31)
> >> >> +#define   IOM_REQUESTOR_ID_MASK                        REG_GENMASK(3, 0)
> >> >> +#define   IOM_REQUESTOR_ID_DISPLAY_ENGINE        REG_FIELD_PREP(IOM_REQUESTOR_ID_MASK, 0x4)
> >> >> +
> >> >> +#define IOM_DP_RESOURCE_MNG                        _MMIO(0x16802c)
> >> >> +#define   IOM_DDI_CONSUMER_SHIFT(tc_port)        ((tc_port) * 4)
> >> >> +#define   IOM_DDI_CONSUMER_MASK(tc_port)        (0xf << IOM_DDI_CONSUMER_SHIFT(tc_port))
> >> >> +#define   IOM_DDI_CONSUMER(tc_port, x)                ((x) << IOM_DDI_CONSUMER_SHIFT(tc_port))
> >> >> +#define   IOM_DDI_CONSUMER_STATIC_TC(tc_port)        IOM_DDI_CONSUMER(tc_port, 0x8 + (tc_port))
> >> >
> >> >It would be simpler to define the above without the shift, i.e. as 8 +
> >> >tc_port.
> >> 
> >> You mean something like this?
> >> 
> >> #define   IOM_DDI_CONSUMER_STATIC_TC(tc_port)        (0x8 + (tc_port))
> >> 
> >> ?
> >> 
> >> Yeah... Looking at the code, we wouldn't need to shift back when
> >> defining expected_consumer.
> >
> >Yes.
> >
> >> 
> >> >
> >> >> +
> >> >>  #define _TCSS_DDI_STATUS_1                        0x161500
> >> >>  #define _TCSS_DDI_STATUS_2                        0x161504
> >> >>  #define TCSS_DDI_STATUS(tc)                        _MMIO(_PICK_EVEN(tc, \
> >> >> @@ -2946,5 +2965,4 @@ enum skl_power_gate {
> >> >>  #define   MTL_TRDPRE_MASK                REG_GENMASK(7, 0)
> >> >>  
> >> >>  
> >> >> -
> >> >>  #endif /* __INTEL_DISPLAY_REGS_H__ */
> >> >> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> >> >> index 7e17ca018748..3c333999bbe4 100644
> >> >> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> >> >> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> >> >> @@ -9,6 +9,7 @@
> >> >>  
> >> >>  #include "i915_reg.h"
> >> >>  #include "intel_atomic.h"
> >> >> +#include "intel_bios.h"
> >> >>  #include "intel_cx0_phy_regs.h"
> >> >>  #include "intel_ddi.h"
> >> >>  #include "intel_de.h"
> >> >> @@ -25,6 +26,9 @@
> >> >>  #include "intel_modeset_lock.h"
> >> >>  #include "intel_tc.h"
> >> >>  
> >> >> +#define IOM_DP_RES_SEMAPHORE_LOCK_TIMEOUT_US        10
> >> >> +#define IOM_DP_RES_SEMAPHORE_RETRY_TIMEOUT_US        10000
> >> >
> >> >The above param names should make it clear how poll_timeout_us() uses
> >> >them (i.e. stg like sleep vs. timeout instead of lock_timeout vs.
> >> >retry_timeout), but probably even clearer to just drop the defines and
> >> >inline the values in the call.
> >> 
> >> Ack.  I going with the latter.
> >> 
> >> >
> >> >> +
> >> >>  enum tc_port_mode {
> >> >>          TC_PORT_DISCONNECTED,
> >> >>          TC_PORT_TBT_ALT,
> >> >> @@ -1200,6 +1204,143 @@ static void xelpdp_tc_phy_get_hw_state(struct intel_tc_port *tc)
> >> >>          __tc_cold_unblock(tc, domain, tc_cold_wref);
> >> >>  }
> >> >>  
> >> >> +static void iom_res_mgmt_prepare_reg_access(struct intel_display *display)
> >> >> +{
> >> >> +        /*
> >> >> +         * IOM resource management registers live in the 2nd 4KB page of IOM
> >> >> +         * address space. So we need to configure HIP_INDEX_REG0 with the
> >> >> +         * correct index.
> >> >> +         *
> >> >> +         * FIXME: We need to have this and dekel PHY implementation using a
> >> >> +         * common abstraction to access registers on the HIP-indexed ranges, and
> >> >> +         * this function would then be dropped.
> >> >> +         */
> >> >> +        intel_de_rmw(display, HIP_INDEX_REG0,
> >> >> +                     HIP_168_INDEX_MASK, HIP_168_IOM_RES_MGMT);
> >> >
> >> >This matches what intel_dkl_phy.c does, that one also taking the
> >> >required lock around the access. At one point the intel_dkl_phy
> >> >file/interface could be renamed to intel_tc_reg or similar accordingly.
> >> 
> >> I have already started a local series that introduces the "HIP-index
> >> based registers" abstraction.  I need to go back to finish it up.
> >> 
> >> The basic idea is that both intel_dkl_phy.c and this IOM stuff would use
> >> functions specific to accessing registers behind the HIP-based ranges.
> >
> >Using intel_hip_reg instead of intel_tc_reg is probably better, but I
> >still think the current interface should be just renamed, instead of
> >adding a new interface and making the current
> >intel_dkl_phy_read/write/rmw() use that new interface.
> >
> >I went ahead and put the above together now:
> >https://github.com/ideak/linux/commits/hip-reg
> 
> I didn't take a look yet; will do later.  But, since we are sharing,
> here is a squashed and untested version of what I have in my local WIP:
> 
> https://gitlab.freedesktop.org/gustavo/kernel/-/commit/25d16a7302d9b1e9b214ccd26943fd7903d4ea11

I'm not sure if having a separate set of 

intel_hip_idx_reg_{read,write,rmw,posting_read}
and
intel_dkl_phy_{read,write,rmw,posting_read}

functions is justified. Then you'd also need to add the same set of
functions for IOM registers or any other HW block using the same HIP
register indexing.

Even when adding separate set of functions, I wouldn't reimplement
something that already exists, if the end result practically matches the
current implementation anyway. I'd still go with renaming the current
intel_dkl_phy_* interface to intel_hip_reg_*, adding then the DKL, etc.
set of functions as wrappers, as in:

https://github.com/ideak/linux/commit/e325c4d43e80f18

in the

https://github.com/ideak/linux/commits/hip-reg-dkl-phy-wrapper

branch.

> 
> --
> Gustavo Sousa
> 
> >
> >> 
> >> To give an idea, here is a copy/paste of the kerneldoc I currently have
> >> in that WIP series:
> >> 
> >>   | diff --git a/drivers/gpu/drm/i915/display/intel_hip_idx.c b/drivers/gpu/drm/i915/display/intel_hip_idx.c
> >>   | new file mode 100644
> >>   | index 000000000000..ff2492b8275d
> >>   | --- /dev/null
> >>   | +++ b/drivers/gpu/drm/i915/display/intel_hip_idx.c
> >>   | @@ -0,0 +1,110 @@
> >>   | +// SPDX-License-Identifier: MIT
> >>   | +/*
> >>   | + * Copyright (C) 2025 Intel Corporation
> >>   | + */
> >>   | +
> >>   | +/**
> >>   | + * DOC: Display HIP-indexed register access
> >>   | + *
> >>   | + * Display MMIO mapping for offsets in [0x168000,0x16ffff] are governed by
> >>   | + * configurations in the HIP_INDEX registers provided by the hardware.
> >>   | + *
> >>   | + * Usually each of the valid 4KB range in that space will be mapped to some IP
> >>   | + * block, providing access to registers of that IP. The HIP_INDEX registers
> >>   | + * expose an 8-bit index value for each 4KB range. Those indices provide a way
> >>   | + * to access data that is beyond the initial 4KB block provided by the target
> >>   | + * IP.
> >>   | + *
> >>   | + * As an example, say that the range [0x16a000,0x16afff] is mapped to some
> >>   | + * sub-IP that contains a 8KB register file. To access the initial 4KB of that
> >>   | + * register file, we would need to set the index respective to
> >>   | + * [0x16a000,0x16afff] in HIP_INDEX to 0; to access data in the second 4KB
> >>   | + * window, we would need to set the index to 1.
> >>   | + *
> >>   | + * For simple read, write or rmw operations on a single register, the
> >>   | + * functions intel_hip_idx_reg_read(), intel_hip_idx_reg_write() and
> >>   | + * intel_hip_idx_reg_rmw() can be used, which will call intel_hip_idx_lock()
> >>   | + * and intel_hip_idx_unlock() internally.
> >>   | + *
> >>   | + * For other scenarios, then it is necessary to wrap the register accesses
> >>   | + * with explicit calls to intel_hip_idx_lock() and intel_hip_idx_unlock(), and
> >>   | + * use the MMIO functions provided by intel_de.h. For the latter, the function
> >>   | + * intel_hip_idx_reg_to_i915_reg() needs to be used in order to provide the
> >>   | + * correct reg argument to those functions.
> >>   | + */
> >>   | (...)
> >> 
> >> >
> >> >> +}
> >> >> +
> >> >> +/*
> >> >> + * FIXME: This function also needs to avoid concurrent accesses from the driver
> >> >> + * itself, possibly via a software lock.
> >> >> + */
> >> >> +static int iom_dp_resource_lock(struct intel_tc_port *tc)
> >> >> +{
> >> >> +        struct intel_display *display = to_intel_display(tc->dig_port);
> >> >> +        u32 val = IOM_DP_HW_SEMLOCK | IOM_REQUESTOR_ID_DISPLAY_ENGINE;
> >> >> +        int ret;
> >> >> +
> >> >> +        iom_res_mgmt_prepare_reg_access(display);
> >> >> +        ret = poll_timeout_us(intel_de_write(display, IOM_DP_HW_RESOURCE_SEMAPHORE, val),
> >> >> +                              (intel_de_read(display, IOM_DP_HW_RESOURCE_SEMAPHORE) & val) == val,
> >> >
> >> >This happens to work, but it's more future proof/bspec conformant to
> >> >properly mask the requestor ID field when reading it back.
> >> 
> >> Agreed.
> >> 
> >> >
> >> >> +                              IOM_DP_RES_SEMAPHORE_LOCK_TIMEOUT_US,
> >> >> +                              IOM_DP_RES_SEMAPHORE_RETRY_TIMEOUT_US, false);
> >> >> +
> >> >> +        if (ret)
> >> >> +                drm_err(display->drm, "Port %s: timeout trying to lock IOM semaphore\n",
> >> >> +                        tc->port_name);
> >> >> +
> >> >> +        return ret;
> >> >> +}
> >> >> +
> >> >> +static void iom_dp_resource_unlock(struct intel_tc_port *tc)
> >> >> +{
> >> >> +        struct intel_display *display = to_intel_display(tc->dig_port);
> >> >> +
> >> >> +        iom_res_mgmt_prepare_reg_access(display);
> >> >> +        intel_de_write(display, IOM_DP_HW_RESOURCE_SEMAPHORE, IOM_REQUESTOR_ID_DISPLAY_ENGINE);
> >> >> +}
> >> >> +
> >> >> +static bool xe3p_tc_iom_allocate_ddi(struct intel_tc_port *tc, bool allocate)
> >> >> +{
> >> >> +        struct intel_display *display = to_intel_display(tc->dig_port);
> >> >> +        struct intel_digital_port *dig_port = tc->dig_port;
> >> >> +        enum tc_port tc_port = intel_encoder_to_tc(&dig_port->base);
> >> >> +        u32 val;
> >> >> +        u32 consumer;
> >> >> +        u32 expected_consumer;
> >> >> +        bool ret;
> >> >> +
> >> >> +        if (DISPLAY_VER(display) < 35)
> >> >> +                return true;
> >> >> +
> >> >> +        if (tc->mode != TC_PORT_LEGACY)
> >> >> +                return true;
> >> >> +
> >> >> +        if (!intel_bios_encoder_supports_dyn_port_over_tc(dig_port->base.devdata))
> >> >
> >> >dedicated_external is stored separately in dig_port, why the "related"
> >> >dyn_port_over_tc flag isn't?
> >> 
> >> The only reason dedicated_external is stored is because VBT data is
> >> already freed by the time intel_encoder_is_tc() is called in the driver
> >> unbind path.  In the future we should fix the VBT lifetime issue in
> >> order to be able to drop the dedicated_external member of dig_port.
> >> 
> >> >
> >> >> +                return true;
> >> >> +
> >> >> +        if (iom_dp_resource_lock(tc))
> >> >> +                return false;
> >> >> +
> >> >> +        val = intel_de_read(display, IOM_DP_RESOURCE_MNG);
> >> >> +
> >> >> +        consumer = val & IOM_DDI_CONSUMER_MASK(tc_port);
> >> >> +        consumer >>= IOM_DDI_CONSUMER_SHIFT(tc_port);
> >> >> +
> >> >> +        /*
> >> >> +         * Bspec instructs to select first available DDI, but our driver is not
> >> >> +         * ready for such dynamic allocation yet. For now, we force a "static"
> >> >> +         * allocation: map the physical port (where HPD happens) to the
> >> >> +         * encoder's DDI (logical TC port, represented by tc_port).
> >> >> +         */
> >> >> +        expected_consumer = IOM_DDI_CONSUMER_STATIC_TC(tc_port);
> >> >> +        expected_consumer >>= IOM_DDI_CONSUMER_SHIFT(tc_port);
> >
> >One more thing occured to me: why can't this allocate any free DDI? IOW
> >does the address of DDI_BUF_CTL (aka DDI_CTL_DE) used for tc_port depend
> >on which DDI gets allocated (or is there any other dependency on which
> >DDI got allocated)? AFAICS there is no such dependency and the above
> >address would be DDI_BUF_CTL(encoder->port) regardless of the allocated
> >DDI. In that case any free DDI could be allocated here.
> >
> >> >> +
> >> >> +        if (allocate) {
> >> >> +                struct intel_encoder *other_encoder;
> >> >> +
> >> >> +                /*
> >> >> +                 * Check if this encoder's DDI is already allocated for another
> >> >> +                 * physical port, which could have happened prior to the driver
> >> >> +                 * taking over (e.g. GOP).
> >> >> +                 */
> >> >> +                for_each_intel_encoder(display->drm, other_encoder) {
> >> >> +                        enum tc_port other_tc_port = intel_encoder_to_tc(other_encoder);
> >> >> +                        u32 other_consumer;
> >> >> +
> >> >> +                        if (tc_port == TC_PORT_NONE || other_tc_port == tc_port)
> >> >> +                                continue;
> >> >> +
> >> >> +                        other_consumer = val & IOM_DDI_CONSUMER_MASK(other_tc_port);
> >> >> +                        other_consumer >>= IOM_DDI_CONSUMER_SHIFT(other_tc_port);
> >> >> +                        if (other_consumer == expected_consumer) {
> >> >> +                                drm_err(display->drm, "Port %s: expected consumer %u already allocated another DDI; IOM_DP_RESOURCE_MNG=0x%08x\n",
> >> >> +                                        tc->port_name, expected_consumer, val);
> >> >> +                                ret = false;
> >> >> +                                goto out_resource_unlock;
> >> >> +                        }
> >> >> +                }
> >> >> +
> >> >> +                if (consumer == 0) {
> >> >> +                        /* DDI is free to use, let's allocate it. */
> >> >> +                        val &= ~IOM_DDI_CONSUMER_MASK(tc_port);
> >> >> +                        val |= IOM_DDI_CONSUMER(tc_port, expected_consumer);
> >> >> +                        intel_de_write(display, IOM_DP_RESOURCE_MNG, val);
> >> >> +                        ret = true;
> >> >> +                } else if (consumer == expected_consumer) {
> >> >> +                        /*
> >> >> +                         * Nothing to do, as the expected "static" DDI allocation is
> >> >> +                         * already in place.
> >> >> +                         */
> >> >> +                        ret = true;
> >> >> +                } else {
> >> >> +                        drm_err(display->drm, "Port %s: DDI already allocated for consumer %u; IOM_DP_RESOURCE_MNG=0x%08x\n",
> >> >> +                                tc->port_name, consumer, val);
> >> >> +                        ret = false;
> >> >> +                }
> >> >> +        } else {
> >> >> +                drm_WARN_ON(display->drm, consumer != expected_consumer);
> >> >> +                val &= ~IOM_DDI_CONSUMER_MASK(tc_port);
> >> >> +                intel_de_write(display, IOM_DP_RESOURCE_MNG, val);
> >> >> +                ret = true;
> >> >> +        }
> >> >> +
> >> >> +out_resource_unlock:
> >> >> +        iom_dp_resource_unlock(tc);
> >> >> +
> >> >> +        return ret;
> >> >> +}
> >> >> +
> >> >>  static bool xelpdp_tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
> >> >>  {
> >> >>          tc->lock_wakeref = tc_cold_block(tc);
> >> >> @@ -1210,9 +1351,12 @@ static bool xelpdp_tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
> >> >>                  return true;
> >> >>          }
> >> >>  
> >> >> -        if (!xelpdp_tc_phy_enable_tcss_power(tc, true))
> >> >> +        if (!xe3p_tc_iom_allocate_ddi(tc, true))
> >> >
> >> >This doesn't work. A connector registered to userspace must be always
> >> >functional (except for MST connectors which are dynamically registered).
> >> >So the DDI allocation and with that connecting the PHY cannot fail here
> >> >for a legacy connector/PHY. Instead of this the allocation could be
> >> >moved to happen already in intel_tc_phy_ops::init for now, allocating a
> >> >DDI for a legacy PHY (intel_tc_port::legacy_port == true) and if that
> >> >fails also fail the corresponding connector/encoder registration in
> >> >intel_ddi_init(). The DDI would need to be released by
> >> >intel_tc_port_cleanup().
> >> 
> >> Ah, I see.  Well, I guess for legacy connections, doing your suggestion
> >> seems fine.
> >> 
> >> Is there any power management aspect that we should be aware here? Like,
> >> some power well being disabled and causing the allocation to be "lost"
> >> somehow.  Since this thing is in the TCSS, I think no display power
> >> wells could cause that, right?
> >
> >It would make sense to me that the allocations are preserved by the
> >HW/FW across power transitions. If that's not the case then they should
> >be restored by the driver.
> >
> >> By the way, I wonder how we would handle things in the future when/if we
> >> enable the dynamic DDI allocation thing.
> >
> >In case of a DDI allocation failure, the modeset will still succeed, but
> >the corresponding port/pipe will not get enabled.
> >
> >> --
> >> Gustavo Sousa
> >> 
> >> >
> >> >>                  goto out_unblock_tccold;
> >> >>  
> >> >> +        if (!xelpdp_tc_phy_enable_tcss_power(tc, true))
> >> >> +                goto out_deallocate_ddi;
> >> >> +
> >> >>          xelpdp_tc_phy_take_ownership(tc, true);
> >> >>  
> >> >>          read_pin_configuration(tc);
> >> >> @@ -1226,6 +1370,9 @@ static bool xelpdp_tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
> >> >>          xelpdp_tc_phy_take_ownership(tc, false);
> >> >>          xelpdp_tc_phy_wait_for_tcss_power(tc, false);
> >> >>  
> >> >> +out_deallocate_ddi:
> >> >> +        xe3p_tc_iom_allocate_ddi(tc, false);
> >> >> +
> >> >>  out_unblock_tccold:
> >> >>          tc_cold_unblock(tc, fetch_and_zero(&tc->lock_wakeref));
> >> >>  
> >> >> @@ -1236,6 +1383,8 @@ static void xelpdp_tc_phy_disconnect(struct intel_tc_port *tc)
> >> >>  {
> >> >>          switch (tc->mode) {
> >> >>          case TC_PORT_LEGACY:
> >> >> +                xe3p_tc_iom_allocate_ddi(tc, false);
> >> >> +                fallthrough;
> >> >>          case TC_PORT_DP_ALT:
> >> >>                  xelpdp_tc_phy_take_ownership(tc, false);
> >> >>                  xelpdp_tc_phy_enable_tcss_power(tc, false);
> >> >> 
> >> >> -- 
> >> >> 2.51.0
> >> >>
