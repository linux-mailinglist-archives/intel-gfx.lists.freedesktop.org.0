Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3127991A9
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 23:51:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E8BC10E20F;
	Fri,  8 Sep 2023 21:51:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A190D10E20F
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Sep 2023 21:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694209882; x=1725745882;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=wLU1Z3aDY1bNwjP6FR1LZ2MlJvFu+kgQcIUk8Bi+g3Q=;
 b=F97GY8lR9nIg9KN3AHC02HAqEn4AeLj4KT5/d6iKtCO7VNaFzQT4j73U
 qt0fBDaB6iYT6HxprzerEPAQsCHIJrDJvnRJXiDsQv1R3TvMtxGvnQXEg
 SPISf/feCaf8IUHFSv+T5gz7ngvYmRrb5eulpBZKuTZUudFvcry/P0Ex8
 xik7+sBhlS4JKmTdJj+r9jTM/7x8M6tv1SOqO4O1vG98QP7W9kQ3K2S/n
 sTZunEnC5lUlpOL4593NwhHaW9WcuJvgG3QO54EYH7/AEXekcv06PxXEU
 9nnaZpf6L0tu+S8DJFlKAkskMnfZkcOi1oNqeLHg3T8iXPtUTzwBlSOkB g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="408733490"
X-IronPort-AV: E=Sophos;i="6.02,238,1688454000"; d="scan'208";a="408733490"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 14:51:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="812708412"
X-IronPort-AV: E=Sophos;i="6.02,238,1688454000"; d="scan'208";a="812708412"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Sep 2023 14:51:21 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 8 Sep 2023 14:51:21 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 8 Sep 2023 14:51:20 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 8 Sep 2023 14:51:20 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 8 Sep 2023 14:51:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h3IQWUbgame+XmhW847rEXGB9Pfu0H4DEsU2Kv5VoNS/SlVA7t3WE/TAZ64RpAFvbn0MLAz343RA90XMlLmIvT9RYYqKUFNi4S7V1Mew6iRyt/wl84uk75OnUwp6TXK9Hc0BtQPwhoxOYrwkK22anhfEHECRKd+tYrKRd8WwOkKyHgJTUhe73x9iqhfEdxalnK/yFCd0ooZ8+PRIPyYCHryIh1ydtTZMRQ7MuOIfpILfCATkpkBgCQ6SyCSf9KwT0Ng40tvo4JryjDbt3MKFgFXwnnZArh1CQ8UmTHJK/7/CsM1a7qwem/AfzOdyqk4RQ8zEU5gpkzImsZtvdoIBJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vdk9k/s72+TvVEXo+CdBEg/etQk/q3xf3b5sbLwh5cY=;
 b=YIkgKcw2ddQpLyPSVxeZNwFLoDoylbaecDOOqx3zwLQ8VrvMZIo5eW+kpKqrqZC+d1KuBxY/vO0+M6ISTHuUQkdrgCdEypJDWN7n4mMCA9p0s60O3q/zR0uIV/Glq66/kFoV5PdC2Rc/Ba29rEaZsxvalPyhyvQzlkVM3FCCN+PVnPfjQAlUPMwZ4mtADKB4BCx2ROEoSmbqpV2OkMagC/FyRoEyWQwI/2KXgmekkjXg6HU7UCG3n1Nsl5MjJQX/ifwvMp2sQKjiebUmil3csx6pI6SHDTfNGxh1v//sh6mfqCIgJusbJVBAcmRrXYMYfjvRx6eHD+T6yORCweY/QQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MW5PR11MB5787.namprd11.prod.outlook.com (2603:10b6:303:192::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.34; Fri, 8 Sep
 2023 21:51:18 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6768.029; Fri, 8 Sep 2023
 21:51:18 +0000
Date: Fri, 8 Sep 2023 16:51:16 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <rbph6a4ln4mcozqqfk4kepgxfoiur2vqx27vjyds3wlenp7e76@bzta6hq6knkv>
References: <20230906234732.3728630-6-matthew.d.roper@intel.com>
 <20230906234732.3728630-9-matthew.d.roper@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230906234732.3728630-9-matthew.d.roper@intel.com>
X-ClientProxiedBy: SJ0PR05CA0073.namprd05.prod.outlook.com
 (2603:10b6:a03:332::18) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|MW5PR11MB5787:EE_
X-MS-Office365-Filtering-Correlation-Id: d67ab184-23ef-46bd-4051-08dbb0b5bb8b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3w/caidBm78v3ISJTK0+W97apCY77I/Hrs6Z+TKHsHUnxxKY8be6Z8cqHwdXzJptJvu9oN/qYV0WUrtnTaMNZVfYMTS320o0GxeRQhzSsRcZzx+6lgj46K/FV3fvUxYNEoJ1I7v1h5ADa5s5L6UqWj2gk/snwjL4iTx80Dxpz99VZlKUfqyt//WcjekZpyVpN/qDDf7hnLqlY3wTrTHIhzgORNfFhAiw55h/dLmk9DSZehjcp/DdxU35sUVm5ilZYmQCe/GCQ6wnkJyPHNWoskyRFxiSj2BfiNnqh7RE7rKJQmB5qDTpETrjd1LvzztZCkyIvrIsWel0rYL5g/LQcW6VF8I2/N1+gJb4BDZ1EFgVHngZYpOEqJUe5tGbV5f6NPNIECw5whmXY5Wj+cXL8Tyca8n3Kf8OONXwUrcBnlDvrdHrEigNlAMzOeOUO3SBYUu0veRwaEt5qlcQmZwR9aw8myecL8xnvmfka+9jrXpM5XdTv+Vfxgn3C1+k+v20cmwgde+kE4/syi78+sw162eButSObybuJvJ9NOeK1NGDA/uex+18JufEMeJPJDZM
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(366004)(136003)(39860400002)(376002)(396003)(346002)(1800799009)(186009)(451199024)(2906002)(86362001)(9686003)(6486002)(6506007)(478600001)(6512007)(38100700002)(82960400001)(83380400001)(26005)(33716001)(8676002)(316002)(6636002)(5660300002)(41300700001)(8936002)(4326008)(66476007)(66556008)(6862004)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bXoM562oQCRhZg6cFT/L6KpQtlyduO4gaKIC+/TtidZXA76Noyn57lUS2MDK?=
 =?us-ascii?Q?Uo512lWVS7j9lgZVtyOcszBo5jzHI7qNOmaiduhBk6jDx4JqpqDLOkwkge77?=
 =?us-ascii?Q?rXbH/R37YJfzG/1DYin4LgRiotIbHvRxSAZ4d4EMGOh0QywhHahesxxHSrsh?=
 =?us-ascii?Q?vpglMIpSTs1KWJDV28/ghT4IQDIygOHtNqBna2ZZaoqu3wl01rdV367/Q24B?=
 =?us-ascii?Q?bDrjoPxGWatCfsToYb1savg2oGe1fZi/gem41XEdOyzBd4jS/2mlP+qwDadM?=
 =?us-ascii?Q?Ka6WR4V36WC+oOCuo29kS/78LRUIX/zVrivDKGNVeZnVL2cQW+WsMH7karDq?=
 =?us-ascii?Q?Ct+LWMyLrN2vDlea6sMMLYjcZ/N1hhan3jLherXEki/qI5tZbHVaGIMTLUFU?=
 =?us-ascii?Q?oHYoEJU7UZVuuni7gS4t3bV1+BqUtL3+5MAWx4HRD5ip8oYEH/gTiPxPj1Gm?=
 =?us-ascii?Q?FnF3hy2czzCNwsvKRwkIzZQIqLj8Q9Egr3w93mNq4EXNZEsBsCakBNqqhaSz?=
 =?us-ascii?Q?quWPDsTJJ2Lo9K67ldOb/rNJS5uki17dBdL04xqIEMH76waS/fRgr40f7kQ2?=
 =?us-ascii?Q?EyR71NQdfOyBCG1E5IxHDizOs9p+RDAMdOQhJiJem3BQ7EY545HvJhHCCOM8?=
 =?us-ascii?Q?5nDie9VoDj0qhdhr8g4WSjoFN9psSPpeBYujNltSrdSwP/7hNSykRtPt/VoK?=
 =?us-ascii?Q?6XWqAT2o6uLgjdPPFNxz+7YWfLeYI4SaTW0lvzJpZZb0jHwlM4QLjiX0meJT?=
 =?us-ascii?Q?yZU2ZLpI3QAPCAjLwpEkMWTSOyCxJZ68Netv/VG1IPZbhFUYp/FVJI0OzSN0?=
 =?us-ascii?Q?kYQtPUSXkxuPVh4MHb+3zXSLhd73V1Dyb81QV6aX4eE7fPo1NYHdyA3TdlSS?=
 =?us-ascii?Q?uKj11ibpCUxx6PwTYAV4MNqYETllfXOpPgjXl8Rt1LsmTvzRcx3Kira0PChk?=
 =?us-ascii?Q?o3+gux+g/dxHFgsDqRSMsrVoh+1pTZQ8H1xLF3kAT7xjSUVC9qbHrc+79B22?=
 =?us-ascii?Q?MPE/5fzwIlot0VBxhvOs/Hf78Wz/umepPhUx725yuRfkY+E5yr6KkvrNExSp?=
 =?us-ascii?Q?83yBulnbs3KzmDfbKhDN9d+qErQH6neE7hO6R6pmZX9c0KCIJlvcrp48i4qb?=
 =?us-ascii?Q?/SzuDjO0AGGkQ3sqlujwrrFx6HYJoJ8laRjOKTmmOonbQ618cUWKkA7lfGDk?=
 =?us-ascii?Q?jWUsSKzckyjAIB0MlnkyxcewSS7dq+/YCCDowYarzQDDDvvLoFAXUpyTBMTt?=
 =?us-ascii?Q?6AzrafF/GaiasZzFMroIYsVTccSZqG6EgippEfgWR9/dV01EAwvEWa8QOF3e?=
 =?us-ascii?Q?s0l1OgLo707Z+Vf7MNLxnC5Afba02PdKueZgHWmUS5BRmd1VaFaSQPvdWmVN?=
 =?us-ascii?Q?SgDUn6ZKt0vjXGeOWxY15Kbdxqn87UhJILWvXJ2dkkCt1AamvChThEw9npA0?=
 =?us-ascii?Q?9WrXmctfX74Rmczl1S+oTlvfElu7eZElG7zyJqXVEDHP4r6mEw5hpmsjmzmK?=
 =?us-ascii?Q?JZz+DY2YotLEoaut6R6sLi6XoBqiATse11KSZVnmfJBRContMyCtej2UxdAo?=
 =?us-ascii?Q?RzjZ/2yPBeejSlMvOnTPXU7IEWDyYk0uQHOMKgCCA8fQRxjj3/WnbOh2FDC4?=
 =?us-ascii?Q?Tw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d67ab184-23ef-46bd-4051-08dbb0b5bb8b
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2023 21:51:18.6449 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AwiZzzegX/LtCTv4ZUyGr394Pq2fFON71aLpeeaeYVcssAX3v97P6+8n4Z1etlq7dG002MAHTMahXZ+pDjDZ7dqoklSrUfYQ/Hq/YubM9yY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5787
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/display: Extract display
 workarounds from clock gating init
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 06, 2023 at 04:47:36PM -0700, Matt Roper wrote:
>Several of the register updates that are currently done in the clock
>gating init functions are actually display workarounds that should move
>into the display-specific part of the code.  Furthermore, some of the
>registers being programmed don't even have anything to do with clock
>gating at all.
>
>Extract the display workarounds for gen11 and later platforms to a
>dedicated display/intel_display_wa.c file to keep these separate from
>the SOC / sgunit clock gating that we need on some platforms.  The gen11
>cutoff here is selected somewhat arbitrarily; this is the point where
>workarounds were first assigned dedicated lineage numbers that can be
>easily looked up and confirmed in the modern workaround database.  It
>also avoids any confusion on older platforms where the exact boundaries
>between display/GT/other IP blocks wasn't as well-defined as it is
>today.
>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
