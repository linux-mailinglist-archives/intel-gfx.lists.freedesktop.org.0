Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB98787C6D
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 02:07:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8DC110E5F1;
	Fri, 25 Aug 2023 00:07:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5328810E5F1;
 Fri, 25 Aug 2023 00:07:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692922057; x=1724458057;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=y7o7+VzgmuPDfGObxPCfAg8DRDto90OCBHzGvnfjcCI=;
 b=Yw3nQIVEZgM+hiH0ofSn5O/3PNameBupfmIGjUITRF8QIzwWs0qzp+Or
 tazDxj2qCKMnt9v+ezxfIe2LUNOkf/cH58hsWCBugG0PbY1Wi5PUBaHIi
 wX8aM0X1jIXW1jJawUcYkQRUcVbqiWYfiJJ9hr6ywdmWC3DsqM4kH7Fi6
 UVGZSRTKThCjxEaFj9PO9MoufQxb4tl9hTi/ySdbxSJYPeTeiiaIv+O6p
 1ZlJ7CvnAYk1+/ytATzonm9n1iNTrxSgTnYOBjsvdhdY7bRDYRvlmgyPx
 vLBQ1DqHRzvenNnlEc1dh4qEkdt2B6yrbOdaO0mawSXl847HNgD4kUlKv g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="460951629"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="460951629"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 17:07:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="911097909"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="911097909"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 24 Aug 2023 17:07:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 17:07:36 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 17:07:36 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 17:07:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d5W7bDOouPcwl8W+H7GhBSsZVOU70UvIobK6zDcvTBPhILkLTfLfD9571NtoJ/9i+IfILbt4HUotJHLccSYEQ6mtsB/ie20PAOxD6gUOASRwU+EeZaFQvfrPsIzc169cvOMea9H94Z0Kmm+pt5iI526MJmAqTiChLs/2jbK3Pvgu591lzICnTgm1POX2HmjE7sTugiEiRRt4IRx1Y+SzWQEPU9pgaPgXIbJvuvR20Dnl1v5QgSqfgB595al0RpNl7El3B9VngwJKnZUY//hmkGaTI9mLH7MAfx+adLzJQYzsbwSUm8Usg6nbFiXEpGC0fNyLKtgevq32SRrt9YE3pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=24mfLYJjmV/WojSJNEqDWOYMt5SbHHJmk8nj9MqCcfg=;
 b=XnC4tFWWCVkmsSOqRbKq3TdNwg9eTabPsTXziY3LVQ9jtqV141Y0cCD5rbQggFJiPKRpBe838rRGqmNU7DoiEF4HHxjlXizLjMh59gKZEx0rKIT9BXjkj3n4GFimUkEq9e/4NVRCvCQztlu0vrCUzVwaX3yyasGBGD0ikPKfnQC02Fhj50mehk888fQJY76gkt//cy6H4RlRVsMC4R0ooMIIXdn/oDNzD3oW0UGdzNsI7yqnTNe1GkGd3EBY23WHPYnG4eEQhBXqBK/DcbmHPiJoMdPITDL7AugObunX8KzNhp7Zv4NPMjMET0BLo3/CkhX+aADetWVu7Ad2fdgtzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA1PR11MB7854.namprd11.prod.outlook.com (2603:10b6:208:3f6::5)
 by BL3PR11MB5683.namprd11.prod.outlook.com (2603:10b6:208:33e::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.29; Fri, 25 Aug
 2023 00:07:34 +0000
Received: from IA1PR11MB7854.namprd11.prod.outlook.com
 ([fe80::c66d:c5f1:1ea6:74b7]) by IA1PR11MB7854.namprd11.prod.outlook.com
 ([fe80::c66d:c5f1:1ea6:74b7%5]) with mapi id 15.20.6699.027; Fri, 25 Aug 2023
 00:07:34 +0000
Date: Thu, 24 Aug 2023 17:07:31 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230825000731.GF1529860@mdroper-desk1.amr.corp.intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-41-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230823170740.1180212-41-lucas.demarchi@intel.com>
X-ClientProxiedBy: BY5PR04CA0005.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::15) To IA1PR11MB7854.namprd11.prod.outlook.com
 (2603:10b6:208:3f6::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB7854:EE_|BL3PR11MB5683:EE_
X-MS-Office365-Filtering-Correlation-Id: 66b0d3b9-55cd-4717-9264-08dba4ff4870
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: J2MaMw+P1xFmuz60NRjnra6VnjnZo+Pl2N2hQD8MXmiuzOe/jifU7ZcrW8zw9/FOtElhWumLQ1rTl663qKvwuPI91pG6bdUuvwH7VEWt5sXXimFCVWH6W0TGLFXaQBxOswY9gGiyPiipl9HfeJCKTwx3a9bZAYQzZSZuy9a7BrgrbdnCPtTEEE5bva8QTOr/DbHj8RsEuN2LRWUIaglkT+utsyCUoBoHm9rhfuSv/tqogAf2IGkk5exUz6pJGadJ6GRWMpBqgGT8xFVk5DmK1Otv+ECCT4Lu4FKp+GMIVMoryhqiBCVqyD8UNSTsQYbzElmraAKSMqWqIlNABujMie13+2ZVWKdYGmPwBlP3rXVdmTPmgMpSFG7eTURewZETx0md90Olk/1ekUjOHhwWxbGdi8l+cCFXEP6BJuAj9WZkX00x5BtWTxPX9LH2Mzx74NP+DoWLNfqjeUL74Y6QFe8MPu/4LIUkai6NsU5pPR21fBIJR0nTZW0k0QKwG86mFAbnG1OXlPUFePeWj14Cs6TrIZ1Um7HzrM1+ewKfegK9K0H4DXV/qgZ0SE2dxBQI
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB7854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(346002)(366004)(396003)(136003)(451199024)(1800799009)(186009)(82960400001)(450100002)(38100700002)(4326008)(8676002)(6862004)(8936002)(41300700001)(6486002)(6506007)(316002)(6666004)(33656002)(6636002)(66476007)(66556008)(66946007)(86362001)(6512007)(26005)(478600001)(1076003)(83380400001)(2906002)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?g6awXr5xPiIylsTAgIOGRLsDJ0HMcaoKEDaOSRDH/7CFtfvBnjUFvT8DEgTR?=
 =?us-ascii?Q?5uFNWu7so1FMdeO9C7dwnpWXBs9QBgJlkZm5qsbhWO10x0tqPE383KQkYruv?=
 =?us-ascii?Q?TRXWtaY5C5zAIDlavCLDkXM7Bs9hnGJ6YnQyZTCjC0IbP0tqhCYsWkiLBzHn?=
 =?us-ascii?Q?VagREd7dYW8RM6gI63FRVBwqj8eGfo865lgNzODKHOBTl3wV7bfUnFcNoavf?=
 =?us-ascii?Q?sohXU7OxLLKflD8fyC55SUYzjQmXs+CSJC5YtxK1obqcxT3fnTFqrTm+yIXp?=
 =?us-ascii?Q?+8Kt5LnoBewP8sVlhDhF1mVDa+D9JYmAH3cRxwydbAOhARIHiYJyQVbUF2Of?=
 =?us-ascii?Q?DIoidDUtyCehctb5t8cXENrFU6IlCTylEremdd92jWKgNpe309SxplgLUXsl?=
 =?us-ascii?Q?sJi65qtRNyCMnFmd0H4AlLapyTaeonoHJkSHH+NdCkU2FwlQnT1C02FdTnI5?=
 =?us-ascii?Q?Iv2leDpgtkFMS2q0FEP1OweCIlciqk8HD1NBC6TEiregIw4dST+cdPR32eCL?=
 =?us-ascii?Q?z5jdAa8q3fJh3tdMdiOq5ovOvxCUyjzyf+hiW4FGwEEvwdKh+F2In6qj5Y4C?=
 =?us-ascii?Q?/Jmvq5FPmJbOJZrf5hbRyFAX4FIyl+CZ+ndbTfbB+XQv7KBdhELY3SRb1dIV?=
 =?us-ascii?Q?SQ4p0bCyjVnHKLm+XH56M5tDT+krmcBPbZteC3gXT1vWan2dx3VZ5yBt/BPf?=
 =?us-ascii?Q?fWoLGvPsk2p/BSFHQihzNrqQsrJDdAcPI18rikW9kGgX0YDiOpcX5EotWHHx?=
 =?us-ascii?Q?ZlgmSjF35O8QPE1c0nbh6RZtlmv5qJtYC9sk6DlyrRu1L52y5A383ELZawvo?=
 =?us-ascii?Q?w2rd4Or7Iz+FJTPZ3SUTJpltnOK8IJt7eclsfZyRBdUHxwZBij0ynMrFSZTm?=
 =?us-ascii?Q?b1MqCaGY5tOJHgJuumQIz+IZamBrXCYRPC6q9zM+oUSS/H9Taxw68znd5T8Z?=
 =?us-ascii?Q?4MrMhN9jgqpUBxtzZMtx4rI1s1cgXexVQDZiwfnis8jbKK4PEAWifO75jLpF?=
 =?us-ascii?Q?/SD7hHlOeqyLjP1LboIynFLU2cFksJ7uL7GYD9nn/WCcgGHCPiHPOfNDexd2?=
 =?us-ascii?Q?amkYLDHylDJTKRaD4NR1bdWaLpyKfpYvpPZ2/2KOOhXVFM7D6aZKGMYC4hQF?=
 =?us-ascii?Q?L/tDmu3jVwp4zRBy7rQUu8yUlR6UXJ5p4XOaRdsnoj6IHNxLJeir/+K2Eke0?=
 =?us-ascii?Q?KSDcr495LGdGXHhIfAnuCfrfGoSaPB1W1/ycQAj4Gu7JCy26xp58Ddk96lHx?=
 =?us-ascii?Q?k/ouyw4P5TsPKrWsS4wQv2pqSs2xDztdIGfqzt7878q2c2DeR3cFtnI6CKA+?=
 =?us-ascii?Q?R3vXzC0wwaxQszpwkxRvHcczf8PvLHkmbsHmfVsP4+TAtwhkcxmtHuhhsGgl?=
 =?us-ascii?Q?PHxLnMMPRTVV0Wii+57U79GwJ1RcMKFL/eIoivnDJFsr//uiuF0eMN/1urPe?=
 =?us-ascii?Q?zvzcqeNi8tyWUdpkq7RKzIqwkMcW5k/CIzyqosVa0tXb8umb5x8f6OljyClN?=
 =?us-ascii?Q?+Evn4ykS22VHTws+xT95Z44nXu1Vlhom+daYATZzSqrvBqPQFX20rBTnHQR5?=
 =?us-ascii?Q?eM90GgoVuRKLjRYs0JBVSIni87zuwDNPqO/NzUi3IO5nsqDLj6sZnoS62QgT?=
 =?us-ascii?Q?aA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 66b0d3b9-55cd-4717-9264-08dba4ff4870
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB7854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Aug 2023 00:07:34.3667 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yynztmW2IoD9KH/cfgyXZpFjR5pmJC63SQlWqCDbPH8ShChdQ05OO/9X3VFDJzfDyKFCKmBrQfbyRCxPezFMuqPK9AA/ibmvJQ3Z9Rv3d2c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB5683
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 40/42] drm/i915/lnl: Add support
 to check c10 phy link rate
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

On Wed, Aug 23, 2023 at 10:07:38AM -0700, Lucas De Marchi wrote:
> From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> 
> Add support to check c10 phy link rate for LNL in
> intel_c10_phy_check_hdmi_link_rate() function.

If it turns out the LNL tables from the previous patch aren't necessary,
then we should be able to drop this one as well.


Matt

> 
> BSpec: 68862
> Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index c8da6985c179..d9c43f3b4f34 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2137,11 +2137,16 @@ static const struct intel_c20pll_state * const mtl_c20_hdmi_tables[] = {
>  	NULL,
>  };
>  
> -static int intel_c10_phy_check_hdmi_link_rate(int clock)
> +static int intel_c10_phy_check_hdmi_link_rate(struct drm_i915_private *i915, int clock)
>  {
> -	const struct intel_c10pll_state * const *tables = mtl_c10_hdmi_tables;
> +	const struct intel_c10pll_state * const *tables;
>  	int i;
>  
> +	if (DISPLAY_VER(i915) >= 20)
> +		tables = lnl_c10_hdmi_tables;
> +	else
> +		tables = mtl_c10_hdmi_tables;
> +
>  	for (i = 0; tables[i]; i++) {
>  		if (clock == tables[i]->clock)
>  			return MODE_OK;
> @@ -2414,7 +2419,7 @@ int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock)
>  	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
>  
>  	if (intel_is_c10phy(i915, phy))
> -		return intel_c10_phy_check_hdmi_link_rate(clock);
> +		return intel_c10_phy_check_hdmi_link_rate(i915, clock);
>  	return intel_c20_phy_check_hdmi_link_rate(clock);
>  }
>  
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
