Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E48D46C1FA6
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 19:26:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 291DE10E21C;
	Mon, 20 Mar 2023 18:26:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E14910E21C
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 18:26:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679336788; x=1710872788;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=0Nr1F2okTqRbr5wqCnus8Pn5QQ/R1lzXYbHO60Du17M=;
 b=S9o1skBONVYtXHsCYN6rPnpd4fALcu8/rk0BJOHE0kbTjKIz+5hguCmp
 NjWFfF3YQIL4zYfs7KeCHsKWUWF9lA5+OmbjYpUnLpPVqln6CIarkiDBC
 c7MPi7jKaIz1YScEUPq4S2IkIeTyiiIkWYUmCBUcUzM4yK0EyfnQe63Ml
 gDgHLXlJPEmpWw8KSY+qHuLYgwB7+xkomQc5PaR2JDQ69Opr6OvxnPXE6
 1rOojK+0RMy+pQF96sbmjGu+n5qcugPD3hCtOYA0Qx3OuQToJaM4ljkk9
 ibe1QjJa8WR7lb9aCiiltUOPP45OSjyWlVWFAGLrZUsP+wJcXR/5t8jhD A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="336248550"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="336248550"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 11:26:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="658470912"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="658470912"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 20 Mar 2023 11:26:27 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 20 Mar 2023 11:25:20 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 20 Mar 2023 11:25:20 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 20 Mar 2023 11:25:20 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 20 Mar 2023 11:25:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FGvF2KOsLhQ97fu/7BlVChfiyNLwWndA/0Z9esBKAPoayAdobvudM9LxkM0PQPFvTO+IElNj/S44H6fBX5d3W7NdJhxEQAwszNNymasWyvRJnvb22YHWgLsa4/W0s7xHF4ByqHKkn6/XkKwpgyPKTq6laOUxsYxAUZZILFjg+ynb5iPzS1c2ab6217hUxyzFUbYI8nFfD30K8ohFGs/LkRU9HLn2jcOT+2xHLkGBYs1FPxrTtYygL5srZUSDVp3V/xBE76LCzwxENkoEMXSMCTcWBUQtj3UYb7YVRFrKZ0UwmHJvJwAZt0NnfveeVARFvP/6bzfPNVNCsU8tHP0cTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lIGXO0ECkJsuiXtbyZ2MoeTdAEXI4vf2LISZ01uCZQg=;
 b=Ww3wNN0y3j2S32wOMX8m7tlSjA11j1JSnSyFJqPhzjq27B0D16xukAm5Em/AEp4mFvqhrmlWKy6SixdCdW0eE3wDW1A5ONFlwV+SUDl1KXeHCgjeBsSZsbpeNadIAkbyqdXHtP3WQ9NZZgOKHskXzMTzo/bULp7MihuMRnenUOyCQm+2UdvpRVoJxVULbO3NBlUlorUwOPqk9jqi3i0ytQegNbTLlL6i1kkrPvgwvsPy18maHRag9aIdWGIvj0foq/0Oub4HklhMgOKTRwewHeKJG0avUQ9h5+oEWii6qt07w9qcmVDrmETd31tIoI7nUdu/bHwRojQ4dOpNH87aBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.22; Mon, 20 Mar
 2023 18:25:18 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::2629:fb12:6221:3745]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::2629:fb12:6221:3745%5]) with mapi id 15.20.6178.037; Mon, 20 Mar 2023
 18:25:18 +0000
Date: Mon, 20 Mar 2023 11:25:16 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Message-ID: <20230320182516.7ccvszgzxcnu7s2t@ldmartin-desk2.jf.intel.com>
X-Patchwork-Hint: comment
References: <20230316111335.66915-1-mika.kahola@intel.com>
 <20230316111335.66915-2-mika.kahola@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230316111335.66915-2-mika.kahola@intel.com>
X-ClientProxiedBy: SJ0PR05CA0110.namprd05.prod.outlook.com
 (2603:10b6:a03:334::25) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH0PR11MB5949:EE_
X-MS-Office365-Filtering-Correlation-Id: 047662cb-6242-4888-e70d-08db297074f7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TVM0RGxyTD+LInMjp8N+OUTEZbBtyL0QkD/EUtiAjJFR4fK0okl+aY77WrGJ88cODXeQCPI00ziXSzBCQqPwcyywhx8zbmLcyDSDpRdgCsBenmX/1/+rnrgAm4su7zvCChIvzVsYx8iB3t7w6EsQoeU+WEhatQVTr3wbnSwNxSI3PqVwG5quWVi6bUzuA/XowQ/U3b6P5UWTosjBX6rFxSMlnpQwbNUXskGU2EaDXBll8Dqa+jHWeQALVItl3in9peGclB01uvMMQvrgLOIXeHo9jdnNqRzBdzUd/IrWFqjgi8tzfRiNAKX0C6vgjbt/R0Ha3NBEhIaxQDY28DffYN4jMNF4IR+n05P5qjlFYs1CY++nwkAFvl9ep2vFEL0R4GzStaUkNSZ8GmztEdKTXV5HxiXXitloLzzMMq7xznGTYbliAU/y57yBuamsGlPKO3JzaGWNyj3g5pDRlOFnqbCAAr1UGYUde9J/oSmTnaPSg+/gvWJyfGUQ1DfbyOS8XItqXODMHdY6vRIi4tbWtzYFNxc68WJdhh5NkEySyF2FokmtfxEItfGtu93q1x1tbl/RjofeznkoESm0Qh3sMOsjzfxv0ytMotEkM2dEZCUvq0FtELqKZgzne9dCQPBwVgB3V3UO0le16NiePsUm2Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(396003)(39860400002)(376002)(366004)(346002)(451199018)(83380400001)(82960400001)(6512007)(1076003)(8676002)(41300700001)(66476007)(5660300002)(6862004)(478600001)(186003)(2906002)(6506007)(6486002)(66946007)(4326008)(66556008)(86362001)(8936002)(26005)(316002)(6636002)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MvpN1PO9gtOVH6f9glZ2rhI1SArsZ3iNtc9fBBFgxIB7Tot3czVn77OwQD9y?=
 =?us-ascii?Q?pVblEE2fP0B9Za5k0ammTsDzo0JjkUGqH1y+uDxuihlOjNHVMaTIOI+flkTM?=
 =?us-ascii?Q?fYhQvQjkzdRQvWXMwdeFvJX85hmvOiGmTzpaIIpXz8n4fngoxP6RQkwkCanh?=
 =?us-ascii?Q?HYuv4zFnTmoxoMeZLAiCi7kvr/R1C9KZcfbFbUtYKp0j0rh3mOPbeiaCRITv?=
 =?us-ascii?Q?HrltWSLFi9Btt50DGAs70DVzx6hMsFzoMO5a0HetJwRDXvajPNDc3OHErSkD?=
 =?us-ascii?Q?B2LEIk6G/EkyX93LlqLnKaQj4uo3HyKm/O62bU9mAIQY/Zd+c1pyl9/71psJ?=
 =?us-ascii?Q?GcGuSqgwjI/tJe1Nvn38fJr5D0prWRqvA8EukaRs5VEbbhCvq0IPvvEvE4Xz?=
 =?us-ascii?Q?wWFYKrFCmJBl8VOBx3fyOBP03Do/e7BA7FMvIYHjJnqTfdsa07GchmCNlbKQ?=
 =?us-ascii?Q?NMAdbXUcxU4xWYK/bED2DyJVLM24VqttGWtqFLCBWRsnmqYfzZ6ASxjp85gS?=
 =?us-ascii?Q?E6XuuJvjR8fKnpGzT8MM5P1gtjdMDT6AYTAUI6/eyvehja85qfqs2zREZKia?=
 =?us-ascii?Q?qPLB26VZsMQwSFS5B1VycbXAoINLdhoL4n/CLAiYfLG2Bpj8OUTER5A75sTs?=
 =?us-ascii?Q?xNG1dStzO0lJqYd8cIc6l1ijWHPXnaR7CxwyeEvC+ulYooFOoQd2pxpYpcWO?=
 =?us-ascii?Q?i0Wv8pJmxATnzUfVCwxvaKtCq4D+QeUKh2CWInabU+QyZk2UXnKlgWA/vYjI?=
 =?us-ascii?Q?RMNPlt6LqXAUTQbIsx7V17RLsMljxt08bckGrTux/1nRyC0P9Gl2yab+M4nl?=
 =?us-ascii?Q?v6Nla3nJ8lX1afos08OHW+PHXhpA7kiHSiwyCPh8eJROs4xo0sLmKCqlT5Cy?=
 =?us-ascii?Q?8SLYZ88eK3EbAZkqBvfpvLZPeKhTXgoG0tWlTguR1M9q720IbgBdfXR66fIJ?=
 =?us-ascii?Q?a/KEQy/7Bzfl8Qudhp2N9Uj6oZEgxdVAa0WkcUKHULSUy2oIX9ZdeJYoANlH?=
 =?us-ascii?Q?hVrdyxi+PPMhqoQBmPyFQic6C9JNJ8DWYgTWYgvZ9E5KJ9PxCoDdSkMN9Qoc?=
 =?us-ascii?Q?eN9w2g1VfXTWhdQrvR9ZkNvVZUHrFm8Bo9z+gv1sidtcCK5dIqO9AKa9GmkF?=
 =?us-ascii?Q?Ak0oUkELGpZFt9I4tbnLQTEIibjcfhDfjLqCFbkXD2jBaHtLxCfLB/hP4pr8?=
 =?us-ascii?Q?q6nwkp/W+VVCADNxvwXLvsIj4XHj/SXMrG3NmY3iftpLBuQk1Eq7i4PpOd0x?=
 =?us-ascii?Q?FwUsyjFBeqW/mfKiFtquUIB7by0gsl1Xsw35lRprzshfdMZAJ+vDl+VRNnXV?=
 =?us-ascii?Q?UtzgV+hXXOBaXjXBeraOL6PL/N8qHDf7BNvBoRgQ9cZGbUoyN7LiTiY2jzdt?=
 =?us-ascii?Q?YG9IxbNHwPdUq8OXKegvzlIlmK5Vumyxlrswto1cZFWmCryQlgfGaQAVJ9X8?=
 =?us-ascii?Q?sC38ziwCUZlYKSBFSd5RQ7Qzra1i4aeQHEHKVKblE0EiyFB8Oluuoq8lokO2?=
 =?us-ascii?Q?540wL1zb+xwJRNb4QG0AZevq69I1HCmKSdB3eg3P63kxGXBpNDlXwbF83A7e?=
 =?us-ascii?Q?6f0nXmFJ7goqgE8gwhFaaLO2li7/OTUExlP74aRwFYPB29MLuYY0VEI9BEdm?=
 =?us-ascii?Q?iw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 047662cb-6242-4888-e70d-08db297074f7
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2023 18:25:18.1036 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i8Zj7P22IYobjR2udS4yfzekzMq3f9ouYvk2d8dD4NY5Vg1IbWa+Yl4boBwHX7SfKY6HpI0rYQOBLV0qFRB65mwaXzv6dzRM7v6ej9IvbPI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5949
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 01/22] drm/i915/mtl: Initial DDI port
 setup
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 16, 2023 at 01:13:14PM +0200, Mika Kahola wrote:
>From: Clint Taylor <clinton.a.taylor@intel.com>
>
>Initialize c10 combo phy ports. TODO Type-C ports.


>
>Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>

^ trailing line here, so it doesn't show up as a git trailer

>Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>

As mentioned by RK previously, it doesn't make much sense to have this
as patch 1 in this series. The whole argument for having this patch with
a TODO like this is: "ok, everything needed for enabling the combo
ports, that use c10 phys is ready, we can enable the first 2 ports ahead
of having functional TC ports that use C20".  This is not it. In this
same series we have patches enabling missing parts of c10. And in
another series we still have the hdmi/DP initialization sequences.

I understand there's a chicken and egg situation and the whole MTL
device is under force_probe to avoid bigger problems. However I wish we
would go ahead and prepare the patches in an order that made logical
sense for whom will be checking the log ~2 years from now.

Let's reword this commit message with:

	Initialization sequences and C10 phy are in place to be able to enable
	the first 2 ports of MTL. The other ports use C20 phy that still need
	to be properly added. Enable the first ports for now, keeping a TODO
	comment about the others.

... and move it after that statement is true. With that:
	
	Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/display/intel_display.c | 6 +++++-
> 1 file changed, 5 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>index 410c84fd905c..1ac05dc68db5 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -7832,7 +7832,11 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
> 	if (!HAS_DISPLAY(dev_priv))
> 		return;
>
>-	if (IS_DG2(dev_priv)) {
>+	if (IS_METEORLAKE(dev_priv)) {
>+		/* TODO: initialize TC ports as well */
>+		intel_ddi_init(dev_priv, PORT_A);
>+		intel_ddi_init(dev_priv, PORT_B);
>+	} else if (IS_DG2(dev_priv)) {
> 		intel_ddi_init(dev_priv, PORT_A);
> 		intel_ddi_init(dev_priv, PORT_B);
> 		intel_ddi_init(dev_priv, PORT_C);
>-- 
>2.34.1
>
