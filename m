Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CAAB5F12DE
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Sep 2022 21:41:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE8E210E184;
	Fri, 30 Sep 2022 19:41:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8626B10E184
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Sep 2022 19:41:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664566891; x=1696102891;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=4NkcgpEXKyhw5eZsy6ZTNYK+Ag0cht5EIMNUmxCpPJs=;
 b=g/ckvwYo1TO1ocmT+OxVqZcHRUDZm/bf7WmSqRTnN6cwJFcNAfdgObpp
 aIfRi8B4nY9jkMZAMthtm6MPAo/gHK2Ezm8E1teV4aXENaMOKOrPZ2sp9
 aQE8ijZB90vVvmnVLKL0gNb/LJ8dRlMhsZkQmut41NqAmMRI6PCS03DrM
 +fx+2u0LooznxVIh5TmYEUfk0KZAsjuMmo46jTPBiOqu8zOe5roALGxnj
 iutArz+8vzN+rV66CYTAa1MSOeXx7EJ3rW7ChzmVXXreXyxa4h4PB5uvO
 5XnJjBS50cpGEPJq0AGGednfq2raaeNt23cpjQz/MH3tAsXGnqOv+IUqr g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="328660704"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="328660704"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 12:41:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="951667118"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="951667118"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 30 Sep 2022 12:41:30 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 30 Sep 2022 12:41:30 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 30 Sep 2022 12:41:30 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 30 Sep 2022 12:41:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dlSW4QiszzbZAj5i5OFLshX112fc80TS8IqnkpqLKT4F24dXE4n2JsZdgIQJMLiz6SmBTdow1NiTTmYWQ5pahjf/CjWLvvlGZgQqzH/Q/whlsMx5JGx8vJoclwHWaAQqrluJ30ONbGTZ0jmQoRbU36En0MrmPGMJrzti6YTEID28NKadVbJCXpPdDG/P157TSmwAjebPTF+L5WDDBmLFmLoVEwxj++noP5vr6cC6Qz3mLtTWQsQn/U77CqTUdJ8oqb8/wMueyp3MGnxmg/o9X0zc0CCiOhod4eSJUbC1GaN3NF7u/6n8pSlT2b80ZuXFYSu6vkkyYr86h2h04i0mUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ivBEU28HCgIG1/tbVOHpyJu5O3+jYBld0/YRN4wk/UI=;
 b=OXKxzDL7I8/C88tjiPmD+OxvtIFrF0q3+Cr+yRvOL6AKAXgHVusiy+TYhikiOMjyYi6ZYE3gcBT0ETlQI74gvssCwkUv+Zqe34wvLQUXaEGjwVdqBF1s706647SgVsQJRs908B0lavagI5wlwFA4VkrnuGPziQgJXKRnklhiMlQIOCfbZrZhUdAWxtzCNprNdikzI2nRgSlUBGNVET7UVlHlHYdARbPDvOVlJ7m0hl+FhxtJLrhmwCiTSkDf28D5rEqz/UOI39r7bl3whz8NzdZTEnew/fr7dTzjlNSlR18y9sEOhMnHMh1XjSDC0Qx6GB0wU34MTqgSBXcgRLaqmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by SA1PR11MB5875.namprd11.prod.outlook.com (2603:10b6:806:238::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.23; Fri, 30 Sep
 2022 19:41:25 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::29f8:1b74:685c:6198]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::29f8:1b74:685c:6198%8]) with mapi id 15.20.5676.023; Fri, 30 Sep 2022
 19:41:25 +0000
Date: Fri, 30 Sep 2022 12:41:23 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <YzdGY8rt4vmZEpJ1@mdroper-desk1.amr.corp.intel.com>
References: <20220929114658.145287-1-aravind.iddamsetty@intel.com>
 <166456087929.23341.7854079261785498386@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <166456087929.23341.7854079261785498386@emeril.freedesktop.org>
X-ClientProxiedBy: BYAPR21CA0007.namprd21.prod.outlook.com
 (2603:10b6:a03:114::17) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|SA1PR11MB5875:EE_
X-MS-Office365-Filtering-Correlation-Id: aa9fe330-3b90-414a-b719-08daa31bc2d0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LvTEy/Y6gTSdBH0Yr9CBNCOpKWbN2I/qnGEf2U3fYar9miiUJ0bKNDT2uucDzzf32+++cTDVqJJ8R+eVsacOBm0asoYoemMWPxyx1w7BOKnZbc1OBHlVX7F9xlKPAhAPsvN5BTJQc7ZH7Av9y6nGEEpOse8vEnM8qo+9nLxK+WTL+BjE9CRjOVtOTHoTRokp7QT1ESk7j5tjjXsHQH9EJ0XhIdNh0igt2+YFX8jPJciKFKi7YFLg1NnWK8UAwvafqMZ7FdNrqfD4f62ZqjEz1b0OwznHisDNk41ozQGqSvc87Oujgmwz1FJBMOTkP06f5r8C8ApApUKaKxrxU4/XemNHlgJA7AH3OXgy/mFE8mkN4dslZ5pI+imxoae/FjKlfloHLbbqMglq75XDVbjdh9kIzOnXZpAye3FTlQfmmbFAS8I/jpsJu90O/I1rQoBLv4Hwmsh+qqy3oAzwUE/Oxwr9FIHDAIubL6vmjRjzp90Z0nK7KV2ekQpHgSXRlTS9MIzso7naVvPjcDJuJNcVUMPcnkEjdqJ/d4kVSoU2beIX9CvVkTFMvUwslftExT4CHFtILVioD6nvnFxklrZDQUqXKhYBVrgOHSqPanM8Qz2enl9ONbZW4Ag5XwF6rF+c6si5Ts+vYeSP58YnVW1M4baDqhy8gPVdPVa9A5XFQ5oJbKXju9pJpO1FJihcBhcc203SEt5mUyi5G9r0NQZAX962iihf5cGbbG/HONuGDDuNZgbFlDHHoPWrBTrJmMPKi98Xih9zQns+Yz74FSk2IQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(136003)(366004)(376002)(346002)(396003)(451199015)(83380400001)(186003)(82960400001)(38100700002)(30864003)(2906002)(5660300002)(41300700001)(8936002)(107886003)(966005)(6486002)(478600001)(26005)(6512007)(6506007)(4326008)(66476007)(66556008)(66946007)(316002)(6916009)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xq0rzu50o3uFdso6y1ZwsqRLXGEG+urDJwstUlLf320M4ArypGUJnXYErTaw?=
 =?us-ascii?Q?xj1K7fiwBF+MjWnHxbmWN3H25sfozs1Fnv2tfdLVKImmxVMJ0R6OgAaSfKxj?=
 =?us-ascii?Q?d0bIPi5k+7n86YLqPnoBSA4CPl0cjI//whgyRSmqpqcFSXxqlH2UpzK04F8o?=
 =?us-ascii?Q?Gd/5QQWSBk/nc6XDfsqcZvZM0jn4rnuIVT76aKTmrn3L7B/TmqFi3vukHhRA?=
 =?us-ascii?Q?5iUC1rjHnOPvARP3+YJLKcEJqw0TEG8IwXWhM1IAEyVBcfr3hjGZedEuOJKy?=
 =?us-ascii?Q?G+pgMbKTX2uvZzNtWBHKk6xUZoCZvI2ipAvaTpMWeEJq0w3GKegtnfFUOVmj?=
 =?us-ascii?Q?PWJxW193XXgKvg5ppbAAd9ShH+pZ9kNrhVGl5YnYqidZ2AfrTeeHZxNZ2kdi?=
 =?us-ascii?Q?n6MexeQcTTOqawSlU2REArQc+AFgXf2SqnqEpp6YsbaohSuS92Wb1zjKbMcs?=
 =?us-ascii?Q?CbFs9e4Xte9nlDRL7srqQ1c8UprHer3xxfuqFmeY104fC3ko7TUnRohy9ADT?=
 =?us-ascii?Q?WmZnakVJm26aXuXa22D9KtDvhUUUampd6l7IhPN5q4EvtJWJ5vt4lQ2UfSBk?=
 =?us-ascii?Q?npQSnolAhNQbggDdbPeKzFKj0Ph0TOJoFZ8Ll4FOmpo/6MUMcdVB83SeLZPD?=
 =?us-ascii?Q?ensfLuK06bSsAl4STAC6VhXVc7sRk8b1REXbPIBe7hoTpSD7+t7GQdvMUDGN?=
 =?us-ascii?Q?umeY7/0u3z2M0g/kPs7pcEEh1RmGgq4z6YVdSItqFmJVcTtO7QFD97oIPN8M?=
 =?us-ascii?Q?AuAZ7mtmy2xCg+vJ0p583h347HvpPv3ElBPXOejaVZZMtSvqlVrWOQxdOExm?=
 =?us-ascii?Q?qc6J33EtDAvhGcgNNdqNtqHSH+YJS78IZTaBX6xoUcfwhssDH7GV4gpRpzNI?=
 =?us-ascii?Q?vRtkSvj8gEsxCppcHX9aSal1bCHv/GAXxYMYrxOMJ1eMD75bRRbAu8KLqMyJ?=
 =?us-ascii?Q?aXsI5mSEdz2K83BPsNUOMeB84lShZNHkmuKr+p9mRcM38CKY0lX3/3e3EoEP?=
 =?us-ascii?Q?BQw6ppCUs5gGomqz96xKnj3PAvYzx7N7wTcQCHZTE5vD8X3ynk72mv3XB8YZ?=
 =?us-ascii?Q?9u2F6rV2HfzSAiV9cX2/Rwwf1v1kpIvT5dAEnBG9BHG3F/zXiIYvdK7yoRZg?=
 =?us-ascii?Q?D1jFIWA4GPoEAv5B83v8dMOa1zoVLL75bREO1+4y8zrC+OWd9FbkuIOhpi6K?=
 =?us-ascii?Q?KGlxmxkdcTx5nJsWoQe+53rhV42fwzsTB/rJDOTM2UcZfpeJUodgYZRgUj2l?=
 =?us-ascii?Q?g6UqZ2GT1v2r9hEHrmScLxFF7ZIGVR1zJSuP8qb1oAVY6EZl0J0BBPmuoPyz?=
 =?us-ascii?Q?9dCsDlXSa/ihBgrOM73wN1WVdvt7WrMexgtFXmdwcqKJGHfru9r/w74MZhEH?=
 =?us-ascii?Q?3hfW74/qVShnzBKVHllR1y4LtHWuYeMJ0V1f7cjGkuK1VyicwuyugJETqOZg?=
 =?us-ascii?Q?tEJcAykgGCmVaIMClfjpphu1wHUtgNbkQK7SEPK2sxbR3Q6j9/pGiFTexDx9?=
 =?us-ascii?Q?Cor8mT/rSd20LdwdVnmjv1G8h7HOE7gK+IHVzlrPXS4/BgLlLxjrniTlETK5?=
 =?us-ascii?Q?uP0/BWvdHgvnRvvlEP+PTKJtuS2fRbxcslhQ0XIRmda0zgO5ozCq5frvUCBm?=
 =?us-ascii?Q?Rg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aa9fe330-3b90-414a-b719-08daa31bc2d0
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2022 19:41:25.5811 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Dhx6c3UGLCI0rcBX3trf+IUSdjKeE2a8kHRUiDSaHihhiWevUnDCnCfHSkEjZ3EiMkrZC+G3C0S7K+InsgpthNZ8Z+imd0+RGhnFVB8TUAg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5875
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/mtl=3A_enable_local_stolen_memory_=28rev5=29?=
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

On Fri, Sep 30, 2022 at 06:01:19PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/mtl: enable local stolen memory (rev5)
> URL   : https://patchwork.freedesktop.org/series/109066/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12199_full -> Patchwork_109066v5_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to drm-intel-gt-next.  Thanks for the patch.


Matt

> 
>   
> 
> Participating hosts (9 -> 9)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_109066v5_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Issues hit ####
> 
>   * boot:
>     - shard-skl:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [FAIL][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49]) ([i915#5032])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-skl6/boot.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-skl4/boot.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-skl4/boot.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-skl4/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-skl4/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-skl4/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-skl4/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-skl1/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-skl1/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-skl10/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-skl10/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-skl10/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-skl10/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-skl9/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-skl9/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-skl9/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-skl9/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-skl9/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-skl7/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-skl7/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-skl7/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-skl7/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-skl6/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-skl6/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-skl6/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-skl9/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-skl9/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-skl9/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-skl9/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-skl7/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-skl7/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-skl7/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-skl7/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-skl6/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-skl6/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-skl6/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-skl4/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-skl4/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-skl4/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-skl4/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-skl1/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-skl1/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-skl1/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-skl1/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-skl10/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-skl10/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-skl10/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-skl10/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-skl10/boot.html
> 
>   
> #### Possible fixes ####
> 
>   * boot:
>     - shard-glk:          ([PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [FAIL][66], [PASS][67], [PASS][68], [FAIL][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74]) ([i915#4392]) -> ([PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-glk9/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-glk9/boot.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-glk8/boot.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-glk8/boot.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-glk8/boot.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-glk7/boot.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-glk7/boot.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-glk7/boot.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-glk6/boot.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-glk6/boot.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-glk6/boot.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-glk5/boot.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-glk5/boot.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-glk5/boot.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-glk3/boot.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-glk3/boot.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-glk3/boot.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-glk3/boot.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-glk2/boot.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-glk2/boot.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-glk2/boot.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-glk2/boot.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-glk1/boot.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-glk1/boot.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-glk9/boot.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-glk8/boot.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-glk7/boot.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-glk7/boot.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-glk7/boot.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-glk6/boot.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-glk6/boot.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-glk6/boot.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-glk5/boot.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-glk5/boot.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-glk3/boot.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-glk3/boot.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-glk3/boot.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-glk2/boot.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-glk2/boot.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-glk2/boot.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-glk1/boot.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-glk1/boot.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-glk1/boot.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-glk1/boot.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-glk9/boot.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-glk9/boot.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-glk9/boot.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-glk8/boot.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-glk8/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-tglb:         NOTRUN -> [SKIP][99] ([i915#280])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-tglb2/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-iclb:         [PASS][100] -> [SKIP][101] ([i915#4525]) +1 similar issue
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-iclb4/igt@gem_exec_balancer@parallel-bb-first.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-iclb8/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][102] ([i915#2842]) +1 similar issue
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [PASS][103] -> [FAIL][104] ([i915#2842]) +2 similar issues
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-iclb:         [PASS][105] -> [FAIL][106] ([i915#2842])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-iclb7/igt@gem_exec_fair@basic-pace@rcs0.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-iclb4/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_params@rsvd2-dirt:
>     - shard-tglb:         NOTRUN -> [SKIP][107] ([fdo#109283])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-tglb2/igt@gem_exec_params@rsvd2-dirt.html
> 
>   * igt@gem_lmem_swapping@random:
>     - shard-tglb:         NOTRUN -> [SKIP][108] ([i915#4613])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-tglb2/igt@gem_lmem_swapping@random.html
> 
>   * igt@gem_lmem_swapping@random-engines:
>     - shard-glk:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-glk3/igt@gem_lmem_swapping@random-engines.html
> 
>   * igt@gem_pxp@fail-invalid-protected-context:
>     - shard-tglb:         NOTRUN -> [SKIP][110] ([i915#4270])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-tglb2/igt@gem_pxp@fail-invalid-protected-context.html
> 
>   * igt@gem_userptr_blits@coherency-unsync:
>     - shard-tglb:         NOTRUN -> [SKIP][111] ([i915#3297])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-tglb2/igt@gem_userptr_blits@coherency-unsync.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-apl:          [PASS][112] -> [DMESG-WARN][113] ([i915#180]) +2 similar issues
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-apl6/igt@gem_workarounds@suspend-resume-context.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-apl8/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-glk:          [PASS][114] -> [DMESG-WARN][115] ([i915#5566] / [i915#716])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-glk9/igt@gen9_exec_parse@allowed-all.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-glk6/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@gen9_exec_parse@batch-invalid-length:
>     - shard-tglb:         NOTRUN -> [SKIP][116] ([i915#2527] / [i915#2856])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-tglb2/igt@gen9_exec_parse@batch-invalid-length.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
>     - shard-tglb:         NOTRUN -> [WARN][117] ([i915#2681]) +3 similar issues
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-tglb2/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
> 
>   * igt@kms_addfb_basic@legacy-format:
>     - shard-tglb:         [PASS][118] -> [INCOMPLETE][119] ([i915#6987])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-tglb5/igt@kms_addfb_basic@legacy-format.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-tglb1/igt@kms_addfb_basic@legacy-format.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180:
>     - shard-tglb:         NOTRUN -> [SKIP][120] ([i915#5286])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-tglb2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
>     - shard-tglb:         NOTRUN -> [SKIP][121] ([fdo#111614]) +1 similar issue
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-tglb2/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb:
>     - shard-tglb:         NOTRUN -> [SKIP][122] ([fdo#111615])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-tglb2/igt@kms_big_fb@yf-tiled-addfb.html
> 
>   * igt@kms_big_joiner@basic:
>     - shard-tglb:         NOTRUN -> [SKIP][123] ([i915#2705])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-tglb2/igt@kms_big_joiner@basic.html
> 
>   * igt@kms_ccs@pipe-a-bad-rotation-90-4_tiled_dg2_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][124] ([i915#6095])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-tglb2/igt@kms_ccs@pipe-a-bad-rotation-90-4_tiled_dg2_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
>     - shard-glk:          NOTRUN -> [SKIP][125] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-glk3/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][126] ([fdo#111615] / [i915#3689]) +1 similar issue
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-tglb2/igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][127] ([i915#3689]) +1 similar issue
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-tglb2/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-c-bad-pixel-format-4_tiled_dg2_rc_ccs_cc:
>     - shard-tglb:         NOTRUN -> [SKIP][128] ([i915#3689] / [i915#6095])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-tglb2/igt@kms_ccs@pipe-c-bad-pixel-format-4_tiled_dg2_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][129] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-apl6/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][130] ([i915#3689] / [i915#3886])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-tglb2/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@dp-hpd-fast:
>     - shard-tglb:         NOTRUN -> [SKIP][131] ([fdo#109284] / [fdo#111827]) +2 similar issues
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-tglb2/igt@kms_chamelium@dp-hpd-fast.html
> 
>   * igt@kms_chamelium@dp-hpd-storm-disable:
>     - shard-glk:          NOTRUN -> [SKIP][132] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-glk3/igt@kms_chamelium@dp-hpd-storm-disable.html
> 
>   * igt@kms_color_chamelium@ctm-0-75:
>     - shard-apl:          NOTRUN -> [SKIP][133] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-apl8/igt@kms_color_chamelium@ctm-0-75.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-tglb:         NOTRUN -> [SKIP][134] ([i915#3116] / [i915#3299])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-tglb2/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][135] -> [FAIL][136] ([i915#79])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:
>     - shard-glk:          NOTRUN -> [FAIL][137] ([i915#79])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][138] ([i915#2587] / [i915#2672]) +1 similar issue
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][139] ([i915#3555])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][140] ([i915#2672]) +1 similar issue
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
>     - shard-tglb:         NOTRUN -> [SKIP][141] ([i915#2587] / [i915#2672])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-tglb2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt:
>     - shard-glk:          [PASS][142] -> [FAIL][143] ([i915#1888] / [i915#2546])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-glk6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:
>     - shard-tglb:         NOTRUN -> [SKIP][144] ([fdo#109280] / [fdo#111825]) +9 similar issues
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc:
>     - shard-glk:          NOTRUN -> [SKIP][145] ([fdo#109271]) +73 similar issues
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-glk3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc:
>     - shard-tglb:         NOTRUN -> [SKIP][146] ([i915#6497]) +2 similar issues
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc.html
> 
>   * igt@kms_invalid_mode@clock-too-high@edp-1-pipe-d:
>     - shard-tglb:         NOTRUN -> [SKIP][147] ([i915#6403]) +3 similar issues
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-tglb2/igt@kms_invalid_mode@clock-too-high@edp-1-pipe-d.html
> 
>   * igt@kms_plane_lowres@tiling-yf:
>     - shard-tglb:         NOTRUN -> [SKIP][148] ([fdo#112054] / [i915#5288])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-tglb2/igt@kms_plane_lowres@tiling-yf.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1:
>     - shard-iclb:         [PASS][149] -> [SKIP][150] ([i915#5235]) +2 similar issues
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-iclb1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html
> 
>   * igt@kms_psr2_sf@cursor-plane-update-sf:
>     - shard-glk:          NOTRUN -> [SKIP][151] ([fdo#109271] / [i915#658]) +1 similar issue
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-glk3/igt@kms_psr2_sf@cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
>     - shard-tglb:         NOTRUN -> [SKIP][152] ([i915#2920])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-tglb2/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>     - shard-apl:          NOTRUN -> [SKIP][153] ([fdo#109271] / [i915#658]) +1 similar issue
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-apl6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr@psr2_cursor_plane_onoff:
>     - shard-tglb:         NOTRUN -> [FAIL][154] ([i915#132] / [i915#3467])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-tglb2/igt@kms_psr@psr2_cursor_plane_onoff.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         [PASS][155] -> [SKIP][156] ([fdo#109441]) +1 similar issue
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * igt@kms_setmode@invalid-clone-single-crtc:
>     - shard-tglb:         NOTRUN -> [SKIP][157] ([i915#3555])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-tglb2/igt@kms_setmode@invalid-clone-single-crtc.html
> 
>   * igt@kms_vblank@pipe-d-wait-forked-busy-hang:
>     - shard-apl:          NOTRUN -> [SKIP][158] ([fdo#109271]) +75 similar issues
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-apl8/igt@kms_vblank@pipe-d-wait-forked-busy-hang.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-tglb:         NOTRUN -> [SKIP][159] ([i915#2437])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-tglb2/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-glk:          [PASS][160] -> [FAIL][161] ([i915#5639])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-glk9/igt@perf@polling-parameterized.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-glk6/igt@perf@polling-parameterized.html
> 
>   * igt@perf_pmu@event-wait@rcs0:
>     - shard-tglb:         NOTRUN -> [SKIP][162] ([fdo#112283])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-tglb2/igt@perf_pmu@event-wait@rcs0.html
> 
>   * igt@sysfs_clients@sema-25:
>     - shard-apl:          NOTRUN -> [SKIP][163] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-apl1/igt@sysfs_clients@sema-25.html
> 
>   * igt@sysfs_clients@sema-50:
>     - shard-tglb:         NOTRUN -> [SKIP][164] ([i915#2994])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-tglb2/igt@sysfs_clients@sema-50.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         [SKIP][165] ([i915#658]) -> [PASS][166]
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-iclb7/igt@feature_discovery@psr2.html
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-iclb2/igt@feature_discovery@psr2.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-tglb:         [FAIL][167] ([i915#6268]) -> [PASS][168]
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-tglb8/igt@gem_ctx_exec@basic-nohangcheck.html
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-tglb2/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-iclb:         [SKIP][169] ([i915#4525]) -> [PASS][170]
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-iclb5/igt@gem_exec_balancer@parallel-keep-submit-fence.html
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-iclb4/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [FAIL][171] ([i915#2842]) -> [PASS][172]
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-tglb8/igt@gem_exec_fair@basic-flow@rcs0.html
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_reloc@basic-cpu-gtt-active:
>     - shard-apl:          [DMESG-WARN][173] ([i915#62]) -> [PASS][174] +16 similar issues
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-apl2/igt@gem_exec_reloc@basic-cpu-gtt-active.html
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-apl3/igt@gem_exec_reloc@basic-cpu-gtt-active.html
> 
>   * igt@gem_exec_suspend@basic-s3@smem:
>     - shard-apl:          [DMESG-WARN][175] ([i915#180]) -> [PASS][176] +2 similar issues
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-apl8/igt@gem_exec_suspend@basic-s3@smem.html
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-apl1/igt@gem_exec_suspend@basic-s3@smem.html
> 
>   * igt@gem_mmap_offset@close-race:
>     - shard-apl:          [FAIL][177] -> [PASS][178] +1 similar issue
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-apl2/igt@gem_mmap_offset@close-race.html
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-apl8/igt@gem_mmap_offset@close-race.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-apl:          [DMESG-WARN][179] ([i915#5566] / [i915#716]) -> [PASS][180]
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-apl7/igt@gen9_exec_parse@allowed-single.html
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-apl6/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [FAIL][181] ([i915#3989] / [i915#454]) -> [PASS][182]
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
>     - shard-glk:          [FAIL][183] ([i915#2346]) -> [PASS][184]
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
> 
>   * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@bc-hdmi-a1-hdmi-a2:
>     - shard-glk:          [FAIL][185] ([i915#2122]) -> [PASS][186]
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-glk6/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-glk8/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@basic-flip-vs-wf_vblank@c-dp1:
>     - shard-apl:          [DMESG-FAIL][187] ([i915#62]) -> [PASS][188]
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-apl2/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp1.html
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-apl3/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1:
>     - shard-glk:          [FAIL][189] ([i915#79]) -> [PASS][190]
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1.html
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode:
>     - shard-iclb:         [SKIP][191] ([i915#3555]) -> [PASS][192]
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode.html
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_psr@psr2_cursor_plane_onoff:
>     - shard-iclb:         [SKIP][193] ([fdo#109441]) -> [PASS][194] +2 similar issues
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-iclb1/igt@kms_psr@psr2_cursor_plane_onoff.html
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-iclb:         [SKIP][195] ([i915#658]) -> [SKIP][196] ([i915#2920]) +1 similar issue
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12199/shard-iclb7/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4392]: https://gitlab.freedesktop.org/drm/intel/issues/4392
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6403]: https://gitlab.freedesktop.org/drm/intel/issues/6403
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6987]: https://gitlab.freedesktop.org/drm/intel/issues/6987
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12199 -> Patchwork_109066v5
> 
>   CI-20190529: 20190529
>   CI_DRM_12199: 6fa6bc62d3b91e5a70b8e4869436a0b03083abf5 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6669: 3d2df081c14c251e0269e3510ddc4e9d26ffe925 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_109066v5: 6fa6bc62d3b91e5a70b8e4869436a0b03083abf5 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109066v5/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
