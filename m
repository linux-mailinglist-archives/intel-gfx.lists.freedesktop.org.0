Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 108D5B3FD17
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 12:55:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 371D710E1CB;
	Tue,  2 Sep 2025 10:55:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dk/uySO1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47F4B10E1CB
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Sep 2025 10:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756810534; x=1788346534;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=HNdVvcVSApnkaMAIe1kY20tVNvVvJfbfOHSDfUp8edE=;
 b=Dk/uySO11azI0JdH2aCnJXR8fdTRGcFzwB7NYufTU5Sjak5cCro0RoCL
 yv6H6j9SqBzI5mBnjUQs5VgGCl9op9zCkCYgugp/uqxF+2e9lzpkHFN/s
 Zm9equl/1zQkdIvkwMJccA5alIdSupo4D0PeXG+Ni751NUySxNT+d/M91
 MRYWDcXIgFmjgSzXzls6EAvRKAtTV+KHZAvJIwqp1DBA/7x+NSLLUR68Q
 giMAFNpcxyD6nt1SjZuGMOoAkcuFkklYTtQBngU7s9fhGWDsYdQK2M3Rf
 BZqrVss3zLQB0guAbzfdmEKf+COv/GhK5zvy6aXvb2QH+ynsYHdNZks1T A==;
X-CSE-ConnectionGUID: 77oWML1mT1SF17a7fdzq9w==
X-CSE-MsgGUID: QukbJYSUQ4Cwwpx4LJECFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11540"; a="46658242"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="46658242"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 03:55:27 -0700
X-CSE-ConnectionGUID: 4av5/syUT8S4KbiHejlyng==
X-CSE-MsgGUID: IqswRVYRQ2mrJXd4j28FAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="175377690"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 03:55:27 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 2 Sep 2025 03:55:26 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 2 Sep 2025 03:55:26 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.53) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 2 Sep 2025 03:55:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QIzK69PBNDMmk307XLZ5CTLFcPXWJBDZyaMl2HdFVM86J0PwgNfF/AUT9jxhRdHs3yM5MQOCh7a+LNd0RqJYfY5foYAgwkZaqP+8C/s8nmB0ZxhK4CK9mx+NV2pAFGyZG/4aJtYODfGuytpuqIXCUiUsUzkLFRRHmPBZ688lcGilNdLOalGylFAMdS9unPnAtSzp1SRlfLRuTk3knzmSAlwrGARz8Ftb+cwmuIWoCf9u4PaNf4wiE1UYIpwJTPJeLhI/6v7LiSnp/folBYJhy+FcH2jHxaHosvKHqJ7uPMKJGuMcEwBSZKIJo831Qt/4kt/t8qNnWD3sfLgPBQ/K5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rTBxt8OgCTA4JYsQzV9oR1cOOQitP46sIS9ChEOWrrw=;
 b=nny5Tn7hLy7hETb/5WPKDKUVl2AAE1Q/O/Qj3sbFg/5Fs6XgiNTjUrjAYbVQvOwZbniqthFLeGXUNWny/vO6LyDZvOQJn/CkQI2Zu7qpYtjtNUVDsq+rA39a+jV/x1zDP1IZYlVg7VJOODXq7iCoSGdLP9ma1B7MRzCvYHaA8oApWDhkRkZOw/jaezQLtvicwM05p4IIAE2NvFLC3dIogYmvzvfw576Tp+n2uXIunDX5CUVBnr9FyVT0qgJNoN2RJqAQNBKubh/jqR3udyL0g1opfwA8ybRLQRjaS2rO2dJim6/QCJKmV3Ecnai/jg/JuBRWuDr0IuUweeOsDvUvAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM4PR11MB6065.namprd11.prod.outlook.com (2603:10b6:8:60::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.27; Tue, 2 Sep
 2025 10:55:18 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9073.021; Tue, 2 Sep 2025
 10:55:18 +0000
Date: Tue, 2 Sep 2025 13:55:13 +0300
From: Imre Deak <imre.deak@intel.com>
To: Shawn C Lee <shawn.c.lee@intel.com>, Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyTIGk5MTUuQ0kuRnVsbDogc3Vj?= =?utf-8?Q?cess?= for
 drm/i915/hdmi: add debugfs to contorl HDMI bpc (rev7)
Message-ID: <aLbNETMmfesAiw-9@ideak-desk>
References: <20250806042053.3570558-1-shawn.c.lee@intel.com>
 <175672517330.288842.12268834806470986395@1538d3639d33>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <175672517330.288842.12268834806470986395@1538d3639d33>
X-ClientProxiedBy: DU7PR01CA0006.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:50f::6) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM4PR11MB6065:EE_
X-MS-Office365-Filtering-Correlation-Id: 21e781bc-38da-45e3-2c31-08ddea0f33c1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?dHw38vdwP3D6UtR5Qv+IlbVdb4HnCLg/sk1RSJdI1Djezl+Vz9XF2+wmIMn5?=
 =?us-ascii?Q?Llua+YA7r4/IZk1X6h1DfNK7Lh7tfVjmn1mHUDeuOqOdtOfRrtwZBvRuCJGL?=
 =?us-ascii?Q?7C3jO82HMh6omHN4bPnJkGAwawt+/6wImKlr7SG66qIi+yF1ol8/Sx/eDc/P?=
 =?us-ascii?Q?XgnmB0L6OSXYmMFgVT376DZSHf7xQGyqE4yasMLjYd1iuiMLsEUZGXauuCaK?=
 =?us-ascii?Q?3Ob5w860+fE/qyQJ4tIXRczspVhmNDaPBy4K9m1oyG3h3sXu9uY5Y2lCv81O?=
 =?us-ascii?Q?xeMf7XWzT/dusxnOxNFOQeKNDT0Vu/wGObOcaC28gwiEIPeHqUd2GyNgMoZL?=
 =?us-ascii?Q?l0Apxs8KDeDg8rGVkYrUKU6oGLs3ZNaWhjX+Tx2M5L0PYfgl4fRL3jTbFVir?=
 =?us-ascii?Q?/fc3InFLmg0UmX9hKYONF2VxkHbwDqsfqdIhoZAXjTQYRAgImbLE++TSO6Sa?=
 =?us-ascii?Q?AWgj/sl+EUdtrw8tXVT95Gj99R6yHnYJdpAjvqoyWG6uLN0asPptmn7hdQzF?=
 =?us-ascii?Q?FeXixr1BzMSyhntOfB/xUS+Cq9tF6pl4TNWWq5I4aI7odTkVJ8Kwl2YbOjvp?=
 =?us-ascii?Q?qzUAxuHM5JEfBCM1NTw96o5hKu+a8RPPaQ0oTHKxwbud88fzIatkKtgCbDjN?=
 =?us-ascii?Q?iC/aNp9DB9DqHo77sky31clNTsBqKiqzq9ntSSx1M4XEKArep/iXhUUK6Yc1?=
 =?us-ascii?Q?iRkwsxLQRTIdZ+QztueRdLKXE0a/eQXa3ZpOmScY/tUaomtRsRCnGptgJ4Lx?=
 =?us-ascii?Q?Q6E9rJPdVb/Rnh1v2E1u9ruSrsAKLM/YHmx0PxsOjwz8XHQdzhrBTPdTbEDr?=
 =?us-ascii?Q?Z7YLcNZK5v502WUm9RiRyv7+OBBj2OVvPs/4M23adSlcUwo2pGB9nMo55Bvb?=
 =?us-ascii?Q?v/MyJYZFWf2eWJDpM61fcizm9SPPRiCHSaeRzUVj1+U0fCpikm/1yVyN4GQV?=
 =?us-ascii?Q?WdE7co1YV6SGd+9S/ibU3bx3GF8VK76VXjMhdFqJw6RPp5tICwcMrfK2Q5Ha?=
 =?us-ascii?Q?gzLMuU+33iOu2LsTWqwtUR4F+1NO6bbweMrvTF/3BvZf1Wx30HANxUKX7tAR?=
 =?us-ascii?Q?5IzKj5WX6lncdzzhBd8RFl/Bmnk8CXD1A1VACfR81oArBUrRgatLbSC0rRJV?=
 =?us-ascii?Q?U/HPbBCuiBmGbyzzJDiT1yZAQ82P8lf16CCQFsjkAcnLpWwc0Wf9hn/Oz109?=
 =?us-ascii?Q?MZDQ8ePVJ+NDVVT08VAXyUzPXmb5Nz5ypeTFxG8ME6ogxKV7amFQfiuYk6Cz?=
 =?us-ascii?Q?QLcmrQxIGKVJ7Ww0WfBLSNhVCKdx2DETF3b/UTnPo6XwhZiXebG8OUFdvjyr?=
 =?us-ascii?Q?z0kZhtDrFQB8SWiDoGxbCQY6mPe3VDogNWCIrVGG3cZNmMqnynMVLNdwttjB?=
 =?us-ascii?Q?3JBGGNs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Ek9sXgGntg4YPb+LU2psUc7Bt54ueaTvgrXSmzwGJCre3bWrKRClOX5p+Z/t?=
 =?us-ascii?Q?ejlomtASaAlDdxbMbspwugSXJHFw+Vpa03ps8Lpnnb4NnCKrw2eziPEpUGgF?=
 =?us-ascii?Q?TfLUjmS/yYAhOKeIzqsiNc3vHRnfr1eoKevtfSF9Uc/XkxzJ/s8escm52rNj?=
 =?us-ascii?Q?zI3WmfMdzFnCGbHnpH4HDMX3XA22dDzAMLJQlmNSd+BJCnYGWtFgFkYY8NTO?=
 =?us-ascii?Q?Q44HDETSkrTDzLCqGNcn1kXuo5brJsOdP/FAjnSDYqK+3STmd1JpNGQ4MpCS?=
 =?us-ascii?Q?4DggJAdIeGoWmCfzRhVLyzdLzdxSxW3qfjUxzvqo/v1Cp3BBFDOtWNKJWRUB?=
 =?us-ascii?Q?Z0P+6gkVKyFM609OTqyvJ2/+uEagzrQCM5iEfGrL6EjvCvcNbeIyE0XYta2y?=
 =?us-ascii?Q?3fh6CvUFwfGxO9Lm8txNBnb8R05fK8woSBUma6idUFnsPBEzW4tfiVNbrq89?=
 =?us-ascii?Q?9dvC8oFaOFe4P6Jx/LbKx/tj9avT+1BUJx/g3rtSlSZlBjiU+dRHPDs0kKze?=
 =?us-ascii?Q?nDEjMaG2r3ArXKwGEDldhyMakCCTdntKWL/mTprcYTlwo+iEjjyuX0YSfvE6?=
 =?us-ascii?Q?pS15Y7ziAGpOhxQfTiXyJewm8xW+Bduy9f8K+OXnmpmghWXMMaIPZGTnuFzW?=
 =?us-ascii?Q?OmbFgKY9J2aNYcEJLrf2qHbAM6xiReqLmR4K4rkelDQ9cdTRzsIeAeAuuBE7?=
 =?us-ascii?Q?9xsQirgXMC8emBXEJkFyt0kZZIchdRxaKlaYdRrN6zT5+CCGO98n8NXUo9Ut?=
 =?us-ascii?Q?HgwmLfS6SA/zCv7FtqIYVe7pY5FhRrTak8LFjG3NBBHxlat7LfwmCZaUK122?=
 =?us-ascii?Q?PpJESDIFPPlBR6rbchRCden2DFInbE9mAqpSXiJlA+Hp7z1s3mcgeYihAU6h?=
 =?us-ascii?Q?g/5m8bw2v4wtUJac9zyF6d6Qsy7wyiy74AdYZXwezGDwFZlCIMS/GIkpSd8E?=
 =?us-ascii?Q?7zirMh/L8NI1KrWmCVRhZTdLDPbzt4aIQs/Yte7UasOL3x9Db3vUv2rraneI?=
 =?us-ascii?Q?Ec57h27VeK9if+C6gbpgRiexBqkNt+rhLAbNQbk77/ZxDc+1w2PBo7hHAfRm?=
 =?us-ascii?Q?fHAa2Ov+4vWMlYVaLRrkRHxiCFFXGb5a9lDRU8khfp4dUpPFHLQdXoqgCePs?=
 =?us-ascii?Q?XC1V92GofuywJ79NRTKWU/ChgylxiESpe5BjG82ThuFH8qIu41ijrvToEKGs?=
 =?us-ascii?Q?awpqijtfy27eAtAJ3YhiWrfHQA/Qbw/bklg8NLBMEwjDx1xNlAK3hwTmqYYd?=
 =?us-ascii?Q?9PnTDLpIQ1XVaJ0kJhgGn1ms4CO9Y/9/NJJXBpo5qj3+eT7wpe666effo5Eo?=
 =?us-ascii?Q?RIS5+DIEuwcfcLx+xRPK07hdKeTdImlaQZIqKxPELjy170IXGWAbTn4D/FTc?=
 =?us-ascii?Q?+PdhKM6hS6CzX/FZUKvmxWiCkAnaEHEDGW4TXiup249QoETkPA6bGRJvNP2H?=
 =?us-ascii?Q?5M2SlriiowdJk47UCNRP1iYOvdoF3zZNCIIb244FiChHdur510Riw27BjKrD?=
 =?us-ascii?Q?ELpg3lEGuhY211IT9yrp4GpecATcaPzDZ1q5b2ZZwCqEDe2d6QcrB1mNQw2p?=
 =?us-ascii?Q?h8wHM0UcrcTC7JhXGdZQAiZV5LwGZPf52Pk0WuJlayVH++QpvyWUi4gMJ/eY?=
 =?us-ascii?Q?YJkqOcKEmFxsnFY6fbwBiK9URHMnXKryUGMQUbUyBpK5?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 21e781bc-38da-45e3-2c31-08ddea0f33c1
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Sep 2025 10:55:18.3331 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eOXNdrK70h+SUCIuv7aqd5jOMXqFCCgJkJpQkM5fKPLNxclaa3qghOLFTTHMHhxow6HBoBCG+Hk2W986DaHgWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6065
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

On Mon, Sep 01, 2025 at 11:12:53AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/hdmi: add debugfs to contorl HDMI bpc (rev7)
> URL   : https://patchwork.freedesktop.org/series/152562/
> State : success

Thanks for the patches, pushed them to drm-intel-next. While applying
patch 2, I removed the unused intel_fdi.h include from intel_hdmi.c as
well.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_17098_full -> Patchwork_152562v7_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 
>   
> 
> Participating hosts (11 -> 11)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_152562v7_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@object-reloc-purge-cache:
>     - shard-dg2-9:        NOTRUN -> [SKIP][1] ([i915#8411]) +1 other test skip
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@api_intel_bb@object-reloc-purge-cache.html
> 
>   * igt@device_reset@cold-reset-bound:
>     - shard-tglu:         NOTRUN -> [SKIP][2] ([i915#11078])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-2/igt@device_reset@cold-reset-bound.html
> 
>   * igt@device_reset@unbind-cold-reset-rebind:
>     - shard-dg2:          NOTRUN -> [SKIP][3] ([i915#11078])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-7/igt@device_reset@unbind-cold-reset-rebind.html
> 
>   * igt@fbdev@unaligned-read:
>     - shard-rkl:          [PASS][4] -> [SKIP][5] ([i915#14544] / [i915#2582])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-2/igt@fbdev@unaligned-read.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@fbdev@unaligned-read.html
> 
>   * igt@gem_basic@multigpu-create-close:
>     - shard-tglu-1:       NOTRUN -> [SKIP][6] ([i915#7697])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-1/igt@gem_basic@multigpu-create-close.html
> 
>   * igt@gem_ccs@block-multicopy-inplace:
>     - shard-tglu:         NOTRUN -> [SKIP][7] ([i915#3555] / [i915#9323])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-2/igt@gem_ccs@block-multicopy-inplace.html
> 
>   * igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][8] ([i915#12392])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-4/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0.html
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-dg2:          NOTRUN -> [SKIP][9] ([i915#7697]) +1 other test skip
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-11/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_compute@compute-square:
>     - shard-dg2-9:        NOTRUN -> [FAIL][10] ([i915#13665])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@gem_compute@compute-square.html
> 
>   * igt@gem_create@create-ext-cpu-access-sanity-check:
>     - shard-tglu-1:       NOTRUN -> [SKIP][11] ([i915#6335])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-1/igt@gem_create@create-ext-cpu-access-sanity-check.html
> 
>   * igt@gem_create@create-ext-set-pat:
>     - shard-tglu:         NOTRUN -> [SKIP][12] ([i915#8562])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-2/igt@gem_create@create-ext-set-pat.html
> 
>   * igt@gem_ctx_isolation@preservation-s3:
>     - shard-rkl:          [PASS][13] -> [INCOMPLETE][14] ([i915#12353]) +1 other test incomplete
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-5/igt@gem_ctx_isolation@preservation-s3.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-3/igt@gem_ctx_isolation@preservation-s3.html
> 
>   * igt@gem_ctx_persistence@heartbeat-hang:
>     - shard-dg2-9:        NOTRUN -> [SKIP][15] ([i915#8555]) +1 other test skip
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@gem_ctx_persistence@heartbeat-hang.html
> 
>   * igt@gem_ctx_persistence@heartbeat-stop:
>     - shard-dg2:          NOTRUN -> [SKIP][16] ([i915#8555]) +1 other test skip
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-7/igt@gem_ctx_persistence@heartbeat-stop.html
> 
>   * igt@gem_ctx_persistence@saturated-hostile-nopreempt:
>     - shard-dg2:          NOTRUN -> [SKIP][17] ([i915#5882]) +7 other tests skip
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-7/igt@gem_ctx_persistence@saturated-hostile-nopreempt.html
> 
>   * igt@gem_ctx_persistence@smoketest:
>     - shard-snb:          NOTRUN -> [SKIP][18] ([i915#1099])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-snb7/igt@gem_ctx_persistence@smoketest.html
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-tglu-1:       NOTRUN -> [SKIP][19] ([i915#280])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-1/igt@gem_ctx_sseu@engines.html
>     - shard-dg1:          NOTRUN -> [SKIP][20] ([i915#280])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-18/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-rkl:          NOTRUN -> [SKIP][21] ([i915#280])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@gem_ctx_sseu@invalid-sseu.html
>     - shard-tglu:         NOTRUN -> [SKIP][22] ([i915#280])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-2/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-dg2-9:        NOTRUN -> [SKIP][23] ([i915#280]) +1 other test skip
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@gem_ctx_sseu@mmap-args.html
> 
>   * igt@gem_eio@kms:
>     - shard-dg2-9:        NOTRUN -> [FAIL][24] ([i915#5784])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_balancer@bonded-false-hang:
>     - shard-dg1:          NOTRUN -> [SKIP][25] ([i915#4812])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-18/igt@gem_exec_balancer@bonded-false-hang.html
> 
>   * igt@gem_exec_balancer@bonded-sync:
>     - shard-dg2-9:        NOTRUN -> [SKIP][26] ([i915#4771])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@gem_exec_balancer@bonded-sync.html
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-rkl:          NOTRUN -> [SKIP][27] ([i915#14544] / [i915#4525])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-tglu-1:       NOTRUN -> [SKIP][28] ([i915#4525]) +1 other test skip
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-1/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@gem_exec_capture@capture@vecs0-lmem0:
>     - shard-dg2-9:        NOTRUN -> [FAIL][29] ([i915#11965]) +4 other tests fail
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@gem_exec_capture@capture@vecs0-lmem0.html
> 
>   * igt@gem_exec_flush@basic-uc-prw-default:
>     - shard-dg2-9:        NOTRUN -> [SKIP][30] ([i915#3539])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@gem_exec_flush@basic-uc-prw-default.html
> 
>   * igt@gem_exec_flush@basic-wb-rw-default:
>     - shard-dg2-9:        NOTRUN -> [SKIP][31] ([i915#3539] / [i915#4852]) +2 other tests skip
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@gem_exec_flush@basic-wb-rw-default.html
> 
>   * igt@gem_exec_reloc@basic-cpu:
>     - shard-dg2-9:        NOTRUN -> [SKIP][32] ([i915#3281]) +3 other tests skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@gem_exec_reloc@basic-cpu.html
> 
>   * igt@gem_exec_reloc@basic-cpu-active:
>     - shard-rkl:          NOTRUN -> [SKIP][33] ([i915#3281])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@gem_exec_reloc@basic-cpu-active.html
> 
>   * igt@gem_exec_reloc@basic-wc-cpu-noreloc:
>     - shard-dg1:          NOTRUN -> [SKIP][34] ([i915#3281]) +4 other tests skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-18/igt@gem_exec_reloc@basic-wc-cpu-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-write-read-active:
>     - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#3281]) +14 other tests skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-11/igt@gem_exec_reloc@basic-write-read-active.html
> 
>   * igt@gem_exec_reloc@basic-write-wc-active:
>     - shard-rkl:          NOTRUN -> [SKIP][36] ([i915#14544] / [i915#3281])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@gem_exec_reloc@basic-write-wc-active.html
> 
>   * igt@gem_exec_reloc@basic-write-wc-noreloc:
>     - shard-mtlp:         NOTRUN -> [SKIP][37] ([i915#3281])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-mtlp-3/igt@gem_exec_reloc@basic-write-wc-noreloc.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts-chain:
>     - shard-dg2-9:        NOTRUN -> [SKIP][38] ([i915#4537] / [i915#4812])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@gem_exec_schedule@preempt-queue-contexts-chain.html
> 
>   * igt@gem_exec_schedule@semaphore-power:
>     - shard-dg2:          NOTRUN -> [SKIP][39] ([i915#4537] / [i915#4812])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-7/igt@gem_exec_schedule@semaphore-power.html
> 
>   * igt@gem_fence_thrash@bo-copy:
>     - shard-dg2:          NOTRUN -> [SKIP][40] ([i915#4860]) +2 other tests skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-7/igt@gem_fence_thrash@bo-copy.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-x:
>     - shard-dg1:          NOTRUN -> [SKIP][41] ([i915#4860])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-18/igt@gem_fence_thrash@bo-write-verify-x.html
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
>     - shard-dg2-9:        NOTRUN -> [SKIP][42] ([i915#4860]) +3 other tests skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-glk:          NOTRUN -> [SKIP][43] ([i915#2190])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-glk5/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_evict@dontneed-evict-race:
>     - shard-tglu:         NOTRUN -> [SKIP][44] ([i915#4613] / [i915#7582])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-2/igt@gem_lmem_evict@dontneed-evict-race.html
> 
>   * igt@gem_lmem_swapping@heavy-random:
>     - shard-glk:          NOTRUN -> [SKIP][45] ([i915#4613]) +2 other tests skip
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-glk6/igt@gem_lmem_swapping@heavy-random.html
> 
>   * igt@gem_lmem_swapping@massive:
>     - shard-rkl:          NOTRUN -> [SKIP][46] ([i915#14544] / [i915#4613])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@gem_lmem_swapping@massive.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg2:          [PASS][47] -> [TIMEOUT][48] ([i915#5493]) +1 other test timeout
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-dg2-4/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-6/igt@gem_lmem_swapping@smem-oom@lmem0.html
>     - shard-dg1:          [PASS][49] -> [TIMEOUT][50] ([i915#5493]) +1 other test timeout
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-dg1-14/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_lmem_swapping@verify-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][51] ([i915#4613]) +1 other test skip
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-2/igt@gem_lmem_swapping@verify-ccs.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - shard-tglu-1:       NOTRUN -> [SKIP][52] ([i915#4613])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-1/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@gem_media_fill@media-fill:
>     - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#8289])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-7/igt@gem_media_fill@media-fill.html
> 
>   * igt@gem_media_vme:
>     - shard-dg2-9:        NOTRUN -> [SKIP][54] ([i915#284])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@gem_media_vme.html
> 
>   * igt@gem_mmap@short-mmap:
>     - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#4083]) +6 other tests skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-6/igt@gem_mmap@short-mmap.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-xy:
>     - shard-dg1:          NOTRUN -> [SKIP][56] ([i915#4077]) +1 other test skip
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-18/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
> 
>   * igt@gem_mmap_gtt@fault-concurrent-y:
>     - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#4077]) +8 other tests skip
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-6/igt@gem_mmap_gtt@fault-concurrent-y.html
> 
>   * igt@gem_mmap_gtt@hang:
>     - shard-dg2-9:        NOTRUN -> [SKIP][58] ([i915#4077]) +9 other tests skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@gem_mmap_gtt@hang.html
> 
>   * igt@gem_mmap_wc@fault-concurrent:
>     - shard-dg2-9:        NOTRUN -> [SKIP][59] ([i915#4083]) +5 other tests skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@gem_mmap_wc@fault-concurrent.html
> 
>   * igt@gem_partial_pwrite_pread@reads:
>     - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#3282]) +3 other tests skip
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-11/igt@gem_partial_pwrite_pread@reads.html
> 
>   * igt@gem_partial_pwrite_pread@write:
>     - shard-dg2-9:        NOTRUN -> [SKIP][61] ([i915#3282]) +3 other tests skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@gem_partial_pwrite_pread@write.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-display:
>     - shard-rkl:          NOTRUN -> [SKIP][62] ([i915#3282])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
>     - shard-rkl:          NOTRUN -> [SKIP][63] ([i915#14544] / [i915#3282]) +1 other test skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
> 
>   * igt@gem_pread@bench:
>     - shard-dg1:          NOTRUN -> [SKIP][64] ([i915#3282])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-18/igt@gem_pread@bench.html
> 
>   * igt@gem_pxp@create-regular-context-2:
>     - shard-rkl:          [PASS][65] -> [TIMEOUT][66] ([i915#12917] / [i915#12964]) +2 other tests timeout
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@gem_pxp@create-regular-context-2.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-5/igt@gem_pxp@create-regular-context-2.html
> 
>   * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
>     - shard-rkl:          NOTRUN -> [SKIP][67] ([i915#14544] / [i915#4270])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
> 
>   * igt@gem_pxp@protected-raw-src-copy-not-readible:
>     - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#4270]) +3 other tests skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-6/igt@gem_pxp@protected-raw-src-copy-not-readible.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-3:
>     - shard-rkl:          [PASS][69] -> [SKIP][70] ([i915#14544] / [i915#4270])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-off-3.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@gem_pxp@reject-modify-context-protection-off-3.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-on:
>     - shard-dg1:          NOTRUN -> [SKIP][71] ([i915#4270])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-18/igt@gem_pxp@reject-modify-context-protection-on.html
> 
>   * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
>     - shard-dg2-9:        NOTRUN -> [SKIP][72] ([i915#4270]) +2 other tests skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
> 
>   * igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#5190] / [i915#8428]) +7 other tests skip
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-11/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html
> 
>   * igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:
>     - shard-dg2-9:        NOTRUN -> [SKIP][74] ([i915#5190] / [i915#8428]) +3 other tests skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html
> 
>   * igt@gem_render_tiled_blits@basic:
>     - shard-dg2-9:        NOTRUN -> [SKIP][75] ([i915#4079])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@gem_render_tiled_blits@basic.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
>     - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#4079]) +1 other test skip
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-7/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
> 
>   * igt@gem_softpin@evict-snoop-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#4885]) +1 other test skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-11/igt@gem_softpin@evict-snoop-interruptible.html
> 
>   * igt@gem_unfence_active_buffers:
>     - shard-dg2-9:        NOTRUN -> [SKIP][78] ([i915#4879])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@gem_unfence_active_buffers.html
> 
>   * igt@gem_userptr_blits@coherency-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#3297]) +2 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-11/igt@gem_userptr_blits@coherency-unsync.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-tglu-1:       NOTRUN -> [SKIP][80] ([i915#3297] / [i915#3323])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-1/igt@gem_userptr_blits@dmabuf-sync.html
>     - shard-dg1:          NOTRUN -> [SKIP][81] ([i915#3297])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-18/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@forbidden-operations:
>     - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#3282] / [i915#3297])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-6/igt@gem_userptr_blits@forbidden-operations.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate:
>     - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#3297] / [i915#4880])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-6/igt@gem_userptr_blits@map-fixed-invalidate.html
> 
>   * igt@gem_userptr_blits@relocations:
>     - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#3281] / [i915#3297])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-11/igt@gem_userptr_blits@relocations.html
> 
>   * igt@gem_userptr_blits@stress-purge:
>     - shard-rkl:          [PASS][85] -> [DMESG-WARN][86] ([i915#12964]) +7 other tests dmesg-warn
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@gem_userptr_blits@stress-purge.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-2/igt@gem_userptr_blits@stress-purge.html
> 
>   * igt@gem_userptr_blits@unsync-unmap:
>     - shard-tglu-1:       NOTRUN -> [SKIP][87] ([i915#3297])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-1/igt@gem_userptr_blits@unsync-unmap.html
> 
>   * igt@gen7_exec_parse@basic-allowed:
>     - shard-dg2-9:        NOTRUN -> [SKIP][88] +4 other tests skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@gen7_exec_parse@basic-allowed.html
> 
>   * igt@gen9_exec_parse@bb-start-cmd:
>     - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#14544] / [i915#2527])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@gen9_exec_parse@bb-start-cmd.html
> 
>   * igt@gen9_exec_parse@bb-start-param:
>     - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#2856]) +2 other tests skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-7/igt@gen9_exec_parse@bb-start-param.html
> 
>   * igt@gen9_exec_parse@unaligned-access:
>     - shard-tglu:         NOTRUN -> [SKIP][91] ([i915#2527] / [i915#2856])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-2/igt@gen9_exec_parse@unaligned-access.html
> 
>   * igt@gen9_exec_parse@unaligned-jump:
>     - shard-dg2-9:        NOTRUN -> [SKIP][92] ([i915#2856]) +2 other tests skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@gen9_exec_parse@unaligned-jump.html
> 
>   * igt@gen9_exec_parse@valid-registers:
>     - shard-tglu-1:       NOTRUN -> [SKIP][93] ([i915#2527] / [i915#2856]) +2 other tests skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-1/igt@gen9_exec_parse@valid-registers.html
>     - shard-dg1:          NOTRUN -> [SKIP][94] ([i915#2527])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-18/igt@gen9_exec_parse@valid-registers.html
> 
>   * igt@i915_drm_fdinfo@busy@vecs1:
>     - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#14073]) +15 other tests skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-11/igt@i915_drm_fdinfo@busy@vecs1.html
> 
>   * igt@i915_drm_fdinfo@virtual-busy:
>     - shard-dg1:          NOTRUN -> [SKIP][96] ([i915#14118])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-18/igt@i915_drm_fdinfo@virtual-busy.html
> 
>   * igt@i915_drm_fdinfo@virtual-busy-idle:
>     - shard-dg2-9:        NOTRUN -> [SKIP][97] ([i915#14118])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@i915_drm_fdinfo@virtual-busy-idle.html
> 
>   * igt@i915_module_load@reload-no-display:
>     - shard-dg2-9:        NOTRUN -> [DMESG-WARN][98] ([i915#13029] / [i915#14545])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@i915_module_load@reload-no-display.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-dg2-9:        NOTRUN -> [DMESG-WARN][99] ([i915#14545])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_pm_freq_mult@media-freq@gt0:
>     - shard-rkl:          NOTRUN -> [SKIP][100] ([i915#14544] / [i915#6590]) +1 other test skip
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@i915_pm_freq_mult@media-freq@gt0.html
> 
>   * igt@i915_pm_rpm@debugfs-read:
>     - shard-dg2:          [PASS][101] -> [SKIP][102] ([i915#13328])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-dg2-6/igt@i915_pm_rpm@debugfs-read.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-1/igt@i915_pm_rpm@debugfs-read.html
> 
>   * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
>     - shard-glk:          NOTRUN -> [SKIP][103] +268 other tests skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-glk9/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
> 
>   * igt@i915_pm_rps@thresholds:
>     - shard-dg1:          NOTRUN -> [SKIP][104] ([i915#11681])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-18/igt@i915_pm_rps@thresholds.html
> 
>   * igt@i915_pm_rps@thresholds-idle:
>     - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#11681])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-7/igt@i915_pm_rps@thresholds-idle.html
> 
>   * igt@intel_hwmon@hwmon-write:
>     - shard-mtlp:         NOTRUN -> [SKIP][106] ([i915#7707])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-mtlp-3/igt@intel_hwmon@hwmon-write.html
> 
>   * igt@kms_addfb_basic@basic-y-tiled-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#4215] / [i915#5190])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-11/igt@kms_addfb_basic@basic-y-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@clobberred-modifier:
>     - shard-dg1:          NOTRUN -> [SKIP][108] ([i915#4212])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-18/igt@kms_addfb_basic@clobberred-modifier.html
> 
>   * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
>     - shard-tglu:         NOTRUN -> [SKIP][109] ([i915#12454] / [i915#12712])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-2/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
> 
>   * igt@kms_atomic_transition@modeset-transition-fencing:
>     - shard-rkl:          NOTRUN -> [SKIP][110] ([i915#14544]) +25 other tests skip
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_atomic_transition@modeset-transition-fencing.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
>     - shard-tglu:         [PASS][111] -> [FAIL][112] ([i915#14857]) +1 other test fail
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-tglu-9/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-dg2-9:        NOTRUN -> [SKIP][113] ([i915#1769] / [i915#3555])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [FAIL][114] ([i915#5956]) +1 other test fail
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-7/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#5286])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
>     - shard-dg1:          NOTRUN -> [SKIP][116] ([i915#4538] / [i915#5286])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-18/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
>     - shard-tglu-1:       NOTRUN -> [SKIP][117] ([i915#5286]) +2 other tests skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-tglu:         NOTRUN -> [SKIP][118] ([i915#5286]) +3 other tests skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
>     - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#4538] / [i915#5190]) +8 other tests skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-7/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@y-tiled-addfb-size-overflow:
>     - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#5190]) +1 other test skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-7/igt@kms_big_fb@y-tiled-addfb-size-overflow.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180:
>     - shard-mtlp:         NOTRUN -> [SKIP][121]
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-mtlp-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-dg2-9:        NOTRUN -> [SKIP][122] ([i915#4538] / [i915#5190]) +7 other tests skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
>     - shard-dg1:          NOTRUN -> [SKIP][123] ([i915#4538])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-18/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-snb:          NOTRUN -> [SKIP][124] +69 other tests skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-snb7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][125] ([i915#6095]) +99 other tests skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-14/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
>     - shard-dg2-9:        NOTRUN -> [SKIP][126] ([i915#12313])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-4/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][128] ([i915#14098] / [i915#6095]) +45 other tests skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-4/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][129] ([i915#6095]) +39 other tests skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#6095]) +7 other tests skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-3/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc:
>     - shard-rkl:          [PASS][131] -> [INCOMPLETE][132] ([i915#12796]) +1 other test incomplete
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][133] ([i915#6095]) +34 other tests skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-2/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-b-hdmi-a-2:
>     - shard-dg2-9:        NOTRUN -> [SKIP][134] ([i915#10307] / [i915#6095]) +54 other tests skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#10307] / [i915#6095]) +105 other tests skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-4/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#6095]) +55 other tests skip
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#13781]) +3 other tests skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-4/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_cdclk@plane-scaling:
>     - shard-tglu:         NOTRUN -> [SKIP][138] ([i915#3742])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-2/igt@kms_cdclk@plane-scaling.html
> 
>   * igt@kms_chamelium_color@degamma:
>     - shard-dg2:          NOTRUN -> [SKIP][139] +11 other tests skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-11/igt@kms_chamelium_color@degamma.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-read:
>     - shard-tglu-1:       NOTRUN -> [SKIP][140] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-1/igt@kms_chamelium_edid@hdmi-edid-read.html
>     - shard-dg1:          NOTRUN -> [SKIP][141] ([i915#11151] / [i915#7828]) +1 other test skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-18/igt@kms_chamelium_edid@hdmi-edid-read.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
>     - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#11151] / [i915#7828]) +5 other tests skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-7/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html
> 
>   * igt@kms_chamelium_frames@dp-crc-multiple:
>     - shard-dg2-9:        NOTRUN -> [SKIP][143] ([i915#11151] / [i915#7828]) +7 other tests skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@kms_chamelium_frames@dp-crc-multiple.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-storm:
>     - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#11151] / [i915#14544] / [i915#7828]) +1 other test skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_chamelium_hpd@hdmi-hpd-storm.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-without-ddc:
>     - shard-tglu:         NOTRUN -> [SKIP][145] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-2/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html
> 
>   * igt@kms_color@ctm-0-25:
>     - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#12655] / [i915#14544])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_color@ctm-0-25.html
> 
>   * igt@kms_color@ctm-red-to-blue:
>     - shard-rkl:          [PASS][147] -> [SKIP][148] ([i915#12655] / [i915#14544])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-7/igt@kms_color@ctm-red-to-blue.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_color@ctm-red-to-blue.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-tglu-1:       NOTRUN -> [SKIP][149] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-1/igt@kms_content_protection@atomic.html
>     - shard-dg1:          NOTRUN -> [SKIP][150] ([i915#7116] / [i915#9424])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-18/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-tglu:         NOTRUN -> [SKIP][151] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-2/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-dg2-9:        NOTRUN -> [SKIP][152] ([i915#7118])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@kms_content_protection@srm.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-dg2:          NOTRUN -> [SKIP][153] ([i915#7118] / [i915#9424])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-7/igt@kms_content_protection@type1.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-dg2-9:        NOTRUN -> [SKIP][154] ([i915#7118] / [i915#9424])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x512:
>     - shard-tglu-1:       NOTRUN -> [SKIP][155] ([i915#13049])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-1/igt@kms_cursor_crc@cursor-random-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
>     - shard-dg2-9:        NOTRUN -> [SKIP][156] ([i915#13049])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
>     - shard-tglu:         NOTRUN -> [SKIP][157] ([i915#13049])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-2/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
>     - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#13049])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
>     - shard-dg2-9:        NOTRUN -> [SKIP][159] ([i915#3555]) +1 other test skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x10:
>     - shard-mtlp:         NOTRUN -> [SKIP][160] ([i915#3555] / [i915#8814])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-mtlp-3/igt@kms_cursor_crc@cursor-sliding-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x170:
>     - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#13049])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-6/igt@kms_cursor_crc@cursor-sliding-512x170.html
> 
>   * igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:
>     - shard-mtlp:         NOTRUN -> [SKIP][162] ([i915#9809])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-mtlp-3/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
>     - shard-dg2-9:        NOTRUN -> [SKIP][163] ([i915#13046] / [i915#5354]) +2 other tests skip
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#4103] / [i915#4213])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#13046] / [i915#5354]) +1 other test skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-11/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][166] +1 other test skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
>     - shard-rkl:          [PASS][167] -> [FAIL][168] ([i915#2346]) +1 other test fail
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-3/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>     - shard-tglu-1:       NOTRUN -> [SKIP][169] ([i915#9067])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-1/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
>     - shard-dg1:          NOTRUN -> [SKIP][170] ([i915#9067])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-18/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
>     - shard-tglu:         NOTRUN -> [SKIP][171] ([i915#4103])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>     - shard-dg2-9:        NOTRUN -> [SKIP][172] ([i915#4103] / [i915#4213])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>     - shard-tglu:         NOTRUN -> [SKIP][173] ([i915#9723])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-2/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
> 
>   * igt@kms_display_modes@extended-mode-basic:
>     - shard-dg2-9:        NOTRUN -> [SKIP][174] ([i915#13691])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@kms_display_modes@extended-mode-basic.html
> 
>   * igt@kms_dp_aux_dev:
>     - shard-tglu-1:       NOTRUN -> [SKIP][175] ([i915#1257])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-1/igt@kms_dp_aux_dev.html
>     - shard-dg1:          NOTRUN -> [SKIP][176] ([i915#1257])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-18/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_dp_link_training@uhbr-mst:
>     - shard-tglu:         NOTRUN -> [SKIP][177] ([i915#13748])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-2/igt@kms_dp_link_training@uhbr-mst.html
> 
>   * igt@kms_dp_linktrain_fallback@dsc-fallback:
>     - shard-dg2:          NOTRUN -> [SKIP][178] ([i915#13707])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-11/igt@kms_dp_linktrain_fallback@dsc-fallback.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-gtt:
>     - shard-rkl:          [PASS][179] -> [SKIP][180] ([i915#14544]) +55 other tests skip
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-2/igt@kms_draw_crc@draw-method-mmap-gtt.html
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_draw_crc@draw-method-mmap-gtt.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][181] ([i915#8812])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@kms_draw_crc@draw-method-mmap-gtt.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#11190] / [i915#14544])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_dsc@dsc-with-bpc:
>     - shard-tglu:         NOTRUN -> [SKIP][183] ([i915#3555] / [i915#3840])
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-2/igt@kms_dsc@dsc-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-output-formats-with-bpc:
>     - shard-dg2-9:        NOTRUN -> [SKIP][184] ([i915#3840] / [i915#9053])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
> 
>   * igt@kms_fbcon_fbt@fbc:
>     - shard-rkl:          [PASS][185] -> [SKIP][186] ([i915#14544] / [i915#14561])
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-3/igt@kms_fbcon_fbt@fbc.html
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_fbcon_fbt@fbc.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-rkl:          NOTRUN -> [SKIP][187] ([i915#14544] / [i915#3955])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_feature_discovery@chamelium:
>     - shard-dg2-9:        NOTRUN -> [SKIP][188] ([i915#4854])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@kms_feature_discovery@chamelium.html
> 
>   * igt@kms_feature_discovery@display-4x:
>     - shard-tglu:         NOTRUN -> [SKIP][189] ([i915#1839])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-2/igt@kms_feature_discovery@display-4x.html
> 
>   * igt@kms_feature_discovery@dp-mst:
>     - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#9337])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-11/igt@kms_feature_discovery@dp-mst.html
> 
>   * igt@kms_flip@2x-absolute-wf_vblank:
>     - shard-dg2:          NOTRUN -> [SKIP][191] ([i915#9934]) +4 other tests skip
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-7/igt@kms_flip@2x-absolute-wf_vblank.html
> 
>   * igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible:
>     - shard-dg2-9:        NOTRUN -> [SKIP][192] ([i915#9934]) +4 other tests skip
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:
>     - shard-rkl:          NOTRUN -> [SKIP][193] ([i915#14544] / [i915#9934])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html
> 
>   * igt@kms_flip@2x-flip-vs-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#8381]) +1 other test skip
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-7/igt@kms_flip@2x-flip-vs-fences.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][195] ([i915#3637] / [i915#9934]) +3 other tests skip
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-1/igt@kms_flip@2x-flip-vs-fences.html
> 
>   * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
>     - shard-dg1:          NOTRUN -> [SKIP][196] ([i915#9934])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-18/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][197] ([i915#12745] / [i915#4839]) +2 other tests incomplete
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-glk9/igt@kms_flip@2x-flip-vs-suspend.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][198] ([i915#4839]) +1 other test incomplete
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-glk6/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@2x-nonexisting-fb:
>     - shard-tglu:         NOTRUN -> [SKIP][199] ([i915#3637] / [i915#9934])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-2/igt@kms_flip@2x-nonexisting-fb.html
>     - shard-rkl:          NOTRUN -> [SKIP][200] ([i915#9934])
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_flip@2x-nonexisting-fb.html
> 
>   * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:
>     - shard-mtlp:         NOTRUN -> [SKIP][201] ([i915#3637] / [i915#9934])
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-mtlp-3/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html
> 
>   * igt@kms_flip@absolute-wf_vblank-interruptible@b-hdmi-a1:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][202] ([i915#12917] / [i915#12964]) +1 other test dmesg-warn
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-4/igt@kms_flip@absolute-wf_vblank-interruptible@b-hdmi-a1.html
> 
>   * igt@kms_flip@basic-flip-vs-dpms:
>     - shard-rkl:          [PASS][203] -> [SKIP][204] ([i915#14544] / [i915#3637]) +9 other tests skip
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@kms_flip@basic-flip-vs-dpms.html
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_flip@basic-flip-vs-dpms.html
> 
>   * igt@kms_flip@busy-flip:
>     - shard-rkl:          NOTRUN -> [SKIP][205] ([i915#14544] / [i915#3637])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_flip@busy-flip.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-hdmi-a1:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][206] ([i915#12745])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-glk5/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][207] ([i915#2672]) +5 other tests skip
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling:
>     - shard-dg1:          [PASS][208] -> [DMESG-WARN][209] ([i915#4423]) +2 other tests dmesg-warn
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-dg1-19/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling.html
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-15/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:
>     - shard-dg2-9:        NOTRUN -> [SKIP][210] ([i915#2672] / [i915#3555])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-dg2-9:        NOTRUN -> [SKIP][211] ([i915#2672]) +1 other test skip
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][212] ([i915#2587] / [i915#2672] / [i915#3555])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][213] ([i915#2587] / [i915#2672])
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][214] ([i915#2672] / [i915#3555])
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode:
>     - shard-tglu-1:       NOTRUN -> [SKIP][215] ([i915#2587] / [i915#2672])
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:
>     - shard-rkl:          [PASS][216] -> [SKIP][217] ([i915#14544] / [i915#3555]) +2 other tests skip
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][218] ([i915#2672] / [i915#3555]) +2 other tests skip
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][219] ([i915#14544] / [i915#3555]) +1 other test skip
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][220] ([i915#2672] / [i915#3555] / [i915#5190]) +3 other tests skip
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][221] ([i915#2672]) +6 other tests skip
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling:
>     - shard-dg2-9:        NOTRUN -> [SKIP][222] ([i915#2672] / [i915#3555] / [i915#5190])
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:
>     - shard-dg2:          [PASS][223] -> [FAIL][224] ([i915#6880])
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-pgflip-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][225] ([i915#5354]) +25 other tests skip
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][226] +38 other tests skip
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move:
>     - shard-mtlp:         NOTRUN -> [SKIP][227] ([i915#1825]) +1 other test skip
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][228] ([i915#8708]) +11 other tests skip
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc:
>     - shard-rkl:          [PASS][229] -> [SKIP][230] ([i915#14544] / [i915#1849] / [i915#5354]) +7 other tests skip
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][231] ([i915#10055])
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-tiling-y.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][232] ([i915#3458]) +13 other tests skip
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
>     - shard-dg1:          NOTRUN -> [SKIP][233] ([i915#3458]) +3 other tests skip
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt:
>     - shard-glk10:        NOTRUN -> [SKIP][234] +462 other tests skip
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-glk10/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:
>     - shard-dg1:          NOTRUN -> [SKIP][235] ([i915#8708]) +2 other tests skip
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][236] ([i915#14544] / [i915#1849] / [i915#5354]) +15 other tests skip
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][237] ([i915#1825]) +1 other test skip
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
>     - shard-rkl:          NOTRUN -> [SKIP][238] ([i915#3023]) +1 other test skip
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite:
>     - shard-dg2-9:        NOTRUN -> [SKIP][239] ([i915#3458]) +14 other tests skip
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-tglu:         NOTRUN -> [SKIP][240] +38 other tests skip
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-dg2-9:        NOTRUN -> [SKIP][241] ([i915#8708]) +13 other tests skip
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
>     - shard-dg2-9:        NOTRUN -> [SKIP][242] ([i915#5354]) +15 other tests skip
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][243] +8 other tests skip
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-tglu:         NOTRUN -> [SKIP][244] ([i915#3555] / [i915#8228])
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-2/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-dg2:          NOTRUN -> [SKIP][245] ([i915#12713])
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-7/igt@kms_hdr@brightness-with-hdr.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][246] ([i915#12713])
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-1/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_invalid_mode@bad-hsync-end:
>     - shard-rkl:          NOTRUN -> [SKIP][247] ([i915#14544] / [i915#3555] / [i915#8826])
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_invalid_mode@bad-hsync-end.html
> 
>   * igt@kms_invalid_mode@bad-vsync-end:
>     - shard-rkl:          [PASS][248] -> [SKIP][249] ([i915#14544] / [i915#3555] / [i915#8826]) +1 other test skip
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@kms_invalid_mode@bad-vsync-end.html
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_invalid_mode@bad-vsync-end.html
> 
>   * igt@kms_joiner@basic-ultra-joiner:
>     - shard-tglu:         NOTRUN -> [SKIP][250] ([i915#12339])
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-2/igt@kms_joiner@basic-ultra-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
>     - shard-tglu:         NOTRUN -> [SKIP][251] ([i915#12394])
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-2/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-dg2-9:        NOTRUN -> [SKIP][252] ([i915#4816])
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24:
>     - shard-rkl:          [PASS][253] -> [SKIP][254] ([i915#11190] / [i915#14544]) +1 other test skip
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc:
>     - shard-glk10:        NOTRUN -> [SKIP][255] ([i915#11190]) +3 other tests skip
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-glk10/igt@kms_pipe_crc_basic@nonblocking-crc.html
> 
>   * igt@kms_plane@plane-position-covered:
>     - shard-rkl:          [PASS][256] -> [SKIP][257] ([i915#14544] / [i915#8825])
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-7/igt@kms_plane@plane-position-covered.html
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_plane@plane-position-covered.html
> 
>   * igt@kms_plane_alpha_blend@constant-alpha-max:
>     - shard-rkl:          [PASS][258] -> [SKIP][259] ([i915#14544] / [i915#7294]) +1 other test skip
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-7/igt@kms_plane_alpha_blend@constant-alpha-max.html
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_plane_alpha_blend@constant-alpha-max.html
> 
>   * igt@kms_plane_lowres@tiling-4:
>     - shard-tglu:         NOTRUN -> [SKIP][260] ([i915#3555])
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-2/igt@kms_plane_lowres@tiling-4.html
> 
>   * igt@kms_plane_lowres@tiling-yf:
>     - shard-dg2-9:        NOTRUN -> [SKIP][261] ([i915#3555] / [i915#8821])
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@kms_plane_lowres@tiling-yf.html
> 
>   * igt@kms_plane_multiple@2x-tiling-none:
>     - shard-dg2:          NOTRUN -> [SKIP][262] ([i915#13958])
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-11/igt@kms_plane_multiple@2x-tiling-none.html
> 
>   * igt@kms_plane_multiple@2x-tiling-x:
>     - shard-dg2-9:        NOTRUN -> [SKIP][263] ([i915#13958])
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@kms_plane_multiple@2x-tiling-x.html
> 
>   * igt@kms_plane_multiple@tiling-4:
>     - shard-tglu:         NOTRUN -> [SKIP][264] ([i915#14259])
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-2/igt@kms_plane_multiple@tiling-4.html
> 
>   * igt@kms_plane_multiple@tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][265] ([i915#14259])
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-7/igt@kms_plane_multiple@tiling-y.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-dg2-9:        NOTRUN -> [SKIP][266] ([i915#6953] / [i915#9423])
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-c:
>     - shard-tglu:         NOTRUN -> [SKIP][267] ([i915#12247]) +4 other tests skip
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-c.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats:
>     - shard-rkl:          [PASS][268] -> [SKIP][269] ([i915#14544] / [i915#3555] / [i915#8152])
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a:
>     - shard-rkl:          [PASS][270] -> [SKIP][271] ([i915#12247] / [i915#14544]) +4 other tests skip
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b:
>     - shard-rkl:          [PASS][272] -> [SKIP][273] ([i915#12247] / [i915#14544] / [i915#8152]) +4 other tests skip
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b.html
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c:
>     - shard-rkl:          NOTRUN -> [SKIP][274] ([i915#12247]) +1 other test skip
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers:
>     - shard-rkl:          [PASS][275] -> [SKIP][276] ([i915#14544] / [i915#8152]) +1 other test skip
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers.html
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25:
>     - shard-rkl:          NOTRUN -> [SKIP][277] ([i915#14544] / [i915#6953] / [i915#8152])
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-a:
>     - shard-rkl:          NOTRUN -> [SKIP][278] ([i915#12247] / [i915#14544]) +1 other test skip
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-a.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-b:
>     - shard-rkl:          NOTRUN -> [SKIP][279] ([i915#12247] / [i915#14544] / [i915#8152]) +2 other tests skip
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-b.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:
>     - shard-rkl:          [PASS][280] -> [SKIP][281] ([i915#14544] / [i915#6953] / [i915#8152])
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:
>     - shard-rkl:          [PASS][282] -> [SKIP][283] ([i915#12247] / [i915#14544] / [i915#3555] / [i915#6953] / [i915#8152])
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html
> 
>   * igt@kms_pm_backlight@basic-brightness:
>     - shard-tglu:         NOTRUN -> [SKIP][284] ([i915#9812])
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-2/igt@kms_pm_backlight@basic-brightness.html
> 
>   * igt@kms_pm_dc@dc3co-vpb-simulation:
>     - shard-tglu:         NOTRUN -> [SKIP][285] ([i915#9685])
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-2/igt@kms_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_pm_dc@dc5-psr:
>     - shard-rkl:          NOTRUN -> [SKIP][286] ([i915#14544] / [i915#9685])
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_pm_dc@dc5-psr.html
> 
>   * igt@kms_pm_dc@dc5-retention-flops:
>     - shard-dg2:          NOTRUN -> [SKIP][287] ([i915#3828])
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-7/igt@kms_pm_dc@dc5-retention-flops.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][288] ([i915#14104])
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-7/igt@kms_pm_dc@dc6-dpms.html
>     - shard-tglu-1:       NOTRUN -> [FAIL][289] ([i915#9295])
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-1/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-tglu:         NOTRUN -> [SKIP][290] ([i915#4281])
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-2/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
>     - shard-rkl:          [PASS][291] -> [SKIP][292] ([i915#9519])
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-7/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
> 
>   * igt@kms_pm_rpm@fences-dpms:
>     - shard-rkl:          [PASS][293] -> [SKIP][294] ([i915#14544] / [i915#1849]) +1 other test skip
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-2/igt@kms_pm_rpm@fences-dpms.html
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_pm_rpm@fences-dpms.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-dg2-9:        NOTRUN -> [SKIP][295] ([i915#9519])
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-rkl:          [PASS][296] -> [SKIP][297] ([i915#14544] / [i915#9519])
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-tglu:         NOTRUN -> [SKIP][298] ([i915#9519])
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_pm_rpm@system-suspend-modeset:
>     - shard-rkl:          [PASS][299] -> [INCOMPLETE][300] ([i915#14419])
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-7/igt@kms_pm_rpm@system-suspend-modeset.html
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-3/igt@kms_pm_rpm@system-suspend-modeset.html
> 
>   * igt@kms_prime@basic-crc-vgem:
>     - shard-dg2-9:        NOTRUN -> [SKIP][301] ([i915#6524] / [i915#6805])
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@kms_prime@basic-crc-vgem.html
> 
>   * igt@kms_properties@crtc-properties-legacy:
>     - shard-rkl:          [PASS][302] -> [SKIP][303] ([i915#11521] / [i915#14544])
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-7/igt@kms_properties@crtc-properties-legacy.html
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_properties@crtc-properties-legacy.html
> 
>   * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf:
>     - shard-snb:          NOTRUN -> [SKIP][304] ([i915#11520]) +1 other test skip
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-snb7/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][305] ([i915#11520])
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area:
>     - shard-dg1:          NOTRUN -> [SKIP][306] ([i915#11520]) +1 other test skip
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-18/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][307] ([i915#11520] / [i915#14544])
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf:
>     - shard-dg2:          NOTRUN -> [SKIP][308] ([i915#11520]) +6 other tests skip
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-7/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][309] ([i915#11520]) +3 other tests skip
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-1/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-sf:
>     - shard-dg2-9:        NOTRUN -> [SKIP][310] ([i915#11520]) +5 other tests skip
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area:
>     - shard-glk10:        NOTRUN -> [SKIP][311] ([i915#11520]) +11 other tests skip
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-glk10/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf:
>     - shard-glk:          NOTRUN -> [SKIP][312] ([i915#11520]) +6 other tests skip
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-glk5/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][313] ([i915#11520]) +3 other tests skip
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-2/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-tglu-1:       NOTRUN -> [SKIP][314] ([i915#9683])
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-1/igt@kms_psr2_su@page_flip-nv12.html
>     - shard-dg1:          NOTRUN -> [SKIP][315] ([i915#9683])
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-18/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-dg2:          NOTRUN -> [SKIP][316] ([i915#9683])
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-6/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr@fbc-psr-cursor-plane-onoff:
>     - shard-mtlp:         NOTRUN -> [SKIP][317] ([i915#9688]) +2 other tests skip
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-mtlp-3/igt@kms_psr@fbc-psr-cursor-plane-onoff.html
> 
>   * igt@kms_psr@fbc-psr-no-drrs:
>     - shard-tglu:         NOTRUN -> [SKIP][318] ([i915#9732]) +9 other tests skip
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-2/igt@kms_psr@fbc-psr-no-drrs.html
> 
>   * igt@kms_psr@fbc-psr-primary-mmap-gtt:
>     - shard-dg2-9:        NOTRUN -> [SKIP][319] ([i915#1072] / [i915#9732]) +15 other tests skip
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@kms_psr@fbc-psr-primary-mmap-gtt.html
> 
>   * igt@kms_psr@fbc-psr2-no-drrs:
>     - shard-rkl:          NOTRUN -> [SKIP][320] ([i915#1072] / [i915#9732])
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_psr@fbc-psr2-no-drrs.html
> 
>   * igt@kms_psr@pr-primary-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][321] ([i915#1072] / [i915#9732]) +17 other tests skip
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-6/igt@kms_psr@pr-primary-mmap-cpu.html
> 
>   * igt@kms_psr@psr-sprite-mmap-cpu:
>     - shard-tglu-1:       NOTRUN -> [SKIP][322] ([i915#9732]) +9 other tests skip
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-1/igt@kms_psr@psr-sprite-mmap-cpu.html
>     - shard-dg1:          NOTRUN -> [SKIP][323] ([i915#1072] / [i915#9732]) +2 other tests skip
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-18/igt@kms_psr@psr-sprite-mmap-cpu.html
> 
>   * igt@kms_psr@psr-sprite-plane-onoff:
>     - shard-rkl:          NOTRUN -> [SKIP][324] ([i915#1072] / [i915#14544] / [i915#9732]) +5 other tests skip
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_psr@psr-sprite-plane-onoff.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
>     - shard-tglu:         NOTRUN -> [SKIP][325] ([i915#5289])
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-2/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
>     - shard-tglu-1:       NOTRUN -> [SKIP][326] ([i915#5289])
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-1/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
>     - shard-dg1:          NOTRUN -> [SKIP][327] ([i915#5289])
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-18/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
> 
>   * igt@kms_rotation_crc@primary-rotation-90:
>     - shard-dg2-9:        NOTRUN -> [SKIP][328] ([i915#12755])
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@kms_rotation_crc@primary-rotation-90.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
>     - shard-dg2-9:        NOTRUN -> [SKIP][329] ([i915#12755] / [i915#5190])
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>     - shard-dg2-9:        NOTRUN -> [SKIP][330] ([i915#5190])
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
> 
>   * igt@kms_sequence@get-idle@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][331] ([i915#12964])
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-2/igt@kms_sequence@get-idle@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_setmode@basic:
>     - shard-dg1:          [PASS][332] -> [FAIL][333] ([i915#5465]) +2 other tests fail
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-dg1-15/igt@kms_setmode@basic.html
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-19/igt@kms_setmode@basic.html
>     - shard-tglu:         NOTRUN -> [FAIL][334] ([i915#5465]) +1 other test fail
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-2/igt@kms_setmode@basic.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - shard-dg2:          NOTRUN -> [SKIP][335] ([i915#3555]) +3 other tests skip
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-6/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:
>     - shard-mtlp:         [PASS][336] -> [FAIL][337] ([i915#9196]) +1 other test fail
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-mtlp-8/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
> 
>   * igt@kms_vrr@flip-dpms:
>     - shard-tglu-1:       NOTRUN -> [SKIP][338] ([i915#3555]) +1 other test skip
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-1/igt@kms_vrr@flip-dpms.html
>     - shard-dg1:          NOTRUN -> [SKIP][339] ([i915#3555]) +1 other test skip
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-18/igt@kms_vrr@flip-dpms.html
> 
>   * igt@kms_vrr@max-min:
>     - shard-dg2:          NOTRUN -> [SKIP][340] ([i915#9906])
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-6/igt@kms_vrr@max-min.html
> 
>   * igt@kms_vrr@seamless-rr-switch-drrs:
>     - shard-dg2-9:        NOTRUN -> [SKIP][341] ([i915#9906])
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@kms_vrr@seamless-rr-switch-drrs.html
> 
>   * igt@kms_vrr@seamless-rr-switch-vrr:
>     - shard-tglu:         NOTRUN -> [SKIP][342] ([i915#9906])
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-2/igt@kms_vrr@seamless-rr-switch-vrr.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-rkl:          NOTRUN -> [SKIP][343] ([i915#14544] / [i915#2437]) +1 other test skip
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-check-output-xrgb2101010:
>     - shard-dg2-9:        NOTRUN -> [SKIP][344] ([i915#2437] / [i915#9412])
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@kms_writeback@writeback-check-output-xrgb2101010.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-glk:          NOTRUN -> [SKIP][345] ([i915#2437]) +1 other test skip
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-glk9/igt@kms_writeback@writeback-fb-id.html
>     - shard-dg2:          NOTRUN -> [SKIP][346] ([i915#2437])
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-7/igt@kms_writeback@writeback-fb-id.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][347] ([i915#2437])
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-1/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@kms_writeback@writeback-fb-id-xrgb2101010:
>     - shard-dg2:          NOTRUN -> [SKIP][348] ([i915#2437] / [i915#9412])
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-7/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-mtlp:         NOTRUN -> [SKIP][349] ([i915#2437] / [i915#9412])
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-mtlp-3/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf@mi-rpc:
>     - shard-dg2-9:        NOTRUN -> [SKIP][350] ([i915#2434])
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@perf@mi-rpc.html
> 
>   * igt@perf@unprivileged-single-ctx-counters:
>     - shard-rkl:          NOTRUN -> [SKIP][351] ([i915#2433])
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@perf@unprivileged-single-ctx-counters.html
> 
>   * igt@perf_pmu@busy-double-start@vecs1:
>     - shard-dg2-9:        NOTRUN -> [FAIL][352] ([i915#4349]) +4 other tests fail
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@perf_pmu@busy-double-start@vecs1.html
> 
>   * igt@perf_pmu@enable-race:
>     - shard-glk:          NOTRUN -> [DMESG-WARN][353] ([i915#118]) +1 other test dmesg-warn
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-glk9/igt@perf_pmu@enable-race.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-glk10:        NOTRUN -> [FAIL][354] ([i915#14433])
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-glk10/igt@perf_pmu@module-unload.html
> 
>   * igt@perf_pmu@rc6@other-idle-gt0:
>     - shard-dg2:          NOTRUN -> [SKIP][355] ([i915#8516])
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-7/igt@perf_pmu@rc6@other-idle-gt0.html
> 
>   * igt@prime_mmap@test_aperture_limit:
>     - shard-dg2:          NOTRUN -> [SKIP][356] ([i915#14121]) +1 other test skip
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-11/igt@prime_mmap@test_aperture_limit.html
> 
>   * igt@prime_vgem@basic-fence-mmap:
>     - shard-dg2-9:        NOTRUN -> [SKIP][357] ([i915#3708] / [i915#4077])
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@prime_vgem@basic-fence-mmap.html
> 
>   * igt@prime_vgem@fence-read-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][358] ([i915#3708]) +1 other test skip
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-11/igt@prime_vgem@fence-read-hang.html
> 
>   * igt@prime_vgem@fence-write-hang:
>     - shard-rkl:          NOTRUN -> [SKIP][359] ([i915#14544] / [i915#3708])
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@prime_vgem@fence-write-hang.html
> 
>   * igt@sriov_basic@bind-unbind-vf:
>     - shard-dg2-9:        NOTRUN -> [SKIP][360] ([i915#9917])
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-9/igt@sriov_basic@bind-unbind-vf.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-off:
>     - shard-dg2:          NOTRUN -> [SKIP][361] ([i915#9917]) +2 other tests skip
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-7/igt@sriov_basic@enable-vfs-autoprobe-off.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-random:
>     - shard-tglu-1:       NOTRUN -> [FAIL][362] ([i915#12910]) +9 other tests fail
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-tglu-1/igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-random.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@fbdev@read:
>     - shard-rkl:          [SKIP][363] ([i915#14544] / [i915#2582]) -> [PASS][364] +1 other test pass
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@fbdev@read.html
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@fbdev@read.html
> 
>   * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:
>     - shard-dg2:          [INCOMPLETE][365] ([i915#12392] / [i915#13356]) -> [PASS][366]
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-dg2-6/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-4/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html
> 
>   * igt@gem_ctx_persistence@engines-queued:
>     - shard-dg1:          [ABORT][367] ([i915#13562]) -> [PASS][368]
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-dg1-16/igt@gem_ctx_persistence@engines-queued.html
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-18/igt@gem_ctx_persistence@engines-queued.html
> 
>   * igt@gem_ctx_persistence@engines-queued@bcs0:
>     - shard-dg1:          [ABORT][369] -> [PASS][370]
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-dg1-16/igt@gem_ctx_persistence@engines-queued@bcs0.html
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-18/igt@gem_ctx_persistence@engines-queued@bcs0.html
> 
>   * igt@gem_ctx_persistence@engines-queued@rcs0:
>     - shard-dg1:          [DMESG-WARN][371] ([i915#13562]) -> [PASS][372]
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-dg1-16/igt@gem_ctx_persistence@engines-queued@rcs0.html
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-18/igt@gem_ctx_persistence@engines-queued@rcs0.html
> 
>   * igt@gem_exec_endless@dispatch@vcs1:
>     - shard-dg2:          [TIMEOUT][373] ([i915#3778] / [i915#7016]) -> [PASS][374] +1 other test pass
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-dg2-1/igt@gem_exec_endless@dispatch@vcs1.html
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-4/igt@gem_exec_endless@dispatch@vcs1.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-odd:
>     - shard-rkl:          [DMESG-WARN][375] ([i915#12964]) -> [PASS][376] +7 other tests pass
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-4/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
> 
>   * igt@gem_mmap_offset@clear-via-pagefault:
>     - shard-mtlp:         [ABORT][377] ([i915#14809]) -> [PASS][378] +1 other test pass
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-mtlp-8/igt@gem_mmap_offset@clear-via-pagefault.html
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-mtlp-3/igt@gem_mmap_offset@clear-via-pagefault.html
> 
>   * igt@gem_pxp@create-regular-buffer:
>     - shard-rkl:          [TIMEOUT][379] ([i915#12917] / [i915#12964]) -> [PASS][380]
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-4/igt@gem_pxp@create-regular-buffer.html
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@gem_pxp@create-regular-buffer.html
> 
>   * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
>     - shard-rkl:          [TIMEOUT][381] ([i915#12964]) -> [PASS][382] +1 other test pass
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
> 
>   * igt@gem_pxp@fail-invalid-protected-context:
>     - shard-rkl:          [SKIP][383] ([i915#14544] / [i915#4270]) -> [PASS][384]
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@gem_pxp@fail-invalid-protected-context.html
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@gem_pxp@fail-invalid-protected-context.html
> 
>   * igt@i915_pm_freq_api@freq-suspend@gt0:
>     - shard-dg2:          [INCOMPLETE][385] ([i915#13356] / [i915#13820]) -> [PASS][386] +1 other test pass
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-dg2-5/igt@i915_pm_freq_api@freq-suspend@gt0.html
>    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-6/igt@i915_pm_freq_api@freq-suspend@gt0.html
> 
>   * igt@i915_pm_rps@reset:
>     - shard-snb:          [INCOMPLETE][387] ([i915#13729] / [i915#13821]) -> [PASS][388]
>    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-snb1/igt@i915_pm_rps@reset.html
>    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-snb7/igt@i915_pm_rps@reset.html
> 
>   * igt@kms_addfb_basic@bo-too-small:
>     - shard-dg1:          [DMESG-WARN][389] ([i915#4391] / [i915#4423]) -> [PASS][390]
>    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-dg1-15/igt@kms_addfb_basic@bo-too-small.html
>    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-19/igt@kms_addfb_basic@bo-too-small.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc:
>     - shard-dg1:          [DMESG-WARN][391] ([i915#4423]) -> [PASS][392] +1 other test pass
>    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-dg1-15/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html
>    [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-19/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html
> 
>   * igt@kms_color@gamma:
>     - shard-rkl:          [SKIP][393] ([i915#12655] / [i915#14544]) -> [PASS][394] +2 other tests pass
>    [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_color@gamma.html
>    [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_color@gamma.html
> 
>   * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
>     - shard-rkl:          [SKIP][395] ([i915#11190] / [i915#14544]) -> [PASS][396] +3 other tests pass
>    [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
>    [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-rkl:          [FAIL][397] ([i915#2346]) -> [PASS][398]
>    [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
>     - shard-rkl:          [SKIP][399] ([i915#14544] / [i915#3637]) -> [PASS][400] +9 other tests pass
>    [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
>    [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@flip-vs-dpms-on-nop:
>     - shard-rkl:          [SKIP][401] ([i915#14544] / [i915#14553]) -> [PASS][402]
>    [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_flip@flip-vs-dpms-on-nop.html
>    [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-5/igt@kms_flip@flip-vs-dpms-on-nop.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
>     - shard-rkl:          [SKIP][403] ([i915#14544] / [i915#3555]) -> [PASS][404] +3 other tests pass
>    [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
>    [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][405] ([i915#14544] / [i915#1849] / [i915#5354]) -> [PASS][406] +12 other tests pass
>    [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
>    [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_invalid_mode@overflow-vrefresh:
>     - shard-rkl:          [SKIP][407] ([i915#14544] / [i915#8826]) -> [PASS][408]
>    [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_invalid_mode@overflow-vrefresh.html
>    [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-2/igt@kms_invalid_mode@overflow-vrefresh.html
> 
>   * igt@kms_invalid_mode@uint-max-clock:
>     - shard-rkl:          [SKIP][409] ([i915#14544] / [i915#3555] / [i915#8826]) -> [PASS][410] +2 other tests pass
>    [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_invalid_mode@uint-max-clock.html
>    [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_invalid_mode@uint-max-clock.html
> 
>   * {igt@kms_pipe_stress@stress-xrgb8888-xtiled}:
>     - shard-rkl:          [SKIP][411] ([i915#14544]) -> [PASS][412] +67 other tests pass
>    [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_pipe_stress@stress-xrgb8888-xtiled.html
>    [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_pipe_stress@stress-xrgb8888-xtiled.html
> 
>   * igt@kms_plane@planar-pixel-format-settings:
>     - shard-rkl:          [SKIP][413] ([i915#14544] / [i915#9581]) -> [PASS][414]
>    [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_plane@planar-pixel-format-settings.html
>    [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_plane@planar-pixel-format-settings.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a:
>     - shard-rkl:          [INCOMPLETE][415] ([i915#14412]) -> [PASS][416] +1 other test pass
>    [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html
>    [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html
> 
>   * igt@kms_plane@plane-position-hole-dpms:
>     - shard-rkl:          [SKIP][417] ([i915#14544] / [i915#8825]) -> [PASS][418] +3 other tests pass
>    [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_plane@plane-position-hole-dpms.html
>    [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-2/igt@kms_plane@plane-position-hole-dpms.html
> 
>   * igt@kms_plane_alpha_blend@alpha-opaque-fb:
>     - shard-rkl:          [SKIP][419] ([i915#14544] / [i915#7294]) -> [PASS][420]
>    [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_plane_alpha_blend@alpha-opaque-fb.html
>    [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-2/igt@kms_plane_alpha_blend@alpha-opaque-fb.html
> 
>   * igt@kms_plane_scaling@planes-scaler-unity-scaling:
>     - shard-rkl:          [SKIP][421] ([i915#14544] / [i915#3555] / [i915#8152]) -> [PASS][422] +1 other test pass
>    [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_plane_scaling@planes-scaler-unity-scaling.html
>    [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-5/igt@kms_plane_scaling@planes-scaler-unity-scaling.html
> 
>   * igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a:
>     - shard-rkl:          [SKIP][423] ([i915#12247] / [i915#14544]) -> [PASS][424] +2 other tests pass
>    [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a.html
>    [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-5/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:
>     - shard-rkl:          [SKIP][425] ([i915#14544] / [i915#3555] / [i915#6953] / [i915#8152]) -> [PASS][426] +1 other test pass
>    [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html
>    [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b:
>     - shard-rkl:          [SKIP][427] ([i915#12247] / [i915#14544] / [i915#8152]) -> [PASS][428] +2 other tests pass
>    [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b.html
>    [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b.html
> 
>   * igt@kms_pm_rpm@cursor-dpms:
>     - shard-rkl:          [SKIP][429] ([i915#14544] / [i915#1849]) -> [PASS][430]
>    [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_pm_rpm@cursor-dpms.html
>    [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-5/igt@kms_pm_rpm@cursor-dpms.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-rkl:          [SKIP][431] ([i915#14544] / [i915#9519]) -> [PASS][432]
>    [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_pm_rpm@dpms-lpsp.html
>    [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-dg2:          [SKIP][433] ([i915#9519]) -> [PASS][434]
>    [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-6/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>     - shard-rkl:          [SKIP][435] ([i915#9519]) -> [PASS][436]
>    [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_properties@plane-properties-legacy:
>     - shard-rkl:          [SKIP][437] ([i915#11521] / [i915#14544]) -> [PASS][438] +1 other test pass
>    [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_properties@plane-properties-legacy.html
>    [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_properties@plane-properties-legacy.html
> 
>   * igt@perf@polling-small-buf:
>     - shard-rkl:          [FAIL][439] ([i915#14550]) -> [PASS][440]
>    [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@perf@polling-small-buf.html
>    [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@perf@polling-small-buf.html
> 
>   
> #### Warnings ####
> 
>   * igt@api_intel_bb@crc32:
>     - shard-rkl:          [SKIP][441] ([i915#14544] / [i915#6230]) -> [SKIP][442] ([i915#6230])
>    [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@api_intel_bb@crc32.html
>    [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@api_intel_bb@crc32.html
> 
>   * igt@api_intel_bb@object-reloc-keep-cache:
>     - shard-rkl:          [SKIP][443] ([i915#8411]) -> [SKIP][444] ([i915#14544] / [i915#8411])
>    [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@api_intel_bb@object-reloc-keep-cache.html
>    [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@api_intel_bb@object-reloc-keep-cache.html
> 
>   * igt@device_reset@unbind-cold-reset-rebind:
>     - shard-rkl:          [SKIP][445] ([i915#11078] / [i915#14544]) -> [SKIP][446] ([i915#11078])
>    [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@device_reset@unbind-cold-reset-rebind.html
>    [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@device_reset@unbind-cold-reset-rebind.html
> 
>   * igt@gem_bad_reloc@negative-reloc-lut:
>     - shard-rkl:          [SKIP][447] ([i915#14544] / [i915#3281]) -> [SKIP][448] ([i915#3281]) +13 other tests skip
>    [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@gem_bad_reloc@negative-reloc-lut.html
>    [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-5/igt@gem_bad_reloc@negative-reloc-lut.html
> 
>   * igt@gem_ccs@large-ctrl-surf-copy:
>     - shard-rkl:          [SKIP][449] ([i915#13008] / [i915#14544]) -> [SKIP][450] ([i915#13008])
>    [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@gem_ccs@large-ctrl-surf-copy.html
>    [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-2/igt@gem_ccs@large-ctrl-surf-copy.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-rkl:          [SKIP][451] ([i915#9323]) -> [SKIP][452] ([i915#14544] / [i915#9323])
>    [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-7/igt@gem_ccs@suspend-resume.html
>    [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-rkl:          [SKIP][453] ([i915#14544] / [i915#7697]) -> [SKIP][454] ([i915#7697])
>    [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@gem_close_race@multigpu-basic-process.html
>    [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-2/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-rkl:          [SKIP][455] ([i915#280]) -> [SKIP][456] ([i915#14544] / [i915#280])
>    [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@gem_ctx_sseu@invalid-args.html
>    [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-rkl:          [SKIP][457] ([i915#4525]) -> [SKIP][458] ([i915#14544] / [i915#4525]) +1 other test skip
>    [457]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-7/igt@gem_exec_balancer@parallel-bb-first.html
>    [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:
>     - shard-rkl:          [SKIP][459] ([i915#14544] / [i915#4525]) -> [SKIP][460] ([i915#4525])
>    [459]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html
>    [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-2/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html
> 
>   * igt@gem_exec_reloc@basic-gtt-cpu:
>     - shard-rkl:          [SKIP][461] ([i915#3281]) -> [SKIP][462] ([i915#14544] / [i915#3281]) +4 other tests skip
>    [461]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@gem_exec_reloc@basic-gtt-cpu.html
>    [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu.html
> 
>   * igt@gem_lmem_swapping@parallel-multi:
>     - shard-rkl:          [SKIP][463] ([i915#14544] / [i915#4613]) -> [SKIP][464] ([i915#4613]) +4 other tests skip
>    [463]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@gem_lmem_swapping@parallel-multi.html
>    [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-2/igt@gem_lmem_swapping@parallel-multi.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-rkl:          [SKIP][465] ([i915#4613]) -> [SKIP][466] ([i915#14544] / [i915#4613]) +1 other test skip
>    [465]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-7/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
>    [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_media_vme:
>     - shard-rkl:          [SKIP][467] ([i915#284]) -> [SKIP][468] ([i915#14544] / [i915#284])
>    [467]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@gem_media_vme.html
>    [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@gem_media_vme.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>     - shard-rkl:          [SKIP][469] ([i915#14544] / [i915#3282]) -> [SKIP][470] ([i915#3282]) +7 other tests skip
>    [469]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
>    [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-2:
>     - shard-rkl:          [SKIP][471] ([i915#14544] / [i915#4270]) -> [TIMEOUT][472] ([i915#12917] / [i915#12964])
>    [471]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@gem_pxp@reject-modify-context-protection-off-2.html
>    [472]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-2/igt@gem_pxp@reject-modify-context-protection-off-2.html
> 
>   * igt@gem_readwrite@beyond-eob:
>     - shard-rkl:          [SKIP][473] ([i915#3282]) -> [SKIP][474] ([i915#14544] / [i915#3282]) +7 other tests skip
>    [473]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@gem_readwrite@beyond-eob.html
>    [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@gem_readwrite@beyond-eob.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
>     - shard-rkl:          [SKIP][475] ([i915#14544] / [i915#8411]) -> [SKIP][476] ([i915#8411]) +1 other test skip
>    [475]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
>    [476]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
> 
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-rkl:          [SKIP][477] ([i915#14544] / [i915#3297]) -> [SKIP][478] ([i915#3297]) +5 other tests skip
>    [477]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@gem_userptr_blits@create-destroy-unsync.html
>    [478]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-5/igt@gem_userptr_blits@create-destroy-unsync.html
> 
>   * igt@gem_userptr_blits@relocations:
>     - shard-rkl:          [SKIP][479] ([i915#14544] / [i915#3281] / [i915#3297]) -> [SKIP][480] ([i915#3281] / [i915#3297])
>    [479]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@gem_userptr_blits@relocations.html
>    [480]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-2/igt@gem_userptr_blits@relocations.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-after-close:
>     - shard-rkl:          [SKIP][481] ([i915#3297]) -> [SKIP][482] ([i915#14544] / [i915#3297]) +1 other test skip
>    [481]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@gem_userptr_blits@unsync-unmap-after-close.html
>    [482]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@gem_userptr_blits@unsync-unmap-after-close.html
> 
>   * igt@gen9_exec_parse@bb-oversize:
>     - shard-rkl:          [SKIP][483] ([i915#14544] / [i915#2527]) -> [SKIP][484] ([i915#2527]) +1 other test skip
>    [483]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@gen9_exec_parse@bb-oversize.html
>    [484]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-2/igt@gen9_exec_parse@bb-oversize.html
> 
>   * igt@gen9_exec_parse@bb-start-far:
>     - shard-rkl:          [SKIP][485] ([i915#2527]) -> [SKIP][486] ([i915#14544] / [i915#2527]) +5 other tests skip
>    [485]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-2/igt@gen9_exec_parse@bb-start-far.html
>    [486]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@gen9_exec_parse@bb-start-far.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-rkl:          [SKIP][487] ([i915#6412]) -> [SKIP][488] ([i915#14544] / [i915#6412])
>    [487]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@i915_module_load@resize-bar.html
>    [488]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_pm_freq_api@freq-basic-api:
>     - shard-rkl:          [SKIP][489] ([i915#14544] / [i915#8399]) -> [SKIP][490] ([i915#8399])
>    [489]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@i915_pm_freq_api@freq-basic-api.html
>    [490]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@i915_pm_freq_api@freq-basic-api.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-rkl:          [SKIP][491] ([i915#14498]) -> [SKIP][492] ([i915#14498] / [i915#14544])
>    [491]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@i915_pm_rc6_residency@rc6-idle.html
>    [492]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_query@hwconfig_table:
>     - shard-rkl:          [SKIP][493] ([i915#6245]) -> [SKIP][494] ([i915#14544] / [i915#6245])
>    [493]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-2/igt@i915_query@hwconfig_table.html
>    [494]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@i915_query@hwconfig_table.html
> 
>   * igt@intel_hwmon@hwmon-read:
>     - shard-rkl:          [SKIP][495] ([i915#14544] / [i915#7707]) -> [SKIP][496] ([i915#7707])
>    [495]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@intel_hwmon@hwmon-read.html
>    [496]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-2/igt@intel_hwmon@hwmon-read.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-rkl:          [SKIP][497] ([i915#1769] / [i915#3555]) -> [SKIP][498] ([i915#14544])
>    [497]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-2/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
>    [498]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-addfb:
>     - shard-rkl:          [SKIP][499] ([i915#5286]) -> [SKIP][500] ([i915#14544]) +6 other tests skip
>    [499]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@kms_big_fb@4-tiled-addfb.html
>    [500]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_big_fb@4-tiled-addfb.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-rkl:          [SKIP][501] ([i915#14544]) -> [SKIP][502] ([i915#5286]) +5 other tests skip
>    [501]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
>    [502]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-270:
>     - shard-rkl:          [SKIP][503] ([i915#3638]) -> [SKIP][504] ([i915#14544]) +3 other tests skip
>    [503]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-7/igt@kms_big_fb@linear-8bpp-rotate-270.html
>    [504]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
>     - shard-rkl:          [SKIP][505] ([i915#14544]) -> [SKIP][506] ([i915#3638]) +5 other tests skip
>    [505]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
>    [506]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-2/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
>     - shard-rkl:          [SKIP][507] -> [SKIP][508] ([i915#14544]) +11 other tests skip
>    [507]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
>    [508]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
>     - shard-rkl:          [SKIP][509] ([i915#12313]) -> [SKIP][510] ([i915#14544])
>    [509]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-2/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html
>    [510]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs:
>     - shard-rkl:          [SKIP][511] ([i915#14098] / [i915#6095]) -> [SKIP][512] ([i915#14544]) +9 other tests skip
>    [511]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-7/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs.html
>    [512]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          [SKIP][513] ([i915#14098] / [i915#6095]) -> [SKIP][514] ([i915#6095]) +4 other tests skip
>    [513]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-3/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-2.html
>    [514]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
>     - shard-rkl:          [SKIP][515] ([i915#12805]) -> [SKIP][516] ([i915#14544])
>    [515]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
>    [516]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs:
>     - shard-rkl:          [SKIP][517] ([i915#14544]) -> [SKIP][518] ([i915#14098] / [i915#6095]) +18 other tests skip
>    [517]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs.html
>    [518]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
>     - shard-rkl:          [SKIP][519] ([i915#14544]) -> [SKIP][520] ([i915#12313])
>    [519]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
>    [520]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          [SKIP][521] ([i915#6095]) -> [SKIP][522] ([i915#14098] / [i915#6095]) +3 other tests skip
>    [521]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
>    [522]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_cdclk@mode-transition:
>     - shard-rkl:          [SKIP][523] ([i915#3742]) -> [SKIP][524] ([i915#14544] / [i915#3742])
>    [523]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-7/igt@kms_cdclk@mode-transition.html
>    [524]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_cdclk@mode-transition.html
> 
>   * igt@kms_chamelium_frames@dp-crc-fast:
>     - shard-rkl:          [SKIP][525] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][526] ([i915#11151] / [i915#7828]) +7 other tests skip
>    [525]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_chamelium_frames@dp-crc-fast.html
>    [526]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-2/igt@kms_chamelium_frames@dp-crc-fast.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
>     - shard-rkl:          [SKIP][527] ([i915#11151] / [i915#7828]) -> [SKIP][528] ([i915#11151] / [i915#14544] / [i915#7828]) +11 other tests skip
>    [527]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html
>    [528]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html
> 
>   * igt@kms_color@deep-color:
>     - shard-rkl:          [SKIP][529] ([i915#12655] / [i915#14544] / [i915#3555]) -> [SKIP][530] ([i915#12655] / [i915#3555])
>    [529]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_color@deep-color.html
>    [530]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-5/igt@kms_color@deep-color.html
> 
>   * igt@kms_content_protection@content-type-change:
>     - shard-rkl:          [SKIP][531] ([i915#14544]) -> [SKIP][532] ([i915#9424])
>    [531]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_content_protection@content-type-change.html
>    [532]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-5/igt@kms_content_protection@content-type-change.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-rkl:          [SKIP][533] ([i915#14544]) -> [SKIP][534] ([i915#3116])
>    [533]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-0.html
>    [534]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-2/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-rkl:          [SKIP][535] ([i915#3116]) -> [SKIP][536] ([i915#14544])
>    [535]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-7/igt@kms_content_protection@dp-mst-lic-type-1.html
>    [536]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-rkl:          [SKIP][537] ([i915#9424]) -> [SKIP][538] ([i915#14544])
>    [537]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@kms_content_protection@mei-interface.html
>    [538]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-rkl:          [SKIP][539] ([i915#7118]) -> [SKIP][540] ([i915#14544])
>    [539]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-2/igt@kms_content_protection@srm.html
>    [540]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_content_protection@srm.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-rkl:          [SKIP][541] ([i915#14544]) -> [SKIP][542] ([i915#7118] / [i915#9424])
>    [541]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_content_protection@type1.html
>    [542]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_content_protection@type1.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x512:
>     - shard-dg1:          [SKIP][543] ([i915#13049]) -> [SKIP][544] ([i915#13049] / [i915#4423])
>    [543]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-dg1-13/igt@kms_cursor_crc@cursor-offscreen-512x512.html
>    [544]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-14/igt@kms_cursor_crc@cursor-offscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-max-size:
>     - shard-rkl:          [SKIP][545] ([i915#3555]) -> [SKIP][546] ([i915#14544]) +4 other tests skip
>    [545]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-max-size.html
>    [546]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-rkl:          [SKIP][547] ([i915#14544]) -> [SKIP][548] ([i915#13049]) +1 other test skip
>    [547]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x170.html
>    [548]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
>     - shard-rkl:          [SKIP][549] ([i915#14544]) -> [SKIP][550] ([i915#3555]) +5 other tests skip
>    [549]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
>    [550]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
>     - shard-rkl:          [SKIP][551] ([i915#13049]) -> [SKIP][552] ([i915#14544])
>    [551]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
>    [552]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
>     - shard-rkl:          [SKIP][553] ([i915#14544]) -> [SKIP][554] +20 other tests skip
>    [553]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
>    [554]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
>     - shard-dg1:          [SKIP][555] -> [SKIP][556] ([i915#4423])
>    [555]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-dg1-13/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
>    [556]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-14/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-rkl:          [SKIP][557] ([i915#14544]) -> [SKIP][558] ([i915#4103])
>    [557]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
>    [558]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>     - shard-rkl:          [SKIP][559] ([i915#4103]) -> [SKIP][560] ([i915#14544]) +1 other test skip
>    [559]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
>    [560]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_dp_link_training@uhbr-sst:
>     - shard-rkl:          [SKIP][561] ([i915#14544]) -> [SKIP][562] ([i915#13748])
>    [561]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_dp_link_training@uhbr-sst.html
>    [562]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-5/igt@kms_dp_link_training@uhbr-sst.html
> 
>   * igt@kms_dp_linktrain_fallback@dsc-fallback:
>     - shard-rkl:          [SKIP][563] ([i915#14544]) -> [SKIP][564] ([i915#13707])
>    [563]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_dp_linktrain_fallback@dsc-fallback.html
>    [564]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-2/igt@kms_dp_linktrain_fallback@dsc-fallback.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-rkl:          [SKIP][565] ([i915#14544]) -> [SKIP][566] ([i915#3840])
>    [565]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp.html
>    [566]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-rkl:          [SKIP][567] ([i915#3555] / [i915#3840]) -> [SKIP][568] ([i915#14544])
>    [567]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-7/igt@kms_dsc@dsc-with-output-formats.html
>    [568]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-rkl:          [SKIP][569] ([i915#14544] / [i915#3955]) -> [SKIP][570] ([i915#3955])
>    [569]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html
>    [570]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-5/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_feature_discovery@chamelium:
>     - shard-rkl:          [SKIP][571] ([i915#4854]) -> [SKIP][572] ([i915#14544] / [i915#4854])
>    [571]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@kms_feature_discovery@chamelium.html
>    [572]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_feature_discovery@chamelium.html
> 
>   * igt@kms_feature_discovery@dp-mst:
>     - shard-rkl:          [SKIP][573] ([i915#14544] / [i915#9337]) -> [SKIP][574] ([i915#9337])
>    [573]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_feature_discovery@dp-mst.html
>    [574]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-2/igt@kms_feature_discovery@dp-mst.html
> 
>   * igt@kms_feature_discovery@psr2:
>     - shard-rkl:          [SKIP][575] ([i915#658]) -> [SKIP][576] ([i915#14544] / [i915#658])
>    [575]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@kms_feature_discovery@psr2.html
>    [576]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_feature_discovery@psr2.html
> 
>   * igt@kms_flip@2x-plain-flip:
>     - shard-rkl:          [SKIP][577] ([i915#14544] / [i915#9934]) -> [SKIP][578] ([i915#9934]) +7 other tests skip
>    [577]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_flip@2x-plain-flip.html
>    [578]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-2/igt@kms_flip@2x-plain-flip.html
> 
>   * igt@kms_flip@2x-plain-flip-interruptible:
>     - shard-rkl:          [SKIP][579] ([i915#9934]) -> [SKIP][580] ([i915#14544] / [i915#9934]) +7 other tests skip
>    [579]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-2/igt@kms_flip@2x-plain-flip-interruptible.html
>    [580]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_flip@2x-plain-flip-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-rkl:          [INCOMPLETE][581] ([i915#6113]) -> [SKIP][582] ([i915#14544] / [i915#3637])
>    [581]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-3/igt@kms_flip@flip-vs-suspend-interruptible.html
>    [582]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
>     - shard-rkl:          [SKIP][583] ([i915#14544] / [i915#3555]) -> [SKIP][584] ([i915#2672] / [i915#3555]) +5 other tests skip
>    [583]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
>    [584]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
>     - shard-rkl:          [SKIP][585] ([i915#2672] / [i915#3555]) -> [SKIP][586] ([i915#14544] / [i915#3555]) +4 other tests skip
>    [585]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
>    [586]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
>     - shard-rkl:          [SKIP][587] ([i915#14544] / [i915#1849] / [i915#5354]) -> [DMESG-WARN][588] ([i915#12964]) +1 other test dmesg-warn
>    [587]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
>    [588]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:
>     - shard-dg2:          [SKIP][589] ([i915#3458]) -> [SKIP][590] ([i915#10433] / [i915#3458])
>    [589]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html
>    [590]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt:
>     - shard-rkl:          [SKIP][591] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][592] ([i915#1825]) +37 other tests skip
>    [591]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt.html
>    [592]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
>     - shard-rkl:          [SKIP][593] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][594] +1 other test skip
>    [593]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
>    [594]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
>     - shard-rkl:          [SKIP][595] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][596] ([i915#5439])
>    [595]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
>    [596]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>     - shard-rkl:          [SKIP][597] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][598] ([i915#9766])
>    [597]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
>    [598]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-2/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:
>     - shard-dg2:          [SKIP][599] ([i915#10433] / [i915#3458]) -> [SKIP][600] ([i915#3458]) +2 other tests skip
>    [599]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html
>    [600]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render:
>     - shard-rkl:          [SKIP][601] ([i915#1825]) -> [SKIP][602] ([i915#14544] / [i915#1849] / [i915#5354]) +34 other tests skip
>    [601]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html
>    [602]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][603] ([i915#3023]) -> [SKIP][604] ([i915#14544] / [i915#1849] / [i915#5354]) +22 other tests skip
>    [603]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html
>    [604]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-suspend:
>     - shard-rkl:          [SKIP][605] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][606] ([i915#3023]) +27 other tests skip
>    [605]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-suspend.html
>    [606]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-suspend.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-rkl:          [SKIP][607] ([i915#3555] / [i915#8228]) -> [SKIP][608] ([i915#14544]) +1 other test skip
>    [607]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-7/igt@kms_hdr@bpc-switch.html
>    [608]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-rkl:          [SKIP][609] ([i915#12713]) -> [SKIP][610] ([i915#1187] / [i915#12713])
>    [609]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@kms_hdr@brightness-with-hdr.html
>    [610]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-3/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-rkl:          [SKIP][611] ([i915#14544]) -> [SKIP][612] ([i915#3555] / [i915#8228])
>    [611]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_hdr@invalid-metadata-sizes.html
>    [612]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-5/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_joiner@basic-force-ultra-joiner:
>     - shard-rkl:          [SKIP][613] ([i915#12394]) -> [SKIP][614] ([i915#12394] / [i915#14544])
>    [613]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@kms_joiner@basic-force-ultra-joiner.html
>    [614]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_joiner@basic-force-ultra-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-big-joiner:
>     - shard-rkl:          [SKIP][615] ([i915#12388] / [i915#14544]) -> [SKIP][616] ([i915#12388])
>    [615]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_joiner@invalid-modeset-force-big-joiner.html
>    [616]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_joiner@invalid-modeset-force-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-ultra-joiner:
>     - shard-rkl:          [SKIP][617] ([i915#12339]) -> [SKIP][618] ([i915#12339] / [i915#14544])
>    [617]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-7/igt@kms_joiner@invalid-modeset-ultra-joiner.html
>    [618]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_joiner@invalid-modeset-ultra-joiner.html
> 
>   * igt@kms_plane_multiple@2x-tiling-4:
>     - shard-rkl:          [SKIP][619] ([i915#13958]) -> [SKIP][620] ([i915#14544]) +1 other test skip
>    [619]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-7/igt@kms_plane_multiple@2x-tiling-4.html
>    [620]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-4.html
> 
>   * igt@kms_plane_multiple@2x-tiling-none:
>     - shard-rkl:          [SKIP][621] ([i915#14544]) -> [SKIP][622] ([i915#13958])
>    [621]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-none.html
>    [622]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-2/igt@kms_plane_multiple@2x-tiling-none.html
> 
>   * igt@kms_plane_scaling@2x-scaler-multi-pipe:
>     - shard-rkl:          [SKIP][623] ([i915#14544] / [i915#8152]) -> [SKIP][624]
>    [623]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
>    [624]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-2/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-rkl:          [SKIP][625] ([i915#6953]) -> [SKIP][626] ([i915#14544] / [i915#6953] / [i915#8152])
>    [625]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-2/igt@kms_plane_scaling@intel-max-src-size.html
>    [626]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
>     - shard-rkl:          [SKIP][627] ([i915#14544] / [i915#3555] / [i915#8152]) -> [SKIP][628] ([i915#3555])
>    [627]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
>    [628]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
>     - shard-rkl:          [SKIP][629] ([i915#12247] / [i915#14544]) -> [SKIP][630] ([i915#12247]) +1 other test skip
>    [629]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html
>    [630]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b:
>     - shard-rkl:          [SKIP][631] ([i915#12247] / [i915#14544] / [i915#8152]) -> [SKIP][632] ([i915#12247]) +2 other tests skip
>    [631]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b.html
>    [632]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b.html
> 
>   * igt@kms_pm_backlight@brightness-with-dpms:
>     - shard-rkl:          [SKIP][633] ([i915#12343]) -> [SKIP][634] ([i915#12343] / [i915#14544])
>    [633]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-7/igt@kms_pm_backlight@brightness-with-dpms.html
>    [634]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_pm_backlight@brightness-with-dpms.html
> 
>   * igt@kms_pm_backlight@fade-with-suspend:
>     - shard-rkl:          [SKIP][635] ([i915#14544] / [i915#5354]) -> [SKIP][636] ([i915#5354]) +1 other test skip
>    [635]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_pm_backlight@fade-with-suspend.html
>    [636]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-2/igt@kms_pm_backlight@fade-with-suspend.html
> 
>   * igt@kms_pm_dc@dc5-retention-flops:
>     - shard-rkl:          [SKIP][637] ([i915#14544] / [i915#3828]) -> [SKIP][638] ([i915#3828])
>    [637]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_pm_dc@dc5-retention-flops.html
>    [638]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_pm_dc@dc5-retention-flops.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-rkl:          [SKIP][639] ([i915#3361]) -> [FAIL][640] ([i915#9295])
>    [639]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@kms_pm_dc@dc6-dpms.html
>    [640]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-3/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_dc@dc6-psr:
>     - shard-rkl:          [SKIP][641] ([i915#9685]) -> [SKIP][642] ([i915#14544] / [i915#9685])
>    [641]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-7/igt@kms_pm_dc@dc6-psr.html
>    [642]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_pm_dc@dc6-psr.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-rkl:          [SKIP][643] ([i915#3828]) -> [SKIP][644] ([i915#9340])
>    [643]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-4/igt@kms_pm_lpsp@kms-lpsp.html
>    [644]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_lpsp@screens-disabled:
>     - shard-rkl:          [SKIP][645] ([i915#14544] / [i915#8430]) -> [SKIP][646] ([i915#8430])
>    [645]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_pm_lpsp@screens-disabled.html
>    [646]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_pm_lpsp@screens-disabled.html
> 
>   * igt@kms_pm_rpm@i2c:
>     - shard-rkl:          [SKIP][647] ([i915#14544]) -> [DMESG-WARN][648] ([i915#12964]) +1 other test dmesg-warn
>    [647]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_pm_rpm@i2c.html
>    [648]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-2/igt@kms_pm_rpm@i2c.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-rkl:          [SKIP][649] ([i915#9519]) -> [SKIP][650] ([i915#14544] / [i915#9519])
>    [649]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@kms_pm_rpm@modeset-lpsp.html
>    [650]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-rkl:          [SKIP][651] ([i915#14544] / [i915#9519]) -> [SKIP][652] ([i915#9519])
>    [651]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp.html
>    [652]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:
>     - shard-rkl:          [SKIP][653] ([i915#11520] / [i915#14544]) -> [SKIP][654] ([i915#11520]) +9 other tests skip
>    [653]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html
>    [654]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
>     - shard-rkl:          [SKIP][655] ([i915#11520]) -> [SKIP][656] ([i915#11520] / [i915#14544]) +8 other tests skip
>    [655]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-2/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html
>    [656]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr@fbc-pr-cursor-plane-onoff:
>     - shard-dg1:          [SKIP][657] ([i915#1072] / [i915#9732]) -> [SKIP][658] ([i915#1072] / [i915#4423] / [i915#9732])
>    [657]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-dg1-15/igt@kms_psr@fbc-pr-cursor-plane-onoff.html
>    [658]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-19/igt@kms_psr@fbc-pr-cursor-plane-onoff.html
> 
>   * igt@kms_psr@fbc-psr-cursor-plane-move:
>     - shard-rkl:          [SKIP][659] ([i915#1072] / [i915#9732]) -> [SKIP][660] ([i915#1072] / [i915#14544] / [i915#9732]) +19 other tests skip
>    [659]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@kms_psr@fbc-psr-cursor-plane-move.html
>    [660]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_psr@fbc-psr-cursor-plane-move.html
> 
>   * igt@kms_psr@pr-no-drrs:
>     - shard-dg1:          [SKIP][661] ([i915#1072] / [i915#4423] / [i915#9732]) -> [SKIP][662] ([i915#1072] / [i915#9732])
>    [661]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-dg1-15/igt@kms_psr@pr-no-drrs.html
>    [662]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-dg1-19/igt@kms_psr@pr-no-drrs.html
> 
>   * igt@kms_psr@psr2-cursor-mmap-gtt:
>     - shard-rkl:          [SKIP][663] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][664] ([i915#1072] / [i915#9732]) +24 other tests skip
>    [663]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_psr@psr2-cursor-mmap-gtt.html
>    [664]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-5/igt@kms_psr@psr2-cursor-mmap-gtt.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>     - shard-rkl:          [SKIP][665] ([i915#5289]) -> [SKIP][666] ([i915#14544])
>    [665]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
>    [666]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>     - shard-rkl:          [SKIP][667] ([i915#14544]) -> [SKIP][668] ([i915#5289])
>    [667]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
>    [668]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
> 
>   * igt@kms_setmode@invalid-clone-exclusive-crtc:
>     - shard-rkl:          [SKIP][669] ([i915#3555]) -> [SKIP][670] ([i915#14544] / [i915#3555])
>    [669]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@kms_setmode@invalid-clone-exclusive-crtc.html
>    [670]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_setmode@invalid-clone-exclusive-crtc.html
> 
>   * igt@kms_vrr@seamless-rr-switch-drrs:
>     - shard-rkl:          [SKIP][671] ([i915#9906]) -> [SKIP][672] ([i915#14544])
>    [671]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-2/igt@kms_vrr@seamless-rr-switch-drrs.html
>    [672]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-drrs.html
> 
>   * igt@kms_vrr@seamless-rr-switch-virtual:
>     - shard-rkl:          [SKIP][673] ([i915#14544]) -> [SKIP][674] ([i915#9906])
>    [673]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-virtual.html
>    [674]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_vrr@seamless-rr-switch-virtual.html
> 
>   * igt@kms_writeback@writeback-fb-id-xrgb2101010:
>     - shard-rkl:          [SKIP][675] ([i915#14544] / [i915#2437] / [i915#9412]) -> [SKIP][676] ([i915#2437] / [i915#9412])
>    [675]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
>    [676]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
> 
>   * igt@perf@mi-rpc:
>     - shard-rkl:          [SKIP][677] ([i915#2434]) -> [SKIP][678] ([i915#14544] / [i915#2434])
>    [677]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-2/igt@perf@mi-rpc.html
>    [678]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@perf@mi-rpc.html
> 
>   * igt@perf_pmu@rc6-all-gts:
>     - shard-rkl:          [SKIP][679] ([i915#14544] / [i915#8516]) -> [SKIP][680] ([i915#8516])
>    [679]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@perf_pmu@rc6-all-gts.html
>    [680]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@perf_pmu@rc6-all-gts.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-rkl:          [SKIP][681] ([i915#3708]) -> [SKIP][682] ([i915#14544] / [i915#3708]) +1 other test skip
>    [681]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-8/igt@prime_vgem@coherency-gtt.html
>    [682]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@prime_vgem@fence-read-hang:
>     - shard-rkl:          [SKIP][683] ([i915#14544] / [i915#3708]) -> [SKIP][684] ([i915#3708])
>    [683]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@prime_vgem@fence-read-hang.html
>    [684]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-2/igt@prime_vgem@fence-read-hang.html
> 
>   * igt@sriov_basic@bind-unbind-vf:
>     - shard-rkl:          [SKIP][685] ([i915#9917]) -> [SKIP][686] ([i915#14544] / [i915#9917])
>    [685]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-2/igt@sriov_basic@bind-unbind-vf.html
>    [686]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-6/igt@sriov_basic@bind-unbind-vf.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each:
>     - shard-rkl:          [SKIP][687] ([i915#14544] / [i915#9917]) -> [SKIP][688] ([i915#9917]) +1 other test skip
>    [687]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17098/shard-rkl-6/igt@sriov_basic@enable-vfs-bind-unbind-each.html
>    [688]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/shard-rkl-8/igt@sriov_basic@enable-vfs-bind-unbind-each.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#10055]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11521]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11521
>   [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
>   [i915#118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/118
>   [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
>   [i915#11965]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11965
>   [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
>   [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
>   [i915#12353]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12353
>   [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
>   [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
>   [i915#12394]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394
>   [i915#12454]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454
>   [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
>   [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
>   [i915#12712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712
>   [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
>   [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
>   [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
>   [i915#12796]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796
>   [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
>   [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
>   [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
>   [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
>   [i915#13008]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008
>   [i915#13029]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13029
>   [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13328]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13328
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13562
>   [i915#13665]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13665
>   [i915#13691]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
>   [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
>   [i915#13729]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13729
>   [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
>   [i915#13781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781
>   [i915#13820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13820
>   [i915#13821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13821
>   [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
>   [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
>   [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
>   [i915#14104]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14104
>   [i915#14118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118
>   [i915#14121]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14121
>   [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
>   [i915#14412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14412
>   [i915#14419]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419
>   [i915#14433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14433
>   [i915#14498]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498
>   [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
>   [i915#14545]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545
>   [i915#14550]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14550
>   [i915#14553]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14553
>   [i915#14561]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14561
>   [i915#14712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712
>   [i915#14809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14809
>   [i915#14857]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14857
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
>   [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
>   [i915#2433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433
>   [i915#2434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
>   [i915#3361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
>   [i915#3778]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3778
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4215]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
>   [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
>   [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
>   [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4879]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4879
>   [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
>   [i915#4885]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#5465]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5465
>   [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
>   [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
>   [i915#5882]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5882
>   [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
>   [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
>   [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6590]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590
>   [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7016]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7016
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7294]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294
>   [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8289
>   [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
>   [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
>   [i915#8821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8821
>   [i915#8825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825
>   [i915#8826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826
>   [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
>   [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
>   [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
>   [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9581]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9581
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
>   [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
>   [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_17098 -> Patchwork_152562v7
> 
>   CI-20190529: 20190529
>   CI_DRM_17098: 8d06b14349900b39d8fa9f60eb69e1432efd2399 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8519: 8519
>   Patchwork_152562v7: 8d06b14349900b39d8fa9f60eb69e1432efd2399 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152562v7/index.html
