Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4828C6539FA
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Dec 2022 01:01:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8424E10E429;
	Thu, 22 Dec 2022 00:01:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C52ED10E429
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Dec 2022 00:01:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671667307; x=1703203307;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=xz8+xUqY158y2RvWOJaUuG5q2TkJ2En2tIMUc4ReXV4=;
 b=ScmrxV36YwDfxGVCas3jpI8IBRgr6r21VLW5JqY5W+yzlUPdPM5FZ2qY
 pY4amm6PDYcGZHU9FdPYY2NiBKvgmI6TZKXCsBjQH8fKWIzNHUrznvOZn
 0u2YLDOXbUG9xp6FAdnsxxJagFKZqaWPmLiwy1/tt1L1GK25USvxUn9dE
 ESn7s6KBPpN/eYznv7LBfr3vb4IvtbPYq2dQQv/oTKTy8kKW2apKOkJul
 wyL3coJvBPBlzK2u/yJZTGd2Egj/EOhrhMFdDIxxKiMXQqsxu15+wTXGj
 LOc9pmBrfKzC97yHH/OGWNk+TvSYrgCweAaM9/5fi1hAJ0O/2soD+wVI0 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="406241311"
X-IronPort-AV: E=Sophos;i="5.96,263,1665471600"; d="scan'208";a="406241311"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 16:01:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="740355100"
X-IronPort-AV: E=Sophos;i="5.96,263,1665471600"; d="scan'208";a="740355100"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 21 Dec 2022 16:01:31 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 21 Dec 2022 16:01:30 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 21 Dec 2022 16:01:30 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 21 Dec 2022 16:01:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z7UGCcaDfmJmiW3nSwu3nsbsmF10WC7h38TqMSU3L4gIX97pAFOZk+kOJQunPv8IdvKRAwOqoPoJHg9+TEYVv/OZJTnCTDk/hFFaPCPRGIYFMBEoKn2WMxLf6DhyEohDEzgSMmwC5kEJZElbNxydspIDkAPZt33QKOvo5jkoLlJfMDPJkXAL2J25QqzXNFmUq7b+FuZUBaJDnidY1fD+EytTlScWZxylNiIPx6ErX7lemXx73DOU6CBdKKVF5OtSJ4tfL/EZ2nDgq/b2Xo1hJRZ6uYoYfRBoymp1XTHC7lJBvDuJ2ch++pRCW/k2+ychYZonZ+D8RbNn91Rs2JKkBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ham9xyKBBZ2TuQOPkO+AVk7SKp8BtSIPRMTkMT4gdzA=;
 b=hp+OziOu6Tr754sXrdshVL67Go0bICaEjoqKjSic2oFViN5xA5z+joFhrRptCk83OEtciW64wXMvXlY38s7E3+hIdgUU90deerva5ocMeEZ5raAhFGQhljZjMMOFt24IQeqSrMr5Q70SI0t8onnK+i1W5A+RFwB+OETl4yNsceXtZuCWE/GzAgGRfvyYucvc9e5Ub7ffPlEqZ+Sk60gisbvkVznz4WNyYvSZDlQ2HO4ulBq49rkzRheg9Or2EIths2KPSuEixbBP/2itx8ZPYh3OyDTrXU9VMF/v9kU/WaAnf/6cCVmd3lb/pDBn0ryarxre0t4KwdUDV2eB+9Ttcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MN0PR11MB6134.namprd11.prod.outlook.com (2603:10b6:208:3ca::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Thu, 22 Dec
 2022 00:01:28 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::22:fdef:cea5:e8f3]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::22:fdef:cea5:e8f3%3]) with mapi id 15.20.5924.016; Thu, 22 Dec 2022
 00:01:28 +0000
Date: Wed, 21 Dec 2022 16:01:25 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <20221222000125.5uygh3t6m466ykbu@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20221201041019.533830-1-ankit.k.nautiyal@intel.com>
 <20221207145436.1510625-1-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20221207145436.1510625-1-ankit.k.nautiyal@intel.com>
X-ClientProxiedBy: SJ0PR03CA0093.namprd03.prod.outlook.com
 (2603:10b6:a03:333::8) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|MN0PR11MB6134:EE_
X-MS-Office365-Filtering-Correlation-Id: 0dcc2d6a-bd2e-4a8a-c8c6-08dae3afac96
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8OHwu+CmqWp5Y5gNw4bg1ZKXBbmaE8veuBga6jJaQaiH5v//Ha7G3uHVh9xjLh/LV7g0dCFAf9IYpp5hj/EJctoNGQd3MaYCZ2bK8T2fxQBP4J1okjmTmcKyqFPhqnkVZDT2+cLO9Co+6hA77q0tlTtGMgXLgg8rvrdGMx/Oq0yALhTf33cK3JJsPJIL8Iwahfpf1B/zC6KRhcTDlYaN49eVVe0PLs72pySOjaiO1LIZa7Wh0/vF/3yCvas9SyHCAccZJIkWBNzQ0d0+fgBv+OUblh97CIwf4OLnV4/jOrPDqQF3d0XtYhEF7RfQGR+WogcGshMBFbUC1x9wFmbeavF/+YrvGkEyGvT5YL8CgDrs2tmczoUR05HGFyuDfgiKGieooWN6aRwE9Editx8cAbmtBmGFiy9CyK9zo7bIbPCKWEJbDTqENdyUxFwcg/GH7F/XxtBdNSxS3DUdDhi2U3IugPJZT448L/0bEsoy1jOj+xFgj1ynEhnp/iswNQ20anPaqaBACaHQc2PTRTalSyue1kJmNPY+5mRtizBlDVDdZvUVBawRuHi5idpU4gQfIBpjuL+i2NEgln0QIfe9wYtrPP6g1cvvEu3NTRLHUO9wCEL1WLRQ/D7lh7wl0nk5EdVtqKeu4wrjCdqoU85XkA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(346002)(136003)(376002)(366004)(451199015)(1076003)(82960400001)(66556008)(66476007)(38100700002)(66946007)(8676002)(4326008)(41300700001)(6666004)(6862004)(2906002)(8936002)(86362001)(5660300002)(6486002)(83380400001)(316002)(6636002)(6506007)(36756003)(6512007)(478600001)(186003)(9686003)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?SmPWFwzieL5JlTXc1bXtjGXMZDFx0Z9PZQSn9xX1sTqT21rm/AqC+VkQWfw9?=
 =?us-ascii?Q?K3eAb6tY+Y3D00jbVVFXxXUoi3UxS5kP1oEao/OIO6/AUkeuyKkgPhYSJnNY?=
 =?us-ascii?Q?9lXBGMrqz41DsD/s03AHNDmyPZPwd3193Lg3b0oet0f1llqpd2XJP9D4u+8l?=
 =?us-ascii?Q?WMQJhGp8Zg/7PAxW1+sMoCLmTOBmFhRqZnUUnTZOd9NGNaMEEI//h4VdtWp4?=
 =?us-ascii?Q?UiiQSe3N5uWMNSoYomGpPxknO9XWBBUqC1b3dnsRONJdBWf/2SsJb6iLXvt0?=
 =?us-ascii?Q?ZswXPyyVj3T/Z2wZLSyHmTtjjkfRFaA70708+mbU8n1N97+Y/Gq0N6i4MvuB?=
 =?us-ascii?Q?7daLIZIh8Uz7o4VDEfjT/CY4/cG19WbrXabyrRc2T3e4hZ6K0FLMIb81Otaq?=
 =?us-ascii?Q?nIyW9GFQPM8sEql4XakCkpDbbqrDRI33m5zdpbXlroLYciODZKoNOV1UsPJE?=
 =?us-ascii?Q?xLRfWxrWpf2k04/meIPWPJZst+gZDKSrJuMboET4Rhls7ru9xbRyFmBAmbvI?=
 =?us-ascii?Q?ItxWWmm1STtednXUWpwRa2wsjzCJ0LBk8evsXo1dM3PXKxbHSQUAPyS5CVbm?=
 =?us-ascii?Q?5j3K1x5YBmuSkIHmLsYebEOAOeUm8DDUaxdzKPQ4sV95X2u1LNn6tufTEP0Q?=
 =?us-ascii?Q?yzlv/q/ZlJ0sqbcfRhRy2+YM2VHrLCmJvsFyiqpUeaMxbNswIHw1t6vOSaDV?=
 =?us-ascii?Q?2s/JV4eXEb+LItg4xVsXyK2tc7i/+cxeSxvJ0SqMrM3x+tr2Hc+vNOo6c7ri?=
 =?us-ascii?Q?K9+R9P9edoj3cDyato020vU1xQN1OFbLL4FmfbrYOEP0mj44CnFY6i3PyZVo?=
 =?us-ascii?Q?BrrL4iKG+xba6gA0q2klCRHobAExfPgPQZOxG/aV3pP3ZR3o7FndLf3xbZbP?=
 =?us-ascii?Q?flmO+iPP0Am0wKoU5etgJQ+ZTQB4DA0W1TKZDxTSnPTMj4yLFHPsTl0XohgY?=
 =?us-ascii?Q?5HspyDMpyEBOei2JqH8pUwhD8ETFnVBsPOZPDeAZILxpGK/8hDz9HHlGERP8?=
 =?us-ascii?Q?Y5PfmXotVuvibdvUxQIMGYEzFzeAroyok3K8RNSl3B52+APrOskdC99FH2CV?=
 =?us-ascii?Q?r93tBYqga6spODh/9fhzAP4SeMv02hVuqbDm+pc9Wi6eO7rWR93UOL4qfJVE?=
 =?us-ascii?Q?ZhBd5tZd8ttuN+WAxdHri7u8wRmbnPyZU3+MtqFccZEIMPu5wLlesocAQe5X?=
 =?us-ascii?Q?1oQQSbuJTBgVJ/yTLDSqHhjGimWmlFdwRy0JpDsuHT1Ijk0i2/pVawjGaZTs?=
 =?us-ascii?Q?wbmi+R7Sa6t3vbHUrT0uF2UU7AM1nFbXEMhbyugiTDCku3+nOSEMrkgbjRcL?=
 =?us-ascii?Q?0rQ+XnI4lyOQrMxpz/WEmYhp2HlrW+RK4yZGIqtYMhxmDw41jyHZiV1rADtz?=
 =?us-ascii?Q?E2qDqi76fsDDxkqp3aIE7SQcpdTp70AyrfugijpAiFh2Efi+29z6lcfPrsxo?=
 =?us-ascii?Q?Ycxb9Y9QlPi4sgmhsSauOsd9Ov8VOof4WA02nq+jvPN3tJ3ia98jyYVhcFlO?=
 =?us-ascii?Q?c/A9VAR7GkNuA7e1t0+CnUT1Be7TWte0ohM8/3h5nWI70qgG1nRza5QG8g0h?=
 =?us-ascii?Q?6dmPlzH2s+Sauy9fO1i/HKPwqHbD7MQKxrbQIuDU7Z127pcNYhX1RFrJ7aWz?=
 =?us-ascii?Q?Ng=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0dcc2d6a-bd2e-4a8a-c8c6-08dae3afac96
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2022 00:01:28.3659 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yr0Sy5GjLgVia9yr3hY8ZpwDA5EHmFaeMMNxVKF+65ewWSwtqb2RrHv+QJYbEcUteYI/bu6ldQFFDEwfn5bMMEBK8DpmeFDG10yFsPFJdVs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6134
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/2] drm/i915/ddi: Align timeout for
 DDI_BUF_CTL active with Bspec
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

On Wed, Dec 07, 2022 at 08:24:36PM +0530, Ankit Nautiyal wrote:
>For Gen12+ wait for 1ms for Combo Phy and 3ms for TC Phy for

description here doesn't match the code as DG2 is also >= 12.
Maybe just mention that the values are following the updated ones in
bspec?


>DDI_BUF_CTL to be active for TC phy. (Bspec:49190)
>
>v2: Minor refactoring for better readability.
>
>v3: Rebased and retained the order of checking platforms. (Imre)
>
>Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>



>---
> drivers/gpu/drm/i915/display/intel_ddi.c | 15 ++++++++++++++-
> 1 file changed, 14 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>index 5f9a2410fc4c..c40302486b0d 100644
>--- a/drivers/gpu/drm/i915/display/intel_ddi.c
>+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>@@ -185,6 +185,8 @@ void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
> static void intel_wait_ddi_buf_active(struct drm_i915_private *dev_priv,
> 				      enum port port)
> {
>+	enum phy phy = intel_port_to_phy(dev_priv, port);
>+	int timeout_us;
> 	int ret;
>
> 	/* Wait > 518 usecs for DDI_BUF_CTL to be non idle */
>@@ -193,8 +195,19 @@ static void intel_wait_ddi_buf_active(struct drm_i915_private *dev_priv,
> 		return;
> 	}
>
>+	if (IS_DG2(dev_priv)) {
>+		timeout_us = 1200;
>+	} else if (DISPLAY_VER(dev_priv) >= 12) {
>+		if (intel_phy_is_tc(dev_priv, phy))
>+			timeout_us = 3000;
>+		else
>+			timeout_us = 1000;

ADL-P should be 500 usec

Lucas De Marchi

>+	} else {
>+		timeout_us = 500;
>+	}
>+
> 	ret = _wait_for(!(intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
>-			  DDI_BUF_IS_IDLE), IS_DG2(dev_priv) ? 1200 : 500, 10, 10);
>+			  DDI_BUF_IS_IDLE), timeout_us, 10, 10);
>
> 	if (ret)
> 		drm_err(&dev_priv->drm, "Timeout waiting for DDI BUF %c to get active\n",
>-- 
>2.25.1
>
