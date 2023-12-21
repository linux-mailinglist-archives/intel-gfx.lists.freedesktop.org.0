Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C1B81BBAF
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Dec 2023 17:16:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8FA810E0F5;
	Thu, 21 Dec 2023 16:16:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1371A10E0F5
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Dec 2023 16:16:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703175364; x=1734711364;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=thyBejatVAPCaNNT8BCDCJelNbup7LDdf8EFJFTrmMg=;
 b=j+ImlyQnCeppQ2kYttxFqUqK6ExtRY6P45TDTM7/o/eZjFlV1l4W2W38
 Db1lP3NU3RXfW0FcTfbkIE1ib5/QypORzydTH1mnUzoEnCBylc3hzBWux
 0AL3gfvJcYMO6y/G4A2VFdR87wwd8eRN/W27h4kEGesJz/zaUPRLJjkKg
 tgZVXYX+1T2kqaH7hCptVXp0i7gz1w/IV7TpIjCB6lOhHk+N4NoaBXlxy
 moVcxuOX3VHtudGlTRdHbGZ6/b+ITBoDAMhabahoGo9VMUEmniWp1ZHCI
 RuqJqMi3d+4oZAZagXQyALLwf9YwbfiM5gsM+45nP0T04rAQ5YQpugNBw w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10931"; a="427147666"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; d="scan'208";a="427147666"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2023 08:16:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10931"; a="949968215"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; d="scan'208";a="949968215"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Dec 2023 08:16:03 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 21 Dec 2023 08:16:02 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 21 Dec 2023 08:16:02 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 21 Dec 2023 08:16:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O0fbgAeWXAYKO7OCmsTnrYA6tOcQw1VJW8Gvm46NHg3gNU3HUSOlvsTigSgfhYx+9gw1ESKXi8ayeXDodT0zLzmLrQN63jwKgT3PZmOejkMKEuKl+szMEdyR2yD/leLcCF3k28ylCd+ll9Nn0Ay85cUWLswygL10P2U4AQ/frIT6kqhkpqvFLaZUNl73+x3nlJ+fQ0Eju0U3iDS7L4EMtRBT+Qsk/FkZ92P+ldbbBAzAJcPhgsV9k171Cp+sBbR8r+4VKai26fXtuFErFyfhZiUQ/CJaUfh8/VotdjAOgLtH/yqb/eot5IlBkBcoFV8uMaYg7pUjtT7/C/KqE2HWRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RhOBtJFzSK836wpq3pF6PAY7Y5VS3iN1qESg5vwetgA=;
 b=Dl/VpSNxIax1lxRK+dplE4WOH5NlM39ngXegcKDzfHakHAyXdvlb1Q74b5FwJlt0JCLYw3eA6WZhBUbrF8lkkFfATUKh3uEYr190ZyO/jstrwOUrhcmT6/QixXHROdaX1XLFBQbAT3ZTRlAuGCbDNs+FtpJaXXDnfH1D6rO6Ws0FWYuBJU8JHSkr5MqnHD8RpYEtjZZs9DWhC5me9/EALQ01RAf0HiTbaswnYnvXot/HXGL85Uemkyn9Qw11vaQT6vFjrNDGNrcNU/R+EVmjMGQ6Er9sa+QGo4h3gjUnDda03tZ4RL81ZSuzUXx68jO6s161EmADCijed6Ba/BBljg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DM4PR11MB5994.namprd11.prod.outlook.com (2603:10b6:8:5d::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.18; Thu, 21 Dec
 2023 16:15:58 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::48d6:d63b:c2a0:e07]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::48d6:d63b:c2a0:e07%3]) with mapi id 15.20.7113.016; Thu, 21 Dec 2023
 16:15:58 +0000
Date: Thu, 21 Dec 2023 08:15:56 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Haridhar Kalvala <haridhar.kalvala@intel.com>
Subject: Re: [PATCH v1 2/3] drm/i915/xelpg: Extend driver code of Xe_LPG to
 Xe_LPG+
Message-ID: <20231221161556.GM1327160@mdroper-desk1.amr.corp.intel.com>
References: <20231221143222.1729450-1-haridhar.kalvala@intel.com>
 <20231221143222.1729450-3-haridhar.kalvala@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231221143222.1729450-3-haridhar.kalvala@intel.com>
X-ClientProxiedBy: BY5PR20CA0035.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::48) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DM4PR11MB5994:EE_
X-MS-Office365-Filtering-Correlation-Id: 69e65e24-141f-4aec-acd4-08dc02401dcb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tCE5Mb3Ohp5sgsRM0R/JayJmnTJlnhbCAeI7lRxuB9ng4kFpUemAI1QqeAmbUCf4cMhlhCl4Jdz6Jj2M4rT7YMjV1+LIE0Tvi/vQJMUlT3/4kS2Tj3ERcEmi63qIwalBb2WbPFBI4T8WjOYuyJ7BBW6p2G0QXYN1rX3CfzZdRBTt/pprj40jlKXbbfXDMNCnGi14JkRPvi1TndB/2/PQsSo+AA3VmAH0byswdTi7O26401QCjrjYW5sx/Rp73iv/d/rvPSA9uwQi65lrVyvYhwZEJX4LvcbaWCJwzTBqaGWZrtNRGMjFbbWLgXkIxiFwnzmgUg/RXXUh6eAasWFoshLwu1uQSMtxExx2It74OONc8sMC6gTpDaIaDoms6OehezKWYkdKnNt3l2r9wje9LxcU118SV/YucdmMt5IMCKCIyihK5jZgFeJt80D39qMrbMfGDxJclG6H8pFldH7nQmtp+fSfQGjLU9fbVcU00w+OJXFgSsAmFai+doDvn2L/DxdMc+t4Dmf75vuUMEyYnPdwRWv988HUQYps/33ltXCFJqhGuLUTOEPbqEQM1qbf
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(346002)(366004)(136003)(396003)(230922051799003)(1800799012)(451199024)(186009)(64100799003)(6512007)(26005)(5660300002)(66556008)(66476007)(6636002)(66946007)(6486002)(38100700002)(478600001)(82960400001)(6506007)(1076003)(4326008)(316002)(107886003)(6862004)(86362001)(41300700001)(8676002)(83380400001)(33656002)(2906002)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Ls/bM5s+QhiPk7jjAJYbS5Co2Z6YqB1+tzXSD34J4FBquXdbF1EpVFRm46Pn?=
 =?us-ascii?Q?kHVmWL/oP0e9rd30JbRYp00L7VwKTbyUVoqIOLE95w3pnaWQ3L3uI3UjBrgu?=
 =?us-ascii?Q?ge48sowAUPZZvuQIqVitViKWrZZcd39uamP0yjeU+EIZpALiaQxcPdmwE1rJ?=
 =?us-ascii?Q?6fxGOx9gCPHc/9ed2O7MVP5UPR8xzCIrfKrTrLrkDQhdcri2zPVhNJC5INAl?=
 =?us-ascii?Q?oTf2ffBppBIyXCDX2iznHoSs0J5LIATKDOb3O7WiRaCWlqd3k0THdQh9mxeL?=
 =?us-ascii?Q?lOJz+uKfXleToKNjVAhE5YI0PPgHzIsFiGu06qXX7i4LJgUeZ4btQIbwGoVR?=
 =?us-ascii?Q?oHlrsbNr3ZWn5N0A+z7MXFCEKyvseF4C3fHDBYqPiGdN/QU25U6WI9yHjDr9?=
 =?us-ascii?Q?N19JiaKVJXoqUeU3kraOdPlPx4cMr79LuMUTW7nf3dO/zxrSeQ9DQsN7IdjJ?=
 =?us-ascii?Q?Jy5KimIbqfBgF8NW3jT8XHYuJkMu0l8aDcrUiAGvTyMIBj/a4Z5ZJM9slg24?=
 =?us-ascii?Q?QkHEkBc1zPuISRlpnLsLLJ1pcCwjWzseu/78PBcw7/Z60PCsrvF+gTe/bMHF?=
 =?us-ascii?Q?8GFjR42HxkPvOUHTJZpTVzXYd7jjbGiifoYJbKlOCCVHXsvppsgybfF9wgH0?=
 =?us-ascii?Q?uSc89nLrlB8pAmKoOvSaEaZDngc7FjTpdunQuAbehzrgywNH1yp77bSl/Knz?=
 =?us-ascii?Q?0YcaL2eezSGhd5bafERmXpBReBI5QHdqOO9/PjklAImXVxbGydgKc6M7AAFj?=
 =?us-ascii?Q?lMgjtV4O9G25ps5NkNWRjCq/mrPz+lwahP1hzSfOLoxsxoly4FnjmxWirQcu?=
 =?us-ascii?Q?vlwI26DRGh9PFR8bfUhYBbj3HbEztRKiWUXTEY0YqqwNYDikUhEUVtGCltuh?=
 =?us-ascii?Q?KXgjLABUCdKVTGezH3oIBuEc8Po2rEQu6Zqp0+f81r4T77s+pUMGDcb0phnm?=
 =?us-ascii?Q?5qN5YplpLiNZFL2Pk0HLal8OtOOP3+xkpw0DZwqu5li2K7ManULjdTuImcT0?=
 =?us-ascii?Q?ReElxeuQVMqGW5tERvsMkoqLV7s7fgNT/eQuabLbry997bIr8i2AQn/sNf4+?=
 =?us-ascii?Q?HzlLxn77dr/6SnphAQwKi76MWbI06bGozw3s8F82q9lslNagZBi60csoV0tx?=
 =?us-ascii?Q?EEqu+Uyx8BQeyy9nfzoRcJziaqt14NguSywM2dMLAVwu3Tyo6zRnNQW+Xm7H?=
 =?us-ascii?Q?X9sE7IVe3x4F1NDyoRsekttYmC1UXCqxCH/unb6BX4KrZLNuoVgYTYo3Wz73?=
 =?us-ascii?Q?fKYPkbxskbnW7T17saNmP+aEtHmrWBm6O4CPEKxHKM3nY2mTwmadre52ASZ1?=
 =?us-ascii?Q?JRORBZFhSNoFyQ4W97vvB+NAp965c7PTKF0IMFLDzR/9rUQp/yJsKrR0yUAG?=
 =?us-ascii?Q?W468ucvWoNWuBeP2grtspJBAsS7r8C91/s8h8C1HNRQEal+m1tim9gkniPjg?=
 =?us-ascii?Q?Z2rfUf/HhF339eCAuJyrBXbSUh6S9UocCwyHUqG5kXu6lIRK4mkhmBAhdef/?=
 =?us-ascii?Q?Dn5JDm8Mkhr5F5vDZ5wqmdm6bJNO6kI3dlDDkklpqskQriULpWC89hvzcR0p?=
 =?us-ascii?Q?3m1Jov4awOMzjoPe1egrCt9ZC1k4S4YZYUaWPOHL4CMZqKeIa3EPFs4u3uF+?=
 =?us-ascii?Q?Cg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 69e65e24-141f-4aec-acd4-08dc02401dcb
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Dec 2023 16:15:58.1984 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C2SrP3ETuB5kg320CTxiLGaMjqg12xKg4mjvgfuiDakfbVYs1kBJ8YFyObdGg0pJO3TLSjOFSG22eDlDJjTjKi/tujXaNda2WqQXHZNfjSE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5994
X-OriginatorOrg: intel.com
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

On Thu, Dec 21, 2023 at 08:02:21PM +0530, Haridhar Kalvala wrote:
> From: Harish Chegondi <harish.chegondi@intel.com>
> 
> Xe_LPG+ (IP version 12.74) should take the same general code
> paths as Xe_LPG (versions 12.70 and 12.71).
> 
> Xe_LPG+'s workaround list will be handled by the next patch.
> 
> Signed-off-by: Harish Chegondi <harish.chegondi@intel.com>
> Signed-off-by: Haridhar Kalvala <haridhar.kalvala@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c | 3 ++-
>  drivers/gpu/drm/i915/gt/intel_mocs.c      | 2 +-
>  drivers/gpu/drm/i915/gt/intel_rc6.c       | 2 +-
>  drivers/gpu/drm/i915/i915_debugfs.c       | 2 +-
>  4 files changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 40687806d22a..1ade568ffbfa 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1190,7 +1190,8 @@ static int intel_engine_init_tlb_invalidation(struct intel_engine_cs *engine)
>  			num = ARRAY_SIZE(xelpmp_regs);
>  		}
>  	} else {
> -		if (GRAPHICS_VER_FULL(i915) == IP_VER(12, 71) ||
> +		if (GRAPHICS_VER_FULL(i915) == IP_VER(12, 74) ||
> +		    GRAPHICS_VER_FULL(i915) == IP_VER(12, 71) ||
>  		    GRAPHICS_VER_FULL(i915) == IP_VER(12, 70) ||
>  		    GRAPHICS_VER_FULL(i915) == IP_VER(12, 50) ||
>  		    GRAPHICS_VER_FULL(i915) == IP_VER(12, 55)) {
> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
> index 353f93baaca0..25c1023eb5f9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> @@ -495,7 +495,7 @@ static unsigned int get_mocs_settings(struct drm_i915_private *i915,
>  	memset(table, 0, sizeof(struct drm_i915_mocs_table));
>  
>  	table->unused_entries_index = I915_MOCS_PTE;
> -	if (IS_GFX_GT_IP_RANGE(to_gt(i915), IP_VER(12, 70), IP_VER(12, 71))) {
> +	if (IS_GFX_GT_IP_RANGE(to_gt(i915), IP_VER(12, 70), IP_VER(12, 74))) {
>  		table->size = ARRAY_SIZE(mtl_mocs_table);
>  		table->table = mtl_mocs_table;
>  		table->n_entries = MTL_NUM_MOCS_ENTRIES;
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
> index 7090e4be29cb..8f4b3c8af09c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> @@ -123,7 +123,7 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
>  	 * temporary wa and should be removed after fixing real cause
>  	 * of forcewake timeouts.
>  	 */
> -	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71)))
> +	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 74)))
>  		pg_enable =
>  			GEN9_MEDIA_PG_ENABLE |
>  			GEN11_MEDIA_SAMPLER_PG_ENABLE;
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> index db99c2ef66db..990eaa029d9c 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -147,7 +147,7 @@ static const char *i915_cache_level_str(struct drm_i915_gem_object *obj)
>  {
>  	struct drm_i915_private *i915 = obj_to_i915(obj);
>  
> -	if (IS_GFX_GT_IP_RANGE(to_gt(i915), IP_VER(12, 70), IP_VER(12, 71))) {
> +	if (IS_GFX_GT_IP_RANGE(to_gt(i915), IP_VER(12, 70), IP_VER(12, 74))) {
>  		switch (obj->pat_index) {
>  		case 0: return " WB";
>  		case 1: return " WT";
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
