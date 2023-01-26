Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2151167D0B0
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jan 2023 16:55:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE96610E2A5;
	Thu, 26 Jan 2023 15:55:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72B1410E138
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Jan 2023 15:55:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674748539; x=1706284539;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=HySX7+U+/RV/wsKXsUx9tzgl4kOdbVE1UygDlwUGAaA=;
 b=QwfeT0W0lnjFFupldoYJrCXj4pb9vi85OTyJHHRt5EksFC5eDx1jZSei
 rkzT6vtQMHPsqvrKlC+7ebKulHB5z+RullytBUU75+axne17sD1PAyz+q
 KwnGW0EZ7ruwdc6RGwI7ey/AIrYSwjPZo72pZLaBYEpL6J7G2NpQ/rRc1
 ASjUtBaDatJUTLp/mNndUTWoggyB5lf6LcXrB362cFnNKIXKG9V/EhgAF
 ACKhJ24dhS7wRniE+XlEV1zdzM2xkR3iNOApJdGqBkAfcHzkzm5JqVVPC
 35R6zkfth7B+UgnGXHTW+YVOCFFh5LBMrE+mYc6PjLwXaGvj2wbRTkG9k w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="391376377"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="391376377"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 07:55:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="640370842"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="640370842"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 26 Jan 2023 07:55:38 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 26 Jan 2023 07:55:38 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 26 Jan 2023 07:55:38 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 26 Jan 2023 07:55:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BkRC8DlAWT32mYh42dYh0JqRhTWZI3rmRaQFmJlkTUlAKFfIaBDV6kuqzbjk6wEIYiZgyuKA0DiudLBIGn48KfkmbsWIOuDRQdk+I64q12Tb4dlEHDNe17OeYkVcB/wWsMo0nOgrTbXXhSigBar6MEaF7fSB8gVTvqiHQbe1KkE3k4aiu1u/eJy0fyZNbKc6rioThEIuxO9cZ58ECajXnJSl/w7JH2jaBh/38vvq2rnzTOKuUxugF8kj8JNY1Mk+BQ+uB+0TqqXZ/sbcuiysxS/wSycrf+i1ek5ust8RdSSyQ4BQ0ph9DqxbGPvSkdBXyWksZ6E+UI6rysUcBQzCLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YObuSqEpKfP7BnwD3TSncnfcPtD6KLug+Yi5sckK8b0=;
 b=Wi0yvt8hxnCD2SSZZS4fVYuljp1Y5+uycJA/lvY0rvr7BoFyV6ZDKONtNQBBKSG+2cShZdNBcPq8qDWWD+Rek2BDsckRYcZ3mawDaqcUFG1SL4oR0aSeHt+E+BkMIm4/TfsFyG2VFdG+ncXDmdEoho10DDOpx8JmYq5lZeFIw2nYwFa9/aO6/+auHAp8nQLR2P284dL/G2yQrGsgZxpdPD8hIco56n4sbdeA0kksXiev6j4H40MPoWEuyWSgtD/EjRdNRwNo5RG4OVqcegjzCeC24rvDye86mujCWmoAtMcWBaqALY7kaFOulmx6AxBRvF8oxzZIkhKZOhM09u60sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SA2PR11MB5162.namprd11.prod.outlook.com (2603:10b6:806:114::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.22; Thu, 26 Jan
 2023 15:55:27 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e%4]) with mapi id 15.20.6043.022; Thu, 26 Jan 2023
 15:55:27 +0000
Date: Thu, 26 Jan 2023 07:55:24 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y9KibBOTZ9euS8b2@mdroper-desk1.amr.corp.intel.com>
References: <20230125234159.3015385-1-matthew.d.roper@intel.com>
 <167474471095.538.2968550746551007164@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <167474471095.538.2968550746551007164@emeril.freedesktop.org>
X-ClientProxiedBy: BY5PR03CA0024.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::34) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SA2PR11MB5162:EE_
X-MS-Office365-Filtering-Correlation-Id: 31b52647-932d-4b56-d9ee-08daffb5be5b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5nSN34R3V6DDryrKQ1ZmT0evLdGzgwe/xH224SP0IwEVPyJUQANikqJPD1p3J8tuAGwkdBZnQQuzp/dJXEI5RjSgy8iCtce3yBWysfC79lmg2zMggRibNiX9Kx/zOSbIFhE2IAc0b1I1CcHI6A+MwgvZ5Qa967+GqZ0oQb3fEVGNkP/jpI3v6GE+Fso+e5jJcMYcxHDtGGQUJPchAXVWXNrxGQkmmOH4ABotNYopFz5A7OrPT6AMKMJth1QzJBp9xawkB7qadkSva0oEB+1zhHmO143Uhmwvhvl5whAQ0x9zkkCRPW7yAiXf5m1gMxHC2+SYThNpUQq20jpQSVX9aTSk0Q6d57qVgDrqSLt3daQaS6CjZigU6eTEwi8BTxStrrrIBl3ecS/J3wnLz6k+v4iIoWRq8Ti/5cN+9Xo99z62dagjsLpvrAkFiHjYcGrM1odjgGWUWy457aRoa2L/3hK3YXbzUHZ07HOId8bv4az85je47yVXhp5WWz2840qXZYY9hyIZ2/UWZBlkOOkNLrUSbs2n6TXn4l+/8s3UxBNBuWq5UJ74IOpnao82DTrf+TvbYz3wlGLYPC/de0t8IRqQrS57J82PyARjTSEhenwPOZIo6A/8wx5E7X0C0feNddwYQaqQkOAui/CTWiIT70dDIpABBF0M3yX/bpn/nbZqNUhuxWRBR2AWeKopWKS4
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(376002)(136003)(366004)(346002)(396003)(451199018)(83380400001)(316002)(6666004)(6506007)(6486002)(478600001)(30864003)(5660300002)(2906002)(66556008)(66476007)(66946007)(41300700001)(6916009)(8936002)(966005)(82960400001)(86362001)(38100700002)(26005)(6512007)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MfF2jgYKuX2CzRvOyC3thIalJ+LHqV5M/F/VAW6YhGgn2kPOgvijOfaa3A5q?=
 =?us-ascii?Q?EcC0Q7GJeTqvfJ0YTi9CHEuA8LrxDJhiYG+uSa2VR1TXY3UOUNceApNS51L+?=
 =?us-ascii?Q?qOIT4yZXeCRfsCMWwTLMd7oRFuuSb1L+f6+Tqyvl0sTtTlnoO/khH4x8mmur?=
 =?us-ascii?Q?mzsS5zUBK4PdoVf6uzlakKHbrZalIJ7f2kyGZ5of9pvfa8A57yRLazQKk2Ly?=
 =?us-ascii?Q?yW0wSwprHwGPX5JauR3wkIaJSgZL56C09cHR/wuaGUIe4YebacYgHTwu/oXG?=
 =?us-ascii?Q?nltfTX5YEydondlTUTdPJ876SbrTMrhudNQw9uuNup0EFscesWAiuE1KSwYQ?=
 =?us-ascii?Q?2h2tYZ7J43TU0vdqHoq0pjMihePP3r4X6oqxv9jsz1EWotOO7b8B4wYQ5Nqp?=
 =?us-ascii?Q?Cd2SN5J9XRNuFlgupY+QdHY4Qchoap31FXsHxzXmmTkMwgNdVrLOP5D8H6ID?=
 =?us-ascii?Q?x93BIcE9zvBGZFS23aV3NxUcmXQY2RJxFv+kGV2Bf0AuaIkMcCq+qgRshhLe?=
 =?us-ascii?Q?+lOmRA8pbu4TCBUAXS4atFJs36XOUDra/+fFcDxqzB0ISSEDLFcQA6ACKjL8?=
 =?us-ascii?Q?f0ddmIzgbywGuI9dMHd3TXKIK86ejxEM0ejjf6+MJ4kaHWyMbCsCRtcF0FmJ?=
 =?us-ascii?Q?L4lYkYSgTSH0W24Q4Sryfay80IM06WrhIFWoVIv+iOkr4TsJJaJbYy2dc+OP?=
 =?us-ascii?Q?Vn84mSIx4XN/sQW9ecSNEmOUlIzZLp4IQx6RD2cQxxAq5edR1Ook1RZKS4HL?=
 =?us-ascii?Q?eT8QVgjwrRNnFqp1gwuQsFRwyJhHTFhmJeVa86tgcpn0HOT/89GwTcvaT+PD?=
 =?us-ascii?Q?lVCXcjV0oZmxPyGmib/IFtF1bsOUYe5fdd8f/8gytyjLW03uasZ2pIb0ulke?=
 =?us-ascii?Q?qJrdcnW+Y5RZPYCqyRNr46LaEN/cbpqJKPsyT5R4ZB/jHCj6E66DJnbySQQP?=
 =?us-ascii?Q?YZA5/ZIvntgUiM9m8Gytd8koO2EexwAbPbaYp4qa659z/hlyVrzE8ICO63WC?=
 =?us-ascii?Q?r4pqq2YW35tJdmGi/SF6/jefJ5NnsXUsHst2DxRBQ89nPHvxYrHflwVziXfH?=
 =?us-ascii?Q?xhvXmtdPqdkzt1xXaSM257RYCrYOs8xTF5OQRBCxnFUJAaPZFWZ44PRbSVQ5?=
 =?us-ascii?Q?Y3sWWBaHa4QCHJOgzhpDVrhGpp3abZ2amPFc5rgs8Hfv0FgHQpXHMn42T2c+?=
 =?us-ascii?Q?ARZaFTooBKQaGF01HD5DZ8bydH8yAT4ePfWLbe2zRbGx/sq30JexmaqVoV85?=
 =?us-ascii?Q?lSWC5hWK2LE1tTbW/si19iO/Qb6Mqj1T9rxb0f2aQAQ3ksVC/C5P5e+XM52F?=
 =?us-ascii?Q?fcs3bVcpJbsyYXlRZdNa/Pg35D61b3GbHCHji5knCXiagBHBRJGYoji/+Vtx?=
 =?us-ascii?Q?2MCwBwIHDV28o9XZEzA4pzxEAAAbUnp62rqPTpzn0BYtxURutNFCtSkvIqT8?=
 =?us-ascii?Q?bs1W3QxKbQ8OeKKKpJTjl6AXpzfk4kAP7COEjd1QQY01/DjSasSBBdSQAgwz?=
 =?us-ascii?Q?6M2sT18EwKQAC1DuaI7ETALCWnfAXyHtkOpirou5XIq2Muuk26g+PAu1CoIN?=
 =?us-ascii?Q?u5Bvo4IxEX/pI1D/VbBxeK+X2h7Cwt3IO6/+MAJFSHW89F4HKFfwxU5yc7wq?=
 =?us-ascii?Q?5g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 31b52647-932d-4b56-d9ee-08daffb5be5b
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2023 15:55:27.6231 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JZzKOr66zgNs3dDetrgRJF1JbY6sym0GF0ToZNmLXJ7eXm/Nhhp1YS7Mamqnm8NEWT3c3FQfinHGuQSL8xmqib83cTKzcTyny5ROKl9MtZY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5162
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/3=5D_drm/i915/xehp=3A_GAM_registers?=
 =?utf-8?q?_don=27t_need_to_be_re-applied_on_engine_resets?=
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

On Thu, Jan 26, 2023 at 02:51:50PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [v2,1/3] drm/i915/xehp: GAM registers don't need to be re-applied on engine resets
> URL   : https://patchwork.freedesktop.org/series/113370/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12640_full -> Patchwork_113370v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113370v1/index.html

Applied to drm-intel-gt-next.  Thanks Gustavo for the reviews.


Matt

> 
> Participating hosts (12 -> 10)
> ------------------------------
> 
>   Missing    (2): pig-skl-6260u pig-kbl-iris 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_113370v1_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@kms_rotation_crc@sprite-rotation-90:
>     - {shard-rkl}:        [SKIP][1] ([i915#1845] / [i915#4098]) -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/shard-rkl-1/igt@kms_rotation_crc@sprite-rotation-90.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113370v1/shard-rkl-6/igt@kms_rotation_crc@sprite-rotation-90.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_113370v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [PASS][3] -> [FAIL][4] ([i915#2842])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113370v1/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
>     - shard-glk:          [PASS][5] -> [FAIL][6] ([i915#2346])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113370v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - {shard-rkl}:        [FAIL][7] ([i915#6268]) -> [PASS][8]
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/shard-rkl-2/igt@gem_ctx_exec@basic-nohangcheck.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113370v1/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_eio@kms:
>     - {shard-dg1}:        [FAIL][9] ([i915#5784]) -> [PASS][10]
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/shard-dg1-14/igt@gem_eio@kms.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113370v1/shard-dg1-15/igt@gem_eio@kms.html
> 
>   * igt@gem_eio@suspend:
>     - {shard-rkl}:        [FAIL][11] ([i915#7052]) -> [PASS][12]
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/shard-rkl-3/igt@gem_eio@suspend.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113370v1/shard-rkl-5/igt@gem_eio@suspend.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - {shard-rkl}:        [FAIL][13] ([i915#2846]) -> [PASS][14]
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/shard-rkl-1/igt@gem_exec_fair@basic-deadline.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113370v1/shard-rkl-5/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-glk:          [FAIL][15] ([i915#2842]) -> [PASS][16]
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/shard-glk3/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113370v1/shard-glk6/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - {shard-tglu}:       [FAIL][17] ([i915#2842]) -> [PASS][18]
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/shard-tglu-3/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113370v1/shard-tglu-1/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_reloc@basic-gtt-read-noreloc:
>     - {shard-rkl}:        [SKIP][19] ([i915#3281]) -> [PASS][20] +1 similar issue
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/shard-rkl-3/igt@gem_exec_reloc@basic-gtt-read-noreloc.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113370v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read-noreloc.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-display:
>     - {shard-rkl}:        [SKIP][21] ([i915#3282]) -> [PASS][22] +1 similar issue
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/shard-rkl-3/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113370v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
> 
>   * igt@gen9_exec_parse@valid-registers:
>     - {shard-rkl}:        [SKIP][23] ([i915#2527]) -> [PASS][24] +1 similar issue
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/shard-rkl-3/igt@gen9_exec_parse@valid-registers.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113370v1/shard-rkl-5/igt@gen9_exec_parse@valid-registers.html
> 
>   * igt@i915_hangman@gt-engine-error@bcs0:
>     - {shard-rkl}:        [SKIP][25] ([i915#6258]) -> [PASS][26]
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/shard-rkl-5/igt@i915_hangman@gt-engine-error@bcs0.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113370v1/shard-rkl-3/igt@i915_hangman@gt-engine-error@bcs0.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - {shard-rkl}:        [SKIP][27] ([i915#1845] / [i915#4098]) -> [PASS][28] +9 similar issues
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/shard-rkl-3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113370v1/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - {shard-rkl}:        [SKIP][29] ([i915#3955]) -> [PASS][30]
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/shard-rkl-3/igt@kms_fbcon_fbt@psr-suspend.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113370v1/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - {shard-rkl}:        [SKIP][31] ([i915#1849] / [i915#4098]) -> [PASS][32] +6 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113370v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_psr@basic:
>     - {shard-rkl}:        [SKIP][33] ([i915#1072]) -> [PASS][34]
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/shard-rkl-3/igt@kms_psr@basic.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113370v1/shard-rkl-6/igt@kms_psr@basic.html
> 
>   * igt@perf_pmu@idle@rcs0:
>     - {shard-rkl}:        [FAIL][35] ([i915#4349]) -> [PASS][36]
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/shard-rkl-6/igt@perf_pmu@idle@rcs0.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113370v1/shard-rkl-3/igt@perf_pmu@idle@rcs0.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3547]: https://gitlab.freedesktop.org/drm/intel/issues/3547
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#6016]: https://gitlab.freedesktop.org/drm/intel/issues/6016
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
>   [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
>   [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
>   [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
>   [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
>   [i915#7037]: https://gitlab.freedesktop.org/drm/intel/issues/7037
>   [i915#7052]: https://gitlab.freedesktop.org/drm/intel/issues/7052
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7128]: https://gitlab.freedesktop.org/drm/intel/issues/7128
>   [i915#7294]: https://gitlab.freedesktop.org/drm/intel/issues/7294
>   [i915#7443]: https://gitlab.freedesktop.org/drm/intel/issues/7443
>   [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
>   [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
>   [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>   [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
>   [i915#7707]: https://gitlab.freedesktop.org/drm/intel/issues/7707
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7949]: https://gitlab.freedesktop.org/drm/intel/issues/7949
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12640 -> Patchwork_113370v1
>   * Piglit: piglit_4509 -> None
> 
>   CI-20190529: 20190529
>   CI_DRM_12640: cc7783f223ac644092bb8788f0750fc5c68aa00e @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7136: 31b6af91747ad8c705399c9006cdb81cb1864146 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_113370v1: cc7783f223ac644092bb8788f0750fc5c68aa00e @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113370v1/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
