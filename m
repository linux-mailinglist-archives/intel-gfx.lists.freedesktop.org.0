Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2EA978CB6E
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Aug 2023 19:40:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84F1610E403;
	Tue, 29 Aug 2023 17:39:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DF1E10E3EA;
 Tue, 29 Aug 2023 17:39:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693330795; x=1724866795;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=mmXcdsv7VejLPwzgJuEWKLJmO02gW4kCrhf6oqpJsls=;
 b=fgm34zUJlu589K+0NePyuJ6NmqT/UlIdpUQtoMVzNFYcPkfKGvr2iNZ6
 A2oLm2JTRKHG8nXsQq4UyK0f728PBX4sb0hhi9P1LAAZryDUHLXuyCnHi
 84ewFRSXfZaapKGpGcqaGbNmxu4rWfks6bRanM3hy/irspzEJC7JxOSh6
 oNt6sUHmiNAeem0uUGimv+CgNFPzkNmA1+MO17dQNmJcM4TsruKB/HA7L
 nX+zn1pse45QrFU34+BhGOceVfyjkw7yI2CxyTQ5kdOPF8tIJrs2ubhSv
 BstRMW3507FOkpaVX72P62OZRywkQeKZgfZApt4Q3t001/F6yqzmQraDi g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="372848479"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="372848479"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 10:39:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="773787834"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="773787834"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 29 Aug 2023 10:39:53 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 29 Aug 2023 10:39:53 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 29 Aug 2023 10:39:52 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 29 Aug 2023 10:39:52 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 29 Aug 2023 10:39:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fmwSXz4dMCslOfLVs98Rb4JcYh4YYECNxuXZ9gTDiC7m55RHrcJocqBdIFVVpJBHDyO2nfoVG7ugnQzeqZ5oJLnBKOaQcZJRhkDHXGRrKVtHR2dGib2o3l8igkoKuYMfdk355dQK+3ROEGtdLtStA8ZzRRQtDczT9dIMw1vliIOAdoVwP/nogVqERP/17kUnfMjZw5orwOwEu+xX1vvMbsEmkTyZBmti07DGyO6NiV9Wzoy94rwCKsI5la4bB1bzLHIpAa8lDVCCzlD1XWcIxtJPFWXQ1l4UOozl4VjgKDFoy6meciF7uRxZcUPYCSKeZ5VVIiUuhzU5HUdAOoPqGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g9u4nb453HrvtpOFEupEP6/hL+g4Ov1LUeCB6KsK7VM=;
 b=h3KJ0AZgipIsREJJ800Gr+3+Oy8bzDCdlonTlkm3QE9/XfdyxapKX+77ln4L5Z85biuQSAimJtJfEDzZE4dAK5DN09YxLdF0xnQzD8m9Xke4KSyDztISJNhUi5glV2lya8Kog+SdLNsXBCI4GM8BOwBgPHmIj8Dizd9SwPnRjAGFhBQmLHWPqwxsRrX6bnAJeiaN/Ok0aP1XWHUKjUIFuG9WvFijCbzgoZvRmoYbfT+kcrR84vn+AiNF+LysDmaxrZHzf/59gtQO60NCd8GBLjlYPrBd7DYDW5FVoWgIRDdHGk/xSCdGfdldSoE/dkd/76NLjOa8d501LPllEtRyNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CO1PR11MB5091.namprd11.prod.outlook.com (2603:10b6:303:6c::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.35; Tue, 29 Aug
 2023 17:39:50 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6699.035; Tue, 29 Aug 2023
 17:39:50 +0000
Date: Tue, 29 Aug 2023 10:39:47 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <yexrt74xzvyrarp4za24eg6qdod2ljn2ykd6cu7e5so4v35wsz@7xx7zluf7uql>
X-Patchwork-Hint: comment
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-33-lucas.demarchi@intel.com>
 <20230823211439.GM1529860@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230823211439.GM1529860@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: MW4PR04CA0240.namprd04.prod.outlook.com
 (2603:10b6:303:87::35) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CO1PR11MB5091:EE_
X-MS-Office365-Filtering-Correlation-Id: a9f280c8-b416-4f8c-6481-08dba8b6f201
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: z3hQe6RNrNWw7R4eduvRwcf/DRvcJbqRDftLOVqqMyIIHj7CWPKgpn9GQLKYqtv16EQD8cDVZP20wpZg7ThNevh/NsSwiqLH1NbSQCB/ZpSYGQJHXXX3pFmya6JXnenb4EAigKNVo8TETFIXzc6uaugsQXG2j5FiIbZMkXUdINDrEbwro91SCzImdIgvW+CRSYyXrq5CmOjpegLogz3qQw7uZrLyZojmlUsVhDxpQd/eUWRJUBN1MfVCuhC7Og0aw2yErw8Gk9Jkn4mc8LQ8JTw72kYG8ivdBW2V/B6O+F1XJxhfYETyOvFN8Mkmj6rSgWWMPUL23GXQMV2mOFUZhFWB9mHZMReOuyufI0d2QSOV66kOUDlB7GiYGOz+R3oIpBmCtzRQSkVIuLNnXdIvMQrJ9uUsdW85cTM6fXQseJ8FXN+AgzU1BLa85tKa9v4mivVYn/YFS/ekf9n9hgIQ13ZL1z0AMVa/kAGB6YVQoqCFr1dSHvovFNoqk+lbEIImMd5Mg6gGsdc0xqcdSu46oD8tgWgpdS8u2THNCd4rfYcvLoiqq/dxabOYTQ1jL84T
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(396003)(376002)(136003)(366004)(346002)(451199024)(1800799009)(186009)(6512007)(9686003)(38100700002)(316002)(6636002)(41300700001)(82960400001)(6862004)(4326008)(2906002)(83380400001)(33716001)(86362001)(26005)(5660300002)(8676002)(8936002)(450100002)(6666004)(6506007)(6486002)(66476007)(66556008)(66946007)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0O82KRym4I+M/BPcxDxWsk2YUZxA5EUNCsPeq/e84CT6c5VnNcohgN8AfC5q?=
 =?us-ascii?Q?YE+R1IdyeZ3wQuest+aGavViOf6ax3JMDJybjG2WQArBRlJjmWuelTOLeqBR?=
 =?us-ascii?Q?UQOeh4OI5+Wq6ux4plGkXncud23MVwZr4SF6MyaZgQugP7uLOgvrRD+cXYty?=
 =?us-ascii?Q?Eh+bIlZLBqoO58QKcfrgxRMjP9wbfO3JfNxxoUdagWwdpeCxdeg8qgqUxChA?=
 =?us-ascii?Q?3z5CT0Dj5qxbPWpAJInEk0Z5+l17ZrtltFCOR56FM9fMybM24h4yl/RbUOcL?=
 =?us-ascii?Q?1uS8jPMji3xrDX/PHiiJkmcnR9RE0vcrjAQdkbXnTw6RDgnkoESb0O0h10no?=
 =?us-ascii?Q?S8nYJYIFsieTBuToTGETR0rtCT9DnWNTSFEAwWyegrYkKheVBLP6vauSpv09?=
 =?us-ascii?Q?WyvjKHdPdC1NoCVRWfdE+A0CTKA3inWQyZuADKDvRKEpzfc/5T5mHCtFAlbH?=
 =?us-ascii?Q?Gldh71/clFTNiYwCIrnbE7JdwifsvHQMYGjVdp9vnViAUQ47iqn7frcYu7LU?=
 =?us-ascii?Q?Hbdi5U8Na2gqQoMP7PyVWigfY50sTBHqLXMjZ+DvwNLCGxvWqy6+eTgPMMEW?=
 =?us-ascii?Q?/Gs4/6iZ23n/BwYXZdvzGRsIsagv/Zy+vU0ITXSlvokvtfJwMd2TbAOI2N6K?=
 =?us-ascii?Q?ZzQ7xQOZhSWwtNaTEkHPHOUZZWymjn7doHTFrhuKVUF2xJflj7OPk16blxcM?=
 =?us-ascii?Q?xiXqUaBVxhHz4IwJkbNHpMnyLMS1iBALHg27jqEo9beiaRaRSts0I5HS3N/V?=
 =?us-ascii?Q?MAnDfnu0P6/EER60GcocnMdx2MOedLJX/oqxD80lsWVtJ+4vD1JwJSz5rlae?=
 =?us-ascii?Q?yK1pz7XgmiDFovCzLjEcAVd76AykMz1OdyfkeRps0YAzC/LOxPDzJHzfzMXI?=
 =?us-ascii?Q?vJNK3clsNwWd0CALhfHdyeizRkCpuvsldc7oYSWUs9m9tsrKlLx6b+e2xehz?=
 =?us-ascii?Q?mFhl2fexptROeqgnGswrbitUU5I6HIXNTUimCg/wV9RZAWPuIJJK6Y/pwjBx?=
 =?us-ascii?Q?jKK8Xpl0usBYm85GSV6nJfxd7a7y2MR6G8hwPPy47Aj/EQROSdAFAr1Dx9oC?=
 =?us-ascii?Q?GIf6G4Fwnz+bl8qNKKHEEY9N/oqaOUru3gM5V/TrOG5L8bnkoY7+jq5Zy9VG?=
 =?us-ascii?Q?2ZDDM4acaysFazpgwFOerBaledX0WLyS+YvN4ZvTreV83qHXdqaU6hrqc+Cy?=
 =?us-ascii?Q?HZRgHqNFweeB2+klL7wgFY+t/voSWV8cKA89RrhqdAGnT9jXsVoXNOIBuRRZ?=
 =?us-ascii?Q?og8c2c4zweNDiZT3BdPl6zbRn7swL0jYgFTznB3JnWpcNreyoaHdZ0N2VKZI?=
 =?us-ascii?Q?srYeM7Hq/o8Z/rLsTt+d5MDU0TbAEu3zWUJPo7BoxJJdX1pSR4KKYBMuVAV5?=
 =?us-ascii?Q?O6Ov+BbR6BcjjoikEcv/2NFoxiPGRwFy1KPS30baL9IMvMYZmOgKcs6etFRq?=
 =?us-ascii?Q?8mVemX18v2G3oVm2IBnMwsqRrNXvpAt39UUq5xi7ru0vIoGOVn5K0Os6QNJd?=
 =?us-ascii?Q?BwSRRA4sFw1+8lWjrNaNLM4huch76uQ3B0bbUv4JhsrWppAMXxyL81UHQTbi?=
 =?us-ascii?Q?0cTtuW13WETgI77BuU5rjpdQHsXBi5Eqhov7eMah0nzjG+tcNN8H3WhZav+f?=
 =?us-ascii?Q?Zg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a9f280c8-b416-4f8c-6481-08dba8b6f201
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Aug 2023 17:39:50.2593 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: L1qWP90hUQJ8wrQs+OanBgR/4hxtLEHbz2Ub3MNme3HZVY74YHsAMNt/7PysqU7R67XWNWvANDU6AXmv9aJuS7rQt2adm7USBvbvJYeTOec=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5091
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 32/42] drm/i915/lnl: Introduce
 MDCLK
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

On Wed, Aug 23, 2023 at 02:14:39PM -0700, Matt Roper wrote:
>On Wed, Aug 23, 2023 at 10:07:30AM -0700, Lucas De Marchi wrote:
>> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>>
>> In Lunar Lake we now separate MDCLK from CDLCK, which used to be before
>> always 2 times CDCLK.  Now we might afford lower CDCLK, while having
>> higher memory clock, so improving bandwidth and power consumption at the
>> same time.  This is prep work required to enable that.
>>
>> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_cdclk.c | 30 ++++++++++++++++++++++
>>  drivers/gpu/drm/i915/display/intel_cdclk.h |  2 +-
>>  2 files changed, 31 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> index fdd8d04fe12c..3e566f45996d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> @@ -1223,6 +1223,7 @@ static void skl_cdclk_uninit_hw(struct drm_i915_private *dev_priv)
>>
>>  struct intel_cdclk_vals {
>>  	u32 cdclk;
>> +	u32 mdclk;
>>  	u16 refclk;
>>  	u16 waveform;
>>  	u8 divider;	/* CD2X divider * 2 */
>> @@ -1524,6 +1525,8 @@ static void bxt_de_pll_readout(struct drm_i915_private *dev_priv,
>>  static void bxt_get_cdclk(struct drm_i915_private *dev_priv,
>>  			  struct intel_cdclk_config *cdclk_config)
>>  {
>> +	const struct intel_cdclk_vals *table = dev_priv->display.cdclk.table;
>> +	int i, ratio, tbl_waveform = 0;
>>  	u32 squash_ctl = 0;
>>  	u32 divider;
>>  	int div;
>> @@ -1574,10 +1577,36 @@ static void bxt_get_cdclk(struct drm_i915_private *dev_priv,
>>
>>  		cdclk_config->cdclk = DIV_ROUND_CLOSEST(hweight16(waveform) *
>>  							cdclk_config->vco, size * div);
>> +		tbl_waveform = squash_ctl & CDCLK_SQUASH_WAVEFORM_MASK;
>>  	} else {
>>  		cdclk_config->cdclk = DIV_ROUND_CLOSEST(cdclk_config->vco, div);
>>  	}
>>
>> +	ratio = cdclk_config->vco / cdclk_config->ref;
>> +
>> +	for (i = 0; table[i].refclk; i++) {
>> +		if (table[i].refclk != cdclk_config->ref)
>> +			continue;
>> +
>> +		if (table[i].divider != div)
>> +			continue;
>> +
>> +		if (table[i].waveform != tbl_waveform)
>> +			continue;
>> +
>> +		if (table[i].ratio != ratio)
>> +			continue;
>> +
>> +		/*
>> +		 * Supported from LunarLake HW onwards, however considering that
>> +		 * besides this the whole procedure is the same, we keep this
>> +		 * for all the platforms.
>> +		 */
>> +		cdclk_config->mdclk = table[i].mdclk;
>> +
>> +		break;
>> +	}
>
>I might be misunderstanding something, but from bspec 68861, is looks
>like the mdclk frequency is always just "ratio * refclk."  Which is the
>value we already have stored in cdclk_config->vco.  Do we need to do
>this extra lookup or track this value separately?

It seems it could be different based on the source of the clock.
CDCLK_CTL has the config and could select the clock to be configured
either from CDCLK or CD2XCLK. However the LNL table has all the entries
with CDCLK as the source, so indeed it seems redundant.  And even if we
had a cd2xclk source, it seems a waste of space to add this field to the
table that could easily be computed.

I will drop this patch in v2.

thanks
Lucas De Marchi

>
>
>Matt
>
>> +
>>   out:
>>  	/*
>>  	 * Can't read this out :( Let's assume it's
>> @@ -2191,6 +2220,7 @@ bool intel_cdclk_needs_modeset(const struct intel_cdclk_config *a,
>>  			       const struct intel_cdclk_config *b)
>>  {
>>  	return a->cdclk != b->cdclk ||
>> +		a->mdclk != b->mdclk ||
>>  		a->vco != b->vco ||
>>  		a->ref != b->ref;
>>  }
>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
>> index 48fd7d39e0cd..3e7eabd4d7b6 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
>> @@ -16,7 +16,7 @@ struct intel_atomic_state;
>>  struct intel_crtc_state;
>>
>>  struct intel_cdclk_config {
>> -	unsigned int cdclk, vco, ref, bypass;
>> +	unsigned int cdclk, mdclk, vco, ref, bypass;
>>  	u8 voltage_level;
>>  };
>>
>> --
>> 2.40.1
>>
>
>-- 
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
