Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1578BCE08
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 14:35:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 830EC10EFF2;
	Mon,  6 May 2024 12:35:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oAS5LpS+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5476F10EFF2
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 12:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714998910; x=1746534910;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=TLV0YEIo96r631tLCy6QLSUZ8Qnz698xSdu/KDcv7nA=;
 b=oAS5LpS+ZyF0S78e8mhheKPYVQIkINcBX9l8CK2XuRK0qLtl10JEUZ7Z
 TmrxXiR0pXSd8p0gSY8LkUmin8OnBqFxHUzFgjhNnnqGUYw6qxTiBCUXQ
 7V+jKrmycwZNN0IVgmVbOstqqAzgqz4ljp4tiLfnYpPexC2WFT05eueXE
 tSDYXmEDcEVjR/6IwvILBx3xit7oSiU3u6fLFjNGqbteL7xsTxKmVmU6v
 jj7vuhZlSkeidbNK+S6qctgbqU8VzMu1FJmJz4pNIxSGUHMBOHrvfvIiI
 FwcY4zhFIENQ0geR5Hhz+xqTSyfXNJwjhN8qDjU8/ibLiNu64a7tze2Lh A==;
X-CSE-ConnectionGUID: ehU+BZrqTougIxsQTbeagg==
X-CSE-MsgGUID: UNajqqUzQ7W1Ie7NvMJqGw==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="21353610"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="21353610"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 05:35:10 -0700
X-CSE-ConnectionGUID: 6NrZjt0yQziNh0ZCjLB3KA==
X-CSE-MsgGUID: mZvu0FTcSQKg/VDutZctwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="28117893"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 May 2024 05:35:10 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 6 May 2024 05:35:09 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 6 May 2024 05:35:09 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 6 May 2024 05:35:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kJ5zfZZMwLdxtQzBn8UKgiwh3C4uJ+or1BichSj98BwKiUo7Ecv+5XgUuEYN4mwy1hl5sHreeuH2unZ6wV/6B4wdaxQS/bISbSD3uEMi2nRJHHa2gYk1DKvitc3s8j+YLDlGcClC5Tl62OkpYuOzRVnstlI1xtl4gbuqjfH39ZQaPEygj14Ev7vlU45E4vY490BXIBZ8BJq2n1zsfQ8tiOWa74uNZ0wtugOz+dych6NSpctlnu2WVV40YfXMK5MLE5qokMxkM6xAirHNx/Q1X0vXGPGZZNugbqFU0TJBhdIyUmtA4Bya5McaUFESOZ2y5jvaS94CTfbFS8bHkxdsWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rclpWg2Hyqwi4+pMCsEIbNp6h1mFOVM018Ck7d9PZo0=;
 b=m8Hfedfq5saai89aSgsNKFffltAHY+Xl9N0rBOh3zXLKgL4yL3SarIreXzFBwtp71Oqn+ONHhpKMq1y6xOvVvEMS2wb8FzW1fskMim5qguPs68Pyft+OtuMPnK9FC77M9pssg2Yl2fSSf7fpDfO7u8irsHd0ytgw4uP4GO6MEJHYKThqV+yBMR2lTMjxTN1EYDp2kiQ1PZY2XUbCykLGJgpDe852lUjhUKG/nvwnupNqxFSp8X8cpI+5eCqMu8jy8TSF37zBsszS4wwKJgpKFMv3LuL+Vj4zbZLiweEelmNhoTHFz8BftX9RHekYvy09KajfcPHsdgmntOD4+aChbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH0PR11MB5832.namprd11.prod.outlook.com (2603:10b6:510:141::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.42; Mon, 6 May
 2024 12:35:07 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7544.041; Mon, 6 May 2024
 12:35:06 +0000
Date: Mon, 6 May 2024 08:35:02 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 0/4] drm/xe: Add Indirect Ring State support
Message-ID: <ZjjOdrmCgpQfkiYi@intel.com>
References: <20240504232955.16022-1-niranjana.vishwanathapura@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240504232955.16022-1-niranjana.vishwanathapura@intel.com>
X-ClientProxiedBy: MW4PR03CA0313.namprd03.prod.outlook.com
 (2603:10b6:303:dd::18) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH0PR11MB5832:EE_
X-MS-Office365-Filtering-Correlation-Id: ec5c9f2d-4a12-47dc-8b66-08dc6dc8f5c4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?C7DNqVJ6dWpvr0A34/fmp0iwZOte0UnO6j+4eBhohpCKPXLlyYyg9NfqtN9g?=
 =?us-ascii?Q?CfPoHNfeQHoQHlaLRDhKY90hdYayxxzLKz2+UKR3Baf4as7McAu/uk1Onm64?=
 =?us-ascii?Q?cu4zlOQN3nwXVdDXo3cD/1+Y01SzBDgTx9sU3D6JNWiAXo2jngg5ag72XT7R?=
 =?us-ascii?Q?qhwe4TOHmHefXfdiJLWA4rXQFao+y3ejQirgi/rDk5NTNIJ3ZFnZR6QwM2jq?=
 =?us-ascii?Q?/Kg7/lAwC+dMSadb+xIeojJaRZu9Fv9EgBxzvOXCsklYm2Hu7zobfzuF5CUt?=
 =?us-ascii?Q?59++RJmDnJYfns1b4253pqPyJ92yNRx2C1c8bxyDyi/QjH3ChTGZc1lzP8r7?=
 =?us-ascii?Q?TUqxydx+loSSTS/vSOk2KHK2dnszHCV6orGWvF/ehQzjZwNFEV8vQ5A/gRxt?=
 =?us-ascii?Q?VkCgobvEyO+qO1xlQgg6UK/eB3/5Sy0kp04Af6Sqth5n7pEA2SLrA9jnyeIg?=
 =?us-ascii?Q?mPEhb6nJCBSZk/Emm0FZviOMx0d/8zpZqu1VqGzhA/OqXRCIBMaP9vTuU0qb?=
 =?us-ascii?Q?vBgnkdMsV7m50TmBHnEgQczh9yCM1XpoWahz92devFmjCmnyOP4xOIEPoJtg?=
 =?us-ascii?Q?2rbL1S6PMuTLaGRHL65EW6DTwpTQFMD6zofCV7i2jNOgdpbmH1OyJTI5hBru?=
 =?us-ascii?Q?VA1YkqO6DAZm8TATvxl9oXzo6QklYdq9oqjzF05Mi8ayaN20EbVuifbG6Iu5?=
 =?us-ascii?Q?lxGPBjPOrREkv8/GHQ65UzsVN8T78A7KZhvpDV689SaN+esOovmBI7qmrfph?=
 =?us-ascii?Q?2OSHkGxotpus/P/HLMZoT2iEiDNAW99j0qkjA0b/QWbQw9K2+c+EKRSYFWKZ?=
 =?us-ascii?Q?bCipRjANILzIwYd65TZPmxwT2Tdl1YjAtEOD/aNMRZIhh3LQpg0Dg7Hie04J?=
 =?us-ascii?Q?+GGox/NlR4DfC39zrstex+zcR4QBZJmbX6XpIlZHdR3p+zWaHRpeg03gvZy5?=
 =?us-ascii?Q?SOc1w7dy5FPH3ZdSA9BZQDQZ0qal9Y4u0O/y4RHS/NVs2F0kGm+IHdZ/nfIB?=
 =?us-ascii?Q?H3ayvNJ5eemvc+SenWM2Q38nMCA1TPxKC7LFkWxhGNtZluJWazABtrp5HwdI?=
 =?us-ascii?Q?ZT3ZWtCeEnQCJfBQkfa4eAQWgkf3JLZtGC9BTZ7vBairFkuEY93VLC5kcY25?=
 =?us-ascii?Q?rwsVD2O+aEmPUvoGX4g63FiuvjcnzmNILvWYuSFPMrLP3KqfDdl88z7wh+66?=
 =?us-ascii?Q?eElIwg/fMBWt2gz8OMKnjU68Ct0o3KKkUfJDSYWcYcEzUtPaFYY5LojE0ejz?=
 =?us-ascii?Q?G8I7MBdtA3lmXJc2zMlaljmbl+jaNXSuMIqDLXrrGQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jZY7nQuHV2YMWq9JqUMEsmkaF7BarOZWiCSduy6UMqtunXvgBkn7fcUGpX0C?=
 =?us-ascii?Q?Slm9ThKUZ9+YKuBBX45BAmylVcFwTx5HGbmUnKb0BXEj7qyNEcWMeuCQOYu0?=
 =?us-ascii?Q?8Ic2z2ZlxYb1UAfbRbIEDuIX2jEHnR3ZqZJzzm4HxBc/8ujU2pzV7czL8t8P?=
 =?us-ascii?Q?+g7CDmLg4ZJVFzstjWNZat2+jyzZaf7tOzUzgaGCH+gl2b1fr+BZQUrx6EX9?=
 =?us-ascii?Q?pECRa9oxgPXaCIvEePdXStxC6oUeWYhnhflMcIu7K42/Rbd+uOkuUJpAquIN?=
 =?us-ascii?Q?9NPao8+Yhr2jowNFEQ56rCqs3XZQu+PdIJ0LTp45/cckiIz0WeCz0GYmUOUo?=
 =?us-ascii?Q?t2h/Ha5zmd0Lx54eIHPUAV7vqYvp9exfpImrysQeN0lrNkmH3Zrj7PKKPIIS?=
 =?us-ascii?Q?1eMjfkbblD7Lwxbx8xHSH9Y430lHjsxmAsKNFtz/laBY5Sw1JKibHijhb5UG?=
 =?us-ascii?Q?2xEI+7N2ss1yGQlp2VzF7ZREefg0o0jAB2xNibO4FzRfE2yzUPZzJ/QYaxC/?=
 =?us-ascii?Q?0gYfNExmpfd1Is90BZAcwb8ZolibksSW19rpIWXzdbG6DyeH2gdTqG/qs4pY?=
 =?us-ascii?Q?yeLekrwi5PWIh+xxUdY7t+U8ledbMDdHmqSrGJbYjP4RUnBQOG8F7lXR2CZW?=
 =?us-ascii?Q?63Ua1PdCYx095g5sAHHcT0KEJkwa6fN1lDkLIiaxgvUlTOQPXAPKiEOFHvaR?=
 =?us-ascii?Q?DjQETOb2tvLBQTsG3y2nMGCde04LmsBjPllrIeourA26M+7iM0W31bH0k4yA?=
 =?us-ascii?Q?JenDBxv/pxDXM6rgvFX3c0gOcQ40vCAKHy9A/Vi60hAMFrTrz+6tgCvUPM3J?=
 =?us-ascii?Q?ZORnG1ZMhBgznOmqaI/pb3fsReJARHE4+GClYAoQ/6LSiOUOVwzN/hNGdV9f?=
 =?us-ascii?Q?oB2ywGZfyp2tGgnrH/Pys3RYgjqokDlCMNhQP6g7QgU6lZiX0lceHlfKNtX3?=
 =?us-ascii?Q?IBYwbb1PGoRrGxSC4C3pajV2T9QXOkXpHuMn+d+MH/05n+TXF9p9KZtQLxb+?=
 =?us-ascii?Q?+mDUKlOoHXJJDr10J29OHfRnR2f0jBfZc6h2IKIECQy0sZnSB+piOOQM611C?=
 =?us-ascii?Q?TJReB9BmI9UN5QgWZeVRV504iv+RPpDLFkvRzDOZsZOyPTbHndGvjAC9fKZH?=
 =?us-ascii?Q?mTL7PkFy+ei/OHRMcshrEKVZew1ezzHC8hrpXB4O4jGcjXzNqYHUbeA9eKkG?=
 =?us-ascii?Q?RiuIwcXCDIIvjuytAbwtjXJ1++LRB5qfS6Bln3A20G7w51GJrJSu0d2NRtrT?=
 =?us-ascii?Q?ntp+8lxfEWfvHOE69GrO8GF5p6rQ7erOZ3Py34Z1XxoTFxiWP3BYqx29DUA+?=
 =?us-ascii?Q?aR52UJY0isoqPKjArDuh5GH1I8+VwBffxqszGMFyHJ+Ku/yaBrnMumekhvm+?=
 =?us-ascii?Q?DY63znf6qtisQa67y2YZed4IrILYsnj4KUUr2rOpWKcmSTRHCSh+4awY1ppB?=
 =?us-ascii?Q?sc+zcj5RI7NPu6mwQDRBpm9QCWiKEjJs/KZcoarTxcqJ2aBTt9rO+Sb5sYa2?=
 =?us-ascii?Q?1P2dFly71heYBDLCZtDoSDyTQ3+EiD3laUJI4l1r7VtPBOonf0EwPtduyxKT?=
 =?us-ascii?Q?qNPT+Q8tGzceCi/eJSzOMmeOFAPc+o8b3O62x49V?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ec5c9f2d-4a12-47dc-8b66-08dc6dc8f5c4
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2024 12:35:06.8578 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4sXyDBPEgoduOyH+0Bx6c/wsXe1Y/zJFWJSuv2v/AJ5j+bjA0ubVp7L1rLfwaB2zOby1TRUSCp7Xlo4C6RYFww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5832
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

On Sat, May 04, 2024 at 04:29:48PM -0700, Niranjana Vishwanathapura wrote:

please use intel-xe@lists.freedesktop.org for patches touching only xe.

probably a good idea to use some gitconfig identities:

[sendemail "i915"]
        to = intel-gfx@lists.freedesktop.org
[sendemail "xe"]
        to = intel-xe@lists.freedesktop.org
[sendemail "both"]
	to = intel-gfx@lists.freedesktop.org
        to = intel-xe@lists.freedesktop.org
[sendemail "igt"]
        to = igt-dev@lists.freedesktop.org

> When Indirect Ring State is enabled, the Ring Buffer state and
> Batch Buffer state are context save/restored to/form Indirect
> Ring State instead of the LRC. It is the recommended mode for
> Xe2, hence enable it by default for Xe2 platforms.
> 
> Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
> 
> Niranjana Vishwanathapura (4):
>   drm/xe: Minor cleanup in LRC handling
>   drm/xe: Add Indirect Ring State support
>   drm/xe: Dump Indirect Ring State registers
>   drm/xe/xe2: Enable Indirect Ring State support for Xe2
> 
>  drivers/gpu/drm/xe/regs/xe_engine_regs.h |   9 +-
>  drivers/gpu/drm/xe/regs/xe_lrc_layout.h  |   7 +
>  drivers/gpu/drm/xe/xe_gt.c               |   6 +-
>  drivers/gpu/drm/xe/xe_gt.h               |   7 +
>  drivers/gpu/drm/xe/xe_gt_types.h         |   6 +-
>  drivers/gpu/drm/xe/xe_guc_ads.c          |   5 +-
>  drivers/gpu/drm/xe/xe_guc_submit.c       |   2 +-
>  drivers/gpu/drm/xe/xe_hw_engine.c        |  11 ++
>  drivers/gpu/drm/xe/xe_hw_engine_types.h  |   4 +
>  drivers/gpu/drm/xe/xe_lrc.c              | 187 +++++++++++++++++++----
>  drivers/gpu/drm/xe/xe_lrc.h              |   5 +-
>  drivers/gpu/drm/xe/xe_lrc_types.h        |   4 +
>  drivers/gpu/drm/xe/xe_pci.c              |   3 +
>  drivers/gpu/drm/xe/xe_pci_types.h        |   3 +
>  14 files changed, 220 insertions(+), 39 deletions(-)
> 
> -- 
> 2.43.0
> 
