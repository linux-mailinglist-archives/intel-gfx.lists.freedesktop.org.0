Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB366C83AA
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Mar 2023 18:48:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 319CA10E177;
	Fri, 24 Mar 2023 17:48:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7631410E177
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Mar 2023 17:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679680102; x=1711216102;
 h=date:from:to:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=Cl1G/jQa4qHC52Rt3+SjdZL6gtN4U+GIqva9WOGmq/M=;
 b=a+Z+Pc92qRostaGmyup2N5Jgao+rk3xDUR3aVpiMLBhlzwPXS7FSIHn4
 LRVSVzMeS7sLEI+qEmamaqVILydvV4RCIAjaCk0aa2l6ZcVPqbunVJvRH
 6fGX9JNRXte897h1I5BWJejerWhjMtCzaUW/EBbUmrpg/gzNUO1FndE86
 KmD/evRWrQsrx2FeS2yaU5nkxlIs8u5dJ2Zifu3ZgCzne1LQiK5ubxKtk
 p2sb8hgCw0SIhq+Frmjny80umsaS2VBkNzSg6D6DWTN8LyFsvOD3o2Awe
 STKjVpIIvAfIcFq5ByJviFOV27sHKmxDKEFZel/rmovk6LWEx9pJ+950i g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="319494961"
X-IronPort-AV: E=Sophos;i="5.98,288,1673942400"; d="scan'208";a="319494961"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2023 10:48:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="715323797"
X-IronPort-AV: E=Sophos;i="5.98,288,1673942400"; d="scan'208";a="715323797"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 24 Mar 2023 10:48:18 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 24 Mar 2023 10:48:11 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 24 Mar 2023 10:48:10 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 24 Mar 2023 10:48:10 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 24 Mar 2023 10:48:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gx9S86fAz9SRU11rNLZi7FjB9u6qLr+6AgmNfwsDy5FW/36r9coYCiL+vRZLxUY0mR8cvu6vgUiFH7dq99WAJnIpx+RD2fKqZwF1MaOL6slZIbTcH/6Ajran0Un50VH4WTYaai+ZMlJYKJD5mCYm9BtLsMr3DFTP0qQgGgAtzoZDwuq0i1sXMDQKw+Z0Eh/5a4bIYBRMyZjEdv7rroguNdqY3gY0jdcC4hxv7gZo52pBNNvI2Xa/mAlUaDkd9hl/3g2HBaJHstRpAmZLalSzaTRMlGiQNKjDFLnMF84nwlEpInJ2VQ9M+Uyc/tBE7rvl4p9JNs9vrcOWyALmj9bQmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mX+nCTHMvQyoJas6gtDOo2cBoDNJLevXbSi8gxhJUw8=;
 b=HJG6XxlZ2Z/Um1XNs6WL4tA4/REo6DoyYnHlUB3wgZoAQvKq+fTPwsn1ix0VVCeNT/VjvSHv0wBoTrL2nGqJhH4Hv0RNWBSMs+cynibbf/rUs7OkTtaBL3wvBMIDGqK6BvACNU6y7IcFRM4yWwbeMEzHZtRRupQ7Ftpr29OmJhUUxyt2ymrIxQC//ptHp7wjQmRYI9cBLkjlSiVm0PnQ8GI8OGQ4DyzjqKGuPBvRHnSt5YhoWPGQyHHmINC1ccKuoSmDZG/q294bAkc1fn1WEbnX0do0AS3QToKZQvjIHec56ky9R4U+YzAjbO8Gx2nTl8L/gDteagDf0ofSp1tNNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by PH8PR11MB8037.namprd11.prod.outlook.com (2603:10b6:510:25d::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Fri, 24 Mar
 2023 17:48:05 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d12:1f2d:d921:2c4e]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d12:1f2d:d921:2c4e%4]) with mapi id 15.20.6178.038; Fri, 24 Mar 2023
 17:48:05 +0000
Date: Fri, 24 Mar 2023 14:47:58 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Mika Kahola <mika.kahola@intel.com>, <intel-gfx@lists.freedesktop.org>
Message-ID: <20230324174758.jkymk3lyv72cflbp@gjsousa-mobl2>
References: <20230316111335.66915-1-mika.kahola@intel.com>
 <20230316111335.66915-5-mika.kahola@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230316111335.66915-5-mika.kahola@intel.com>
X-ClientProxiedBy: BYAPR06CA0057.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::34) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|PH8PR11MB8037:EE_
X-MS-Office365-Filtering-Correlation-Id: adf3333f-c95e-4ae1-1196-08db2c8feafb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OUHZ6mOyvOwM7ukKzkqYvLB0PJBKhQbOeiprC+PTzHUSDOUz7CsLYvo7F0RGkLYE55xYLlaTv1dVAsYUiLHwp3ZOsXY8EHiYuQOZSDDt587J9+YbJVXHPPsx1KEkQa+KQdT+0qblzE4ua/6RtVVireUkJCVWj3fljxz3yZrbawg9NSsWih/etjhChf1LgGwM50fgpA8gEZrKrbMuAeOkkcJY8kSeGbdXUxsFeS1Sd0B9VbOwv0+uthSzmFC7OeELMzlasVETJ3uGo9WlCVDYRB7838iFegwFUxq82lY5Jqut0eDDfjbFg/gTVpPq8Bgqnr93pASwF9los+gAXcy2oCKtyeOMOCouWCGuK28F9XuFdJ1Y7Fq5vK5M0UmObeW0DfDcez0LP1+Sx88ZwvPT1OwFiQcgrLEO8Op1h6N5CvFVXhIfvxdc/7OmuJkWZ6r7/iNsva4/kCpP6DcPRHrceZnFqKZYdqSJZmVvTtMQzxuE8rnxKCZBi2nhE6pdYFsOiqdYIo0Ru84PJAX6nbExWA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(39860400002)(396003)(136003)(366004)(376002)(346002)(451199021)(2906002)(38100700002)(66946007)(66556008)(30864003)(41300700001)(5660300002)(44832011)(316002)(82960400001)(15650500001)(6666004)(1076003)(26005)(6512007)(6506007)(8936002)(8676002)(966005)(83380400001)(6486002)(86362001)(33716001)(66476007)(186003)(9686003)(478600001)(559001)(579004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?8MsJ4dR8Q95XQHRgNqKlCb0Hc8ypxXi74j2KQL/zFNk/HMXQVA51169fBe?=
 =?iso-8859-1?Q?oPHiBQm9jM6Tdm6m6VM7uGOWkfag0KjChjMoOm6MZAUpYmsgQIsQQ73kLK?=
 =?iso-8859-1?Q?aAf1kFoSeT405hXSLA8RUBSaCdK3IRNKdYZt4kmaM/vmVG2mQt0U4MaQol?=
 =?iso-8859-1?Q?B8DC599fdk8rEctGcDJbmqKFlGfcwDvebX6+jckApXRmxnG50HvYe6BRma?=
 =?iso-8859-1?Q?KTJeGigT37ShDI8h1v/fikSAOJU4QYbzIvW9t0XPLU+ZHpV2PyAVKeVPYp?=
 =?iso-8859-1?Q?d9+KnPVbxoQKtdgNa4/COakqzmat/p2M8/0dRET9eY9CeuDgeMO4wgXb3i?=
 =?iso-8859-1?Q?dps2eBbcV156INEP3mn++kK6OBQUJ/bZCMB59eaUuKxydsQE7+aIimaFJI?=
 =?iso-8859-1?Q?dUtNWsLmTvT05GTeo+b0qUVdMHd67Y3tPVMyo/LbcMNuFD1otYYpD9UAbj?=
 =?iso-8859-1?Q?h8HWO8p+JQ4j9mKqjYvsq/byyvBgMEGczl9ZrPNrtqGmOBus87056C103Q?=
 =?iso-8859-1?Q?7vsXhlnrPqIavdnmkWov1wwhFPvW14M9NLRIVjd/5YuvsX9Ckf0GiV3Fx9?=
 =?iso-8859-1?Q?+UIzksofg3sLPKEPHA8Cow5/CWLPWLzgejVX1spsigJF52X4ZOqhHnABDs?=
 =?iso-8859-1?Q?ypw1fBECXQTSe32NbzPHE60gczbVJAH05QYVW5sWCMu+2uGCQbMJQvacyp?=
 =?iso-8859-1?Q?DQCS+3rig+Rswrq/XIU8kklDRAa/wruXj6VBxcqJj+LZZLFNkScFq/fh+S?=
 =?iso-8859-1?Q?f7I7jiXvl3TEFMCxCOOKHTPBJEpJaytYxsVUuf6IW3hBak2OrGwcXMVU3g?=
 =?iso-8859-1?Q?CqLM6jObztibQtFen0+ZYWBof2QqKYCOWiDFM42mzXaoVVZW6iGFH9IiL/?=
 =?iso-8859-1?Q?cUHW/ESXOfaCnsWflQAbghPzQ8/daGWtFUPYDLMSMdIwH+jIpLJXSqVU/Q?=
 =?iso-8859-1?Q?DjzuMTM+RVjxM5H44QUzLlYL6ioEk8fxCfCkq90cH0Ak3pRCM1zmevI0jk?=
 =?iso-8859-1?Q?/hz9AvsWwnTIlBY/w1s3U+apAzDLn52FpKXTw0MhfqWUxg8q6KW/+8PJ3A?=
 =?iso-8859-1?Q?IxJejiB1Ihlbjnpv5oHzhR927ywtzkOO1TCKSVu7x+Hm1Hfw3hzLsEWmbe?=
 =?iso-8859-1?Q?gsAEPfjcS2XPxFdP+WHdjCXrZkqpKPmBR00bVgExGm+dPKjj9ZbE9ECSrX?=
 =?iso-8859-1?Q?7FEkyvBb808WI6eV4T9lb2I7g6nX+D71RYN0cop2nfD3VTCJyD3GQbH7S8?=
 =?iso-8859-1?Q?6vwbtKeOnlVl4VzHzGLToXBicBp4B3yGENSq7Uvu9El352hEQK9Fdw/qPx?=
 =?iso-8859-1?Q?3LYu50sM+QfuOnsxS87MFseH2c6SddgcQpce1qB/G7BCGa82/X6OL0bDfe?=
 =?iso-8859-1?Q?XPLPX+mSVn4sNd5dDD2FL3Ly0qSPcvxgvFn+SxvtbbIujr64ls48/gIfvH?=
 =?iso-8859-1?Q?5mQj5sR8pDMdQIsjpPK/c6T4JMiKLLWSh6G++Ii/gKId/eOfqewbvTgoRt?=
 =?iso-8859-1?Q?cO6xJJAs4raA+LDOj4FyRVSgoNLLo6LZvRD6ICvwaPPE2+I6TKV0NsZ+iH?=
 =?iso-8859-1?Q?Ye+vJ+aPmQ7NjscEEWg97ymDbDLESeY291sJaOiwQv7xzE29mamwgvAkR3?=
 =?iso-8859-1?Q?VuF03mXWE73U8BBb+cK6rOtCFeepFXKGuocii/4tXNbQOSmKNvzKDNKw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: adf3333f-c95e-4ae1-1196-08db2c8feafb
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2023 17:48:05.6386 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fGMuaG0Yw97KAlZY6X7HFPtfbuh0v92zYVHTSFyzGgn2FoSaLD2ytGYvEmUBnZ02iJY6K2xsiRW+YJyJXaYNXg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8037
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 04/22] drm/i915/mtl: Add Support for C10
 PHY message bus and pll programming
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

On Thu, Mar 16, 2023 at 01:13:17PM +0200, Mika Kahola wrote:
> From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> 
> XELPDP has C10 and C20 phys from Synopsys to drive displays. Each phy
> has a dedicated PIPE 5.2 Message bus for configuration. This message
> bus is used to configure the phy internal registers.
> 
> XELPDP has C10 phys to drive output to the EDP and the native output
> from the display engine. Add structures, programming hardware state
> readout logic. Port clock calculations are similar to DG2. Use the DG2
> formulae to calculate the port clock but use the relevant pll signals.
> Note: PHY lane 0 is always used for PLL programming.
> 
> Add sequences for C10 phy enable/disable phy lane reset,
> powerdown change sequence and phy lane programming.
> 
> Bspec: 64539, 64568, 64599, 65100, 65101, 65450, 65451, 67610, 67636
> 
> v2: Squash patches related to C10 phy message bus and pll
>     programming support (Jani)
>     Move register definitions to a new file i.e. intel_cx0_reg_defs.h (Jani)
>     Move macro definitions (Jani)
>     DP rates as separate patch (Jani)
>     Spin out xelpdp register definitions into a separate file (Jani)
>     Replace macro to select registers based on phy lane with
>     function calls (Jani)
>     Fix styling issues (Jani)
>     Call XELPDP_PORT_P2M_MSGBUS_STATUS() with port instead of phy (Lucas)
> v3: Move clear request flag into try-loop
> v4: On PHY idle change drm_err_once() as drm_dbg_kms() (Jani)
>     use __intel_de_wait_for_register() instead of __intel_wait_for_register
>     and uncomment intel_uncore.h (Jani)
>     Add DP-alt support for PHY lane programming (Khaled)

Hi Mika!

The only comment from my feedback in [1] that I see addressed in this
version here is the renaming of intel_c10_program_phy_lane() to
intel_cx0_program_phy_lane.

Not sure if you did receive that in you inbox (meaning that the rename
aforementioned could be a coincidence).

[1] https://patchwork.freedesktop.org/patch/517048/?series=109714&rev=4#comment_943150

> 
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |    1 +
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 1120 +++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   43 +
>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h |   34 +
>  drivers/gpu/drm/i915/display/intel_ddi.c      |   22 +-
>  .../drm/i915/display/intel_display_power.c    |    3 +-
>  .../i915/display/intel_display_power_well.c   |    2 +-
>  .../drm/i915/display/intel_display_types.h    |    6 +
>  drivers/gpu/drm/i915/display/intel_dpll.c     |   22 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |    2 +-
>  .../drm/i915/display/intel_modeset_verify.c   |    2 +
>  drivers/gpu/drm/i915/i915_reg.h               |    5 +
>  drivers/gpu/drm/i915/i915_reg_defs.h          |   57 +
>  13 files changed, 1314 insertions(+), 5 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 8e46f57e4569..27d81ba37187 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -295,6 +295,7 @@ i915-y += \
>  	display/icl_dsi.o \
>  	display/intel_backlight.o \
>  	display/intel_crt.o \
> +	display/intel_cx0_phy.o \
>  	display/intel_ddi.o \
>  	display/intel_ddi_buf_trans.o \
>  	display/intel_display_trace.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> new file mode 100644
> index 000000000000..dce55f0ed5e1
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -0,0 +1,1120 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright � 2021 Intel Corporation
> + */
> +
> +#include "i915_reg.h"
> +#include "intel_cx0_phy.h"
> +#include "intel_cx0_phy_regs.h"
> +#include "intel_de.h"
> +#include "intel_display_types.h"
> +#include "intel_dp.h"
> +#include "intel_panel.h"
> +#include "intel_tc.h"
> +
> +bool intel_is_c10phy(struct drm_i915_private *dev_priv, enum phy phy)
> +{
> +	if (IS_METEORLAKE(dev_priv) && (phy < PHY_C))
> +		return true;
> +
> +	return false;
> +}
> +
> +static void intel_cx0_bus_reset(struct drm_i915_private *i915, enum port port, int lane)
> +{
> +	enum phy phy = intel_port_to_phy(i915, port);
> +
> +	/* Bring the phy to idle. */
> +	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane-1),
> +		       XELPDP_PORT_M2P_TRANSACTION_RESET);
> +
> +	/* Wait for Idle Clear. */
> +	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane-1),
> +				    XELPDP_PORT_M2P_TRANSACTION_RESET,
> +				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
> +		drm_dbg_kms(&i915->drm, "Failed to bring PHY %c to idle.\n", phy_name(phy));
> +		return;
> +	}
> +
> +	intel_de_write(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane-1), ~0);
> +}
> +
> +static int intel_cx0_wait_for_ack(struct drm_i915_private *i915, enum port port, int lane, u32 *val)
> +{
> +	enum phy phy = intel_port_to_phy(i915, port);
> +
> +	if (__intel_de_wait_for_register(i915,
> +				         XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane-1),
> +				         XELPDP_PORT_P2M_RESPONSE_READY,
> +				         XELPDP_PORT_P2M_RESPONSE_READY,
> +				         XELPDP_MSGBUS_TIMEOUT_FAST_US,
> +				         XELPDP_MSGBUS_TIMEOUT_SLOW, val)) {
> +		drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting for message ACK. Status: 0x%x\n", phy_name(phy), *val);
> +		return -ETIMEDOUT;
> +	}
> +
> +	return 0;
> +}
> +
> +static int __intel_cx0_read(struct drm_i915_private *i915, enum port port,
> +			   int lane, u16 addr, u32 *val)
> +{
> +	enum phy phy = intel_port_to_phy(i915, port);
> +	int ack;
> +
> +	/* Wait for pending transactions.*/
> +	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane-1),
> +				    XELPDP_PORT_M2P_TRANSACTION_PENDING,
> +				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
> +		drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting for previous transaction to complete. Reset the bus and retry.\n", phy_name(phy));
> +		intel_cx0_bus_reset(i915, port, lane);
> +		return -ETIMEDOUT;
> +	}
> +
> +	/* Issue the read command. */
> +	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane-1),
> +		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
> +		       XELPDP_PORT_M2P_COMMAND_READ |
> +		       XELPDP_PORT_M2P_ADDRESS(addr));
> +
> +	/* Wait for response ready. And read response.*/
> +	ack = intel_cx0_wait_for_ack(i915, port, lane, val);
> +	if (ack < 0) {
> +		intel_cx0_bus_reset(i915, port, lane);
> +		return ack;
> +	}
> +
> +	/* Check for error. */
> +	if (*val & XELPDP_PORT_P2M_ERROR_SET) {
> +		drm_dbg_kms(&i915->drm, "PHY %c Error occurred during read command. Status: 0x%x\n", phy_name(phy), *val);
> +		intel_cx0_bus_reset(i915, port, lane);
> +		return -EINVAL;
> +	}
> +
> +	/* Check for Read Ack. */
> +	if (REG_FIELD_GET(XELPDP_PORT_P2M_COMMAND_TYPE_MASK, *val) !=
> +			  XELPDP_PORT_P2M_COMMAND_READ_ACK) {
> +		drm_dbg_kms(&i915->drm, "PHY %c Not a Read response. MSGBUS Status: 0x%x.\n", phy_name(phy), *val);
> +		intel_cx0_bus_reset(i915, port, lane);
> +		return -EINVAL;
> +	}
> +
> +	/* Clear Response Ready flag.*/
> +	intel_de_write(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane-1), ~0);
> +
> +	return REG_FIELD_GET(XELPDP_PORT_P2M_DATA_MASK, *val);
> +}
> +
> +static u8 intel_cx0_read(struct drm_i915_private *i915, enum port port,
> +			 int lane, u16 addr)
> +{
> +	enum phy phy = intel_port_to_phy(i915, port);
> +	int i, status = 0;
> +	u32 val;
> +
> +	for (i = 0; i < 3; i++) {
> +		status = __intel_cx0_read(i915, port, lane, addr, &val);
> +
> +		if (status >= 0)
> +			break;
> +	}
> +
> +	if (i == 3) {
> +		drm_err_once(&i915->drm, "PHY %c Read %04x failed after %d retries.\n", phy_name(phy), addr, i);
> +		return 0;
> +	}
> +
> +	return status;
> +}
> +
> +static int intel_cx0_wait_cwrite_ack(struct drm_i915_private *i915,
> +				      enum port port, int lane)
> +{
> +	enum phy phy = intel_port_to_phy(i915, port);
> +	int ack;
> +	u32 val = 0;
> +
> +	/* Check for write ack. */
> +	ack = intel_cx0_wait_for_ack(i915, port, lane, &val);
> +	if (ack < 0)
> +		return ack;
> +
> +	if ((REG_FIELD_GET(XELPDP_PORT_P2M_COMMAND_TYPE_MASK, val) !=
> +	     XELPDP_PORT_P2M_COMMAND_WRITE_ACK) || val & XELPDP_PORT_P2M_ERROR_SET) {
> +		drm_dbg_kms(&i915->drm, "PHY %c Unexpected ACK received. MSGBUS STATUS: 0x%x.\n", phy_name(phy), val);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static int __intel_cx0_write_once(struct drm_i915_private *i915, enum port port,
> +				  int lane, u16 addr, u8 data, bool committed)
> +{
> +	enum phy phy = intel_port_to_phy(i915, port);
> +
> +	/* Wait for pending transactions.*/
> +	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane-1),
> +				    XELPDP_PORT_M2P_TRANSACTION_PENDING,
> +				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
> +		drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting for previous transaction to complete. Reset the bus and retry.\n", phy_name(phy));
> +		intel_cx0_bus_reset(i915, port, lane);
> +		return -ETIMEDOUT;
> +	}
> +
> +	/* Issue the write command. */
> +	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane-1),
> +		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
> +		       (committed ? XELPDP_PORT_M2P_COMMAND_WRITE_COMMITTED :
> +		       XELPDP_PORT_M2P_COMMAND_WRITE_UNCOMMITTED) |
> +		       XELPDP_PORT_M2P_DATA(data) |
> +		       XELPDP_PORT_M2P_ADDRESS(addr));
> +
> +	/* Check for error. */
> +	if (committed) {
> +		if (intel_cx0_wait_cwrite_ack(i915, port, lane) < 0) {
> +			intel_cx0_bus_reset(i915, port, lane);
> +			return -EINVAL;
> +		}
> +	} else if ((intel_de_read(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane-1)) &
> +			    XELPDP_PORT_P2M_ERROR_SET)) {
> +		drm_dbg_kms(&i915->drm, "PHY %c Error occurred during write command.\n", phy_name(phy));
> +		intel_cx0_bus_reset(i915, port, lane);
> +		return -EINVAL;
> +	}
> +
> +	intel_de_write(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane-1), ~0);
> +
> +	return 0;
> +}
> +
> +static void __intel_cx0_write(struct drm_i915_private *i915, enum port port,
> +			      int lane, u16 addr, u8 data, bool committed)
> +{
> +	enum phy phy = intel_port_to_phy(i915, port);
> +	int i, status;
> +
> +	for (i = 0; i < 3; i++) {
> +		status = __intel_cx0_write_once(i915, port, lane, addr, data, committed);
> +
> +		if (status == 0)
> +			break;
> +	}
> +
> +	if (i == 3) {
> +		drm_err_once(&i915->drm, "PHY %c Write %04x failed after %d retries.\n", phy_name(phy), addr, i);
> +		return;
> +	}
> +}
> +
> +static void intel_cx0_write(struct drm_i915_private *i915, enum port port,
> +			    int lane, u16 addr, u8 data, bool committed)
> +{
> +	if (lane & INTEL_CX0_BOTH_LANES) {
> +		__intel_cx0_write(i915, port, INTEL_CX0_LANE0, addr, data, committed);
> +		__intel_cx0_write(i915, port, INTEL_CX0_LANE1, addr, data, committed);
> +	} else {
> +		__intel_cx0_write(i915, port, lane, addr, data, committed);
> +	}
> +}
> +
> +static void __intel_cx0_rmw(struct drm_i915_private *i915, enum port port,
> +			    int lane, u16 addr, u8 clear, u8 set, bool committed)
> +{
> +	u8 old, val;
> +
> +	old = intel_cx0_read(i915, port, lane, addr);
> +	val = (old & ~clear) | set;
> +
> +	if (val != old)
> +		intel_cx0_write(i915, port, lane, addr, val, committed);
> +}
> +
> +static void intel_cx0_rmw(struct drm_i915_private *i915, enum port port,
> +			  int lane, u16 addr, u8 clear, u8 set, bool committed)
> +{
> +	if (lane & INTEL_CX0_BOTH_LANES) {
> +		__intel_cx0_rmw(i915, port, INTEL_CX0_LANE0, addr, clear, set, committed);
> +		__intel_cx0_rmw(i915, port, INTEL_CX0_LANE1, addr, clear, set, committed);
> +	} else {
> +		__intel_cx0_rmw(i915, port, lane, addr, clear, set, committed);
> +	}
> +}
> +
> +/*
> + * Basic DP link rates with 38.4 MHz reference clock.
> + * Note: The tables below are with SSC. In non-ssc
> + * registers 0xC04 to 0xC08(pll[4] to pll[8]) will be
> + * programmed 0.
> + */
> +
> +static const struct intel_c10mpllb_state mtl_c10_dp_rbr = {
> +	.clock = 162000,
> +	.pll[0] = 0xB4,
> +	.pll[1] = 0,
> +	.pll[2] = 0x30,
> +	.pll[3] = 0x1,
> +	.pll[4] = 0x26,
> +	.pll[5] = 0x0C,
> +	.pll[6] = 0x98,
> +	.pll[7] = 0x46,
> +	.pll[8] = 0x1,
> +	.pll[9] = 0x1,
> +	.pll[10] = 0,
> +	.pll[11] = 0,
> +	.pll[12] = 0xC0,
> +	.pll[13] = 0,
> +	.pll[14] = 0,
> +	.pll[15] = 0x2,
> +	.pll[16] = 0x84,
> +	.pll[17] = 0x4F,
> +	.pll[18] = 0xE5,
> +	.pll[19] = 0x23,
> +};
> +
> +static const struct intel_c10mpllb_state mtl_c10_edp_r216 = {
> +	.clock = 216000,
> +	.pll[0] = 0x4,
> +	.pll[1] = 0,
> +	.pll[2] = 0xA2,
> +	.pll[3] = 0x1,
> +	.pll[4] = 0x33,
> +	.pll[5] = 0x10,
> +	.pll[6] = 0x75,
> +	.pll[7] = 0xB3,
> +	.pll[8] = 0x1,
> +	.pll[9] = 0x1,
> +	.pll[10] = 0,
> +	.pll[11] = 0,
> +	.pll[12] = 0,
> +	.pll[13] = 0,
> +	.pll[14] = 0,
> +	.pll[15] = 0x2,
> +	.pll[16] = 0x85,
> +	.pll[17] = 0x0F,
> +	.pll[18] = 0xE6,
> +	.pll[19] = 0x23,
> +};
> +
> +static const struct intel_c10mpllb_state mtl_c10_edp_r243 = {
> +	.clock = 243000,
> +	.pll[0] = 0x34,
> +	.pll[1] = 0,
> +	.pll[2] = 0xDA,
> +	.pll[3] = 0x1,
> +	.pll[4] = 0x39,
> +	.pll[5] = 0x12,
> +	.pll[6] = 0xE3,
> +	.pll[7] = 0xE9,
> +	.pll[8] = 0x1,
> +	.pll[9] = 0x1,
> +	.pll[10] = 0,
> +	.pll[11] = 0,
> +	.pll[12] = 0x20,
> +	.pll[13] = 0,
> +	.pll[14] = 0,
> +	.pll[15] = 0x2,
> +	.pll[16] = 0x85,
> +	.pll[17] = 0x8F,
> +	.pll[18] = 0xE6,
> +	.pll[19] = 0x23,
> +};
> +
> +static const struct intel_c10mpllb_state mtl_c10_dp_hbr1 = {
> +	.clock = 270000,
> +	.pll[0] = 0xF4,
> +	.pll[1] = 0,
> +	.pll[2] = 0xF8,
> +	.pll[3] = 0x0,
> +	.pll[4] = 0x20,
> +	.pll[5] = 0x0A,
> +	.pll[6] = 0x29,
> +	.pll[7] = 0x10,
> +	.pll[8] = 0x1,   /* Verify */
> +	.pll[9] = 0x1,
> +	.pll[10] = 0,
> +	.pll[11] = 0,
> +	.pll[12] = 0xA0,
> +	.pll[13] = 0,
> +	.pll[14] = 0,
> +	.pll[15] = 0x1,
> +	.pll[16] = 0x84,
> +	.pll[17] = 0x4F,
> +	.pll[18] = 0xE5,
> +	.pll[19] = 0x23,
> +};
> +
> +static const struct intel_c10mpllb_state mtl_c10_edp_r324 = {
> +	.clock = 324000,
> +	.pll[0] = 0xB4,
> +	.pll[1] = 0,
> +	.pll[2] = 0x30,
> +	.pll[3] = 0x1,
> +	.pll[4] = 0x26,
> +	.pll[5] = 0x0C,
> +	.pll[6] = 0x98,
> +	.pll[7] = 0x46,
> +	.pll[8] = 0x1,
> +	.pll[9] = 0x1,
> +	.pll[10] = 0,
> +	.pll[11] = 0,
> +	.pll[12] = 0xC0,
> +	.pll[13] = 0,
> +	.pll[14] = 0,
> +	.pll[15] = 0x1,
> +	.pll[16] = 0x85,
> +	.pll[17] = 0x4F,
> +	.pll[18] = 0xE6,
> +	.pll[19] = 0x23,
> +};
> +
> +static const struct intel_c10mpllb_state mtl_c10_edp_r432 = {
> +	.clock = 432000,
> +	.pll[0] = 0x4,
> +	.pll[1] = 0,
> +	.pll[2] = 0xA2,
> +	.pll[3] = 0x1,
> +	.pll[4] = 0x33,
> +	.pll[5] = 0x10,
> +	.pll[6] = 0x75,
> +	.pll[7] = 0xB3,
> +	.pll[8] = 0x1,
> +	.pll[9] = 0x1,
> +	.pll[10] = 0,
> +	.pll[11] = 0,
> +	.pll[12] = 0,
> +	.pll[13] = 0,
> +	.pll[14] = 0,
> +	.pll[15] = 0x1,
> +	.pll[16] = 0x85,
> +	.pll[17] = 0x0F,
> +	.pll[18] = 0xE6,
> +	.pll[19] = 0x23,
> +};
> +
> +static const struct intel_c10mpllb_state mtl_c10_dp_hbr2 = {
> +	.clock = 540000,
> +	.pll[0] = 0xF4,
> +	.pll[1] = 0,
> +	.pll[2] = 0xF8,
> +	.pll[3] = 0,
> +	.pll[4] = 0x20,
> +	.pll[5] = 0x0A,
> +	.pll[6] = 0x29,
> +	.pll[7] = 0x10,
> +	.pll[8] = 0x1,
> +	.pll[9] = 0x1,
> +	.pll[10] = 0,
> +	.pll[11] = 0,
> +	.pll[12] = 0xA0,
> +	.pll[13] = 0,
> +	.pll[14] = 0,
> +	.pll[15] = 0,
> +	.pll[16] = 0x84,
> +	.pll[17] = 0x4F,
> +	.pll[18] = 0xE5,
> +	.pll[19] = 0x23,
> +};
> +
> +static const struct intel_c10mpllb_state mtl_c10_edp_r675 = {
> +	.clock = 675000,
> +	.pll[0] = 0xB4,
> +	.pll[1] = 0,
> +	.pll[2] = 0x3E,
> +	.pll[3] = 0x1,
> +	.pll[4] = 0xA8,
> +	.pll[5] = 0x0C,
> +	.pll[6] = 0x33,
> +	.pll[7] = 0x54,
> +	.pll[8] = 0x1,
> +	.pll[9] = 0x1,
> +	.pll[10] = 0,
> +	.pll[11] = 0,
> +	.pll[12] = 0xC8,
> +	.pll[13] = 0,
> +	.pll[14] = 0,
> +	.pll[15] = 0,
> +	.pll[16] = 0x85,
> +	.pll[17] = 0x8F,
> +	.pll[18] = 0xE6,
> +	.pll[19] = 0x23,
> +};
> +
> +static const struct intel_c10mpllb_state mtl_c10_dp_hbr3 = {
> +	.clock = 810000,
> +	.pll[0] = 0x34,
> +	.pll[1] = 0,
> +	.pll[2] = 0x84,
> +	.pll[3] = 0x1,
> +	.pll[4] = 0x30,
> +	.pll[5] = 0x0F,
> +	.pll[6] = 0x3D,
> +	.pll[7] = 0x98,
> +	.pll[8] = 0x1,
> +	.pll[9] = 0x1,
> +	.pll[10] = 0,
> +	.pll[11] = 0,
> +	.pll[12] = 0xF0,
> +	.pll[13] = 0,
> +	.pll[14] = 0,
> +	.pll[15] = 0,
> +	.pll[16] = 0x84,
> +	.pll[17] = 0x0F,
> +	.pll[18] = 0xE5,
> +	.pll[19] = 0x23,
> +};
> +
> +static const struct intel_c10mpllb_state * const mtl_c10_dp_tables[] = {
> +	&mtl_c10_dp_rbr,
> +	&mtl_c10_dp_hbr1,
> +	&mtl_c10_dp_hbr2,
> +	&mtl_c10_dp_hbr3,
> +	NULL,
> +};
> +
> +static const struct intel_c10mpllb_state * const mtl_c10_edp_tables[] = {
> +	&mtl_c10_dp_rbr,
> +	&mtl_c10_edp_r216,
> +	&mtl_c10_edp_r243,
> +	&mtl_c10_dp_hbr1,
> +	&mtl_c10_edp_r324,
> +	&mtl_c10_edp_r432,
> +	&mtl_c10_dp_hbr2,
> +	&mtl_c10_edp_r675,
> +	&mtl_c10_dp_hbr3,
> +	NULL,
> +};
> +
> +static const struct intel_c10mpllb_state * const *
> +intel_c10_mpllb_tables_get(struct intel_crtc_state *crtc_state,
> +			   struct intel_encoder *encoder)
> +{
> +	if (intel_crtc_has_dp_encoder(crtc_state)) {
> +		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
> +			return mtl_c10_edp_tables;
> +		else
> +			return mtl_c10_dp_tables;
> +	}
> +
> +	/* TODO: Add HDMI Support */
> +	MISSING_CASE(encoder->type);
> +	return NULL;
> +}
> +
> +static int intel_c10mpllb_calc_state(struct intel_crtc_state *crtc_state,
> +				     struct intel_encoder *encoder)
> +{
> +	const struct intel_c10mpllb_state * const *tables;
> +	int i;
> +
> +	tables = intel_c10_mpllb_tables_get(crtc_state, encoder);
> +	if (!tables)
> +		return -EINVAL;
> +
> +	for (i = 0; tables[i]; i++) {
> +		if (crtc_state->port_clock <= tables[i]->clock) {
> +			crtc_state->c10mpllb_state = *tables[i];
> +			return 0;
> +		}
> +	}
> +
> +	return -EINVAL;
> +}
> +
> +int intel_cx0mpllb_calc_state(struct intel_crtc_state *crtc_state,
> +			      struct intel_encoder *encoder)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	enum phy phy = intel_port_to_phy(i915, encoder->port);
> +
> +	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
> +
> +	return intel_c10mpllb_calc_state(crtc_state, encoder);
> +}
> +
> +void intel_c10mpllb_readout_hw_state(struct intel_encoder *encoder,
> +				     struct intel_c10mpllb_state *pll_state)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> +	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
> +	u8 lane = lane_reversal ? INTEL_CX0_LANE1 :
> +				  INTEL_CX0_LANE0;
> +	enum phy phy = intel_port_to_phy(i915, encoder->port);
> +	int i;
> +	u8 cmn, tx0;
> +
> +	/*
> +	 * According to C10 VDR Register programming Sequence we need
> +	 * to do this to read PHY internal registers from MsgBus.
> +	 */
> +	intel_cx0_rmw(i915, encoder->port, lane, PHY_C10_VDR_CONTROL(1), 0,
> +		      C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);
> +
> +	for (i = 0; i < ARRAY_SIZE(pll_state->pll); i++)
> +		pll_state->pll[i] = intel_cx0_read(i915, encoder->port, lane,
> +						   PHY_C10_VDR_PLL(i));
> +
> +	cmn = intel_cx0_read(i915, encoder->port, lane, PHY_C10_VDR_CMN(0));
> +	tx0 = intel_cx0_read(i915, encoder->port, lane, PHY_C10_VDR_TX(0));
> +
> +	if (tx0 != C10_TX0_VAL || cmn != C10_CMN0_DP_VAL)
> +		drm_warn(&i915->drm, "Unexpected tx: %x or cmn: %x for phy: %c.\n",
> +			 tx0, cmn, phy_name(phy));
> +}
> +
> +static void intel_c10_pll_program(struct drm_i915_private *i915,
> +				  const struct intel_crtc_state *crtc_state,
> +				  struct intel_encoder *encoder)
> +{
> +	const struct intel_c10mpllb_state *pll_state = &crtc_state->c10mpllb_state;
> +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> +	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
> +	u8 master_lane = lane_reversal ? INTEL_CX0_LANE1 :
> +					 INTEL_CX0_LANE0;
> +	u8 follower_lane = lane_reversal ? INTEL_CX0_LANE0 :
> +					   INTEL_CX0_LANE1;
> +
> +	int i;
> +	struct intel_dp *intel_dp;
> +	bool use_ssc = false;
> +	u8 cmn0 = 0;
> +
> +	if (intel_crtc_has_dp_encoder(crtc_state)) {
> +		intel_dp = enc_to_intel_dp(encoder);
> +		use_ssc = (intel_dp->dpcd[DP_MAX_DOWNSPREAD] &
> +			  DP_MAX_DOWNSPREAD_0_5);
> +
> +		if (!intel_panel_use_ssc(i915))
> +			use_ssc = false;
> +
> +		cmn0 = C10_CMN0_DP_VAL;
> +	}
> +
> +	intel_cx0_write(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
> +			C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);
> +	/* Custom width needs to be programmed to 0 for both the phy lanes */
> +	intel_cx0_rmw(i915, encoder->port, INTEL_CX0_BOTH_LANES,
> +		      PHY_C10_VDR_CUSTOM_WIDTH, 0x3, 0, MB_WRITE_COMMITTED);
> +	intel_cx0_rmw(i915, encoder->port, follower_lane, PHY_C10_VDR_CONTROL(1),
> +		      C10_VDR_CTRL_MASTER_LANE, C10_VDR_CTRL_UPDATE_CFG,
> +		      MB_WRITE_COMMITTED);
> +
> +	/* Program the pll values only for the master lane */
> +	for (i = 0; i < ARRAY_SIZE(pll_state->pll); i++)
> +		/* If not using ssc pll[4] through pll[8] must be 0*/
> +		intel_cx0_write(i915, encoder->port, master_lane, PHY_C10_VDR_PLL(i),
> +				(!use_ssc && (i > 3 && i < 9)) ? 0 : pll_state->pll[i],
> +				(i % 4) ? MB_WRITE_UNCOMMITTED : MB_WRITE_COMMITTED);
> +
> +	intel_cx0_write(i915, encoder->port, master_lane, PHY_C10_VDR_CMN(0), cmn0, MB_WRITE_COMMITTED);
> +	intel_cx0_write(i915, encoder->port, master_lane, PHY_C10_VDR_TX(0), C10_TX0_VAL, MB_WRITE_COMMITTED);
> +	intel_cx0_rmw(i915, encoder->port, master_lane, PHY_C10_VDR_CONTROL(1),
> +		      C10_VDR_CTRL_MSGBUS_ACCESS, C10_VDR_CTRL_MASTER_LANE |
> +		      C10_VDR_CTRL_UPDATE_CFG, MB_WRITE_COMMITTED);
> +}
> +
> +void intel_c10mpllb_dump_hw_state(struct drm_i915_private *dev_priv,
> +				  const struct intel_c10mpllb_state *hw_state)
> +{
> +	bool fracen;
> +	int i;
> +	unsigned int frac_quot = 0, frac_rem = 0, frac_den = 1;
> +	unsigned int multiplier, tx_clk_div;
> +
> +	fracen = hw_state->pll[0] & C10_PLL0_FRACEN;
> +	drm_dbg_kms(&dev_priv->drm, "c10pll_hw_state: fracen: %s, ",
> +		    str_yes_no(fracen));
> +
> +	if (fracen) {
> +		frac_quot = hw_state->pll[12] << 8 | hw_state->pll[11];
> +		frac_rem =  hw_state->pll[14] << 8 | hw_state->pll[13];
> +		frac_den =  hw_state->pll[10] << 8 | hw_state->pll[9];
> +		drm_dbg_kms(&dev_priv->drm, "quot: %u, rem: %u, den: %u,\n",
> +			    frac_quot, frac_rem, frac_den);
> +	}
> +
> +	multiplier = (REG_FIELD_GET8(C10_PLL3_MULTIPLIERH_MASK, hw_state->pll[3]) << 8 |
> +		      hw_state->pll[2]) / 2 + 16;
> +	tx_clk_div = REG_FIELD_GET8(C10_PLL15_TXCLKDIV_MASK, hw_state->pll[15]);
> +	drm_dbg_kms(&dev_priv->drm,
> +		    "multiplier: %u, tx_clk_div: %u.\n", multiplier, tx_clk_div);
> +
> +	drm_dbg_kms(&dev_priv->drm, "c10pll_rawhw_state:");
> +
> +	for (i = 0; i < ARRAY_SIZE(hw_state->pll); i = i + 4)
> +		drm_dbg_kms(&dev_priv->drm, "pll[%d] = 0x%x, pll[%d] = 0x%x, pll[%d] = 0x%x, pll[%d] = 0x%x\n",
> +			    i, hw_state->pll[i], i + 1, hw_state->pll[i + 1],
> +			    i + 2, hw_state->pll[i + 2], i + 3, hw_state->pll[i + 3]);
> +}
> +
> +int intel_c10mpllb_calc_port_clock(struct intel_encoder *encoder,
> +				   const struct intel_c10mpllb_state *pll_state)
> +{
> +	unsigned int frac_quot = 0, frac_rem = 0, frac_den = 1;
> +	unsigned int multiplier, tx_clk_div, refclk = 38400;
> +
> +	if (pll_state->pll[0] & C10_PLL0_FRACEN) {
> +		frac_quot = pll_state->pll[12] << 8 | pll_state->pll[11];
> +		frac_rem =  pll_state->pll[14] << 8 | pll_state->pll[13];
> +		frac_den =  pll_state->pll[10] << 8 | pll_state->pll[9];
> +	}
> +
> +	multiplier = (REG_FIELD_GET8(C10_PLL3_MULTIPLIERH_MASK, pll_state->pll[3]) << 8 |
> +		      pll_state->pll[2]) / 2 + 16;
> +
> +	tx_clk_div = REG_FIELD_GET8(C10_PLL15_TXCLKDIV_MASK, pll_state->pll[15]);
> +
> +	return DIV_ROUND_CLOSEST_ULL(mul_u32_u32(refclk, (multiplier << 16) + frac_quot) +
> +				     DIV_ROUND_CLOSEST(refclk * frac_rem, frac_den),
> +				     10 << (tx_clk_div + 16));
> +}
> +
> +static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
> +					 const struct intel_crtc_state *crtc_state,
> +					 bool lane_reversal)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_dp *intel_dp;
> +	bool ssc_enabled;
> +	u32 val = 0;
> +
> +	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL1(encoder->port), XELPDP_PORT_REVERSAL,
> +		     lane_reversal ? XELPDP_PORT_REVERSAL : 0);
> +
> +	if (lane_reversal)
> +		val |= XELPDP_LANE1_PHY_CLOCK_SELECT;
> +
> +	val |= XELPDP_FORWARD_CLOCK_UNGATE;
> +	val |= XELPDP_DDI_CLOCK_SELECT(XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
> +
> +	if (intel_crtc_has_dp_encoder(crtc_state)) {
> +		intel_dp = enc_to_intel_dp(encoder);
> +		ssc_enabled = intel_dp->dpcd[DP_MAX_DOWNSPREAD] &
> +			      DP_MAX_DOWNSPREAD_0_5;
> +
> +		if (!intel_panel_use_ssc(i915))
> +			ssc_enabled = false;
> +
> +		/* TODO: DP2.0 10G and 20G rates enable MPLLA*/
> +		val |= ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
> +	}
> +	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +		     XELPDP_LANE1_PHY_CLOCK_SELECT |
> +		     XELPDP_FORWARD_CLOCK_UNGATE |
> +		     XELPDP_DDI_CLOCK_SELECT_MASK |
> +		     XELPDP_SSC_ENABLE_PLLB, val);
> +}
> +
> +static u32 intel_cx0_get_powerdown_update(u8 lane)
> +{
> +	if (lane & INTEL_CX0_LANE0)
> +		return XELPDP_LANE0_POWERDOWN_UPDATE;
> +	else if (lane & INTEL_CX0_LANE1)
> +		return XELPDP_LANE1_POWERDOWN_UPDATE;
> +	else
> +		return XELPDP_LANE0_POWERDOWN_UPDATE |
> +		       XELPDP_LANE1_POWERDOWN_UPDATE;
> +}
> +
> +static u32 intel_cx0_get_powerdown_state(u8 lane, u8 state)
> +{
> +	if (lane & INTEL_CX0_LANE0)
> +		return XELPDP_LANE0_POWERDOWN_NEW_STATE(state);
> +	else if (lane & INTEL_CX0_LANE1)
> +		return XELPDP_LANE1_POWERDOWN_NEW_STATE(state);
> +	else
> +		return XELPDP_LANE0_POWERDOWN_NEW_STATE(state) |
> +		       XELPDP_LANE1_POWERDOWN_NEW_STATE(state);
> +}
> +
> +static void intel_cx0_powerdown_change_sequence(struct drm_i915_private *i915,
> +						enum port port,
> +						u8 lane, u8 state)
> +{
> +	enum phy phy = intel_port_to_phy(i915, port);
> +
> +	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
> +		     XELPDP_LANE0_POWERDOWN_NEW_STATE_MASK | XELPDP_LANE1_POWERDOWN_NEW_STATE_MASK,
> +		     intel_cx0_get_powerdown_state(lane, state));
> +	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
> +		     XELPDP_LANE0_POWERDOWN_UPDATE | XELPDP_LANE1_POWERDOWN_UPDATE,
> +		     intel_cx0_get_powerdown_update(lane));
> +
> +	/* Update Timeout Value */
> +	if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL2(port),
> +				         intel_cx0_get_powerdown_update(lane), 0,
> +				         XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US, 0, NULL))
> +		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane reset after %dus.\n",
> +			 phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_US);
> +}
> +
> +static void intel_cx0_setup_powerdown(struct drm_i915_private *i915, enum port port)
> +{
> +	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
> +		     XELPDP_POWER_STATE_READY_MASK,
> +		     XELPDP_POWER_STATE_READY(CX0_P2_STATE_READY));
> +	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL3(port),
> +		     XELPDP_POWER_STATE_ACTIVE_MASK |
> +		     XELPDP_PLL_LANE_STAGGERING_DELAY_MASK,
> +		     XELPDP_POWER_STATE_ACTIVE(CX0_P0_STATE_ACTIVE) |
> +		     XELPDP_PLL_LANE_STAGGERING_DELAY(0));
> +}
> +
> +static u32 intel_cx0_get_pclk_refclk_request(u8 lane)
> +{
> +	if (lane & INTEL_CX0_LANE0)
> +		return XELPDP_LANE0_PCLK_REFCLK_REQUEST;
> +	else if (lane & INTEL_CX0_LANE1)
> +		return XELPDP_LANE1_PCLK_REFCLK_REQUEST;
> +	else
> +		return XELPDP_LANE0_PCLK_REFCLK_REQUEST |
> +		       XELPDP_LANE1_PCLK_REFCLK_REQUEST;
> +}
> +
> +static u32 intel_cx0_get_pclk_refclk_ack(u8 lane)
> +{
> +	if (lane & INTEL_CX0_LANE0)
> +		return XELPDP_LANE0_PCLK_REFCLK_ACK;
> +	else if (lane & INTEL_CX0_LANE1)
> +		return XELPDP_LANE1_PCLK_REFCLK_ACK;
> +	else
> +		return XELPDP_LANE0_PCLK_REFCLK_ACK |
> +		       XELPDP_LANE1_PCLK_REFCLK_ACK;
> +}
> +
> +/* FIXME: Some Type-C cases need not reset both the lanes. Handle those cases. */
> +static void intel_cx0_phy_lane_reset(struct drm_i915_private *i915, enum port port,
> +				     bool lane_reversal)
> +{
> +	enum phy phy = intel_port_to_phy(i915, port);
> +	u8 lane = lane_reversal ? INTEL_CX0_LANE1 :
> +				  INTEL_CX0_LANE0;
> +
> +	if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL1(port),
> +				         XELPDP_PORT_BUF_SOC_PHY_READY,
> +				         XELPDP_PORT_BUF_SOC_PHY_READY,
> +				         XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US, 0, NULL))
> +		drm_warn(&i915->drm, "PHY %c failed to bring out of SOC reset after %dus.\n",
> +			 phy_name(phy), XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US);
> +
> +	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
> +		     XELPDP_LANE0_PIPE_RESET | XELPDP_LANE1_PIPE_RESET,
> +		     XELPDP_LANE0_PIPE_RESET | XELPDP_LANE1_PIPE_RESET);
> +
> +	if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL2(port),
> +				         XELPDP_LANE0_PHY_CURRENT_STATUS | XELPDP_LANE1_PHY_CURRENT_STATUS,
> +				         XELPDP_LANE0_PHY_CURRENT_STATUS | XELPDP_LANE1_PHY_CURRENT_STATUS,
> +				         XELPDP_PORT_RESET_START_TIMEOUT_US, 0, NULL))
> +		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane reset after %dus.\n",
> +			 phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_US);
> +
> +	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(port),
> +		     intel_cx0_get_pclk_refclk_request(INTEL_CX0_BOTH_LANES),
> +		     intel_cx0_get_pclk_refclk_request(lane));
> +
> +	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(port),
> +				         intel_cx0_get_pclk_refclk_ack(INTEL_CX0_BOTH_LANES),
> +				         intel_cx0_get_pclk_refclk_ack(lane),
> +				         XELPDP_REFCLK_ENABLE_TIMEOUT_US, 0, NULL))
> +		drm_warn(&i915->drm, "PHY %c failed to request refclk after %dus.\n",
> +			 phy_name(phy), XELPDP_REFCLK_ENABLE_TIMEOUT_US);
> +
> +	intel_cx0_powerdown_change_sequence(i915, port, INTEL_CX0_BOTH_LANES,
> +					    CX0_P2_STATE_RESET);
> +	intel_cx0_setup_powerdown(i915, port);
> +
> +	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
> +		     XELPDP_LANE0_PIPE_RESET | XELPDP_LANE1_PIPE_RESET, 0);
> +
> +	if (intel_de_wait_for_clear(i915, XELPDP_PORT_BUF_CTL2(port),
> +				    XELPDP_LANE0_PHY_CURRENT_STATUS |
> +				    XELPDP_LANE1_PHY_CURRENT_STATUS,
> +				    XELPDP_PORT_RESET_END_TIMEOUT))
> +		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane reset after %dms.\n",
> +			 phy_name(phy), XELPDP_PORT_RESET_END_TIMEOUT);
> +}
> +
> +static void intel_cx0_program_phy_lane(struct drm_i915_private *i915,
> +				       struct intel_encoder *encoder, int lane_count,
> +				       bool lane_reversal)
> +{
> +	u8 l0t1, l0t2, l1t1, l1t2;
> +	bool dp_alt_mode = intel_tc_port_in_dp_alt_mode(enc_to_dig_port(encoder));
> +	enum port port = encoder->port;
> +
> +	intel_cx0_rmw(i915, port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
> +		      C10_VDR_CTRL_MSGBUS_ACCESS, C10_VDR_CTRL_MSGBUS_ACCESS,
> +		      MB_WRITE_COMMITTED);
> +
> +	l0t1 = intel_cx0_read(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(1, 2));
> +	l0t2 = intel_cx0_read(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(2, 2));
> +	l1t1 = intel_cx0_read(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX_CONTROL(1, 2));
> +	l1t2 = intel_cx0_read(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX_CONTROL(2, 2));
> +
> +	if (lane_reversal) {
> +		switch (lane_count) {
> +		case 1:
> +			/* Disable MLs 1(lane0), 2(lane0), 3(lane1) */
> +			intel_cx0_write(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX_CONTROL(1, 2),
> +					l1t1 | CONTROL2_DISABLE_SINGLE_TX,
> +					MB_WRITE_COMMITTED);
> +			fallthrough;
> +		case 2:
> +			/* Disable MLs 1(lane0), 2(lane0) */
> +			intel_cx0_write(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(2, 2),
> +					l0t2 | CONTROL2_DISABLE_SINGLE_TX,
> +					MB_WRITE_COMMITTED);
> +			fallthrough;
> +		case 3:
> +			/* Disable MLs 1(lane0) */
> +			intel_cx0_write(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(1, 2),
> +					l0t1 | CONTROL2_DISABLE_SINGLE_TX,
> +					MB_WRITE_COMMITTED);
> +			break;
> +		}
> +	} else {
> +		switch (lane_count) {
> +		case 1:
> +			if (dp_alt_mode) {
> +				/* Disable MLs 1(lane0), 3(lane1), 4(lane1) */
> +				intel_cx0_write(i915, port, 0, PHY_CX0_TX_CONTROL(1, 2),
> +						l0t1 | CONTROL2_DISABLE_SINGLE_TX,
> +						MB_WRITE_COMMITTED);
> +			} else {
> +				/* Disable MLs 2(lane0), 3(lane1), 4(lane1) */
> +				intel_cx0_write(i915, port, 0, PHY_CX0_TX_CONTROL(2, 2),
> +						l0t2 | CONTROL2_DISABLE_SINGLE_TX,
> +						MB_WRITE_COMMITTED);
> +                        }
> +			fallthrough;
> +		case 2:
> +			/* Disable MLs 3(lane1), 4(lane1) */
> +			intel_cx0_write(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX_CONTROL(1, 2),
> +					l1t1 | CONTROL2_DISABLE_SINGLE_TX,
> +					MB_WRITE_COMMITTED);
> +			fallthrough;
> +		case 3:
> +			/* Disable MLs 4(lane1) */
> +			intel_cx0_write(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX_CONTROL(2, 2),
> +					l1t2 | CONTROL2_DISABLE_SINGLE_TX,
> +					MB_WRITE_COMMITTED);
> +			break;
> +		}
> +	}
> +
> +	if (intel_is_c10phy(i915, intel_port_to_phy(i915, port))) {
> +		intel_cx0_rmw(i915, port, INTEL_CX0_LANE1, PHY_C10_VDR_CONTROL(1),
> +			      C10_VDR_CTRL_UPDATE_CFG | C10_VDR_CTRL_MSGBUS_ACCESS,
> +			      C10_VDR_CTRL_UPDATE_CFG, MB_WRITE_COMMITTED);
> +		intel_cx0_rmw(i915, port, INTEL_CX0_LANE0, PHY_C10_VDR_CONTROL(1),
> +			      C10_VDR_CTRL_UPDATE_CFG | C10_VDR_CTRL_MSGBUS_ACCESS,
> +			      C10_VDR_CTRL_MASTER_LANE | C10_VDR_CTRL_UPDATE_CFG, MB_WRITE_COMMITTED);
> +	}
> +}
> +
> +static u32 intel_cx0_get_pclk_pll_request(u8 lane)
> +{
> +	if (lane & INTEL_CX0_LANE0)
> +		return XELPDP_LANE0_PCLK_PLL_REQUEST;
> +	else if (lane & INTEL_CX0_LANE1)
> +		return XELPDP_LANE1_PCLK_PLL_REQUEST;
> +	else
> +		return XELPDP_LANE0_PCLK_PLL_REQUEST |
> +		       XELPDP_LANE1_PCLK_PLL_REQUEST;
> +}
> +
> +static u32 intel_cx0_get_pclk_pll_ack(u8 lane)
> +{
> +	if (lane & INTEL_CX0_LANE0)
> +		return XELPDP_LANE0_PCLK_PLL_ACK;
> +	else if (lane & INTEL_CX0_LANE1)
> +		return XELPDP_LANE1_PCLK_PLL_ACK;
> +	else
> +		return XELPDP_LANE0_PCLK_PLL_ACK |
> +		       XELPDP_LANE1_PCLK_PLL_ACK;
> +}
> +
> +static void intel_c10pll_enable(struct intel_encoder *encoder,
> +				const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	enum phy phy = intel_port_to_phy(i915, encoder->port);
> +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> +	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
> +	u8 maxpclk_lane = lane_reversal ? INTEL_CX0_LANE1 :
> +					  INTEL_CX0_LANE0;
> +
> +	/*
> +	 * 1. Program PORT_CLOCK_CTL REGISTER to configure
> +	 * clock muxes, gating and SSC
> +	 */
> +	intel_program_port_clock_ctl(encoder, crtc_state, lane_reversal);
> +
> +	/* 2. Bring PHY out of reset. */
> +	intel_cx0_phy_lane_reset(i915, encoder->port, lane_reversal);
> +
> +	/*
> +	 * 3. Change Phy power state to Ready.
> +	 * TODO: For DP alt mode use only one lane.
> +	 */
> +	intel_cx0_powerdown_change_sequence(i915, encoder->port, INTEL_CX0_BOTH_LANES,
> +					    CX0_P2_STATE_READY);
> +
> +	/* 4. Program PHY internal PLL internal registers. */
> +	intel_c10_pll_program(i915, crtc_state, encoder);
> +
> +	/*
> +	 * 5. Program the enabled and disabled owned PHY lane
> +	 * transmitters over message bus
> +	 */
> +	intel_cx0_program_phy_lane(i915, encoder, crtc_state->lane_count, lane_reversal);
> +
> +	/*
> +	 * 6. Follow the Display Voltage Frequency Switching - Sequence
> +	 * Before Frequency Change. We handle this step in bxt_set_cdclk().
> +	 */
> +
> +	/*
> +	 * 7. Program DDI_CLK_VALFREQ to match intended DDI
> +	 * clock frequency.
> +	 */
> +	intel_de_write(i915, DDI_CLK_VALFREQ(encoder->port),
> +		       crtc_state->port_clock);
> +	/*
> +	 * 8. Set PORT_CLOCK_CTL register PCLK PLL Request
> +	 * LN<Lane for maxPCLK> to "1" to enable PLL.
> +	 */
> +	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +		     intel_cx0_get_pclk_pll_request(INTEL_CX0_BOTH_LANES),
> +		     intel_cx0_get_pclk_pll_request(maxpclk_lane));
> +
> +	/* 9. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK> == "1". */
> +	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +				         intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES),
> +				         intel_cx0_get_pclk_pll_ack(maxpclk_lane),
> +				         XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US, 0, NULL))
> +		drm_warn(&i915->drm, "Port %c PLL not locked after %dus.\n",
> +			 phy_name(phy), XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US);
> +
> +	/*
> +	 * 10. Follow the Display Voltage Frequency Switching Sequence After
> +	 * Frequency Change. We handle this step in bxt_set_cdclk().
> +	 */
> +}
> +
> +void intel_cx0pll_enable(struct intel_encoder *encoder,
> +			 const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	enum phy phy = intel_port_to_phy(i915, encoder->port);
> +
> +	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
> +	intel_c10pll_enable(encoder, crtc_state);
> +}
> +
> +static void intel_c10pll_disable(struct intel_encoder *encoder)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	enum phy phy = intel_port_to_phy(i915, encoder->port);
> +
> +	/* 1. Change owned PHY lane power to Disable state. */
> +	intel_cx0_powerdown_change_sequence(i915, encoder->port, INTEL_CX0_BOTH_LANES,
> +					    CX0_P2PG_STATE_DISABLE);
> +
> +	/*
> +	 * 2. Follow the Display Voltage Frequency Switching Sequence Before
> +	 * Frequency Change. We handle this step in bxt_set_cdclk().
> +	 */
> +
> +	/*
> +	 * 3. Set PORT_CLOCK_CTL register PCLK PLL Request LN<Lane for maxPCLK>
> +	 * to "0" to disable PLL.
> +	 */
> +	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +		     intel_cx0_get_pclk_pll_request(INTEL_CX0_BOTH_LANES) |
> +		     intel_cx0_get_pclk_refclk_request(INTEL_CX0_BOTH_LANES), 0);
> +
> +	/* 4. Program DDI_CLK_VALFREQ to 0. */
> +	intel_de_write(i915, DDI_CLK_VALFREQ(encoder->port), 0);
> +
> +	/*
> +	 * 5. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK**> == "0".
> +	 */
> +	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +				         intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES) |
> +				         intel_cx0_get_pclk_refclk_ack(INTEL_CX0_BOTH_LANES), 0,
> +				         XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US, 0, NULL))
> +		drm_warn(&i915->drm, "Port %c PLL not unlocked after %dus.\n",
> +			 phy_name(phy), XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US);
> +
> +	/*
> +	 * 6. Follow the Display Voltage Frequency Switching Sequence After
> +	 * Frequency Change. We handle this step in bxt_set_cdclk().
> +	 */
> +
> +	/* 7. Program PORT_CLOCK_CTL register to disable and gate clocks. */
> +	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +		     XELPDP_DDI_CLOCK_SELECT_MASK |
> +		     XELPDP_FORWARD_CLOCK_UNGATE, 0);
> +}
> +
> +void intel_cx0pll_disable(struct intel_encoder *encoder)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	enum phy phy = intel_port_to_phy(i915, encoder->port);
> +
> +	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
> +	intel_c10pll_disable(encoder);
> +}
> +
> +void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
> +				 struct intel_crtc_state *new_crtc_state)
> +{
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +	struct intel_c10mpllb_state mpllb_hw_state = { 0 };
> +	struct intel_c10mpllb_state *mpllb_sw_state = &new_crtc_state->c10mpllb_state;
> +	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
> +	struct intel_encoder *encoder;
> +	struct intel_dp *intel_dp;
> +	enum phy phy;
> +	int i;
> +	bool use_ssc = false;
> +
> +	if (DISPLAY_VER(i915) < 14)
> +		return;
> +
> +	if (!new_crtc_state->hw.active)
> +		return;
> +
> +	encoder = intel_get_crtc_new_encoder(state, new_crtc_state);
> +	phy = intel_port_to_phy(i915, encoder->port);
> +
> +	if (intel_crtc_has_dp_encoder(new_crtc_state)) {
> +		intel_dp = enc_to_intel_dp(encoder);
> +		use_ssc = (intel_dp->dpcd[DP_MAX_DOWNSPREAD] &
> +			  DP_MAX_DOWNSPREAD_0_5);
> +
> +		if (!intel_panel_use_ssc(i915))
> +			use_ssc = false;
> +	}
> +
> +	if (!intel_is_c10phy(i915, phy))
> +		return;
> +
> +	intel_c10mpllb_readout_hw_state(encoder, &mpllb_hw_state);
> +
> +	for (i = 0; i < ARRAY_SIZE(mpllb_sw_state->pll); i++) {
> +		u8 expected;
> +
> +		if (!use_ssc && i > 3 && i < 9)
> +			expected = 0;
> +		else
> +			expected = mpllb_sw_state->pll[i];
> +
> +		I915_STATE_WARN(mpllb_hw_state.pll[i] != expected,
> +				"[CRTC:%d:%s] mismatch in C10MPLLB: Register[%d] (expected 0x%02x, found 0x%02x)",
> +				crtc->base.base.id, crtc->base.name,
> +				i, expected, mpllb_hw_state.pll[i]);
> +	}
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> new file mode 100644
> index 000000000000..8cf340509097
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -0,0 +1,43 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright � 2021 Intel Corporation
> + */
> +
> +#ifndef __INTEL_CX0_PHY_H__
> +#define __INTEL_CX0_PHY_H__
> +
> +#include <linux/types.h>
> +#include <linux/bitfield.h>
> +#include <linux/bits.h>
> +
> +#include "i915_drv.h"
> +#include "intel_display_types.h"
> +
> +struct drm_i915_private;
> +struct intel_encoder;
> +struct intel_crtc_state;
> +enum phy;
> +
> +#define INTEL_CX0_LANE0		0x1
> +#define INTEL_CX0_LANE1		0x2
> +#define INTEL_CX0_BOTH_LANES	0x3
> +
> +#define MB_WRITE_COMMITTED		1
> +#define MB_WRITE_UNCOMMITTED		0
> +
> +bool intel_is_c10phy(struct drm_i915_private *dev_priv, enum phy phy);
> +void intel_cx0pll_enable(struct intel_encoder *encoder,
> +			 const struct intel_crtc_state *crtc_state);
> +void intel_cx0pll_disable(struct intel_encoder *encoder);
> +void intel_c10mpllb_readout_hw_state(struct intel_encoder *encoder,
> +				     struct intel_c10mpllb_state *pll_state);
> +int intel_cx0mpllb_calc_state(struct intel_crtc_state *crtc_state,
> +			      struct intel_encoder *encoder);
> +void intel_c10mpllb_dump_hw_state(struct drm_i915_private *dev_priv,
> +				  const struct intel_c10mpllb_state *hw_state);
> +int intel_c10mpllb_calc_port_clock(struct intel_encoder *encoder,
> +				   const struct intel_c10mpllb_state *pll_state);
> +void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
> +				 struct intel_crtc_state *new_crtc_state);
> +
> +#endif /* __INTEL_CX0_PHY_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index 13e9bdd5df9d..17a69fb045cb 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -136,4 +136,38 @@
>  #define XELPDP_SSC_ENABLE_PLLA				REG_BIT(1)
>  #define XELPDP_SSC_ENABLE_PLLB				REG_BIT(0)
>  
> +/* C10 Vendor Registers */
> +#define PHY_C10_VDR_PLL(idx)		(0xC00 + (idx))
> +#define  C10_PLL0_FRACEN		REG_BIT8(4)
> +#define  C10_PLL3_MULTIPLIERH_MASK	REG_GENMASK8(3, 0)
> +#define  C10_PLL15_TXCLKDIV_MASK	REG_GENMASK8(2, 0)
> +
> +#define PHY_C10_VDR_CMN(idx)		(0xC20 + (idx))
> +#define  C10_CMN0_DP_VAL		0x21
> +#define  C10_CMN3_TXVBOOST_MASK		REG_GENMASK8(7, 5)
> +#define  C10_CMN3_TXVBOOST(val)		REG_FIELD_PREP8(C10_CMN3_TXVBOOST_MASK, val)
> +
> +#define PHY_C10_VDR_TX(idx)		(0xC30 + (idx))
> +#define  C10_TX0_VAL			0x10
> +
> +#define PHY_C10_VDR_CONTROL(idx)	(0xC70 + (idx) - 1)
> +#define  C10_VDR_CTRL_MSGBUS_ACCESS	REG_BIT8(2)
> +#define  C10_VDR_CTRL_MASTER_LANE	REG_BIT8(1)
> +#define  C10_VDR_CTRL_UPDATE_CFG	REG_BIT8(0)
> +
> +#define PHY_C10_VDR_CUSTOM_WIDTH	0xD02
> +
> +#define CX0_P0_STATE_ACTIVE		0x0
> +#define CX0_P2_STATE_READY		0x2
> +#define CX0_P2PG_STATE_DISABLE		0x9
> +#define CX0_P4PG_STATE_DISABLE		0xC
> +#define CX0_P2_STATE_RESET		0x2
> +
> +/* PHY_C10_VDR_PLL0 */
> +#define PLL_C10_MPLL_SSC_EN		REG_BIT8(0)
> +
> +/* PIPE SPEC Defined Registers */
> +#define PHY_CX0_TX_CONTROL(tx, control)	(0x400 + ((tx) - 1) * 0x200 + (control))
> +#define CONTROL2_DISABLE_SINGLE_TX	REG_BIT(6)
> +
>  #endif /* __INTEL_CX0_PHY_REGS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index c531fee888a4..c3aecc18442e 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -39,6 +39,7 @@
>  #include "intel_combo_phy_regs.h"
>  #include "intel_connector.h"
>  #include "intel_crtc.h"
> +#include "intel_cx0_phy.h"
>  #include "intel_ddi.h"
>  #include "intel_ddi_buf_trans.h"
>  #include "intel_de.h"
> @@ -3504,6 +3505,21 @@ void intel_ddi_get_clock(struct intel_encoder *encoder,
>  						     &crtc_state->dpll_hw_state);
>  }
>  
> +static void mtl_ddi_get_config(struct intel_encoder *encoder,
> +			       struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	enum phy phy = intel_port_to_phy(i915, encoder->port);
> +
> +	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
> +
> +	intel_c10mpllb_readout_hw_state(encoder, &crtc_state->c10mpllb_state);
> +	intel_c10mpllb_dump_hw_state(i915, &crtc_state->c10mpllb_state);
> +	crtc_state->port_clock = intel_c10mpllb_calc_port_clock(encoder, &crtc_state->c10mpllb_state);
> +
> +	intel_ddi_get_config(encoder, crtc_state);
> +}
> +
>  static void dg2_ddi_get_config(struct intel_encoder *encoder,
>  				struct intel_crtc_state *crtc_state)
>  {
> @@ -4378,7 +4394,11 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
>  	encoder->cloneable = 0;
>  	encoder->pipe_mask = ~0;
>  
> -	if (IS_DG2(dev_priv)) {
> +	if (DISPLAY_VER(dev_priv) >= 14) {
> +		encoder->enable_clock = intel_cx0pll_enable;
> +		encoder->disable_clock = intel_cx0pll_disable;
> +		encoder->get_config = mtl_ddi_get_config;
> +	} else if (IS_DG2(dev_priv)) {
>  		encoder->enable_clock = intel_mpllb_enable;
>  		encoder->disable_clock = intel_mpllb_disable;
>  		encoder->get_config = dg2_ddi_get_config;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index f86060195987..e23fecba446c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1614,7 +1614,8 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
>  		return;
>  
>  	/* 2. Initialize all combo phys */
> -	intel_combo_phy_init(dev_priv);
> +	if (DISPLAY_VER(dev_priv) < 14)
> +		intel_combo_phy_init(dev_priv);
>  
>  	/*
>  	 * 3. Enable Power Well 1 (PG1).
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 1676df1dc066..a4c8cb75c0a0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -970,7 +970,7 @@ void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
>  	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
>  		bxt_verify_ddi_phy_power_wells(dev_priv);
>  
> -	if (DISPLAY_VER(dev_priv) >= 11)
> +	if (DISPLAY_VER(dev_priv) >= 11 && DISPLAY_VER(dev_priv) < 14)
>  		/*
>  		 * DMC retains HW context only for port A, the other combo
>  		 * PHY's HW context for port B is lost after DC transitions,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index c32bfba06ca1..2723bdc7bf7e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -980,6 +980,11 @@ struct intel_link_m_n {
>  	u32 link_n;
>  };
>  
> +struct intel_c10mpllb_state {
> +	u32 clock; /* in KHz */
> +	u8 pll[20];
> +};
> +
>  struct intel_crtc_state {
>  	/*
>  	 * uapi (drm) state. This is the software state shown to userspace.
> @@ -1123,6 +1128,7 @@ struct intel_crtc_state {
>  	union {
>  		struct intel_dpll_hw_state dpll_hw_state;
>  		struct intel_mpllb_state mpllb_state;
> +		struct intel_c10mpllb_state c10mpllb_state;
>  	};
>  
>  	/*
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
> index 4e9c18be7e1f..cd3da053055d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -8,6 +8,7 @@
>  
>  #include "i915_reg.h"
>  #include "intel_crtc.h"
> +#include "intel_cx0_phy.h"
>  #include "intel_de.h"
>  #include "intel_display.h"
>  #include "intel_display_types.h"
> @@ -995,6 +996,17 @@ static int dg2_crtc_compute_clock(struct intel_atomic_state *state,
>  	return 0;
>  }
>  
> +static int mtl_crtc_compute_clock(struct intel_atomic_state *state,
> +				  struct intel_crtc *crtc)
> +{
> +	struct intel_crtc_state *crtc_state =
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	struct intel_encoder *encoder =
> +		intel_get_crtc_new_encoder(state, crtc_state);
> +
> +	return intel_cx0mpllb_calc_state(crtc_state, encoder);
> +}
> +
>  static bool ilk_needs_fb_cb_tune(const struct dpll *dpll, int factor)
>  {
>  	return dpll->m < factor * dpll->n;
> @@ -1423,6 +1435,10 @@ static int i8xx_crtc_compute_clock(struct intel_atomic_state *state,
>  	return 0;
>  }
>  
> +static const struct intel_dpll_funcs mtl_dpll_funcs = {
> +	.crtc_compute_clock = mtl_crtc_compute_clock,
> +};
> +
>  static const struct intel_dpll_funcs dg2_dpll_funcs = {
>  	.crtc_compute_clock = dg2_crtc_compute_clock,
>  };
> @@ -1517,7 +1533,11 @@ int intel_dpll_crtc_get_shared_dpll(struct intel_atomic_state *state,
>  void
>  intel_dpll_init_clock_hook(struct drm_i915_private *dev_priv)
>  {
> -	if (IS_DG2(dev_priv))
> +	if (DISPLAY_VER(dev_priv) >= 14)
> +		dev_priv->display.funcs.dpll = &mtl_dpll_funcs;
> +	else if (DISPLAY_VER(dev_priv) >= 14)
> +		dev_priv->display.funcs.dpll = &mtl_dpll_funcs;
> +	else if (IS_DG2(dev_priv))
>  		dev_priv->display.funcs.dpll = &dg2_dpll_funcs;
>  	else if (DISPLAY_VER(dev_priv) >= 9 || HAS_DDI(dev_priv))
>  		dev_priv->display.funcs.dpll = &hsw_dpll_funcs;
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 22fc908b7e5d..ed372d227aa7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4104,7 +4104,7 @@ void intel_shared_dpll_init(struct drm_i915_private *dev_priv)
>  
>  	mutex_init(&dev_priv->display.dpll.lock);
>  
> -	if (IS_DG2(dev_priv))
> +	if (DISPLAY_VER(dev_priv) >= 14 || IS_DG2(dev_priv))
>  		/* No shared DPLLs on DG2; port PLLs are part of the PHY */
>  		dpll_mgr = NULL;
>  	else if (IS_ALDERLAKE_P(dev_priv))
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> index 842d70f0dfd2..ec504470c2f0 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> @@ -11,6 +11,7 @@
>  #include "intel_atomic.h"
>  #include "intel_crtc.h"
>  #include "intel_crtc_state_dump.h"
> +#include "intel_cx0_phy.h"
>  #include "intel_display.h"
>  #include "intel_display_types.h"
>  #include "intel_fdi.h"
> @@ -236,6 +237,7 @@ void intel_modeset_verify_crtc(struct intel_crtc *crtc,
>  	verify_crtc_state(crtc, old_crtc_state, new_crtc_state);
>  	intel_shared_dpll_state_verify(crtc, old_crtc_state, new_crtc_state);
>  	intel_mpllb_state_verify(state, new_crtc_state);
> +	intel_c10mpllb_state_verify(state, new_crtc_state);
>  }
>  
>  void intel_modeset_verify_disabled(struct drm_i915_private *dev_priv,
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 9db6b3f06a74..3c5a591046f2 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2101,6 +2101,11 @@
>  #define   TRANS_PUSH_EN			REG_BIT(31)
>  #define   TRANS_PUSH_SEND		REG_BIT(30)
>  
> +/* DDI Buffer Control */
> +#define _DDI_CLK_VALFREQ_A		0x64030
> +#define _DDI_CLK_VALFREQ_B		0x64130
> +#define DDI_CLK_VALFREQ(port)		_MMIO_PORT(port, _DDI_CLK_VALFREQ_A, _DDI_CLK_VALFREQ_B)
> +
>  /*
>   * HSW+ eDP PSR registers
>   *
> diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/i915_reg_defs.h
> index db26de6b57bc..f9d7c03e95d6 100644
> --- a/drivers/gpu/drm/i915/i915_reg_defs.h
> +++ b/drivers/gpu/drm/i915/i915_reg_defs.h
> @@ -22,6 +22,19 @@
>  	       BUILD_BUG_ON_ZERO(__is_constexpr(__n) &&		\
>  				 ((__n) < 0 || (__n) > 31))))
>  
> +/**
> + * REG_BIT8() - Prepare a u8 bit value
> + * @__n: 0-based bit number
> + *
> + * Local wrapper for BIT() to force u8, with compile time checks.
> + *
> + * @return: Value with bit @__n set.
> + */
> +#define REG_BIT8(__n)                                                   \
> +	((u8)(BIT(__n) +                                                \
> +	       BUILD_BUG_ON_ZERO(__is_constexpr(__n) &&         \
> +				 ((__n) < 0 || (__n) > 7))))
> +
>  /**
>   * REG_GENMASK() - Prepare a continuous u32 bitmask
>   * @__high: 0-based high bit
> @@ -52,6 +65,21 @@
>  				 __is_constexpr(__low) &&		\
>  				 ((__low) < 0 || (__high) > 63 || (__low) > (__high)))))
>  
> +/**
> + * REG_GENMASK8() - Prepare a continuous u8 bitmask
> + * @__high: 0-based high bit
> + * @__low: 0-based low bit
> + *
> + * Local wrapper for GENMASK() to force u8, with compile time checks.
> + *
> + * @return: Continuous bitmask from @__high to @__low, inclusive.
> + */
> +#define REG_GENMASK8(__high, __low)                                     \
> +	((u8)(GENMASK(__high, __low) +                                  \
> +	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&      \
> +				 __is_constexpr(__low) &&               \
> +				 ((__low) < 0 || (__high) > 7 || (__low) > (__high)))))
> +
>  /*
>   * Local integer constant expression version of is_power_of_2().
>   */
> @@ -74,6 +102,23 @@
>  	       BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
>  	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))
>  
> +/**
> + * REG_FIELD_PREP8() - Prepare a u8 bitfield value
> + * @__mask: shifted mask defining the field's length and position
> + * @__val: value to put in the field
> + *
> + * Local copy of FIELD_PREP8() to generate an integer constant expression, force
> + * u8 and for consistency with REG_FIELD_GET8(), REG_BIT8() and REG_GENMASK8().
> + *
> + * @return: @__val masked and shifted into the field defined by @__mask.
> + */
> +#define REG_FIELD_PREP8(__mask, __val)                                          \
> +	((u8)((((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask)) +      \
> +	       BUILD_BUG_ON_ZERO(!__is_constexpr(__mask)) +             \
> +	       BUILD_BUG_ON_ZERO((__mask) == 0 || (__mask) > U8_MAX) +          \
> +	       BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
> +	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))
> +
>  /**
>   * REG_FIELD_GET() - Extract a u32 bitfield value
>   * @__mask: shifted mask defining the field's length and position
> @@ -155,6 +200,18 @@
>   */
>  #define _PICK(__index, ...) (((const u32 []){ __VA_ARGS__ })[__index])
>  
> +/**
> + * REG_FIELD_GET8() - Extract a u8 bitfield value
> + * @__mask: shifted mask defining the field's length and position
> + * @__val: value to extract the bitfield value from
> + *
> + * Local wrapper for FIELD_GET() to force u8 and for consistency with
> + * REG_FIELD_PREP(), REG_BIT() and REG_GENMASK().
> + *
> + * @return: Masked and shifted value of the field defined by @__mask in @__val.
> + */
> +#define REG_FIELD_GET8(__mask, __val)   ((u8)FIELD_GET(__mask, __val))
> +
>  typedef struct {
>  	u32 reg;
>  } i915_reg_t;
> -- 
> 2.34.1
> 
