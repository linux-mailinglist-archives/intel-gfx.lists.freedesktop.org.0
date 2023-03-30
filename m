Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9199A6D0F87
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Mar 2023 21:59:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 319D310F014;
	Thu, 30 Mar 2023 19:59:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E05F010F014
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 19:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680206347; x=1711742347;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=SVyGUWfpNVxGhXLwhdi9Px2dgF6n1fYirUBkbsuzuak=;
 b=Rd6rUX/Ouyu6+f4Cr39esWzo8lLw2BC0788C9IDFikeq+kuouq2Znhpn
 MNYa4WTzQ0/uFtIvWXTxMsDVhEthqm6DPIrH8A1Jw12wBLPAHtwRtZwmu
 zzLHlvQBbxYbXxvFmwXhtk02mx5jp2cguk/P8Z+OPQLYBElD7PrtKh/db
 wyJ5IWAlrmvR0rjDUnlToUeFyNyjC3dC/Q6taaZoE060R3Y+aU0SoIWuT
 p80tF3+hk6rg6HKrU3fdzRsntDI8C1ftKBbe/aC9tRBQV5IwrZoElDO3k
 TLxEUsSzj6Zf+1Z+5w74Sovjd5sRowWjcZsxxp3bd6ArFsJBPKLkySAcv A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="342917558"
X-IronPort-AV: E=Sophos;i="5.98,305,1673942400"; d="scan'208";a="342917558"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 12:59:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="930866963"
X-IronPort-AV: E=Sophos;i="5.98,305,1673942400"; d="scan'208";a="930866963"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 30 Mar 2023 12:59:07 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 30 Mar 2023 12:59:06 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 30 Mar 2023 12:59:06 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 30 Mar 2023 12:59:06 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 30 Mar 2023 12:59:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h/x6fyCc2lo9tVP8LXT1iYx9Zu18yA1CPO4F4RGSgSRF0VwpnmpPOv6z/R7EkOH+NTQaxZN12Wr1W6Mam3HFSk9HJ4GZ1zGjSBHSMckjWTWD38RwSQ7g1yhIbXZ9z7TcMgyw4cUlSFuSgFT4kltSYpeObCai++oqC8+1XsTZx/EE/T64kGe2jH7V70fMAHIF0oYflDbJw/WqLkb6GPORuSaXdRmFZRx9vsAlCj4P1F79uFqWVPXPJ9iX5t4LNAAt4XnDXnG5FmyoPLTTnHAIha45uBKUHUhcG5Gqck7mJNSEF5LSRpCa76cvHkWtFaAuI8dBptjyOzccIS80SIeGug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qxwalv+8WuqaX1Iofs9Hkw3lVx1AAlCg9GwXACIK//0=;
 b=gZwXcSRtjjZj2VKddcx1ZWmezEYUzbX+YaC1OYLWckNgu/Bdv8rsM1VaFPtXndsZWbVE+wZVSvCfd911hDjhTsIkxuIf65vXv30PNLT3TTE2VWV0iv1QH59obD21pJ4yL31+miQS6aDwRzvRaGC4P1osiVKUOpkbnClFZzm5ByOz6QOPFAdS9/IgfR4bL8nqXVf5/6mkFS7tS07jhVESQkHrpmO3EZZrMk/2aQmVipmRrpYHUchQHqh1osF8x+ubHruaFoVLsC/X2OXxC/tvPaSTlo237XoJN38OviO19bD9JWlAlC1nCR1tbYAESD7vDhKwCt3WQjrsW7EedyTllw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CY8PR11MB7900.namprd11.prod.outlook.com (2603:10b6:930:7a::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6254.22; Thu, 30 Mar 2023 19:59:01 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::1c61:b69d:4ca:10d0]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::1c61:b69d:4ca:10d0%7]) with mapi id 15.20.6222.033; Thu, 30 Mar 2023
 19:59:01 +0000
Date: Thu, 30 Mar 2023 12:58:57 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20230330195857.GP4085390@mdroper-desk1.amr.corp.intel.com>
References: <20230329212336.106161-1-gustavo.sousa@intel.com>
 <168019945324.18828.13741672049198747472@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <168019945324.18828.13741672049198747472@emeril.freedesktop.org>
X-ClientProxiedBy: BYAPR11CA0074.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::15) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CY8PR11MB7900:EE_
X-MS-Office365-Filtering-Correlation-Id: eb8de247-a4f6-4580-3de5-08db3159348b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VFunf3602dY7unoS8evpmT4lEeMIDa+7e/g70weGVdYLuyHs7cFjlJk04TFq81/OZDrHHpc6aqww5jZcegXOu/2teNfXXSrEBSasvvpHN2B69+DFrkq670ee0zhk8Hrl+hTVyvTUrGqGxzE0IO1zQEdXwE5G+XjTjFACKQo/qNw5F1mxmOkuSMStGD3n18G98F25xMleJ47q+hD2iQe15RH4/58gH8720gGnfe4s9hj+47jkRotRLlJcMLvsUUzIqqTWI+NpHa9sBIhsYflkac2vPv3/8gaK0OF5+IIICXuVS3L0IEkYG/XeJHNnYbUkGps8gCtkmp8iZ0mAoRv8E6+omtWt3k2SBQXojNqcVOxerHTs068VQIR61jhb1hPBLWTDn+3L8+REE5ArZ/lhhJnDyKcPf4kMYLnRcJIjkrzDl7W12glaFi0D/N8zfLMrL7QeelpVRZRP73uFGSuo0OHXcOlWf8vQc+MtItnAUNewQVT6GBuUSqwIe7cuWQx0nQUyofwlFYiewlWx2FX77aFy9TFZlOmkFPR24Bg7XephFyJgCbWFycfJbl9gWYwExCS1unN6mHX4nHuj+fqA8g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(396003)(136003)(346002)(366004)(451199021)(38100700002)(86362001)(82960400001)(33656002)(966005)(5660300002)(186003)(2906002)(30864003)(107886003)(6512007)(1076003)(6506007)(26005)(66946007)(6916009)(66556008)(316002)(478600001)(8936002)(6486002)(41300700001)(66476007)(4326008)(6666004)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Wq9MMDko3Mez0NHLRwN978GcFlJpThqIxTxsGlmy2g1tXzyq7/YfSxFiS5JY?=
 =?us-ascii?Q?3ltywOh/qAzalnahwwwQT3xfBzqWn37E3hdAEyim5ORFvoHAOEoByZNjYuSm?=
 =?us-ascii?Q?yz9nGSR9338HE3nFBI4tZbuwxLHpuXRNJM6LOIl+e6THgrVmr0KQzxX6R4gW?=
 =?us-ascii?Q?h5seVlGSx0li9yciewv0CwcGJMAR59AwZgPdvFHVNpN91RC/2Vq7T+NFkYJN?=
 =?us-ascii?Q?cwAJU6/t+3Y8yopTNxApGyHEWH25iFQfzzn9FMN0HXPA0dADCzcl0Mt2MEQZ?=
 =?us-ascii?Q?Frz767v3anv8TYLmnYQZFZ++yCSgpuWzjKK6qO+YCl23C7omd6Q9R/qaeWYk?=
 =?us-ascii?Q?qspllKkd/VNszilmnNwcK9R7PTY/IweI6lDKDznEDqKytuwm7QQm+OCoZduv?=
 =?us-ascii?Q?ylb52VUbX80ZqatOqRuBv9pJINgYTXoBaTqPyZ50jZ9kf0FUlT0pr7s7D83F?=
 =?us-ascii?Q?quvGCO0kDXGETOjvieI5XE3gyQ6Tf5nziVdW9Gj7qs5sxB92g26gLKBe8HHU?=
 =?us-ascii?Q?hoNivLMRJxAck0EC6s/vO2jpUTIhcZINsjrz7BbCDZpmtTZfn4G68hC6e/Mm?=
 =?us-ascii?Q?ndeudza2RLnSnwPIIX7w3CutHMX8UdlHiUXC0WXIupJlU+l/QfYDfsjJhD9I?=
 =?us-ascii?Q?bSaHkdLZGGrx6fFCEOETwhVE/1ra10vFV0NZl2eL4+MbhkTj6f7cIdZ7pXE7?=
 =?us-ascii?Q?HAEYzPRLhQi9x8JzFcnFgGxGTMgCxQaBp+maOX0+BEyesmRTKtQewZPbNy36?=
 =?us-ascii?Q?mLcDcxmvzqqoK7kX3Znhp5bx8PfgcK75TC/XNdMwRxuAa/uwNIt8txxjP3Hs?=
 =?us-ascii?Q?dG+aClMA/mQCdW7AmLARbWzeXwSDlCun6N0fYMxkFPp9UKK2NneRDHriFtTd?=
 =?us-ascii?Q?egstAJi6PvYW1DOFwIOLwLcfoFw4Vi0OZ4sXpx9IfYbid9sAWHU1mhkTlk18?=
 =?us-ascii?Q?OmnXHpKhEWVjn3GKq02OPmviQ6U2h7gSWVv+KnScc/TgDROWtS9tK95vPsh1?=
 =?us-ascii?Q?rlMLmW4Q1gP+NXQd3H/etuqMX498ayh3rfhh0ApLR2x+MMZZtc5EGitZsrVS?=
 =?us-ascii?Q?yzyRJ/8CWMxARvQ7kUWiplRK748DXP+D5VvOwEnjHoEsJ9Kw+5su+Y+KwuDX?=
 =?us-ascii?Q?DHc3OjcLWYCLDsc896eWWRds4iCLdrMU7KjnB7J3d3RFIZfwF3X3dv6Ul3OJ?=
 =?us-ascii?Q?8V5XKLH/j2uywYdAhffqkNsLSS01UZChqyERsPuLi1NAL8SyK+jVJuNTBAaF?=
 =?us-ascii?Q?FYkF1Y772D8RnXsdNyXutzzmzKXv2TgMarB+0ebkkGNnntsL3jTQf+UVYU31?=
 =?us-ascii?Q?cdyfu+n9rjKggYhd4DtqIF5ajeVatWEo2ymBcoDu/RuLoEp1FcLLpxiOJEYt?=
 =?us-ascii?Q?5kLEW4eK89tiOvlSN+cabdPMoRV528TRtx+bn+zxGMKppi1938Xdop+xuZRw?=
 =?us-ascii?Q?w1j8saiE+oDilxZfusXpn6RkBvgAXKPLx5u8Yn137QBy9wimlxUHsIuPA/d+?=
 =?us-ascii?Q?LhD9rlAPdFgNiPR8Hnicn7RLU1lXXybBkppvPHxlfbgxnn92axhPwDQRpsYv?=
 =?us-ascii?Q?qNvt3FjF48ztwPAkNprDAjo8KNvjeaNI1cjet+oBgmengDbn4ihpS5rhJlVU?=
 =?us-ascii?Q?9g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: eb8de247-a4f6-4580-3de5-08db3159348b
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2023 19:59:00.9684 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: upB8XkrspvKmRQMOt2kDKgueN6N5zRquaDKF6Ax7YBbcu6P3AlsYLRQFaEki+8Xv8UAAuDU7ElOfcptZAx2IgHDehqBkVeHx1PAgAj2feeA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7900
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_MTL_Wa=5F14017066071=2C_Wa=5F14017654203_and_Wa=5F22015279794_?=
 =?utf-8?b?KHJldjIp?=
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

On Thu, Mar 30, 2023 at 06:04:13PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Add MTL Wa_14017066071, Wa_14017654203 and Wa_22015279794 (rev2)
> URL   : https://patchwork.freedesktop.org/series/115821/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12937_full -> Patchwork_115821v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**

Applied to drm-intel-gt-next.  Thanks for the patches.


Matt

> 
>   No regressions found.
> 
>   
> 
> Participating hosts (7 -> 7)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_115821v2_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-apl:          [PASS][1] -> [FAIL][2] ([i915#2846])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12937/shard-apl1/igt@gem_exec_fair@basic-deadline.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115821v2/shard-apl2/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [PASS][3] -> [FAIL][4] ([i915#2842])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12937/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115821v2/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_schedule@thriceslice:
>     - shard-snb:          NOTRUN -> [SKIP][5] ([fdo#109271]) +57 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115821v2/shard-snb2/igt@gem_exec_schedule@thriceslice.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [PASS][6] -> [ABORT][7] ([i915#5566])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12937/shard-glk7/igt@gen9_exec_parse@allowed-single.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115821v2/shard-glk1/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - shard-apl:          [PASS][8] -> [DMESG-FAIL][9] ([i915#5334])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12937/shard-apl4/igt@i915_selftest@live@gt_heartbeat.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115821v2/shard-apl3/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          [PASS][10] -> [FAIL][11] ([i915#2346])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12937/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115821v2/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - {shard-tglu}:       [FAIL][12] ([i915#6268]) -> [PASS][13]
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12937/shard-tglu-9/igt@gem_ctx_exec@basic-nohangcheck.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115821v2/shard-tglu-8/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_exec_endless@dispatch@rcs0:
>     - {shard-tglu}:       [TIMEOUT][14] ([i915#3778]) -> [PASS][15]
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12937/shard-tglu-5/igt@gem_exec_endless@dispatch@rcs0.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115821v2/shard-tglu-3/igt@gem_exec_endless@dispatch@rcs0.html
> 
>   * igt@gem_exec_whisper@basic-fds-forked-all:
>     - {shard-tglu}:       [INCOMPLETE][16] ([i915#6755] / [i915#7663]) -> [PASS][17]
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12937/shard-tglu-10/igt@gem_exec_whisper@basic-fds-forked-all.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115821v2/shard-tglu-8/igt@gem_exec_whisper@basic-fds-forked-all.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - {shard-tglu}:       [FAIL][18] ([i915#3989] / [i915#454]) -> [PASS][19]
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12937/shard-tglu-6/igt@i915_pm_dc@dc6-dpms.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115821v2/shard-tglu-2/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_rps@reset:
>     - shard-snb:          [DMESG-FAIL][20] ([i915#8319]) -> [PASS][21]
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12937/shard-snb4/igt@i915_pm_rps@reset.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115821v2/shard-snb2/igt@i915_pm_rps@reset.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3938]: https://gitlab.freedesktop.org/drm/intel/issues/3938
>   [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
>   [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
>   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
>   [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4884]: https://gitlab.freedesktop.org/drm/intel/issues/4884
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
>   [i915#6755]: https://gitlab.freedesktop.org/drm/intel/issues/6755
>   [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
>   [i915#7663]: https://gitlab.freedesktop.org/drm/intel/issues/7663
>   [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>   [i915#8319]: https://gitlab.freedesktop.org/drm/intel/issues/8319
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12937 -> Patchwork_115821v2
> 
>   CI-20190529: 20190529
>   CI_DRM_12937: 6848d3613c0a63382d00ff550c41394902bda903 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7226: 41be8b4ab86f9e11388c10366dfd71e5032589c1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_115821v2: 6848d3613c0a63382d00ff550c41394902bda903 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115821v2/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
