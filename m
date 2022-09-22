Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 116AE5E6459
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 15:55:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAF9810E36D;
	Thu, 22 Sep 2022 13:55:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9AEC10E36A
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 13:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663854922; x=1695390922;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Tv5Ui32MQV0n/wY9XkNNXLPI+glSh5uzB07YjobIap8=;
 b=DNa1VnM9uxX9Jm0saUl6Vcl7VSqr1jODwC4W8ukNFLY5CuYXScZEw3U9
 b6qW9/1BENc8Z5JCr+4eBFdZooNnTwSf/up8CCZfImlC8jQchM5jQo8l1
 bwPDgrdTcxt1LF2juTF6Lzdx3j2LZegH5VTcyRsskulVTUH2tPJJUYYpF
 tObVa+1N5W4QRkUI7sqHgsNIr+1/DRAzyhXr/ART7Jb2enef0+xP2LOyL
 IKoEHI3HTazOsEb26MaVLAhIpscqKqjU3wiXjfiy6XlWnUblhL0vWZIc/
 iM7Dvo5IzW5eC+cIdPqnjtjyi9sGtqexLcGIeg1K/00NHIVoJ6PLi1Mbs A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="280019011"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="280019011"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 06:55:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="570969950"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP; 22 Sep 2022 06:55:21 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 22 Sep 2022 06:55:16 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 22 Sep 2022 06:55:16 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 22 Sep 2022 06:55:16 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 22 Sep 2022 06:55:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WTbQCSMzDzG/WfEV9BRGxedwZm9P8eUNu29LvFefsjk3b7r4h5pHRcEFcozWJ1yJNmcpNH4zbObpguZ4SpL+AyabvFHmVYaVaWsFmreHlSS+C9iNrOVoazEsem0oyN1wK9y2eyyAyQ5JpQccLaecyNpn8Z9wMoIJGXzP6//uzIbQ7a4j2JF0p+aJsTHF42pzLCW+sTofZbNUI/K2H/utsEfyymUNoy1HbZEgKufjxemDKWwsLe3dQx1gFkmcoKUqMIvHSU/zn36rOGc4k7S00hRhRlSDi98PDfgzFSsPU4xo8Gn4yVmN2SSwGI8eEp3xCM7xxozukw2SbV6zYb+W0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MSbU0nVtHoRAx+fkcqJ7+WWI4pnUDkcSlk/RwsE/7Ww=;
 b=k92dzUNmeLaIJInEMi/qDkfQmR8GEkW88LIVN0co6C/YFBttRCs/1nQQwbjPNRYcp8eE4PAFsUFTgW1rwEAbXQh1NC0cKbGMLhPaE8o4cT1/ZV2Ql4s2D2GORI707GRYeGlNOpXyvU/Xe78axG+jP6LDRa+nB+cSatNsjWvW5EbY/YgtHwZSrnlSMdUC02VX7A9Q0iJrmK6oyW1zTpd3KOAczZBB2TzJuV0sc0NVjXvNim8kIyJyOxFC4trXPfSacWXKFjxc+w7XxvW+AfrOxgZj168JAr5+71wWoFhj4QHePmRBWzOSTBxpZiD47eKUO2pyLPLZCs6Po/AsAnSN9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SN7PR11MB6559.namprd11.prod.outlook.com (2603:10b6:806:26d::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.16; Thu, 22 Sep
 2022 13:55:14 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7246:dc8c:c81f:5a10]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7246:dc8c:c81f:5a10%3]) with mapi id 15.20.5632.026; Thu, 22 Sep 2022
 13:55:14 +0000
Date: Thu, 22 Sep 2022 06:55:11 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20220922135511.4bezgpbmuei4ole6@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20220915-stolen-v2-0-20ff797de047@intel.com>
 <166337433005.24750.5492517372376372170@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <166337433005.24750.5492517372376372170@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR13CA0036.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::11) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SN7PR11MB6559:EE_
X-MS-Office365-Filtering-Correlation-Id: 775592b6-bd3a-4777-f6ef-08da9ca212c3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gkCgAlaq+hAL6keXiq9O2kmfErZngDWD/MBjM9tNcoQ2nAZoqaIZXjxWlcIXfzeD6hM09PNwEGT3ycOg0rVLSLtE/C0ebMxSBMMUnA5Ju01e0alsZB1/Cd5MZRhNFbowftl9rcJF0lrImclqCi3rJAxwILd24gOwpLmdcbBlc26xOWWXYXFk410di5d6DJmlKiUf3zEwCyemTmAaD4Qk7iW82ofJwD8n1dYyarfComsincHhgbewZyicGti2qRCc73mCgiAdL3Gy29lMY0K1I2trP/7p5hwsNDciVvjIMXUsV9RjQIrLuoTevcwk0ybmhCU4ZJRgofq3ZOY78uQLBRoGwTwNpMrbZvPSo5rxni1cKxfBMNBXQW+WRLE8MSzwIzp/05adA4Fi6IiZFFH+k0ZNSARV0l3GWSrUNEGolD1qJp7rnL7u7sv67r0g0BcS1nWcKYjBAEiVX8ZmhuNu5qsBZQ0bXg5emJ0r+Ej61Y/PKSFcIa/wuL65mH2rLGUQtroLOB1a/21OY+/igJIAKYh6WJvPCQL67ksFxJEkMA6GBS2fmKqLT2QKbA7OAimSbOS1C++XN/BJjcSgfOBavQ1GdEa7EmkozQJ/Hz8p4SZxfvo/QjXF3+FNgshDQMW5OrTmWgyl2jYb8GHyVr0JmF8Eiogcw50eUrXepZLKxJpRewg6zths9AEqVzuxE9gqUCej3LW7EFpxzQ4rMYjGTbZ2Hdu3mMKdQ4oZ/wxtHCwshNwwLQ6aHK+DBNJvhQ1U+J3s1jzfKQpuA5sraSL5Xw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(396003)(346002)(376002)(366004)(39860400002)(451199015)(6666004)(83380400001)(107886003)(6506007)(41300700001)(186003)(1076003)(82960400001)(9686003)(6512007)(26005)(86362001)(38100700002)(36756003)(66946007)(4326008)(66476007)(8936002)(66556008)(316002)(5660300002)(6916009)(2906002)(6486002)(966005)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2S6jdNxbuAQFohy89GYXthwKFS5j0L++pXTjsnkWHSbRH7cns14DdP/QFRpA?=
 =?us-ascii?Q?AIbjFQR2g7vLaEWW4xVYqBMYfmZl/fOTnmP1Jc8lP1LFoO57GJJTDpFUPmf6?=
 =?us-ascii?Q?YVJ2MRLtaNwQ74UEz2CXr/p79jYtOa4hMya6ZnxgE88U4onPzH8WOaOfBJi6?=
 =?us-ascii?Q?snaWKNormZ2gPb4X4FQXVHbQ5i0uZLSwjIGmwOHzsKFw+aYq9Hc1K527f7dT?=
 =?us-ascii?Q?U9XfVl1SFHKFjJNof/e1uGUZ53WnVUS0yhAY5noFYjRiVJx0R2y8JkpKCe7p?=
 =?us-ascii?Q?yAWgeivc5+Ycvi+a/ExTsoeQA/S//CvjQHZf/o6yZunSRF8W0R7FXWJt+y9+?=
 =?us-ascii?Q?3IBUaIkYaCUJ8NDPaWD41g+kdxwbQkU8E4jHfQkn+GR2J+LBY1EBmXaHEYBw?=
 =?us-ascii?Q?/jTmaJkyHtOCavb8T7rMvo3gbLrYotB0TfDLZ2CIYXoJ/DcR5Dr6jSaXl5QX?=
 =?us-ascii?Q?ex6xwPSiPxR0S4Lk5exwCxJHQKLUInJaoWar3BGlsFDbdlqeMczUzEx+xbGB?=
 =?us-ascii?Q?3yFjjyHNF4Ml5Ynm9Cmg8uTlnthRVYSGdgdf/1VrAPayYusvkeC1sMn4VdiI?=
 =?us-ascii?Q?9/B6iX9VWZ6Kuin/NPsw8QuOxLRU1up8svHLGxSqm5QZfLDyGzBVXTe87Bui?=
 =?us-ascii?Q?aCtx8wluOvfi4UsqZBVtJM7IRYIrh+AbDfeojMFkMZqFPFVb3oHoUmqheqFe?=
 =?us-ascii?Q?syd+bsnBSIxpvceEa6EKrOV2nzr9fNuWGumSyafXIh/HPWHSzJmVOWMs+Odf?=
 =?us-ascii?Q?F2nyKL1LXF470dE/XB1XFZGopxYqoHk8soMradRdS/YpNzz/80AinT3E2FYw?=
 =?us-ascii?Q?7hxhkUJiDV2bfeLYj8fajmXNQ7FA9KfgHju33P2HIa+LzsQFur3QB4/ZhQsI?=
 =?us-ascii?Q?3znSZ71WMaBIKzHZlBh+Pz5vcobYXXWDK9AmM15stwsGi4sLfzzhrtU/f/Wo?=
 =?us-ascii?Q?bpc3SgTNjCno2DVjppJsJbrQIQU/mdP9mIuNmj/sgxeqOpdWAn8zd3m5+S+4?=
 =?us-ascii?Q?3V2NQqeDdnp//YEW1CVZJZQEZH4smkG9xSKjIPC/kMdMHsVCViABsMVV523h?=
 =?us-ascii?Q?E4FZVhkUSkpix+RM0Us9SKHHSfV0mQkfTK3JjYF7ZEHDr83aMprSwkMytko3?=
 =?us-ascii?Q?pBNZk+ZKGsFB5Ai4hxjLA3c80wtPNswJRunm5eNPfIHddCYyFeK9Ik9CM3Hw?=
 =?us-ascii?Q?vd0FYsEPT1I4MvE/fpTn90EDjGWs2066rgbD/q8oewVI3vBaX6UEXPDdMtHa?=
 =?us-ascii?Q?H8uG69hrSw9EJIRoxiHknrMd13hAAA5JpB14i/LSoZylzXBjia6tE10+4MWL?=
 =?us-ascii?Q?q7grb8VThzJkixleNRd/vS2xZLxSR4uqw2Sbn9LEIDUKIU8KQ21/0rCKDsCs?=
 =?us-ascii?Q?35moHpY/Ha+7U4Lm3HeSYuTTsWVwtIhLd8pmsDK/QHie0yEmkl7KgHQFd1d7?=
 =?us-ascii?Q?bMulbT2rwzYfT3kcatbStCw5pge0wl+TDCQlyaGb7fWclnuWa0yGddYVhztt?=
 =?us-ascii?Q?+BofbmlyQ4OMZyi+OoHpMnVQmYmUrlfbV4bW0mm+GGD/m5DUP3jMqQNL0QSX?=
 =?us-ascii?Q?n7Uyi9CGK9TbWyFly02eQA+nFXtk6olLxVofpB28237Uzh1HSVAUP+isAhJj?=
 =?us-ascii?Q?dw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 775592b6-bd3a-4777-f6ef-08da9ca212c3
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2022 13:55:14.2001 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7GuKD3l+mk1FBlmPUvAYurAHzRJuy8atcKKW0BmVzQ5DXdPmy1tvLqR9wjHwgLlp70XUuJBnuFWwUNB3VNcW8M3U8dlhGTGLFQ7n76d/3As=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6559
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Improvements_to_stolen_memory_setup_=28rev3=29?=
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
Cc: Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Sep 17, 2022 at 12:25:30AM +0000, Patchwork wrote:
>== Series Details ==
>
>Series: drm/i915: Improvements to stolen memory setup (rev3)
>URL   : https://patchwork.freedesktop.org/series/108620/
>State : failure
>
>== Summary ==
>
>CI Bug Log - changes from CI_DRM_12146_full -> Patchwork_108620v3_full
>====================================================
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_108620v3_full absolutely need to be
>  verified manually.
>
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_108620v3_full, please notify your bug team to allow them
>  to document this new failure mode, which will reduce false positives in CI.
>
>
>
>Participating hosts (10 -> 10)
>------------------------------
>
>  No changes in participating hosts
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_108620v3_full:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@kms_plane_alpha_blend@pipe-d-alpha-7efc:
>    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12146/shard-tglb3/igt@kms_plane_alpha_blend@pipe-d-alpha-7efc.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108620v3/shard-tglb8/igt@kms_plane_alpha_blend@pipe-d-alpha-7efc.html

unrelated failure in display

Lucas De Marchi
