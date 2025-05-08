Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B520BAB01EB
	for <lists+intel-gfx@lfdr.de>; Thu,  8 May 2025 19:58:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADCE910E213;
	Thu,  8 May 2025 17:58:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kwCXGo70";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DDBE10E213
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 May 2025 17:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746727092; x=1778263092;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=Vui1kAALrDpDkVofbKGdSXkQRB9quGed+5KUy+hC6as=;
 b=kwCXGo70kzKT5dqLSgdfVf08mnNFkmZFU2UipIiCqqMpYIO/HD2JXK1v
 ZmHlIIzR3DnKQymJ+jByiDDhwAF5uCjPUgUbnJ4ul2luz3LMwts9xlsV/
 MxvP1IqvVkC9/qt/A6sb0hQFHsrtiT0etK3hWRG9VFJCBwdD9xXcGtDSX
 yf8xJTyWh9L137YM6AybMdpEOTf9u325UoW4N1CHtescFJoGXQaxh7mhC
 F06uasGIQokpmaoynSD2NFh7yESenAkRcFKr2hGCinfwEboD2PKtImGGV
 4whxiJ9sUEB3ekW8beAMaUf5npsdq23F0Flf9WE31Cz7mHsfq/WvlERj7 Q==;
X-CSE-ConnectionGUID: /1X05l3KQzWfifRhrHupww==
X-CSE-MsgGUID: AT6lSv4zS7exKAs47OF9sg==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="58741826"
X-IronPort-AV: E=Sophos;i="6.15,272,1739865600"; d="scan'208";a="58741826"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 10:58:11 -0700
X-CSE-ConnectionGUID: fF0BZ740Se2Ujnx9VukARA==
X-CSE-MsgGUID: Z6xvT5b1Rli0TdiF0gXi3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,272,1739865600"; d="scan'208";a="140408030"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 10:58:02 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 8 May 2025 10:57:59 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 8 May 2025 10:57:59 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 8 May 2025 10:57:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UzbWy/MtxyBxXip5QgvpeVnZ6qkBlrCoL4uIKO3uMltBqRBLAz9L0JHUFZHPggWr0SR/ROgUoDp2Fk08dDSxBw6t1WLzh2lyRZtnaueDU9fPFmqXKY/NhwNa5mdqgIGbbgPeEkXLluLpyKYa0BAXf4qzhv8b2HiPk5oCTGFDXybMbo4JI9Vn4Am8tmA6njRHeqLCyIBub/EiSzpq8Em7no3uARTz7gUuuipBbfXR1aARYNL8xTtdjxICmADRQFiA6OL8d34uvUBxwatLyC4N+JfWzK7qNUsz84eD3WDG4/0f656mDge7Mnj6qZ4IH2V+hP8IGKrTp9mjA+4sRWXVuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JIOPTMi5LFIFiHPvht+YrgLl5hEfjwdlqLNCIiVvjHg=;
 b=KgwsdfJVWagymORQaZ+RI/9kg0VZj2+nHNwG938wq1qZ45oiTMjF116Bjcuuq3zi9/9quwLSyQ+tMiHrAz7z4hXQ5ivcpolDqMI8tWePG0A76xO9agzOnzfo2zAZJnYOpBfEbNqikeS0lv7g09K9IGLHWI6ZtXEUun+1/lH73PjOocgbcQ2RsQolhIv30VhdOGLjd/a1EujyfiMkUOIPpnRdbwLK8zf4IbMLyQPVYJcUoHr+DcMrfO+3u11alK112VsIhAnBB/50A4pJpoTXEbUmL0Of025LcFZSmOuGsSFMr0eKZ4UPl1n166nvElR/oGr0tvHWg+0KpomeNBD2Og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA1PR11MB8803.namprd11.prod.outlook.com (2603:10b6:208:59a::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Thu, 8 May
 2025 17:57:50 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8722.020; Thu, 8 May 2025
 17:57:50 +0000
Date: Thu, 8 May 2025 20:57:56 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFp?=
 =?utf-8?Q?lure_for_drm=2Fi915=2Fdp=3A_Fi?= =?utf-8?Q?x?= determining SST/MST
 mode during MTP TU state computation
Message-ID: <aBzwpMai0hSnSYRj@ideak-desk.fi.intel.com>
References: <20250507151953.251846-1-imre.deak@intel.com>
 <174665037119.57599.8017027202377694038@c664b1dc75d1>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <174665037119.57599.8017027202377694038@c664b1dc75d1>
X-ClientProxiedBy: DU2PR04CA0213.eurprd04.prod.outlook.com
 (2603:10a6:10:2b1::8) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA1PR11MB8803:EE_
X-MS-Office365-Filtering-Correlation-Id: 5c3cb64f-03d9-4f9c-239a-08dd8e59d852
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?wHvl+sF+lP11HYAqQUXgsaMH6/vH3GK08UBC9lug9JVLWZYITnlI1vJ+dTz1?=
 =?us-ascii?Q?0M7gLvJhcFIgrsaO9oG8h+ucsxVTpzRx/odkYzmVOouExWeezi1bZLbKRqyi?=
 =?us-ascii?Q?v8pyga0gFBl7KD7XxWbCwRQMlohGycucosg+ljIs+cKZuBmftPy5fb1A/kIT?=
 =?us-ascii?Q?/IdJOgPmkl3z0vLHOmq1LWuesFDhJS6xIW3jd8iFCX0MrhPbEP0WknAbx5Ts?=
 =?us-ascii?Q?jrNhW5NJpOO5uZPEyUoiNxe2FywAbiSiE6TyUHyjXZZr/U49Y6KW9oswgLtC?=
 =?us-ascii?Q?uA1goabsJ9/E/UTqb+kyyuXWHN17y16mfXQNvi52pxjvMNh0Ypkk2wWTAddp?=
 =?us-ascii?Q?8KYCxU3svC7Q3xgZLN33gL80xG383FZJGfJUkaKsjbxYgJBRHzhrWsEXLEej?=
 =?us-ascii?Q?FzhSHUeingqEdYxuqvv1Ia005mgUQ32C+RFXbJ51GN2CiOFW2EbGVQ1PElNg?=
 =?us-ascii?Q?v6OoWj1w6/ypLVnx5uomNSVOUKvo/sEGlPdWCP89f+ZJpJoZzESRKT6LWWJd?=
 =?us-ascii?Q?sKh/6rBsis57RDMwr/4qcXBtJ/cjoZpvDqQtrK2Ty9vsgEDhmXIR8JE316yp?=
 =?us-ascii?Q?+I8vVpl96hlTzf30mrY9a3kyw86qcNVYwNuYhxjQO+G9xjDLcKfTKoQtO8nW?=
 =?us-ascii?Q?heA6pZsQXYEdy072pqTaPhQjgdfcGWeG0JjlOVzFNtW6xq4Nj1GLpAuIh/kz?=
 =?us-ascii?Q?bIcx0/21k3R2LVGgpCxV1wET57HOudzM79gEeIovcKpVKx7Q9fI8yAjvZHHD?=
 =?us-ascii?Q?DD6bFevDyadvyrhXZQVeNw0+HdqYd+aFFbliPQjo4ZFQdFBklFJcI1ICm95T?=
 =?us-ascii?Q?l5aWNA5ZSmnCrpfODIW81YGnwxWLwlo9rsMa3+5HO934Ioh34p1omNjhxWbA?=
 =?us-ascii?Q?iuO6HezF4q819oQCicd1vun1CFNrWnM6wOiU3rKWeY0uipfWnZrpG2yR3t25?=
 =?us-ascii?Q?bIsFgB4NrkZszx6Va4S4cANpajqileHFqidRUgh6FeUUpiQ8ub/eUH1pHpDp?=
 =?us-ascii?Q?ggS05NNiVmoyKQ6Cgw6ATi/4Mitn5s2V2Eoi7njLjzRmYvhxV+zShumny20R?=
 =?us-ascii?Q?doWSoadKhlN+U/DsCk1e/WMOtxAoPzwsSwPq4PsGJYzN6iXTKYwFLkUc5F9C?=
 =?us-ascii?Q?KZk6/s6FM10qkzjcktpY1cCM63yT/xiiMYGkAOZdZvhRNEwwVCCKeUmNDbqB?=
 =?us-ascii?Q?k7gocODCbqLCdxbz2CQLqGzat28qMQ90hsa8wFrQ831M5zVj+7YJQ2YifJQO?=
 =?us-ascii?Q?ILfhjcRpM3AhDamMbBMgc/qL0nYGgRi/OPDvA0VYrrVxuwopYEQddohgwsCt?=
 =?us-ascii?Q?2EOGE9CrclTRps+RC50JnHeUeJ3m44kU7bUAiAKLWtIsujO7w841LBj3Wzd1?=
 =?us-ascii?Q?uK+fpxc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?y17hA5OcC2il8JMgZcRns0cDvUNA9tdBK5SYj21BUUg1FfgTQXcMga7cUVkv?=
 =?us-ascii?Q?pm3eqM2qXpkwE9uw+c4EjVKacfTs61JEaC1V6VAHikmSL9uEAt/TALrHslDu?=
 =?us-ascii?Q?IbRB+lT78dbEe+1nNz5tY5ouPrQ0qTt2Xz2uz+rToZK38K2gQr89qzhcDQr0?=
 =?us-ascii?Q?JBegckQfYZN67b72BUTA5ywirHMS+jqxfcXbatPvT43YlDbGajp/6M6jR/1f?=
 =?us-ascii?Q?eJbZcbXOgkBa1FqkJtZCmXl96EP5xNLJZg0Lkbn3FsRQ9Zttc6tPkdQ2PDs+?=
 =?us-ascii?Q?y0tzUfI+VOmYonhPK8jm8iIRmDuosxAHa8t/43L7Dl0qt2JDZkAj+K8bhnwE?=
 =?us-ascii?Q?iLYmV26fYFlNeo8ZEdBtaFN6tqWQfvmChC3i3TXz4ZgDrjUVTAxHQlXJhRYj?=
 =?us-ascii?Q?WykduduxAoZkIZPD95glEjJ/hS10L1Juwls4mJYyblM6/2W7YoPhj/e/DBCD?=
 =?us-ascii?Q?7rGJ0fMHDu1aZMylNOyZiswfwAL5zloBtjq6L0WvWx5qgIAIJaYyCLdkWg4j?=
 =?us-ascii?Q?tGkJ9Ha0qWP3ybcvZ6A/LRrWtq0CqgcMLnt+RESpgeF29Pp0XAWwXqLEZomF?=
 =?us-ascii?Q?aMSxmaQE4Mny+E5IdMgg8Xf40XGLocxjVc8G+GMyoUmsGWlSDJlLrmFdpG3c?=
 =?us-ascii?Q?NLlKqVWJsUVw93Ndsprsdzr28uMashTzM++oSzWYOkHGYgUIiEkFT30wZegw?=
 =?us-ascii?Q?UW339UdqgzPOIWGXoUtOI8zE21cRpMvKbAcxtio2kvm5G+5nUsdFP0EuwJNp?=
 =?us-ascii?Q?WAoSL5zj7r5ZinbqKH14lOMWPcn78067GKBRlKZsV6xVS8+7EGxyxpBKuCX1?=
 =?us-ascii?Q?dyPDJj1brHfQar5/JH/Bn6t+cWaDWq9QtQt0Vq2rixgFxpK+MDi1T/bzTV4r?=
 =?us-ascii?Q?x/xMzHnJxm1W9dWSvx72RrBXGFrEOzYiOK37VetUveSxLYxfCIhDZcO/kEEx?=
 =?us-ascii?Q?BrwbKMyJ/LIU9cvhOuJTXBTLEtH0qKYDqKzjYKsj8piTMlUYACXzZZjgfdHW?=
 =?us-ascii?Q?7gqsammKd9tIk1gXoapBpalz6zfRliWHUU8osj0ZskOInQySI77Zs2wE8elI?=
 =?us-ascii?Q?zO48+pvwC0or2PPOr9gdX+l+sVocLY0FmLAAQtHf+VTtCIltY+FHKhxT6E4p?=
 =?us-ascii?Q?wu1lO+FG13Qe6fB99gIH77NUJAuggkQiMEm/TUojJl+fk2TG7Pyj9msb0tXQ?=
 =?us-ascii?Q?+HpvZ3uDr7Sd5YulBnW6tg5/5lE2kWcNITDTMA5PDdJRc0+IxLgray5PyBeW?=
 =?us-ascii?Q?uNg8nic+VLu8eAbu1Q1OVKsS0KzKTGfpF0VbPedUk1Ydz7ApJ/ZviCgxc2Rw?=
 =?us-ascii?Q?8lbqAVFCzZ4pynAX54UTx1ml+55ol3rJa9q8dnv4ZHMX1QFsWIA9U8euCtwS?=
 =?us-ascii?Q?nL3Ubmot2XLR+4o9/ZK6UM2rw1m/GTrOTRafDpyAHf8AOASHXoxeoDP79fy8?=
 =?us-ascii?Q?8ZeTgiuGcYwLbDJHEIIPBW1dShqlBxOYE0CUFOgscuxRzicA5QekqHeuc1VT?=
 =?us-ascii?Q?e827qKHYR/oGuhTBIi1G0lNEbJ/tDUVpz03cPJ1fM2JMhPhRLpt+EBRvYj8r?=
 =?us-ascii?Q?EWfU6hrfzBFFKLZ5xEkuXVzXCDMNlcrhifGIILws?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c3cb64f-03d9-4f9c-239a-08dd8e59d852
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2025 17:57:50.3973 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /owdhmjNtag1dPvsFeeqRxO4fMC/gh93IXJlb81m+MgI9eaXjgZpMvWl7F+lXPCS1CCAxAUFUnsdERRaEus13g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8803
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

On Wed, May 07, 2025 at 08:39:31PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp: Fix determining SST/MST mode during MTP TU state computation
> URL   : https://patchwork.freedesktop.org/series/148705/
> State : failure

Patch is pushed to drm-intel-next, thanks for the review.

The failures are unrelated, none of the hosts have either an MST or
SST/UHBR sink connected.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_16512_full -> Patchwork_148705v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_148705v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_148705v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_148705v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
>     - shard-snb:          [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-snb1/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-snb1/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a:
>     - shard-rkl:          NOTRUN -> [INCOMPLETE][3] +1 other test incomplete
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html
> 
>   
> #### Warnings ####
> 
>   * igt@perf_pmu@module-unload:
>     - shard-tglu:         [INCOMPLETE][4] ([i915#13029] / [i915#13520]) -> [ABORT][5]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-tglu-5/igt@perf_pmu@module-unload.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-2/igt@perf_pmu@module-unload.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_148705v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@crc32:
>     - shard-rkl:          NOTRUN -> [SKIP][6] ([i915#6230])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-3/igt@api_intel_bb@crc32.html
> 
>   * igt@api_intel_bb@object-reloc-keep-cache:
>     - shard-rkl:          NOTRUN -> [SKIP][7] ([i915#8411]) +1 other test skip
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-3/igt@api_intel_bb@object-reloc-keep-cache.html
> 
>   * igt@device_reset@cold-reset-bound:
>     - shard-tglu-1:       NOTRUN -> [SKIP][8] ([i915#11078])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-1/igt@device_reset@cold-reset-bound.html
> 
>   * igt@gem_ccs@block-copy-compressed:
>     - shard-tglu-1:       NOTRUN -> [SKIP][9] ([i915#3555] / [i915#9323])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-1/igt@gem_ccs@block-copy-compressed.html
> 
>   * igt@gem_ccs@large-ctrl-surf-copy:
>     - shard-rkl:          NOTRUN -> [SKIP][10] ([i915#13008])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-8/igt@gem_ccs@large-ctrl-surf-copy.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-tglu-1:       NOTRUN -> [SKIP][11] ([i915#9323])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-1/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-tglu:         NOTRUN -> [SKIP][12] ([i915#7697])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-7/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_ctx_isolation@clean@vcs0:
>     - shard-rkl:          [PASS][13] -> [DMESG-WARN][14] ([i915#12964]) +8 other tests dmesg-warn
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-rkl-5/igt@gem_ctx_isolation@clean@vcs0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-4/igt@gem_ctx_isolation@clean@vcs0.html
> 
>   * igt@gem_ctx_persistence@heartbeat-stop:
>     - shard-dg2:          NOTRUN -> [SKIP][15] ([i915#8555])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-7/igt@gem_ctx_persistence@heartbeat-stop.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1:
>     - shard-mtlp:         [PASS][16] -> [ABORT][17] ([i915#13193] / [i915#13723]) +1 other test abort
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-mtlp-6/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-mtlp-7/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-rkl:          NOTRUN -> [SKIP][18] ([i915#280])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-8/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-tglu-1:       NOTRUN -> [SKIP][19] ([i915#280])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-1/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_eio@kms:
>     - shard-rkl:          [PASS][20] -> [DMESG-WARN][21] ([i915#13363])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-rkl-7/igt@gem_eio@kms.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-8/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-tglu-1:       NOTRUN -> [SKIP][22] ([i915#4525])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-1/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_balancer@parallel-out-fence:
>     - shard-rkl:          NOTRUN -> [SKIP][23] ([i915#4525])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-7/igt@gem_exec_balancer@parallel-out-fence.html
> 
>   * igt@gem_exec_capture@capture-invisible:
>     - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#6334]) +2 other tests skip
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-7/igt@gem_exec_capture@capture-invisible.html
> 
>   * igt@gem_exec_fence@submit67:
>     - shard-dg2-9:        NOTRUN -> [SKIP][25] ([i915#4812])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-9/igt@gem_exec_fence@submit67.html
> 
>   * igt@gem_exec_flush@basic-uc-set-default:
>     - shard-dg2-9:        NOTRUN -> [SKIP][26] ([i915#3539])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-9/igt@gem_exec_flush@basic-uc-set-default.html
> 
>   * igt@gem_exec_reloc@basic-wc-gtt-active:
>     - shard-dg2-9:        NOTRUN -> [SKIP][27] ([i915#3281]) +1 other test skip
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-9/igt@gem_exec_reloc@basic-wc-gtt-active.html
> 
>   * igt@gem_exec_reloc@basic-write-gtt-noreloc:
>     - shard-dg2:          NOTRUN -> [SKIP][28] ([i915#3281]) +3 other tests skip
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-7/igt@gem_exec_reloc@basic-write-gtt-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-write-read-active:
>     - shard-rkl:          NOTRUN -> [SKIP][29] ([i915#3281]) +4 other tests skip
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-8/igt@gem_exec_reloc@basic-write-read-active.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts-chain:
>     - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#4537] / [i915#4812])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-7/igt@gem_exec_schedule@preempt-queue-contexts-chain.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-none:
>     - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#4860])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-7/igt@gem_fence_thrash@bo-write-verify-none.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][32] ([i915#4613]) +3 other tests skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-8/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
> 
>   * igt@gem_lmem_swapping@massive:
>     - shard-glk:          NOTRUN -> [SKIP][33] ([i915#4613])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-glk5/igt@gem_lmem_swapping@massive.html
> 
>   * igt@gem_lmem_swapping@random:
>     - shard-tglu:         NOTRUN -> [SKIP][34] ([i915#4613])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-5/igt@gem_lmem_swapping@random.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - shard-tglu-1:       NOTRUN -> [SKIP][35] ([i915#4613]) +1 other test skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-1/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-odd:
>     - shard-dg2:          NOTRUN -> [SKIP][36] ([i915#4077]) +2 other tests skip
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-7/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
> 
>   * igt@gem_mmap_wc@write:
>     - shard-dg2-9:        NOTRUN -> [SKIP][37] ([i915#4083])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-9/igt@gem_mmap_wc@write.html
> 
>   * igt@gem_partial_pwrite_pread@reads-uncached:
>     - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#3282]) +1 other test skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-7/igt@gem_partial_pwrite_pread@reads-uncached.html
> 
>   * igt@gem_pread@display:
>     - shard-dg2-9:        NOTRUN -> [SKIP][39] ([i915#3282])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-9/igt@gem_pread@display.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-rkl:          NOTRUN -> [SKIP][40] ([i915#3282]) +6 other tests skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-3/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
>     - shard-dg2-9:        NOTRUN -> [SKIP][41] ([i915#4270])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-9/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
> 
>   * igt@gem_pxp@protected-raw-src-copy-not-readible:
>     - shard-rkl:          NOTRUN -> [TIMEOUT][42] ([i915#12917] / [i915#12964])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-6/igt@gem_pxp@protected-raw-src-copy-not-readible.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-on:
>     - shard-rkl:          [PASS][43] -> [TIMEOUT][44] ([i915#12917] / [i915#12964]) +1 other test timeout
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-on.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-5/igt@gem_pxp@reject-modify-context-protection-on.html
> 
>   * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
>     - shard-dg2:          NOTRUN -> [SKIP][45] ([i915#4270])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-7/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
> 
>   * igt@gem_render_copy@linear-to-vebox-yf-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][46] ([i915#5190] / [i915#8428])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-7/igt@gem_render_copy@linear-to-vebox-yf-tiled.html
> 
>   * igt@gem_render_copy@yf-tiled-to-vebox-linear:
>     - shard-dg2-9:        NOTRUN -> [SKIP][47] ([i915#5190] / [i915#8428])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-9/igt@gem_render_copy@yf-tiled-to-vebox-linear.html
> 
>   * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][48] ([i915#4079])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-7/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-tglu-1:       NOTRUN -> [SKIP][49] ([i915#3297] / [i915#3323])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-1/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
>     - shard-tglu:         NOTRUN -> [SKIP][50] ([i915#3297])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-5/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
> 
>   * igt@gem_userptr_blits@readonly-unsync:
>     - shard-dg2-9:        NOTRUN -> [SKIP][51] ([i915#3297])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-9/igt@gem_userptr_blits@readonly-unsync.html
> 
>   * igt@gem_userptr_blits@unsync-overlap:
>     - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#3297]) +1 other test skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-7/igt@gem_userptr_blits@unsync-overlap.html
> 
>   * igt@gem_userptr_blits@unsync-unmap:
>     - shard-rkl:          NOTRUN -> [SKIP][53] ([i915#3297])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-7/igt@gem_userptr_blits@unsync-unmap.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - shard-glk:          [PASS][54] -> [INCOMPLETE][55] ([i915#13356])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-glk5/igt@gem_workarounds@suspend-resume-fd.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-glk1/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#2856]) +1 other test skip
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-7/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-tglu-1:       NOTRUN -> [SKIP][57] ([i915#2527] / [i915#2856]) +1 other test skip
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-1/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@cmd-crossing-page:
>     - shard-tglu:         NOTRUN -> [SKIP][58] ([i915#2527] / [i915#2856]) +1 other test skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-5/igt@gen9_exec_parse@cmd-crossing-page.html
> 
>   * igt@gen9_exec_parse@secure-batches:
>     - shard-dg2-9:        NOTRUN -> [SKIP][59] ([i915#2856])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-9/igt@gen9_exec_parse@secure-batches.html
> 
>   * igt@gen9_exec_parse@unaligned-access:
>     - shard-rkl:          NOTRUN -> [SKIP][60] ([i915#2527]) +3 other tests skip
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-3/igt@gen9_exec_parse@unaligned-access.html
> 
>   * igt@i915_drm_fdinfo@most-busy-check-all@vecs0:
>     - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#14073]) +7 other tests skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-7/igt@i915_drm_fdinfo@most-busy-check-all@vecs0.html
> 
>   * igt@i915_drm_fdinfo@most-busy-idle-check-all@vecs1:
>     - shard-dg2-9:        NOTRUN -> [SKIP][62] ([i915#14073]) +7 other tests skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-9/igt@i915_drm_fdinfo@most-busy-idle-check-all@vecs1.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-tglu-1:       NOTRUN -> [SKIP][63] ([i915#6412])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-1/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_pm_freq_api@freq-basic-api:
>     - shard-rkl:          NOTRUN -> [SKIP][64] ([i915#8399])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-3/igt@i915_pm_freq_api@freq-basic-api.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-tglu:         NOTRUN -> [WARN][65] ([i915#13790] / [i915#2681]) +4 other tests warn
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-5/igt@i915_pm_rc6_residency@rc6-idle.html
>     - shard-dg1:          [PASS][66] -> [FAIL][67] ([i915#3591]) +1 other test fail
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_pm_rps@thresholds-idle:
>     - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#11681])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-7/igt@i915_pm_rps@thresholds-idle.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-rkl:          NOTRUN -> [SKIP][69] ([i915#4387])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-6/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_selftest@live:
>     - shard-rkl:          [PASS][70] -> [DMESG-FAIL][71] ([i915#13550]) +1 other test dmesg-fail
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-rkl-8/igt@i915_selftest@live.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-5/igt@i915_selftest@live.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - shard-mtlp:         [PASS][72] -> [DMESG-FAIL][73] ([i915#12061]) +1 other test dmesg-fail
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-mtlp-4/igt@i915_selftest@live@workarounds.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-mtlp-8/igt@i915_selftest@live@workarounds.html
> 
>   * igt@kms_addfb_basic@basic-x-tiled-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#4212])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-7/igt@kms_addfb_basic@basic-x-tiled-legacy.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events-tiled@pipe-a-hdmi-a-2-y-rc-ccs-cc:
>     - shard-rkl:          NOTRUN -> [SKIP][75] ([i915#8709]) +1 other test skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-5/igt@kms_async_flips@async-flip-with-page-flip-events-tiled@pipe-a-hdmi-a-2-y-rc-ccs-cc.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events-tiled@pipe-c-hdmi-a-1-y-rc-ccs-cc:
>     - shard-tglu-1:       NOTRUN -> [SKIP][76] ([i915#8709]) +3 other tests skip
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-1/igt@kms_async_flips@async-flip-with-page-flip-events-tiled@pipe-c-hdmi-a-1-y-rc-ccs-cc.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-tglu:         NOTRUN -> [SKIP][77] ([i915#1769] / [i915#3555])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-7/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
>     - shard-tglu-1:       NOTRUN -> [SKIP][78] ([i915#5286]) +2 other tests skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-1/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
>     - shard-dg2-9:        NOTRUN -> [SKIP][79] +3 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-9/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-addfb:
>     - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#5286]) +5 other tests skip
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-6/igt@kms_big_fb@4-tiled-addfb.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180:
>     - shard-tglu:         NOTRUN -> [SKIP][81] ([i915#5286]) +3 other tests skip
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][82] +1 other test skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-7/igt@kms_big_fb@linear-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][83] ([i915#3638]) +3 other tests skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-7/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
>     - shard-dg2-9:        NOTRUN -> [SKIP][84] ([i915#4538] / [i915#5190]) +2 other tests skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-9/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
>     - shard-tglu-1:       NOTRUN -> [SKIP][85] +43 other tests skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-1/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-tglu:         NOTRUN -> [SKIP][86] +37 other tests skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#4538] / [i915#5190]) +2 other tests skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-7/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>     - shard-glk:          NOTRUN -> [SKIP][88] +111 other tests skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-glk5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#6095]) +40 other tests skip
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-5/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][90] ([i915#6095]) +34 other tests skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-1/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][91] ([i915#14098] / [i915#6095]) +54 other tests skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-a-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][92] ([i915#6095]) +19 other tests skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-5/igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs@pipe-c-hdmi-a-2:
>     - shard-dg2-9:        NOTRUN -> [SKIP][93] ([i915#10307] / [i915#6095]) +19 other tests skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-9/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][94] ([i915#6095]) +135 other tests skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg1-13/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#12805])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][96] ([i915#12805])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-5/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-c-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#6095]) +15 other tests skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-10/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-c-dp-4.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#10307] / [i915#6095]) +203 other tests skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-10/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-a-dp-4.html
> 
>   * igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#10307] / [i915#10434] / [i915#6095]) +4 other tests skip
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-8/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#12313])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-7/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][101] ([i915#12313]) +1 other test skip
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-1/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
> 
>   * igt@kms_cdclk@mode-transition-all-outputs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][102] ([i915#3742])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-1/igt@kms_cdclk@mode-transition-all-outputs.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#13781]) +3 other tests skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-4/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_cdclk@plane-scaling:
>     - shard-tglu:         NOTRUN -> [SKIP][104] ([i915#3742])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-7/igt@kms_cdclk@plane-scaling.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-read:
>     - shard-rkl:          NOTRUN -> [SKIP][105] ([i915#11151] / [i915#7828]) +5 other tests skip
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-8/igt@kms_chamelium_edid@hdmi-edid-read.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-after-suspend:
>     - shard-dg2-9:        NOTRUN -> [SKIP][106] ([i915#11151] / [i915#7828])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-9/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-fast:
>     - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#11151] / [i915#7828]) +1 other test skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-7/igt@kms_chamelium_hpd@dp-hpd-fast.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-storm-disable:
>     - shard-tglu:         NOTRUN -> [SKIP][108] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-7/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-fast:
>     - shard-tglu-1:       NOTRUN -> [SKIP][109] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-1/igt@kms_chamelium_hpd@hdmi-hpd-fast.html
> 
>   * igt@kms_color@deep-color:
>     - shard-dg2-9:        NOTRUN -> [SKIP][110] ([i915#3555])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-9/igt@kms_color@deep-color.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-tglu:         NOTRUN -> [SKIP][111] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-7/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@lic-type-0@pipe-a-dp-3:
>     - shard-dg2:          NOTRUN -> [FAIL][112] ([i915#7173])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-11/igt@kms_content_protection@lic-type-0@pipe-a-dp-3.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#9424])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-7/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#7118] / [i915#9424]) +1 other test skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-3/igt@kms_content_protection@type1.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x512:
>     - shard-tglu:         NOTRUN -> [SKIP][115] ([i915#13049])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-7/igt@kms_cursor_crc@cursor-offscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#13049]) +3 other tests skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-8/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x512:
>     - shard-tglu-1:       NOTRUN -> [SKIP][117] ([i915#13049]) +1 other test skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [INCOMPLETE][118] ([i915#12358] / [i915#14152]) +1 other test incomplete
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-3/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - shard-tglu-1:       NOTRUN -> [SKIP][119] ([i915#4103])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][120] ([i915#4103]) +1 other test skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
>     - shard-rkl:          NOTRUN -> [SKIP][121] +20 other tests skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-7/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:
>     - shard-dg2-9:        NOTRUN -> [SKIP][122] ([i915#13046] / [i915#5354]) +1 other test skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-9/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>     - shard-tglu:         NOTRUN -> [SKIP][123] ([i915#4103])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-7/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_display_modes@extended-mode-basic:
>     - shard-dg2-9:        NOTRUN -> [SKIP][124] ([i915#13691])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-9/igt@kms_display_modes@extended-mode-basic.html
> 
>   * igt@kms_dp_link_training@uhbr-mst:
>     - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#13748])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-6/igt@kms_dp_link_training@uhbr-mst.html
> 
>   * igt@kms_dp_linktrain_fallback@dp-fallback:
>     - shard-rkl:          NOTRUN -> [SKIP][126] ([i915#13707])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-7/igt@kms_dp_linktrain_fallback@dp-fallback.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
>     - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#3840])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-3/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-bpc:
>     - shard-tglu:         NOTRUN -> [SKIP][128] ([i915#3555] / [i915#3840])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-5/igt@kms_dsc@dsc-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-formats:
>     - shard-tglu-1:       NOTRUN -> [SKIP][129] ([i915#3555] / [i915#3840])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-1/igt@kms_dsc@dsc-with-formats.html
> 
>   * igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-dirtyfb-tests:
>     - shard-tglu:         NOTRUN -> [SKIP][130] ([i915#2575])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-5/igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-dirtyfb-tests.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-rkl:          [PASS][131] -> [INCOMPLETE][132] ([i915#9878])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-rkl-5/igt@kms_fbcon_fbt@fbc-suspend.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-3/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#3955])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-7/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_feature_discovery@display-4x:
>     - shard-tglu-1:       NOTRUN -> [SKIP][134] ([i915#1839])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-1/igt@kms_feature_discovery@display-4x.html
> 
>   * igt@kms_feature_discovery@dp-mst:
>     - shard-dg2-9:        NOTRUN -> [SKIP][135] ([i915#9337])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-9/igt@kms_feature_discovery@dp-mst.html
> 
>   * igt@kms_feature_discovery@psr2:
>     - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#658])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-6/igt@kms_feature_discovery@psr2.html
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
>     - shard-tglu-1:       NOTRUN -> [SKIP][137] ([i915#3637] / [i915#9934]) +2 other tests skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-1/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:
>     - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#9934]) +1 other test skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-7/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html
> 
>   * igt@kms_flip@2x-flip-vs-fences-interruptible:
>     - shard-rkl:          NOTRUN -> [SKIP][139] ([i915#9934]) +5 other tests skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-7/igt@kms_flip@2x-flip-vs-fences-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
>     - shard-dg2-9:        NOTRUN -> [SKIP][140] ([i915#9934]) +1 other test skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-9/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@2x-nonexisting-fb-interruptible:
>     - shard-tglu:         NOTRUN -> [SKIP][141] ([i915#3637] / [i915#9934]) +5 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-7/igt@kms_flip@2x-nonexisting-fb-interruptible.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible:
>     - shard-rkl:          [PASS][142] -> [FAIL][143] ([i915#11832] / [i915#13734])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-rkl-3/igt@kms_flip@plain-flip-ts-check-interruptible.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-4/igt@kms_flip@plain-flip-ts-check-interruptible.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1:
>     - shard-rkl:          NOTRUN -> [FAIL][144] ([i915#13734]) +1 other test fail
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-4/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][145] ([i915#2672] / [i915#3555]) +1 other test skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
>     - shard-tglu-1:       NOTRUN -> [SKIP][146] ([i915#2587] / [i915#2672]) +1 other test skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#2672]) +3 other tests skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][148] ([i915#2587] / [i915#2672] / [i915#3555])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#2672] / [i915#3555] / [i915#5190])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#2672])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][151] ([i915#2672] / [i915#3555]) +1 other test skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][152] ([i915#2587] / [i915#2672]) +2 other tests skip
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#2672] / [i915#3555]) +3 other tests skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:
>     - shard-dg2-9:        NOTRUN -> [SKIP][154] ([i915#2672] / [i915#3555])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-dg2-9:        NOTRUN -> [SKIP][155] ([i915#2672])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite:
>     - shard-dg2-9:        NOTRUN -> [SKIP][156] ([i915#5354]) +3 other tests skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:
>     - shard-snb:          [PASS][157] -> [SKIP][158]
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][159] ([i915#8708]) +3 other tests skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move:
>     - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#5354]) +6 other tests skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
>     - shard-tglu-1:       NOTRUN -> [SKIP][161] ([i915#5439])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>     - shard-rkl:          NOTRUN -> [SKIP][162] ([i915#9766])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-6/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#3458]) +4 other tests skip
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render:
>     - shard-dg2-9:        NOTRUN -> [SKIP][164] ([i915#3458]) +6 other tests skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][165] ([i915#3023]) +17 other tests skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-dg2-9:        NOTRUN -> [SKIP][166] ([i915#8708]) +3 other tests skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#1825]) +34 other tests skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-tglu:         NOTRUN -> [SKIP][168] ([i915#3555] / [i915#8228])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-7/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_hdr@invalid-hdr:
>     - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#3555] / [i915#8228])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-7/igt@kms_hdr@invalid-hdr.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-rkl:          NOTRUN -> [SKIP][170] ([i915#3555] / [i915#8228]) +2 other tests skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-6/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_hdr@static-toggle-dpms:
>     - shard-dg2:          [PASS][171] -> [SKIP][172] ([i915#3555] / [i915#8228])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-dg2-10/igt@kms_hdr@static-toggle-dpms.html
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-4/igt@kms_hdr@static-toggle-dpms.html
> 
>   * igt@kms_joiner@invalid-modeset-force-big-joiner:
>     - shard-tglu:         NOTRUN -> [SKIP][173] ([i915#12388])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-5/igt@kms_joiner@invalid-modeset-force-big-joiner.html
> 
>   * igt@kms_panel_fitting@atomic-fastset:
>     - shard-tglu:         NOTRUN -> [SKIP][174] ([i915#6301])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-7/igt@kms_panel_fitting@atomic-fastset.html
> 
>   * igt@kms_plane_alpha_blend@constant-alpha-max:
>     - shard-glk:          NOTRUN -> [FAIL][175] ([i915#10647] / [i915#12169])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-glk9/igt@kms_plane_alpha_blend@constant-alpha-max.html
> 
>   * igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [FAIL][176] ([i915#10647]) +1 other test fail
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-glk9/igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_plane_alpha_blend@constant-alpha-mid@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][177] ([i915#12964]) +11 other tests dmesg-warn
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-4/igt@kms_plane_alpha_blend@constant-alpha-mid@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_multiple@2x-tiling-4:
>     - shard-rkl:          NOTRUN -> [SKIP][178] ([i915#13958])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-8/igt@kms_plane_multiple@2x-tiling-4.html
> 
>   * igt@kms_plane_multiple@2x-tiling-yf:
>     - shard-dg2:          NOTRUN -> [SKIP][179] ([i915#13958])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-7/igt@kms_plane_multiple@2x-tiling-yf.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation:
>     - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#12247] / [i915#9423])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-7/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d:
>     - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#12247]) +3 other tests skip
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-7/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c:
>     - shard-tglu:         NOTRUN -> [SKIP][182] ([i915#12247]) +4 other tests skip
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-7/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
>     - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#3555]) +6 other tests skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c:
>     - shard-rkl:          NOTRUN -> [SKIP][184] ([i915#12247]) +6 other tests skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d:
>     - shard-tglu-1:       NOTRUN -> [SKIP][185] ([i915#12247]) +4 other tests skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
>     - shard-rkl:          NOTRUN -> [SKIP][186] ([i915#12247] / [i915#6953])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html
> 
>   * igt@kms_pm_backlight@fade-with-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][187] ([i915#5354])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-6/igt@kms_pm_backlight@fade-with-dpms.html
> 
>   * igt@kms_pm_dc@dc3co-vpb-simulation:
>     - shard-tglu-1:       NOTRUN -> [SKIP][188] ([i915#9685])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-1/igt@kms_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_pm_dc@dc5-retention-flops:
>     - shard-rkl:          NOTRUN -> [SKIP][189] ([i915#3828])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-8/igt@kms_pm_dc@dc5-retention-flops.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-rkl:          [PASS][190] -> [FAIL][191] ([i915#9295])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-rkl-7/igt@kms_pm_dc@dc6-dpms.html
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-4/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_dc@dc6-psr:
>     - shard-tglu:         NOTRUN -> [SKIP][192] ([i915#9685])
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-5/igt@kms_pm_dc@dc6-psr.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-dg2:          [PASS][193] -> [SKIP][194] ([i915#9340])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-dg2-8/igt@kms_pm_lpsp@kms-lpsp.html
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-6/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-rkl:          [PASS][195] -> [SKIP][196] ([i915#9519])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-rkl-3/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-4/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-non-lpsp:
>     - shard-tglu-1:       NOTRUN -> [SKIP][197] ([i915#9519])
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-1/igt@kms_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@kms_pm_rpm@i2c:
>     - shard-dg1:          [PASS][198] -> [DMESG-WARN][199] ([i915#4423]) +1 other test dmesg-warn
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-dg1-12/igt@kms_pm_rpm@i2c.html
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg1-17/igt@kms_pm_rpm@i2c.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-dg2:          [PASS][200] -> [SKIP][201] ([i915#9519])
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-dg2-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@modeset-pc8-residency-stress:
>     - shard-dg1:          NOTRUN -> [SKIP][202]
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg1-17/igt@kms_pm_rpm@modeset-pc8-residency-stress.html
> 
>   * igt@kms_pm_rpm@pm-tiling:
>     - shard-dg2-9:        NOTRUN -> [SKIP][203] ([i915#4077]) +2 other tests skip
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-9/igt@kms_pm_rpm@pm-tiling.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-tglu-1:       NOTRUN -> [SKIP][204] ([i915#6524])
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-1/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_prime@d3hot:
>     - shard-rkl:          NOTRUN -> [SKIP][205] ([i915#6524])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-6/igt@kms_prime@d3hot.html
> 
>   * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf:
>     - shard-dg2:          NOTRUN -> [SKIP][206] ([i915#11520]) +1 other test skip
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-7/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:
>     - shard-dg2-9:        NOTRUN -> [SKIP][207] ([i915#11520]) +1 other test skip
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-9/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][208] ([i915#11520]) +4 other tests skip
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-7/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][209] ([i915#11520]) +7 other tests skip
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-7/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@pr-plane-move-sf-dmg-area:
>     - shard-tglu-1:       NOTRUN -> [SKIP][210] ([i915#11520]) +1 other test skip
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-1/igt@kms_psr2_sf@pr-plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:
>     - shard-glk:          NOTRUN -> [SKIP][211] ([i915#11520]) +3 other tests skip
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-glk5/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-dg2:          NOTRUN -> [SKIP][212] ([i915#9683])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-7/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-tglu:         NOTRUN -> [SKIP][213] ([i915#9683])
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-7/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@fbc-psr-sprite-blt:
>     - shard-dg2-9:        NOTRUN -> [SKIP][214] ([i915#1072] / [i915#9732]) +4 other tests skip
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-9/igt@kms_psr@fbc-psr-sprite-blt.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-mmap-gtt:
>     - shard-tglu:         NOTRUN -> [SKIP][215] ([i915#9732]) +8 other tests skip
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-5/igt@kms_psr@fbc-psr2-sprite-mmap-gtt.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-plane-move:
>     - shard-dg2:          NOTRUN -> [SKIP][216] ([i915#1072] / [i915#9732]) +4 other tests skip
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-7/igt@kms_psr@fbc-psr2-sprite-plane-move.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-render:
>     - shard-rkl:          NOTRUN -> [SKIP][217] ([i915#1072] / [i915#9732]) +16 other tests skip
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-3/igt@kms_psr@fbc-psr2-sprite-render.html
> 
>   * igt@kms_psr@psr2-primary-mmap-cpu:
>     - shard-tglu-1:       NOTRUN -> [SKIP][218] ([i915#9732]) +9 other tests skip
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-1/igt@kms_psr@psr2-primary-mmap-cpu.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-dg2-9:        NOTRUN -> [SKIP][219] ([i915#9685])
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-9/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
>     - shard-tglu:         NOTRUN -> [SKIP][220] ([i915#5289])
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-7/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
>     - shard-dg2:          NOTRUN -> [SKIP][221] ([i915#5190])
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-270:
>     - shard-dg2-9:        NOTRUN -> [SKIP][222] ([i915#12755])
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-9/igt@kms_rotation_crc@sprite-rotation-270.html
> 
>   * igt@kms_scaling_modes@scaling-mode-center:
>     - shard-tglu-1:       NOTRUN -> [SKIP][223] ([i915#3555]) +3 other tests skip
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-1/igt@kms_scaling_modes@scaling-mode-center.html
> 
>   * igt@kms_sequence@queue-busy:
>     - shard-glk:          [PASS][224] -> [DMESG-WARN][225] ([i915#118]) +1 other test dmesg-warn
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-glk2/igt@kms_sequence@queue-busy.html
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-glk8/igt@kms_sequence@queue-busy.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-tglu:         NOTRUN -> [SKIP][226] ([i915#8623])
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-7/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:
>     - shard-mtlp:         [PASS][227] -> [FAIL][228] ([i915#9196]) +1 other test fail
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
> 
>   * igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-2:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][229] ([i915#12276])
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-glk2/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_vrr@max-min:
>     - shard-tglu:         NOTRUN -> [SKIP][230] ([i915#9906])
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-5/igt@kms_vrr@max-min.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-dg2:          [PASS][231] -> [SKIP][232] ([i915#3555] / [i915#9906])
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-dg2-10/igt@kms_vrr@negative-basic.html
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-4/igt@kms_vrr@negative-basic.html
> 
>   * igt@kms_vrr@seamless-rr-switch-drrs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][233] ([i915#9906])
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-1/igt@kms_vrr@seamless-rr-switch-drrs.html
> 
>   * igt@kms_vrr@seamless-rr-switch-virtual:
>     - shard-rkl:          NOTRUN -> [SKIP][234] ([i915#9906]) +1 other test skip
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-8/igt@kms_vrr@seamless-rr-switch-virtual.html
> 
>   * igt@kms_writeback@writeback-fb-id-xrgb2101010:
>     - shard-rkl:          NOTRUN -> [SKIP][235] ([i915#2437] / [i915#9412])
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-6/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-glk:          NOTRUN -> [SKIP][236] ([i915#2437])
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-glk9/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@perf@blocking:
>     - shard-mtlp:         [PASS][237] -> [FAIL][238] ([i915#10538]) +1 other test fail
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-mtlp-1/igt@perf@blocking.html
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-mtlp-3/igt@perf@blocking.html
> 
>   * igt@perf@non-zero-reason:
>     - shard-dg2:          NOTRUN -> [FAIL][239] ([i915#9100]) +1 other test fail
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-7/igt@perf@non-zero-reason.html
> 
>   * igt@prime_vgem@basic-write:
>     - shard-rkl:          NOTRUN -> [SKIP][240] ([i915#3291] / [i915#3708])
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-7/igt@prime_vgem@basic-write.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
>     - shard-rkl:          NOTRUN -> [SKIP][241] ([i915#9917])
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-6/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_shared@exec-single-timeline@vcs0:
>     - shard-rkl:          [DMESG-WARN][242] ([i915#12964]) -> [PASS][243] +16 other tests pass
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-rkl-7/igt@gem_ctx_shared@exec-single-timeline@vcs0.html
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-4/igt@gem_ctx_shared@exec-single-timeline@vcs0.html
> 
>   * igt@gem_pxp@create-valid-protected-context:
>     - shard-rkl:          [TIMEOUT][244] ([i915#12964]) -> [PASS][245]
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-rkl-7/igt@gem_pxp@create-valid-protected-context.html
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-8/igt@gem_pxp@create-valid-protected-context.html
> 
>   * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
>     - shard-rkl:          [TIMEOUT][246] ([i915#12917] / [i915#12964]) -> [PASS][247] +2 other tests pass
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-rkl-5/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-8/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip-atomic:
>     - shard-glk:          [FAIL][248] ([i915#10991] / [i915#13335]) -> [PASS][249]
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-glk5/igt@kms_async_flips@alternate-sync-async-flip-atomic.html
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-glk2/igt@kms_async_flips@alternate-sync-async-flip-atomic.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-1:
>     - shard-glk:          [FAIL][250] ([i915#10991]) -> [PASS][251]
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-glk5/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-1.html
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-glk2/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-2:
>     - shard-glk:          [FAIL][252] ([i915#10991] / [i915#12518]) -> [PASS][253]
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-glk5/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-2.html
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-glk2/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_async_flips@async-flip-suspend-resume:
>     - shard-glk:          [INCOMPLETE][254] ([i915#12761]) -> [PASS][255] +1 other test pass
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-glk8/igt@kms_async_flips@async-flip-suspend-resume.html
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-glk9/igt@kms_async_flips@async-flip-suspend-resume.html
> 
>   * igt@kms_atomic@plane-immutable-zpos:
>     - shard-dg1:          [DMESG-WARN][256] ([i915#4423]) -> [PASS][257]
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-dg1-13/igt@kms_atomic@plane-immutable-zpos.html
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg1-16/igt@kms_atomic@plane-immutable-zpos.html
> 
>   * igt@kms_atomic_transition@plane-toggle-modeset-transition:
>     - shard-dg2:          [FAIL][258] ([i915#5956]) -> [PASS][259]
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-dg2-2/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-8/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-snb:          [FAIL][260] ([i915#13653]) -> [PASS][261]
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-snb5/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-snb4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_dp_aux_dev:
>     - shard-dg2:          [SKIP][262] ([i915#1257]) -> [PASS][263]
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-dg2-6/igt@kms_dp_aux_dev.html
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-11/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_dp_linktrain_fallback@dp-fallback:
>     - shard-dg2:          [SKIP][264] ([i915#13707]) -> [PASS][265]
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-dg2-5/igt@kms_dp_linktrain_fallback@dp-fallback.html
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-11/igt@kms_dp_linktrain_fallback@dp-fallback.html
> 
>   * igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1:
>     - shard-snb:          [FAIL][266] ([i915#11832] / [i915#13734]) -> [PASS][267] +1 other test pass
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-snb5/igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1.html
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-snb6/igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible:
>     - shard-tglu:         [FAIL][268] ([i915#11832] / [i915#13734]) -> [PASS][269]
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-tglu-2/igt@kms_flip@plain-flip-ts-check-interruptible.html
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-6/igt@kms_flip@plain-flip-ts-check-interruptible.html
>     - shard-dg2:          [FAIL][270] ([i915#13734]) -> [PASS][271]
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-dg2-10/igt@kms_flip@plain-flip-ts-check-interruptible.html
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-11/igt@kms_flip@plain-flip-ts-check-interruptible.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1:
>     - shard-snb:          [FAIL][272] ([i915#13734]) -> [PASS][273]
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-snb4/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1.html
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-snb1/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1:
>     - shard-tglu:         [FAIL][274] ([i915#13734]) -> [PASS][275] +3 other tests pass
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-tglu-2/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-6/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-dg2:          [SKIP][276] ([i915#3555] / [i915#8228]) -> [PASS][277] +2 other tests pass
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-dg2-5/igt@kms_hdr@invalid-metadata-sizes.html
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-11/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_joiner@invalid-modeset-force-big-joiner:
>     - shard-dg2:          [SKIP][278] ([i915#12388]) -> [PASS][279]
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-dg2-3/igt@kms_joiner@invalid-modeset-force-big-joiner.html
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-10/igt@kms_joiner@invalid-modeset-force-big-joiner.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-rkl:          [SKIP][280] ([i915#9519]) -> [PASS][281] +2 other tests pass
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp.html
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@pm-tiling:
>     - shard-rkl:          [SKIP][282] ([i915#12916]) -> [PASS][283]
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-rkl-5/igt@kms_pm_rpm@pm-tiling.html
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-8/igt@kms_pm_rpm@pm-tiling.html
> 
>   * igt@kms_vblank@ts-continuation-dpms-rpm:
>     - shard-dg2:          [WARN][284] -> [PASS][285]
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-dg2-6/igt@kms_vblank@ts-continuation-dpms-rpm.html
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-2/igt@kms_vblank@ts-continuation-dpms-rpm.html
> 
>   * igt@kms_vblank@ts-continuation-dpms-rpm@pipe-a-hdmi-a-3:
>     - shard-dg2:          [SKIP][286] -> [PASS][287]
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-dg2-6/igt@kms_vblank@ts-continuation-dpms-rpm@pipe-a-hdmi-a-3.html
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-2/igt@kms_vblank@ts-continuation-dpms-rpm@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-1:
>     - shard-glk:          [INCOMPLETE][288] ([i915#12276]) -> [PASS][289]
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-glk8/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-1.html
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-glk2/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-1.html
> 
>   * igt@perf@polling@0-rcs0:
>     - shard-rkl:          [FAIL][290] ([i915#10538]) -> [PASS][291] +1 other test pass
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-rkl-4/igt@perf@polling@0-rcs0.html
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-5/igt@perf@polling@0-rcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-90:
>     - shard-dg1:          [SKIP][292] ([i915#4538] / [i915#5286]) -> [SKIP][293] ([i915#4423] / [i915#4538] / [i915#5286])
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-dg1-13/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg1-16/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          [SKIP][294] ([i915#6095]) -> [SKIP][295] ([i915#14098] / [i915#6095]) +2 other tests skip
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-rkl-8/igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-5/igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          [SKIP][296] ([i915#14098] / [i915#6095]) -> [SKIP][297] ([i915#6095]) +5 other tests skip
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-dg2:          [SKIP][298] ([i915#9424]) -> [FAIL][299] ([i915#7173])
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-dg2-6/igt@kms_content_protection@lic-type-0.html
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-11/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-dg1:          [SKIP][300] ([i915#9433]) -> [SKIP][301] ([i915#9424])
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-dg1-13/igt@kms_content_protection@mei-interface.html
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg1-16/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-dg2:          [SKIP][302] ([i915#7118] / [i915#7162] / [i915#9424]) -> [SKIP][303] ([i915#7118] / [i915#9424])
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-dg2-10/igt@kms_content_protection@type1.html
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-2/igt@kms_content_protection@type1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-glk:          [INCOMPLETE][304] ([i915#12745] / [i915#4839] / [i915#6113]) -> [INCOMPLETE][305] ([i915#12314] / [i915#12745] / [i915#4839])
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible.html
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-glk8/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:
>     - shard-glk:          [INCOMPLETE][306] ([i915#12745]) -> [INCOMPLETE][307] ([i915#12314] / [i915#12745])
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1.html
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-glk8/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible:
>     - shard-snb:          [FAIL][308] ([i915#13734]) -> [FAIL][309] ([i915#10826] / [i915#13734])
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-snb4/igt@kms_flip@plain-flip-ts-check-interruptible.html
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-snb1/igt@kms_flip@plain-flip-ts-check-interruptible.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible@a-vga1:
>     - shard-snb:          [FAIL][310] ([i915#13734]) -> [FAIL][311] ([i915#10826])
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-snb4/igt@kms_flip@plain-flip-ts-check-interruptible@a-vga1.html
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-snb1/igt@kms_flip@plain-flip-ts-check-interruptible@a-vga1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:
>     - shard-dg1:          [SKIP][312] ([i915#4423]) -> [SKIP][313]
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
>     - shard-dg2:          [SKIP][314] ([i915#10433] / [i915#3458]) -> [SKIP][315] ([i915#3458])
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary:
>     - shard-dg2:          [SKIP][316] ([i915#3458]) -> [SKIP][317] ([i915#10433] / [i915#3458])
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-rkl:          [SKIP][318] ([i915#1187] / [i915#12713]) -> [SKIP][319] ([i915#12713])
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-rkl-3/igt@kms_hdr@brightness-with-hdr.html
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-8/igt@kms_hdr@brightness-with-hdr.html
>     - shard-dg1:          [SKIP][320] ([i915#1187] / [i915#12713]) -> [SKIP][321] ([i915#12713])
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-dg1-13/igt@kms_hdr@brightness-with-hdr.html
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg1-14/igt@kms_hdr@brightness-with-hdr.html
>     - shard-tglu:         [SKIP][322] ([i915#12713]) -> [SKIP][323] ([i915#1187] / [i915#12713])
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-tglu-10/igt@kms_hdr@brightness-with-hdr.html
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-tglu-2/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
>     - shard-dg1:          [SKIP][324] ([i915#13522]) -> [SKIP][325] ([i915#13522] / [i915#4423])
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-dg1-18/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg1-12/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-rkl:          [SKIP][326] ([i915#4281]) -> [SKIP][327] ([i915#3361])
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-rkl-8/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
>     - shard-dg1:          [SKIP][328] ([i915#11520] / [i915#4423]) -> [SKIP][329] ([i915#11520])
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-dg1-12/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg1-18/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr@pr-primary-blt:
>     - shard-dg1:          [SKIP][330] ([i915#1072] / [i915#9732]) -> [SKIP][331] ([i915#1072] / [i915#4423] / [i915#9732])
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-dg1-18/igt@kms_psr@pr-primary-blt.html
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-dg1-12/igt@kms_psr@pr-primary-blt.html
> 
>   * igt@kms_tiled_display@basic-test-pattern:
>     - shard-glk:          [FAIL][332] ([i915#10959]) -> [SKIP][333]
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16512/shard-glk1/igt@kms_tiled_display@basic-test-pattern.html
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/shard-glk8/igt@kms_tiled_display@basic-test-pattern.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10538
>   [i915#10647]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#10826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826
>   [i915#10959]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10959
>   [i915#10991]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10991
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
>   [i915#118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/118
>   [i915#11832]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11832
>   [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12169
>   [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
>   [i915#12276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12314]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314
>   [i915#12358]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12358
>   [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
>   [i915#12518]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12518
>   [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
>   [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
>   [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
>   [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
>   [i915#12761]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12761
>   [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
>   [i915#12916]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12916
>   [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
>   [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
>   [i915#13008]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008
>   [i915#13029]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13029
>   [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13193]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13193
>   [i915#13335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13335
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13363]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13363
>   [i915#13520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13520
>   [i915#13522]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522
>   [i915#13550]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13550
>   [i915#13653]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13653
>   [i915#13691]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
>   [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
>   [i915#13723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13723
>   [i915#13734]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13734
>   [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
>   [i915#13781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781
>   [i915#13790]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13790
>   [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
>   [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
>   [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
>   [i915#14152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14152
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
>   [i915#3361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
>   [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
>   [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
>   [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7162]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7162
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
>   [i915#9100]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9100
>   [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
>   [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
>   [i915#9878]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9878
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_16512 -> Patchwork_148705v1
> 
>   CI-20190529: 20190529
>   CI_DRM_16512: c3be982edfd7bb6de5d4d3346d5d4189d7453d8d @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8356: 4db4ba9b619fefa181cf0fc73cf8c35d282c61ae @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_148705v1: c3be982edfd7bb6de5d4d3346d5d4189d7453d8d @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148705v1/index.html
