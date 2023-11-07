Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E717E3F45
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Nov 2023 13:52:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E35E10E088;
	Tue,  7 Nov 2023 12:52:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F68E10E097
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Nov 2023 12:52:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699361557; x=1730897557;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=R6eilVyRsKkVoosq+Qit4HpWSY7+hsWO4qoK0Gqu8Q8=;
 b=Gej+hVEz16SPgUyr5pvpInYATYkKzXXhaubiuFr2SqBXvF7iIzZzIWma
 F8pTGk7gGdTYP9z/BmXCEaBUlwFLg+H0W6dKj/5qKc/ndYBNEDcXgUPhH
 SvSSJTF8/WdQL6U/5duLOf4przutLGATBppfCmY9NrcpXV+UIRXhBwrTc
 P17LdwlDzGEL9lXJ3CwOLTim94UMqN6kc1hbvuqKHow4saKka1/+iwAUh
 CJX7fkYVBTCbDwn9grkOa+NSTU8qxGyB2BkIC5ZqKL8eoFGnwkf8r5VfZ
 zv5fATb3EIeOTnIlNzaIuG7xoW6+0dxpRg+UGl6AHxLJ84j8YcTioL9oa A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="368837866"
X-IronPort-AV: E=Sophos;i="6.03,283,1694761200"; d="scan'208";a="368837866"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2023 04:52:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,283,1694761200"; d="scan'208";a="10807167"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Nov 2023 04:52:36 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 7 Nov 2023 04:52:36 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 7 Nov 2023 04:52:36 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 7 Nov 2023 04:52:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PfkfW+14y7hHFXHOkfqP1ViVnsjn3Bq8S0Fzf6A27SaxJx1o9WVbwqM+SI1RaVV+3mZ5cMRkLMfJv9Jf9HTqXs4MQML8zVdz3784eyQREuUo9feR+6bsCs7YnzL2vi6uIgxxLlH5QVF9fsmtsjtSaiBuM4lFllURNxdk4zfRZBUTBt1AbWX2pGVxe3L6QmJk9eJXZo5U2pUKlLVSXwkVxkkiY6dauqRETaCh2a+UC5OuzcBBMPAmCdo5rqbZsJQRdYk/djxz4YyAxaMncsZSDJcoc39ijP7+bVVhfarGycfwUR9vD12zvYCrlcWWtD2ueG1+XSkxzOEfo0dtsqKGpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wzep0f6Oass9w8VwYPOw4y7/LNfUbiD0NJ9MKVY5kBg=;
 b=DonxCtFzG4vTIQPSE3FKYsekbXfGkPsqb/Gd+9PVFU945q6MCaURQsatkXOwwH1j0JzywWCyByfsYpDbHfL7JKouKaeT3tORf0I0Wgxl4AFV/IZeZnEQj+3yHPACH6Imtu6/j2xqFk4SQSQOjqKXCZ6u8gTbVGXTuVfUXCoOo4miGiKmqcPjCMh/ry1BYVqnw+w0bIFSutR/s3q1DW6eSg37hRFcULiqYMrJ2OklLc5OzZ8CZPXlCC6kCJBLSJ2CYw+LnV2tH/8Nj+Eb8kWtN5JBAhERY4qGRNl/Q5RgQqMis3H1WjetmwdkaS+yvNCEehJAUtGs+kZRxQkoYPoEgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by PH7PR11MB7572.namprd11.prod.outlook.com (2603:10b6:510:27b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.27; Tue, 7 Nov
 2023 12:52:28 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::2c36:38a9:79f6:914a]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::2c36:38a9:79f6:914a%5]) with mapi id 15.20.6954.028; Tue, 7 Nov 2023
 12:52:28 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231106083322.113442-1-mika.kahola@intel.com>
References: <20231106083322.113442-1-mika.kahola@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Mika Kahola <mika.kahola@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Tue, 7 Nov 2023 09:52:21 -0300
Message-ID: <169936154128.3064.7606120706959490221@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4P223CA0010.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::15) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|PH7PR11MB7572:EE_
X-MS-Office365-Filtering-Correlation-Id: 45c67fc6-a483-48e6-0830-08dbdf906529
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hfyXGOq7IxnigCFiibaxQe7/jVdCkMsCzBY5WIJYBeD792blw2YKDSyAm+fEzAYa47LgLP5nfz/TRxVBZTm+klw3MaPcdEitVaJKR33+JZHfGGW/p5I0Ecm+UeHQl9TJMQp/+DOG18xVBBj8XpIPdJUfIf0305gscEK5ihCg+oxLfkx8D5rWH/R9QwDe0DB0rSNL6AbJENw1dolOX8YQHT4zifAvJwJERmdb/nnqnNZqAbVnrOSInSlkDMqUPUDNId+K2mNY+7dfSBPa1bJCmiujBwGw6H1ZPraBCcF18rAY2+5sNCFD53WGWq6Cg4BjyuQQbTTeXCAkIwSVb3z27ElrFq/8Hk549l4Bu6OzI7cbofPMEH4F74+6UbIBwHdNbEN862tPRjllkX9m2Op8Oejg7k9clCKaZLPgkpM+g0gqClWnktIAfozmfEreKuf3I4iHgKKGTpS7nlAlzQwaEPVpnbJp7l/nIcowJAPv5nx8/ecGWESY0kx/aDHnRVVICkwLaiozaPbbleJ64Vlq0VVPcxLTfGxeKRU6t3OTaIJMH6iesuDRrw4AIA/xGY56
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(396003)(366004)(376002)(346002)(39860400002)(136003)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(41300700001)(26005)(6506007)(6666004)(6512007)(9686003)(83380400001)(8936002)(8676002)(2906002)(15650500001)(5660300002)(44832011)(6486002)(316002)(66946007)(66476007)(66556008)(478600001)(38100700002)(33716001)(82960400001)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y0I1M0dqYlgyZUVWMTMxbXY5cGMzWWdLenUxWmwrcnR3Z3FLMzZ2NVE3THYr?=
 =?utf-8?B?djBMZVVDYm56WVhCNWdEUlo3YnRqdTdUNzZxMU9PeSszRUc4ckRNN3phc0p6?=
 =?utf-8?B?RERuTHBCdmZCd1JGMEVaS0lCUkM2WEMySW4zeDB3RGlGaTBmcEc4bDVScmZI?=
 =?utf-8?B?NHJabVRSMFZzVEFDZVpQdlR1MCs2d2o1WGZCWXhXQjZ4QnY4YzhIbjNFZnlk?=
 =?utf-8?B?cUY3ekF2TWpscTJxU3RIcGpnOERWWnlpU3pMSW9NendHeTU3OVVhWlJQMWFI?=
 =?utf-8?B?N24wS1FiZ1g5elE3UENrTVRoaGRUVThzVHdiWHFhSTlyNytRU1puc3lsZEd5?=
 =?utf-8?B?SXRpdXpzbWp0Rk1MN0dpSWtISGJhZExCQlNqa1JaS1NBNHppeEUzSVJPU2Y4?=
 =?utf-8?B?VDEyL3FJUDIxbnk4b3pGb2xLa3YzbDM4VHRENG9TdzRCRmxYK3BvdlBYS3Ju?=
 =?utf-8?B?MGZtNUt1NllNbzJUbHo1RnZhYXVOQ0hEdHk4WlRNdjBOblBUOXlDdXlYay83?=
 =?utf-8?B?QXE0bEZpQWdxMUFXTklETUdBOHNPZk9wSDNUYkh1NVd4ZFNuSjRuNEQ0Z2FZ?=
 =?utf-8?B?RU5SQkxrVHlod09uMi9sQ3R2RWxWZncyWEtnYWd5d3NFNGtWVEl0Znp6bnhi?=
 =?utf-8?B?SnJCSk1JY2pKZi90S0YyYS9UaTA3TWVtTGtEc3RwRzh3ZHFNMnhnVy9lZ05Z?=
 =?utf-8?B?dG5aWWdwREp4a3pVYmM3bVJzYVFka203ZVNZVFpKaTAzOG90eDNCL1NocWhz?=
 =?utf-8?B?eDkzTk5qOHdKbVNzQXcwT1JFTjdhWTR5dzVDeDRRK0xSakR1K3JVTDM0TlhW?=
 =?utf-8?B?Y09MUCtCRitVZkl1OXJHV1B4bWpsRjMxd1FWOFE2dkRaNmNFKzZTeDJWZVhp?=
 =?utf-8?B?NktSTTc3WWpSK29DZnZaRWRkWTFzU0I2c1I2M2k1NkQxVll2NVVLU0UrakNR?=
 =?utf-8?B?QzYxOGtkYXNXbnNXYmJlWFpoN04wMVp2N21kc2pPMitIVDR1SnBaVTBFTkNy?=
 =?utf-8?B?VGZQNzNXNnZRVHJJSHM2MTA1bGFBd1ZZUXlqSmsxMGNLa0RjUUYyN1RLNE02?=
 =?utf-8?B?ZitUSW1LWVNWc1hETGJ4Rm1aaWo1U1QydUVKRVQ5K1ZRWEFndjJxK1Q1elh0?=
 =?utf-8?B?T0lNeFhvQkNJTEluTkdTZTdxY0hVLzR5c2c5NHhiV0xSK0VQd0dhbG02VzhB?=
 =?utf-8?B?Z1ppbGcwVHhnYVJtQldJL21GUmJIeExYMnJTOUNkOHdpcmlhVWtJRGJVNTVl?=
 =?utf-8?B?eUNERzM1N003b3BMYnZvU0QzN3JKcUx0YUtjU0IxdjVoNzNBaTFHWVd6UEEz?=
 =?utf-8?B?d0xZUjRxb2RsODl0eDlVaWttRlozaTdmQVJ4QzNIRWNiMW5xaU1obDBhODBM?=
 =?utf-8?B?ZS9TbzlGU0lHQUFJTTRPWnRYR2w1d0tIMThZVHlnOFc5SElxNUZPYnNUaW9u?=
 =?utf-8?B?MDFCWlM3R0U1dm9GQnNNckJoNi8vcTRFVWQwek5zc0prN1luMFlIcnNyQndv?=
 =?utf-8?B?VnBrcW15QW5WSlE5aGNVVVpQOTNTYzhCZVZ4eVlOQzZsYTJtejFuM2pFWVM0?=
 =?utf-8?B?ZmlaMzJmMXlGUlVEZm42OS9HaHc1U3JVVldyNnJpd2pXMVFEOVROZGlxWDRU?=
 =?utf-8?B?QjRaR3JBUUFNczhhS3pmemhKSkVmV0krNUJ5Ymd2YW9DdUliWjl1WVltYlhL?=
 =?utf-8?B?NEtNbTAzMitEZUQvbktPbWpWemhBbUxBYWIyVC8yaEp2dnk2aVZNdnZIYnl5?=
 =?utf-8?B?aXppMkFleGNqQzBxNGZjeDIwS1oyRlR1Z1BnMjNLY2ZOVkZsOGVtM21sb1ZI?=
 =?utf-8?B?YldUbXFFY2tjUG4zRUhkYlptb2hLTVZKS2JsYmRFeTJBcFpuRlN6bERxOGdS?=
 =?utf-8?B?QXcvcWdqVEdyQWNwUTFXQngvNml3cHdKT3RJTElSd0gyZHFZTm5WdFFvaHJ0?=
 =?utf-8?B?Yll0TjBvVXBhYlJoOWNMOWJ5ZEIzaUYxQVFzWENTMzBaeG9iUVdCbGY4RkRi?=
 =?utf-8?B?Wk1nMXpjU3Mxb2gzMngzbVFQTEhZeDRiektwOVVCNUtTUWdZY2FnRDc3cjdH?=
 =?utf-8?B?MkZzQjFFRFJYNUpDWnhmUkRMQ1pNNXBPU08zR0s1b3YyTCtZd3VzcUw4bW9k?=
 =?utf-8?B?ajR5em5aWWcxNGRDU2U1T2N4QjRsOVVnTjQ0eGhNYURHV2RDL2QwZ1JzWEh1?=
 =?utf-8?B?d0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 45c67fc6-a483-48e6-0830-08dbdf906529
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2023 12:52:27.3043 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GiYEPE5uwzqkNXpC8WGPQ23y7WvtGRBaW49R7XzjvGwU/Xb8uxt8C+iUSaK1wWOnALyj1MCgamkUjWskBKokUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7572
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/mtl: C20 state verification
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

Quoting Mika Kahola (2023-11-06 05:33:22-03:00)
>Add state verification for C20 as we have one
>for C10.
>
>v2: use register values as u32 instead of u8
>
>Signed-off-by: Mika Kahola <mika.kahola@intel.com>

The patch looks good to me.

I had some minor suggestions further down. With those applied,

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 107 ++++++++++++++----
> drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   2 +-
> .../drm/i915/display/intel_modeset_verify.c   |   2 +-
> 3 files changed, 84 insertions(+), 27 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/dr=
m/i915/display/intel_cx0_phy.c
>index b2ad4c6172f6..87329bd2272a 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>@@ -3017,35 +3017,15 @@ intel_mtl_port_pll_type(struct intel_encoder *enco=
der,
>                 return ICL_PORT_DPLL_DEFAULT;
> }
>=20
>-void intel_c10pll_state_verify(struct intel_atomic_state *state,
>-                               struct intel_crtc *crtc)
>+static void intel_c10pll_state_verify(const struct intel_crtc_state *stat=
e,
>+                                      struct intel_crtc *crtc,
>+                                      struct intel_encoder *encoder)
> {
>-        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>-        const struct intel_crtc_state *new_crtc_state =3D
>-                intel_atomic_get_new_crtc_state(state, crtc);
>+        struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>         struct intel_c10pll_state mpllb_hw_state =3D {};
>-        const struct intel_c10pll_state *mpllb_sw_state =3D &new_crtc_sta=
te->cx0pll_state.c10;
>-        struct intel_encoder *encoder;
>-        enum phy phy;
>+        const struct intel_c10pll_state *mpllb_sw_state =3D &state->cx0pl=
l_state.c10;
>         int i;
>=20
>-        if (DISPLAY_VER(i915) < 14)
>-                return;
>-
>-        if (!new_crtc_state->hw.active)
>-                return;
>-
>-        /* intel_get_crtc_new_encoder() only works for modeset/fastset co=
mmits */
>-        if (!intel_crtc_needs_modeset(new_crtc_state) &&
>-            !intel_crtc_needs_fastset(new_crtc_state))
>-                return;
>-
>-        encoder =3D intel_get_crtc_new_encoder(state, new_crtc_state);
>-        phy =3D intel_port_to_phy(i915, encoder->port);
>-
>-        if (!intel_is_c10phy(i915, phy))
>-                return;
>-
>         intel_c10pll_readout_hw_state(encoder, &mpllb_hw_state);
>=20
>         for (i =3D 0; i < ARRAY_SIZE(mpllb_sw_state->pll); i++) {
>@@ -3091,3 +3071,80 @@ int intel_cx0pll_calc_port_clock(struct intel_encod=
er *encoder,
>=20
>         return intel_c20pll_calc_port_clock(encoder, &pll_state->c20);
> }
>+
>+static void intel_c20pll_state_verify(const struct intel_crtc_state *stat=
e,
>+                                      struct intel_crtc *crtc,
>+                                      struct intel_encoder *encoder)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>+        struct intel_c20pll_state mpll_hw_state =3D {};
>+        const struct intel_c20pll_state *mpll_sw_state =3D &state->cx0pll=
_state.c20;
>+        bool use_mplla;
>+        int i;
>+
>+        intel_c20pll_readout_hw_state(encoder, &mpll_hw_state);

Suggestion:
  Maybe have intel_cx0pll_state_verify() call
  intel_cx0pll_readout_hw_state() and have this (and also
  intel_c10pll_state_verify()) receiving the pointer to the hardware
  state?

  This would have the benefit of having the C10 and C20 specific
  functions for hardware readout called from a single place.

>+
>+        use_mplla =3D intel_c20_use_mplla(mpll_hw_state.clock);
>+        if (use_mplla) {
>+                for (i =3D 0; i < ARRAY_SIZE(mpll_sw_state->mplla); i++) =
{
>+                        I915_STATE_WARN(i915, mpll_hw_state.mplla[i] !=3D=
 mpll_sw_state->mplla[i],
>+                                        "[CRTC:%d:%s] mismatch in C20MPLL=
A: Register[%d] (expected 0x%04x, found 0x%04x)",
                                                                    ^^^^^^^=
^^^^^^^^^^^^^^^

                                                    Maybe simply use C20 MP=
LLA[%d] here?

>+                                        crtc->base.base.id, crtc->base.na=
me, i,
>+                                        mpll_sw_state->mplla[i], mpll_hw_=
state.mplla[i]);
>+                }
>+        } else {
>+                for (i =3D 0; i < ARRAY_SIZE(mpll_sw_state->mpllb); i++) =
{
>+                        I915_STATE_WARN(i915, mpll_hw_state.mpllb[i] !=3D=
 mpll_sw_state->mpllb[i],
>+                                        "[CRTC:%d:%s] mismatch in C20MPLL=
B: Register[%d] (expected 0x%04x, found 0x%04x)",
                                                                    ^^^^^^^=
^^^^^^^^^^^^^^^

                                                    Same suggestion as abov=
e here.

>+                                        crtc->base.base.id, crtc->base.na=
me, i,
>+                                        mpll_sw_state->mpllb[i], mpll_hw_=
state.mpllb[i]);
>+                }
>+        }
>+
>+        for (i =3D 0; i < ARRAY_SIZE(mpll_sw_state->tx); i++) {
>+                I915_STATE_WARN(i915, mpll_hw_state.tx[i] !=3D mpll_sw_st=
ate->tx[i],
>+                                "[CRTC:%d:%s] mismatch in C20MPLL%s: Regi=
ster TX[%i] (expected 0x%04x, found 0x%04x)",
                                                            ^^^^^^^^^^^^^^^=
^^^^^^^^^^^

                        Do tx[i] values really belong to MPLLA or MPLLB? Or=
 is
                        it rather something independent of both that really
                        belongs the C20 phy?

                        If the latter is true, then maybe just use C20 TX[%=
d]
                        here?

>+                                crtc->base.base.id, crtc->base.name,
>+                                use_mplla ? "A" : "B",
>+                                i,
>+                                mpll_sw_state->tx[i], mpll_hw_state.tx[i]=
);
>+        }
>+
>+        for (i =3D 0; i < ARRAY_SIZE(mpll_sw_state->cmn); i++) {
>+                I915_STATE_WARN(i915, mpll_hw_state.cmn[i] !=3D mpll_sw_s=
tate->cmn[i],
>+                                "[CRTC:%d:%s] mismatch in C20MPLL%s: Regi=
ster CMN[%i] (expected 0x%04x, found 0x%04x)",
                                                            ^^^^^^^^^^^^^^^=
^^^^^^^^^^^^

                        I have the same questions as above here.

>+                                crtc->base.base.id, crtc->base.name,
>+                                use_mplla ? "A" : "B",
>+                                i,
>+                                mpll_sw_state->cmn[i], mpll_hw_state.cmn[=
i]);
>+        }
>+}
>+
>+void intel_cx0pll_state_verify(struct intel_atomic_state *state,
>+                               struct intel_crtc *crtc)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        const struct intel_crtc_state *new_crtc_state =3D
>+                intel_atomic_get_new_crtc_state(state, crtc);
>+        struct intel_encoder *encoder;
>+        enum phy phy;
>+
>+        if (DISPLAY_VER(i915) < 14)
>+                return;
>+
>+        if (!new_crtc_state->hw.active)
>+                return;
>+
>+        /* intel_get_crtc_new_encoder() only works for modeset/fastset co=
mmits */
>+        if (!intel_crtc_needs_modeset(new_crtc_state) &&
>+            !intel_crtc_needs_fastset(new_crtc_state))
>+                return;
>+
>+        encoder =3D intel_get_crtc_new_encoder(state, new_crtc_state);
>+        phy =3D intel_port_to_phy(i915, encoder->port);
>+
>+        if (intel_is_c10phy(i915, phy))
>+                intel_c10pll_state_verify(new_crtc_state, crtc, encoder);
>+        else
>+                intel_c20pll_state_verify(new_crtc_state, crtc, encoder);
>+}
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/dr=
m/i915/display/intel_cx0_phy.h
>index 222aed16e739..c6682677253a 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
>@@ -38,7 +38,7 @@ int intel_cx0pll_calc_port_clock(struct intel_encoder *e=
ncoder,
>=20
> void intel_c10pll_dump_hw_state(struct drm_i915_private *dev_priv,
>                                 const struct intel_c10pll_state *hw_state=
);
>-void intel_c10pll_state_verify(struct intel_atomic_state *state,
>+void intel_cx0pll_state_verify(struct intel_atomic_state *state,
>                                struct intel_crtc *crtc);
> void intel_c20pll_dump_hw_state(struct drm_i915_private *i915,
>                                 const struct intel_c20pll_state *hw_state=
);
>diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers=
/gpu/drm/i915/display/intel_modeset_verify.c
>index 5e1c2c780412..076298a8d405 100644
>--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
>+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
>@@ -244,7 +244,7 @@ void intel_modeset_verify_crtc(struct intel_atomic_sta=
te *state,
>         verify_crtc_state(state, crtc);
>         intel_shared_dpll_state_verify(state, crtc);
>         intel_mpllb_state_verify(state, crtc);
>-        intel_c10pll_state_verify(state, crtc);
>+        intel_cx0pll_state_verify(state, crtc);
> }
>=20
> void intel_modeset_verify_disabled(struct intel_atomic_state *state)
>--=20
>2.34.1
>
