Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C91837E05A3
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 16:35:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D6DA10E170;
	Fri,  3 Nov 2023 15:35:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6D8210E174
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Nov 2023 15:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699025735; x=1730561735;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Z+2NGDMiqEl0YHfg54y9Rrj8skMy2iALrqRoW37zgIY=;
 b=Spp6hSjo6ixJj3rfyQq5+yAbHg2soakc4o/R7taOI5Q89HEzfoWcqrTu
 cCbxnMsFZOzGsGMgoR4Z38VNCivgDD9NNUGWr1pb8J+mAy4JEtcWoZ+UK
 mT7EPnfoWHq42Hkd+tchx688Pg3JZzfQZ8bD3GGHL6Jv59SVKYXVXx1BA
 Lwg+9qJjq7gwW+v8v8j2qqy/yJmCbinuR/DZozzvKSamqjKRcOyaO+0U1
 bBbVBF6LbgQOenDwjCwcsVuVZAiUYbsBFUUQG0so5miP8hcpthNZX/UYd
 6CX3qYdSATSePvzqDK+wd4ONirht0SmIEfj6Op/VFER09tAZs004/R8is A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="420077711"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="420077711"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 08:35:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="905380028"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="905380028"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Nov 2023 08:35:34 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 3 Nov 2023 08:35:34 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 3 Nov 2023 08:35:34 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 3 Nov 2023 08:35:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GwN9fLAaM+HqvIYI5hLIc1ziz79m+ztUNcXD23PF3axmRYxu3KSilnMWWH0qUKSZICtbFTwk3ILQwh8CgLWz15mB+ePYkbKUT4XpVJlKMjAx4BoRkSSvKj6s8uu22o3jZEkLpel/Ke8fbb1I34QQ4QmuJEMx8uWwttgDNAt9D8KWzjFDPkYOr/3A1sO23TEP6ESxhKT6ZF+QwsTmPD50lgOM3Aq9vfyiIibgLj43ykDaLCE1nDZD9ci9RouRo6wmKt28JnUJJs/ZlhBTA+b6RB5Rel8ExhYYwJNrThlEvg0bsFLNA1o/BamrESCfDNuFQ5F1mtkG2/+ZqwMkURe8aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CSQIn+R+RPfYuHXWu1DOFSn1tZjL8fHWSIyI4VTwTZg=;
 b=hGgzoiGe+FtGjYD/nz0H9i2Hi4G033MN5meaVTV4aODtIrY52ouqQgKkzsq0EnwkbnycGJgtLoBRMORrYZnNSpeq2Mhpb8dFksthGUpzqkaOS2e+TjKbs20bKmgF64ZsyBbpLrx5roQFc7vdWotSVALmaLq0eZlPUyxB8upa6FCzDCiaLvaod2fG0t1LMqqrTKvcFujk0G2IAF9IlqXVU1oW/XV3wLBESaI72G88kg+S3Y4/rH5uUhOB2bquvS8vji6qq8qNlGY1p0++J2H4i/s8PIyisby71JpR2a2jHz2uoAkfH/DnKcmMgzCBE159BRVQzkNBhXcDXo9mw1/b/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BL3PR11MB5681.namprd11.prod.outlook.com (2603:10b6:208:33c::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.21; Fri, 3 Nov
 2023 15:35:32 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::dc77:69e0:a3bc:e3e]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::dc77:69e0:a3bc:e3e%6]) with mapi id 15.20.6954.021; Fri, 3 Nov 2023
 15:35:32 +0000
Date: Fri, 3 Nov 2023 11:35:28 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <ZUUTQEGuTWXWXGqg@intel.com>
References: <20231102160644.1279801-1-radhakrishna.sripada@intel.com>
 <169894295379.1757.8337264188078916267@gjsousa-mobl2>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <169894295379.1757.8337264188078916267@gjsousa-mobl2>
X-ClientProxiedBy: BYAPR03CA0020.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::33) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|BL3PR11MB5681:EE_
X-MS-Office365-Filtering-Correlation-Id: 006b30b8-d308-4745-137c-08dbdc8283a7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IRX7KWMimmPq00ZPaZEPVyxPutoTEefZvPdKHgdevlGsyRKW0DEhFPyOLNAekKAFHwNxvhNuPc7G1SsRMbJfSylVytcnx3q2TiOl37MrQ2/NQm412kBg5Y9aYr0re2MKR2cuBYr4t0BM6H35+L+L2KnwI6TNfnWWl3cn4CVFHoKF2lwvo4UqzaMoo/+cU+zALjoMq47hnmOghSOT1qk2UNbT4H4ooYtH82SG+99YWB/QNsaF4LcujOA80tMtklERFrFW4i9+maNMZ4NFwC/nPZcwq40hxncnw+WDCeNxfX9i1a9HgENukROOvFgiRxcVW0KFsbYPrsX1XETHl++qZUPd8et9Kn552gt/353dPaYhtjyScXx/pJR3cYEl1LQkcyVQGluKpMQgPJ5Alw7HtN0WQaWYV2vGSHVvlF0AK77usyjSYo8hS/Q1k6D6UifuOZYI21Be811ZOVWvy8oNNTBPhSipv1lXRK3meAGcmQ1OghfFtnuxdy00b9Ec0FuuTz+wYSIG3L9i26u0chUeCzlVnbNauwykXE/YOANB9qs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(366004)(39860400002)(136003)(376002)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(8936002)(44832011)(8676002)(4326008)(6862004)(37006003)(6636002)(316002)(66556008)(66946007)(66476007)(41300700001)(2616005)(26005)(38100700002)(83380400001)(5660300002)(86362001)(6512007)(6506007)(82960400001)(54906003)(6666004)(966005)(2906002)(36756003)(478600001)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RwubqAXL9WEKmi5vfdXDes500cLbm8c2RQMv59u9WDcfVDDQqQn7+ZiW8LZn?=
 =?us-ascii?Q?Dmifk1N+QfxzJ6866TeaAAn7XBSFbiCG3KEgDIB9RBoy5enBJJo0rDdTV4Zv?=
 =?us-ascii?Q?w9JlnAbm3HcGEGrJTba8kv65+4nNnHvEa+jxzx5Aja2cxFBPP8zTfPdOFKMY?=
 =?us-ascii?Q?weLy884JLgV0Ggy6hU07fuMUzA/RCWOoHkzAcP2wfyU0bwdTgGuQEHgN1yjU?=
 =?us-ascii?Q?bwkKAZBYC4lUo7qJss78Hjs+01fQhvq2y4HHWYQJXp9H6eokt46WZZv1Rt9l?=
 =?us-ascii?Q?ORakcIUevOHYwDUpD8XJ/SbJ5CrlqTg/52mqmjDJHjAs5+Rpq18phmxuOvjL?=
 =?us-ascii?Q?LWVc3FT/K4uvDMNHqaKxIO+Ma6ky2L4XJHNn0ZSFWi3n3/qCPnSeIPT8Up8Z?=
 =?us-ascii?Q?MT6yARsoO4H/PIIHHWT4F1f1K3d9pvqmx33HBMwEx293CJ2FKG1DW2HngExH?=
 =?us-ascii?Q?Xlfos5gsMXXMHBxFxx3S70I+cOi4J36Qu0/lBq5q/WtUdvuFjl3R1QzUhKVV?=
 =?us-ascii?Q?E6dz4rvLlAb4rdC//ypgFWOFuJ+nazyFgn3gY9tth3d+LIIzVTyCwuF39xvq?=
 =?us-ascii?Q?Cr90qLOwTY6/PAZtSNl0LUW1xSY1a+BbP4pG1TKnnBYekoXj/foLp3/8Ss4t?=
 =?us-ascii?Q?cEKuh5SMAABGBoHsaFOXN1jtvOS20X8XXiaEkj4pD1QXz0wdhXhy6fq/EL9I?=
 =?us-ascii?Q?iyXPwxmBcqkfFJMV1SmnH2FxMlQbN1qtn0GvuWzTdabtmJAIcVFlstUPSc6f?=
 =?us-ascii?Q?tL1XEZw2PEBeWu9g1ZgWL4wopDZNOAwRF/8wk3XE7llAsHImNAAat4YhIjh3?=
 =?us-ascii?Q?XonBGKf4mmfwgX1qZz3vuYmPNSWZwTGj3QySN3kZIF8VwrAqEkULOX5oK4XQ?=
 =?us-ascii?Q?2IaXz/G/iVrXldpkYBKrFgBNp7dpZSTX8ytjYA+cKU38pqp1Zxkxnq+EDhGr?=
 =?us-ascii?Q?0SgO7vn+cLMbcgYSOtg8AMue47+V8DPErXwq+T5fvi1Cq8FILpq7Q4+rsVCj?=
 =?us-ascii?Q?Qc6w58nqc1gVvksWrCJOHLiHOQ8Lkscj8xhjcmzlhqBHVFWTfgMAks8q9EBM?=
 =?us-ascii?Q?Wh/VvQi4MWkyp78qaxuac8cAi5OCMPFSLXS7JIUR8X8yeMMDmeOrH1z66ru8?=
 =?us-ascii?Q?7XiXzUqGM4qEpBDFJ+yuvpXwAs9KypfxJuu8oJR32jjsWPrl+TlsarZ3+m+E?=
 =?us-ascii?Q?de0Dro1tmh+ifkujii6aGc5G8S8KcYNk1mD5k+e2di2HHREliEmPiz5JDYKc?=
 =?us-ascii?Q?oJNZAyl3/g/oeHgR5S1PCVpznCbMvzRPa4FdL5sFgtee+ouNVZ5vFGzix/dr?=
 =?us-ascii?Q?0q6MsHpKbBpQTaLrb2yniCWOjEhQzHVaFKvM0nfwye8GAum9rOy5EeVaE9tW?=
 =?us-ascii?Q?+AZ3sBWmWE8wSrvGMNBzcJbpJxNowfReuKoLYHhaWmAn60wwFUIWy44FwrKY?=
 =?us-ascii?Q?PbOIDHxUXp0Ebkww6Ur7VVKxrkGc0jiX0YIHOr8H3BrDCcwBMaXWKsLpQ4ic?=
 =?us-ascii?Q?ncdctSeEYs0Z9JNz/6bWrkbkYUpOiRS86gdcIkiFCZnyVgJmc0+Mn+8+KUS8?=
 =?us-ascii?Q?pXTph6Xs1U/Vg36pwnBmgAiG7sMKRLCwNrYaLuiP?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 006b30b8-d308-4745-137c-08dbdc8283a7
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2023 15:35:32.1520 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h4a5GcPYT1z3d4ugGL9ZIlGIn+v32g8n+WtsgpyR9XiTSTpXB1JmmUaMlREY+KWitxJtE6SnmTZmqawCJWSvZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB5681
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Increase guard pages when
 vt-d is enabled
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
Cc: intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 02, 2023 at 01:35:53PM -0300, Gustavo Sousa wrote:
> Quoting Radhakrishna Sripada (2023-11-02 13:06:44-03:00)
> >Experiments were conducted with different multipliers to VTD_GUARD macro
> >with multiplier of 185 we were observing occasional pipe faults when
> >running kms_cursor_legacy --run-subtest single-bo
> >
> >There could possibly be an underlying issue that is being investigated, for
> >now bump the guard pages for MTL.
> >
> >Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2017
> >Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> >Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
> >Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> >---
> > drivers/gpu/drm/i915/gem/i915_gem_domain.c | 3 +++
> > 1 file changed, 3 insertions(+)
> >
> >diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> >index 3770828f2eaf..b65f84c6bb3f 100644
> >--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> >+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> >@@ -456,6 +456,9 @@ i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
> >         if (intel_scanout_needs_vtd_wa(i915)) {
> >                 unsigned int guard = VTD_GUARD;
> > 
> 
> I remember trying increasing the guard, but with a much smaller multiplier. So
> it turns out that using a much higher value did the "trick".

a much smaller multiplier could mess with the flags range?
it is really hard to understand what of that 'flags' is really those 12 flags
or what is this 'guard' and where that ends up...

> 
> I would add a FIXME comment here to remind us that this is a hack.
> 
> With the FIXME in place,
> 
> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
> 
> >+                if (IS_METEORLAKE(i915))
> >+                        guard *= 200;
> >+
> >                 if (i915_gem_object_is_tiled(obj))
> >                         guard = max(guard,
> >                                     i915_gem_object_get_tile_row_size(obj));
> >-- 
> >2.34.1
> >
