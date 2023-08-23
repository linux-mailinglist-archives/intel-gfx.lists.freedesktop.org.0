Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 452B5786141
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 22:14:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC59910E0DA;
	Wed, 23 Aug 2023 20:14:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D63F10E0DA;
 Wed, 23 Aug 2023 20:14:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692821668; x=1724357668;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=CwIyDiFTjnJETC9AGLMidNY9safHBoM4qLHbJJs1qCA=;
 b=SZ/R1d3rCIIhrIx3Gr4EwRhOrIXzM0B6eIbKtQTOCKubRZrWXcyIjQuS
 R9CPfAhMYCzspOM8hvZQIasiFiKIlfTsWMQNN2xyjHM5b2ksyuxG/1NXO
 k0SfjIwq1txiQcN28dKbKki3K9CMch20yUqmJ+mlxecNIQYsgKLxz1nCy
 YSHCrxUM+bUMF9U2479T6vxdoqcxVgWTmvdSleoAbJLPzIwnltbJ+x1dv
 oq1rENu9JNYxrqZYQIGlVUqeGXVIbAwmJbsKzdfSyTx5kvbjiR1idN6bj
 ANakX9F+ue8xsfHRRH0Td+hc7khCj9dJQ0QYwIobwsFknmIN0+Zj2U3KY w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="353807801"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="353807801"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 13:14:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="771843170"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="771843170"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 23 Aug 2023 13:14:27 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 13:14:26 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 13:14:26 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 13:14:26 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 13:14:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QtvjwxdgFlg/fokx3In73poZpX30EmGNCqp0UzSQg57HFbehbUki7YoCncMmAn5fRCdFZtjVHcdKEdXzil0YGriNOW0a7XE4BNZ32/6xq9NUPK0nQxsUcLA4O7goraH3C+Dk+mnj0Hc/r8GA1LvxLSUWtri269cWtfBmtdBsM6rRtNKIkdpFYEKLyenBPafrMTe/SNzctzBdV+QTQgRUlU3t2KV5s0Zxii6LEW4lxmaqHtJBd6qu9VwStcjzVpr1N+z/2ZSyIPeCAKvsVrpRalANSpBdV4y3I3dy7qBP08r39+lcDmRwhCUaFcR6RkR5hrBZj3FN7Dta2sngC74HkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JVjJseZQpIBLKtAVcB1rQ9Lw5iHYAc8CcSiW/6cPo+A=;
 b=haW13ab8kCgu3VmXz+EC3aQFYDRhFy0FrpAn006MmkUc6uhPmTK9raZ6eZ0UqBFdAjOkUAkzS7Bip6HItIpyUaEZSTpet2v1Vtc1chzm4gOQB2oyomZPdkQAq+Lu2N5FtguKjCeRNYZBo3hYMtTOf7MWzQO1AVNaAvUbnty7uZhyWEtQ7a/I4ypnjZg+2fiRO9TBT9zGfn5X/VXMi0af97N5alnLUi/wJ0ol2cqFbp5+hVozkhQc48Pvd9Gp9FpjyGWDk9h0m5Ushe9RwrjHGBFPQKowybZvvHVQ2O414ZZa0al1wDWosWIFMaIQVd0O8361TFEqHx2ex9Z0m4Sx1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DM4PR11MB5996.namprd11.prod.outlook.com (2603:10b6:8:5f::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.20; Wed, 23 Aug
 2023 20:14:24 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6699.026; Wed, 23 Aug 2023
 20:14:23 +0000
Date: Wed, 23 Aug 2023 13:14:21 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <mrs7lh6osvof4v2znrpitukfghifqqyefcnhlg6wbivtozvuhh@semyhcvaw66s>
X-Patchwork-Hint: comment
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-26-lucas.demarchi@intel.com>
 <20230823200144.GG1529860@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230823200144.GG1529860@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: MW4PR03CA0152.namprd03.prod.outlook.com
 (2603:10b6:303:8d::7) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|DM4PR11MB5996:EE_
X-MS-Office365-Filtering-Correlation-Id: 90379926-809d-4609-12d2-08dba4158b0e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vj0PbSBPmMrY8wLEMsui1gViiqhwukz3j6IrXe8bflMcE/UTJ2NHtavB6fYJoCTIhTMvc++uNU+KgAtpmMEIJL5RporMe4+a/yXyEI40n61jVgQtbyWhP1OXYO03rNBMzhx/HR+atZ+vXXY3Hs43XBUSeYZYWv5LopMIesMw9FvTdzAGtmpmpOcsa9AtocY0cnjiWp36XcSbR5GJFLzvX+dhyMkTuXNfhgGM+0ZnSaDXTIWx9cs3AQOqfmMAIJezFYeGM7I+GNaFBca6FcZRnbngoXPvL5Hab3l/t5piWxkQZMUv9BBdZEFFjIsZb8IUJyOxMfq2zECj7M+acHTn8aY5MaBQ6kpXf2eMDzV22WKDpLB+3etoYXXlFXfVbHwGEa77TGoynpCZfif8piG7mVPViXChhOxQldisovOsG7uOXUFZ04UoxvlfOhykl/hats8JW34uetffYOgVLIgeLLQn+66q5e7ctldTNn0PFD/fIDPsN0ep3Qb+1ObM82Us4e5i7/Hqk5jrpYEtT9Pk0T/7McvsiBlClpMRRYS1BJ1pFxwdFRPfQKYh1LTU8Yxz
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(346002)(396003)(136003)(39860400002)(366004)(376002)(186009)(451199024)(1800799009)(6486002)(6506007)(38100700002)(9686003)(82960400001)(6512007)(86362001)(26005)(83380400001)(33716001)(66476007)(2906002)(66946007)(6636002)(66556008)(41300700001)(316002)(5660300002)(478600001)(4326008)(450100002)(8676002)(8936002)(6862004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Wb7YskJRr2WAjDqV7j+Ytgx1b+RkpMizQOUFpjoxaadWNYRs6zDuHFGST4l4?=
 =?us-ascii?Q?CPbrLKDBQmDuKXoQ1xyuAsXc7arI2JSibfDtg2LhH1GmB3JRGYqcyReUX0vE?=
 =?us-ascii?Q?93Kez2+g6tV/cL4fN06S2etQGfg6EgieuZxLEHe0j2CjcX2VeDKnwdRnzLRZ?=
 =?us-ascii?Q?AkFVqtOSkxE5raQcS3j9JWLd1y2Wcr4/N98Vy8FnH3dsJRw8G2+MzQqS84Va?=
 =?us-ascii?Q?LTWUe77Jrh4j4Kp7HveJKOxAMB/TzmalpjyRECPsk7EUaoXaMAf0eEJkVonM?=
 =?us-ascii?Q?PDDzVQpdh6M6XzJ5AyK3ZcOWp7kLm9F0hEcNxziKAvWuLaYpgk8LN5+rXgmv?=
 =?us-ascii?Q?ffu9DPdR6pideIQYWGNKTqcG3ys98DS+4UXRFCwK/8dHT28doKCeRWXeF5Ur?=
 =?us-ascii?Q?ImZkyebBrvao7bZSph/zKlIQ72wmQmv5/aQHf3FE63qs4kW07vn9pqJOJ3Yg?=
 =?us-ascii?Q?+knjh8UkPGyzS1VMS38tcBtnp8AFui7QyVbnm8sFWvs5zWV5fa4+tRJ4vvJC?=
 =?us-ascii?Q?ksFf+9CMGkvjzPXkkGYi5UpfYS7qBhpdoVRXla3im7l1sOhal1vSJXuM4RI4?=
 =?us-ascii?Q?KWrpnrelQ2pvnjoPpzJb4NFuVeIJfSClC2qSEzzQ/+3WYYs9/bG6XrhWdEPq?=
 =?us-ascii?Q?kUA+Hxmh/K6wamsNU3irzK5f15uO225Y+ZEer4hID8VMBv0pVT36MQyD8Ikd?=
 =?us-ascii?Q?JQZv/o2sRZ5ePhbbpzaQsIjypnDr8vCh7IuihjVSPAi8gLhMxAaKinJBHmA6?=
 =?us-ascii?Q?VmMFTbHPU3Y7ZmuxT9oPjM3bTCpwxN8GIVGTytaS5WMcfF/ejkep69MELkMF?=
 =?us-ascii?Q?t24EgLh3GSJsp6Jq+A3Di76+0tKIWJ8tcgcs6e8tnH5+vikS+/K60W3TjQ09?=
 =?us-ascii?Q?mb4HyPzEUa78xr8d63AySNv+Pb09VZ4jxEGz6vTyK08habykCXlXFqW0F9Ik?=
 =?us-ascii?Q?LcgHcJgMyTf2vQnzl/u9mi6hVS99OpytUg9nyI6qtwP30fNVLBuOpLQFWkg4?=
 =?us-ascii?Q?m64VZUZcAeXxJ80XpQVa1vcwyhev5TQhoUHrDbZJbN24QdqAFL5MVkygSNx6?=
 =?us-ascii?Q?tuHC0eUPYXM0MSJR4qSZtgJjHQ/KxwVWtgB29/whXpPgK6fwy+/XqxpD4cgY?=
 =?us-ascii?Q?eS75b7JVEK32FzGOG7RoRAtUt/pVlwnLvHSzERnH22IZXLHFvoQZ1y5aN5eJ?=
 =?us-ascii?Q?6P6pxwDeYhmb0WShtVxQHxiUDHKV+MAbhDJxYzSCED5ZRTXMA/MrUyj9wP4H?=
 =?us-ascii?Q?/ta7g5mWivd8ikANtrneXLaR9bEhLacmI3WyQZqrQIDY4dtiVJygEuem4mPE?=
 =?us-ascii?Q?zKr2jKde2Ww1ChW1SP+gyJ21vmc5S6bzRzXbB01o3HRBOSWy3+KranMHkgDf?=
 =?us-ascii?Q?Dv08IfOGZ669vTJ4mhMBImgyFQyxZUeVof1dj72T31LkcOTQKO0WL2eElOW9?=
 =?us-ascii?Q?s3afW61Fqs/rYiYPbylwvDCfpoCAZbrkFHdusICELv5SEjRdbQ2mlzm1BuH1?=
 =?us-ascii?Q?eP3ADD+2p0e7wKF20c+w17X5ngFA4uAxfXX7GbRzT6Poln1XukdsmSKXPRyY?=
 =?us-ascii?Q?UKIJkDtTbDtmFiwa8aPIAAnRL2bTfC2hzUi10OGFd9n3CG646t8bhHCsW1FB?=
 =?us-ascii?Q?kA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 90379926-809d-4609-12d2-08dba4158b0e
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 20:14:23.8675 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 15bKoACbehd5fm3syGet0r1BfFV920pddmV40kzM2eJYRbDJSKX+bh+fcRB+eaqlbyotkUpLqkGLcqDCgf9mF1yLQGBF0Mgo98m9qHcZKho=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5996
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 25/42] drm/i915/xe2lpd: Add
 support for DP aux channels
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

On Wed, Aug 23, 2023 at 01:01:44PM -0700, Matt Roper wrote:
>On Wed, Aug 23, 2023 at 10:07:23AM -0700, Lucas De Marchi wrote:
>> From: Gustavo Sousa <gustavo.sousa@intel.com>
>>
>> The location of aux channels registers for Xe2 display changed w.r.t.
>> the previous version.
>
>This is another case of "PICA register ordering where 'A' comes after
>'TC4.'"  We should probably consolidate on the same design used in
>"drm/i915/xe2lpd: Move registers to PICA."


yeah... I'm actually not very happy with that implementation and
thinking if we can have something different. Maybe a regs struct per
port or phy? Then during init we just set the right offset on each of
them rather than calculating the offset every time.  Maybe it'd still be
a challenge to support multiple platforms moving the register offsets
left and right, dunno. Also, maybe we should consider such a refactor
only after these patches settle so we can have everything applied
to refactor at once. Thoughts?


Lucas De Marchi

>
>
>Matt
>
>>
>> BSpec: 69010
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 43 ++++++++++++++++++++-
>>  1 file changed, 42 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> index 3fcf609a1444..1ab6964ee1c2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
>> @@ -714,6 +714,44 @@ static i915_reg_t xelpdp_aux_data_reg(struct intel_dp *intel_dp, int index)
>>  	}
>>  }
>>
>> +static i915_reg_t xe2lpd_aux_ctl_reg(struct intel_dp *intel_dp)
>> +{
>> +	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>> +	enum aux_ch aux_ch = dig_port->aux_ch;
>> +
>> +	switch (aux_ch) {
>> +	case AUX_CH_A:
>> +	case AUX_CH_B:
>> +	case AUX_CH_USBC1:
>> +	case AUX_CH_USBC2:
>> +	case AUX_CH_USBC3:
>> +	case AUX_CH_USBC4:
>> +		return XE2LPD_DP_AUX_CH_CTL(aux_ch);
>> +	default:
>> +		MISSING_CASE(aux_ch);
>> +		return XE2LPD_DP_AUX_CH_CTL(AUX_CH_A);
>> +	}
>> +}
>> +
>> +static i915_reg_t xe2lpd_aux_data_reg(struct intel_dp *intel_dp, int index)
>> +{
>> +	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>> +	enum aux_ch aux_ch = dig_port->aux_ch;
>> +
>> +	switch (aux_ch) {
>> +	case AUX_CH_A:
>> +	case AUX_CH_B:
>> +	case AUX_CH_USBC1:
>> +	case AUX_CH_USBC2:
>> +	case AUX_CH_USBC3:
>> +	case AUX_CH_USBC4:
>> +		return XE2LPD_DP_AUX_CH_DATA(aux_ch, index);
>> +	default:
>> +		MISSING_CASE(aux_ch);
>> +		return XE2LPD_DP_AUX_CH_DATA(AUX_CH_A, index);
>> +	}
>> +}
>> +
>>  void intel_dp_aux_fini(struct intel_dp *intel_dp)
>>  {
>>  	if (cpu_latency_qos_request_active(&intel_dp->pm_qos))
>> @@ -731,7 +769,10 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
>>  	struct intel_encoder *encoder = &dig_port->base;
>>  	enum aux_ch aux_ch = dig_port->aux_ch;
>>
>> -	if (DISPLAY_VER(dev_priv) >= 14) {
>> +	if (DISPLAY_VER(dev_priv) >= 20) {
>> +		intel_dp->aux_ch_ctl_reg = xe2lpd_aux_ctl_reg;
>> +		intel_dp->aux_ch_data_reg = xe2lpd_aux_data_reg;
>> +	} else if (DISPLAY_VER(dev_priv) >= 14) {
>>  		intel_dp->aux_ch_ctl_reg = xelpdp_aux_ctl_reg;
>>  		intel_dp->aux_ch_data_reg = xelpdp_aux_data_reg;
>>  	} else if (DISPLAY_VER(dev_priv) >= 12) {
>> --
>> 2.40.1
>>
>
>-- 
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
