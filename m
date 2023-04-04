Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF7A6D5565
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 02:10:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 861B710E053;
	Tue,  4 Apr 2023 00:10:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D162210E048;
 Tue,  4 Apr 2023 00:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680567019; x=1712103019;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=KoGsE7SoQFs8NcLSh7fYWLHmuklJde1BatUdXO6m/M4=;
 b=Ad/1TMqZPVwsfIXb42fnXkjcJCRdL7KJgj+ECf9Oriln+UoUKXQwitpP
 Pp8tJ4U7dntP18VrKApeV9Nq/B3vNpzbezBm477XEEUPl9fDQzmRgA5vJ
 vx82UFhlKsJlCVZDCyrZ0+Vi1Y1IC+cF7f1bIPqf1bGK3S6faVgq/hZDs
 6sQd957xC/Q1juItzpaa96w6iBJFdlrbShIB7hQrs6RQmLufiwRrDAe9d
 EhmKFFFCIIN6RYsGaXtzrnEwcBPQrdaWzr/+bSkXrwqEw3Q6pUwDxgDij
 CRZiCGlOmBnw0ncvrjesU1xQXOkJmDRkNKTsJ1a91/dHrho4xNMitggDl g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="369857168"
X-IronPort-AV: E=Sophos;i="5.98,316,1673942400"; d="scan'208";a="369857168"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 17:10:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="686156864"
X-IronPort-AV: E=Sophos;i="5.98,316,1673942400"; d="scan'208";a="686156864"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 03 Apr 2023 17:10:18 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 3 Apr 2023 17:10:18 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 3 Apr 2023 17:10:18 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 3 Apr 2023 17:10:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dT1H73FVWLViAtBiUxJ7UB6qtFhjyyZn7G/HzukeI4V7zxg+n4Oypq6kqV8XdvQWOmNVact4ecNV9teAoSQQiYXgwpXsHdxtIWZyGx6aNcF5vOCqPqoawahxXqP5Kw9Z60KzKYmCjKTX2XERAlQewY4/xrifYm3gfyK2EhYt5VbeJ4MpHbGKpQo0z8wQMPS18VJMnsRmUo7y/vXqB512IAcOCtOUsLKpcKi6JGhL9VmvmYHvHy27+Y8OzMMhp72iF/xInYvEI017ahXHE7HaskT0uA40X96Gnbmy8pODR8XQPQ8uUFllY5yy1OT3qvMW9NwF/1R8CFh6HpZ8+Dw5Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pVqa3UAx35DfM6yobCKWLSkiJexXj/D7Xy4i/RKBBOA=;
 b=Swg3uqMf3qFRjgkAWs6XBDOQCU90BUBL4uQM5y4f7UKkdgFfNGfmdd7IhHkY0K8r4Kkzm3o2oy2JZUUw5HaklJ/N3DZVFyseIDAmUouvgsc0SzNMSyZRJ7dA9fiZqBlcTNUTRxdpYP59vkDlAYSjKw+dkqZvJ5RVXHlVdyOHvNJ/QlP+d4FPShLVPNtSv41Lp6NYw/PFfuLhkx+KN+jAIDwo49woVqWWrTrGod0D7jnVMEMDddPLCWPR83gb0AoFUeKam7YvlYvHeHvjY5/CjcUPrHMtzbcZATRMRibqV4BhLKgsVRHk4Z/Vw25sacFAmQ95IjnokpWhZO6xuevkEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by IA1PR11MB7320.namprd11.prod.outlook.com (2603:10b6:208:424::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.33; Tue, 4 Apr
 2023 00:10:13 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::2629:fb12:6221:3745]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::2629:fb12:6221:3745%5]) with mapi id 15.20.6254.033; Tue, 4 Apr 2023
 00:10:13 +0000
Date: Mon, 3 Apr 2023 17:10:10 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20230404001010.pusmwn45ekir2sqh@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20230331102419.521392-1-maarten.lankhorst@linux.intel.com>
 <20230331102419.521392-4-maarten.lankhorst@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230331102419.521392-4-maarten.lankhorst@linux.intel.com>
X-ClientProxiedBy: MW4PR04CA0213.namprd04.prod.outlook.com
 (2603:10b6:303:87::8) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|IA1PR11MB7320:EE_
X-MS-Office365-Filtering-Correlation-Id: de4eab43-83bc-4c62-3570-08db34a0f604
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6SJhat4y3q/rd62c8NRyFyasjOIasKxdXgamqTjwxO2ks8hGo72SXIviwvE0yyJE6wgSu34u+8e5lZkluoehiRn879fvhAqdO5uiZgRQCnjIcZOOeW1Op2cXdexPOv6lp2N0L+oWqWVTftL5dUFK9bv7XpWLe/Mlb3H1AVAhbvBw5mUiR9ArOWIafqEFzGWwBjFYdPLCFoT5MmlLfhpSLmfweTcefUeShp4z2rhQDyNMm/YHTI/8sQt3n62ni8nJ7EiNKr8i48yQUeEb6j2MeYZfdZplcK+LAfmp/KR67PBln3656m3yKOdehGUgYDkBroRlw3NpyeNmfdY4POLxvFeK4tA0tVCOI8rpZNKkfIvoDWoPRsYzCWJCwuQ9dt97r2rwbEKRevo/S4dkbhJNJxrn4dv/XRHLfrplY9ed3WQnsyLm3xLqJ/A6RqiV5gbqxyCnBOdvRRPs5PcryexKQbFuA6E/OqP35dkL8i9p2DC6uT9b0zo5pHwF/R9BxYaNhuc5KGCx2ocLxpq8ZLt/eKCdnjifNr4sDbWkz1UI/qx9gELKaQFZQ46SHlha8bI8
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(376002)(346002)(136003)(366004)(451199021)(86362001)(2906002)(36756003)(6486002)(186003)(83380400001)(6506007)(26005)(1076003)(9686003)(6512007)(6916009)(4326008)(8676002)(66556008)(66476007)(66946007)(82960400001)(5660300002)(41300700001)(38100700002)(478600001)(316002)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/7Sf5RWRIa9nhAnZgwR1TJFtX/PMRPoiliPApr0H6Jm0t6v1hhkLkzpGYx8M?=
 =?us-ascii?Q?io0yVLWoH72W9IqsNzYt8VZYs1s1giihlgSrvlJSjSuFFM1So/vADftQi/P3?=
 =?us-ascii?Q?mtnTexbKfEkI5OlXP6mHczC9aCFPartKmzuBd3zGxVsvP4ZvhofEdpLANRL5?=
 =?us-ascii?Q?P5Fj0kVwwgj0ylyZb5913nQkZjhaxuHYl9+fSIfazviSbRaz+TlhTRkWFlOc?=
 =?us-ascii?Q?mdroCQr1g3rwVb1al8+MwLXcIBsu0I685vKe7Mh4XNj/2F8F+mXNTg0wYMLi?=
 =?us-ascii?Q?GhaNGUk7ejq/pyBDJ+eWJoIlhKpxi/64e5Zx+Cg1Yf6QF2YQFYSWQ9amhClc?=
 =?us-ascii?Q?56WWJ4lyaAJrHNpdKAdIG1Jsai410WX1knHvJFGHoc/ivs6Ti1vZ/+yf66qe?=
 =?us-ascii?Q?Ra1v4RKhOtrnn5SJpfjdvGF+QwqihnTBu1UrkeDkEKH2JdKvHcbR4F/TVVkI?=
 =?us-ascii?Q?D+/fqTYAYTFvDPfGIf45CKOBkQnL0VmwmA1UyiCFD2OVA+mueiDdhWTorXqb?=
 =?us-ascii?Q?q/TvbfT+IaCuk/b+bVmj80tnbj4xTabzU0PZEMp5XvqD60c4RTHE4/QX2hdE?=
 =?us-ascii?Q?nhhRXOr0wCIX+MTYBdbDKSpQpyWv2i55uiikOL157OOwzrTaiDvBG/Rqnyif?=
 =?us-ascii?Q?t8QBwpUIsvlPwHt+86YiutSnaMJxQy2rGLkWqodM9b7OeZR7ATs0nkNmphTP?=
 =?us-ascii?Q?EnWBQVQMrVzXv47OeVoWsEPBGeRADE4R9a5nFZ4vahniROCLxCFeT1djPzjK?=
 =?us-ascii?Q?rLSmbqqiLLU5LxX/AVuxucyzn+ylu6tTSqmSZ9JsDZn+qgFvBD5Dryz8U2wH?=
 =?us-ascii?Q?jj2Oy3ZHx3QTELbFaxA2wSj0vK3WzVtvvlV1M0cVPFL+d72UyvwNaPVsjqkf?=
 =?us-ascii?Q?8cVhjWebaJkvItLN6RdrbsJ0e4WcdG/3n3ge/YXGgRW2FwpGBb25ZF9qnVTj?=
 =?us-ascii?Q?nfvAbRBL79lqz8ato8arYluwx+zY3qpZ/f6t/74BPy9HLxdj3Mx3Y22WklTx?=
 =?us-ascii?Q?5e6Eqy1zdLritC+AKP9K/DcbXLdgGVEkDt6ZXYRrUdaobEjejomubKRm45ma?=
 =?us-ascii?Q?4ydsbIZJM0OJjCYbRkIQv5cMq7BwlJEnNNzdRL9G/uKGKZ/LTV0bONsYeI8J?=
 =?us-ascii?Q?sqw/6olEf7ErpJ8khaH6vZk1C0kD8IDIXBs9mvze7UxoV78Qi06zpQEGtmDp?=
 =?us-ascii?Q?W9D7Jb/pGvUU9ygu13ACLjbT6hTApBvTybbBEq0SMub9dV1om/il/p0skcFg?=
 =?us-ascii?Q?bfhigFeTbv6eEKohsQUQL4IBwJn0HTEHUhQl3eRpta9M9Kon6PBzAfyUhmXM?=
 =?us-ascii?Q?qb33BhIb9MJYUWFlyUZszibAgryCtEMWbyiK+4fWsoH6Iztw87HsXAINptSN?=
 =?us-ascii?Q?Er1eNGqAYeOqWzb/yL+v+al8Gs9Bwc2J5Y3wSLHEeLyzFKdVPisGvHSf/5GR?=
 =?us-ascii?Q?S/XSczie/yTL2XuMezmkYDIT4tFc4KDvW9W2PcKFOatv9avR1NJhDwtdCql3?=
 =?us-ascii?Q?KO/BUbmvbAJmEwDCTXbqDuO9vEVbGWj/SlQGsz6c2NHecL2ZFRTLEWk+tMBV?=
 =?us-ascii?Q?q7L6pcEGD6+3lD9sq+n8VDtoUR8bMZV7aFX9ctjqB5ih8YMiLn+U5AUjSGOr?=
 =?us-ascii?Q?+g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: de4eab43-83bc-4c62-3570-08db34a0f604
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2023 00:10:13.2790 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QOQeMnieOkG/0/d3zB4jC4VzagIDtZ3ghCKaHfYmrQouGmjhdYOjU+cCOxa6rOTYa2D9ZNLdNtl7ccu0Ac7U4ZBFRnd8kDWPojNtCkSKNuk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7320
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915: Fix comparison in intel_dram.
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 31, 2023 at 12:24:16PM +0200, Maarten Lankhorst wrote:
>Gen13 should probably be the same as gen12, not gen11.

there is no such thing as gen13. Please reword commit message to use
graphics version, although here it's probably more related to the
display engine (and hence DISPLAY_VER()). But then the code you are
adding here is probably dead code since 825477e77912 ("drm/i915/mtl:
Obtain SAGV values from MMIO instead of GT pcode mailbox")

If this is fixing anything what exactly is it? Otherwise it'd be more
"extend to next platforms" rather than "Fix".

Lucas De Marchi

>
>Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>Cc: intel-gfx@lists.freedesktop.org
>---
> drivers/gpu/drm/i915/soc/intel_dram.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
>index 9f0651d48d41..9649051ed8ed 100644
>--- a/drivers/gpu/drm/i915/soc/intel_dram.c
>+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
>@@ -548,7 +548,7 @@ static int icl_pcode_read_mem_global_info(struct drm_i915_private *dev_priv)
> 	if (ret)
> 		return ret;
>
>-	if (GRAPHICS_VER(dev_priv) == 12) {
>+	if (GRAPHICS_VER(dev_priv) >= 12) {
> 		switch (val & 0xf) {
> 		case 0:
> 			dram_info->type = INTEL_DRAM_DDR4;
>-- 
>2.34.1
>
