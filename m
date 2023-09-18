Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB17B7A54CC
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Sep 2023 23:07:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1B6610E0FD;
	Mon, 18 Sep 2023 21:07:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BD2810E0FD;
 Mon, 18 Sep 2023 21:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695071225; x=1726607225;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=tR9rgZjH3Z9L+YJhY++z69SxsHMrOKGERl/Pl0Bf128=;
 b=VKJnnU+9xJlX174p5s8QDN0jnRZBXu4pgqo2a63FBWpRPDAHRxRMOyVH
 vtCEcIQW6Uig9f6hMUgSLzgR7NI/i8JY8RWaEvi2TbobMGAaxSyIHw+sz
 C7EIp3fLvzHpt8xtxQeoMdG3KphuqqewVxMb1svhyqWIFi0ndEpr39tP7
 g0R//jFhy+Lv16tf/tBCNY6LvI1K0s4Oz20FlEbHh154aFdW/pRwPP3E1
 bLWWEtBuAQV01f0BkpY75Rp3OWwyspAqWW2uPZnRa3u+bLaUOzmcL6/uI
 dlqKnKdWnWaZwLMTq5pw9Qi2JaDzZQnfBo7BgtVwOMZ6POJ9fbSQuco0R g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="360026137"
X-IronPort-AV: E=Sophos;i="6.02,157,1688454000"; d="scan'208";a="360026137"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 14:07:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="739334337"
X-IronPort-AV: E=Sophos;i="6.02,157,1688454000"; d="scan'208";a="739334337"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Sep 2023 14:07:03 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 18 Sep 2023 14:07:03 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 18 Sep 2023 14:07:02 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 18 Sep 2023 14:07:02 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 18 Sep 2023 14:07:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rz/9ZGKy7syRhPWwnnN+ymPWXabTXolh1EKoCxYTz6JQzAp0D3n8pBa5b1HrQGsQZ59va0EhPLWl4/b097K0acXAw+TOyQTsRG7992D1z/ybNSgfuV4GO4Fs+juaaBeACCPeMIPnn+i+lrHMbcu0365Z1IkWq1IVS0h0wA7ODLvqVBNs7G7UIo6YkCABSvUCsG4/x7/cFRAjuYawgsKkwJw5GxIo7Qoa8iAJxmfl4NpAvxi797TRgX/DHWBoYut2BLTdkg2qg79qbQB3xvqQDxVGzdHuNraYcDh49E3hhAk/jlwtkeMglcbNewTQ/O2I7z6gkxw/jEgqDStHDl4F/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ICWiJBXtoDO6LCgPm09H9lJb7vG4BZCksvSbBUy2sug=;
 b=ElxUEyyMTB/eyeGuT0g1QcSJ6DBkO/n+POCVyiUu8/bGKXIh3JQFulhJWo2+cKMgUGJHuUfh7mzny4WWI8c1rGxnDVs7PYPaZogfB9aLRYmhWQBQHtE4iApK4zoDu38iPN1gLniU6nzpG/quB2pCpS47c4LGdW8I2oGgJJctrhB/LHyph2I6uuJ7IFQb5+qAmCYdYyd5anqIA+cpuKbV9dT9CpmSz36NAus+zdOwGC4lQqmUbopNhAC0EVk5GqYuR1SnLd8oPrfng6TYS1oltuXGJCDjIHnjKgaFDwXju54ua+ondBzETog4SGGCdvhiI+zh0VghPIoseMgEoXIkdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DM4PR11MB6068.namprd11.prod.outlook.com (2603:10b6:8:64::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6792.24; Mon, 18 Sep 2023 21:07:00 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6792.021; Mon, 18 Sep 2023
 21:07:00 +0000
Date: Mon, 18 Sep 2023 16:06:58 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <wr33dalqsh4xbhht37se22q5gfss3txbgm5qymlqyi2dy5hl7k@4qy6gx4md3ub>
References: <20230915174651.1928176-1-lucas.demarchi@intel.com>
 <20230915174651.1928176-11-lucas.demarchi@intel.com>
 <20230915195041.GG2706891@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230915195041.GG2706891@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: BYAPR05CA0005.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::18) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|DM4PR11MB6068:EE_
X-MS-Office365-Filtering-Correlation-Id: 481526a2-31a5-4a20-06f0-08dbb88b3355
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JqAV4KnhrWXZByTO24U7J6zaGLreZZhB89yucyny+fgH7vryu+C/84py4f0eaXtvOXatmalj/TLFKcHIgnPIFPkGtV5oB0QLwHwVekrsQNhLue5ODvcC8ekeN2Z3rIp1eguGay/vnAT2ENFibGAEzaV0meVyEKqpt/pbrnlo9MktF93z0mRtWEvIo9xTi1/W7gAzS9QRc2tE31Enob+HGpi2CO1nTqya2oi2oGOm979ssLRtJaPdNxNqdy3Fbv2tkyrC11kHrb9SwKo4Zdasz58EVJOLp/W03VqoEn7awGIZpkaSJkq/9OzmIPjYw1PfpsGn2MkWok/7f9dL3AbhmXini/R8rhNaDDGmM/dGyqho1CLllcIlMQ4olexUPMiIOIGdXHjnfLAk3KOKfO+/zQwoawXK9Mx+AsZwCIwmfHcY3c++FL+3Deo0UEdX73tfAITCJGfy+X5lDQ1f/KD/1H6GPdMu5QAPgnZZUzl0G1KofVVXNmQ3eEKhDgQ9dNjbQyfRYHbBtTqLpB3DcubEf0UbyUKjzQfG0m3uk9/eW13RmVOpkWW0NBeW/deUWMMC
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(376002)(136003)(39860400002)(346002)(366004)(396003)(451199024)(1800799009)(186009)(6486002)(5660300002)(6506007)(86362001)(9686003)(54906003)(316002)(6512007)(66556008)(66946007)(41300700001)(66476007)(38100700002)(478600001)(6636002)(82960400001)(450100002)(8936002)(8676002)(6862004)(33716001)(2906002)(30864003)(4326008)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RMWsxCrE0NE8PqCs7YqogUwJq+cHyw0VkyfqgNB4cdmS1lpB7T9nxkoWMxiQ?=
 =?us-ascii?Q?Lx3RzpVURw34u6ezxlgWj6qZbONsGgEURrtrk88xMgg5jkhClM9NMw//r5wk?=
 =?us-ascii?Q?u1FnwTZAJG5AiIkhCxRJc5I0qRsE3iT6HmzQK0FRtDYr32CejIqUtjfqMq6m?=
 =?us-ascii?Q?jJ17d1c+ocDn7ve/MaYpfCOLP5tyRg8aBcXLBqUXsTbfxKS2tlQOQ1PH7pnC?=
 =?us-ascii?Q?MQZ+5J31cPPOKdHvCwF0h+tLYa/U2C8TjL3b6DwiY2hIXNuYzstuWyQnZTqk?=
 =?us-ascii?Q?Q0mhNatFTGId9cFwo1Vt9EOeg0H5o5yXRiYjW6NuHHRsIfDJnntgq9Srv0Sw?=
 =?us-ascii?Q?YsrSWAiQBHOAHkXNMEIgU9aVhVxUtz3qwV2pg8P1hzmnVSLzCSTcUW7mEfWw?=
 =?us-ascii?Q?J0GQGamJ02QLwwpQwEe10u6d01oRFwZKtGyCHCNumf0lalI6pKPn6PHq7xzf?=
 =?us-ascii?Q?jzHLXFdK2npqcUwvAuxYBHqX8+9RUgl/cgCcucnEp6ol0Q13+6RwfdvcM+j9?=
 =?us-ascii?Q?jyndlVAaVhuvSF/9fQUWWLMfNPPQQE5Fi0UvwWfGx0M/ff09Fgz0TjbnmyWd?=
 =?us-ascii?Q?Yy6EixEiSGsuQ/j+97AI1CeVgOqjyWk9DgV5zyDrJbv5oMAUYAEKH2rm4vOP?=
 =?us-ascii?Q?MnB0UPj9lz8cRNw4UXx2YKEAc7BkvgpZXoHrhaCPaBk+EWCDKl9xxRL2N9VA?=
 =?us-ascii?Q?oqc3uIQVIrNfMbUSYSOCdIOaxxTNMoyqTCzEYU8rewlvCE2svGAT3RdbDPU5?=
 =?us-ascii?Q?X486mz4YmwJVtA2APyKJOtHxTUoktefRbouHvqsQiJlcob+9DROl5vAI7gaR?=
 =?us-ascii?Q?/lu0HeCb9IiFzPG5ZCJv7FROKaXrDwmJS8JB0KDbPHQ24MTpiKFO1JnQL/5k?=
 =?us-ascii?Q?jP3D5OA+mu6NU01AJi4iq7pVq/pmexaY6ugzrlb+gf0AYXV6lIOT4r4eZBpY?=
 =?us-ascii?Q?HjeAdqFG24mLoy19iQjWAWCmgCYFErayG8F6/7p9QXvqIqbgSKLKwhbVujAT?=
 =?us-ascii?Q?oBY4PJ/aQYKsrnb3hBuRdDDxsWEbcEJUM+qzBZ+Xg8G+3gn/PT3UHbLIUesM?=
 =?us-ascii?Q?hl/PqkZxkT2uEX2UZUnDiu+oMZp2xDdAcdf2OoJ6NalHJeQUZxE6Ad3hJjil?=
 =?us-ascii?Q?Gb2RlTj2ORqlvH+EB4FANYTFp6UZT5RDlwDqpbWGhc6p2/8vkBGfIxGjKRr9?=
 =?us-ascii?Q?hgPyMVHAHfPwFH6qerkAb59HJMuKYkV/YIi5GG8uzxc2UCGeTyi5u4wOStpb?=
 =?us-ascii?Q?6ngjMhJvGVeN/KC4ScuUZKfwykpadwU5nJJkiLITQEY2gT1EpMILaRCa5qQn?=
 =?us-ascii?Q?SJMhL6lZwKrH6OdA8fBkLYcVnnHcs28bQnxfqBO6RA+rV3aKtBT09ITH0DD3?=
 =?us-ascii?Q?vB3f0KCgmrixdmPsLi/QmEvUB97uX4xiTowdf4Pc4Xs7I5CIaRu1StTl4A1F?=
 =?us-ascii?Q?58f9Otu9QehXYa7sL32Sx9mOMTumqILxJuHX9py0A0O7ijrk+GzaGgDslJOD?=
 =?us-ascii?Q?Bms5DsspwqJL8riKxISVMTFcnuFItllbsN5Gl8FVOH/L7lt6j00pltWrC+1m?=
 =?us-ascii?Q?CatwHdlVwmiPwtJxRwkiWlHKVXSx36fmgwNfhVq6S6kzicyVKTpt055v4Eh+?=
 =?us-ascii?Q?ceHc/9kwNYzfgvAWA4z61iY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 481526a2-31a5-4a20-06f0-08dbb88b3355
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2023 21:07:00.6355 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BhV/MuTniJBmqypToeTZkL+gY6XLnRvnn39HXBm36SWZmTEVhAgYsHrHz91IzBF6u2MIsUK9Lno1zpDT/6s4nxDbRsVkSJdiHP5Q0EyxlRM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6068
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v4 10/30] drm/i915/display:
 Consolidate saved port bits in intel_digital_port
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

On Fri, Sep 15, 2023 at 12:50:41PM -0700, Matt Roper wrote:
>On Fri, Sep 15, 2023 at 10:46:31AM -0700, Lucas De Marchi wrote:
>> From: Clint Taylor <clinton.a.taylor@intel.com>
>>
>> We use multiple variables for HDMI and DisplayPort to store the value of
>> DDI_BUF_CTL register (now called DDI_CTL_DE in the spec). Consolidate it
>> to just one in struct intel_digital_port. This is a preparation step for
>> future changes in D2D enable/disable sequence for xe2lpd that need to
>> save some additional bits.
>>
>> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
>> Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_ddi.c | 36 +++++++++++-------------
>>  drivers/gpu/drm/i915/display/intel_dp.c  |  2 +-
>>  2 files changed, 18 insertions(+), 20 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>> index 4668de45d6fe..29c9386659ff 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -325,26 +325,25 @@ static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
>>  				      const struct intel_crtc_state *crtc_state)
>>  {
>>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>> -	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>>  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>>  	enum phy phy = intel_port_to_phy(i915, encoder->port);
>>
>>  	/* DDI_BUF_CTL_ENABLE will be set by intel_ddi_prepare_link_retrain() later */
>> -	intel_dp->DP = dig_port->saved_port_bits |
>> +	dig_port->saved_port_bits |=
>
>Before this patch, saved_port_bits was a copy of DDI_BUF_PORT_REVERSAL
>and DDI_A_4_LANES, either based on a value we readout from hardware at
>startup, or based on VBT settings.  So it was a value of some
>fundamental settings that we "saved" once at startup time and could then
>just re-use thereafter.
>
>If we're going to start saving per-modeset information (such as lane
>count and link rate), then that's a pretty fundamental change to the
>purpose of this field, and "saved_port_bits" doesn't really feel like an
>appropriate name anymore.  We should probably rename it and add some
>documentation on the field explaining exactly what its purpose is and
>how/when it gets updated.

I will let Clint chime in as the original author here, but from what
I can see this is basically a saved value of DDI_BUF_CTL(port), to be
written when appropriate. We have more than just
DDI_BUF_PORT_REVERSAL and DDI_A_4_LANES.

drivers/gpu/drm/i915/display/intel_cx0_phy.c:   bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
drivers/gpu/drm/i915/display/intel_ddi.c:       dig_port->saved_port_bits |=
drivers/gpu/drm/i915/display/intel_ddi.c:                       dig_port->saved_port_bits |= DDI_BUF_PORT_DATA_40BIT;
drivers/gpu/drm/i915/display/intel_ddi.c:                       dig_port->saved_port_bits |= DDI_BUF_PORT_DATA_10BIT;
drivers/gpu/drm/i915/display/intel_ddi.c:               dig_port->saved_port_bits |= ddi_buf_phy_link_rate(crtc_state->port_clock);
drivers/gpu/drm/i915/display/intel_ddi.c:                       dig_port->saved_port_bits |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
drivers/gpu/drm/i915/display/intel_ddi.c:       dig_port->saved_port_bits &= ~DDI_BUF_EMP_MASK;
drivers/gpu/drm/i915/display/intel_ddi.c:       dig_port->saved_port_bits |= signal_levels;
drivers/gpu/drm/i915/display/intel_ddi.c:       intel_de_write(dev_priv, DDI_BUF_CTL(port), dig_port->saved_port_bits);
drivers/gpu/drm/i915/display/intel_ddi.c:                       dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
drivers/gpu/drm/i915/display/intel_ddi.c:               dig_port->saved_port_bits |= XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
drivers/gpu/drm/i915/display/intel_ddi.c:       if (dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL)
drivers/gpu/drm/i915/display/intel_ddi.c:               dig_port->saved_port_bits &= ~XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
drivers/gpu/drm/i915/display/intel_ddi.c:       dig_port->saved_port_bits |= DDI_BUF_CTL_ENABLE;
drivers/gpu/drm/i915/display/intel_ddi.c:               if (dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL)
drivers/gpu/drm/i915/display/intel_ddi.c:               dig_port->saved_port_bits |= DDI_PORT_WIDTH(lane_count);
drivers/gpu/drm/i915/display/intel_ddi.c:               dig_port->saved_port_bits |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
drivers/gpu/drm/i915/display/intel_ddi.c:       intel_de_write(dev_priv, DDI_BUF_CTL(port), dig_port->saved_port_bits);
drivers/gpu/drm/i915/display/intel_ddi.c:       dig_port->saved_port_bits |= DDI_BUF_CTL_ENABLE;
drivers/gpu/drm/i915/display/intel_ddi.c:       intel_de_write(dev_priv, DDI_BUF_CTL(port), dig_port->saved_port_bits);
drivers/gpu/drm/i915/display/intel_ddi.c:       dig_port->saved_port_bits |= DDI_BUF_CTL_ENABLE;
drivers/gpu/drm/i915/display/intel_ddi.c:       intel_de_write(dev_priv, DDI_BUF_CTL(port), dig_port->saved_port_bits);
drivers/gpu/drm/i915/display/intel_ddi.c:       if (dig_port->saved_port_bits & DDI_A_4_LANES)
drivers/gpu/drm/i915/display/intel_ddi.c:               dig_port->saved_port_bits |= DDI_A_4_LANES;
drivers/gpu/drm/i915/display/intel_ddi.c:               dig_port->saved_port_bits =
drivers/gpu/drm/i915/display/intel_ddi.c:               dig_port->saved_port_bits =
drivers/gpu/drm/i915/display/intel_ddi.c:               dig_port->saved_port_bits |= DDI_BUF_PORT_REVERSAL;
drivers/gpu/drm/i915/display/intel_display_types.h:     u32 saved_port_bits;
drivers/gpu/drm/i915/display/intel_dp.c:        dig_port->saved_port_bits = intel_de_read(dev_priv, intel_dp->output_reg);
drivers/gpu/drm/i915/display/intel_tc.c:        bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;

Lucas De Marchi

>
>>  		DDI_PORT_WIDTH(crtc_state->lane_count) |
>>  		DDI_BUF_TRANS_SELECT(0);
>>
>>  	if (DISPLAY_VER(i915) >= 14) {
>>  		if (intel_dp_is_uhbr(crtc_state))
>> -			intel_dp->DP |= DDI_BUF_PORT_DATA_40BIT;
>> +			dig_port->saved_port_bits |= DDI_BUF_PORT_DATA_40BIT;
>>  		else
>> -			intel_dp->DP |= DDI_BUF_PORT_DATA_10BIT;
>> +			dig_port->saved_port_bits |= DDI_BUF_PORT_DATA_10BIT;
>>  	}
>>
>>  	if (IS_ALDERLAKE_P(i915) && intel_phy_is_tc(i915, phy)) {
>> -		intel_dp->DP |= ddi_buf_phy_link_rate(crtc_state->port_clock);
>> +		dig_port->saved_port_bits |= ddi_buf_phy_link_rate(crtc_state->port_clock);
>>  		if (!intel_tc_port_in_tbt_alt_mode(dig_port))
>> -			intel_dp->DP |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
>> +			dig_port->saved_port_bits |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
>>  	}
>>  }
>>
>> @@ -1450,7 +1449,7 @@ hsw_set_signal_levels(struct intel_encoder *encoder,
>>  		      const struct intel_crtc_state *crtc_state)
>>  {
>>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>> -	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>> +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>>  	int level = intel_ddi_level(encoder, crtc_state, 0);
>>  	enum port port = encoder->port;
>>  	u32 signal_levels;
>> @@ -1467,10 +1466,10 @@ hsw_set_signal_levels(struct intel_encoder *encoder,
>>  	drm_dbg_kms(&dev_priv->drm, "Using signal levels %08x\n",
>>  		    signal_levels);
>>
>> -	intel_dp->DP &= ~DDI_BUF_EMP_MASK;
>> -	intel_dp->DP |= signal_levels;
>> +	dig_port->saved_port_bits &= ~DDI_BUF_EMP_MASK;
>> +	dig_port->saved_port_bits |= signal_levels;
>>
>> -	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
>> +	intel_de_write(dev_priv, DDI_BUF_CTL(port), dig_port->saved_port_bits);
>>  	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
>>  }
>>
>> @@ -3145,7 +3144,6 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
>>  	struct drm_connector *connector = conn_state->connector;
>>  	enum port port = encoder->port;
>>  	enum phy phy = intel_port_to_phy(dev_priv, port);
>> -	u32 buf_ctl;
>>
>>  	if (!intel_hdmi_handle_sink_scrambling(encoder, connector,
>>  					       crtc_state->hdmi_high_tmds_clock_ratio,
>> @@ -3211,7 +3209,7 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
>>  	 * is filled with lane count, already set in the crtc_state.
>>  	 * The same is required to be filled in PORT_BUF_CTL for C10/20 Phy.
>>  	 */
>> -	buf_ctl = dig_port->saved_port_bits | DDI_BUF_CTL_ENABLE;
>> +	dig_port->saved_port_bits |= DDI_BUF_CTL_ENABLE;
>>  	if (DISPLAY_VER(dev_priv) >= 14) {
>>  		u8  lane_count = mtl_get_port_width(crtc_state->lane_count);
>>  		u32 port_buf = 0;
>> @@ -3224,13 +3222,13 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
>>  		intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(port),
>>  			     XELPDP_PORT_WIDTH_MASK | XELPDP_PORT_REVERSAL, port_buf);
>>
>> -		buf_ctl |= DDI_PORT_WIDTH(lane_count);
>> +		dig_port->saved_port_bits |= DDI_PORT_WIDTH(lane_count);
>>  	} else if (IS_ALDERLAKE_P(dev_priv) && intel_phy_is_tc(dev_priv, phy)) {
>>  		drm_WARN_ON(&dev_priv->drm, !intel_tc_port_in_legacy_mode(dig_port));
>> -		buf_ctl |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
>> +		dig_port->saved_port_bits |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
>>  	}
>>
>> -	intel_de_write(dev_priv, DDI_BUF_CTL(port), buf_ctl);
>> +	intel_de_write(dev_priv, DDI_BUF_CTL(port), dig_port->saved_port_bits);
>>
>>  	intel_wait_ddi_buf_active(dev_priv, port);
>>
>> @@ -3448,8 +3446,8 @@ static void mtl_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
>>  	mtl_port_buf_ctl_program(encoder, crtc_state);
>>
>>  	/* 6.i Configure and enable DDI_CTL_DE to start sending valid data to port slice */
>> -	intel_dp->DP |= DDI_BUF_CTL_ENABLE;
>> -	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
>> +	dig_port->saved_port_bits |= DDI_BUF_CTL_ENABLE;
>> +	intel_de_write(dev_priv, DDI_BUF_CTL(port), dig_port->saved_port_bits);
>>  	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
>>
>>  	/* 6.j Poll for PORT_BUF_CTL Idle Status == 0, timeout after 100 us */
>> @@ -3499,8 +3497,8 @@ static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
>>  	    (intel_tc_port_in_dp_alt_mode(dig_port) || intel_tc_port_in_legacy_mode(dig_port)))
>>  		adlp_tbt_to_dp_alt_switch_wa(encoder);
>>
>> -	intel_dp->DP |= DDI_BUF_CTL_ENABLE;
>> -	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
>> +	dig_port->saved_port_bits |= DDI_BUF_CTL_ENABLE;
>> +	intel_de_write(dev_priv, DDI_BUF_CTL(port), dig_port->saved_port_bits);
>>  	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
>>
>>  	intel_wait_ddi_buf_active(dev_priv, port);
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 189c5737e63a..2346cd32f5a7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -6025,7 +6025,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
>>  	intel_dp->pps.active_pipe = INVALID_PIPE;
>>
>>  	/* Preserve the current hw state. */
>> -	intel_dp->DP = intel_de_read(dev_priv, intel_dp->output_reg);
>> +	dig_port->saved_port_bits = intel_de_read(dev_priv, intel_dp->output_reg);
>
>Isn't this going to potentially clobber the lane reversal setting we
>determined from the VBT near the beginning of intel_ddi_init()?
>
>
>Matt
>
>>  	intel_dp->attached_connector = intel_connector;
>>
>>  	if (_intel_dp_is_port_edp(dev_priv, intel_encoder->devdata, port)) {
>> --
>> 2.40.1
>>
>
>-- 
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
