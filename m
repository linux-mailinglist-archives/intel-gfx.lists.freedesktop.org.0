Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2167873AF
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 17:09:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1783510E591;
	Thu, 24 Aug 2023 15:09:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A054D10E593;
 Thu, 24 Aug 2023 15:09:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692889758; x=1724425758;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Q41VVQBaL1DpV5MuslxvNLJbpd5sNfakaEGNUiY/dUg=;
 b=XHPNjMCAVJM3Jkz7CLb8dC0/L1dGLdepgWoU0/XzaEqUaXkXtqhDSuWb
 4mN5tlPxM3bcy+3geCQ4rS7AvQTruCkazDvZEitEg8Tj4ZmGwbYS4mdwy
 ckYHKe6f9Hds/peHevwxWAeV+FcMDiGsXaLdTCSXe5/5OZPEtd+8ttaD4
 OQqaYurv6lwqnCHiRAqvoaz2iQNXxvbKIoLS7sKZtBhV3bX8Syvxpta/r
 Tw6Dqzek0aM+fqbT3a++emVoNUxL5pI7n68Ehjv2OIgmDWcSTb35mAq4F
 tpB7Am5Je31b3Opdkd9e55x87JCgoU0YpeXbofynLKdgX40kBohZEHDEU Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="440823630"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="440823630"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 08:08:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="766566073"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="766566073"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 24 Aug 2023 08:08:38 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 08:08:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 08:08:37 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 08:08:37 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 08:08:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q7qa0PoGfQHLNcwVGag2Gz13C160EFAG+AXJfrVotb1u5Zlea+4+560TFz4fo7FEAJoornC8evEs6p3/ual3bes0EyCH5r9D+0Jo8WdkD7wRe3IF/yi+PMYRogizUVvYnYb+nACGlcFPkTTpC8+P9br8gHGE10g7aKTMg3aNTTymsFCoVrUPRAXz6+4cCCDhwFY3avjU337WvCAPlMod69EgUP8P4QH92XOzYXVWqd+nYCueNmQc9l72mJvsfKOLVaK4ucxNJ+INcwnUyGdGeCokaBOlVEIZ7Y90ALV+fMvX84mjRHL1IhsHIrM18GsiWthnTscSTULykZVlr2KlVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4v2anYaagHIceeIZuNnbTlVEpKFXx1TE9EYZe/nmVYw=;
 b=g+a22nSvRRLx2kFAVxBJBOp6XlnVIi3LVwomcfOLcUNomxZbrznysm45+KidkipyDu9+/3e5RmLYAUrMgJfGBQWGjNkZ8pRTME9M0PCHn3FIRWKMPeKoz0753VkCU0t2Gtm7sAoN9XpgU/r3Q++/HyqpA9saEKd3873Uu7Mpz4nuz5kp1KLKeYVcMsj/H1NczjH5h9GDi5OBohoMQgYuaWOxzTrOIE7Es+2oTWmT58mAi5AEzW80ps0rDOTgpQpZFHu65rxeVnM96dplZKD/1Zt83ngS83XtHzwtUgp3l1/Z4h756R5OvkJyXP43yNxDx2JU5XcVU8NzF0XEkTaNzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by BN9PR11MB5467.namprd11.prod.outlook.com (2603:10b6:408:100::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 15:08:35 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 15:08:35 +0000
Date: Thu, 24 Aug 2023 08:08:32 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Message-ID: <uglddndjdywwvqb6suwkeqc64jjkxyp54nj5gsw7hcice36lqy@i33djkz7ivmo>
X-Patchwork-Hint: comment
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-10-lucas.demarchi@intel.com>
 <SN7PR11MB6750DB914E983DFCB1449811E31DA@SN7PR11MB6750.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <SN7PR11MB6750DB914E983DFCB1449811E31DA@SN7PR11MB6750.namprd11.prod.outlook.com>
X-ClientProxiedBy: MW4PR03CA0117.namprd03.prod.outlook.com
 (2603:10b6:303:b7::32) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|BN9PR11MB5467:EE_
X-MS-Office365-Filtering-Correlation-Id: fa336303-8ee6-4f3a-4f49-08dba4b3fcbe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MIK7p7IH7C6eV0d3zbq2kKOuJB/vEIIRbhdQulm32VWDgTJmcphMMUH4bCAKSrctZhoO51fazxOXhd8F5ofjx+F6rLgxplbwZ2k+NMK1elib2bSLsfD6r0INUa8sr5dkPaadgWIy+EGdcgHTP/ZIFSRMrqTELJvYYeEgLVGz+lCLu84zSkv7TLk6HZlvo5SgWvMbT0m/lCP/4BYNB2lt7/y+1j32fkYMYBvcfNePDYSxRYMurAo3wNOtcN0MQaV6BW7vxMA4mV4oBy61NkPK4hYfEmDTck16vblctqhY6FyrcNxbmFg0lEQNkJG9TNib8htvCGtRICBJkbXG9KRXuRMJzPf213dX7mLgOEGoSqvyEPTUY0dPUXvMpUkBusDnDKSLayDYaRS/y19B+CAVKzWEpFxx8hgkRBYNhsX43RNTDtm2/7MxGC/W1vmsMjPFN0yrndPcC4NUs8mhSiQUQbmNBLBr9KhTdzzPXB1lsPcMVFWsKS2LlHFfrkwEWMTBPxuz6mMT2OP4O4xZMj+P3MRzk7ScmFZ7LHIoGuvnhvdCz1YGP7WmaYTNf0JJM5K4UZEPMzOB/eDINM2kaE5lgA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(376002)(39860400002)(396003)(366004)(136003)(346002)(186009)(1800799009)(451199024)(5660300002)(107886003)(4326008)(8676002)(8936002)(6862004)(450100002)(83380400001)(26005)(6666004)(38100700002)(82960400001)(66556008)(66476007)(66946007)(33716001)(54906003)(6636002)(316002)(478600001)(966005)(53546011)(41300700001)(6512007)(9686003)(2906002)(6506007)(86362001)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WXWlftw2+TQ/GdW7cCFfwvhXYIh9rE+XFk0PJQqgP06AUvGLNEZ9dAaQwtw9?=
 =?us-ascii?Q?wPScJbG0Mhysrl5R9iJZ+A85uKs+Tr1mK0kSFLHF/iCM8krAS2Fve9EXPwr7?=
 =?us-ascii?Q?PYpvU8rmg4VigiEvGAxRihAcl8szn+iUKNlLSo2sbZmrDEJcO8D/FwZKVdDT?=
 =?us-ascii?Q?Mm7UXuMbSjSiuDXFzAIyL0501f/qb7oTebaPV69/Ryy5MdGiWQWi0W+kBvX7?=
 =?us-ascii?Q?xmEz6XNgbl/MW6kjZdWpweP5QHlkRfKuz49HTS3COr+SgCdgsTrp8cv4E836?=
 =?us-ascii?Q?an2PQLbAqKm5kQEavciLvRb2D3bX7loIdl7ntxInKaOVOQdsKWXNUGlQp8ex?=
 =?us-ascii?Q?TilOhHtgXaMFCC/6WT3RDlewGQAZNrT3c9eNXAniJKgjKVGq5IMGPW/mMvvy?=
 =?us-ascii?Q?KvSDGkYm+4Svdvl8zZMlSYJcrUau7Mnxe9io43CuwZ9S7nBjOD5pTGOmly3n?=
 =?us-ascii?Q?CMNuSV9UT61po7LAszUvDWWXINErDqR2U6sc3K1pXITZ2tbxruQMniWQjciP?=
 =?us-ascii?Q?gXzOj+Y8NZh6vXlmRaCdthdnqi+Q/RBDi9lXkLVajhQ0BV/H+naN6yydDKQa?=
 =?us-ascii?Q?a7u8AV/5svXg6OcWO82Zs5JbNRukGlGAD8PADs1evUdMZPMqpiF5IB/hqDbo?=
 =?us-ascii?Q?Pt5yXLbml8QdFnHj8iwkBFgRDoZlANRYSbkoQaXri/X2m9iDBHh6veXMRXHi?=
 =?us-ascii?Q?YVCyFPzh+IX/AYEkAtLDzGbcQ8OHULcm79dMC7G1vSgmj72PH3u8efi5BXUp?=
 =?us-ascii?Q?dlOFW5imSqEhk4K8MQBxkr0dPmVx0T5raTvnxLHAjnhzV1Rr0anGrQ7Ao9I9?=
 =?us-ascii?Q?8NYRz70Z/yxZV/hP+WpXygY1u424IJtvDbgk1C5tZuMrh7hGvepaCOnssUIE?=
 =?us-ascii?Q?42harlReLwW2mqttkpaoSwERLNBY+dSpHsULlonHQAkpD/u5B/TVFv9K6gmo?=
 =?us-ascii?Q?Jr7dQBTQ3QbeAiFP3OwU3k8ot13kjc5hyranmos2964jYc23Ha1yBQCrUide?=
 =?us-ascii?Q?EF9Az6nR2R+Py87rICi5UpQKvZGDXdW7HP2XLeslf5IhX0HGamxkUEDlpDCA?=
 =?us-ascii?Q?GnFw7AcfnatJ03LGJFKFJOZYgV8uwApf/M0zdmxejMgAGmJCtiW5ztQr3O84?=
 =?us-ascii?Q?ANJ0I0vkn5kay9OTx9yzxWzzD8QMBFZfA5R4qHBg3afJXWoSTT1hngSyUvbd?=
 =?us-ascii?Q?+uvtEwkIbXRFt9HMKIIdSqgPrH9xzVHX+FSWCyTGxgIZSQpUV0AvjcIDzs3e?=
 =?us-ascii?Q?8GgLP3Khx5jNETBSoXFfWWHyfnYNGbH1PJKXMNgTnse7COQtwb9ayIcpk7zs?=
 =?us-ascii?Q?8pQTjXFOKvuv2UWJTkSCGhSS2DW5IMndmHCXf04d+eLBe++GCZMu56TF4v3l?=
 =?us-ascii?Q?f8LnVMh3VJVW/h+/xK4OTa7aRzhAyimNv+0nx++/PZ730xaV4lY3Ps1gT6PS?=
 =?us-ascii?Q?kveFbgpXThO6WVuGJ8N+Oxn/Z80j6N/SVnkNjFu+4lxGFqa1oK016i5VV44Q?=
 =?us-ascii?Q?BHGWUv1aSNfyprZKnM+9cwVpTMgtQbThifY8NR9p74KssvzfZ4K+4PfImn2f?=
 =?us-ascii?Q?1CDE2QrELbEcYWjSZOIVp3cpqhpBYJIcHqbDy6Du5KpVtpGFqbLOY63IxdGZ?=
 =?us-ascii?Q?4g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fa336303-8ee6-4f3a-4f49-08dba4b3fcbe
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2023 15:08:35.1351 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NzxRqCUZHN+ZTCmHrL6rKbqOcLDQoAXOoZcDuEYBvK8QGm9JEHmEih18m2UBBBMPAherta3ARobXTCeH4lVVRHJI7ayZzRUUkx0LsUcCE3s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5467
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 09/42] drm/i915/tc: move legacy
 code out of the main _max_lane_count() func
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Suraj,

On Thu, Aug 24, 2023 at 05:43:15AM +0000, Kandpal, Suraj wrote:
>
>
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Lucas
>> De Marchi
>> Sent: Wednesday, August 23, 2023 10:37 PM
>> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
>> Cc: Coelho, Luciano <luciano.coelho@intel.com>
>> Subject: [Intel-gfx] [PATCH 09/42] drm/i915/tc: move legacy code out of the
>> main _max_lane_count() func
>>
>> From: Luca Coelho <luciano.coelho@intel.com>
>>
>> This makes the code a bit more symmetric and readable, especially when we
>> start adding more display version-specific alternatives.
>>
>> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
>> Link: https://lore.kernel.org/r/20230721111121.369227-4-
>> luciano.coelho@intel.com
>> ---
>>  drivers/gpu/drm/i915/display/intel_tc.c | 32 +++++++++++++++----------
>>  1 file changed, 19 insertions(+), 13 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c
>> b/drivers/gpu/drm/i915/display/intel_tc.c
>> index de848b329f4b..43b8eeba26f8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_tc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
>> @@ -311,23 +311,12 @@ static int mtl_tc_port_get_max_lane_count(struct
>> intel_digital_port *dig_port)
>>  	}
>>  }
>>
>> -int intel_tc_port_fia_max_lane_count(struct intel_digital_port *dig_port)
>> +static int intel_tc_port_get_max_lane_count(struct intel_digital_port
>> +*dig_port)
>>  {
>>  	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
>> -	struct intel_tc_port *tc = to_tc_port(dig_port);
>> -	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
>>  	intel_wakeref_t wakeref;
>> -	u32 lane_mask;
>> -
>> -	if (!intel_phy_is_tc(i915, phy) || tc->mode != TC_PORT_DP_ALT)
>> -		return 4;
>> +	u32 lane_mask = 0;
>>
>> -	assert_tc_cold_blocked(tc);
>> -
>> -	if (DISPLAY_VER(i915) >= 14)
>> -		return mtl_tc_port_get_max_lane_count(dig_port);
>> -
>> -	lane_mask = 0;
>>  	with_intel_display_power(i915, POWER_DOMAIN_DISPLAY_CORE,
>> wakeref)
>>  		lane_mask = intel_tc_port_get_lane_mask(dig_port);
>>
>> @@ -348,6 +337,23 @@ int intel_tc_port_fia_max_lane_count(struct
>> intel_digital_port *dig_port)
>>  	}
>>  }
>
>Rather than having two functions:
>mtl_tc_port_get_max_lane_count()
>& intel_tc_port_get_max_lane_count() that both call:
>with_intel_display_power(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref)
>                lane_mask = intel_tc_port_get_lane_mask(dig_port);
>to get the lane mask the us directly pass the lane_mask to the above two functions
>and make the call for getting the lane_mask common i.e lets call it in
>intel_tc_port_fia_max_lane_count().

Maybe, but I will let this to be decided between you and Luca. Pasting
from the cover letter:

         3. Patches 7 through 10 can also be ignored: they are not
            applied yet, but being reviewed in other patch series by its
            author[2].

         [2] https://patchwork.freedesktop.org/series/120980/

The only reason I added them here is that since this series will take
some time to be applied, I figured it would be better not to create
unnecessary conflicts. I expect these patches to merge soon so I will
just drop them in the next revision of this series.

thanks
Lucas De Marchi

>
>Regards,
>Suraj Kandpal
>>
>> +int intel_tc_port_fia_max_lane_count(struct intel_digital_port
>> +*dig_port) {
>> +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
>> +	struct intel_tc_port *tc = to_tc_port(dig_port);
>> +	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
>> +
>> +	if (!intel_phy_is_tc(i915, phy) || tc->mode != TC_PORT_DP_ALT)
>> +		return 4;
>> +
>> +	assert_tc_cold_blocked(tc);
>> +
>> +	if (DISPLAY_VER(i915) >= 14)
>> +		return mtl_tc_port_get_max_lane_count(dig_port);
>> +
>> +	return intel_tc_port_get_max_lane_count(dig_port);
>> +}
>> +
>>  void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_port,
>>  				      int required_lanes)
>>  {
>> --
>> 2.40.1
>
