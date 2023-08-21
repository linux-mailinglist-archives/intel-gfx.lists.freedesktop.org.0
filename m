Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57F3D7830EA
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Aug 2023 21:22:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A6EB10E217;
	Mon, 21 Aug 2023 19:22:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1365F10E217
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Aug 2023 19:22:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692645772; x=1724181772;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=ZW7C/gThYDhWHw0B6hRMUmWNLFZBpnFY47YcCKtA1SA=;
 b=JphbJeQzf2CBKmVZoSjCWV8nixClufVwrkpahibNidjqjJP/QlMapHeO
 9RXLN/dO62NdexMtF5SR4+dhmoJ2pUXpyhzrbHw4Ib4CpiyReXmxMXGEV
 wd4lNmLdB+Usgbya5cMzvkU39f3RX66Sg0RQfpDOTtTHXa3e1lDifNOJm
 n5baCw7dJasb/5Hvq4Un6f2srfuh/ioGkCuokcXyMqo1oMSniWsZnUgOE
 fi1JoAn7ApIPKfEE5zZ8NmKQS2vu9bkWub4DRqE/Ob3IMguteIhZCd7n+
 WnFoAAjFz5dOMsLqnvIIfBNoqq77QltBUJroeHix2ZL9Am+l3U7DM8CGV g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="437602882"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="437602882"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 12:22:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="765485075"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="765485075"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 21 Aug 2023 12:22:51 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 12:22:50 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 21 Aug 2023 12:22:50 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 21 Aug 2023 12:22:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SH2M6lGYaHiUgNba2OmS/2uEW89X3jB8gZOd61lOOm/1E5OSD6oetEJVbiFk5E4KVwagBc+2RoM0IjVGtrXjLozTHGakwapm7LwJ4Mhyi19nlJsoG8+5ols9uFKNm9p3Xd3iQja5ZOIXcSFCaobfRcbvGszZ5smDXrUVjEVNjILGUNV2b+4yLHem91KL2Elmy+niT8Q9DNJYZrFz3/E85ZqksGCVzonnFEbgEeyDnk8hC3yKGmOyOXo+wpCrai871zhDWV9xpGpIzGIKwlLVQrjkWhZ09+0zu1yYoBw1YPjCwmlLWtWn254LDJn12MMMjI4v1mt/GFnJq4hNbAz7CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VOU4WGYM+VlER5bMOD33r4OXfunkpzFUsm4A6F9VMWo=;
 b=eS+jqAdw1oodmgD1rlLJvUu2r7NIu/dUB3KzudJ5PHcAtgK7Gi1STXa6/zhxuZk+1nPBjQi1RJjRUXvgqokSrPJEQijIMP9wapcSyJ06C4DD2A78UW6/pDeO1YiPIUB17mObZgjxAMye5Y93/UdtxGWsbo3yiPIRAQLjJDbWQfbtMouicOrtXY9rDTLiTm4XwpTovIRFB8yXC50i/jeAG69AVOcg3P1zSbxWkPLnGZqE0XxL5dMOeJzOsLp6BQ+V1uAa98feedab+XzjoQ7DvCPxsVZ8mz733vt5cuTFYYNfqlPlorUYqaGTKX/6ctnzaBRN/QqRsEKgsCXnfQgH6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SJ0PR11MB6671.namprd11.prod.outlook.com (2603:10b6:a03:44b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.20; Mon, 21 Aug
 2023 19:22:46 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d%7]) with mapi id 15.20.6699.022; Mon, 21 Aug 2023
 19:22:46 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230821180619.650007-20-matthew.d.roper@intel.com>
References: <20230821180619.650007-11-matthew.d.roper@intel.com>
 <20230821180619.650007-20-matthew.d.roper@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Mon, 21 Aug 2023 16:22:41 -0300
Message-ID: <169264576129.6257.11721036403659677008@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR13CA0168.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::23) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SJ0PR11MB6671:EE_
X-MS-Office365-Filtering-Correlation-Id: ad5fe3c0-40c8-4554-bebc-08dba27bffb3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yXRSri7yYjG253ZTaa0tOpPFtGni1GAA2XNFAZt9h2f60+SefvHhrZc6Xbm/cjDnZQW19wZrFg+ABSn7NsFKbwM17rvgjJHZpNmd1rbX6KdKj76HGLH740dEwNW7yFDmWz/y3o8+2LnH7lgn14jHj3frNPNy9k5x1cNv+YCQZC8QduBdb5r65BdoyOBEb/3w/OwhJlr7qe23ef6aFNDwF5gyc2Va7K/HzYV5PN0q9STGmOOrxQCTuN/CIjznZYB9Em+zjH6c+tlyac5NfZd40cU3k2gR/yowAOlqwFSoT0sXr91m/RgtlnNVY/a+ja6O3wMeyQY60UfR5vv+jms2WgdMXiaghBh8PV+oHKuQW0UDbdCkwWrs0F7VdNMCkZM9FwTC89uxvwcO29OxX2WjBt93qLWVO5vTEk1Q+obCMZt8rEwTxj39GwWo7MsqXtI/qjVGt5KBTr5s50TuctBcostaYb6+6jqoRI1aIw/7cK/qtk1oZoSZzYzwVhv5OFcCwwz1Mh5hzqffVkSEs/yQqNvEDZQLZH/pU0GHotBZkH9bv5warUM5XAuQ0qe1tSo4
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(396003)(376002)(136003)(346002)(39860400002)(366004)(186009)(1800799009)(451199024)(66476007)(66556008)(316002)(9686003)(66946007)(6512007)(82960400001)(8676002)(8936002)(107886003)(4326008)(33716001)(41300700001)(478600001)(6666004)(38100700002)(6506007)(6486002)(83380400001)(2906002)(86362001)(44832011)(5660300002)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aG1pNFlhbWU3enZteHpqK0tKUnFIdTdtUExhRmpBWi9jaWdpOEptWmtJdlht?=
 =?utf-8?B?ZWF0ODhkRVB6V3AyYTRiMWhaUjBOUzlqcU1MVGgyZ083T1RzQm5kemdKVis3?=
 =?utf-8?B?aFdxL2s3TUduWnViR2RXQmswTHA4VlNLVVlWaUJLbGJQRWtBait3c1pGdTV4?=
 =?utf-8?B?aVlwMTBmQURHRTh6d0oxQ1pUQ3N6TFhBNGVYNEZZTFZZcDhtWmE2MDg3eVpX?=
 =?utf-8?B?U0IrNFJqVEVNeDQweVN1VkZqcE1rUEUycmpOWHZ3RlVEdndxRmFOOE8zNjFV?=
 =?utf-8?B?bmdrVEpQUURoL3I2MzFqMUdQQk1PUEQwRHUwOVhBUVFsdC9pT1J4MHJ4cWFw?=
 =?utf-8?B?a1pnbjUxRExzUEFLelNQT2pFZHJFUkdWa1lSeHNra1FsdU4yaTNGOVF6YUll?=
 =?utf-8?B?dU1ZN2pjVkJrc3FObFFKc25haGZaMEVLTjZqcWh2cnhJdTBjU2VFS2swZkU4?=
 =?utf-8?B?TGszL3dobmpuVkhpL2VHcmtnMS9wUVdGWUpGQVJBZDh2YjJ5TU02U2JEY3Fp?=
 =?utf-8?B?anlIR0hqWVI3bEUvcDlFWXl6dUVCKzE5V3NBRVA1Qk9DRllJc2ZBYnlISjlz?=
 =?utf-8?B?MjZFWTlLTlVYSlllbzdtUHJ5c1E5bXdWN1F0bnBJdk56T0VDNDFkK2hDWVdM?=
 =?utf-8?B?OVRESVgxY05RcnJacE9hQnlCcFlSQURQSW1vdVMzMGpuOFhEL0lBY0FPeUdC?=
 =?utf-8?B?QXZTTWF5SXlnRUNPTkh0SWVuUmlwUitCNmw3VGNwZG0zcjRudHpIM0N6Ly9t?=
 =?utf-8?B?QTJEU1JmY1BicnpmdFVUdG5ITm1HdzVDbWNSaUVFMlhGNHlsVW5IazRkb241?=
 =?utf-8?B?aXZCeEY2Zk8wRmZ3TEpCUzhHaUR0dTYvalgvSFoxVmxBa0VLSTlJQTBQTHhq?=
 =?utf-8?B?SDZUdFRoR2Z6ZVdFaTh1N3lUekxQTHZxSWdUSWs3MnAvS3JsYTZ6d3U3R1NS?=
 =?utf-8?B?YUZvbHZzQTBhZmk4ellsT3dleDhDcDd0bmpFU204VmgxKzZjN29vS0pIOE1i?=
 =?utf-8?B?MmpSdnkyOGI2cE9VSUNYc0RCL1VtM3BpUysxVmFKdjA3OGgzN1J1Q3NkSmFX?=
 =?utf-8?B?dTQrUSt5b1lZbzlFUGNvTUZ3YkV0VDRYL1I1b0dGTk5QSm1QbUJ6OWhhMVVQ?=
 =?utf-8?B?QW01VFJmNENWbVFCZWVQMEJUN0d1a3Z4ZUZSSko4OFB1dTBSWkRrN3F3RzRt?=
 =?utf-8?B?eDhxNDN4aG40bDNtajlJM1FLTDE5Q3FaS1JMUW82blJoRmFVa3Q4MitXT1Jo?=
 =?utf-8?B?bmhXdWxTNEFxdXZwVG5TOXYxbW1EeGVIVnZkNU1QNDVZOFNBMk5jTmRtWE9x?=
 =?utf-8?B?MnNKM0RSVDExb0VxcndGOExJQzJoTlhYVWJIelVCU1pqZDFwV3NaWEVEc010?=
 =?utf-8?B?Ky9NMGRabi9oaXllZGJnTGQySklOdEx5U01hVGw2STFDNlJpZ25BbzZla1ha?=
 =?utf-8?B?ZTRaVUdVNGZQd2pvYnJ4ditBZ1lIWThrVTBkdkJKQktqNUUwREhhMzl0NWQ5?=
 =?utf-8?B?cDlSY05hWUl4U2ZodmovQit0ejFnNlpJbzF6NDBnQUs1TnROZmFkd0xWbmw0?=
 =?utf-8?B?U2YyWTRIUHNNWXRRTWZxSDlib2FDQktIa2Uwb1hEb0xGWWl1Y29KQnV1SWtz?=
 =?utf-8?B?SGFid2U0OXVsRzhDWnhqZGVveVl1cnh2UGZkMnZqNkt1WVVldEYzaE91MTh0?=
 =?utf-8?B?YkphOTB2QWNEWHVTRjU2L0VIS0E0Q0REaTkrOTJTQi9rTzVGMytwUk90bk9U?=
 =?utf-8?B?dTRtbjRpZTA3U05NSzBTVFhDWlhsMmsvc2p3QitEbENpallrZXk0Rk4xeWFK?=
 =?utf-8?B?VXk2U0JFUXVrb1c2OFh6eklVRS9ZUTVlaXN1WlAwRno3UWdDL3hwVFpYeUZM?=
 =?utf-8?B?RnJDWFRaWHdDb2F1aTE3RXpGRGhmT0UrKyttOFhBQk9aeDFURlU4VEIxeHN4?=
 =?utf-8?B?MEFhQU9XaVFMeXdaSFZKS1AyM2RtQnlDK1REMFh2aEJIOUd1Slg5bXEvWnFY?=
 =?utf-8?B?NGlwQlN2MTBaRGNjK3A3VUpwd2o5UUN4ejc1Y1ZMOUYxaUZvODVLUmJCTE1R?=
 =?utf-8?B?ODRBRkV1eWNiUG9GVVczZ2ZLd0VkejR0OHJ5U0JIY280akdYZ2diNVk2c0hz?=
 =?utf-8?B?dVFDSFdpZUNSdEpuTXFFaEZjREpvRSt4a3pyVWlSbUEvU2JIazFBTHlnQWQ1?=
 =?utf-8?B?bFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ad5fe3c0-40c8-4554-bebc-08dba27bffb3
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2023 19:22:46.6801 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qpiSlmZ6c3oEUlAABhCSYa8/+nhu1tE+OILcGJ/T1K/X3vkUVlPbZ+6EVTEvZ4sWsLuWpPi4cUYu7w7udghWkg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6671
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 9/9] drm/i915: Replace several
 IS_METEORLAKE with proper IP version checks
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matt Roper (2023-08-21 15:06:29-03:00)
>Many of the IS_METEORLAKE conditions throughout the driver are supposed
>to be checks for Xe_LPG and/or Xe_LPM+ IP, not for the MTL platform
>specifically.  Update those checks to ensure that the code will still
>operate properly if/when these IP versions show up on future platforms.
>
>v2:
> - Update two more conditions (one for pg_enable, one for MTL HuC
>   compatibility).
>v3:
> - Don't change GuC/HuC compatibility check, which sounds like it truly
>   is specific to the MTL platform.  (Gustavo)
> - Drop a non-lineage workaround number for the OA timestamp frequency
>   workaround.  (Gustavo)
>
>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/gem/i915_gem_create.c |  4 ++--
> drivers/gpu/drm/i915/gt/intel_engine_pm.c  |  2 +-
> drivers/gpu/drm/i915/gt/intel_mocs.c       |  2 +-
> drivers/gpu/drm/i915/gt/intel_rc6.c        |  2 +-
> drivers/gpu/drm/i915/gt/intel_reset.c      |  2 +-
> drivers/gpu/drm/i915/gt/intel_rps.c        |  2 +-
> drivers/gpu/drm/i915/i915_debugfs.c        |  2 +-
> drivers/gpu/drm/i915/i915_perf.c           | 11 +++++------
> 8 files changed, 13 insertions(+), 14 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/=
i915/gem/i915_gem_create.c
>index d24c0ce8805c..19156ba4b9ef 100644
>--- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
>+++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
>@@ -405,8 +405,8 @@ static int ext_set_pat(struct i915_user_extension __us=
er *base, void *data)
>         BUILD_BUG_ON(sizeof(struct drm_i915_gem_create_ext_set_pat) !=3D
>                      offsetofend(struct drm_i915_gem_create_ext_set_pat, =
rsvd));
>=20
>-        /* Limiting the extension only to Meteor Lake */
>-        if (!IS_METEORLAKE(i915))
>+        /* Limiting the extension only to Xe_LPG and beyond */
>+        if (GRAPHICS_VER_FULL(i915) < IP_VER(12, 70))
>                 return -ENODEV;
>=20
>         if (copy_from_user(&ext, base, sizeof(ext)))
>diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i=
915/gt/intel_engine_pm.c
>index b538b5c04948..e91fc881dbf1 100644
>--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
>+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
>@@ -21,7 +21,7 @@ static void intel_gsc_idle_msg_enable(struct intel_engin=
e_cs *engine)
> {
>         struct drm_i915_private *i915 =3D engine->i915;
>=20
>-        if (IS_METEORLAKE(i915) && engine->id =3D=3D GSC0) {
>+        if (MEDIA_VER(i915) >=3D 13 && engine->id =3D=3D GSC0) {
>                 intel_uncore_write(engine->gt->uncore,
>                                    RC_PSMI_CTRL_GSCCS,
>                                    _MASKED_BIT_DISABLE(IDLE_MSG_DISABLE))=
;
>diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/g=
t/intel_mocs.c
>index bf8b42d2d327..07269ff3be13 100644
>--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
>+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
>@@ -495,7 +495,7 @@ static unsigned int get_mocs_settings(const struct drm=
_i915_private *i915,
>         memset(table, 0, sizeof(struct drm_i915_mocs_table));
>=20
>         table->unused_entries_index =3D I915_MOCS_PTE;
>-        if (IS_METEORLAKE(i915)) {
>+        if (IS_GFX_GT_IP_RANGE(&i915->gt0, IP_VER(12, 70), IP_VER(12, 71)=
)) {
>                 table->size =3D ARRAY_SIZE(mtl_mocs_table);
>                 table->table =3D mtl_mocs_table;
>                 table->n_entries =3D MTL_NUM_MOCS_ENTRIES;
>diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt=
/intel_rc6.c
>index 86df42cb5823..8b67abd720be 100644
>--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
>+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
>@@ -123,7 +123,7 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
>          * temporary wa and should be removed after fixing real cause
>          * of forcewake timeouts.
>          */
>-        if (IS_METEORLAKE(gt->i915))
>+        if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71)))
>                 pg_enable =3D
>                         GEN9_MEDIA_PG_ENABLE |
>                         GEN11_MEDIA_SAMPLER_PG_ENABLE;
>diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/=
gt/intel_reset.c
>index fd6c22aeb670..98575d79c446 100644
>--- a/drivers/gpu/drm/i915/gt/intel_reset.c
>+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
>@@ -705,7 +705,7 @@ static int __reset_guc(struct intel_gt *gt)
>=20
> static bool needs_wa_14015076503(struct intel_gt *gt, intel_engine_mask_t=
 engine_mask)
> {
>-        if (!IS_METEORLAKE(gt->i915) || !HAS_ENGINE(gt, GSC0))
>+        if (MEDIA_VER_FULL(gt->i915) !=3D IP_VER(13, 0) || !HAS_ENGINE(gt=
, GSC0))
>                 return false;
>=20
>         if (!__HAS_ENGINE(engine_mask, GSC0))
>diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt=
/intel_rps.c
>index 092542f53aad..4feef874e6d6 100644
>--- a/drivers/gpu/drm/i915/gt/intel_rps.c
>+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
>@@ -1161,7 +1161,7 @@ void gen6_rps_get_freq_caps(struct intel_rps *rps, s=
truct intel_rps_freq_caps *c
> {
>         struct drm_i915_private *i915 =3D rps_to_i915(rps);
>=20
>-        if (IS_METEORLAKE(i915))
>+        if (GRAPHICS_VER_FULL(i915) >=3D IP_VER(12, 70))
>                 return mtl_get_freq_caps(rps, caps);
>         else
>                 return __gen6_rps_get_freq_caps(rps, caps);
>diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i9=
15_debugfs.c
>index 4de44cf1026d..7a90a2e32c9f 100644
>--- a/drivers/gpu/drm/i915/i915_debugfs.c
>+++ b/drivers/gpu/drm/i915/i915_debugfs.c
>@@ -144,7 +144,7 @@ static const char *i915_cache_level_str(struct drm_i91=
5_gem_object *obj)
> {
>         struct drm_i915_private *i915 =3D obj_to_i915(obj);
>=20
>-        if (IS_METEORLAKE(i915)) {
>+        if (IS_GFX_GT_IP_RANGE(to_gt(i915), IP_VER(12, 70), IP_VER(12, 71=
))) {
>                 switch (obj->pat_index) {
>                 case 0: return " WB";
>                 case 1: return " WT";
>diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_=
perf.c
>index 605e6e4fedf1..018f42fff4cc 100644
>--- a/drivers/gpu/drm/i915/i915_perf.c
>+++ b/drivers/gpu/drm/i915/i915_perf.c
>@@ -3220,11 +3220,10 @@ get_sseu_config(struct intel_sseu *out_sseu,
>  */
> u32 i915_perf_oa_timestamp_frequency(struct drm_i915_private *i915)
> {
>-        /*
>-         * Wa_18013179988:dg2
>-         * Wa_14015846243:mtl
>-         */
>-        if (IS_DG2(i915) || IS_METEORLAKE(i915)) {
>+        struct intel_gt *gt =3D to_gt(i915);
>+
>+        /* Wa_18013179988 */
>+        if (IS_DG2(i915) || IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER=
(12, 71))) {
>                 intel_wakeref_t wakeref;
>                 u32 reg, shift;
>=20
>@@ -4507,7 +4506,7 @@ static bool xehp_is_valid_b_counter_addr(struct i915=
_perf *perf, u32 addr)
>=20
> static bool gen12_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
> {
>-        if (IS_METEORLAKE(perf->i915))
>+        if (GRAPHICS_VER_FULL(perf->i915) >=3D IP_VER(12, 70))
>                 return reg_in_range_table(addr, mtl_oa_mux_regs);
>         else
>                 return reg_in_range_table(addr, gen12_oa_mux_regs);
>--=20
>2.41.0
>
