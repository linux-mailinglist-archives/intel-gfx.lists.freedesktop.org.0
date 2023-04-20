Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7046D6E9FB7
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 01:13:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7F8D10ED35;
	Thu, 20 Apr 2023 23:13:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31D2F10ED35
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Apr 2023 23:13:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682032436; x=1713568436;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=brdeGEwmC1yCdc1kp1Z5QksPYnabvk04QYzRSYMWM3I=;
 b=lBJthYTc/Lfq4rGOpEQEEaT93Tp+AbFHE/VwU8a1svZk4E9mBYmNd3h8
 qj50cxwWUavsEpRNdE9sRfkpdrXO6WTONb2KGyBHI9oNrjOBUb5dqCwjg
 0I5TRbvu6O8FXt8wj4EiEUR1pIw4821MyEiQitLjztx+SJka5Zvdhxoet
 iHBE1SYu/dx2d7RMMZm+YuVzU7OkySRToYkYlCpQDBRxOO6Mtut1EVihJ
 hld0bWcVxuZDcmKhFjWHiqoufYBip/vHdgAL4+Ur3LUfrKxeSnO/asTwc
 e06dB9jaYvExNVHwI0Do8mqy2Yg2BpiWypZIwjVR4AioepfQIvjFvX/AQ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="432149216"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="432149216"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 16:13:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="1021730961"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="1021730961"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 20 Apr 2023 16:13:54 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 20 Apr 2023 16:13:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 20 Apr 2023 16:13:54 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 20 Apr 2023 16:13:54 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 20 Apr 2023 16:13:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hm2p4/uElrk3gEHtZ/8sbcSYPDCS0hKi7P+CyCjYlzmdMtD8SgFlkLYO7+zK2epCmzh67m5ih9Phh8EpAhmjfBZ6N4xKBnJgls1+Iiktsq5BIYKK/3JUwKIL0zUWZGJZCImPxM184SE1yqRbVo2yu1+KMBrvEUnPCGU/HpVVrFtYMD4akyQ7CgGtSictRepqridx0FoGKmneTxGITdNT3YKqqp323ioqQeLkrSj06rvZnH1TO8nCIg1JKj+VS/jewjtBfyD2ch9nY2iOI+asuZt7j7S1tKYuSI08NnI3WmsCmHnujurLlee/uxbbL8tQROYRRsxz09xjgVYKmPHMVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rhVGVQLNGWz6KBhwzt6I/JTpt/gdP9CUdaq1bhaV7ZM=;
 b=KMBybU48sy+YET8CvKcYhjsHj/IQdKB61OVD270n15iLs62pcFIOP++0IXLf9kiIbnzDxRd87OnFBvA1r/YkEwdkZTbVFwM4SVRGT/MI9cnet1y2vwI8H1iQLls1STvxgwOY+pcgF4aPWRxl4HAPpT1yyL6+6j9Drh5qCd5dgQ1YFt8FXlh+FtqM7E+JuTyFTg35G1UPAgCimwo9aJ3sVgwWJkfMdwgNMkqEe0O4One/WmuvAml4tFGVQ4R1Zf13CIBUcJXm6UNvHLvCvXLoEjAla9NjqkkZHAqBg2nXL0xstmQlvu5rmJpIarcy7jejA0/6VDIYhDX91kLT3KjYPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 CO1PR11MB4964.namprd11.prod.outlook.com (2603:10b6:303:9e::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6298.45; Thu, 20 Apr 2023 23:13:52 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e%8]) with mapi id 15.20.6319.022; Thu, 20 Apr 2023
 23:13:52 +0000
Date: Thu, 20 Apr 2023 16:12:47 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Message-ID: <ZEHG79xVWQ7M7izj@invictus>
References: <20230316202549.1764024-1-radhakrishna.sripada@intel.com>
 <20230316202549.1764024-5-radhakrishna.sripada@intel.com>
 <ZEGbBwqfRjtiaecT@orsosgc001.jf.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ZEGbBwqfRjtiaecT@orsosgc001.jf.intel.com>
X-ClientProxiedBy: SJ0PR03CA0214.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::9) To DM4PR11MB5971.namprd11.prod.outlook.com
 (2603:10b6:8:5e::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5971:EE_|CO1PR11MB4964:EE_
X-MS-Office365-Filtering-Correlation-Id: 33d52e40-6e70-44dc-3e62-08db41f4e7eb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vTFrje8tcR2KAgjpeMpvG0F2UFxzkP7I4quskIs/pnWUfrqll5Ngck+V2zSB2CtaVpcC6lfZUA4N2C45/gctdqojML5ifVLfTHmZQt0xxFNe8BXubm9omyYXUoyi4DjrMMKgiq8fmtopsk5ga7RffN1X65tK07Agi0d8c6zPe4FV1wKvmdhRpaZj9F3Ub+6vwoky4UvQRQeSVVCavttFU9M/BhWPi/fC3b5xl6NyFpm5Ub8TmbpFPjdVRbazsfN2BteNXu2wfPpr+XZu63JUBAZblnz47ny3KdDUtlSQZ5fzla8VjTeEnyOOt1QC+3btiEBsAzBeBra/B0J8HPAgi0tGwZuZHHSW/Oxvnwgm1WZkZRV7amsebCmK5FE/vOu+QijdNHr2N1ZSPHXIDxsoRa/jfLwP6LZpC84eSskuG9GCvfOCltYsMz1FL+YAOlqeQN3UguMVfjdkwKD6tSRXTuUwRb9DFVYiPvlGFquMd5cuSubTnIJOLRKs1S0yb04rHwwjGs0gaYzntf9lJ5qzzQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(366004)(39860400002)(396003)(376002)(136003)(346002)(451199021)(6636002)(6666004)(478600001)(6486002)(83380400001)(316002)(82960400001)(41300700001)(26005)(66556008)(4326008)(186003)(107886003)(6512007)(966005)(66946007)(6506007)(66476007)(9686003)(2906002)(44832011)(5660300002)(6862004)(8676002)(38100700002)(8936002)(33716001)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?i8+3mjU5qo3F+eQUucjVuD9UlGBJE+xdIgkiDcQeRavqsiIuN4qYrK8sYZke?=
 =?us-ascii?Q?tAm1Nk1bg2im1Ix2o12sLyxrvIsSrgMtFCWV35ThOI6co2wR2MNIc4U0iFD/?=
 =?us-ascii?Q?g9sQgcdBAh+ojSvzygywL+XEW1GXg8UuqHMrZymICYz/6N+yQZABIfvcE84N?=
 =?us-ascii?Q?UAooAjVnXWbBkVsBeFoARy6Ghnns6ZL2yRSb/vdsaAwZz+jgO6GeLPr86c+i?=
 =?us-ascii?Q?XCZzOsh1eFBmz6tFVo4WbSHGtIoEbTR+dVnWOICxJ0tkaAbVTNTUWiUr17X5?=
 =?us-ascii?Q?av+ij5FaeARfo7TSrfyobgQzajViqMDdq75ZfpYZA+MjWQBLAn5m9watQpzw?=
 =?us-ascii?Q?ySfrwFfXIp0FTaMYWhbF57NEgPEux/X6YStCwOcdod025hXMVqVbM7rCAzKQ?=
 =?us-ascii?Q?XNzfZeYkiBNCnIFo4J8NZTeXRnTCjggRDKO8bf7gg+ywMmvR6fRhdHb7Qjb/?=
 =?us-ascii?Q?L8tiJ56OMJRJyHHJNliiYQR6b83Ixr3KS+fExcYo12NquexTuuJBAjHZF47z?=
 =?us-ascii?Q?ip0NDi944/3YCGd7AqpamMsHUiXCVkYZl038q4ZIpw58eoVObyDm+qJb+Yei?=
 =?us-ascii?Q?UGI4PduputPo6R67jxTqUFxU3iSwOrMIJVJohN+ISRvx1+GnKHRPsTAa499N?=
 =?us-ascii?Q?qJBk2qBKDwCkI0AxVwG7NiwzCe7g8CdO739u7XH2nLtmaTxZ2uPgyDNW96ZY?=
 =?us-ascii?Q?n4r2feMYS+/VDv7XgIHgPjN44cXCmX02ma4TeFgIx5xxHejC/zqtbQCy9oPE?=
 =?us-ascii?Q?A+A0IJ3VKLH9SIQjeNwUx5itzeB2LQRVlHV+mAgk4lz9yopvPqzX/GGNUFvu?=
 =?us-ascii?Q?ozUFevTkYzjNVoH3hX2+RjxJHZOpiLZuKCQknPCT/uqL9IiIOT9r8jXd5Za2?=
 =?us-ascii?Q?divnDusgarOYUJmazhpq+hE9UR5msYxJ3Fjwy0D8YFquL/JdPHkDRXnnLltS?=
 =?us-ascii?Q?/QWjmQxiQuDfPlF/n4RGff7hM8g+rDV3GGne6XYjvo3J9IhJ6q36SKW/DjQP?=
 =?us-ascii?Q?QydBJKW4TdGJBM3epe627i0Sf/ryRBUl4ojz69nQz5ks1soRQmyy5Zdnw43e?=
 =?us-ascii?Q?39Rcdql/ITJu/reixNbc+Kbl0mGhGF6zS3/6bo2XmDl9Hej6l1voUvEVgK/C?=
 =?us-ascii?Q?T/zTSzuApCGEzm5/es41tDhD/3v0tAYWEjFHqPSJsd1gX1B3MSLBAnp6VUec?=
 =?us-ascii?Q?6a/1FowLuVW6WVSqGkIEUBYYVqtQtBObdT6f0EH0zBbxhOUf0O/ylLX7b7HS?=
 =?us-ascii?Q?Y8NnZXCDzXnhxgmxx4yUhyb2Mvdinn9+bzTNyCi/p7AUwVA5Ys6Dy8IWtWPl?=
 =?us-ascii?Q?sFjth0NFs5VW7XVuEE5nuCZitVxSB8pJZ7gEusdIuVKGQYWb9XE5hg0fb+Af?=
 =?us-ascii?Q?wb+MWleAyaykzyHLcj+ku/KpRlRsrI0SztALe7CWHmEe5fOA2f9d4jvkyzna?=
 =?us-ascii?Q?pyF4ijhTItUV7g0pDxgWOmnRdPmnAO+JkcgMgo/LVau68HMCKa3/pW+IV4wY?=
 =?us-ascii?Q?/E2rDW1kCjkpo0zkmu0XEn+BC+TQMGvNNyNk33Kh+2DN3lI24CrW+/y84yvX?=
 =?us-ascii?Q?dSTCToE85TVeOHsC29q16pK86kvWJsZbZiA+nWBh3Wo0ec04pmPwLtLscchD?=
 =?us-ascii?Q?9uPG4AkKYpPCKhtWu1v4egY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 33d52e40-6e70-44dc-3e62-08db41f4e7eb
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2023 23:13:52.5520 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EbOEmbN9uXp3Ip1rBlBmylciDktp3g53UjNRmH80j5NnKb6PG1w7wdqF+XQjEj+JEpXJMccQ1A09zq1c/f6/pPpUhhY/TmFH+aK8gh6knvI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4964
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915/mtl: Synchronize i915/BIOS on
 C6 enabling
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
Cc: intel-gfx@lists.freedesktop.org, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 20, 2023 at 01:05:27PM -0700, Umesh Nerlige Ramappa wrote:
> On Thu, Mar 16, 2023 at 01:25:48PM -0700, Radhakrishna Sripada wrote:
> > From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> > 
> > If BIOS enables/disables C6, i915 should do the same. Also, retain
> > this value across driver reloads. This is needed only for MTL as
> > of now due to an existing bug in OA which needs C6 disabled for
> > it to function. BIOS behavior is also different across platforms
> > in terms of how C6 is enabled.
> > 
> > v2: Review comments (Umesh)
> > v3: Cache the C6 enable value for all MTL. The OA WA is needed only
> > for A/B step, but we don't need to check for that here.
> > v4: Rename to mtl_check_bios_c6_setup()
> > 
> > Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> > Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> 
> This one's already pushed with the MTL OA series.
Thank you for the update. Skipped this patch in the latest rev at [1].

[1] https://patchwork.freedesktop.org/series/115292/#rev3

- Radhakrishna Sripada
> 
> Regards,
> Umesh
