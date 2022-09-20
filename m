Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F575BDDB6
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 09:01:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 225DC10E2ED;
	Tue, 20 Sep 2022 07:01:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD05F10E2ED
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Sep 2022 07:01:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663657304; x=1695193304;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ezbEcUMdfKI1wWcvhmTF+n7i/WHwE49XsSXCcwq/aEQ=;
 b=GZBSLtaVd/WUkT0PBB59mg4C/EMEXK9h+q1yqHkMJsR029tWsLQ7spzP
 4xyQoJ+Lmh7Xk8jAFhGLkgy3T3GZLv+T3PUaYSqanV5Hw9QelCIhTQ2VK
 IqmEyMfcYC5N0J1K5HZsK0gLcpzX0E/dVVdArHDtCRILbqCacMbUYqbqK
 20n7SxgXVFR+XBEzxY6SCAAfP4rO/HPY+Eq9VmwPKRexx7mLvPQf5e0ib
 Wzazr2/1X7kwLGdkuS6qxw3diY/6z+SL1fYVZMwxwdmLzrudrj4oF+NAp
 cO+j/cTxhO3Vk28Ak6RoWuLZeTAnEwBIXEXlBvF3vzKGm5C23kFhm+Gj2 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="325917151"
X-IronPort-AV: E=Sophos;i="5.93,329,1654585200"; d="scan'208";a="325917151"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2022 00:01:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,329,1654585200"; d="scan'208";a="863865313"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 20 Sep 2022 00:01:42 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 20 Sep 2022 00:01:41 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 20 Sep 2022 00:01:40 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 20 Sep 2022 00:01:40 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 20 Sep 2022 00:01:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IOV9nTKdQRayMD4LCkxTcajFZH6Zc6ggsChZ9iXRTmnf39t0nWJUBY3epMLBicEylT8d7udM9m5qRkP3eFnpKPlG6GoOz2WqL5iGX/VHNI5UqIrKvrOwR0ds7gZq0/2xQnUDr/0GNzX+Dje2AcZH7Hx3a1AFSpkwbJMmQ5uosQcLf5/1NN7y7+Na2XIvlslY1G6ZEzNV4IDXbpiQ2dabCT7aDTEpDnCPgsLRyv6GoFuw+8Smf4UWqLYdpAXW9erG9WRkHbuIrlyF6uk9KTMkH0yUpSf1/DOVyG/k3ZrwnPPQUsnHkHhOvydQcLe+U+lESkhbZPfSqMFP5trB1ojxMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BwexowdZkXs/uOXnBDvhnSJK62V7H3aKndWPHI42pFE=;
 b=iZqRoDY8VraorRxRTtEfhd4S+67S3upus4wK5PNVh0e2lORveisr2PDFJ4S5eNsJb5NsT/tDesPgb/WhmobyYX7/7U9LvbJDYFX37wI9tqVp73LAz0sTksKMFh50SpMu0coQV08qIinVtgnadPiMxxTpIRtZlD44/QsuATxkedA1S0FbC/4W/nkNOXChlK/UnElz7b/NZKf+3raTHJcMxZQKof07BdgjH7EHQO0gDqJ6bD2cnZjYh7kglyA1XZ267mugBQtCk1vsgNt5dm31t0HlAo/Ipdn8z61q/x1WEOnmicNtdLFm6r9gdfeIdPedAYzGUCdejvy0vUeZDoHGig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SJ0PR11MB5894.namprd11.prod.outlook.com (2603:10b6:a03:42a::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.21; Tue, 20 Sep
 2022 07:01:39 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7b64:871c:564d:91fa]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7b64:871c:564d:91fa%6]) with mapi id 15.20.5632.019; Tue, 20 Sep 2022
 07:01:38 +0000
Date: Tue, 20 Sep 2022 00:01:36 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <20220920070136.nyhompdd6yvpa65n@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20220919145659.293492-1-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20220919145659.293492-1-gustavo.sousa@intel.com>
X-ClientProxiedBy: SJ0PR03CA0223.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::18) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SJ0PR11MB5894:EE_
X-MS-Office365-Filtering-Correlation-Id: 3f314a8b-9882-46b4-6b8e-08da9ad5f6a8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: T6HVu2kSxtSQDGMD9uM/ibd56ya2hjM1S2fc8GK+xL1GDU1oo24ayzm6lHbJmhbvjBafYr9rdNoKkLLBaJzjAMZU5ic1jLcfqLLAuBjvDPISyC+ed6JKxcubs3R/knPmOp0Wlbd2pVKyM3huoO8Q1JqFW6dRDtl3vCRwV6OnmQ0/qkAD8sXIhR8rIY9C6cfSgMX9JHFHXMrQC/wb2KV4HPkHZjh3lr75b+HlQMEPGXLiA4LWgLSaa939ZkoyE3xEXGWlcx2QNV07w8Y7uFsgTewBMWb+5KM9fOoAV8GYQjzKhsyPau7Knf/UEhbt3boFLGpjIg+v3j3WRiMkA0u44V98P0pDHLxcVcBmBCT/F8rg1NXbk82Jpi0fKQRpKYHCsIQm6CGgpaMrYDwdLgC6VU0Y24glFIZy9fO0MYi7wucAYeoRWyabi6weGJWKwathBDldEaowM8TdQcye+YT3pZz+Rgd+yD1qAv+HbHswCs/vcBk+swYKym8tFCLHBJuejM0BacER2vxEQguKCTKgGiOiXtVK5JQaIoy4fibfB+arngT+CefT5gSXLsLRoAVvi+ctDDLBETDMu+XzXWuEhFtllU/5jB1+RCTdnkp6CZDPckhSKT838+hvS230Z0LTVZv6nvpniYMIxXWNlm/s/TPPZ/UC8mVLrXL1cPJ/QDd5pbjF5KoCO7GbMfJPzC4foPKFVYyQaqxSEHcXQQBhfQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(136003)(366004)(396003)(39860400002)(451199015)(478600001)(36756003)(6486002)(66556008)(66946007)(6636002)(8676002)(4326008)(41300700001)(6506007)(86362001)(66476007)(6862004)(8936002)(26005)(83380400001)(38100700002)(5660300002)(6512007)(82960400001)(9686003)(316002)(186003)(1076003)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lrDuf9OLoWVaXtM+7mmtdRO5PMWUaBcKQqsI7/wFLEQtuNjn+mAWxvw40ILt?=
 =?us-ascii?Q?eQKiTkR8BFQafqRmy2C2uiHPEcMSOlvMm+QVQ4WyOii4msTktXYqS3O9dMUk?=
 =?us-ascii?Q?vVDMlNdFBJNZ9c5gaiB5s/jq50RYwVQNYMIR0YZayfvdSqovKPd+h+HfPMv3?=
 =?us-ascii?Q?CTmOCJkmnjW/PzsqQ3tzxu3NorlRHHf6BRDpiug7KVsA/DOOy883ErPOuU/V?=
 =?us-ascii?Q?arKIxKyg+SarXQOgtjn2F9E3kFHJRPMNf0E0U08Dwf+nD4QKhyL5jAg3HX/C?=
 =?us-ascii?Q?Zm7Tzl70xazR87xHPPxxsOL5yGWJYwY9XvtzO00h9dwN7eCsHMA9e4LhSnCu?=
 =?us-ascii?Q?N6R1eZgi8+4F7Bsp7cCc+i1HOd2xwNWhcAYE+Isv7VfFBKlGTPJZvKY5q0Oa?=
 =?us-ascii?Q?mpeo9He8Wm4PstOAigfbW0uQySn4ZY2K9k3NrD45Wo0F5yk70VgDorEq4vU7?=
 =?us-ascii?Q?0eISUqeL23Y4i4HNQPTik9j4TtY1YYxXE1/XhrG8YxEfteWweaxI/+oGj1ZK?=
 =?us-ascii?Q?K6O/oWuPWQc/WrgjRiHdu0c72YeT8SjwhQZxpr/EHoq9BZOWOcbvH4lEm2nZ?=
 =?us-ascii?Q?lpKPwat/oWN00fLMa/QP5WNJYi8kqgBAR6r6sasfWn96S0/ZSLgj1nundNx8?=
 =?us-ascii?Q?ZNdLRH+AfNhRudH6gRWaQzF3MZ/Fr//dCLG4hSUFdDou2mDthx8IIxSGK5fM?=
 =?us-ascii?Q?7fNndwMNOjKnM8bLTkKmLqM10xCHl85JAxMSio9Hj1yPSrf8kGiFnlGvtton?=
 =?us-ascii?Q?kirDtklGGqzSQtVQwxKbWqac7hsEccFciQbDIAV1HG2MGn0spHsROaa4EVnB?=
 =?us-ascii?Q?hnqpZmk2bl+ccnHhy/N84k97GmUSlzpDEzp8af7xa6s/q+6INBk07nTXfPkW?=
 =?us-ascii?Q?hPrdxJozqzmQf/X3taUneYUBKOWX0huQcioU9w2IKLwaWxjI4U9ukfjxHjsT?=
 =?us-ascii?Q?Cf5pm4tIqpUknli5zOyGbhrZ6lUCAW79ydyAPiOu2i3eReK1KtYKI4HJda10?=
 =?us-ascii?Q?X1qCbhBf3oysMWOBMhhmpfQCluAd3mFzOztxqVX95Dfz87D6XbgrBzG9PNoP?=
 =?us-ascii?Q?mVyv6xTXLhJ/6q9cxqbHTz57W+HevBPUjf2JVgXVfZpzPxnUYS5fpYTQ3lXl?=
 =?us-ascii?Q?hvnmTFB4FUl35H6Lx+kTTFwdae0BWHsT1z71tB8MXXsmBR2XP7APdSM9wSq1?=
 =?us-ascii?Q?ENRxC2i+hWQd9hOZkNWL+das83/iE4ZfprPEf8kG0yS0Wj2rO7gBHOTMr7X9?=
 =?us-ascii?Q?mHA3ak3IwoY3e3goTR2I78RzsqvKOYq8pSftBlIWfuwEuchvK+wzNBsUxP/M?=
 =?us-ascii?Q?lyLWy5l8n3XrkSnKjd0etEHfUC5dm7+xeHa3c8zSN83ILIY6LPnS7y+SBwdN?=
 =?us-ascii?Q?AzdqV/HxhDxeNxJOIf8Deww++L690AI76QOaf40C/XOs2w5V0o5lGoxUDJjt?=
 =?us-ascii?Q?jei5xJV0BG2EUrgsBLyMi+LGr4S7PmULxSOAu1rDW64DKmTpD8OjC20w0900?=
 =?us-ascii?Q?VneKdFnlXqGd8QPbbc5M8Wgf61npOe4VvgqCRe73RTCVkeG2Z0Fbs4zEmSTB?=
 =?us-ascii?Q?LXh4HYWZDUneYdLU7Iwbv+pbTTsZrzp8LAJ9h8riVvpUl0v3iNqB+QInOL+i?=
 =?us-ascii?Q?kA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f314a8b-9882-46b4-6b8e-08da9ad5f6a8
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2022 07:01:38.8340 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b38bJHCny1O3jA37PJMzLS4vn/x/VjBgI8+xYk9Xj0Zz2Pu3OVIGFwsEr28ilF9vZT2Z4gF0iGAiKw/bzYACWe9n2CYlLGFXOzyWpMpnBHI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5894
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Move hotplug inversion logic into
 separate helper
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

On Mon, Sep 19, 2022 at 11:56:59AM -0300, Gustavo Sousa wrote:
>Make the code more readable, which will be more apparent as new
>platforms with different hotplug inversion needs are added.
>
>Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>---
> drivers/gpu/drm/i915/i915_irq.c | 25 ++++++++++++++++---------
> 1 file changed, 16 insertions(+), 9 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
>index de06f293e173..c53d21ae197f 100644
>--- a/drivers/gpu/drm/i915/i915_irq.c
>+++ b/drivers/gpu/drm/i915/i915_irq.c
>@@ -3263,6 +3263,21 @@ static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
> 	spin_unlock_irq(&dev_priv->irq_lock);
> }
>
>+static void setup_hotplug_inversion(struct drm_i915_private *dev_priv)

new users of drm_i915_private should use "i915" as variable name rather
than dev_priv.

other than that,  Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>


Lucas De Marchi

>+{
>+	u32 invert_bits;
>+
>+	if (HAS_PCH_DG1(dev_priv))
>+		invert_bits = INVERT_DDIA_HPD |
>+			      INVERT_DDIB_HPD |
>+			      INVERT_DDIC_HPD |
>+			      INVERT_DDID_HPD;
>+	else
>+		return;
>+
>+	intel_uncore_rmw(&dev_priv->uncore, SOUTH_CHICKEN1, 0, invert_bits);
>+}
>+
> static u32 ibx_hotplug_enables(struct drm_i915_private *i915,
> 			       enum hpd_pin pin)
> {
>@@ -3413,15 +3428,7 @@ static u32 gen11_hotplug_enables(struct drm_i915_private *i915,
>
> static void dg1_hpd_irq_setup(struct drm_i915_private *dev_priv)
> {
>-	u32 val;
>-
>-	val = intel_uncore_read(&dev_priv->uncore, SOUTH_CHICKEN1);
>-	val |= (INVERT_DDIA_HPD |
>-		INVERT_DDIB_HPD |
>-		INVERT_DDIC_HPD |
>-		INVERT_DDID_HPD);
>-	intel_uncore_write(&dev_priv->uncore, SOUTH_CHICKEN1, val);
>-
>+	setup_hotplug_inversion(dev_priv);
> 	icp_hpd_irq_setup(dev_priv);
> }
>
>-- 
>2.37.3
>
