Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC195BD011
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Sep 2022 17:11:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08A3710E664;
	Mon, 19 Sep 2022 15:11:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D88DE10E664
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Sep 2022 15:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663600284; x=1695136284;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=TWvf6HpRo5C8hosPLG1Vt56piyME9BVoNgTHlYT3B0E=;
 b=bXGA/Pc76YgI/+jdIJrjhojDhRPYvj7yMswTyDzO7iUH8/G3PpNVdSA5
 jeam+RZpFbhuq9kugwdNumEjbStP7vGz9f1x+Ox/kD53NnZAM3Ortv/LO
 asfO4tsO0BR2G46K3KceronUnrX4iIOy7WEDT949E92LLQOflWRA3ht4y
 fMcBen9Z1qy1BAekUHrKsdhcCOE8QExwsEx8mkhlw+nAsDGNNcQO0whpP
 /PonDGzov9CNFi8b9f0HSHPuAilYJBZOjulNfUApd/YHYwiEOlvxFXaFT
 VjvFV1jVoMXqfYPw7ERpBVDBCOd951myLYZz3MlzJKTYs30cVMR3bTzOp Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="363382426"
X-IronPort-AV: E=Sophos;i="5.93,328,1654585200"; d="scan'208";a="363382426"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 08:11:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,328,1654585200"; d="scan'208";a="760903998"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 19 Sep 2022 08:11:23 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 19 Sep 2022 08:11:23 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 19 Sep 2022 08:11:23 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 19 Sep 2022 08:11:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iu0cfHujHJyXbiOocQXMRLYL3zD2mgv4BDyUI54fhPT3i1WUsUjfIVPanKzLYyXZfcpERK/sgdrWxQCFrz/d6BetmkVLH/OGa6c0C2gVVsbSktVwC4JnEa48cdvh/HvfkW6hezRXjwerSjNM3XKujCVq2cuPEyVeB3CcLVilqDU15vS4v1BeBpuoOHNd5QGc6nj7PHENJ/9DhsyRBeGtd24+90ywBfjOvQRSod9aScsK1+ix074DjtclFEeCJT2XNOrwTcfAuRM1Guw3CfTW7/U7eIhqG2lj+ap7WKszuq/04K211twB8jC+eu5ksn+e+Nu7QrHAZH50LKEMBOKhPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5F18UupXa8uKJpcUj15hhaq95zTqDn3P1LuFvyuTB7E=;
 b=MY3jS2ad8b/82btfiwIBhxYAsVNCqxJomcxehfXC9O61punBaqhzZ7eKEFL/AEPwBz2TFlZrjYN7Dzo7Cy0LXcbMa3POSKs7yYgjEAZV5a2ZMxSmUxFnRJEIyjnkNP/GbMksG1Cl5SAy06FoN8/bzcru2daGPTMxv+uAzujF9dHpCB5sCzaCkDjyB+UcpWjWYFUBkCsI0w/kqV8P1bYWquDLU/pxFo6+8MxksWSq0RFmWXy21n9wI3hsnbURQxLzsQmaPwUe6whwD7YRDuXXJARnWd/Jcmh+L6iWHyiJaXwxkeahw31H1/x8yNrtkHz53YXFgDhT0VafnsCA2bem1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by SJ0PR11MB5215.namprd11.prod.outlook.com (2603:10b6:a03:2d9::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.21; Mon, 19 Sep
 2022 15:11:20 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::ecc9:50cb:5951:2514]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::ecc9:50cb:5951:2514%12]) with mapi id 15.20.5632.021; Mon, 19 Sep
 2022 15:11:20 +0000
Date: Mon, 19 Sep 2022 08:11:17 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <YyiGldgah7rbVuDk@mdroper-desk1.amr.corp.intel.com>
References: <20220910001631.1986601-1-matthew.d.roper@intel.com>
 <166279472424.9590.17758356814873116407@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <166279472424.9590.17758356814873116407@emeril.freedesktop.org>
X-ClientProxiedBy: BY5PR17CA0051.namprd17.prod.outlook.com
 (2603:10b6:a03:167::28) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|SJ0PR11MB5215:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d6b0c96-2893-4d8f-4900-08da9a513509
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3C3c6xNb/qWsydRzAXdMVDIPyurZ9XA7QoX3fT/tegKkI1UFO0e5mcsCD6C+yIIWzyk9I+f2FQ69W7XzLQkgup0efFBzRWNrOpQHGgKINHNYD1AnnwBQLlk7kBVW4KlcWNOgIMqH4kVKEiVNif861UmmMVnr1wcz+kajWa/hJ9FBK77sAjqT9y0APmeCtAv5sS1hZTZM7Mv9eFjnSbsWLRvf8XIVy5edB2sb+2/QlDPnwbBBBJG2hjFC7fC8+2P6GQurFYRSYR21qjMm/wZQu825JLs66GeZtLIUVyPvgmWYOCSMPQrWIBRyrOTd/c4286nXwwvYsBi8BUhueb3i2cik/WGcseapLoHKLYq98VVCu2G+CrRhMHdVGUxX8zf879JuNpu6yHz37Y+Gl0iDlkSqeHVLIcaI9fClXuAjm4MzmOude0Pg8oK3JkZohLStzLEFXIMPNY6df4b+l398X8Uz6h9mmCN95Jac4xFD4IvtjfST6dw4++3XK0f8YosO8XwPwiDR0ZM/AS01jRnJhDEba0jwaUFk/Gx3sNNuUDMQKekxdA7FPWLe9EOFXYGPDVy2XqJHLLA/Z/eNeFQFR9QJ2H492dHG6idnIskZ+rYtXd/VauJyhsbq1z4tUdOgZP8Wli+q1EysDvd/yul4Ewuldnm+5JV2C/tj8Ay7y896Y9PNZTEQh34eRyP1ADCBsUl65Pqnu6w6iXndMNaBF7x6xSuXsiP5a81U0XTsbk6rkQSr0/4kKpi6u1TD4sE+NfOpOdLc8Tj8fOYNVOT4Mg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(39860400002)(136003)(376002)(396003)(366004)(451199015)(30864003)(186003)(41300700001)(8936002)(6666004)(66556008)(2906002)(82960400001)(66476007)(83380400001)(66946007)(38100700002)(316002)(6916009)(6506007)(6486002)(5660300002)(6512007)(478600001)(966005)(86362001)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qei3jAmXkBLSC0iyXcU+tOm/O7JftVcPgfDtt8D+AAxw1lj9y5Ds8lyxaJ7t?=
 =?us-ascii?Q?ZnsJV0qjtYH7Kiti9acLs8OWR61Id54TJ5n/2s5BSquUxkDY2xz55K62wUGl?=
 =?us-ascii?Q?GY0idXPgut5K08fzgmclzQh+vrlUQqt5w/WuElOPAYG/Fd2A61xZqRMO6zq+?=
 =?us-ascii?Q?whb49poqNdoaG2llQuvlJbPGVSu8b/eGwFiz612ttdALNxpNgqp4JwGmf68n?=
 =?us-ascii?Q?/QBFxNVLs/PJoHSOrashf/R2RKW/JNLBP/3Pcnnn9tljwLJfB2Cz5/qseIdl?=
 =?us-ascii?Q?lskmhPGO3jQ40fNJbr3/i4rd6EIYShuiuj9jROnY2lGHV5Cbrr8Qi54yfC/a?=
 =?us-ascii?Q?ZWd+uggyQNG8fB5cGYi2oMbtNWWJgKX/irOFy4YxYrdkWhAdiGIrd/9DL02J?=
 =?us-ascii?Q?Sa+7mdBIuQnkMHb367RAmpfJzSIROaFf+kpvsOuayeLnwML0rut5v3TNlWhP?=
 =?us-ascii?Q?Ld6OFDGirABP9fbaFqwchQUwEkH9bSZbEHf6MPjI1f9Y+VR8M6EQ6l39ssL3?=
 =?us-ascii?Q?NXTJ2Zh+AhHCJ6pPlqZNUoV2mLCjHKFJdgXWqY/XFwAzBM4MBkVtmwf/aI3Z?=
 =?us-ascii?Q?nEVbfn6ZnC+wQIm2i9RAmB+a4e36knzrCpckkLO9niFXoiMZKjEjsfpsyDe3?=
 =?us-ascii?Q?Nixz2pWSQyt6fZdeiFVRkOhalffPOy7pPbxw2YKG7KkgJWHU1xuERqQmpYEN?=
 =?us-ascii?Q?j5ev/ae5k0pWb9ASRg1YVmAJzA5NRRNLo9J934QldEkFIf5kZRGJO0jyCCWv?=
 =?us-ascii?Q?6ebmOsoFgibN7Djbu/urT5cWCsUsK2QM3B1P9tES2uBDPaC92xrLI3t2Y7va?=
 =?us-ascii?Q?2Wz7vmYefBq+VqTNJ1TO5OZZwt6D7FcWzyrp/qJ74qbtRfYtrU75Utw82i1/?=
 =?us-ascii?Q?zBxXQb8xPTv6M1qnVp+40gEQil0LjXhYJHDtLfMnideOwrjJ4+NZcdbFtpBn?=
 =?us-ascii?Q?8kEjT05NMTNyn2yIheq9y2cez9CGK4rGrLe/dMwPgzbRKT7LntzkDx0jzUfy?=
 =?us-ascii?Q?3IgRANa2fzl/d52oCWtJvJEleFvE3F1Q1w+dFxyUghgSeRoUpTbPEqIfva8z?=
 =?us-ascii?Q?+l/gOOReY0SHalexsZ16KER77XbD1hyGNGVcI49vnwaAlkVRkr4IHbjZzPHp?=
 =?us-ascii?Q?SlXyLjCgoHTC+lx0jQF3tJkFwkg0Dd7QxcepGWBcBWVhR47ZogZa6VYp2qsc?=
 =?us-ascii?Q?FkjdD8aw+0ja8xCdfxIne1Zpgu6LG+XyBiZdkrjytNZyndlYYuM/BUaFDAxi?=
 =?us-ascii?Q?jjrZ9Okiz3NU2c/GjMg8e6pJrxfdgsJAjkPFc11TwjOXOk3RZzhntmw0PxE6?=
 =?us-ascii?Q?0+RJUN2DZ6YKfeURwGvYcDl9frIO4K+R8cEDqFJj3WyXdwr/X687f5x4pPW7?=
 =?us-ascii?Q?0vMnzn+6B7+2C3OcBPtNF6FVmXLH4Tt8QbfzZ6JrmDXg/XCUPkg/V0oZktXM?=
 =?us-ascii?Q?RsDDmCiD07xQQ9AHJGy2qJwNLI0PrNcJFCE0YgPpcNKmBZfdPkgXHr2B/7ss?=
 =?us-ascii?Q?s/X2lGdu2ICKeb73jNZzjFoqW4i/BCNziginCg+hL1dERoAAXF5jk/YPmwu4?=
 =?us-ascii?Q?R7xY9U6S8Zw65/w3hGX3PIEijhHT6/luI2UVl1iaQp4ETi8p044yGPz+ERIG?=
 =?us-ascii?Q?dA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d6b0c96-2893-4d8f-4900-08da9a513509
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2022 15:11:20.1675 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AYM9TJCs3YuYzJ4AiNcUYOVFRewRfwcLdGV5NmCAW6JI1xaCBpTIzJOzK83oxuSz8YmjC7UCMGCZvdCju504iGEcbQOtWtXr4P4tnQRW0sw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5215
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/mtl=3A_Add_MTL_forcewake_support?=
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

On Sat, Sep 10, 2022 at 07:25:24AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/mtl: Add MTL forcewake support
> URL   : https://patchwork.freedesktop.org/series/108394/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12112_full -> Patchwork_108394v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 

Applied to drm-intel-gt-next.  Thanks Harish for the review.


Matt

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
>   Here are the changes found in Patchwork_108394v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@vcs0:
>     - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +2 similar issues
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12112/shard-apl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108394v1/shard-apl3/igt@gem_ctx_isolation@preservation-s3@vcs0.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-iclb:         [PASS][3] -> [SKIP][4] ([i915#4525]) +2 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12112/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108394v1/shard-iclb6/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [PASS][5] -> [FAIL][6] ([i915#2842])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12112/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108394v1/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][7] ([i915#2842])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108394v1/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [PASS][8] -> [FAIL][9] ([i915#2842])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12112/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108394v1/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_softpin@evict-single-offset:
>     - shard-tglb:         [PASS][10] -> [FAIL][11] ([i915#4171])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12112/shard-tglb2/igt@gem_softpin@evict-single-offset.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108394v1/shard-tglb5/igt@gem_softpin@evict-single-offset.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
>     - shard-glk:          NOTRUN -> [SKIP][12] ([fdo#109271]) +43 similar issues
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108394v1/shard-glk7/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-glk:          NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#3886]) +4 similar issues
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108394v1/shard-glk7/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_chamelium@hdmi-hpd:
>     - shard-glk:          NOTRUN -> [SKIP][14] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108394v1/shard-glk5/igt@kms_chamelium@hdmi-hpd.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip@legacy:
>     - shard-iclb:         [PASS][15] -> [FAIL][16] ([i915#5072]) +1 similar issue
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12112/shard-iclb5/igt@kms_cursor_legacy@cursor-vs-flip@legacy.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108394v1/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@legacy.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
>     - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#2346])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12112/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108394v1/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][19] ([i915#2672]) +10 similar issues
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108394v1/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][20] ([i915#3555])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108394v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][21] ([i915#2672] / [i915#3555])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108394v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-edp-1:
>     - shard-tglb:         [PASS][22] -> [INCOMPLETE][23] ([i915#6598])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12112/shard-tglb3/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-edp-1.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108394v1/shard-tglb1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1:
>     - shard-iclb:         [PASS][24] -> [SKIP][25] ([i915#5235]) +5 similar issues
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12112/shard-iclb4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108394v1/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html
> 
>   * igt@kms_psr@psr2_primary_blt:
>     - shard-iclb:         [PASS][26] -> [SKIP][27] ([fdo#109441]) +1 similar issue
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12112/shard-iclb2/igt@kms_psr@psr2_primary_blt.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108394v1/shard-iclb6/igt@kms_psr@psr2_primary_blt.html
> 
>   * igt@sysfs_clients@sema-25:
>     - shard-glk:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#2994])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108394v1/shard-glk7/igt@sysfs_clients@sema-25.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-tglb:         [FAIL][29] ([i915#6268]) -> [PASS][30]
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12112/shard-tglb2/igt@gem_ctx_exec@basic-nohangcheck.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108394v1/shard-tglb7/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_eio@in-flight-contexts-immediate:
>     - shard-tglb:         [TIMEOUT][31] ([i915#3063]) -> [PASS][32]
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12112/shard-tglb3/igt@gem_eio@in-flight-contexts-immediate.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108394v1/shard-tglb6/igt@gem_eio@in-flight-contexts-immediate.html
> 
>   * igt@gem_eio@kms:
>     - shard-tglb:         [FAIL][33] ([i915#5784]) -> [PASS][34]
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12112/shard-tglb1/igt@gem_eio@kms.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108394v1/shard-tglb6/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_balancer@parallel-keep-in-fence:
>     - shard-iclb:         [SKIP][35] ([i915#4525]) -> [PASS][36]
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12112/shard-iclb6/igt@gem_exec_balancer@parallel-keep-in-fence.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108394v1/shard-iclb4/igt@gem_exec_balancer@parallel-keep-in-fence.html
> 
>   * igt@gem_exec_endless@dispatch@vcs1:
>     - shard-tglb:         [INCOMPLETE][37] ([i915#3778]) -> [PASS][38]
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12112/shard-tglb7/igt@gem_exec_endless@dispatch@vcs1.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108394v1/shard-tglb6/igt@gem_exec_endless@dispatch@vcs1.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-glk:          [FAIL][39] ([i915#2842]) -> [PASS][40]
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12112/shard-glk6/igt@gem_exec_fair@basic-none@vcs0.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108394v1/shard-glk8/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-iclb:         [FAIL][41] ([i915#2842]) -> [PASS][42]
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12112/shard-iclb5/igt@gem_exec_fair@basic-pace@rcs0.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108394v1/shard-iclb7/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_reloc@basic-write-gtt:
>     - {shard-rkl}:        [SKIP][43] ([i915#3281]) -> [PASS][44] +1 similar issue
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12112/shard-rkl-6/igt@gem_exec_reloc@basic-write-gtt.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108394v1/shard-rkl-5/igt@gem_exec_reloc@basic-write-gtt.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads:
>     - {shard-rkl}:        [SKIP][45] ([i915#3282]) -> [PASS][46]
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12112/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108394v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [DMESG-WARN][47] ([i915#5566] / [i915#716]) -> [PASS][48]
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12112/shard-glk7/igt@gen9_exec_parse@allowed-single.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108394v1/shard-glk7/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - {shard-tglu}:       [FAIL][49] ([i915#3989] / [i915#454]) -> [PASS][50]
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12112/shard-tglu-3/igt@i915_pm_dc@dc6-dpms.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108394v1/shard-tglu-2/igt@i915_pm_dc@dc6-dpms.html
>     - shard-iclb:         [FAIL][51] ([i915#454]) -> [PASS][52]
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12112/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108394v1/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_rps@engine-order:
>     - shard-apl:          [FAIL][53] ([i915#6537]) -> [PASS][54]
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12112/shard-apl6/igt@i915_pm_rps@engine-order.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108394v1/shard-apl4/igt@i915_pm_rps@engine-order.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-dp1:
>     - shard-apl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56]
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12112/shard-apl8/igt@kms_flip@flip-vs-suspend@c-dp1.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108394v1/shard-apl3/igt@kms_flip@flip-vs-suspend@c-dp1.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1:
>     - shard-iclb:         [SKIP][57] ([i915#5235]) -> [PASS][58] +2 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12112/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108394v1/shard-iclb6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_cpu:
>     - shard-iclb:         [SKIP][59] ([fdo#109441]) -> [PASS][60] +1 similar issue
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12112/shard-iclb4/igt@kms_psr@psr2_sprite_mmap_cpu.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108394v1/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - {shard-rkl}:        [SKIP][61] ([i915#2436]) -> [PASS][62]
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12112/shard-rkl-6/igt@perf@gen8-unprivileged-single-ctx-counters.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108394v1/shard-rkl-5/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
>     - shard-iclb:         [SKIP][63] ([i915#2920]) -> [SKIP][64] ([i915#658])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12112/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108394v1/shard-iclb6/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-iclb:         [SKIP][65] ([fdo#111068] / [i915#658]) -> [SKIP][66] ([i915#2920]) +2 similar issues
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12112/shard-iclb4/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108394v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
>   [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
>   [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3966]: https://gitlab.freedesktop.org/drm/intel/issues/3966
>   [i915#3987]: https://gitlab.freedesktop.org/drm/intel/issues/3987
>   [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
>   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
>   [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5072]: https://gitlab.freedesktop.org/drm/intel/issues/5072
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
>   [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6251]: https://gitlab.freedesktop.org/drm/intel/issues/6251
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
>   [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#6537]: https://gitlab.freedesktop.org/drm/intel/issues/6537
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6598]: https://gitlab.freedesktop.org/drm/intel/issues/6598
>   [i915#6599]: https://gitlab.freedesktop.org/drm/intel/issues/6599
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12112 -> Patchwork_108394v1
> 
>   CI-20190529: 20190529
>   CI_DRM_12112: ff8b32fbe64a79b380b1cca4232d30c0b29df069 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6650: f7aff600ab16d6405f0704b1743d2b7909715752 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_108394v1: ff8b32fbe64a79b380b1cca4232d30c0b29df069 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108394v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
