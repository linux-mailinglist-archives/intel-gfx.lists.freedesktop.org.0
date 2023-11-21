Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0727E7F35D7
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Nov 2023 19:21:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03B7A10E294;
	Tue, 21 Nov 2023 18:21:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73C1210E294
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Nov 2023 18:20:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700590857; x=1732126857;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=CadjYfRMeDbhRaXzewCI/xHSunk1XrzHRjLLnyT1Wpo=;
 b=ccmzktAXzDR31TelrgDd1c19aOGM8xubWm2b5de8Csg9qZIoTXvP6fVd
 Dr7x1dH9Vu+AIzvHPD9CpFvE4IcdnHme9+/OUEGm2kCpCSmA+oSxj1LOx
 dQDG2PyesnBgQIirNVJDq4Fl/8rHNYKJ6x2TnF6dxJ1r7lnc8/qZVouht
 Tti3mpC95pX/AXZpIMeinM8JGKZ8ZqvNH8iO9Fz80LzYMlPe63Gq1n5d3
 rVT8xA2duQBDOIoBk2h4WLkZEVUiaUD/I7AHxPd/sjG9xhQj9GYAqMbWs
 cmnYtxK2MSKq/XE32eWKASrLcEdIddEWqJLDnXjMtNqjZ84Ghee1G/rGo w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="13445680"
X-IronPort-AV: E=Sophos;i="6.04,216,1695711600"; d="scan'208";a="13445680"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 10:20:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="1013995661"
X-IronPort-AV: E=Sophos;i="6.04,216,1695711600"; d="scan'208";a="1013995661"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Nov 2023 10:20:56 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 21 Nov 2023 10:20:56 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 21 Nov 2023 10:20:56 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 21 Nov 2023 10:20:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y5VFSpllMrNo/0RzkZBqMs6gipVgW1GR47hPYRpWSSxBU2A5pPRnxq4/B+Z2OT7nqBrhq7PYXjPGmOXSL9w/tKbMiuLbioiNL/kp82z2CeTwE+xt6tFSuuAukBOqrX/5arPBs8ZRWPzGlE7L6qW5uvDu+6jqMCYDHJY9g1XdB0t5+85ALoP3cif6Ueh2yYb136P8kACPDh74sYPO8lbuVe0X9Olol5n4uZHXbZE29yniK4aCgXYDZQbhP3qMWiku05Qrp2jNblBzsCSGeK8jDvheNt++rYnkcv+ZEf8ed+MKi4U+dGwfhdlWag7V10PaxTtLWqDoY80XfL1aHKasOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zy2pSi1ZBfD4n3ewjqOWn+4rpDY45vDrhjPdsoiS1I0=;
 b=K4yTRkAD4ZfdhDRMYL9V5IV5NaOoU5o/RqoQn1O48xbRNNVI1rLnOVxwRS6Tcg16+ufwjGpO/UmpwnbOEx/CnFbE8mTmiBZDy5aY/62TdOrmiKhhZ2nEbExtO+KHcBUMEswHI5zhdSZn+CEzl7aaA9WcvMw9vUt5kcJWR9sLv1NErJHXGUQ63++JbDGFMyNjLZdq/TkcTFslLXvvprK6Osf/IzqongqaT9EOPaVucbEzePlx1j/21LI8VOabeXEA3EF5fiod+VObYpfvGdHco9W4PItO3UHgQGFi3ORkJ37eLQnqqOGxJSX1t+GjpyqblvwUQ1/gqcSs+PnodrLoWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CH3PR11MB7940.namprd11.prod.outlook.com (2603:10b6:610:130::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.27; Tue, 21 Nov
 2023 18:20:54 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::b870:a8ae:c4f1:c39b]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::b870:a8ae:c4f1:c39b%4]) with mapi id 15.20.7025.017; Tue, 21 Nov 2023
 18:20:54 +0000
Date: Tue, 21 Nov 2023 12:20:52 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Haridhar Kalvala <haridhar.kalvala@intel.com>
Message-ID: <lyaxznnyi2ryxmnscjilm533bz2bcasuf6ynpydypdwwznz7cq@vri6ridokvig>
References: <20231120113731.1570589-1-haridhar.kalvala@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20231120113731.1570589-1-haridhar.kalvala@intel.com>
X-ClientProxiedBy: SJ0PR03CA0188.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::13) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CH3PR11MB7940:EE_
X-MS-Office365-Filtering-Correlation-Id: 9a7dd19d-5291-4c0d-2157-08dbeabe9947
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ErSiGgfJIG5iBlhmReaIkhNLQQkc+XuweKbQpWQS9VEM1GxuX1LbawYA556K6JrTvrDQEgr+pYhYj31ehkUy7OxZr2WVRQ/UVyptSMO34u3kzBXLGHBHEZ0D7Ig9OwTIcITMnvV304wRcHVodUJTIDdJUqew9zmYgESCWjRkZx8N4gfQZ1pM+697zS1g7daFJ69AhFbWE0DW3OtordBAx+EYuQBCSDCcrE4NYktQATuPcPqLiyv+zrJU2t3yTteZyNn8PCi5dv/AkwOOYYCstwXme93CadAuEwf3iPlo9wChGD7bYDIthZM5aU0vP87SYW4ZGZPOd0t+PnfLr6NxzS+qIVsSraZYLFsWRfQMCP6o1ZF7T9oFMoIsBeITJS5hozjBmW0Cd8lFQMVYaGKlYlJTQBYgd2ZEhQu90l+utw/J/ZcW9wN1zkO44Qi/16zC0WZdDZBoO4XGmPjLZPGsNhZEH7LiB5IHqsbVNk/4Hamvn6nfPElFcNaItuvQ8dx+ZtyMWt33pqEY4gVWCR6OG1KXZlr9ty8YQzkRscuL+JYlp3M5gOpXZHLHobsTJwC0
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(346002)(376002)(39860400002)(366004)(396003)(136003)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(6506007)(4326008)(6862004)(8676002)(8936002)(4744005)(15650500001)(26005)(82960400001)(2906002)(38100700002)(66476007)(66946007)(66556008)(6636002)(316002)(86362001)(5660300002)(478600001)(6486002)(107886003)(83380400001)(33716001)(41300700001)(9686003)(6512007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qqSvwu1eWWVmgZV1YwywU/kbk4DW1+g2MqZl+RenwxesDLbESy1IYPFNYbLH?=
 =?us-ascii?Q?omOgllzi6GK+LlDBscvK0bINyDU/Ycdph1vl2SKIAWSkQlbtr7Rnk7DUxI8w?=
 =?us-ascii?Q?K36oWrXdQuDgiVU63N+VQsFCnMsV4Z/piSoyI7seRxLWiDNKSuw9Npkb7zk+?=
 =?us-ascii?Q?ncOs1ui3WSzu6c2HklKyq3y1ojRyB3ZG3jqO7PL3On0v9eXk2PjVDEYw0GJs?=
 =?us-ascii?Q?4g+P2htxZad+jQptaeViuyM44vLvo488/bu/tFavvHJbxyfTCxcgdQJ0ByPo?=
 =?us-ascii?Q?BFx4vJaBJnQw+K0srgit1nUVaR8RuYZilDipyfu3Kipw8njxLwcUU2CjfaLD?=
 =?us-ascii?Q?kX1/+a3TaeGyAhNb2kqyd+7sBmp4TlZXC3Ac+onpITGNVQO0g7nwnydi4RyL?=
 =?us-ascii?Q?q99wv0QJETL4A9wwxj7y9FRYR3yBgEaZziXSfJCtSLcEsyjAhFXR1bNtRioH?=
 =?us-ascii?Q?q/UAfJLbZBfsNTsXHld1R3Pcs3zObkEzUEYCAqJOndFNf5tGxzF2WLI/H3Hk?=
 =?us-ascii?Q?Y7ik6Ev/ZVnz0jjXjxIiVLSILqNqB8FnKWBBZXIEFqsCvbfM/hTqKI9fhXuq?=
 =?us-ascii?Q?UzLkFs1GDh2/F5rux4pnDIwvBGC8+8DMlUHxAgVfYFR9DNbsVxMKaVsfpcMW?=
 =?us-ascii?Q?GgRIAw84B41QGUu6ptjWENJP8Jp2j/biwsTGPjzdtVcWRooZrEkOJoenlCeP?=
 =?us-ascii?Q?mZdwMcnuVZ/ZJhZityoSNRlZ/KozrX0qNVIw39QiAu5aIsDGqZPP05GkOhsR?=
 =?us-ascii?Q?nMGzLmH2NLk0Q60CO8QLlPP/efKVsLBypLLBsOfKvtlsXQq89kCsHoSD/3sE?=
 =?us-ascii?Q?FP8HiuRj64vH6m1Dy/G1OkAYAPyILAhm5EswPk+hdnf1KiH40d9z1sjyPI1F?=
 =?us-ascii?Q?45pD5pelEzod4XMyVD9irCVhnqXR5rhaTFd4hVv0wjliqgLp+oy42PvXj3J1?=
 =?us-ascii?Q?ExIDk+RVT9wJHNQIOtqs7bz32kGFS25d1wm/TgSXPNtPBE3AFTZkcE/ue20i?=
 =?us-ascii?Q?9MPNUVW/MQdPww/sIEkoLRrHG210GPjzxfUtC1r4hdwNU706/Um5bvPufMy0?=
 =?us-ascii?Q?NV31PkWcQyGJ2zNJlFxR6dmbPf32BJp9mcehPf7UzGS69RZV/nSFvbiDQiiB?=
 =?us-ascii?Q?sFd6k9pvDRpDfXOMuQCRZRpbvTCRHZWQ1aA/rjwz+IyrauWPYyI6AsN2fIX5?=
 =?us-ascii?Q?sq/kBlvGNbF1Vm0wRdFFKxsfkOkqn1w6DpC3bqn758+cwzGwuvc3MoyEwXJl?=
 =?us-ascii?Q?DXvZ/ndHfQgK1YxrE4wM+4htRe806+XkJJ56oLOwnsOC19q/oXCClLwtToRV?=
 =?us-ascii?Q?faE2smlGmVF8LSyckKbRcTQchDddzNWzTsZpOTO4npb/SFn59O4Hq+AEMprP?=
 =?us-ascii?Q?v2bOZO8r4F/Y+dzHvq6f98Qfwxz8lNt6NH4HEOXUgqsnrooYzaJ5QuV/IxL3?=
 =?us-ascii?Q?OitfFnv0WmiFHHWLXR9atGsM/l77QdtRSJfZDFngYoco7sHMcL+F81wwnRXG?=
 =?us-ascii?Q?obTSgc0hARftr1uCrg1ukV9MOS/9Q/gZz4ehZRtGU3aH90lUrXKeUM/I7ugG?=
 =?us-ascii?Q?calP/xQnMoloFUK+WFQHcZqV63mk3Jw9wff8iLXABjQR1nqolrIam/72mGDw?=
 =?us-ascii?Q?hg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a7dd19d-5291-4c0d-2157-08dbeabe9947
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2023 18:20:54.0662 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D/6kiyhxShtMp1nQH8qfqMCTiTOmC3Xo+gj1+rAAkWgTN4BC6X7bFITkjauhctdqb+2D2fDhZjzKdJZYhRbwPi/F8wx6TBrhaa3miNVBtLw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7940
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: ATS-M device ID update
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
Cc: intel-gfx@lists.freedesktop.org, matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 20, 2023 at 05:07:31PM +0530, Haridhar Kalvala wrote:
>ATS-M device ID update.
>
>BSpec: 44477
>
>Signed-off-by: Haridhar Kalvala <haridhar.kalvala@intel.com>
>---

Applied to drm-intel-gt-next. Thanks.

Lucas De Marchi

> include/drm/i915_pciids.h | 3 ++-
> 1 file changed, 2 insertions(+), 1 deletion(-)
>
>diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
>index 1c9ea6ab3eb9..fcf1849aa47c 100644
>--- a/include/drm/i915_pciids.h
>+++ b/include/drm/i915_pciids.h
>@@ -738,7 +738,8 @@
> 	INTEL_DG2_G12_IDS(info)
>
> #define INTEL_ATS_M150_IDS(info) \
>-	INTEL_VGA_DEVICE(0x56C0, info)
>+	INTEL_VGA_DEVICE(0x56C0, info), \
>+	INTEL_VGA_DEVICE(0x56C2, info)
>
> #define INTEL_ATS_M75_IDS(info) \
> 	INTEL_VGA_DEVICE(0x56C1, info)
>-- 
>2.25.1
>
