Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8167DB187
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Oct 2023 00:44:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5711210E1F1;
	Sun, 29 Oct 2023 23:44:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DE0810E1F1
 for <intel-gfx@lists.freedesktop.org>; Sun, 29 Oct 2023 23:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698623039; x=1730159039;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=QgdwGZfubLVqIxD4CQ2bRM8KUS76c/6tGRzC8T/M58k=;
 b=KukJb3wmK9Vlw1T+jly4xeeMxqQjYQLFMmYW8OyGaABhu08WA4/LiBHR
 oVN81cXGY6wu8pqsfllYCJyXzwsfsoNDhHIH7cFuXauqT7c/bdDSyuEj7
 1ojZs1P03SXeSCmrFkS9k3Mbmrs2eb6vDdwUppkXMZxToBpkiIpBkkWQJ
 kWHm1F/PD4sUZgWHSTEAdpTeyEI+wGDCJNBFRMMwLXUHWpxxDu02/WNZD
 3+Z/EKiWwBFF+sm2B28O2FIC5yVIKLTvNV8IIZUbeiK33yfIBBUlfYfpl
 CogvDNJKW1eSggXHpAAUpCCXC0KDX9vMvnHHaH/msUgZaTS4Y7j567yYM g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="419098592"
X-IronPort-AV: E=Sophos;i="6.03,262,1694761200"; d="scan'208";a="419098592"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2023 16:43:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="883696217"
X-IronPort-AV: E=Sophos;i="6.03,262,1694761200"; d="scan'208";a="883696217"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2023 16:43:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Sun, 29 Oct 2023 16:43:56 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Sun, 29 Oct 2023 16:43:56 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Sun, 29 Oct 2023 16:43:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gT74WyUiLMHWLE/hrtFgZ5NYlM63IpJVlC6fHK0JxBzcEG8Qp34h234t4mzX0QmYM/zm47glgvwavelQJuPiMxNsiBjyq/gjWuxMq7s/xoAFF7U8QqF/0dXFVpG8rOTXT3OiF3eypTl8Jiw+TBXOVIg8nQ2DTE2zuyGdy3oFUyxLtcovE/8KWi+PlRcL8dMTnStqcj8UFV81uB8t2jwdMg8oNgD+vlv2zshAZUKfBKAM9X6wB/xbrBFZwYC7Dl+cLjiHyDTmDmN7YHJqr7l6sRyTujKDeJALdYHkZsMilhqCm+4xJbBH/UlvmmModAtvOmcqDtweSAaWpkr4kSdeMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GNd9wOuW5RkCIEJ5Wm7ux4HOsPoBAYpRx0aq8H1aOJE=;
 b=RPgBv0VzuIOPT8YmAACo9xSc7FIQyysfjEXltbVKShxYlO2bYQt3ed+zt6MK5x07sCvnU4O6RoZ9TwxHNdFozFEv2DSW3GkPcHmaApzrYeN5/c7aqrJh5vUsFVE7ab08mqnQ7ZEzTRsbgXvtigUmFxKOwX7kCMDguJVmtZJYBFn4OrFGa2zGT8Tp1HKXaPfLJHu07NMguEdlQkLWC+rAtbZTfF06HCUtegv2LnuLVtwQeSQjSoqI2vjY8XYBJI7egdgJYZGbqRbIFobvXZq2FQnc1k+fqx5wKUcbhg8GTuTWemQZO3sygLC3t5xvlYECPwDdrmVSCHCl9ggVmadOgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DS0PR11MB7787.namprd11.prod.outlook.com (2603:10b6:8:de::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.27; Sun, 29 Oct
 2023 23:43:21 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::fab8:8ece:c8fe:fc7c]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::fab8:8ece:c8fe:fc7c%4]) with mapi id 15.20.6933.025; Sun, 29 Oct 2023
 23:43:21 +0000
Date: Sun, 29 Oct 2023 18:43:15 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <377ttaph4sutt6zel3ecma3fbb2wkmsxebzerev6gnihtiah5y@krwff7vhdyr4>
References: <20231026184045.1015655-1-lucas.demarchi@intel.com>
 <169850560002.21161.10305508428607722012@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <169850560002.21161.10305508428607722012@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR03CA0088.namprd03.prod.outlook.com
 (2603:10b6:a03:331::33) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|DS0PR11MB7787:EE_
X-MS-Office365-Filtering-Correlation-Id: 8eca7176-967c-46b7-8011-08dbd8d8d5b2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /Wnp/tyc8H+xOfvJJYv6R49vwrZBhZ/NdWiEhUdk29RMsyet19mItXYYU5L1hJFaeqTQEZG4HvppAMhv+mqjtRbEAPJTOk/3TCOOyPrtp/zuL2df+xYUZs5YBCsmwfDRqtEUYtVXQA3+dDSQkedcSp7EVUpov05pTZPCckOgojsVUWvdaTIX35UAiaHagxdvjZXPZ5o0aqcid2cgcoEsKvnPlFgAs1fQ+wLE1OPNa9KXGluv5AGgo72Jmv1DibiS44t6luwf2jlm91b8BEUfLkF7Oxu6mBK6AQJArB6UhQg4TIJlSpVxgEZJajv8uGQa4ehOJyGcBepEevMgY+5dn1I67UaCOu4eZDNrR15OnK2UotHJKm3jWfdTR9yfqMpQqMk977nhaBffAcsfTQdUpysDxF2LxadqTpd8cymFBW+yJLEcFKO5a74atskoY6NUF3gl6P6w2oBGz53wit9G3mqXxTs/lnJdSj4Lp6rKU37AUx9Q8BkdaPrg0+2ao50rTf0Zpz1XyiLHoP99qkyG4qKsrREYuYAampB/igDYxNo+TLZk2qPEINOOmIttkG4x
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(136003)(346002)(376002)(366004)(396003)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(83380400001)(6512007)(26005)(9686003)(2906002)(66946007)(66556008)(66476007)(6916009)(316002)(41300700001)(8936002)(5660300002)(6666004)(6506007)(966005)(6486002)(478600001)(82960400001)(38100700002)(33716001)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ixzXRIfpxm+wAl1wS79hPYXb1mhlN8BRhcpPv6VHebYunuS4Uf6uG4GdNG7z?=
 =?us-ascii?Q?O821FqDuEfUKSXp5qx6Q6S9OXyjLQLNp7Hl8h+GFt27ZzGLEaMY0nB6T+d4Y?=
 =?us-ascii?Q?kBLHC5K9vUbJg+BSOoQpf2qhhuvikD4eYo1+QsPh6NkAnmggObR7kqdI96eh?=
 =?us-ascii?Q?rF+3tmQdmt/oAJ/E6OuByH/SE3dwu3JE8PBFhqgHVw9fSTVQgCci/Io+TBr/?=
 =?us-ascii?Q?aWYHeJELRfKly5bp9IjIqtUJqi+DZ13doWuWWByEe4JwiIeasYJkg8D/bs5j?=
 =?us-ascii?Q?i8O258nMAB/nR9BRibDOObOCePTD5qqDrituNv4uIyad2heC+h6RKiJkTa8j?=
 =?us-ascii?Q?SNUtZThKFtBjm4lJ9iHxA5b76BiG4s5ywq/djLA/CMetn2QIX9Xzxai4KWEd?=
 =?us-ascii?Q?njDYnm1aovKXVsN/QKFc9Z2T5hqJiCT62NcHHeHsxcitYmvBGRDN1wBiQlkL?=
 =?us-ascii?Q?3FnnNvemER4bDCfMdr4dgyYHbtkjn+Kdxb0PfT3c9EHJtU3QyxwkOM6R30PB?=
 =?us-ascii?Q?mki34qSUw1Vqu1/pLOByGNtU2bboIpz7rbJnK5PkckmHA9oLDTG81sa0B5/b?=
 =?us-ascii?Q?fsaf3hzYtWCwQQIbbjY0TqotqJP/AeaI/RXfpmdtTcvpHzT0wVPUt3+m8Wh9?=
 =?us-ascii?Q?M1Tr2Xo3En57/+I97pkqRmqD0/mDVSPjO0Ld+bF4N3oPeLJ/2dqElQC+XMBC?=
 =?us-ascii?Q?0ewcpGLYunPG95pZGCPxPwGSc7qLJSEq2k2U0nvK1UyGvoeGW2CgBtfdX+pL?=
 =?us-ascii?Q?sz5xpvcb/AfKyfvZP8AQFCUkOGGXnejYzf63/Ng7kwnzq4XvT37pHAlKLmER?=
 =?us-ascii?Q?mQsTQU5ueSrbw+w/J+j+kWMkLYSUT41ooRcZ/Rq2R4t3+RIzzmr+D5X0f1KU?=
 =?us-ascii?Q?oPF7iDjllDk2wF/rag48xVWJxphZgAWztmJAhsQCW1K5TS1+Xc4/SF1d38DX?=
 =?us-ascii?Q?SRkWPoD5j7HMGXoFwyIf7GuTeIJwfnmBQGgWJAN2QfJDbAFKN02IfNr3eR9h?=
 =?us-ascii?Q?nrRJIDj3MHP2AP+yr1i6vdftefg6v+RWxtgkzA/ezC9K/6OjNHW/SRNng/WX?=
 =?us-ascii?Q?180sPk7UKI5duW9nQUTHVb/a91U+Km1+yVIjbQeoipCB0ZdmxqbdUHoRFWYd?=
 =?us-ascii?Q?o8vhP0BhZyYHo5O62/fOMX4bjAjRfqy7MdCSG+dd0MVzVkX1L7YXlOEr4Jd9?=
 =?us-ascii?Q?fL3IX2okdhpsksy06HeZsAk7mXoLW01Gh2PmnfesC7iJF7/CsnuNCCDRZZ4F?=
 =?us-ascii?Q?Cjo5LKJXWB3OOp7duzlpeMT8xHU9Q4tG22xOgbEB9UfN3PCqCvi0NmI/8cyb?=
 =?us-ascii?Q?L4cg8h7MPV+mh4o4f7zActeF161smpSVjFumj5Qxp9Oj6TXYMQk8hm7XuzMI?=
 =?us-ascii?Q?22MVpLRQ19Lo5t7tjelsyG05IbV+lwH17KBk9fgzW53PduutWzK+fYL+nxt/?=
 =?us-ascii?Q?WCdvi7FtV+SR1rL8PH3GDMcMWbZJWKsN1M6Ph/F7C15WM23RFIQGKpaVT8Dk?=
 =?us-ascii?Q?B/RQ1hEDbTHDv8DaOKpQQ1CqzA7wglQcndLuNIdldyqyp3876TIHMKCE5n8O?=
 =?us-ascii?Q?WoTnVIT6dbLn4b0JkiSJt5+uyvHDMPx/41wqyKQEjxikjDjtD5qITWoi+c1Z?=
 =?us-ascii?Q?oA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8eca7176-967c-46b7-8011-08dbd8d8d5b2
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2023 23:43:21.5861 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LRIIPlcsPFPw6hvbW8RoQAUghN4h3QDEbEbvlqJchwBXdFLchwUGqOX9iCXIy9zkj5w/vdNibFbpuVI3uJTMoE/xRgEnquvBhIEVwnk5dIo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7787
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/lnl=3A_Assign_correct_phys_=28rev3=29?=
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

On Sat, Oct 28, 2023 at 03:06:40PM +0000, Patchwork wrote:
>== Series Details ==
>
>Series: drm/i915/lnl: Assign correct phys (rev3)
>URL   : https://patchwork.freedesktop.org/series/125322/
>State : failure
>
>== Summary ==
>
>CI Bug Log - changes from CI_DRM_13799_full -> Patchwork_125322v3_full
>====================================================
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_125322v3_full absolutely need to be
>  verified manually.
>
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_125322v3_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them
>  to document this new failure mode, which will reduce false positives in CI.
>
>
>
>Participating hosts (12 -> 12)
>------------------------------
>
>  No changes in participating hosts
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_125322v3_full:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@gem_eio@reset-stress:
>    - shard-tglu:         [PASS][1] -> [FAIL][2]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13799/shard-tglu-5/igt@gem_eio@reset-stress.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125322v3/shard-tglu-5/igt@gem_eio@reset-stress.html
>
>  * igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-submitted-signaled:
>    - shard-glk:          NOTRUN -> [FAIL][3]
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125322v3/shard-glk9/igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-submitted-signaled.html
>
>  * igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted-signaled:
>    - shard-rkl:          NOTRUN -> [FAIL][4]
>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125322v3/shard-rkl-1/igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted-signaled.html


none of these are related to these display patches. Patches applied to
drm-intel-next. Thanks for the reviews

Lucas De Marchi
