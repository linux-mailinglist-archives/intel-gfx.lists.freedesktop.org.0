Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5B26A5030
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Feb 2023 01:35:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1CFE10E462;
	Tue, 28 Feb 2023 00:35:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DED289C86
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Feb 2023 00:35:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677544551; x=1709080551;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=D/PdqkDDrcC386QF1D/RV3AdtPWubgyUusg9F/HibCM=;
 b=WTyHt7yJBdPp6EVcD/khOpkoAKlhuAiaj+j8VCnVWYko++oisqba+q4L
 Kphlt6bT5KGurN+gy009Yw35lJ6COWVQHLxoC5pnWRNlP+j5dooJ3a4kK
 hAzPkLPiOv3McfVI41RI7qc4HVcInNdDgTYmV7Zg5FeM4AeIMsx4NwucE
 ZTsIU7+0Ue4qXrcm4nR5/6FvSqZR2irOrrdkkbzOyBhtLKJHYGGDdWLUg
 hsuwwiABElG/YGbyliIB9zcxiH3Qsw5i/aylES3nQlmbB6/iPBQuLVpNH
 OhOa0F8z7uVK2p0MzypPeY2K6ZAoCV3HQZxXc7ieQVKfv+4KSw76xd6Xn w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="361569648"
X-IronPort-AV: E=Sophos;i="5.98,220,1673942400"; d="scan'208";a="361569648"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 16:35:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="651421048"
X-IronPort-AV: E=Sophos;i="5.98,220,1673942400"; d="scan'208";a="651421048"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 27 Feb 2023 16:35:50 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 27 Feb 2023 16:35:49 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 27 Feb 2023 16:35:49 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 27 Feb 2023 16:35:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=An53kepul3wvyGKiXJ8HpdJnxCI9FyyA4AJtu2l2so5ppqTOBhq6dDvyLGQy5S/d8o/5eNpLLDDQO/d3k/jfmgGp8S7fzeuGqUL/LPErZuIwxSLTir+07HoYVx9r95LEhoteP/zEScf4T2gGoCgKovRYGz8Tb7i12iYahUKEfzuXRr8LUlos+NkpxWoPl5AiQhT8DdcdwaeZelCT+mhn3VAQLSz1q/A9mI2B04dh7xn+F/UYAe+S4wtylOnQSATvpLSlNj9wHxR177yLbe99WhSJjQufvlTQ4ez7yS4Y03CG7ZaPbThhutr9yR/3HgE1ptvXKJSGav78JFXQ+FnrNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GxGgdQZTYOZTdjaUfgPIiDJ2zWacRylEW/Cz5xVSuTo=;
 b=cgDjjrSzDUnf8oOoV72drlaZNNnDZeXEG/v0P/+Aq99ZVxT63PH2/zPQU4TewHCuTl3eHdLE5TrQnZHM7t44UWweYX8RqVoTsS/Gx39hd4YiaDMr5vXtDaL7vnKMI1t1B9rSk77OH3aCWxZxmMAl6GnflzMV3AgninEBg6CZ7f3jEak3LISCY18ptMVYwcJw6nKMBWIxNSVDWPA5fuxcYDcOSqdULwRVW9fVJHo2igL++lsF51g1qlDjpVs26wcU26MbJRIDV+clWVDfM4WLhfxIYDr45buwKyaxM+4vuMa7jx2+46cMslQPdbH6idVGKUSfDwyqGac0gAH4N5FnJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA1PR11MB7854.namprd11.prod.outlook.com (2603:10b6:208:3f6::5)
 by PH0PR11MB4789.namprd11.prod.outlook.com (2603:10b6:510:38::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.30; Tue, 28 Feb
 2023 00:35:47 +0000
Received: from IA1PR11MB7854.namprd11.prod.outlook.com
 ([fe80::b8ae:d1a:3df3:ba8e]) by IA1PR11MB7854.namprd11.prod.outlook.com
 ([fe80::b8ae:d1a:3df3:ba8e%5]) with mapi id 15.20.6134.025; Tue, 28 Feb 2023
 00:35:47 +0000
Date: Mon, 27 Feb 2023 16:35:41 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Message-ID: <Y/1MXdeh1cM+cXF7@mdroper-desk1.amr.corp.intel.com>
References: <20230130100806.1373883-1-chaitanya.kumar.borah@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230130100806.1373883-1-chaitanya.kumar.borah@intel.com>
X-ClientProxiedBy: BY3PR04CA0014.namprd04.prod.outlook.com
 (2603:10b6:a03:217::19) To IA1PR11MB7854.namprd11.prod.outlook.com
 (2603:10b6:208:3f6::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB7854:EE_|PH0PR11MB4789:EE_
X-MS-Office365-Filtering-Correlation-Id: 59c1523a-7dd1-456b-1699-08db1923bad2
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: J/Ekesrt2ppyIDFiwNIq4t9eYhRdR42n2WvLnkqVAGzXJsEA3zxNSi5FXwT9+Yd2ghP/WKFcfeHbr4fLxG5SJoVIVC0Q5iimoXf80f7/46kNWYF+L4d2+k8QKz6fL29sW6aoofs8N19P8YypS2qpg49G0MTq6N0B4/SoZup2uKvZL0qBotysg8Fb93m+6HMmeH4eAgeI2kIhq+3afpJ6YbGnyu5GARzkB4SfNYL6X3Cf1xHbneUf8exruqhhm0Q5gT/IxfeuVdusjCD924y6PH0L5w9hLONId7nsktyAHeqiR8ZcirF3uD0NfwfeLnoAfm0aw0MYQD1bsqY3bLGxDZHanW+3knZsLsY3tOv/Tb9HJVTFnrz7j2IQJEsJ+yF3vcCEnVprVyFlJkQ9mO1dRUHjRG44v/VXnjIvYcxywhoxmanQV5Ul+ma0P5EbCgQ/LhvE1AzIy4pM5gSCYXvrbqgA3CFpRlX1yJoRSxfK5jwcxGSxFVxVTl3I9vMMypzy60D4HW4qP2NYQQCO73zaL0YXKXOE8pqa75NyWYO50X16ARNIJxCt3DdUWRk1cyG/5W8raBvvGb/9avjLjlPDkwFOVC9knI6k14Rt6WKHLOEx2aS56vk3e5qz9fO+psfzgjWNzhj/WimCmZNh4nEFEw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB7854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(366004)(39860400002)(396003)(136003)(376002)(451199018)(83380400001)(6486002)(6636002)(316002)(82960400001)(478600001)(26005)(41300700001)(186003)(6512007)(6506007)(6666004)(5660300002)(38100700002)(6862004)(66946007)(86362001)(8936002)(2906002)(8676002)(66476007)(4326008)(66556008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?q8D47hkIvfQl3NeeghqgbQQdaUT6REA+J5M0M+PNNpyk+HYWOt+2WKxkJBD8?=
 =?us-ascii?Q?3etqg7iA9O7XDit91p6JEWAS65hYH22WyWIRQSC+jolgDuJmrU/CqWTkAUw9?=
 =?us-ascii?Q?8n0xBZv+tItZrqnIVDg2JjJ0lu5O2m/toSL1qDr5b6Bct5D6lyrIpDtEi41L?=
 =?us-ascii?Q?oH4hWb1fdTacU0JDAA2ktvkfKHNza96Ajjs6B1LNjyXwkrtRV8dAZPDgpDhK?=
 =?us-ascii?Q?HcN38f/Kcd+LCAy8QuTxTaYi63cWjfn5+OAMYERM/d5z0H3ITaWcFJn9NaQS?=
 =?us-ascii?Q?hKgZ7jukWugE3ccWETJ8FJjsWH42Ig9iUCh3htZmJq/YkhCZO7y8cdTJwwmM?=
 =?us-ascii?Q?H7gF60OUTs6q9tXDJGAajndGye0m07TgVx96LE44s4mHE5olw43XxrkIoAbp?=
 =?us-ascii?Q?kd2sr7s4fLvnevuhAMl1rb8MXFkffpGWZsESsmKsAhBkWmCBuweraxnxlvo3?=
 =?us-ascii?Q?Esww2wSRIzQMB8ogP2cM7u1MZ6gjBU3VauQhAJGw+XNNH7BnU11hp/ZfjmzI?=
 =?us-ascii?Q?9jzgSJ7FJQ2E/YrLsEv235CCv1tZiwVhVts/yBbSToDkF4+Ss2442a63pNzd?=
 =?us-ascii?Q?DgM3kB4m2QcgBNU2O8/Nea1q9ZgWdZgD/5nYW1v2epGMMq7I4ypCOypz7SVZ?=
 =?us-ascii?Q?83I5Q1FFRsbvCXk0x4tc1CLFLUdMDaqF647PQj4+UhJzFug/DpA9bwPhzN8w?=
 =?us-ascii?Q?tx1qbPiECVzvAVxG0jp71W+Igx9kf6VkBRYbseWjLuIVMnxt69icandTPwYZ?=
 =?us-ascii?Q?xYTPJlwktwdypMNro/qXiQYwJ7c4RKirFm59jDbqAJUwHDsIvIg9kB3A1YtM?=
 =?us-ascii?Q?5qa8C99Vq5oHjcYIBr4G3cdCjuofhdiy2O4h9WAuYiE7WdlE8yIeZsc4z7Zp?=
 =?us-ascii?Q?XbEA5r9XUB7IQ+1mv7zkZsZ02uMbzaL7TZ0qa9Xy56JW04id9y710r99S0iX?=
 =?us-ascii?Q?YtLu+KusiQj7gmSIvXTnl49PVqv17jqhNNzUczYZpADa0wjhKRfdsV37hU73?=
 =?us-ascii?Q?JhnftpSd5VZaYRbQVE+JfUn5MOHBCWUcDSxQshvjtaTaNoTnxfH7tAKxNJn5?=
 =?us-ascii?Q?coOE0WWl3XVnfoW8miDGS0ZHYVunZWxZDT5mAdAi30apm2z6ifDaM2sTDWYr?=
 =?us-ascii?Q?XHQskFvrOkhmnBjAG0+wskRssTj2g7uRHzVhfUGmnNJMQgRUc41pAkKT/utt?=
 =?us-ascii?Q?8pptFLoKyDHXiu1DrJ8E91//eVLcjPdiAx0RXyi4mCB4X8h1tu+LNJ1hb0I9?=
 =?us-ascii?Q?IHCUPyUtKopzaVhyqyUC7Gw8e0YHEunDTUR0pcsGZXdRCEqEUMOfxaYPidKO?=
 =?us-ascii?Q?AjOLIZ/nlSyUhBqkXskJC7EYy9U2EXR3BPUSO+GySeOvn0uoCvkVIIIT7VoS?=
 =?us-ascii?Q?ozBmCBgCyQ/GFANMNjtJ4BJPnbBxwUWALY74dCHSRyhh1PUpXmVbIUzq6l1K?=
 =?us-ascii?Q?pMb5OYNMQOekMA+1Y3NlnnI5aHpZL9JegqEaXuGjdrTfBHL2v+XztAXsIYSL?=
 =?us-ascii?Q?3EV+15hzP1DV+thwavYlJ2BkchGxmZr2Uk8YF/ySqsQ3W9b/3xqouLEIEaps?=
 =?us-ascii?Q?jt67IJcdTcsR5qhE8N3UZE+HHU0nWos/TDAFKrW+wMgx7pTOe/+SDuktYNG5?=
 =?us-ascii?Q?rg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 59c1523a-7dd1-456b-1699-08db1923bad2
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB7854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2023 00:35:45.4138 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y6O1V31UZA2WC/X6cB/gCNXp910jPAJqL5scl9e95egGp49C9N0WCrLvNtO9LsImrMnDr5p26Mmp27Zf4ZcNyXm8c7AFs5d0OQlrBMdGJ1U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4789
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 0/2] Add new CDCLK step for RPL-U
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
Cc: ville.syrjala@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 30, 2023 at 03:38:04PM +0530, Chaitanya Kumar Borah wrote:
> A new step of 480MHz has been added on SKUs that have an RPL-U
> device id. This particular step is to support 120Hz panels
> more efficiently.
> 
> This patchset adds a new table to include this new CDCLK
> step. Details can be found in BSpec entry 55409.

Hi Chaitanya.  It looks like we probably need one more change related to
the 480MHz rate beyond what was in this series.  For platforms that
support this rate, we can set voltage level 1 (see bspec 49208) whereas
the i915 code at the moment will push it up to voltage level 2 instead.


Matt

> 
> Create a new sub-platform to identify RPL-U which will enable
> us to make the differentiation during CDCLK initialization.
> 
> Furthermore, we need to make a distinction between ES (Engineering
> Sample) and QS (Quality Sample) parts as this change comes only
> to QS parts. This version of the patch does not include this change
> as we are yet to make a decision if this particular part needs
> to be upstreamed.(see comments on revision 2)
> 
> Chaitanya Kumar Borah (2):
>   drm/i915: Add RPL-U sub platform
>   drm/i915/display: Add 480 MHz CDCLK steps for RPL-U
> 
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 26 ++++++++++++++++++++++
>  drivers/gpu/drm/i915/i915_drv.h            |  2 ++
>  drivers/gpu/drm/i915/intel_device_info.c   |  7 ++++++
>  drivers/gpu/drm/i915/intel_device_info.h   |  1 +
>  include/drm/i915_pciids.h                  | 12 ++++++----
>  5 files changed, 44 insertions(+), 4 deletions(-)
> 
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
