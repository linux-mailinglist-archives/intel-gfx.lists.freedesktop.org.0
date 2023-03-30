Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C04816D0CE9
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Mar 2023 19:34:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17A0610EF5D;
	Thu, 30 Mar 2023 17:34:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1333C10EF5A
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 17:34:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680197682; x=1711733682;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=NP3CSDA+EXSBmm2THgLvUzFxHAO+LRmVsQXSH9W4gM0=;
 b=aStheshI82Df1nfkKC93pFwef9FI7l99y3iv5gC2XPabjt8o0yxUC0oV
 tUEnBCtw8daXOiGYUgf86y2Ev87Rcz3vfa/fTiqqXuDK7tR6TtXlwoReI
 n06KaHCm8gaGQPRAXQrw76M4GKSEyyO+C22xwloudBc3MrYAbYkGqljTG
 hxyFv4+P54BOsVi7LXbECNgmZUy3KS5FaYLJYG/phAE9+tzqHkBc7zX7p
 QjevygZYRfquCU3SYg+qIyduw7EiTFOlHt2zXgUrgzpr6sL+4mzVgOiCR
 hNPLK2YNH13WdP2+9XS0k1l/wGa3T3Nf8L/cLRjXh8DkMS7dWvSwYO4y4 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="369023112"
X-IronPort-AV: E=Sophos;i="5.98,305,1673942400"; d="scan'208";a="369023112"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 10:33:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="717411103"
X-IronPort-AV: E=Sophos;i="5.98,305,1673942400"; d="scan'208";a="717411103"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 30 Mar 2023 10:33:46 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 30 Mar 2023 10:33:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 30 Mar 2023 10:33:46 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 30 Mar 2023 10:33:46 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 30 Mar 2023 10:33:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aQOwsHbwSy52qfBiAPxWXBznAf29Hs9afvrraC1pOKEeHRYMJrK8CZurf9s+VnFuBNdX1ySUtWH1WkXc43dKIpy7w1mIrQe8h2CBsm0eHymsn3Ddb7pIZUqoMRxIDV2lfbFVLhUv+cMJb6VW3hvCyR5GiKbUxHCQK9vFn2Pe2q1F8GGxclUqLeXoOSCXY0xBLIoc8d85l02ldbVOV5ScciZCe4pF+/zYvbkwfZo4zixAE6TMnGfp16DEUR+YRntSLzt6R1lEQkGiObniAuppbVJLqDZC0A4PdI49+KY+DDCAJh/i2Xsjj1jIVJj7yW7SwLF6Gr5nHG7S2HbqNaQ5pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u0HLbYcqJVGNTyZnSMZyeGnlo9B3Dwbet1NysdkeA9s=;
 b=gLgUyZwt6xJMwtmFroH7gy6HzFO1JOBw4dnzBZ+btR9jAiapVZUxvpayr6YOpE5WBODeQmz/m2i/mYpHKqMATNcJX95hupg8hIgi1zrW/HO5oYwJjZLC1Wgmk4WR6mVFJRWgSDXSu9czEkydQdwHBF7qXi0Jv8XVJ2M3KMRg9KDksX3TnynWdmK+IjKJRmNIwsth9pHNIkKIftWirRz4bKg28INs4/9lODAF1eKTU0GCGjKbSyFG+OwMT2aa/UNg6wCIZ2/B9rD2feXze139RlGAYB4OIgJkWb1G2dr5cUxbVy0+R387DkGH1DQYwBZ/W2PA08IMtBUOQ9xRBC2YOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 SA1PR11MB6565.namprd11.prod.outlook.com (2603:10b6:806:250::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.35; Thu, 30 Mar
 2023 17:33:44 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::110a:8742:df45:10ed]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::110a:8742:df45:10ed%4]) with mapi id 15.20.6222.033; Thu, 30 Mar 2023
 17:33:44 +0000
Date: Thu, 30 Mar 2023 10:33:33 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <ZCXH7QFlDef8RqRh@orsosgc001.jf.intel.com>
References: <20230330004103.1295413-1-umesh.nerlige.ramappa@intel.com>
 <20230330004103.1295413-7-umesh.nerlige.ramappa@intel.com>
 <7f065f72-bc53-501d-744c-c242eaa6a604@linux.intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <7f065f72-bc53-501d-744c-c242eaa6a604@linux.intel.com>
X-ClientProxiedBy: BY3PR05CA0023.namprd05.prod.outlook.com
 (2603:10b6:a03:254::28) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|SA1PR11MB6565:EE_
X-MS-Office365-Filtering-Correlation-Id: 4b9ab50e-bb02-4dff-8a40-08db3144e8ef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: btSQ+C/UAntOITiIy9eCIRdkwY/w5rTZ/jX0Lx3iHDEWwcO6PkCT5lWb8+xkWwYny/jE1LtJ77y5MDjXlo5ckPnjOcbDFksUPX+xI7iRjs2DoAIlpn9Xv3jk/KTvRtpZFyFgIn7Lr2UlCsMOhqHVRfRbog7Y0kZc3uAjTI+yJIkfCrmGfpDwRh3PtR5p6tJK47f11y4Kyt1BcEjCAZQEvSM7CWsyFuITyCrvpmfxBSb3NfBvDHUMh+t3cyHuvoaennfjgLLC52+mATenv4DkLLsgcL79t8aZ0+07qowKARaq85a0Z8DXmVNtfkN/zS9igA8XscOgqQfHB18kTUKqWAJ9WPh8LcSBxYFeOcg9KOeGKqEplJCjWdu979IrfHBN5r6Lt4TRXcO30Ssuk+lhROUa/ThUasaFfudPecDS8cyfS07DA8fdym7EPlbx1UqBEbjQ2Brwg+cCZG1GeAkq79/O2nJMcLHjGJeT/jXNWxPiAbextqpZxPauFeUQ+V8M3ExiJ1QBtg12Rak63Ew0g4011cGADPH4NTuk0qnJjYfFQQzgUpGxS3IZcJZnTpJL
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(136003)(376002)(346002)(39860400002)(451199021)(6486002)(86362001)(38100700002)(6666004)(478600001)(2906002)(6512007)(83380400001)(316002)(26005)(6506007)(8936002)(41300700001)(8676002)(5660300002)(186003)(82960400001)(6916009)(4326008)(66946007)(66476007)(66556008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZWg4SVIzV2xENjRUb0wxbFBsRHZ1Z2xPMTRRc1dUT3N1Rm5sUkJqUy9LQUdW?=
 =?utf-8?B?M1NLdDZFeUtrVUl2eE5DMnpPRDhSR0NPd3hmMHArckRWNVhWU2o2SzFkWE1o?=
 =?utf-8?B?WklMTm1IaDR1N1loQ0VNdTd2aEVkdnZzc1BNZHgwZXc1RjZWb3VaZ0ovSzRl?=
 =?utf-8?B?ZWZrb1ZWS3k4Vjh2bk9qWTdIQXY5M2FJU1VaYTVOUklQeWZJZ2hXRm83NGR3?=
 =?utf-8?B?dEJjcU5sUkZTUnUwUXAvbjlBdm5UUUIrRlQvRHBueVh6MUR0NkhsWlAyUUlt?=
 =?utf-8?B?MzZ3eUJBbWNqTTIzUUYvNFF0YUNNL29IdWhsT1EzKzBRUzU2Vmc2eC9iTmNE?=
 =?utf-8?B?bm5UUHhReXdDUUw1aXNJOE5sNTBzNUtsc0E1czBrVXpSUHhodkdSOEp5NFZ2?=
 =?utf-8?B?alFPL3BsZ1FSV25aMmoxNmI4QTNpV01mZ2RYVUpuN0x1ZUxveFRrMlgzS1Fn?=
 =?utf-8?B?VC8zU3BleUJ6V2ViVHZPaFVUaWx0Y25rUUM1RWdKaVZUbVB5eExhL2FrYVZy?=
 =?utf-8?B?MXlyWUJsUUlHa2NyZW5zZTgrK0pUMEM0SEg0YXRZZkdjLzJGVFVjYURQVEpp?=
 =?utf-8?B?VFZhUE4vUDRUWUlwWnFSRkUxVlZpa0NLcW1GVENlZU1oSDVFR1hZQ0J5NzZY?=
 =?utf-8?B?dzJ6eTdRelNTekJKNXAxQTdMdlp4NGFKTjVSVnZ1MzMzVVF3R0xKSmtKUjlq?=
 =?utf-8?B?YTlDckMvOWsreGQvWmVHNXh6R1cvWHpuaGxqYTFiVUh5alVJaHhlcEtzdyt2?=
 =?utf-8?B?TWNadWxsMDU3eEJsNWMvb3FwSDd1Yjkza05LdmYzOCs0Q3BJalBxYzl2Zy9O?=
 =?utf-8?B?U3pHMThnZUVBaU1ua3pkMkphb1JNTjdFSDM1VEhZRVlINWR4Ukk4czJndmNV?=
 =?utf-8?B?S0dnenViY0pMUWU1SHVzczlZZjZybDhhc0V2UGNwcUFUUUpXZUhSZ2RiVDk5?=
 =?utf-8?B?RytkTFYrWllPbUFqRGRUalc0WTljNHUwMUt1VzVrcDBvc080c1ZscFNIaXoy?=
 =?utf-8?B?VEVlSWNWOHRtVkdJMVlldWw5VHBDbVhtVmFvRlJRTjBGSGRBQzhJTFRPbWg5?=
 =?utf-8?B?aXJIeHNIa0J0b2FCRytieElKQnNjMjRGdnViNnBwU0tOYjFUL3Y5ckZ2NVpq?=
 =?utf-8?B?Vm5Wd0dQZy8vb1ZBUnFWTGtnNXlqbUNyc0dCZzJXUGhnekhva2k1M3I3bFpP?=
 =?utf-8?B?UzlkVEdkNldobzBiYWdyODN2UTZMWHZEcmtzODMrRUI1djBDUHMrVCtPVEow?=
 =?utf-8?B?d3ZXS2xwNE9oMkZ1V2Q2c0IrbjRRZmZ5STdWT1YzMVp2UUNYWU9JOFRjSDRE?=
 =?utf-8?B?WHFpN3dOZGNOSzk3UjlkZzJEbUgxSytxRmVBTEErZUROUHB6SGMyY01DUlpK?=
 =?utf-8?B?NXA5K1VSeUZPNkNJVDV3cFZ6TkFyQkZ3dWxpQjV5RVo1NC93ZlJ6UU1Ibkd0?=
 =?utf-8?B?THJqNVBLaU1TZWZhSDQ0aHA0VVJrNWtMbjBtbm5ZMGQ3OExBMUZYUGhWbTZ2?=
 =?utf-8?B?WnlmNDI3Umlid2RVakNQODVqbk9sQ2FhZFVBUnQ4RVBvOCtUYWFMbW1SVnVK?=
 =?utf-8?B?NnV6MzFGejJOdzNiZWpvT1hMeFJFOENpem9qNFV0eEtkL0pZcUxmOFlhVU50?=
 =?utf-8?B?K0F1RlZFVk00V3hEc3dscURTa0xxVUtHNW5UQ21wZDh3cW1PdENDbEI3eWJI?=
 =?utf-8?B?TmpEUGxUWWJzR01nWE92QVRkZzYvaEVaYTl3ZVZDdDdFYnhzRFpyQkx3T1Mx?=
 =?utf-8?B?bGlsNDJoYzRzNUJaaW0xRGF2RDNpd3c3YUgrMW0yODN5MW9UTnNPa3hrTHNa?=
 =?utf-8?B?ZjZyanE1M0RmZ084R0J2YVQwK3BKVnU0SGNNdE9KUm10cGdmaDFvME1GTzNs?=
 =?utf-8?B?QmRZUXdTeVFqV2FJQ2ZBbCtURW9uYkVmWmpwbzdWVTFycnlodm1tRkZJWStF?=
 =?utf-8?B?MGpHRVhaamNHbklBUmg1NkZGd0d1ZFpQS0F6M01pYmw3NXkrNGZNNTU0ME9Y?=
 =?utf-8?B?akxWTmJTVm9HaTBlcDFKcUpBczkwQXlBQUZYc3FCMkFCRzlFU3ExeUt6QWNS?=
 =?utf-8?B?c25CUTh2N3JZM25ySmxLZ0JTbEtCQ0ZuV3d5cE9GS2RXbnN2N3RUazhwU0VN?=
 =?utf-8?B?TkJKRVBmOFJmYnVSVWlXSlFNVDRTNklyUUczV1VtMytyWUE4QUlXU2NLOXlX?=
 =?utf-8?Q?sM7La9sMf8FbAh+tAVoQGHw=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b9ab50e-bb02-4dff-8a40-08db3144e8ef
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2023 17:33:44.1755 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D3J81jecvJ3Xp/t0uMBwbQz58jdqzm5BWpQavq7k21vdW7Bs7nFR+Tk/Xji0lh14VveoQsGz4WKUGSY3JO43M83vWDz2pUBiWckiI+KvcJQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6565
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 6/9] drm/i915/pmu: Export counters from all
 tiles
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

On Thu, Mar 30, 2023 at 02:01:42PM +0100, Tvrtko Ursulin wrote:
>
>On 30/03/2023 01:41, Umesh Nerlige Ramappa wrote:
>>From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>>Start exporting frequency and RC6 counters from all tiles.
>>
>>Existing counters keep their names and config values and new one use the
>>namespace added in the previous patch, with the "-gtN" added to their
>>names.
>
>The part about keeping the names is not in the code any more. So something will have to give, either the commit text or the code.
>
>Even without that detail, I suspect someone might want to add them Co-developed-by since I *think* someone did some changes.
>>Interrupts counter is an odd one off. Because it is the global device
>>counters (not only GT) we choose not to add per tile versions for now.
>>
>>Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
>>---
>>  drivers/gpu/drm/i915/i915_pmu.c | 96 ++++++++++++++++++++++++++-------
>>  1 file changed, 77 insertions(+), 19 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
>>index 5d1de98d86b4..2a5deabff088 100644
>>--- a/drivers/gpu/drm/i915/i915_pmu.c
>>+++ b/drivers/gpu/drm/i915/i915_pmu.c
>>@@ -548,8 +548,9 @@ config_status(struct drm_i915_private *i915, u64 config)
>>  	struct intel_gt *gt = to_gt(i915);
>>  	unsigned int gt_id = config_gt_id(config);
>>+	unsigned int max_gt_id = HAS_EXTRA_GT_LIST(i915) ? 1 : 0;
>>-	if (gt_id)
>>+	if (gt_id > max_gt_id)
>>  		return -ENOENT;
>>  	switch (config_counter(config)) {
>>@@ -563,6 +564,8 @@ config_status(struct drm_i915_private *i915, u64 config)
>>  			return -ENODEV;
>>  		break;
>>  	case I915_PMU_INTERRUPTS:
>>+		if (gt_id)
>>+			return -ENOENT;
>>  		break;
>>  	case I915_PMU_RC6_RESIDENCY:
>>  		if (!gt->rc6.supported)
>>@@ -932,9 +935,9 @@ static const struct attribute_group i915_pmu_cpumask_attr_group = {
>>  	.attrs = i915_cpumask_attrs,
>>  };
>>-#define __event(__config, __name, __unit) \
>>+#define __event(__counter, __name, __unit) \
>>  { \
>>-	.config = (__config), \
>>+	.counter = (__counter), \
>>  	.name = (__name), \
>>  	.unit = (__unit), \
>>  }
>>@@ -975,15 +978,21 @@ create_event_attributes(struct i915_pmu *pmu)
>>  {
>>  	struct drm_i915_private *i915 = container_of(pmu, typeof(*i915), pmu);
>>  	static const struct {
>>-		u64 config;
>>+		unsigned int counter;
>>  		const char *name;
>>  		const char *unit;
>>  	} events[] = {
>>-		__event(I915_PMU_ACTUAL_FREQUENCY, "actual-frequency", "M"),
>>-		__event(I915_PMU_REQUESTED_FREQUENCY, "requested-frequency", "M"),
>>-		__event(I915_PMU_INTERRUPTS, "interrupts", NULL),
>>-		__event(I915_PMU_RC6_RESIDENCY, "rc6-residency", "ns"),
>>-		__event(I915_PMU_SOFTWARE_GT_AWAKE_TIME, "software-gt-awake-time", "ns"),
>>+		__event(0, "actual-frequency", "M"),
>>+		__event(1, "requested-frequency", "M"),
>>+		__event(3, "rc6-residency", "ns"),
>>+		__event(4, "software-gt-awake-time", "ns"),
>>+	};
>>+	static const struct {
>>+		unsigned int counter;
>>+		const char *name;
>>+		const char *unit;
>>+	} global_events[] = {
>>+		__event(2, "interrupts", NULL),
>>  	};
>>  	static const struct {
>>  		enum drm_i915_pmu_engine_sample sample;
>>@@ -998,14 +1007,29 @@ create_event_attributes(struct i915_pmu *pmu)
>>  	struct i915_ext_attribute *i915_attr = NULL, *i915_iter;
>>  	struct attribute **attr = NULL, **attr_iter;
>>  	struct intel_engine_cs *engine;
>>-	unsigned int i;
>>+	struct intel_gt *gt;
>>+	unsigned int i, j;
>>  	/* Count how many counters we will be exposing. */
>>-	for (i = 0; i < ARRAY_SIZE(events); i++) {
>>-		if (!config_status(i915, events[i].config))
>>+	/* per gt counters */
>
>Two comments one by another, two styles - the inconsistency hurts.
>
>Not sure why global events needed to be split out into a separate array? Like this below two loops are needed for each stage instead of one. AFAIR one array and one loop would just work because config_status wold report global ones as unsupported for gt > 0.

The idea was to add the legacy events into the global array. These 
events will not have -gtN appeneded to it. Note that on a single gt 
platform, my idea is to have both legacy as well as gt0 events.

ADLP:
actual-frequency
actual-frequency-gt0

MTL:
actual-frequency
actual-frequency-gt0
actual-frequency-gt1

>
>[Comes back later. It looked like this in my code:
>
>        static const struct {
>-               u64 config;
>+               unsigned int counter;
>                const char *name;
>                const char *unit;
>+               bool global;
>        } events[] = {
>-               __event(I915_PMU_ACTUAL_FREQUENCY, "actual-frequency", "M"),
>-               __event(I915_PMU_REQUESTED_FREQUENCY, "requested-frequency", "M"),
>-               __event(I915_PMU_INTERRUPTS, "interrupts", NULL),
>-               __event(I915_PMU_RC6_RESIDENCY, "rc6-residency", "ns"),
>+               /*
>+                * #define __I915_PMU_ACTUAL_FREQUENCY(gt)    ___I915_PMU_OTHER(gt, 0)
>+                * #define __I915_PMU_REQUESTED_FREQUENCY(gt) ___I915_PMU_OTHER(gt, 1)
>+                * #define __I915_PMU_INTERRUPTS(gt)          ___I915_PMU_OTHER(gt, 2)
>+                * #define __I915_PMU_RC6_RESIDENCY(gt)       ___I915_PMU_OTHER(gt, 3)
>+                */
>+               __event(0, "actual-frequency", "M"),
>+               __event(1, "requested-frequency", "M"),
>+               __global_event(2, "interrupts", NULL),
>+               __event(3, "rc6-residency", "ns"),
>
>...
>
>        /* Count how many counters we will be exposing. */
>-       for (i = 0; i < ARRAY_SIZE(events); i++) {
>-               if (!config_status(i915, events[i].config))
>-                       count++;
>+       for_each_gt(i915, j, gt) {
>+               for (i = 0; i < ARRAY_SIZE(events); i++) {
>+                       u64 config = ___I915_PMU_OTHER(j, events[i].counter);
>+
>+                       if (!config_status(i915, config))
>+                               count++;
>+               }
>
>So AFAICT it just worked.

If we decide to drop 9/9, then I would drop the 7/9 and 8/9 and just 
move back to your original patches because they worked as is. The only 
open then would be if we want to have the -gt0 events as well for single 
gt platforms.

The idea is to make this similar to what's implemented for the sysfs 
frequency/rc6 attribues in /sys/class/drm/card0. There is a root version 
as well as a gt/gt0 version. fwiu, gt/gt0 attributes are used on a 
single gt platform.

>
>]
>
>>+	for_each_gt(gt, i915, j) {
>>+		for (i = 0; i < ARRAY_SIZE(events); i++) {
>>+			u64 config = ___I915_PMU_OTHER(j, events[i].counter);
>>+
>>+			if (!config_status(i915, config))
>>+				count++;
>>+		}
>>+	}
>>+
>>+	/* global (per GPU) counters */
>>+	for (i = 0; i < ARRAY_SIZE(global_events); i++) {
>>+		u64 config = ___I915_PMU_OTHER(0, global_events[i].counter);
>>+
>>+		if (!config_status(i915, config))
>>  			count++;
>>  	}
>>+	/* per engine counters */
>>  	for_each_uabi_engine(engine, i915) {
>>  		for (i = 0; i < ARRAY_SIZE(engine_events); i++) {
>>  			if (!engine_event_status(engine,
>>@@ -1033,26 +1057,60 @@ create_event_attributes(struct i915_pmu *pmu)
>>  	attr_iter = attr;
>>  	/* Initialize supported non-engine counters. */
>>-	for (i = 0; i < ARRAY_SIZE(events); i++) {
>>+	/* per gt counters */
>>+	for_each_gt(gt, i915, j) {
>>+		for (i = 0; i < ARRAY_SIZE(events); i++) {
>>+			u64 config = ___I915_PMU_OTHER(j, events[i].counter);
>>+			char *str;
>>+
>>+			if (config_status(i915, config))
>>+				continue;
>>+
>>+			str = kasprintf(GFP_KERNEL, "%s-gt%u",
>>+					events[i].name, j);
>
>So with this patch all old platforms change the event names. This is not how I wrote it, and more importantly, it breaks userspace. Why would we do it?

With this patch alone, yes, this would break the uapi. With the series, 
not really because those events are added back in 9/9. Should we retain 
uapi compatibility in each patch? If yes, then I need to change this.

>
>For reference I dug out my code from 2020 and it looked like this:
>
>+                       if (events[i].global || !i915->remote_tiles)
>+                               str = kstrdup(events[i].name, GFP_KERNEL);
>+                       else
>+                               str = kasprintf(GFP_KERNEL, "%s-gt%u",
>+                                               events[i].name, j);
>
>So on single tile platforms names remain the same.

The series still maintains the same idea, but also adds xxxx-gt0 events 
for the old platforms.

Thanks,
Umesh

>
>Regards,
>
>Tvrtko
>
>>+			if (!str)
>>+				goto err;
>>+
>>+			*attr_iter++ = &i915_iter->attr.attr;
>>+			i915_iter = add_i915_attr(i915_iter, str, config);
>>+
>>+			if (events[i].unit) {
>>+				str = kasprintf(GFP_KERNEL, "%s-gt%u.unit",
>>+						events[i].name, j);
>>+				if (!str)
>>+					goto err;
>>+
>>+				*attr_iter++ = &pmu_iter->attr.attr;
>>+				pmu_iter = add_pmu_attr(pmu_iter, str,
>>+							events[i].unit);
>>+			}
>>+		}
>>+	}
>>+
>>+	/* global (per GPU) counters */
>>+	for (i = 0; i < ARRAY_SIZE(global_events); i++) {
>>+		u64 config = ___I915_PMU_OTHER(0, global_events[i].counter);
>>  		char *str;
>>-		if (config_status(i915, events[i].config))
>>+		if (config_status(i915, config))
>>  			continue;
>>-		str = kstrdup(events[i].name, GFP_KERNEL);
>>+		str = kstrdup(global_events[i].name, GFP_KERNEL);
>>  		if (!str)
>>  			goto err;
>>  		*attr_iter++ = &i915_iter->attr.attr;
>>-		i915_iter = add_i915_attr(i915_iter, str, events[i].config);
>>+		i915_iter = add_i915_attr(i915_iter, str, config);
>>-		if (events[i].unit) {
>>-			str = kasprintf(GFP_KERNEL, "%s.unit", events[i].name);
>>+		if (global_events[i].unit) {
>>+			str = kasprintf(GFP_KERNEL, "%s.unit",
>>+					global_events[i].name);
>>  			if (!str)
>>  				goto err;
>>  			*attr_iter++ = &pmu_iter->attr.attr;
>>-			pmu_iter = add_pmu_attr(pmu_iter, str, events[i].unit);
>>+			pmu_iter = add_pmu_attr(pmu_iter, str,
>>+						global_events[i].unit);
>>  		}
>>  	}
