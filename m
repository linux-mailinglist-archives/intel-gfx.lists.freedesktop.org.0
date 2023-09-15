Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23BB27A2347
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 18:08:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CCC010E169;
	Fri, 15 Sep 2023 16:08:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D23B10E169
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Sep 2023 16:08:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694794095; x=1726330095;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=Tr1PqIZ6T2tVrp1dX26beZrdK8uM61SmX07j4HwSGpM=;
 b=enRwg1hEpPbm6MpoSq8ts3/3nrkbidmoq/gvxkD+L2KqyOpy1thAPbCi
 9F9FQvdes7tt3DHB62ypCcCfn4gs/C0erDtNKQqS4ye0QtO3vE4jGepAZ
 5mSH+2v03O9s9au4nAakbiAU/k0dgOVMn1/TFNq5Dyqus4KVrsErhoPzy
 m0kaHFSmu7/ygo1ernmBFotSWu3bdUAv5UdH3OLwfgKBVJFo6MdlDM5xs
 VQvPpn0wFpvIjxnw0AaQ3c0hd8fRXRWIpjKCxXuueYQ+bacZiU49IXWyz
 c9r0XtblrXLet3h9zm9moThl9p9qhCUdmLw1pz0gFfiVRvlIqE/sJ/YNy Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="382008621"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="382008621"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 09:06:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="738383075"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="738383075"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Sep 2023 09:06:10 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 15 Sep 2023 09:06:09 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 15 Sep 2023 09:06:09 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 15 Sep 2023 09:06:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AgpNzVRKjAUsCZQAhB12orMuJZTpJTD71FXy3TbEtU0mX1FGXcHQR4P8wQDkJ2QM2PvJ6b22xkic1l64zU4c88xffMP0gCVufdr+atY00X/w/OaFTGBWet9zvFMo0wqT9nTiOsZe5dncTHIy1LYanVXmjavvWu5iB13c/RyoT5PJHkw2fXfFJlApqybF7AFDradzaquFaFYIXVnMZNNbr6wqmyLqaZU3j4hrekEFWK/AXEXcrVVmamsX3SWYzBzxC0XNkfOLh8fUC0OHNPukudnIATJZLRsBE9yB5s3sdhdeqZccaGR+z3Om0y18MOExWFNoFhgO0OQYIBJNZWP59g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t1JJGVrb8Nvx++oP6uNlaahEyr4k/s+fGa2z0V56xVs=;
 b=Ho+uZtkoUmu6o8cKvN2TrneCATIdOH6244vqgtDNxoK6g2aaaaNYIsAIVXbi66n5A9ZopTQ7LNPJEEDRUcjPrUgLPfscxGeLxLj/AKGLID3cAem7JKlU41r++2CeaDUxpKQWARa+PpGZkHQ0LPHY0a3Tuysz6zb8nzoaiaHSxJBn7uKjH4Kt9l757EZ7o7zWkdqGgtLj6OnWcQPsEJ8LxP2mMYBrPd4wRKvMfiSyyq1JpvNPhOT6hvHuh1m4OLuzMY8wjD+CNuvjFPAKWyaGFAM5YAtY+N50IQiMCOFpFprf8XGxjFsBt947XqE2a3HRL/qgbMmTEOOvgBb0eUAqhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6135.namprd11.prod.outlook.com (2603:10b6:208:3c9::9)
 by SJ2PR11MB8369.namprd11.prod.outlook.com (2603:10b6:a03:53d::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.19; Fri, 15 Sep
 2023 16:06:06 +0000
Received: from MN0PR11MB6135.namprd11.prod.outlook.com
 ([fe80::14d7:6eea:3377:62e1]) by MN0PR11MB6135.namprd11.prod.outlook.com
 ([fe80::14d7:6eea:3377:62e1%6]) with mapi id 15.20.6768.029; Fri, 15 Sep 2023
 16:06:06 +0000
Date: Fri, 15 Sep 2023 18:06:02 +0200
From: Piotr =?utf-8?Q?Pi=C3=B3rkowski?= <piotr.piorkowski@intel.com>
To: "Zeng, Oak" <oak.zeng@intel.com>
Message-ID: <20230915160602.w7xs6nuby5wzkvd4@intel.com>
References: <20230915083412.4572-1-nirmoy.das@intel.com>
 <20230915083412.4572-6-nirmoy.das@intel.com>
 <SA1PR11MB6991E7C50BEFDCB2EEE04ABA92F6A@SA1PR11MB6991.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <SA1PR11MB6991E7C50BEFDCB2EEE04ABA92F6A@SA1PR11MB6991.namprd11.prod.outlook.com>
X-ClientProxiedBy: DU2PR04CA0084.eurprd04.prod.outlook.com
 (2603:10a6:10:232::29) To MN0PR11MB6135.namprd11.prod.outlook.com
 (2603:10b6:208:3c9::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6135:EE_|SJ2PR11MB8369:EE_
X-MS-Office365-Filtering-Correlation-Id: 6d5e53a2-4ff0-49a9-d67b-08dbb605aaf6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LRzlJOBB9jmHh1YCDGDvz9x7zSpM4sgaJUaeLsNoey2Q0Z4vxZgG1KGcM4skBiwtkSkVCAXljV4k8+x/1qnMlYQgwlw/QXAwS2FF/4PKY8OfunlKwbNVvAQC/LeuytixCF2Hol9/Y0z85jVKbYdC2Hd9rDAEe3lepxix3g69ToGKNCux+5a+/YIdLu1nRhYDO3pzclULwafSOKftZSv4O40EkqG5i7/hOA5DduTwUP2pVQOiFStvkizXM1/LUIveW5dkIpkZ1ResJbrmTT+esMvG1r7E/oILOpkuEylu8v9Si96XPkMmynLszOlJdPvCiI/Z0JUazopD3cOEltOCK+gYJbFFwjeXfgFUgLHB1vgsYNvwSmDBkOQOAH0rZ/wnEhYCXHBA5K3UVOJhKo60Wo/r0LHSLxtYvmn51BKywjgpJ44etTYC8zAJBjw9/LRULZ+p7rq9B0/1HuFEIk/tanAXs+403RHRqrLRO2Oo7wtBQvZXzB9m56iGA2v6T3Nk49RZfbRPIy7ap2/LkPwa690QkfzAG+7m6AR+977C4C/WtR+FjD8Gv6gChOK+ta8q
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6135.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(376002)(136003)(396003)(366004)(186009)(1800799009)(451199024)(478600001)(6666004)(6506007)(6486002)(53546011)(6512007)(15650500001)(2906002)(30864003)(37006003)(8936002)(66556008)(54906003)(6636002)(66476007)(66946007)(6862004)(83380400001)(26005)(8676002)(2616005)(4326008)(41300700001)(5660300002)(316002)(36756003)(1076003)(86362001)(82960400001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S0pLOTBhT0J0VjdPT1hoMElidm83bnpONWRNYWNtMmRQV3hzRTIyQWFyRnhu?=
 =?utf-8?B?VWkyeFZDeVBtZGVGMTF1RGpxSkFUY0NPcHpZSzhqWnc0c0EveTlReFVxengv?=
 =?utf-8?B?dEdzejM4eDhiWThUWUhyV3lKd21JaTNOV0pncVBkOXVmVlJKSm12cW5oZ1pp?=
 =?utf-8?B?WnlYSElDZ0tPeXVxWm1Majl0RmNMRjFycHZzUlluV3ZvZld6TWtMR1d4L29F?=
 =?utf-8?B?bkp1NnZLb29NdkpaNi8yLzVIQ1cvd0djbnVxZngyZXVJN2RPTUdCRTNNbUtL?=
 =?utf-8?B?SnhiWHk4TmV2blJQeVJXSWR1Z2dBTUJMamxteUplWGdiM0FieDJDalhXWThs?=
 =?utf-8?B?Nmhhei9VN1A0b2xCV2s3U3BIT3lKVEIwQkVsRjVLVmFIbGxScFVSdDVvU2Jx?=
 =?utf-8?B?NXN5WDBXUXZ0bG93cXMybTNBdFN2R0Mxb2xHNzNyQ2V0OGh3cTJtV2xibFE1?=
 =?utf-8?B?Nm1lMWpkRWJ5blBVdjljK2YxTXUrYW1KRG5pUmZpSkpvRlVmMEtYZVB5OHFO?=
 =?utf-8?B?cUJxMnMwWW4rUFh2T1hKbDFqTm5uQmwwMDJEam1LRHpNMjIwenlnL2FKbnVQ?=
 =?utf-8?B?dkNIUGRDZjB5T3ovMnRJTEJRZFg4Y2J5OUhiRzJwZytNRUFjdmVmYUxTVWIv?=
 =?utf-8?B?THRBRGdVVTNhdU9oeU9lRUMxN0ZBZ2psYWswNHFoemkxTE4xNW5HQ1FpZEdq?=
 =?utf-8?B?UTduU0x1VCtXTmRCODFKV0RlR1ZlWC9SaTh0NjU5S0lYczdDRjB2eXljTGdD?=
 =?utf-8?B?Vmg0Y2MrNnd6NEgxU2hwQTUrc3NmTFRReDVTU29YaFhKSUFyWXVpV3hWT2V5?=
 =?utf-8?B?WG0yUmhsN2NmTVBBZElhZnZXTVAwVE82Q0k4NjQ4WTdlbUNBeWVhNU1KM05h?=
 =?utf-8?B?ZlB5YkJTeXNOcXhvclMybWVVTldWelBldCtDZThVOXBpVXRwOFR6QndqR1Bh?=
 =?utf-8?B?TE1CRVBPR1NsbEJNSm5BQlh3OTRSdUJMcWhqVjRtT1VrVXdrcEFQczdka0g5?=
 =?utf-8?B?eTNZRnp2cWFsUUczakZneThuK1JrS0xYUE9uNHBVWmVrblg2RUs5VUpGRmFI?=
 =?utf-8?B?TWpKbG5WUWdZcE1LTnJkcjNxeFBlLzVzNVYxMVc1QjRYcGVYTXVBaWM2OWhW?=
 =?utf-8?B?dzhJUjZlU1RWRWRIV2IyWW1RN0dXbU00VTVCcVdUYlluRlFPMXpxekZ2cy82?=
 =?utf-8?B?QnI1NVlLZ2kxa3hzcUlCL3ZvUWZ6SmovUy91SE9yUmJnR1lqdklzWlIvYnRl?=
 =?utf-8?B?SlpaR0lWUkxHYmd0U1BYdnZLbmFRVmRwQ2M1ZDVkdmxvT1BWREE3TUtvWDJN?=
 =?utf-8?B?K1plcDQ3K0tmSE8xKzFUS3ZubjdyMDlPV05FV05PbE5OMDRqVnIvaDRsSnNW?=
 =?utf-8?B?UlhCaHdpRFBjbTA3MmpKYVpKT2Z5cHhZSHpPOFVpY3Zvd2dtRXhHYjh0Zy9M?=
 =?utf-8?B?VWNncnN5UW5ldkE2MXhFRjJNWXo4ODhpS0VPWEw2Z254WGt6bkZQR283WERP?=
 =?utf-8?B?NVZoR2ZiNzluM25pQUtiV3I3eFY5NUs0ZUxMQUJ1V2o2R1RRYnVwWElwLzZW?=
 =?utf-8?B?SWlQb2NsR2JKbFZnZDlTcmp2UDNWdnhyOVl6dU45Tytxb2dwZU5ZYVFsMm5n?=
 =?utf-8?B?OHVwUWt0d2Zva0xwYWFCVThVS1E5dXpMcGJwejNHd2x2R2xpOWp5cFprTzdw?=
 =?utf-8?B?VGFOZklTbFAyNzg1dDdyWkdINmZDUFBnUE95NWZvQ3l1MzBEbHUrRVlIQjdw?=
 =?utf-8?B?UGJUUUJmcnpObHQzVDV0VS9ySW5UdlFKdEFOTjcrQ3RwYUlRWlNVZmw2S2Na?=
 =?utf-8?B?MWptMG84TVZJLzRsL2p2bGZXVGFwaHZFdzZuVnBEOHJWN2JESUhXbyt0RmEv?=
 =?utf-8?B?bHZUWkFIZ1pkZlhtZHFMejA0OFR3b0FNUkNXOEsrc2xRUlQ1TUtWZ1N0Y0dQ?=
 =?utf-8?B?U0JrNGlaaFlVUUJ0SHhuMG54a2JnQUxHa2ROQzcxUlZCTVJBejIrSFZsVzND?=
 =?utf-8?B?NWI3M2J3c2hYYXloRUdNWVZhU3g2cmlySlBlV3ErSHlpTkoxNmFtS2ZwbFFa?=
 =?utf-8?B?dDFUZXFLVm9zTnVId2VkRnpTTHArblJvREhoNlhQTElHdy90QXRwbmZ1Ly9h?=
 =?utf-8?B?MnNyaVVJNnRGTUxIZzZxRndYTEtZUyt3YlNUMnJOMUdqZzBudllqYmM5YnhK?=
 =?utf-8?B?dUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d5e53a2-4ff0-49a9-d67b-08dbb605aaf6
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6135.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2023 16:06:06.4799 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AnPD+43kZcZVWMWLAM3xXfk6sJ6YjB+JPQbk5skMcqCivgCr8wJ9gDbQFQt78/PfySZnu+R2QsIC56dDyd80uNdU8YlUXutmYgC0Dy2/W5k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8369
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 5/7] drm/i915: Implement GGTT update method
 with MI_UPDATE_GTT
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
Cc: "Shyti, Andi" <andi.shyti@intel.com>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>, "Das, Nirmoy" <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Zeng, Oak <oak.zeng@intel.com> wrote on pią [2023-wrz-15 17:56:56 +0200]:
> 
> 
> Thanks,
> Oak
> 
> > -----Original Message-----
> > From: Das, Nirmoy <nirmoy.das@intel.com>
> > Sent: Friday, September 15, 2023 4:34 AM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Zeng, Oak <oak.zeng@intel.com>; chris.p.wilson@linux.intel.com; Piorkowski,
> > Piotr <piotr.piorkowski@intel.com>; Shyti, Andi <andi.shyti@intel.com>; Mun,
> > Gwan-gyeong <gwan-gyeong.mun@intel.com>; Roper, Matthew D
> > <matthew.d.roper@intel.com>; Das, Nirmoy <nirmoy.das@intel.com>
> > Subject: [PATCH 5/7] drm/i915: Implement GGTT update method with
> > MI_UPDATE_GTT
> > 
> > Implement GGTT update method with blitter command, MI_UPDATE_GTT
> > and install those handlers if a platform requires that.
> > 
> > v2: Make sure we hold the GT wakeref and Blitter engine wakeref before
> > we call mutex_lock/intel_context_enter below. When GT/engine are not
> > awake, the intel_context_enter calls into some runtime pm function which
> > can end up with kmalloc/fs_reclaim. But trigger fs_reclaim holding a
> > mutex lock is not allowed because shrinker can also try to hold the same
> > mutex lock. It is a circular lock. So hold the GT/blitter engine wakeref
> > before calling mutex_lock, to fix the circular lock.
> > 
> > Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> > Signed-off-by: Oak Zeng <oak.zeng@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_ggtt.c | 235 +++++++++++++++++++++++++++
> >  1 file changed, 235 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > index dd0ed941441a..b94de7cebfce 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > @@ -15,18 +15,23 @@
> >  #include "display/intel_display.h"
> >  #include "gem/i915_gem_lmem.h"
> > 
> > +#include "intel_context.h"
> >  #include "intel_ggtt_gmch.h"
> > +#include "intel_gpu_commands.h"
> >  #include "intel_gt.h"
> >  #include "intel_gt_regs.h"
> >  #include "intel_pci_config.h"
> > +#include "intel_ring.h"
> >  #include "i915_drv.h"
> >  #include "i915_pci.h"
> > +#include "i915_request.h"
> >  #include "i915_scatterlist.h"
> >  #include "i915_utils.h"
> >  #include "i915_vgpu.h"
> > 
> >  #include "intel_gtt.h"
> >  #include "gen8_ppgtt.h"
> > +#include "intel_engine_pm.h"
> > 
> >  static void i915_ggtt_color_adjust(const struct drm_mm_node *node,
> >  				   unsigned long color,
> > @@ -252,6 +257,145 @@ u64 gen8_ggtt_pte_encode(dma_addr_t addr,
> >  	return pte;
> >  }
> > 
> > +static bool should_update_ggtt_with_bind(struct i915_ggtt *ggtt)
> > +{
> > +	struct intel_gt *gt = ggtt->vm.gt;
> > +
> > +	return intel_gt_is_bind_context_ready(gt);
> > +}
> > +
> > +static struct intel_context *gen8_ggtt_bind_get_ce(struct i915_ggtt *ggtt)
> > +{
> > +	struct intel_context *ce;
> > +	struct intel_gt *gt = ggtt->vm.gt;
> > +
> > +	if (intel_gt_is_wedged(gt))
> > +		return NULL;
> > +
> > +	ce = gt->engine[BCS0]->bind_context;
> > +	GEM_BUG_ON(!ce);
> > +
> > +	/*
> > +	 * If the GT is not awake already at this stage then fallback
> > +	 * to pci based GGTT update otherwise __intel_wakeref_get_first()
> > +	 * would conflict with fs_reclaim trying to allocate memory while
> > +	 * doing rpm_resume().
> > +	 */
> > +	if (!intel_gt_pm_get_if_awake(gt))
> > +		return NULL;
> > +
> > +	intel_engine_pm_get(ce->engine);
> > +
> > +	return ce;
> > +}
> > +
> > +static void gen8_ggtt_bind_put_ce(struct intel_context *ce)
> > +{
> > +	intel_engine_pm_put(ce->engine);
> > +	intel_gt_pm_put(ce->engine->gt);
> > +}
> > +
> > +static bool gen8_ggtt_bind_ptes(struct i915_ggtt *ggtt, u32 offset,
> > +				struct sg_table *pages, u32 num_entries,
> > +				const gen8_pte_t pte)
> > +{
> > +	struct i915_sched_attr attr = {};
> > +	struct intel_gt *gt = ggtt->vm.gt;
> > +	const gen8_pte_t scratch_pte = ggtt->vm.scratch[0]->encode;
> > +	struct sgt_iter iter;
> > +	struct i915_request *rq;
> > +	struct intel_context *ce;
> > +	u32 *cs;
> > +
> > +	if (!num_entries)
> > +		return true;
> > +
> > +	ce = gen8_ggtt_bind_get_ce(ggtt);
> > +	if (!ce)
> > +		return false;
> > +
> > +	if (pages)
> > +		iter = __sgt_iter(pages->sgl, true);
> > +
> > +	while (num_entries) {
> > +		int count = 0;
> > +		dma_addr_t addr;
> > +		/*
> > +		 * MI_UPDATE_GTT can update 512 entries in a single command
> > but
> > +		 * that end up with engine reset, 511 works.
> > +		 */
> > +		u32 n_ptes = min_t(u32, 511, num_entries);
> > +
> > +		if (mutex_lock_interruptible(&ce->timeline->mutex))
> > +			goto put_ce;
> > +
> > +		intel_context_enter(ce);
> > +		rq = __i915_request_create(ce, GFP_NOWAIT | GFP_ATOMIC);
> > +		intel_context_exit(ce);
> > +		if (IS_ERR(rq)) {
> > +			GT_TRACE(gt, "Failed to get bind request\n");
> > +			mutex_unlock(&ce->timeline->mutex);
> > +			goto put_ce;
> > +		}
> > +
> > +		cs = intel_ring_begin(rq, 2 * n_ptes + 2);
> > +		if (IS_ERR(cs)) {
> > +			GT_TRACE(gt, "Failed to ring space for GGTT bind\n");
> > +			i915_request_set_error_once(rq, PTR_ERR(cs));
> > +			/* once a request is created, it must be queued */
> > +			goto queue_err_rq;
> > +		}
> > +
> > +		*cs++ = MI_UPDATE_GTT | (2 * n_ptes);
> > +		*cs++ = offset << 12;
> > +
> > +		if (pages) {
> > +			for_each_sgt_daddr_next(addr, iter) {
> > +				if (count == n_ptes)
> > +					break;
> > +				*cs++ = lower_32_bits(pte | addr);
> > +				*cs++ = upper_32_bits(pte | addr);
> > +				count++;
> > +			}
> > +			/* fill remaining with scratch pte, if any */
> > +			if (count < n_ptes) {
> > +				memset64((u64 *)cs, scratch_pte,
> > +					 n_ptes - count);
> > +				cs += (n_ptes - count) * 2;
> > +			}
> 
> Should we return error instead of silently fill pte with scratch? Or maybe even gem_bug_on on this case? The caller didn't allocate enough pages, means something wrong happened...

We should avoid GEM_BUG_ON, however, maybe it's a good idea for this function to return an int
instead of a bool, because there are a lot of places here that return an err. In that case,
ret > 0 could mean the number of PTEs we updated correctly and ret < 0 would be an error.

Piotr

> 
> Oak
> 
> > +		} else {
> > +			memset64((u64 *)cs, pte, n_ptes);
> > +			cs += n_ptes * 2;
> > +		}
> > +
> > +		intel_ring_advance(rq, cs);
> > +queue_err_rq:
> > +		i915_request_get(rq);
> > +		__i915_request_commit(rq);
> > +		__i915_request_queue(rq, &attr);
> > +
> > +		mutex_unlock(&ce->timeline->mutex);
> > +		/* This will break if the request is complete or after engine reset
> > */
> > +		i915_request_wait(rq, 0, MAX_SCHEDULE_TIMEOUT);
> > +		if (rq->fence.error)
> > +			goto err_rq;
> > +
> > +		i915_request_put(rq);
> > +
> > +		num_entries -= n_ptes;
> > +		offset += n_ptes;
> > +	}
> > +
> > +	gen8_ggtt_bind_put_ce(ce);
> > +	return true;
> > +
> > +err_rq:
> > +	i915_request_put(rq);
> > +put_ce:
> > +	gen8_ggtt_bind_put_ce(ce);
> > +	return false;
> > +}
> > +
> >  static void gen8_set_pte(void __iomem *addr, gen8_pte_t pte)
> >  {
> >  	writeq(pte, addr);
> > @@ -272,6 +416,21 @@ static void gen8_ggtt_insert_page(struct
> > i915_address_space *vm,
> >  	ggtt->invalidate(ggtt);
> >  }
> > 
> > +static void gen8_ggtt_insert_page_bind(struct i915_address_space *vm,
> > +				       dma_addr_t addr, u64 offset,
> > +				       unsigned int pat_index, u32 flags)
> > +{
> > +	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
> > +	gen8_pte_t pte;
> > +
> > +	pte = ggtt->vm.pte_encode(addr, pat_index, flags);
> > +	if (should_update_ggtt_with_bind(i915_vm_to_ggtt(vm)) &&
> > +	    gen8_ggtt_bind_ptes(ggtt, offset, NULL, 1, pte))
> > +		return ggtt->invalidate(ggtt);
> > +
> > +	gen8_ggtt_insert_page(vm, addr, offset, pat_index, flags);
> > +}
> > +
> >  static void gen8_ggtt_insert_entries(struct i915_address_space *vm,
> >  				     struct i915_vma_resource *vma_res,
> >  				     unsigned int pat_index,
> > @@ -311,6 +470,50 @@ static void gen8_ggtt_insert_entries(struct
> > i915_address_space *vm,
> >  	ggtt->invalidate(ggtt);
> >  }
> > 
> > +static bool __gen8_ggtt_insert_entries_bind(struct i915_address_space *vm,
> > +					    struct i915_vma_resource *vma_res,
> > +					    unsigned int pat_index, u32 flags)
> > +{
> > +	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
> > +	gen8_pte_t scratch_pte = vm->scratch[0]->encode;
> > +	gen8_pte_t pte_encode;
> > +	u64 start, end;
> > +
> > +	pte_encode = ggtt->vm.pte_encode(0, pat_index, flags);
> > +	start = (vma_res->start - vma_res->guard) / I915_GTT_PAGE_SIZE;
> > +	end = start + vma_res->guard / I915_GTT_PAGE_SIZE;
> > +	if (!gen8_ggtt_bind_ptes(ggtt, start, NULL, end - start, scratch_pte))
> > +		goto err;
> > +
> > +	start = end;
> > +	end += (vma_res->node_size + vma_res->guard) / I915_GTT_PAGE_SIZE;
> > +	if (!gen8_ggtt_bind_ptes(ggtt, start, vma_res->bi.pages,
> > +	      vma_res->node_size / I915_GTT_PAGE_SIZE, pte_encode))
> > +		goto err;
> > +
> > +	start += vma_res->node_size / I915_GTT_PAGE_SIZE;
> > +	if (!gen8_ggtt_bind_ptes(ggtt, start, NULL, end - start, scratch_pte))
> > +		goto err;
> > +
> > +	return true;
> > +
> > +err:
> > +	return false;
> > +}
> > +
> > +static void gen8_ggtt_insert_entries_bind(struct i915_address_space *vm,
> > +					  struct i915_vma_resource *vma_res,
> > +					  unsigned int pat_index, u32 flags)
> > +{
> > +	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
> > +
> > +	if (should_update_ggtt_with_bind(i915_vm_to_ggtt(vm)) &&
> > +	    __gen8_ggtt_insert_entries_bind(vm, vma_res, pat_index, flags))
> > +		return ggtt->invalidate(ggtt);
> > +
> > +	gen8_ggtt_insert_entries(vm, vma_res, pat_index, flags);
> > +}
> > +
> >  static void gen8_ggtt_clear_range(struct i915_address_space *vm,
> >  				  u64 start, u64 length)
> >  {
> > @@ -332,6 +535,27 @@ static void gen8_ggtt_clear_range(struct
> > i915_address_space *vm,
> >  		gen8_set_pte(&gtt_base[i], scratch_pte);
> >  }
> > 
> > +static void gen8_ggtt_scratch_range_bind(struct i915_address_space *vm,
> > +					 u64 start, u64 length)
> > +{
> > +	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
> > +	unsigned int first_entry = start / I915_GTT_PAGE_SIZE;
> > +	unsigned int num_entries = length / I915_GTT_PAGE_SIZE;
> > +	const gen8_pte_t scratch_pte = vm->scratch[0]->encode;
> > +	const int max_entries = ggtt_total_entries(ggtt) - first_entry;
> > +
> > +	if (WARN(num_entries > max_entries,
> > +		 "First entry = %d; Num entries = %d (max=%d)\n",
> > +		 first_entry, num_entries, max_entries))
> > +		num_entries = max_entries;
> > +
> > +	if (should_update_ggtt_with_bind(ggtt) && gen8_ggtt_bind_ptes(ggtt,
> > first_entry,
> > +	     NULL, num_entries, scratch_pte))
> > +		return ggtt->invalidate(ggtt);
> > +
> > +	gen8_ggtt_clear_range(vm, start, length);
> > +}
> > +
> >  static void gen6_ggtt_insert_page(struct i915_address_space *vm,
> >  				  dma_addr_t addr,
> >  				  u64 offset,
> > @@ -997,6 +1221,17 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
> >  			I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND;
> >  	}
> > 
> > +	if (i915_ggtt_require_binder(i915)) {
> > +		ggtt->vm.scratch_range = gen8_ggtt_scratch_range_bind;
> > +		ggtt->vm.insert_page = gen8_ggtt_insert_page_bind;
> > +		ggtt->vm.insert_entries = gen8_ggtt_insert_entries_bind;
> > +		/*
> > +		 * On GPU is hung, we might bind VMAs for error capture.
> > +		 * Fallback to CPU GGTT updates in that case.
> > +		 */
> > +		ggtt->vm.raw_insert_page = gen8_ggtt_insert_page;
> > +	}
> > +
> >  	if (intel_uc_wants_guc(&ggtt->vm.gt->uc))
> >  		ggtt->invalidate = guc_ggtt_invalidate;
> >  	else
> > --
> > 2.41.0
> 

-- 
