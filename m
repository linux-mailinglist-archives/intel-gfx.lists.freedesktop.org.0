Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA72679D799
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 19:33:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5862E10E257;
	Tue, 12 Sep 2023 17:33:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 636FE10E257;
 Tue, 12 Sep 2023 17:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694539996; x=1726075996;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=3o38gF73nRhXl5W8DeK4qaTWzuumjscyxaXHk7H+jsE=;
 b=h7YacHJCa+a4bNefdWhmSC1/YTMVpzQQojHeDrq+B7GAsWYbz8wK5oGW
 5MK7RG+Opml5Oov7GemeqiibXy4LCuFLzCwJUSdJWgyghdDHSK61Tbxz5
 tkwC20WWB+21OhArqUNAlreljk1d0sg901l+Z6ULU9mgZfErxDvHIdFGL
 C/fD26rMgOrd8oToCDaat5iHvjsEKd+WeCarODEo54Yd5TQfX1mFeEdzv
 JdyBrXRAeOMECz2jgETn1kCcyog+Rmq5b7jSJL0dYGNd1LT/YgrXgAWmR
 kEaFRr1m0l9YI6ljX+tReRkCz5LGsOFY0Y8eqvKZKhelTPXHHd3EMNlv1 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="363482158"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="363482158"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 10:33:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="773123327"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="773123327"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2023 10:33:14 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 10:33:13 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 10:33:12 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 12 Sep 2023 10:33:12 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 12 Sep 2023 10:33:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bJJ1lg4auoG8U5u7mLwYe24zPDcrEiqXYvBIRvTg9/3uiahr5keDECL4f8u7Mw/fhvJd0nRY9CcpOGAeHpOYimGHn3Nre39G9FvMlukpKgWQlyfc3zIR2c4xAwEkr5pIh/LKWZboqaWc8RpA1I2m8XTycxc3ZpLFmgZ0NXhhqf9UCB+7zWxC6Gr+HtAeRBRbKDYDfxzgH6/7iu4rI2SIZ1kEgHyozBtCKTa/HVcDjVxTa8Hplrl6+cHS5xsaIcVAXa7XfeW8wtC1kiq4ARKLwSKVgCRKO14IlMh/IjV5Oh4tNTiXTYSVKCyvpQgI6jqbdd1l57VodTVPd0n8ldlPbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zmwrqfYaM6AQ6ULfO3ozvzvDEjmL+PiKpvHZjIncYAk=;
 b=FetnnhbymwGqFNIWcOo5IXAJNj3gaj6F2gJnEgQlhZS+i527rwGFFDEYb/MoSGYvHLHnP6qWN2cXg1eMMR6DytDCPymNncJEJKH6GssAkiUH0B1Amv54iNsEcibN4GD10ltjFZslMnjPIYgKf5B3WxenI87C1pNufpedKDDce4U8PBbnEiHMq+5LrNy06OPGSg6f6sBJ0b4+vVF70hjcD3mjX9MB66vI2Uu6O+azkZhwjvx66+t+9kViv4IbIaoKvBrqBOs9EyegQvtUlmkv66stz1oeWqQuovM9t7sCS2SXnjagPEvs8fMNBUIQWTZkUFFTbf1vlxiunIbSolO8YA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SJ2PR11MB8497.namprd11.prod.outlook.com (2603:10b6:a03:57b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.35; Tue, 12 Sep
 2023 17:33:09 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6768.029; Tue, 12 Sep 2023
 17:33:09 +0000
Date: Tue, 12 Sep 2023 12:33:05 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Message-ID: <odvmtpchbuglxd6o7fd34idekqnujbipr52cbxsjncpwodn7q3@wxegp7iyrt53>
References: <20230912044837.1672060-1-lucas.demarchi@intel.com>
 <20230912044837.1672060-9-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230912044837.1672060-9-lucas.demarchi@intel.com>
X-ClientProxiedBy: SJ0PR03CA0069.namprd03.prod.outlook.com
 (2603:10b6:a03:331::14) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SJ2PR11MB8497:EE_
X-MS-Office365-Filtering-Correlation-Id: 1151861e-7dfb-477b-b5ea-08dbb3b654c7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sadKTyDH+8m9+C9L1DpjS5lSa470nt2ro9tcZIolyiijAGEwOD+ehUoCqlYH9yzwdOU6DPDUCsVmtlRckIePAi33OB/b2KhICvyh6CSXxrVe10inCuWJTeDEpEDZSQ3G+Dz5vvqPbBZ52252/6gBHCAj7uD6x2x7q8+P4maMUC/q/IQruS6g6dcG/wmJd/qaWVTpaN7RXqJlSO6vGHL+Q5OlRN+QOb+VNBaBJ9F0Sahz+Y6HmnMHBW42UbBeRGlsSrhiqSSuJQjLv794+NVgEVn2vh/K2QlY0JhZUwucS/pJzKkWRKr8nW87JTr05AsMmQMlDgf1ZPM+VlcPLnFSaznZs4bF7+NTCkt6ODEWM2eJMesXDuQFO5PxfAvqjNzB06giod3fSfvBSG4ANLBqXOrCqNV4Xdjz1slxYXA0pMUA9jJ63wVRtpiYTEQl6I0dind1yoKshtY0FATVMXN+m6mkcta+K7DaE55OtwO62bzF/chx3mxpwPeHgEl+6P/+dEnW+7rmSFZZcqRsCkGV2wKO0wQI08Thb4PE8e6aoThmXgG7BaoEcKOlFQKD2z1S
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(366004)(136003)(39860400002)(376002)(346002)(396003)(451199024)(1800799009)(186009)(66476007)(66946007)(4326008)(66556008)(107886003)(8676002)(316002)(478600001)(450100002)(54906003)(6486002)(8936002)(6506007)(9686003)(6512007)(41300700001)(83380400001)(5660300002)(26005)(82960400001)(6666004)(2906002)(86362001)(33716001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?AnPQskqDH91oFNLadkI4yatDBZYAmduG34y/eUvzj7nUCieufT7/0pLclaKk?=
 =?us-ascii?Q?9L1hxMHpGfEGgjIlewpJDhCWY29qtCRVpjKruR1oC2t86q9dqpMJuvwKiKNv?=
 =?us-ascii?Q?ALwHF+ruXliH1nphZAfOfGWcLPekFikJFVmBYf7AhiWsZV6OWQezLQe8/zWb?=
 =?us-ascii?Q?/9U+UEgjB7vYCX8dGB8gcqOtcuuOTGLgJWdVHRbLNQjRioEC8WKkbUaQfDRz?=
 =?us-ascii?Q?MKpkZSw76qmfgV104Fol9fXaAIQ2qv+8shrtTNVDxhxG4PFQCFaSyru9ti8T?=
 =?us-ascii?Q?pP/+KcSWixww/tNVcmWWZhHKmFgqa1MtWYcU1cCIVtT9sHZwccvg6YP8XaXs?=
 =?us-ascii?Q?cANcg2PVcTFnbSg2gDztLwO0L2GoSsIbb2tt8MA9hPG5TWSRgRdNZA23O8Pg?=
 =?us-ascii?Q?M7qQiYoEVEO8c6P2BvfH4kJZsuin/BbESot1MVw+kBzeDm0T2O1UJqJZUAA/?=
 =?us-ascii?Q?HtH/DOwXgw4QfAztJhNl8zX+afHYsKig9DrVGQja5eO74pJLHmTvvONfi4bc?=
 =?us-ascii?Q?/tSXpFIz8KwkVHS00l+PzBPA6JjMpuQN2qJft+HiQvDtvGz+bpAsw9VAOPa8?=
 =?us-ascii?Q?SrudUTaNScP+2+XFQuWXQJpgP9YSIcnyDgu2SNI1KCUkvqaWZH8CERyfrmNE?=
 =?us-ascii?Q?5KSDCHBT6AMRyNAqfM0Awwll2RZmQpxCEbQbtdAgnhEOOB5698cLDv7S4tGW?=
 =?us-ascii?Q?GBhZUXatG59unc3wGLbQGR5YeBeSTtF6i5si1rTTzlNDmrUHB1zBSucRtvjr?=
 =?us-ascii?Q?Ee4tAnW5AgcrmCsQGroq4NT1/cl9LzmrdvJ/2Uuo3Yni7puoRBbsKH6ttXvS?=
 =?us-ascii?Q?VBS0OgzpnqzV9EPREagvBKGcMcv+XgxLnBvvbhL/E1HrkDl+r/lcSEqu0NNb?=
 =?us-ascii?Q?zcfarkfsWE7IF0RtD7kWOm3MTjxTTCUxEsVYitcqJ4ZtNrOmrvNkSIeW8OaE?=
 =?us-ascii?Q?AI2LVR9NbxEHvcayLtQJ14nVlA3A7fIBai1ghelicrjESO5WOr4hTBHCmyTu?=
 =?us-ascii?Q?plzvzQKo20kHdPYOy7yqrxTpFoC2qYVZNx65HLTdkE3C3afldhfxpwBt/yae?=
 =?us-ascii?Q?DkRs8jA3aqQLja2paPLcan513b9i/i8RmITbcDd2R+8z6AWWD5rK9Pkp0nus?=
 =?us-ascii?Q?xqCICp++0x3vr7oUZKuz+Nlg+5u+UoJm9j5cvHwYUQkZBxH5cgowXa4w9r7b?=
 =?us-ascii?Q?lvvmakp4NamvJ6pNuxnyzTgxzrBtmkVd6Us+zZPhjj5LgozcdMEET8q6uCIx?=
 =?us-ascii?Q?aBxs3HNNYk/ouJibA4zzQiNjDAw9X0O5EfxhonLo3khsD3N8FFs3hwqJR6B3?=
 =?us-ascii?Q?lxnWCXuol9SbCkOW6uKr/e/dtSQeQ2b0DAkfs9bBrb07iKwmfH4db64mCbVm?=
 =?us-ascii?Q?T6Xk07MOQslbTxW6gy10U+JG2G1q1MddbDgFw1cOkcMfuxF+qIuMov0vDKyF?=
 =?us-ascii?Q?bVbbuyJTXF/jAy77BeQuZF2+MReLfgCypOeOe2BbGFG1hjREOWki7ZTsTj+o?=
 =?us-ascii?Q?GcJtVIMb1CX87U5PeIji56OE3Vg5nxTYAIhQr0ldZYRUuo5MJGAvWqBNRFr8?=
 =?us-ascii?Q?xDwfooSrh/CexcHa+CIod8ApjpQAyLXTwX2hYGxEO5ftDKXbdbxuIBPpNlDM?=
 =?us-ascii?Q?KQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1151861e-7dfb-477b-b5ea-08dbb3b654c7
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2023 17:33:09.3455 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Vuc6FJtv3I8XllGpSfRP3pyXuEwxwefHQ2f8UcyIeqfPmu8Cb/DXar8jT+XErKwSjq6G14Yvfhh207bHo/iRxF+eqJxOwAfBuwtzsXy8spo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8497
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 08/29] drm/i915/display: Consolidate
 saved port bits in intel_digital_port
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 11, 2023 at 09:48:16PM -0700, Lucas De Marchi wrote:
>From: Clint Taylor <clinton.a.taylor@intel.com>
>
>We use multiple variables for HDMI and DisplayPort to store the value of
>DDI_BUF_CTL register (now called DDI_CTL_DE in the spec). Consolidate it
>to just one in struct intel_digital_port. This is a preparation step for
>future changes in D2D enable/disable sequence for xe2lpd that need to
>save some additional bits.
>
>Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_ddi.c | 36 +++++++++++-------------
> drivers/gpu/drm/i915/display/intel_dp.c  |  2 +-
> 2 files changed, 18 insertions(+), 20 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>index 690e1e02aba8..75a2da5d0c9e 100644
>--- a/drivers/gpu/drm/i915/display/intel_ddi.c
>+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>@@ -325,26 +325,25 @@ static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
> 				      const struct intel_crtc_state *crtc_state)
> {
> 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>-	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> 	enum phy phy = intel_port_to_phy(i915, encoder->port);
>
> 	/* DDI_BUF_CTL_ENABLE will be set by intel_ddi_prepare_link_retrain() later */
>-	intel_dp->DP = dig_port->saved_port_bits |
>+	dig_port->saved_port_bits |=

One thing we need to do better here: it's going to be error prone to
leave DP as is. I think we need to document that in the case of recent
platforms using ddi, the saved bits are stored in dig_port. And then
maybe rename DP to e.g. saved_reg_bits.

I think this would avoid old patches being applied changing DP and then
having its changes silently ignored. I would also be a better
description of what this variable actually is.

Lucas De Marchi


> 		DDI_PORT_WIDTH(crtc_state->lane_count) |
> 		DDI_BUF_TRANS_SELECT(0);
>
> 	if (DISPLAY_VER(i915) >= 14) {
> 		if (intel_dp_is_uhbr(crtc_state))
>-			intel_dp->DP |= DDI_BUF_PORT_DATA_40BIT;
>+			dig_port->saved_port_bits |= DDI_BUF_PORT_DATA_40BIT;
> 		else
>-			intel_dp->DP |= DDI_BUF_PORT_DATA_10BIT;
>+			dig_port->saved_port_bits |= DDI_BUF_PORT_DATA_10BIT;
> 	}
>
> 	if (IS_ALDERLAKE_P(i915) && intel_phy_is_tc(i915, phy)) {
>-		intel_dp->DP |= ddi_buf_phy_link_rate(crtc_state->port_clock);
>+		dig_port->saved_port_bits |= ddi_buf_phy_link_rate(crtc_state->port_clock);
> 		if (!intel_tc_port_in_tbt_alt_mode(dig_port))
>-			intel_dp->DP |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
>+			dig_port->saved_port_bits |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
> 	}
> }
>
>@@ -1450,7 +1449,7 @@ hsw_set_signal_levels(struct intel_encoder *encoder,
> 		      const struct intel_crtc_state *crtc_state)
> {
> 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>-	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> 	int level = intel_ddi_level(encoder, crtc_state, 0);
> 	enum port port = encoder->port;
> 	u32 signal_levels;
>@@ -1467,10 +1466,10 @@ hsw_set_signal_levels(struct intel_encoder *encoder,
> 	drm_dbg_kms(&dev_priv->drm, "Using signal levels %08x\n",
> 		    signal_levels);
>
>-	intel_dp->DP &= ~DDI_BUF_EMP_MASK;
>-	intel_dp->DP |= signal_levels;
>+	dig_port->saved_port_bits &= ~DDI_BUF_EMP_MASK;
>+	dig_port->saved_port_bits |= signal_levels;
>
>-	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
>+	intel_de_write(dev_priv, DDI_BUF_CTL(port), dig_port->saved_port_bits);
> 	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
> }
>
>@@ -3145,7 +3144,6 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
> 	struct drm_connector *connector = conn_state->connector;
> 	enum port port = encoder->port;
> 	enum phy phy = intel_port_to_phy(dev_priv, port);
>-	u32 buf_ctl;
>
> 	if (!intel_hdmi_handle_sink_scrambling(encoder, connector,
> 					       crtc_state->hdmi_high_tmds_clock_ratio,
>@@ -3211,7 +3209,7 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
> 	 * is filled with lane count, already set in the crtc_state.
> 	 * The same is required to be filled in PORT_BUF_CTL for C10/20 Phy.
> 	 */
>-	buf_ctl = dig_port->saved_port_bits | DDI_BUF_CTL_ENABLE;
>+	dig_port->saved_port_bits |= DDI_BUF_CTL_ENABLE;
> 	if (DISPLAY_VER(dev_priv) >= 14) {
> 		u8  lane_count = mtl_get_port_width(crtc_state->lane_count);
> 		u32 port_buf = 0;
>@@ -3224,13 +3222,13 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
> 		intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(port),
> 			     XELPDP_PORT_WIDTH_MASK | XELPDP_PORT_REVERSAL, port_buf);
>
>-		buf_ctl |= DDI_PORT_WIDTH(lane_count);
>+		dig_port->saved_port_bits |= DDI_PORT_WIDTH(lane_count);
> 	} else if (IS_ALDERLAKE_P(dev_priv) && intel_phy_is_tc(dev_priv, phy)) {
> 		drm_WARN_ON(&dev_priv->drm, !intel_tc_port_in_legacy_mode(dig_port));
>-		buf_ctl |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
>+		dig_port->saved_port_bits |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
> 	}
>
>-	intel_de_write(dev_priv, DDI_BUF_CTL(port), buf_ctl);
>+	intel_de_write(dev_priv, DDI_BUF_CTL(port), dig_port->saved_port_bits);
>
> 	intel_wait_ddi_buf_active(dev_priv, port);
>
>@@ -3448,8 +3446,8 @@ static void mtl_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
> 	mtl_port_buf_ctl_program(encoder, crtc_state);
>
> 	/* 6.i Configure and enable DDI_CTL_DE to start sending valid data to port slice */
>-	intel_dp->DP |= DDI_BUF_CTL_ENABLE;
>-	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
>+	dig_port->saved_port_bits |= DDI_BUF_CTL_ENABLE;
>+	intel_de_write(dev_priv, DDI_BUF_CTL(port), dig_port->saved_port_bits);
> 	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
>
> 	/* 6.j Poll for PORT_BUF_CTL Idle Status == 0, timeout after 100 us */
>@@ -3499,8 +3497,8 @@ static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
> 	    (intel_tc_port_in_dp_alt_mode(dig_port) || intel_tc_port_in_legacy_mode(dig_port)))
> 		adlp_tbt_to_dp_alt_switch_wa(encoder);
>
>-	intel_dp->DP |= DDI_BUF_CTL_ENABLE;
>-	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
>+	dig_port->saved_port_bits |= DDI_BUF_CTL_ENABLE;
>+	intel_de_write(dev_priv, DDI_BUF_CTL(port), dig_port->saved_port_bits);
> 	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
>
> 	intel_wait_ddi_buf_active(dev_priv, port);
>diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>index 2206b45bc78c..fdf71185cb00 100644
>--- a/drivers/gpu/drm/i915/display/intel_dp.c
>+++ b/drivers/gpu/drm/i915/display/intel_dp.c
>@@ -6017,7 +6017,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
> 	intel_dp->pps.active_pipe = INVALID_PIPE;
>
> 	/* Preserve the current hw state. */
>-	intel_dp->DP = intel_de_read(dev_priv, intel_dp->output_reg);
>+	dig_port->saved_port_bits = intel_de_read(dev_priv, intel_dp->output_reg);
> 	intel_dp->attached_connector = intel_connector;
>
> 	if (_intel_dp_is_port_edp(dev_priv, intel_encoder->devdata, port)) {
>-- 
>2.40.1
>
