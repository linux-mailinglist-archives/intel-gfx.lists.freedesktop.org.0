Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02CF57FA8BF
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Nov 2023 19:18:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B0B310E3EA;
	Mon, 27 Nov 2023 18:17:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CD2F10E3E0
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Nov 2023 18:17:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701109077; x=1732645077;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=Yo3i0yZuLQPU83i/ruToVIjdkbeH6EpqIe8DKHvyigs=;
 b=DDfaerMd64rydmof85IhS3fkyY5PUGtziiJJ0/El++lyF6SxUl4xAyYz
 PcL3YJ5DMMDA2yrp5Qs6y3DnexpfO44r73BHkICKSHNHAZIVUB9JERGNl
 KH8XExhQZs9NnHIfqQq7i6tppdUSsduSXisA+03orx21V0cmDyG26YYId
 1ZG5cJcyJ6wHMwOBPfdKsdMCkpuxSkVZS1H6UNdY/wqWtUqbe2cMTmo+X
 6RyVUmB5np/7r8Bn9YT94vdTkAbWhkFh2bVq+VagM1ZGfuwwwaec7oVLg
 VwBKBn+X9vvdScyNskt/xIJUS8rO5e2hhL15STmsPYmnD89CnRVWTeaXT g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="423911252"
X-IronPort-AV: E=Sophos;i="6.04,231,1695711600"; d="scan'208";a="423911252"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2023 10:17:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="1015645829"
X-IronPort-AV: E=Sophos;i="6.04,231,1695711600"; d="scan'208";a="1015645829"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Nov 2023 10:17:56 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 27 Nov 2023 10:17:55 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 27 Nov 2023 10:17:55 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 27 Nov 2023 10:17:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q3FalxxIRu12yUXOKZuFY84oVA+cfAhFOlek2qOf954n/1Ib1i7d9+X/dWDTm4VRVyl355F6Mk5tzTfEZMi/duw5qUc9j+7VJDPtHb7Pe3OHfyi9ZlfG2JdSXXtycPYSeAJm8I885js9N8dDupcAXR3MZ6qQQfgu6HOfFycVDjnflABKy8g/0ZVxP4D/uWZ1KTBZbzuxvExlhAI/2Y/I317EHF3YFwtSIA4yHy+Y8AIs94qNCePbH88W5AcMuCjrWywTmjuzh8GIhwFLJjA1BEHJli69UNSZSaAY32A+pQuOvIHoWXeJYvPjCFYRAUZsxl/DeLVbLQILfiaCbFXX3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3XRCeRGirwKtpWXhw7w0GgoLtSnniw5Q3HAkwQ3onEQ=;
 b=AZUl7FvP1+57Fjlqik6sovd5syIk6hBIAFps0vPjjPdN+NGZ5+yILOaV8yr8BiFUlNE3aXREbCRkds7KYIWbpupTcO7kbF6Th0pkgyrXJ0uRORF8M/Vzb47CL+cqKj6Lgj8hV7b9gin5bZ27u1guql4sy6eaL32KWddnQI1SzwEaoTlB8N5ZwFNjjIAsHqLRg3EA6sqqIAdcWiRSrNYDhPO1k0MJ4npyY1MSzH5nc4IA5N4u4xD2uOQo2Igy9PMaDnNr7n6HZpsuI9OoQniVStocKsV11v3oNzP/SAdPK2iFgO6IZ7C87lAtmUBe1n8cTYagF282gKph6Bysx1g8fQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SA3PR11MB7464.namprd11.prod.outlook.com (2603:10b6:806:31b::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.28; Mon, 27 Nov
 2023 18:17:50 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::3964:7725:b677:28c6]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::3964:7725:b677:28c6%7]) with mapi id 15.20.7025.022; Mon, 27 Nov 2023
 18:17:50 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231127154702.979401-1-mika.kahola@intel.com>
References: <20231127154702.979401-1-mika.kahola@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Mika Kahola <mika.kahola@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Mon, 27 Nov 2023 15:17:44 -0300
Message-ID: <170110906486.56286.5753363562301794958@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR05CA0125.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::10) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SA3PR11MB7464:EE_
X-MS-Office365-Filtering-Correlation-Id: 1c495227-14da-46c8-21ff-08dbef752a50
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: p5kSohCOQu8gD+nGI2LfRZdkDTwJIpPkSlSBUHwa4ZzWLeSAdmlUI1zZs0ftnv9M1iHZ+AFn2hIgQpo167Tp+4ixW/XJQrjZ3VlFaBOiBRBbfmirjef/mB0kFmdR4R1I5f3okZ3p/cHGIyj4KXebyLyi19kJPo3S18l1m14Hpr+jjGdf/tGqdo8RtmGq8AKFmatVLCij/HF+y0C9adsUbQ6TG4tEyHsgJi4Muna5h1/Y0rd7eAt2J0cCFoVBl1Iaudx7DzE57ZyTkqFbaxbXDS0LXe6PYfZEexgl8JLh9BQ8dNP5mRFQeQWQA9WQok0tFiyEQ4iRZLvTxHX7C+VSeLtBKW6cqXusHw8xqlgxXwqdSSBde4k3d8wYLcX2h+uHHFOxtfrJEqqCqhCJTcj3MHI7002dqVIlVltLBw6xcVdPiZ5OW8mY1J7Y9girymnpaIXq6EySJFjo9+eldHFxCzNLR3gDgy8aLNKHptCUs1L5PQzhb/ZBoHPa42U6OViESTSvfwWhkgWjab4yk8qnQsWw+oh4adhJYU/K/jcRWDjNXZHv+at9zylQfOJAKE/O
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(136003)(396003)(39860400002)(376002)(366004)(346002)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(66946007)(15650500001)(86362001)(4001150100001)(5660300002)(8676002)(8936002)(2906002)(44832011)(316002)(33716001)(66556008)(66476007)(41300700001)(9686003)(26005)(82960400001)(83380400001)(6666004)(6506007)(6512007)(38100700002)(478600001)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MjgrVjU3RnNnbkx5N2FsajBLTEIrTU51a3hUekttdU9pb1RydHo2amR2c1Jp?=
 =?utf-8?B?QVVPbHphNkVCUkFBUERkWFhYbFd4UHNER0dpMFk2MUZWZHhweXFGcHlFMU50?=
 =?utf-8?B?WjU0MUtUMG5MWDJndHFrSzlIL3AyV2dJbVhqcGlrcGl2c21NL3RxUG1kMWUv?=
 =?utf-8?B?VVkyTEJaWFBxWjYvQVcxbmFCZEFqdEJUWUc1QlB2bTFMbHA0c2hpM1I4Tnlq?=
 =?utf-8?B?dDJxNzBOd1FtM0pRclk5ckxPM2JtRm16U1ZLelBNTkM2aGxQNGlGbzJicVhm?=
 =?utf-8?B?OUxZc3FOcXhDa0RVK1FrbTAyNHkwcnlmT2l5QUZ6WFVhRFhLNmZtRjBUV2Zu?=
 =?utf-8?B?ZGkycmw1Um9MOUFvbjJ3RTlHbEIwcjNKTTRVMEJiUjBVeXBESU5YVERZV3Uw?=
 =?utf-8?B?dFltU01rdXNnZHBpT1BlWm5iejYzTGtyZ3VLbUpCbmVBQ3BSSFJLZDdDT2kx?=
 =?utf-8?B?SENYaWpybmRXWGlBQ1JXR2N5ZlprdWI5am9SQU1UMjNTRWtBTmoyZjBVVll2?=
 =?utf-8?B?VS8wUHZHQ2NVek9naEIrSXJGSnBUeDVoZFc5YW1aQ0Fyakp4SEtJUmYzc3pC?=
 =?utf-8?B?T3F5NEVsZkwyUnprZUZiRDNrUkNRV0Z2NDNOUVIxUW5TcDAxNUVSbGp6NWF2?=
 =?utf-8?B?NlE3RnJ5RTlQY2RlRGd1cmUyT3oveTBycXA4bGt0MWdzUzcvRVZFd1lqTDBS?=
 =?utf-8?B?MHJOQ25nL1N5U2lka0hxcFZlMjBWR1lKM0J3dzVJL09UeVppUzZYN0hFdDI2?=
 =?utf-8?B?SEtQcWZXOGpHVzgySzZ3TnJEZjR2N1hIYTd4QXBsWU5NZS8zN3dpQ05DRTRI?=
 =?utf-8?B?Yis5RmNTaWFCREQ2cHRWTW9hdVBORTUvU1dsa2xsVm50UTRzaHFqc1Y4bDcv?=
 =?utf-8?B?UGJkWW96Z2diMzYxVDM2VlM2eFNxOExESm9rTHFIUU9ZR3B4Y0JUTit3THdp?=
 =?utf-8?B?YWFRVEpERHlJdERaOUhadFU5Z1BEYXl1bHhrNHZ6NDlpNjY3K2VKODB1L3ZC?=
 =?utf-8?B?VHpWdzNYQU9hRXVRVEQ2bmk0UzAxNzZYazFoSzB2YVdwdmd2Y2FmTGl6ZnhL?=
 =?utf-8?B?bzh0alJJL0VOY3JGWlJmcDZKOTI3Q3BRV0FYd0RKM3pWV0RveDdSSndDZmVl?=
 =?utf-8?B?ZlZscjJGb2dJUUZucWhFYUZOSmhqZ3ZadFdnTjJJQzV6NG9JSnZtUHROWm5h?=
 =?utf-8?B?TjIxYnlpMjMyQ3JrQ01MV3BGanphNEwxNC9TUXJ0TGdjTjl3MVc5RWpsOGl3?=
 =?utf-8?B?SzJ5ak5XT2ZhU2FWL0JkTFh3dG9aRE1yd1dCUHlCbE12ZDFURlBreG5LTjBL?=
 =?utf-8?B?NytuUnV1Nms5ZWdUKyt4a0hhckUwSVdDV1YvRlBMVi9lNGFmRkt1WDh2Tjdx?=
 =?utf-8?B?QlE2b1FZRDNTVzBoNUtlWFNrTTNwZG9DOElnSXVydXdCbElwQ0VjN0w4WlRN?=
 =?utf-8?B?VnlWaWhTaWtsaktMczErTjB1UlR1clh1WkV4RWJxd2JNU29xNUsxVDhrMTJ5?=
 =?utf-8?B?T25BYWVWdE9rcUVPNFBvdDNXbVQ3dDVEWTBHUW5xWml3NmMxbzJMS0FEeFBQ?=
 =?utf-8?B?TlRoVkljTGIrQTQ3dlpFMVBkK09yRzRWSjQvKzZkZlpBRDVXZ05IUVlvSjVy?=
 =?utf-8?B?MVhGTlYxdzR1Y09HVnppZHBrbjhScXRITVVJK2NOTklaanRick9KNUwxUCtW?=
 =?utf-8?B?SjhNbi9qQm1JYmlpTGVLYlpEdmVpMzdKWlA0TzhCaEJpMWVra2N0VGMwYzJG?=
 =?utf-8?B?cWkvNkxuWWF2T2lHVkYzdDhoVFhURkRsSldvaXh4eU1SYm4zcUJ3WjRoWlht?=
 =?utf-8?B?a3M0a1lsUDY3ZzZmdlVjSURUbmF5MkRTUDBwTGRTbjdTamErdDVoV05rTkw1?=
 =?utf-8?B?R3djUzFMWkxTL0d6L3ZvL2t4RVAvR3BQTmtnVCs3NnluR053VWlNd04wemlT?=
 =?utf-8?B?TkpCQUFWRDE1dGt4NlR2dSsxTFowMXQ3cHZuK1I5U09kY3UvYlFrOXUvQVd3?=
 =?utf-8?B?TzFwNmY1cm9MVS9UZ29NNnZJdlhxZE5YRyt4NTViNjMyTlRXcnpiZkpMa1N6?=
 =?utf-8?B?a3FJaEhDOUQ4R2JydFcwZTQwRjF6RmxHS211bWtZS2UvUVBDUlNPVW1PSkRN?=
 =?utf-8?B?TjhqOWIwNkZOWms2NUdsOFNzODNleEpNNm9TZnJ4OGRWYmdPZnhJYTN0Qkla?=
 =?utf-8?B?VEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c495227-14da-46c8-21ff-08dbef752a50
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2023 18:17:50.5154 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2RnsWrC7XK5yyYranVuldUfmHNnzQ2b8frRtqpSRozS9l0vL0T0pfHYgeXMGNVclWuizdWf/Ise75he3TrI/4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7464
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Skip state verification
 with TBT-ALT mode
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

Quoting Mika Kahola (2023-11-27 12:47:02-03:00)
>With TBT-ALT mode we are not programming C20 chip PLL's and
>hence we don't need to check state verification. We don't
>need to program DP link signal levels i.e.pre-emphasis and
>voltage swing either.
>
>This patch fixes dmesg errors like this one
>
>"[drm] ERROR PHY F Write 0c06 failed after 3 retries."
>
>Signed-off-by: Mika Kahola <mika.kahola@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_cx0_phy.c | 7 +++++++
> 1 file changed, 7 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/dr=
m/i915/display/intel_cx0_phy.c
>index a8fa76580802..3a30cffd450c 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>@@ -418,6 +418,10 @@ void intel_cx0_phy_set_signal_levels(struct intel_enc=
oder *encoder,
>         u8 owned_lane_mask =3D intel_cx0_get_owned_lane_mask(i915, encode=
r);
>         intel_wakeref_t wakeref;
>         int n_entries, ln;
>+        struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>+
>+        if (intel_tc_port_in_tbt_alt_mode(dig_port))
>+                return;

I think we could make the call to intel_cx0_get_owned_lane_mask() here, to =
make
sure we do not waste time doing useless MMIO.

With that in place,

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

--
Gustavo Sousa

>=20
>         wakeref =3D intel_cx0_phy_transaction_begin(encoder);
>=20
>@@ -3136,6 +3140,9 @@ void intel_cx0pll_state_verify(struct intel_atomic_s=
tate *state,
>         encoder =3D intel_get_crtc_new_encoder(state, new_crtc_state);
>         phy =3D intel_port_to_phy(i915, encoder->port);
>=20
>+        if (intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder)))
>+                return;
>+
>         intel_cx0pll_readout_hw_state(encoder, &mpll_hw_state);
>=20
>         if (intel_is_c10phy(i915, phy))
>--=20
>2.34.1
>
