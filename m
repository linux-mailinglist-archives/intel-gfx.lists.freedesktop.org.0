Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D3F7CFFCE
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Oct 2023 18:42:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A77710E527;
	Thu, 19 Oct 2023 16:42:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFDCE10E527
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Oct 2023 16:42:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697733748; x=1729269748;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=t4axETYOpyjOnRKdzW/7qSmgw0MuVpCSVsW89fQkydk=;
 b=GD7EkYe2R8SHi4QcDf6QeBF0zcp8yhelYXRP1xVl+mxfg3M//hV5biv6
 0zLYwI0cvgtDS0RWH+8Wg8FOU9cwhd/rttP0cFjDnMgC0yep+IXm8ui27
 Rsa07W5kjZGxs4VrNt4WDB5tdU98riWb5pixxQskV0kKFShgbn+izP3X3
 dQezShag5T2p3kHRYShWJnScRn3Y0e7nRGIiIzATlOebjVseBHp2KcXxl
 aDDejxUwpLHAM6MqU07oEcif6Q+xXah1vHO2rVBJOdtSeVOePuk7AxCHZ
 7fFd1R2pye5btNcgMO1GeWqKEHPCERbcrLQq6rEpJYdg+S8ARLG+H50b0 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="7864880"
X-IronPort-AV: E=Sophos;i="6.03,237,1694761200"; 
   d="scan'208";a="7864880"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2023 09:38:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="847752392"
X-IronPort-AV: E=Sophos;i="6.03,237,1694761200"; d="scan'208";a="847752392"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Oct 2023 09:38:12 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 19 Oct 2023 09:38:12 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 19 Oct 2023 09:38:12 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 19 Oct 2023 09:37:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HlJxDkdapgMrUaaG+wT+ehav6JhKQ/wsKvbIpnseZma8QlmF6jmRal9EWmUI8hMKuryWLn7YNwKLH69L6aM8sYmJu8lwY/hZHhq+gCRtoA8uoh2630eVRep7LQxk3Vplh0JzP20qxDVXIdSAs5G11Sq4EvNafYAtedEhQ85BFI5izDikJdu08tW03yT+RaTMSey8jcsGNrPlXFrSjvQbAcWdRPwJqLB1un7ENMNAQCj2rOPEFlXuMJcvUeTG7LjD9LRTmdv8xJbfEGer/5ack7xf0cqTFf9AUtD3f+M1jEH9VDvyjCZtAq30KANX0VLyIzXJxKuLqC/eTBln6w97XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ehNmpIhKra3ozUrFFIO7HJPAYVcO66ex2Drj0mattI0=;
 b=XX7Oz2FeYuWnvP55uiaIiLzSKuiCxkHRBE2OJjyNxCVv0nLNYEkPxrNj7DZasOFp48FQF+uUugV+Nr9Zc+E5cIQqySYp6mRtWpW5aY3Z/5th0YfYDDVOEiN0yBMc2oNSXuahgTrXOvadNzfIWxc2gKIVVGBi3FlUoQteSXWGjSSBoZeOf0M/JywfS9+Y4u4p6/iRziJbGYwJb4eOI7ritm7Q7pms5ee/DAJpT4UWwqNsvNTkjStX8mvgfI/iAxPq4SuTEdZGNdPnRIhGLmQ7JiThRzsc/akRiZ+CUapCxzfkLl1Tinu80d1HEHoOT4b6ddD+RFhmaX8TJyX/jPo2BQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by CO1PR11MB4788.namprd11.prod.outlook.com (2603:10b6:303:97::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.24; Thu, 19 Oct
 2023 16:37:22 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf%6]) with mapi id 15.20.6886.034; Thu, 19 Oct 2023
 16:37:21 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231018222831.4132968-2-lucas.demarchi@intel.com>
References: <20231018222831.4132968-1-lucas.demarchi@intel.com>
 <20231018222831.4132968-2-lucas.demarchi@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Thu, 19 Oct 2023 13:37:16 -0300
Message-ID: <169773343680.1959.7784412463765323958@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BY3PR04CA0027.namprd04.prod.outlook.com
 (2603:10b6:a03:217::32) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|CO1PR11MB4788:EE_
X-MS-Office365-Filtering-Correlation-Id: 341c868f-cc6e-4974-0672-08dbd0c1aab0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: W14f3pedWW1mrPpJKz0/+EBK3VbG7aADG/QviEoodKp+t9WbPatc4Ckg9t57TmHmQRLThmNRzwk8jt1PJCWVHCMucIEUdmzD3qQCUh2nTt66YxJJym1JjAB4Cl9tJa2XxxBeqQSEudwbgtQpgNNzUeyiKOWg+qFSPNwU61mB3zLMmUXZ45hyVIHjIXjEHPcmNfQUXXV1fABOPQ9iTPw1jncgGjP/L3P2v6BWRfmDPwI3WrN4CooeyLHHYLcN2Bl3/SuBYY18K9O5ySB9R14X2ujnmw+Zol0KXUbm4GTpFgtAT5k3O6W8HUNFxkgMM/04S9+D+3M4K4hHislskN1taHp/61JbA3Cc2k04PrahlnYZu9bvELQPfUeoZExQnHTvC0RkaZxEPvKqJJT4s+2MELL8JDk3qkjFtgu6UsY1IH1feR8X8ywg0YBJ7pH3FU+RAjY32rYoqdNCFAusCpDygTmxmvDsWfTx5hZ3uYBXMOaqVTrb1aESlUmzfyZaV6jedN2fXlfr8rNUGSjRc4dPADAze1fTGgfCL9nJXmhmpRDpUb1m/FlviNkdCZi3fD5k
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(346002)(376002)(366004)(136003)(39860400002)(396003)(230922051799003)(1800799009)(186009)(451199024)(64100799003)(4001150100001)(2906002)(8676002)(5660300002)(4326008)(44832011)(8936002)(316002)(41300700001)(66556008)(6486002)(66476007)(86362001)(478600001)(66946007)(6506007)(33716001)(6512007)(9686003)(6666004)(107886003)(26005)(82960400001)(38100700002)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SjZET1ltVlAxQzNkZWt6OGdUUU43V1JKNFg3N3pGUXcybGFGTmZaaEFkU0VM?=
 =?utf-8?B?UEpyNzUreDhQczhMSzlHZ1N4OUdBQmtPTXZUMExCRzJnT0JaWkdrK2pwd3JN?=
 =?utf-8?B?WTFlQ0hQVmtLcy9pZG16RUdKSmhmUHZYVUE0NDBYSHdBOFA4a05tODF1a2Fy?=
 =?utf-8?B?dURZNGo3RDVBWUE3NXF4VGpzZE9YWml3REVHUDVaZGJKWUdPQUVXWktwVUxD?=
 =?utf-8?B?U0RhcUVMT1MwdUNMaEY0VHg0eGlhcXVUVnh5RUdWeldYYnlIOThBSEI4OEIx?=
 =?utf-8?B?VWtuVWlEbDhDeStNZ1ZDeWhqNy9pSW1MRGw1Q0g3NEo0T1REcU80UVhDMFVG?=
 =?utf-8?B?Rnd3VytoL1ZvVUd1cEpkbzVLTitHaGRlemtXUUhLd2k0ZW1lYVRZVmRqR0sy?=
 =?utf-8?B?N1cvWUYrVzhWMU5yVFZ3TndsSjNGVXoxMkNCQTlQLzNvTUx6aGNxcUJwQzlC?=
 =?utf-8?B?YVQ5TVhNQzhrdFZCY1RSeldRRHJGSHI3b2JBdTNPdlNTc0tLTmFzemEzYUt6?=
 =?utf-8?B?TU5IRlBkRDI2MGdqV2dURUt5Wmxya3dBMmdrc3RUQkEvWG5ZR0grbE9QWEVy?=
 =?utf-8?B?VVkzaVROOTdsSEpkSG1EWG44MlFVazhXTnBPS3NkSzBteXg0SXZaWDVNc1Iy?=
 =?utf-8?B?YmRNTjVKWXJrcXk1OHprcFp5MGQ2WFpqdVJ5RHNsRm0yMkxmS3I5VXdMU1M4?=
 =?utf-8?B?SmJ0V1NIVHM1RFBvcWtwMGZrRXZMbGQwVmYxZEpBM2YybExCMi91dUxTaWYv?=
 =?utf-8?B?THpPN1BRdjNWeTA0L2lQcDZzV0tvanZaR3d1U3BZZG93dzA5aXcrWHg1amFB?=
 =?utf-8?B?QjlWU0NHZzZnTlp4VWNzQmhwWVE0bjduWE4zWVU2ck5kaGZWMWk1WmlLdllr?=
 =?utf-8?B?Ynh4V0VtNnR0aW8zRXpENnZJbzBJblJZWXFrOWJNZkl0RENMSklyblRaZ0ZJ?=
 =?utf-8?B?RU0zdzRoTTBxUi9GZksrY0xTaXBUbWZIaXNjTnM5bGkzWHlpWVUxelh6bDcw?=
 =?utf-8?B?QzUzSVMwWUhGcmFUYjhOcFVRcE5ycVAvNG5hdWFKMFNXR3o2Q2w0M25RYjZ1?=
 =?utf-8?B?Yzl3dzduVmg5UFNucS9TRkNZMnhLazlwNWhjZS80NXJhd3JiYU5RTzl5VXRo?=
 =?utf-8?B?aURkNzYyOUtDa1Zhbi85OUtFQ0JKeUZ0Z2xFYjdOOFFtYTVVOWU0S3FleDNT?=
 =?utf-8?B?d2hvZWdZQndablVIZDF4dVgwK3R2Z05mdDBlUnR5d2tkL3VnSEFob205RWRU?=
 =?utf-8?B?QUg2OWdvbHoyMnRFcE0wU2gzdmh5TnFoMGdIelBaMXBINndaWG92SFRIZHlP?=
 =?utf-8?B?YUoxQkVVdEMvUm1PenNpUkViNXZIMzBDSWk5ZG5YTVdQemdIMmE3TlJsaFhK?=
 =?utf-8?B?aUpHYm0zOXRESXFBY3M4S0UyNVp5bm9uSTFxYUxBakFRY2YwN3d2UVYzVGlI?=
 =?utf-8?B?K3VEbGlmOElFWmgzbm5nZlduUjd5TWxrZkFJY2REcVRhSnhCTlFZanRDaVlm?=
 =?utf-8?B?Q1EwVVZ3b2FjUW9NR3JpeUF1c25xaGlxVmxYZlRqWElnQk5qanlvTG1ENmVa?=
 =?utf-8?B?SGdLL296MVh4REM1LzlWdnZFRU1VdUFTRHlVenBGRlNJTlp3Q1k1K0xkb3g5?=
 =?utf-8?B?UWh4SWdRaU5JdFRWb28xdXRqdWdMMFlLNFJJcUZwcnZHY243dlRudTNTMGs0?=
 =?utf-8?B?enJyMjNTbkkzcGlMaVRybW1kcDRGS0RSelZTZDlOQjdZVVdEOXB6UWJGd0JY?=
 =?utf-8?B?Rm85ZHV1WVV6SnRaSHF1cDN2YzRvQU95REtXcTJMTkllOFlLdmFlNU1LWUxO?=
 =?utf-8?B?aVA2SndTZVg0Ulk1RDlhWHU3NXF3RFZERFJUWUFpU2d1aUlmUDBsczE0am1F?=
 =?utf-8?B?NUpGSnZlKyt0aHRlaDhUZlRLNnNuYjlGZmFyMm9BSlF4OU1TbWh6SkdsV0NW?=
 =?utf-8?B?NWY0YmlXRW92Z3h5Rm5lTGNPOFRmSjcvRnZ4dlcyRkxlSUQ1cXhzZ1pteG9M?=
 =?utf-8?B?Q0FRQkRKVjZ4K0U1OFRLeE4rZWplWEdqbTRCdDJqQXNiMlFheHl3YzJ1MEFI?=
 =?utf-8?B?ZWJNQmR3SE5Yem9IbWlWWDM3V0t4Z3hrZUxhanZDemowd1lUM0hzRWUzUk5Q?=
 =?utf-8?B?VStSRXQxa1RQT0N2OTdSdjJzYUdaN2VGODBJb2ZRa0kzSEhvSXQzOGZEcDBN?=
 =?utf-8?B?c2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 341c868f-cc6e-4974-0672-08dbd0c1aab0
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2023 16:37:21.7518 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0Y5Tg3LtXouNJgVmTgr9cxY32gxQPhtzhgMboXi69XThiAbTkUP9Z04+XUCc9PQqrP0huyFFy6xLIgfN1yTP8g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4788
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: Abstract C10/C20 pll
 hw readout
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Lucas De Marchi (2023-10-18 19:28:30-03:00)
>intel_cx0_phy.[ch] should contain the details about C10/C20, not leaking
>it to the rest of the driver. Start abstracting this by exporting a
>single PLL hw readout that handles the differences between C20 and C10
>internally to that compilation unit.
>
>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_cx0_phy.c | 20 ++++++++++++++++----
> drivers/gpu/drm/i915/display/intel_cx0_phy.h |  8 +++++---
> drivers/gpu/drm/i915/display/intel_ddi.c     |  4 ++--
> 3 files changed, 23 insertions(+), 9 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/dr=
m/i915/display/intel_cx0_phy.c
>index e775f4721158..252492ec6111 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>@@ -1850,8 +1850,8 @@ static int intel_c10pll_calc_state(struct intel_crtc=
_state *crtc_state,
>         return -EINVAL;
> }
>=20
>-void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
>-                                   struct intel_c10pll_state *pll_state)
>+static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
>+                                          struct intel_c10pll_state *pll_=
state)
> {
>         struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>         u8 lane =3D INTEL_CX0_LANE0;
>@@ -2103,8 +2103,8 @@ static bool intel_c20_use_mplla(u32 clock)
>         return false;
> }
>=20
>-void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
>-                                   struct intel_c20pll_state *pll_state)
>+static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
>+                                          struct intel_c20pll_state *pll_=
state)
> {
>         struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>         bool cntx;
>@@ -3053,3 +3053,15 @@ void intel_c10pll_state_verify(struct intel_atomic_=
state *state,
>                         crtc->base.base.id, crtc->base.name,
>                         mpllb_sw_state->cmn, mpllb_hw_state.cmn);
> }
>+
>+void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
>+                                   struct intel_cx0pll_state *pll_state)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>+        enum phy phy =3D intel_port_to_phy(i915, encoder->port);
>+
>+        if (intel_is_c10phy(i915, phy))
>+                intel_c10pll_readout_hw_state(encoder, &pll_state->c10);
>+        else
>+                intel_c20pll_readout_hw_state(encoder, &pll_state->c20);
>+}
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/dr=
m/i915/display/intel_cx0_phy.h
>index 0e0a38dac8cd..ff7ccb7855aa 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
>@@ -16,6 +16,7 @@ struct drm_i915_private;
> struct intel_atomic_state;
> struct intel_c10pll_state;
> struct intel_c20pll_state;
>+struct intel_cx0pll_state;
> struct intel_crtc;
> struct intel_crtc_state;
> struct intel_encoder;
>@@ -28,16 +29,17 @@ void intel_mtl_pll_disable(struct intel_encoder *encod=
er);
> enum icl_port_dpll_id
> intel_mtl_port_pll_type(struct intel_encoder *encoder,
>                         const struct intel_crtc_state *crtc_state);
>-void intel_c10pll_readout_hw_state(struct intel_encoder *encoder, struct =
intel_c10pll_state *pll_state);
>+
> int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state, struct i=
ntel_encoder *encoder);
>+void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
>+                                   struct intel_cx0pll_state *pll_state);
>+
> void intel_c10pll_dump_hw_state(struct drm_i915_private *dev_priv,
>                                 const struct intel_c10pll_state *hw_state=
);
> int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
>                                  const struct intel_c10pll_state *pll_sta=
te);
> void intel_c10pll_state_verify(struct intel_atomic_state *state,
>                                struct intel_crtc *crtc);
>-void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
>-                                   struct intel_c20pll_state *pll_state);
> void intel_c20pll_dump_hw_state(struct drm_i915_private *i915,
>                                 const struct intel_c20pll_state *hw_state=
);
> int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i9=
15/display/intel_ddi.c
>index 9151d5add960..80a8ab7874db 100644
>--- a/drivers/gpu/drm/i915/display/intel_ddi.c
>+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>@@ -3861,10 +3861,10 @@ static void mtl_ddi_get_config(struct intel_encode=
r *encoder,
>         if (intel_tc_port_in_tbt_alt_mode(dig_port)) {
>                 crtc_state->port_clock =3D intel_mtl_tbt_calc_port_clock(=
encoder);
>         } else if (intel_is_c10phy(i915, phy)) {
>-                intel_c10pll_readout_hw_state(encoder, &crtc_state->cx0pl=
l_state.c10);
>+                intel_cx0pll_readout_hw_state(encoder, &crtc_state->cx0pl=
l_state);
>                 crtc_state->port_clock =3D intel_c10pll_calc_port_clock(e=
ncoder, &crtc_state->cx0pll_state.c10);
>         } else {
>-                intel_c20pll_readout_hw_state(encoder, &crtc_state->cx0pl=
l_state.c20);
>+                intel_cx0pll_readout_hw_state(encoder, &crtc_state->cx0pl=
l_state);
>                 crtc_state->port_clock =3D intel_c20pll_calc_port_clock(e=
ncoder, &crtc_state->cx0pll_state.c20);
>         }
>=20
>--=20
>2.40.1
>
