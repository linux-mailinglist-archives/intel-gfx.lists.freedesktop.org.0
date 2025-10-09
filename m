Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 868F5BC9739
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 16:12:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4106E10EA5E;
	Thu,  9 Oct 2025 14:12:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VAeFw7fv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 448CE10EA5E
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Oct 2025 14:12:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760019167; x=1791555167;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=zdKvnzJGmQMC62zx3CiJV0Gdmpx2PbVW6HwswSIqTZ0=;
 b=VAeFw7fvg2/mN1AiJ2UBngWG/UW/R6g7wisEvH6lMUwueZz+E0okMDB3
 sqwVZFIuDGo9KLqLOyUcRiJS1+V32LK9H02pvxc3j7gE/KN9PbNXILZRI
 4RhVOU1leJdpsi3aRnaEmJtlCdvGwgfrqPBX/c76BqCXRIW8wxZS4P9dM
 VKb/BEfX3RFUY2G84XAxaJJwTKHXYokchCKU63hyfTiFl+zB51665woZx
 Lh6R0FUdAT7XvAxJg5hQM2Xg+2KaLcI2EAe79c8QZV7TfUAOhIE1wwl0R
 ZU/NS7xfkpTyj/RKjP/NwKSSqiuN7oNsuaVB5E3CmFxXYYiMHFDndVKL4 w==;
X-CSE-ConnectionGUID: W/UUzNZcQAKwmR75A04aSQ==
X-CSE-MsgGUID: ovdKB/ysShWgZUFCIS2RiA==
X-IronPort-AV: E=McAfee;i="6800,10657,11577"; a="65876859"
X-IronPort-AV: E=Sophos;i="6.19,216,1754982000"; d="scan'208";a="65876859"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 07:12:47 -0700
X-CSE-ConnectionGUID: Udj5QIUTRW+ZWiUwJcc6Ww==
X-CSE-MsgGUID: kXuvlz++S9+sPMnhN3+tJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,216,1754982000"; d="scan'208";a="179835326"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 07:12:47 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 9 Oct 2025 07:12:46 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 9 Oct 2025 07:12:46 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.1) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 9 Oct 2025 07:12:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XNfaXZ7525mvLfzKAFlMacnEwKh6+65VCT24Gf5TYJ545drH2X41IajzOlYS/RboicDdwPM7CMgOaVwK9h9tH//mfT/kIiOjhCCvCRvFlvCdSxj4FwxEQPu4EpG3mgr8tg1tYA1w4lHAeN5ZXoBDQ1b1e8Pot1x/EgsEfFvz9D5fduGELyR7BHSFalyD1UV71Hom0/gQ+fQafNFubwW7WpQi74kveovEYQp5TIK28150rgtGCLl90hn2+CYUPW4/x0m4AmigeDRXW7/9qVCIvCuip4Dj5gaAFY3DsywsWaZqSeOpJOnpjbTQ65hh+7uuSR6iTvUHHQaM7nxi3McjCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M9/SjiUqIBIua1L/YaaCAoclhCJT2vvxVbV4BeSVAYI=;
 b=TFgFRmL13PcrI6fNjoGoIQFfTUDS8klFcwxna6Obk3tBkewv0N3U3Vo+RAeVv3L729wUxw42hxm3vk+ir9enRslM4zBdmnAMPT0ZxeFET+eKGcoVwNGP9gSr2H6QTTmSBXCRrHIVbF8oz/qtDk2epVHPq2YKFk7iQDYjA4/M4nXTlRsgQYbDA48I1ifVUxeIPqIL9s6wZ1EUGZyzXVzIHCnb2uErmMoH43W9zzekGJ0A76oHtRDN0vaHCWLEkTYT2y9AeqGJ7dIfbz74BevWOa/yQ+UdU9sJf8eKE7WuoCb1oGk2/jAzRsn7oVb8Zd7nWnO1j+ukfWqoYWjQbk4oAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by LV8PR11MB8512.namprd11.prod.outlook.com (2603:10b6:408:1e7::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.9; Thu, 9 Oct
 2025 14:12:41 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%6]) with mapi id 15.20.9203.007; Thu, 9 Oct 2025
 14:12:41 +0000
Date: Thu, 9 Oct 2025 10:12:37 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Andi Shyti <andi.shyti@kernel.org>
CC: Matt Roper <matthew.d.roper@intel.com>, Jani Nikula
 <jani.nikula@intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915:move and rename reg_in_range_table
Message-ID: <aOfC1YjjHbm88V5H@intel.com>
References: <20251007212447.941389-1-matthew.s.atwood@intel.com>
 <20251008165334.GA1207432@mdroper-desk1.amr.corp.intel.com>
 <aOad4gBFCtuKcbsh@msatwood-mobl>
 <20251008173713.GB1207432@mdroper-desk1.amr.corp.intel.com>
 <aObY74gMUQwr__a2@intel.com>
 <j3gmjykrxu4q5txs2kum5kh2uzcezdte63hh64eljuek44liv6@avyzhf3ucgfu>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <j3gmjykrxu4q5txs2kum5kh2uzcezdte63hh64eljuek44liv6@avyzhf3ucgfu>
X-ClientProxiedBy: BY3PR04CA0016.namprd04.prod.outlook.com
 (2603:10b6:a03:217::21) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|LV8PR11MB8512:EE_
X-MS-Office365-Filtering-Correlation-Id: 05015af2-963e-4851-a722-08de073de888
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?e3ZcdmtKOhfBAorgkJwRU19Y+qGOmR2YQChF1xWdf8sR+AwhCWbcSdw184N3?=
 =?us-ascii?Q?lycu1stX/YuloVIRz3ugzAYM88YjPqd5uxSIGOwg/v1eEqVsTbVp4yo7OqOH?=
 =?us-ascii?Q?WiXNJkCfxHJUuIqobVFc/TQbkriGYHmtBByRF56NXkMmPd3xAsYE+yReUJK1?=
 =?us-ascii?Q?Pv8tgPp2twMRzMOD4KUVGB+Gv0/+uggzibm2/mJyQtJdR4hX8BuO82N4xf76?=
 =?us-ascii?Q?X9g9fZTJdKwGBXWqdAcVxsRTf/utpOruqE0cM1TfcJGc+n1c2j4gXJSpG+Ns?=
 =?us-ascii?Q?lxDCQUHyQxjpWdfWEPI6o0IHFW+4MbNId0C5YK7kL8qcSsbsI3UWYxRR6BwU?=
 =?us-ascii?Q?2pHTTcHLU0gcCl8zkJWrmT0oMcFWpwByzC95O1yJCBQcCANBVLaVStpnVlSw?=
 =?us-ascii?Q?arMWZn7GENMiQASIj/ueglO4CmPFwM2Xh1tN9Hsq7NCt+fa8Y4mJdfiAMWGY?=
 =?us-ascii?Q?tHRWX8st+wBKRTTt1jZUCFeqzjRhxbSwHggvWKqX52CfKuzwCLWjdOzHoocL?=
 =?us-ascii?Q?BjaCsXP8NwGDJ8ayQ13/0kAqhe/P/Y1suI9Q17twZ1sAJbFoE74ozqRiLjnZ?=
 =?us-ascii?Q?PQsPZ6w2uYoaG9xRKhxL6FQuXw+gnMbYiir8c1NbxGJBkXupXFYMYP+vF50r?=
 =?us-ascii?Q?Vr7MKB86HTLd6KJQkKs+dF63ZVPQm5bOA/+8D7iIPHnE+6umTiaxCMbhGXTX?=
 =?us-ascii?Q?iO/mYZL0lsSbdFOSujQvknMs9tKjyHYnGsjuvfrllTxmRgba/s9HLExOBAOt?=
 =?us-ascii?Q?oDRii59ZEWt1SdcyeoEAGB0BFr7qpbcHjoZWWhVTPYZKhveE4ewAewiE236E?=
 =?us-ascii?Q?OZg2lRhicAJ1w9hEkZNw/su4wUxa7FvZI9TBeKJOTj1OhvdO7QT4yyadiEeF?=
 =?us-ascii?Q?4P9LhDqbWPZOxnMeoxeiPN34CQqjFOBGkmEStHdcn0rRj426HZu8DuPe8+DC?=
 =?us-ascii?Q?uxyAzF1wfW0eAeTyrr0TWuVFMgyBeNJUaBFVev76WGw34EVN4TUGbTvoHsq1?=
 =?us-ascii?Q?M656TNRAn1+mdFgfBp98b9ah1NCyUA6pYa4PhXhAPrlqDMl4q71ssbC661Lm?=
 =?us-ascii?Q?dPY/C/PKnuIYoBmDsXd+LCi2u1DksP5Kel0hvFG27QG0uYIXig1yiBzn6Qv6?=
 =?us-ascii?Q?JULhzYGgsZpJ6seFfd23UN0N9EffDN8UmCNAkX1uvTaQpBB5vaIFfN7t3caT?=
 =?us-ascii?Q?iv5OV7ZtmqTgyPJiAk7BpxDKsf30LhlHvrfq0qnR74y1REyNA4SnKbzc+AuC?=
 =?us-ascii?Q?ZLehU7+j56Daahfr9rO+c0iD10Di122byUM+QwtbYLNoVV4pGDnsQOLi22hx?=
 =?us-ascii?Q?MjsY3ZIw3aMxBZhzC7NDif5RDZGmtLfTrfAYzxcg1laymsb7Y+h3KHvNLpzg?=
 =?us-ascii?Q?YNevNYmgJeo8sn78dfyqc/uKYEsrDXaFjtjYGK+6OVdTw8NzQG/ZCvc3L2T7?=
 =?us-ascii?Q?ZpiqgpukHZtJx4UhnO5MkuKHjJqTrHeS?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8HoP6BvFb3dgxArApFlcUejcN1f5DlC8aebkd6bZfegWyqEPAws0xitoKbu7?=
 =?us-ascii?Q?4e2QEucfi99mWWFU07grp2dl4FePE0OcJFUPHX6+PbpFs1rOf/Hu4vZq6lih?=
 =?us-ascii?Q?WvK/GQ9ubo8+pkeR8q1nwHtIUC+GE8qf5oSFx+7JN53wimxUZYFeBT9V1PT8?=
 =?us-ascii?Q?JSyE9aCriXHT9QbVdyluGdRM5OoDhJ/wS2indKFf/BoQjHbJtv2I8KTABaM8?=
 =?us-ascii?Q?HbENYss8zDwNzsnhdBn1bit9c39lv0r4Vr/D/1KBg4wv6qbth3H42tXXXJTt?=
 =?us-ascii?Q?Sbq2+C4Agnwox7yoX6DrmTQFibxDDraggG4X7bACV4j0HD+tZtByehjSBxZN?=
 =?us-ascii?Q?lHVdM6FwK+6dUi6xU5o2U+nw12OA/ZMuQO7lFhQKeFljZYfPKaheWDvTu9Di?=
 =?us-ascii?Q?he6qCT3L2KvWyEkrgrPdN3/Ib61YuGEkX6DsrsKThOnwOsVvnNR/1JSQbBNH?=
 =?us-ascii?Q?qC1fq7jgOQHUeYB9E4LQbCMMszlxlCp/bwtrRRSN6+sqjTAd8wjkmuPwq71A?=
 =?us-ascii?Q?nY2wuYYQI7N7Z0R+yhE4lRcR8YY2EPcCAUv8Hrw7JStaqcdW2cITSC9FOSv0?=
 =?us-ascii?Q?DQ0CZ27xlAsEV3S3bS+H2Ghco1ln2AwSvYJMTK8AGR6YoWU2YjhZRknrHNKy?=
 =?us-ascii?Q?5vf2vNIBj3p+6Gc1zcQp2l9NgTyiyKA7UWZlLODtbPaCIinkWcXyxen7NTnS?=
 =?us-ascii?Q?S4R8Kq3DQhHWPAUPsme7YbTADohVvxEebbeiXmi6cwnAJ+r+uTra+DFnAmDY?=
 =?us-ascii?Q?7SuEaUjCf9y67brSTlChC3tWvs93lUdZ64JPFyP6OgDr/n88U47NvvURMaqt?=
 =?us-ascii?Q?H0q3AfgfaU0ZojKM0Gnz9h7qFulBncJO6gNL8i+76wW7GcAF82UBiTrgwJBw?=
 =?us-ascii?Q?V1LkBijAav8C98vUr84wNSGUXR4RdLkTkQQFQ8mfre35RSBLsT/5rxEHmDLK?=
 =?us-ascii?Q?W0VeWJnXseIA/6W/wweHDCW2ciyJgweQ6cRjmKEHXOxG7YMrua0eL1BGA+oa?=
 =?us-ascii?Q?7rt0DqbhYcIbch+sJ7Sm2ydiKk/X4sw9WnKEIAdzSbuZL+/58OTd5j/8fEbk?=
 =?us-ascii?Q?Cks7qwtf6Au5sz+zCYWoF06XbJN7W4tTyXyzYvxBnafrUiD+1U4F2rbtRgX5?=
 =?us-ascii?Q?lt1oYXxsTHNyG4bWtkoywZ8n0DzJXpiRZvSpRiHzr4e6D+kQhODuz995t8wT?=
 =?us-ascii?Q?IGJVUV0YKRslj6NSRV8Vzo+8zhnLV4oj6nAKPYTqGe/An32yh2lQ4pGDSAeT?=
 =?us-ascii?Q?+cqym4w8+RMay5llao20IvIU16cmjDXowMcN0y8VAGVM/WL+/n5P6jDQxKi0?=
 =?us-ascii?Q?Bl40GLDbWHaGF6pr2cdNNMspitYoLujxAEI3r8ElF5Z3ZCPE6sSQiXWkgf/3?=
 =?us-ascii?Q?/DfAQXeEeWgkBOOWP+tShZYCapU1JQgexlstcBDo7kFQ/aErC5NwnbHMFcWx?=
 =?us-ascii?Q?DgeyxXQcXGeB165vRofrR1ARbbllRXRR+Cr0TA+2mbiJn/iikPICE6Nuk9Zk?=
 =?us-ascii?Q?PkbNxgoPMKMXUNVE87Nz8UksC1SHE6hNzD5lyqZEVFh+wnD5DmBjnSGTZxxn?=
 =?us-ascii?Q?FaqzORibPHzKpcM2f8zgLRUlO8dV2XUtpVhMmxgykleQU8IkQVOgkk/KGsTf?=
 =?us-ascii?Q?zg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 05015af2-963e-4851-a722-08de073de888
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2025 14:12:41.1447 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ExJOW7eL5m2wTdeDvfOfjvyyRVu5U+/WGqVdKzigYJN2LKBMN7k+HPZUXJhraN7soqxoErYzRb7jILydlh9VzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8512
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

On Thu, Oct 09, 2025 at 03:08:28PM +0200, Andi Shyti wrote:
> On Wed, Oct 08, 2025 at 05:34:39PM -0400, Rodrigo Vivi wrote:
> > On Wed, Oct 08, 2025 at 10:37:13AM -0700, Matt Roper wrote:
> > > On Wed, Oct 08, 2025 at 10:22:42AM -0700, Matt Atwood wrote:
> > > > On Wed, Oct 08, 2025 at 09:53:34AM -0700, Matt Roper wrote:
> > > > > On Tue, Oct 07, 2025 at 02:23:36PM -0700, Matt Atwood wrote:
> > > > > > reg_in_range_table is a useful function that is used in multiple places,
> > > > > > and will be needed for WA_BB implementation later.
> > > > > > 
> > > > > > Let's move this function and i915_range struct to its own file, as we are
> > > > > > trying to move away from i915_utils files.
> > > > > 
> > > > > It looks like this is a new revision of this patch from a couple years
> > > > > ago, right?
> > > > > 
> > > > >         https://lore.kernel.org/all/20231129205122.3464299-1-matthew.s.atwood@intel.com/
> > > > > 
> > > > > Even though it's been a long time, it would still be a good idea to
> > > > > include a patch changelog so that it's clear what's been changed and
> > > > > what review feedback was/wasn't incorporated.
> > > > Sorry, I will include it if theres another version
> > > > > 
> > > > > I'm also wondering if we should be thinking about moving i915 to use
> > > > > 'struct regmap_range' and existing functions like regmap_reg_in_ranges()
> > > > > rather than maintaining our own i915-specific versions of the logic.
> > > > > regmap in general does a bunch of other stuff that isn't relevant to
> > > > > i915, but it seems like we might be able to re-use the type definitions
> > > > > and basic lookups to avoid reinventing the wheel.
> > > > This is doable but just requires a rewrite of the current implementation
> > > > as it's not a 1:1 conversion.
> > > 
> > > The idea is that we'd eliminate 'struct i915_range' and related
> > > functions and just use the regmap types and functions instead.  It looks
> > > like the main difference is that the regmap lists are size-based, while
> > > our lists use a sentinel to mark the end of the table.
> > > 
> > > Although I did just notice that even the basic types and helpers for
> > > regmap rely on CONFIG_REGMAP, so that might be an argument against
> > > switching over since we'd need to add an extra kconfig dependency, and
> > > most of what it brings in isn't useful to us.  But probably more
> > > something for Rodrigo and the other maintainers to weigh in on.
> > 
> > Cc: all other maintainers.
> > 
> > I could easily be convinced either way.
> > 
> > I like the idea of reusing something existing and this helper and struct
> > does fit to our needs.
> > I don't mind having to include another config dependency here.
> > The part that is not good is to bring a lot more than we need :/
> > 
> > Perhaps the really right thing to do there would be to split regmap
> > into a generic map part and the support to the other different bus stuff.
> > Then we start using the generic part.
> 
> It's true that they are similar (regmap_reg_in_ranges() is
> basically a copy paste), but regmap and mmio are two different
> things (although conceptually similar in some cases). Working to
> expose regmap_range so that we can use it as mmio_range looks to
> me a bit of an overkill.

fair enough. Let's go then with this i915-only approach here, but
renaming the functions and structs.

> 
> Andi
