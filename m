Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD94C78CF7A
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 00:22:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DBB110E0C0;
	Tue, 29 Aug 2023 22:22:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D39210E093;
 Tue, 29 Aug 2023 22:22:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693347723; x=1724883723;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=IVXPdSrwVUnqFQpj0SkMxWlkHpfqkzj1IHQAouoy1o0=;
 b=AhSdBzRJs5jhxgisr/R+bctaObt3CxiKtDYpxEGFWMczceh/dNoLXBFw
 FjZO3FGfYW/Ac3KHMKjq24sTuv18vdEjb6myvcAQyL94mNECG/Aqv/SwL
 +DMu72BLnL2e+wplIuyh6s6NiBQgxfkXJ6it0D9SWJwAQiqiZQ0VKzzVQ
 URHFOwpWSCbmCrTrwhSmFDYOghyoumAino672WkfP9cRwGLNouFjYZuZ1
 LsfmlvdEHGmDkdgjXIB+i++1P+IJkPeH81nayLDNa9vMRg7cK47b3Ghpg
 4xybD27qyGMlYsvFS8dVhxVKmcy19WjaHMJ9Hejobddrk5w/4kxUtTo3Y w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="439442068"
X-IronPort-AV: E=Sophos;i="6.02,211,1688454000"; d="scan'208";a="439442068"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 15:22:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="742005893"
X-IronPort-AV: E=Sophos;i="6.02,211,1688454000"; d="scan'208";a="742005893"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 29 Aug 2023 15:22:01 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 29 Aug 2023 15:22:01 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 29 Aug 2023 15:22:01 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 29 Aug 2023 15:22:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hmp1acKM56Fm1oQIo6B3BRTIyPFV6pT+agLtGf5tK1isiU077TF4ChZfIC0PrYWaN0xRdBsqcFptOKNnvR2IX5f9BlFwcKFuqPRSsCVVsiiT2dBljtg9LY4reF70Da9HA52kD55vKZRKzJ+4bG6rCshlyHDOB7g9iaHEMIa5iXEeMKl1VoR35KWIYFd5E11mh+/bxdVdla35OmQMyGvzLmWuM1JaC1bf7MW9prF9jDye5wWoX87hA9bm9jx30UDsIDNJMvEgNZEZzir9ibNZx0pgYmDP4uMMEqyuB3tZPHDCf4DaLwSiM/nUXk/d8c/s/+LLKIHY9VmAPMTiY4WoFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Rdh7Z9SZHNS/1WfPFwzob5i5Z2OMPA94fusK522C5wk=;
 b=DWss666HM29ZHZHyEvxoIkNZ/fkmZOTrm3NPfClML5cmJmVHB47VG8gjzTjwFPiqgSfKlHUx0PwIy0hAOBcPhzWb2jW7/U3S2Mxy+PqnnRspFjtSbr04iUfADut25nmlNbVpMRQaLfnwlSfw/YjJg86v66UV7FRh/hImxsBafAZSon8AQ59y1FNZYl9VvgqqN1e2d6Y7kCHU/HrE4A2PnsWdV+uLBi+zs+eJCorv6JV5flbdXaOdmniGTZ9vRr/KKxexjS1FU9Jy/pmnJGkdp7xCAklW8u+4vvVd7AEMHVUD2GiBxIqSzLqMR6dJngoDMQt6n930yF/Tvoz19Fy4zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SN7PR11MB7467.namprd11.prod.outlook.com (2603:10b6:806:34f::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.34; Tue, 29 Aug
 2023 22:21:59 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6699.035; Tue, 29 Aug 2023
 22:21:59 +0000
Date: Tue, 29 Aug 2023 15:21:56 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <awy6ri4iamhp2kiitufdpyeojtf6dl4nd4vhdiy47ms5gq4drm@lwfobts3v2wv>
X-Patchwork-Hint: comment
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-37-lucas.demarchi@intel.com>
 <20230824235457.GD1529860@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230824235457.GD1529860@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: MW4PR03CA0113.namprd03.prod.outlook.com
 (2603:10b6:303:b7::28) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SN7PR11MB7467:EE_
X-MS-Office365-Filtering-Correlation-Id: 2958ff83-f821-4c1a-acd1-08dba8de5c76
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LsxJFWSCJztbReCeyl66hFSfH7fLef6BnOF7EZhTyoHEJ0yJEj9xpXhn2MbFFqIOHIREAA+u4TPK+IYJXaLoxkyrWbTo3MoChuCLFgTiZToEgV4cDcMrbs6fgFY/Y+xEVLb6rZIVjQSZELGfzVcr7GVOdfUfOI51J457T8oRwRzbWPFLb3SlgZzBnQ5eJK4ykbE0JPHHDB2sRZnP0k56UV6eA5QcirVokWDSp26y4bMq2vSYMhRIzje6F4YvdJwJgFPO8Wyebgj2Fg8iuIaCj2RfL3bWS0FQrQAEQ3LhPVEtbjvfCf4GKpbR/TG1SufRQ4CY7PR6xOjt58Rez8vDqnu3nZCDuJ3VnPsYVomncoYfPVltMAL6YfbTDzplsjjeHqtKVyE8UvrORVdG5cmnM7dxtdWGxiR0fhBltbIgiWBkVEpaah7e6UfXtHSq79U0L7IUkbs2PlOmHFOyyaL+Zys/ayJ0hlrtI9LZEJsJrnSCgvH4UpmPJ4LYSONo0gXLr+Of7WcRhnNEL/4kLdh39UQg5N5xvhTe40EJC7iXQdqET5h1Hf0rvO73UTwwSZzO
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(346002)(376002)(396003)(366004)(136003)(186009)(1800799009)(451199024)(6666004)(83380400001)(5660300002)(4326008)(26005)(6862004)(8676002)(8936002)(450100002)(107886003)(6512007)(6506007)(6486002)(9686003)(6636002)(316002)(82960400001)(38100700002)(54906003)(41300700001)(33716001)(2906002)(86362001)(478600001)(66476007)(66556008)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zQSS16Gzt9PEchOIo9P4LF/N98UPCclfm3r75v8c+JgM2GpzGWERJvIMWt6Y?=
 =?us-ascii?Q?ecWCAeJ7qmEYwnA4ffdrdsHqXRyneAum3ih0OkuISa+gjCInhIne2hL7SFG8?=
 =?us-ascii?Q?xEYWWWS7+FofoXxPs2+WFf5y89pWoCkyMl/istDRqMqVrlnI6g57bjkVPvh3?=
 =?us-ascii?Q?6o/VXco6cavV6HmAhqjt2hoIez1ryiktr8AzSI+pxhyGo1PD1xyIS5/tqp/z?=
 =?us-ascii?Q?JgpRPIu1u43UeSSW8N4Kly8iup/OcyJG40zimPN0Fd0RHvl5ybJj4D4VqWk4?=
 =?us-ascii?Q?pgh48HUfcy970YhZzH/vBQ97BRr4KvQHeRg5mU7pRiLJSOg3Q1CnQ7N0tVnn?=
 =?us-ascii?Q?/pNmTF/JKDG9Rib078sjrDesVMZYbVdiRzg4B3HxlgcFeMEWt5eaAH9GZZIG?=
 =?us-ascii?Q?pFgrsJrT2vOB+u1WPda+gR1R2SOTsQyQ3CUHI4owJSDpsInS802BkKA7oRP7?=
 =?us-ascii?Q?W1MlqoFrfj51NfgXbr83m5COpEV0h3n/YBafSBkhZx+88XIabr3cVSYrfZ8/?=
 =?us-ascii?Q?wLLY4x74U2lMzVPPqZ804w3fq4QzAInaYu3zX2rkB1pXwrenfZAPkE6RG4/b?=
 =?us-ascii?Q?GgQAoIWszxowL4xAO0PhULqBLgEOtV0rL3AIxZfof21JITxbTbYbBQ9QhEI0?=
 =?us-ascii?Q?sAgqZt2rsG7sC45lUK5gI99qhW/oBvUmB+AR4FRmAYxWkUUGv9/1xMdimBUM?=
 =?us-ascii?Q?frF+519OmZ7VWXT4w7ziM455Y+f5cGXqW7zMFgNMsPQeoOfaMmhcek1S6qO8?=
 =?us-ascii?Q?DyJUKNV0IGN+zqv9ESuJfExCF8cZaSqXSaOGj0GzVw7rhu4sTdhIHTURSsY0?=
 =?us-ascii?Q?T85ktOyenazmiamAjic4P/VSqKuCrAjZFOoyveoM+lnUUVOCGl873wgMt8GS?=
 =?us-ascii?Q?Kce/KArn4JPkmKW5WZQ+qjEmbUJf1OXlEdgywRCbMDwp2INAlGU8jXw6LXSr?=
 =?us-ascii?Q?4+BCDNWMNgUBLnFIEUc0qyrOj0dN2ioUYNpx1vdVHRo+TOpCyAmpcyHq8gtV?=
 =?us-ascii?Q?aTF+6t+e47b4LE5ileoVqlxtIUDmLsZNTBbS7nhj3sgu2IKDaSooknJvG8Di?=
 =?us-ascii?Q?h3yv35nL+mJvqcSfUKQRNn0EG+iXT3OoflpP9FS2po13mUlJ5y20qM0UrAkQ?=
 =?us-ascii?Q?FPQCI6+HiaKcVtzNbe7tJ1ZcJYmfjKdQ2PjMvWR/MkuDvCYlNrm1x49W4296?=
 =?us-ascii?Q?vMc1JFCJTdGFMrH8U88AP6bxiHxyIsskHosYL+ClZyzhnWPbwxFtR+Wo6rpr?=
 =?us-ascii?Q?0EtT69+8DbZxIpn/Jwo+pZpcXizrBOjv6VKv+gaPfjo/uVZU8cVpyHaC0ZUz?=
 =?us-ascii?Q?+FmFQw8S/xpNzRvrZ3xtIstDfUfOEmfHL9EqNCOt1ZGPeCVHbcQXmSPrGaA+?=
 =?us-ascii?Q?Q/hczqn9d0EQ3UGVv+ss6y+3J0ANnoEwtXbPavUYI6OZCEpCnWjGrj6N8+h7?=
 =?us-ascii?Q?5CkkAChibmjmjSbJUqx2l1A9/JaAR8tu1ryHvXjBueWu7G9FiRgBYlrmx4YJ?=
 =?us-ascii?Q?tJm8wVpIx+iB53G9KSNs4Q28z/EDZS50lXO7sJ9qUMvWPAQqesQvbE4UhuLR?=
 =?us-ascii?Q?wBJbCRAgqTYesX1Nd8cMHdRXXEUKCZ6GzsdwbfAsU0lnMp16Nb0KzZ1lEFr6?=
 =?us-ascii?Q?lQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2958ff83-f821-4c1a-acd1-08dba8de5c76
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Aug 2023 22:21:59.1947 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9ll6wTD4OHVEZ6G3DIQ8rRBgTxV3myYLqPpQ89pdJy2eqL0Uymlni33AVmC2ILygQuUHcA4sdbuoAFdFaqrjSAKDroZBhxw0f/Pnt+/xdNE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7467
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 36/42] drm/i915/lnl: Add support
 for CDCLK initialization sequence
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

On Thu, Aug 24, 2023 at 04:54:57PM -0700, Matt Roper wrote:
>On Wed, Aug 23, 2023 at 10:07:34AM -0700, Lucas De Marchi wrote:
>> From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
>>
>> Add CDCLK initialization sequence changes and CDCLK set frequency
>> sequence for LNL platform.
>>
>> CDCLK frequency change sequence is different for LNL compared to MTL
>> when a change in mdclk/cdclk ratio is observed. Below are changes to be
>> made:
>>
>> 1. In MBUS_CTL register translation Throttle Min value.
>> 2. In DBUF_CTL_S* register Min Tracker State Service value.
>
>The previous patch just did these same changes, but made the changes to
>the existing functions.  It looks like we wound up with two patches
>doing the same thing?

The change here is because now during the squash phase there is
extra programming steps touching DBUF_CTL_S and MBUS_CTL. It doesn't
seem good we have this in 2 different places though.  Ravi / Stan, any
comment here?

Lucas De Marchi

>
>>
>> BSpec: 68846, 68864
>> Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_cdclk.c | 58 ++++++++++++++++++++--
>>  drivers/gpu/drm/i915/i915_reg.h            |  2 +
>>  2 files changed, 57 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> index aa1000db3cb9..4d8b960389ec 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> @@ -38,6 +38,7 @@
>>  #include "intel_pcode.h"
>>  #include "intel_psr.h"
>>  #include "skl_watermark.h"
>> +#include "skl_watermark_regs.h"
>>  #include "vlv_sideband.h"
>>
>>  /**
>> @@ -1727,7 +1728,12 @@ static void adlp_cdclk_pll_crawl(struct drm_i915_private *dev_priv, int vco)
>>
>>  static u32 bxt_cdclk_cd2x_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
>>  {
>> -	if (DISPLAY_VER(dev_priv) >= 12) {
>> +	if (DISPLAY_VER(dev_priv) >= 20) {
>> +		if (pipe == INVALID_PIPE)
>> +			return LNL_CDCLK_CD2X_PIPE_NONE;
>> +		else
>> +			return LNL_CDCLK_CD2X_PIPE(pipe);
>
>I don't think this change is correct; see note farther down on the
>register definitions.
>
>> +	} else if (DISPLAY_VER(dev_priv) >= 12) {
>>  		if (pipe == INVALID_PIPE)
>>  			return TGL_CDCLK_CD2X_PIPE_NONE;
>>  		else
>> @@ -1837,6 +1843,47 @@ static int get_mdclk_cdclk_ratio(struct drm_i915_private *i915,
>>  		return 1;
>>  }
>>
>> +static void lnl_prog_mbus_dbuf_ctrl(struct drm_i915_private *i915,
>> +				    const struct intel_cdclk_config *cdclk_config)
>> +{
>> +	int min_throttle_val;
>> +	int min_tracker_state;
>> +	enum dbuf_slice slice;
>> +	int mdclk_cdclk_div_ratio;
>> +	int mbus_join = intel_de_read(i915, MBUS_CTL) & MBUS_JOIN;
>> +
>> +	mdclk_cdclk_div_ratio = get_mdclk_cdclk_ratio(i915, cdclk_config);
>> +
>> +	min_throttle_val = MBUS_TRANS_THROTTLE_MIN_SELECT(mdclk_cdclk_div_ratio);
>> +
>> +	intel_de_rmw(i915, MBUS_CTL, MBUS_TRANS_THROTTLE_MIN_MASK, min_throttle_val);
>> +
>> +	if (mbus_join)
>> +		mdclk_cdclk_div_ratio = (mdclk_cdclk_div_ratio << 1) + 1;
>> +
>> +	min_tracker_state = DBUF_MIN_TRACKER_STATE_SERVICE(mdclk_cdclk_div_ratio);
>> +
>> +	for_each_dbuf_slice(i915, slice)
>> +		intel_de_rmw(i915, DBUF_CTL_S(slice),
>> +			     DBUF_MIN_TRACKER_STATE_SERVICE_MASK,
>> +			     min_tracker_state);
>> +}
>> +
>> +static void lnl_cdclk_squash_program(struct drm_i915_private *i915,
>> +				     const struct intel_cdclk_config *cdclk_config,
>> +				     u16 waveform)
>> +{
>> +	if (cdclk_config->cdclk < i915->display.cdclk.hw.cdclk)
>> +		/* Program mbus_ctrl and dbuf_ctrl registers as Pre hook */
>> +		lnl_prog_mbus_dbuf_ctrl(i915, cdclk_config);
>> +
>> +	dg2_cdclk_squash_program(i915, waveform);
>> +
>> +	if (cdclk_config->cdclk > i915->display.cdclk.hw.cdclk)
>> +		/* Program mbus_ctrl and dbuf_ctrl registers as Post hook */
>> +		lnl_prog_mbus_dbuf_ctrl(i915, cdclk_config);
>> +}
>> +
>>  static int cdclk_squash_divider(u16 waveform)
>>  {
>>  	return hweight16(waveform ?: 0xffff);
>> @@ -1938,8 +1985,13 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
>>  	else
>>  		clock = cdclk;
>>
>> -	if (HAS_CDCLK_SQUASH(dev_priv))
>> -		dg2_cdclk_squash_program(dev_priv, waveform);
>> +	if (HAS_CDCLK_SQUASH(dev_priv)) {
>> +		if (DISPLAY_VER(dev_priv) >= 20)
>> +			lnl_cdclk_squash_program(dev_priv, cdclk_config,
>> +						 waveform);
>> +		else
>> +			dg2_cdclk_squash_program(dev_priv, waveform);
>> +	}
>>
>>  	val = bxt_cdclk_cd2x_div_sel(dev_priv, clock, vco) |
>>  		bxt_cdclk_cd2x_pipe(dev_priv, pipe);
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>> index d5850761a75a..c9639f0f4f49 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -5944,6 +5944,8 @@ enum skl_power_gate {
>>  #define  BXT_CDCLK_CD2X_PIPE(pipe)	((pipe) << 20)
>>  #define  CDCLK_DIVMUX_CD_OVERRIDE	(1 << 19)
>>  #define  BXT_CDCLK_CD2X_PIPE_NONE	BXT_CDCLK_CD2X_PIPE(3)
>> +#define  LNL_CDCLK_CD2X_PIPE(pipe)	((pipe) << 19)
>
>This doesn't match what I see on bspec 69090:
>
>Bits 21:19
>  000 => Pipe A
>  010 => Pipe B
>  100 => Pipe C
>  110 => Pipe D
>
>So the pipe ID (0-3) should actually be shifted by 20 since bit 19 is
>always 0 (except for the "none" case).  I think
>
>
>Matt
>
>> +#define  LNL_CDCLK_CD2X_PIPE_NONE	(7 << 19)
>>  #define  ICL_CDCLK_CD2X_PIPE(pipe)	(_PICK(pipe, 0, 2, 6) << 19)
>>  #define  ICL_CDCLK_CD2X_PIPE_NONE	(7 << 19)
>>  #define  TGL_CDCLK_CD2X_PIPE(pipe)	BXT_CDCLK_CD2X_PIPE(pipe)
>> --
>> 2.40.1
>>
>
>-- 
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
