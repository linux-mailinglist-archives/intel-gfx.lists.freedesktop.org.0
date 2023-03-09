Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 547F96B2D46
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Mar 2023 19:59:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C05110E184;
	Thu,  9 Mar 2023 18:59:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 567C110E086
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Mar 2023 18:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678388361; x=1709924361;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=2cWdQC3VTKoDTjOH7RrLPjhmdDdja4mxaBSla6ySvWo=;
 b=NbSuiPC99tZ/E0T2Jpy8qwKuoRvo9b/Cvw+oPx8Z8FV02V5hYYOZWhlB
 kKKEnRBgsOcEUmVM/4yQO6WkTy4qnUuiCz9NOsRhjtnjZRF3D7Sb6N2f5
 MOVaOnIp3/LZLXnzfjsihvUYGw4HUQSu56gLjnpEy5u85HMme0gP0VrfN
 Ycs9qvf7gfXZFd7I5xQAe8+7C6Ruo3MYVP0BK8n2G2JlnetYhsi45KVVn
 e/Q04fGUk0Ao3hBmbdOkpCqE4mGIuMkbZmR43B0QllsNCLCJ+02dN+vw2
 xIXnw9p0fIGD8AzNQ2ojkiSdnjO4Hb8fT1jVGhDAvxBV9oEOjyXulTLYK g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="401388096"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="401388096"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 10:59:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="766544204"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="766544204"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Mar 2023 10:59:20 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 9 Mar 2023 10:59:20 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 9 Mar 2023 10:59:19 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 9 Mar 2023 10:59:19 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 9 Mar 2023 10:59:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LRXyqT3YXGFlkFskg2QmxRNzS8/CAaBaYHG6VCcYpLw0nk4r1aIawr0vKfxM1KuAGJO6fgLH7tflMo8Ioz35aavR2fVYjijAftgEJkgC1aExltIEDobb9JHynjqlIoB12c9qrHheknKeOw2cijPmlbGZSEIHoUSrZcmygStEK0vdGZfMR5Qo+XTY0fAV0gZmdqJzEPhf1GBgGpcKk7+X8xvTMRBYQZfbcTL+NLR0LpHyoKmJ0EIqtodktmjAcyAnEHVdaJI3GBoZOnl5eTlwwtgsfzmHAnALhrZzHAF3jfvH+u/2b5DCbAZyr1g3VsCPOxFkHJCpjGAlxye0+6byAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iiHmH1gvve58lZm9nUvXCBo8DZlIF4lHvVN32cbzTtM=;
 b=JchzMIvW8t/ugCptB0TP5fDZPTzS/3PDBcFoKie81jN8IIJ5xft7yoNbCN4hCty7F4wQNZGCweqPffXiwXAsn04UsuYEnzp4Y0HBIuq3ZDv4OawzQk6M3PA9m7uJi4s82ltmAgg7n4PG2oK/FxdWfnv06MIUYXNbHIdsH9lC+jiaowgneO6hH35g/wXBT8Mjl6ZkxmA5Op1aoSaLq/mVK3QnvutD9uQJM94jSVstfAsRnRMQ3UqJp1rNtF84N8YBqVFXEaCqev9pJo8r4rpOyirgHxxIP3k4pAoF/oK5iNYfr4YB0KQ9wR5uHq0B7CdIqRcydZv3oBqWkJylfZK4tA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SJ2PR11MB8347.namprd11.prod.outlook.com (2603:10b6:a03:544::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.17; Thu, 9 Mar
 2023 18:59:04 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::1c61:b69d:4ca:10d0]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::1c61:b69d:4ca:10d0%5]) with mapi id 15.20.6178.017; Thu, 9 Mar 2023
 18:59:03 +0000
Date: Thu, 9 Mar 2023 10:59:00 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20230309185900.GB3408186@mdroper-desk1.amr.corp.intel.com>
References: <20230307195111.90767-1-gustavo.sousa@intel.com>
 <167837649597.12424.11518831974106689301@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <167837649597.12424.11518831974106689301@emeril.freedesktop.org>
X-ClientProxiedBy: BYAPR03CA0032.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::45) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SJ2PR11MB8347:EE_
X-MS-Office365-Filtering-Correlation-Id: 24705b9f-c97a-4c59-47c2-08db20d05983
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nCVodi2rwVGjsuY0eW9MlFhcqrhrUqGB6qc3pEqaj+mjpvmUVVkRyNCjzMS2y1aLFS+tX8pwrla4/c5MKUqING8mPM2xXkyhFZgzzvwWFQG+JJyVo9KIg34ec/Hb2FTh9nX0qqo8rhIRd+CG4aOdyNI2eltlqqa3cyt0cBMpCav03ZLFodxgoRUv7aqQe2k3R8AJFBDiYQFFzJ5XA3scgFxNJfRiuTBgL5Mmc7QeZwcQroaZY/hV3M/UzALpf7Yb7HEv/4QOpaAzeEFSzHRIg+abpLRVmcK/QmQX9Q3m2vNpaYcVzfIQKwrVNcatgMbyUNqGkzXX+HE7G/9Kfgd9ZDlmTeO2BbhBYBFdUUGgv9E9BaU9OtU8VXvBJgx9UT22OepUYiUOGl4SEAnWV9t4Un7hN2gmVRWi9cbnV8jOdzXhtB25nxOCNDHA0kYZ6Nbjv/Gzupga1mEXPrLuUGznriu0k1oqB/lpJZSnvH8Z+jZ2m87/Z6pzTbcBYaS/EVZIpi/C/2A9bv5fBf7fssGCocVLqQ7g1nR5Gl2bojMcPy4Ff8CYsdFleM5zld4cR8G3cMdCUGOs2PVC82dS0z+8rhkdqFIyX2HSZoyX+kvKCdZJ4RmJ7ryJSoxwKCvZuw+RkPhl5cDPyEsQcKTx3Enr30J6QXuYn+a+oXaVn8iTDh4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(396003)(346002)(366004)(136003)(39860400002)(451199018)(38100700002)(6486002)(82960400001)(26005)(1076003)(966005)(41300700001)(6506007)(186003)(83380400001)(6916009)(66556008)(2906002)(66476007)(4326008)(66946007)(33656002)(5660300002)(30864003)(8936002)(316002)(6512007)(478600001)(86362001)(107886003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gKy8zDmJALKBMF6Q0aJ+UP33x8nf43d5Hl35+M0M2K1yK0TovmOmPX12HTZI?=
 =?us-ascii?Q?uLRr1O9rLxOjrHu6vzvQFIoJozZ6x0Q3XKZdJL2onB0Y1o4Kd7LGBsjlTxxl?=
 =?us-ascii?Q?QmrdzYUElyYwbNHsYytEvUsEu6to7+R402zqhDPfFV4908A9zSSZiDYGKXgS?=
 =?us-ascii?Q?t/mDQ7NbJSyUnSwZy3lIFLfuxKgo3h3TUSWlZhJgeh85V8OY6gOgyIForAne?=
 =?us-ascii?Q?UQngdn/duXtzZBpQtlaKy9Al4gJyuYE1fg+1qmU7sTTz6oaDO6k+csgYjJcG?=
 =?us-ascii?Q?m22hhnSbk26Fk+zgXZhraK6DeopO9ijiapbi1EZ1EKWl5Tocphn1Qau4KlXD?=
 =?us-ascii?Q?g773ZMdX77FLmCJHYd/55xwV/sb+VCW/fb3bTnjD4G1N7VzJfMhFEZPsoN71?=
 =?us-ascii?Q?th82I7t6wf+9r92XhU7sKHQ1xy+OnsETCMIlWdja2O/9jCXnlaZvZ6bXxT9Z?=
 =?us-ascii?Q?NSl+u1IGPk05zFMyjqEgjZ5A+dhyoUjSOmYnqW7KrUz0Ps0ti2r0fGyVwKjr?=
 =?us-ascii?Q?S8a8UE0b+aEYC2T+/SEGHAwyxpuPaP91GtDvl8mngaUms4VuA8yIdczyzmov?=
 =?us-ascii?Q?pYbZI7kB7Mh3Z0D7D6uffKWSdHH02T1A+3ns9von6RyDlaEWbn3KSMT6JwW8?=
 =?us-ascii?Q?94vREgXfySfSdvNfji/XJCt+JVOONyV6C5Z9sOwgZU7up/iU78GJR/Ba/0L9?=
 =?us-ascii?Q?Au/suXB34CMR+9MsfrjLmOd38LqEAzarbsXBvSRAZ9NLi17bObUCnS5gz0JF?=
 =?us-ascii?Q?jLujd2KqTfMgp1f+0tMe8zsGjmRGXsO/Bpxf9xmugkiTaYtx8cIMk722MtWZ?=
 =?us-ascii?Q?pMz3y19cb7wTNZHgu3Yhm+w4gvFUehSEiXVsSwO3KYg78dt0HrfdPZvVjGCe?=
 =?us-ascii?Q?xglw97HjvRTNQ9RzO3rqHXKi2ebBmvj5dvGuKn24QxlzHo/liMzFgBe2cuZx?=
 =?us-ascii?Q?Qx7YUeOzpOuFx9isS+rc1BzoejgHpD/xlA4ftX5QvM7Ehc8k9lICkuAZcyst?=
 =?us-ascii?Q?3ZoBL5Cb2CMjfyZNvPnlPDxuGD+0TjVxFM1c6KLnoSu66VMZ2S3XGDqL7e8v?=
 =?us-ascii?Q?KBS8ao+XSMo3vGWLmymjsytWpnkTdkx8pf6VdzpsZY/ajw8GYGRRIlCn2MRm?=
 =?us-ascii?Q?pYWS44QAAYagtrYho6PCnObtpoVdNGnEht/Ge/Mi8vduQsSvGfplLSvEjVvK?=
 =?us-ascii?Q?ITou6g0iWOi77u5Na2cxcUVzToQM4ceNOKcPIZJxakuCRcGQuhl4pha153CF?=
 =?us-ascii?Q?vKcDbL8DOuXAqgmY3x8Eoi2WqRDMan9AUNA3IxhHaWSgTkkPb1cqwcZjdhkw?=
 =?us-ascii?Q?beYhZVmTsXVCdG9RlPaTQgk7dHWiB8ykKZ3VP652K21LcDuHrYMFzP8ClE+d?=
 =?us-ascii?Q?LE/dTlZPrAfod8tTJEAq/GdwSWu1VSyvvWgcOb0mycJMQxtCo9EiWwOP+1Q8?=
 =?us-ascii?Q?vR96LhziMqn1dYljRnltj8UWPwWCXBYQsZ8pt2qkizJcZfeknCRjAPyPRiTF?=
 =?us-ascii?Q?wI7bPb472IyGm7yB0UHeMMvSIgLZak5+ZIQZO8gv5Fc0ZwEDHbO0JdO4T1m1?=
 =?us-ascii?Q?5r02zPpLXgrUliCrh1n9F7D+qh2usAL+aMMWDDxpTGYGpdKrMhFgSCEmrCjm?=
 =?us-ascii?Q?Jg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 24705b9f-c97a-4c59-47c2-08db20d05983
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2023 18:59:03.2300 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3xyNXqNrVF7GL8/Fz8Hn8TL0dnyCFkRvGW/reffeDVxVQ9RaJ3L8USNIMkUu6rxn/C1fkjPixerDfn13iZGAuwX901izXFtB1cvstgCnGRU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8347
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogIHN1Y2Nlc3MgZm9yIGRy?=
 =?utf-8?q?m/i915/dmc=3A_Load_DMC_on_MTL_=28rev2=29?=
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

On Thu, Mar 09, 2023 at 03:41:35PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dmc: Load DMC on MTL (rev2)
> URL   : https://patchwork.freedesktop.org/series/114576/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12827_full -> Patchwork_114576v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied do drm-intel-next.  Thanks for the patch.


Matt

> 
>   
> 
> Participating hosts (8 -> 11)
> ------------------------------
> 
>   Additional (3): shard-rkl0 shard-tglu-9 shard-tglu0 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_114576v2_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@i915_pm_rps@reset:
>     - {shard-tglu}:       [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-tglu-5/igt@i915_pm_rps@reset.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-6/igt@i915_pm_rps@reset.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_114576v2_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@fbdev@info:
>     - shard-tglu-9:       NOTRUN -> [SKIP][3] ([i915#2582])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-9/igt@fbdev@info.html
> 
>   * igt@feature_discovery@display-2x:
>     - shard-tglu-9:       NOTRUN -> [SKIP][4] ([i915#1839])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-9/igt@feature_discovery@display-2x.html
> 
>   * igt@feature_discovery@psr2:
>     - shard-tglu-10:      NOTRUN -> [SKIP][5] ([i915#658])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-10/igt@feature_discovery@psr2.html
> 
>   * igt@gem_ccs@block-multicopy-compressed:
>     - shard-tglu-10:      NOTRUN -> [SKIP][6] ([i915#5325])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-10/igt@gem_ccs@block-multicopy-compressed.html
> 
>   * igt@gem_exec_capture@capture-invisible@smem0:
>     - shard-tglu-9:       NOTRUN -> [SKIP][7] ([i915#6334])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-9/igt@gem_exec_capture@capture-invisible@smem0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [PASS][8] -> [FAIL][9] ([i915#2842])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-apl7/igt@gem_exec_fair@basic-none-solo@rcs0.html
>     - shard-tglu-10:      NOTRUN -> [FAIL][10] ([i915#2842]) +1 similar issue
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-10/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#2842])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-glk5/igt@gem_exec_fair@basic-pace@rcs0.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-glk1/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-tglu-9:       NOTRUN -> [FAIL][13] ([i915#2842]) +4 similar issues
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-9/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   * igt@gem_lmem_swapping@heavy-multi:
>     - shard-tglu-9:       NOTRUN -> [SKIP][14] ([i915#4613])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-9/igt@gem_lmem_swapping@heavy-multi.html
> 
>   * igt@gem_lmem_swapping@random:
>     - shard-tglu-10:      NOTRUN -> [SKIP][15] ([i915#4613]) +1 similar issue
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-10/igt@gem_lmem_swapping@random.html
> 
>   * igt@gem_media_vme:
>     - shard-tglu-9:       NOTRUN -> [SKIP][16] ([i915#284])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-9/igt@gem_media_vme.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-tglu-9:       NOTRUN -> [WARN][17] ([i915#2658])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-9/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@create-protected-buffer:
>     - shard-tglu-9:       NOTRUN -> [SKIP][18] ([i915#4270])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-9/igt@gem_pxp@create-protected-buffer.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-1:
>     - shard-tglu-10:      NOTRUN -> [SKIP][19] ([i915#4270])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-10/igt@gem_pxp@reject-modify-context-protection-off-1.html
> 
>   * igt@gem_userptr_blits@readonly-pwrite-unsync:
>     - shard-tglu-10:      NOTRUN -> [SKIP][20] ([i915#3297]) +2 similar issues
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-10/igt@gem_userptr_blits@readonly-pwrite-unsync.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-cycles:
>     - shard-tglu-9:       NOTRUN -> [SKIP][21] ([i915#3297])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-9/igt@gem_userptr_blits@unsync-unmap-cycles.html
> 
>   * igt@gen7_exec_parse@chained-batch:
>     - shard-tglu-9:       NOTRUN -> [SKIP][22] ([fdo#109289]) +1 similar issue
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-9/igt@gen7_exec_parse@chained-batch.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-apl:          [PASS][23] -> [ABORT][24] ([i915#5566])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-apl2/igt@gen9_exec_parse@allowed-single.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-apl2/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@cmd-crossing-page:
>     - shard-tglu-10:      NOTRUN -> [SKIP][25] ([i915#2527] / [i915#2856]) +1 similar issue
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-10/igt@gen9_exec_parse@cmd-crossing-page.html
> 
>   * igt@gen9_exec_parse@unaligned-access:
>     - shard-tglu-9:       NOTRUN -> [SKIP][26] ([i915#2527] / [i915#2856]) +1 similar issue
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-9/igt@gen9_exec_parse@unaligned-access.html
> 
>   * igt@i915_pm_backlight@fade-with-dpms:
>     - shard-tglu-9:       NOTRUN -> [SKIP][27] ([i915#7561])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-9/igt@i915_pm_backlight@fade-with-dpms.html
> 
>   * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
>     - shard-tglu-9:       NOTRUN -> [SKIP][28] ([i915#1397])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-9/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
> 
>   * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-tglu-10:      NOTRUN -> [SKIP][29] ([fdo#111644] / [i915#1397])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-10/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@i915_query@query-topology-known-pci-ids:
>     - shard-tglu-9:       NOTRUN -> [SKIP][30] ([fdo#109303])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-9/igt@i915_query@query-topology-known-pci-ids.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-tglu-10:      NOTRUN -> [SKIP][31] ([i915#5286]) +1 similar issue
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-10/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-90:
>     - shard-tglu-10:      NOTRUN -> [SKIP][32] ([fdo#111614]) +2 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-10/igt@kms_big_fb@linear-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-tglu-9:       NOTRUN -> [SKIP][33] ([fdo#111615] / [i915#1845] / [i915#7651]) +4 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-9/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-tglu-10:      NOTRUN -> [SKIP][34] ([fdo#111615]) +3 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-10/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_joiner@basic:
>     - shard-tglu-9:       NOTRUN -> [SKIP][35] ([i915#2705])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-9/igt@kms_big_joiner@basic.html
> 
>   * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs:
>     - shard-tglu-10:      NOTRUN -> [SKIP][36] ([i915#3689] / [i915#6095])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-10/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
>     - shard-tglu-10:      NOTRUN -> [SKIP][37] ([i915#3689] / [i915#3886]) +1 similar issue
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-10/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_dg2_mc_ccs:
>     - shard-tglu-10:      NOTRUN -> [SKIP][38] ([i915#6095]) +2 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-10/igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_dg2_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-random-ccs-data-yf_tiled_ccs:
>     - shard-tglu-10:      NOTRUN -> [SKIP][39] ([fdo#111615] / [i915#3689]) +1 similar issue
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-10/igt@kms_ccs@pipe-c-random-ccs-data-yf_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-d-bad-pixel-format-4_tiled_dg2_rc_ccs_cc:
>     - shard-tglu-10:      NOTRUN -> [SKIP][40] ([i915#3689]) +6 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-10/igt@kms_ccs@pipe-d-bad-pixel-format-4_tiled_dg2_rc_ccs_cc.html
> 
>   * igt@kms_cdclk@mode-transition-all-outputs:
>     - shard-tglu-10:      NOTRUN -> [SKIP][41] ([i915#3742])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-10/igt@kms_cdclk@mode-transition-all-outputs.html
> 
>   * igt@kms_chamelium_hpd@common-hpd-after-suspend:
>     - shard-tglu-9:       NOTRUN -> [SKIP][42] ([i915#7828]) +3 similar issues
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-9/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:
>     - shard-tglu-10:      NOTRUN -> [SKIP][43] ([i915#7828]) +3 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-10/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html
> 
>   * igt@kms_color@legacy-gamma-reset:
>     - shard-tglu-9:       NOTRUN -> [SKIP][44] ([i915#3546]) +1 similar issue
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-9/igt@kms_color@legacy-gamma-reset.html
> 
>   * igt@kms_content_protection@content_type_change:
>     - shard-tglu-10:      NOTRUN -> [SKIP][45] ([i915#6944] / [i915#7116] / [i915#7118])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-10/igt@kms_content_protection@content_type_change.html
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-tglu-10:      NOTRUN -> [SKIP][46] ([i915#3116] / [i915#3299])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-10/igt@kms_content_protection@dp-mst-type-0.html
> 
>   * igt@kms_cursor_crc@cursor-random-max-size:
>     - shard-tglu-10:      NOTRUN -> [SKIP][47] ([i915#3555]) +2 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-10/igt@kms_cursor_crc@cursor-random-max-size.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-atomic:
>     - shard-tglu-10:      NOTRUN -> [SKIP][48] ([fdo#109274])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-10/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
>     - shard-tglu-9:       NOTRUN -> [SKIP][49] ([i915#1845]) +17 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-9/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-apl:          [PASS][50] -> [FAIL][51] ([i915#2346])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>     - shard-tglu-10:      NOTRUN -> [SKIP][52] ([i915#4103])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-10/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-glk:          NOTRUN -> [FAIL][53] ([i915#4767])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-glk8/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-tglu-10:      NOTRUN -> [SKIP][54] ([i915#3469])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-10/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms:
>     - shard-tglu-9:       NOTRUN -> [SKIP][55] ([fdo#109274] / [i915#3637]) +1 similar issue
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-9/igt@kms_flip@2x-flip-vs-dpms.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][56] -> [FAIL][57] ([i915#2122])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate:
>     - shard-tglu-10:      NOTRUN -> [SKIP][58] ([fdo#109274] / [i915#3637]) +2 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-10/igt@kms_flip@2x-plain-flip-fb-recreate.html
> 
>   * igt@kms_flip@flip-vs-panning-interruptible:
>     - shard-tglu-9:       NOTRUN -> [SKIP][59] ([i915#3637]) +4 similar issues
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-9/igt@kms_flip@flip-vs-panning-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
>     - shard-tglu-10:      NOTRUN -> [SKIP][60] ([i915#2587] / [i915#2672]) +2 similar issues
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-10/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:
>     - shard-tglu-9:       NOTRUN -> [SKIP][61] ([i915#3555]) +4 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-9/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt:
>     - shard-tglu-10:      NOTRUN -> [SKIP][62] ([fdo#110189]) +15 similar issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-glk:          NOTRUN -> [SKIP][63] ([fdo#109271]) +4 similar issues
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-glk8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-pwrite:
>     - shard-tglu-9:       NOTRUN -> [SKIP][64] ([i915#1849]) +37 similar issues
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-cpu:
>     - shard-tglu-10:      NOTRUN -> [SKIP][65] ([fdo#109280]) +19 similar issues
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-10/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
>     - shard-tglu-10:      NOTRUN -> [SKIP][66] ([fdo#109289])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-10/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html
> 
>   * igt@kms_plane_alpha_blend@coverage-7efc:
>     - shard-tglu-9:       NOTRUN -> [SKIP][67] ([i915#7128])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-9/igt@kms_plane_alpha_blend@coverage-7efc.html
> 
>   * igt@kms_psr@psr2_dpms:
>     - shard-tglu-9:       NOTRUN -> [SKIP][68] ([fdo#110189]) +3 similar issues
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-9/igt@kms_psr@psr2_dpms.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak-pipe-b:
>     - shard-tglu-9:       NOTRUN -> [SKIP][69] ([fdo#109274])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-9/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html
> 
>   * igt@kms_vblank@pipe-d-query-busy:
>     - shard-tglu-9:       NOTRUN -> [SKIP][70] ([i915#1845] / [i915#7651]) +46 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-9/igt@kms_vblank@pipe-d-query-busy.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-tglu-10:      NOTRUN -> [SKIP][71] ([i915#2437])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-10/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@perf@polling-small-buf:
>     - shard-tglu-9:       NOTRUN -> [FAIL][72] ([i915#1722])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-9/igt@perf@polling-small-buf.html
> 
>   * igt@perf_pmu@event-wait@rcs0:
>     - shard-tglu-10:      NOTRUN -> [SKIP][73] ([fdo#112283])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-10/igt@perf_pmu@event-wait@rcs0.html
> 
>   * igt@v3d/v3d_create_bo@create-bo-invalid-flags:
>     - shard-tglu-9:       NOTRUN -> [SKIP][74] ([fdo#109315] / [i915#2575]) +2 similar issues
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-9/igt@v3d/v3d_create_bo@create-bo-invalid-flags.html
> 
>   * igt@v3d/v3d_get_param@get-bad-param:
>     - shard-tglu-10:      NOTRUN -> [SKIP][75] ([fdo#109315] / [i915#2575]) +1 similar issue
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-10/igt@v3d/v3d_get_param@get-bad-param.html
> 
>   * igt@vc4/vc4_tiling@get-bad-flags:
>     - shard-tglu-10:      NOTRUN -> [SKIP][76] ([i915#2575]) +2 similar issues
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-10/igt@vc4/vc4_tiling@get-bad-flags.html
> 
>   * igt@vc4/vc4_wait_bo@used-bo-0ns:
>     - shard-tglu-9:       NOTRUN -> [SKIP][77] ([i915#2575]) +5 similar issues
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-9/igt@vc4/vc4_wait_bo@used-bo-0ns.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_fdinfo@virtual-idle:
>     - {shard-rkl}:        [FAIL][78] ([i915#7742]) -> [PASS][79] +2 similar issues
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-4/igt@drm_fdinfo@virtual-idle.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-rkl-3/igt@drm_fdinfo@virtual-idle.html
> 
>   * igt@fbdev@write:
>     - {shard-rkl}:        [SKIP][80] ([i915#2582]) -> [PASS][81]
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-1/igt@fbdev@write.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-rkl-6/igt@fbdev@write.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - {shard-tglu}:       [FAIL][82] ([i915#2842]) -> [PASS][83]
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-tglu-8/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-6/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - {shard-rkl}:        [FAIL][84] ([i915#2842]) -> [PASS][85] +2 similar issues
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-3/igt@gem_exec_fair@basic-pace@rcs0.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-rkl-5/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_reloc@basic-write-wc-active:
>     - {shard-rkl}:        [SKIP][86] ([i915#3281]) -> [PASS][87]
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-3/igt@gem_exec_reloc@basic-write-wc-active.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-rkl-5/igt@gem_exec_reloc@basic-write-wc-active.html
> 
>   * igt@gem_partial_pwrite_pread@write:
>     - {shard-rkl}:        [SKIP][88] ([i915#3282]) -> [PASS][89] +3 similar issues
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-3/igt@gem_partial_pwrite_pread@write.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-rkl-5/igt@gem_partial_pwrite_pread@write.html
> 
>   * igt@gen9_exec_parse@batch-without-end:
>     - {shard-rkl}:        [SKIP][90] ([i915#2527]) -> [PASS][91]
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-3/igt@gen9_exec_parse@batch-without-end.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-rkl-5/igt@gen9_exec_parse@batch-without-end.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - {shard-rkl}:        [SKIP][92] ([i915#658]) -> [PASS][93] +1 similar issue
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-1/igt@i915_pm_dc@dc6-psr.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-rkl-6/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
>     - {shard-tglu}:       [FAIL][94] ([i915#3591]) -> [PASS][95]
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-tglu-5/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-tglu-5/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
> 
>   * igt@i915_pm_rpm@drm-resources-equal:
>     - {shard-rkl}:        [SKIP][96] ([fdo#109308]) -> [PASS][97]
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-2/igt@i915_pm_rpm@drm-resources-equal.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-rkl-6/igt@i915_pm_rpm@drm-resources-equal.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp:
>     - {shard-dg1}:        [SKIP][98] ([i915#1397]) -> [PASS][99] +1 similar issue
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-dg1-14/igt@i915_pm_rpm@modeset-non-lpsp.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-dg1-16/igt@i915_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
>     - {shard-rkl}:        [SKIP][100] ([i915#1845] / [i915#4098]) -> [PASS][101] +30 similar issues
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-1/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
>     - {shard-rkl}:        [SKIP][102] ([i915#1849] / [i915#4098]) -> [PASS][103] +16 similar issues
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
> 
>   * igt@kms_plane@plane-position-covered@pipe-a-planes:
>     - {shard-rkl}:        [SKIP][104] ([i915#1849]) -> [PASS][105] +1 similar issue
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-2/igt@kms_plane@plane-position-covered@pipe-a-planes.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-rkl-6/igt@kms_plane@plane-position-covered@pipe-a-planes.html
> 
>   * igt@kms_psr@primary_mmap_cpu:
>     - {shard-rkl}:        [SKIP][106] ([i915#1072]) -> [PASS][107] +1 similar issue
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-2/igt@kms_psr@primary_mmap_cpu.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-rkl-6/igt@kms_psr@primary_mmap_cpu.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - {shard-rkl}:        [SKIP][108] ([i915#5461]) -> [PASS][109]
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-rkl-6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@perf@gen12-oa-tlb-invalidate:
>     - {shard-rkl}:        [SKIP][110] ([fdo#109289]) -> [PASS][111]
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-5/igt@perf@gen12-oa-tlb-invalidate.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-rkl-2/igt@perf@gen12-oa-tlb-invalidate.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - {shard-rkl}:        [SKIP][112] ([i915#2436]) -> [PASS][113]
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-3/igt@perf@gen8-unprivileged-single-ctx-counters.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-rkl-5/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   * igt@perf@oa-exponents:
>     - shard-glk:          [ABORT][114] ([i915#5213]) -> [PASS][115]
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-glk2/igt@perf@oa-exponents.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-glk8/igt@perf@oa-exponents.html
> 
>   * igt@prime_vgem@basic-write:
>     - {shard-rkl}:        [SKIP][116] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [PASS][117]
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-1/igt@prime_vgem@basic-write.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-rkl-5/igt@prime_vgem@basic-write.html
> 
>   * igt@testdisplay:
>     - {shard-rkl}:        [SKIP][118] ([i915#4098]) -> [PASS][119] +1 similar issue
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-1/igt@testdisplay.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/shard-rkl-6/igt@testdisplay.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
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
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
>   [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2532]: https://gitlab.freedesktop.org/drm/intel/issues/2532
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
>   [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
>   [i915#5115]: https://gitlab.freedesktop.org/drm/intel/issues/5115
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5213]: https://gitlab.freedesktop.org/drm/intel/issues/5213
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
>   [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
>   [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
>   [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
>   [i915#7052]: https://gitlab.freedesktop.org/drm/intel/issues/7052
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7128]: https://gitlab.freedesktop.org/drm/intel/issues/7128
>   [i915#7276]: https://gitlab.freedesktop.org/drm/intel/issues/7276
>   [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
>   [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
>   [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7811]: https://gitlab.freedesktop.org/drm/intel/issues/7811
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7949]: https://gitlab.freedesktop.org/drm/intel/issues/7949
>   [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957
>   [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>   [i915#8152]: https://gitlab.freedesktop.org/drm/intel/issues/8152
>   [i915#8154]: https://gitlab.freedesktop.org/drm/intel/issues/8154
>   [i915#8211]: https://gitlab.freedesktop.org/drm/intel/issues/8211
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12827 -> Patchwork_114576v2
> 
>   CI-20190529: 20190529
>   CI_DRM_12827: b794b8d84dc0470ee58467386f41870e81a86580 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7183: 3434cef8be4e487644a740039ad15123cd094526 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_114576v2: b794b8d84dc0470ee58467386f41870e81a86580 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114576v2/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
