Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 038DA6FB168
	for <lists+intel-gfx@lfdr.de>; Mon,  8 May 2023 15:25:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA1DC10E2A4;
	Mon,  8 May 2023 13:25:32 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE0BF10E2A4
 for <Intel-gfx@lists.freedesktop.org>; Mon,  8 May 2023 13:25:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683552330; x=1715088330;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=lk9ei1lgUKQ68Lupn9yitKaLxvWlJmOD6X8wWRohZUQ=;
 b=NAFEpD5t8u+ZS97Z6MhWXrEfX2LrMVw1FxIFB/nleXoZRIVTfhgOTL6G
 VBZODvBCkBEfkfIWdazOT/4J9bTP1a0ZPSlCBKrmuGMhhZYuM3G6Rzi/9
 BYJCrh/VnAgbSohKysoCaDNLxbuTzt44kgHzQoAEl/EjDpzEpcCzLtDXq
 YfZlkENpFD9bYs+CPR+8xPqTNTFZgtb/nMCrs/2GP0NLpySgF4zYBrKT0
 3HJaLP+/pnOH3VnQfz7NzTaFJgXXE7mSUuPmfjRvdivJePnsnGb+dF2hM
 4uQkFsMBmTwTNpsWm/FEtiv+9KE1Z8QiIueAu4cPmalc/eTlHE31/U9r1 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10703"; a="334080879"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="334080879"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 06:25:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10703"; a="676058998"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="676058998"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 08 May 2023 06:25:14 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 8 May 2023 06:25:13 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 8 May 2023 06:25:13 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 8 May 2023 06:25:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kOrb/m1fH5cvBwzq3L9ApwIjTSgzUhAeDuGx+OLoYKia752p87K4oCCRpQrYy84UPkbW+NP5ylE09ihh5JYjb8DvMfF035QwclSTcb1d+uGL/WLPNV5vw3dhC9YKqh4Iy8DKZ1D33s5NTLnW7cvG6lfsx+RtqkGZuEy5PDlqPpJvyAiUaA2QtWJzDkOuBbxYnhC7wGkpaWpT12NRaBgxj495VoS7dBdx3yN9Ybd1iV2NwJ2QhKMS70e02Dd+EbjfAVnnZMEPBEd6oTmrj1ZhocciScF4NEbX2nykg7ywUWmma3damgydszR/ge1J1gnc67RVW3c9nXEVeuXn6i/uxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BpZoa5tGBK4EpnuzhPEOFh38J6SRFb5zplZfGUtW1r4=;
 b=ja08zRqvtQ08sxe8SnFcJn1QeW3Bj6vRO+mkY7EWdaYk8hpV3ivx4FoQvPU2ZZTtCWFYsThH50iEHreZSyBoyMH1bzYU08ObLqTeSMufx1iOZBvsZjLhsktEMxQJQXEkWi2qBk1t1DUnfxCgiLCBJ77vTiFoMQn+PiEWFOjYigl43bWF6dF+KGbuAy1YXgCrDASnIta87ot4Tih6Tgu/WURWaVs0P6qMzKp4V8B96zbV5YkDe285fxnO6TnOp4yqfDsKdtuAO24RV+8FGYrwNkCv4096efKYs8h+qVve98ZOSG4c0JbQ54jwn9QODTLX0DFxoLYPnHqE6Z0pL8lsow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by PH7PR11MB6834.namprd11.prod.outlook.com (2603:10b6:510:1ed::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.29; Mon, 8 May
 2023 13:25:09 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::28c6:f268:89bd:e45a]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::28c6:f268:89bd:e45a%7]) with mapi id 15.20.6363.032; Mon, 8 May 2023
 13:25:08 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230505184640.2200251-3-clinton.a.taylor@intel.com>
References: <20230505184640.2200251-1-clinton.a.taylor@intel.com>
 <20230505184640.2200251-3-clinton.a.taylor@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Clint Taylor <clinton.a.taylor@intel.com>,
 <Intel-gfx@lists.freedesktop.org>
Date: Mon, 8 May 2023 10:25:03 -0300
Message-ID: <168355230326.27719.13396666903282210539@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR05CA0180.namprd05.prod.outlook.com
 (2603:10b6:a03:339::35) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|PH7PR11MB6834:EE_
X-MS-Office365-Filtering-Correlation-Id: 5fec3cfc-f2fc-41ee-32a6-08db4fc7a464
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PIJ6OKiK5olpmKz+13S21yLBRczKf1EklCJ56vhrH6dsh8W1OnK/edL/mpVEgMFTKwb2fQJ8Tee0lxSVAEa3j12jA2/o/qCM1XpamZJR+8JWB+4CYTv42UMpX58BC08c/Zklu8xsutizTvU+pByZS51WPZmYyrc4cZI731U1Lqnth+5Eu34RQjrmXUuAUK013UXsYTMuqdJkQ9O9zoSzKw8YmAteyXlCVlXV21/ZWIGQZTNyTG2ZTEU0xGjN7R+ld4wkeM0x320j/lT1BRc0EmBoIPQAg7zgJwDTi78D2niiUOiD1FbFAm2YDr01IG7za4UgRgGP8BRnrqxxv0N2WvNr0g8CFwHheCeFQST4VLkUBHMb079MJ0jnnYqnACbwsQerkMQeEneSM55aWr2kCgTYlzOuhMHUm8ZyfCEDNbo1uj4wKOxJGjiBsbwQ7kj3yoDeaPPDGC2KBynAG3LczXSphfHeKpaRaycrDi1X52HOrfR/2QxmEu28zzd+sLf1lXhvPK8wRY3G8sXgbB8ijnpSSpqE9RllxJaZyiZJucbywH1t52eotuBiazejNA/c
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(39860400002)(136003)(376002)(346002)(366004)(396003)(451199021)(6486002)(6666004)(186003)(38100700002)(6506007)(86362001)(82960400001)(26005)(33716001)(83380400001)(9686003)(6512007)(2906002)(66946007)(66556008)(66476007)(44832011)(41300700001)(8676002)(5660300002)(8936002)(316002)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RGtzenpidDFXUnhuM2hmaklZVCsvZHVOeTVTNExqZSticDV2cHIrMDhwYVZy?=
 =?utf-8?B?WWtaTzRmcUR0T1ZWeVl0UlpaMTI1NGxVZ2srcTZyNllXbFpUODRFWmRXbXNh?=
 =?utf-8?B?MUlScHNkNFZubWRKSU1qY09HOExibW9mMjU4RFdLZ0N1NTZjWjI3VmVVTEtT?=
 =?utf-8?B?aW5JNzNDcThRdDQxWkt5RUUvckFuWnYvWm1xeDZLRHlUNFBPRWxMTVJXU0Yz?=
 =?utf-8?B?LzdkRW16YXhjN3I3cWkwdnlkdWFobEsyQmJ2SW53c25MYTFudXM4SU1tajZM?=
 =?utf-8?B?RjhTbitRTUNwTWlSQ0J5TFBIM2gzbkdLQ2NaL0NUWnY3c0pzb1I0K0xsY3NI?=
 =?utf-8?B?Mllra29lbk1MdHpNNFZqdnc4UVZhNFJFbm10VXpLUWwyVml6OEUyd3A1Q21h?=
 =?utf-8?B?Ymhaci9pYi95bWplTnNtMGZuTWhBbjcrcnNIdElsUUNBMWpKMTZqRWx2UVNk?=
 =?utf-8?B?Mk16MlRmelV4SjByYlNnOG41eWRLVkZwNlJJR1Q0NFFwSjFtbUk0YTlXc3RZ?=
 =?utf-8?B?NTJUTzVXOE1ZeExGYmJydk5HY0I1bGZmcy82ZjNZMFplVHY1RExFTDNYT0Rm?=
 =?utf-8?B?QVdBbTFYNGVVc21xdjRIa21qUjVrekJDNFU1QXk1dXdwcktPNU1nTFd5VzdR?=
 =?utf-8?B?c0hiZGNRWW5CT1BTNmNPb3lBSUc3d2s2UW4zNXhGT1F0MERqanNBbXZHc0t6?=
 =?utf-8?B?M1dWcWFvcExvVE1FNjVMcTFxckZBckVQVTR1R3pZaUtUQ0JhTU1rR0w3cVY1?=
 =?utf-8?B?OURBb1ZKd2N5Wmdxckh3aytsNG54d3lWOWFWaE83SjFrL3M4cG15ZElhdXZT?=
 =?utf-8?B?azBsS2hmT2VySDJrd1AyMlFqOXFkS0lNRVFVakdBd3g0dVo5YmMySmtDWjlG?=
 =?utf-8?B?eS9uNDFjbWVzbUdIVE1HdVJ1QVE1Z2pidzRoV1UxdXVNcmovc1NWd2lKNElm?=
 =?utf-8?B?OWYyRjlIZnpGZVV3Uk5LdnhTc0hjMmk5bjBuMVp1Z2oyeWdYaHhZRVZRcjBR?=
 =?utf-8?B?SjFLRktVc0tSZGs0ZzMzVm5QWldBZS80U3FhQjZhbVp3SUo1NkFMUDBsdDhu?=
 =?utf-8?B?NE40eS8xcmVJSitucEpLTXc1aUs5ZSsvT0ZwWnNCR3h0UFZNdXpRc093YWJz?=
 =?utf-8?B?d1V1NjA5UjREdDNlcWV5V0F0WVM5VktHUVNFTnd3Mm94MjhCekYvc2d6ZEdu?=
 =?utf-8?B?bk9adXJzVDNpaFl3K3RnZnZKSHpodDVsbUJ0cWRjT1lUdUlrb2VXbGxEdHBk?=
 =?utf-8?B?Q3VGZ0R1VUo4bjVjNktBVVBnb2I3cUtZUFE3ZkZ1cy9IY0tpZndCNEhOZDJV?=
 =?utf-8?B?V2tyaG9rMlN6bTdiL2tlNHhUREhiZEkwQ2VvR1RVbmhxNE1sa3Q3OC9MSDk0?=
 =?utf-8?B?bEIwdFovY1IrVnFXUkxGb3g5YndSdUNGMEhHdWM0TE1LSHlOR0ZJcG8va1Vj?=
 =?utf-8?B?aHVuNVhEWmJFWUw3YmdLVU5Rc2ZaT1hMdlAvM3RkODErWVhCS3pVTEZZeTZ6?=
 =?utf-8?B?ckh6b2dTb2JTNzRnRC93TW8wVDZmbmUrYmJWM0llRmMwS280TXZDYnEyQjJt?=
 =?utf-8?B?c1ZaV2NlTytNNmxWZzhVWW9pcU5uVWVQOVErdzBuNzNiL283dVVtRU00Uzc1?=
 =?utf-8?B?TldRVFZQU1BuOEdoUERXYXJwZ1FTWHl6ZkhoTEhmZW1xTVZvM0pqcHQ1b29O?=
 =?utf-8?B?c1NRSytjVnBnOGRyc2N0aFZvK3FNU05TUFN2RDV6bkRtWTJJMW1aNW1Pb3B0?=
 =?utf-8?B?RytxTXhrNGd2SlNKRk9iYyt6aUlBdkRZUlRJeXNzem9pK0ZiMmdmWVk1MytD?=
 =?utf-8?B?S3N6eFFTc2RsWFplWUtiUlFraWt3TUl1RWlMUmdZVjMxNGZZMWFQUFB5MXIy?=
 =?utf-8?B?dkpNRnh3WFRHdjM0UGJYSXBNaStjZWNiK0kzZ2NpOXY4S1RvVGhhUVM2S2sr?=
 =?utf-8?B?WWNuLy9qaUJrTVJ0TFRkSVc5ZFZpL05wNkJ6dVZUaUlnOUl1SmlZbWdLSE5J?=
 =?utf-8?B?L2g2amVaTVhaUmJCZmxmSlQ1dk91U0tUZ2dzbER2NnNUOEo1dkFRZTIvZzU1?=
 =?utf-8?B?VzFYQkViWjd1QXVDUjBMMU51OHAxQTU4K2o3RGp4U1ZDcmpuL2FrNEo0TFlB?=
 =?utf-8?B?UXFJUjZvSnBwdkxsdHNxcElFMHFwbnB2enltYzV1YjVHYld6Mmw3emgxMmJi?=
 =?utf-8?B?amc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fec3cfc-f2fc-41ee-32a6-08db4fc7a464
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2023 13:25:08.1778 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: srov5hTw4G3KKzkWzjjWMaCN3D7/doXSs6JFqXcz/Mii/1eOGvnK8EIjsocCApZYK+z4ypHKqJVxOmrZsapt3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6834
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/hdmi: C20 computed PLL
 frequencies
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

Quoting Clint Taylor (2023-05-05 15:46:40)
>Use algorithm to generate HDMI C20 PLL clock frequencies.
>
>BSPEC: 64568
>Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>Cc: Mika Kahola <mika.kahola@intel.com>
>Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 89 +++++++++++++++++--
> .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 53 +++++++++++
> 2 files changed, 136 insertions(+), 6 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/dr=
m/i915/display/intel_cx0_phy.c
>index d94127e7448b..fb5599ffca81 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>@@ -3,6 +3,8 @@
>  * Copyright =C2=A9 2023 Intel Corporation
>  */
>=20
>+#include <linux/log2.h>
>+#include <linux/math64.h>
> #include "i915_reg.h"
> #include "intel_cx0_phy.h"
> #include "intel_cx0_phy_regs.h"
>@@ -1901,6 +1903,74 @@ void intel_c10pll_dump_hw_state(struct drm_i915_pri=
vate *i915,
>                            i + 2, hw_state->pll[i + 2], i + 3, hw_state->=
pll[i + 3]);
> }
>=20
>+static int intel_c20_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_=
c20pll_state *pll_state)
>+{
>+  u64 datarate;
>+  u64 mpll_tx_clk_div;
>+  u64 vco_freq_shift;
>+  u64 vco_freq;
>+  u64 multiplier;
>+  u64 mpll_multiplier;
>+  u64 mpll_fracn_quot;
>+  u64 mpll_fracn_rem;
>+  u8  mpllb_ana_freq_vco;
>+  u8  mpll_div_multiplier;
>+
>+  if (pixel_clock < 25175 || pixel_clock > 600000)
>+          return -EINVAL;
>+
>+  datarate =3D ((u64)pixel_clock * 1000) * 10;
>+  mpll_tx_clk_div =3D ilog2(div64_u64((u64)CLOCK_9999MHZ, (u64)datarate))=
;
>+  vco_freq_shift =3D ilog2(div64_u64((u64)CLOCK_4999MHZ * (u64)256, (u64)=
datarate));
>+  vco_freq =3D (datarate << vco_freq_shift) >> 8;
>+  multiplier =3D div64_u64((vco_freq << 28), (REFCLK_38_4_MHZ >> 4));
>+  mpll_multiplier =3D 2 * (multiplier >> 32);
>+
>+  mpll_fracn_quot =3D (multiplier >> 16) & 0xFFFF;
>+  mpll_fracn_rem  =3D multiplier & 0xFFFF;
>+
>+  mpll_div_multiplier =3D min_t(u8, div64_u64((vco_freq * 16 + (datarate =
>> 1)), datarate), 255);
>+
>+  if (vco_freq <=3D DATARATE_3000000000)
>+          mpllb_ana_freq_vco =3D MPLLB_ANA_FREQ_VCO_3;
>+  else if (vco_freq <=3D DATARATE_3500000000)
>+          mpllb_ana_freq_vco =3D MPLLB_ANA_FREQ_VCO_2;
>+  else if (vco_freq <=3D DATARATE_4000000000)
>+          mpllb_ana_freq_vco =3D MPLLB_ANA_FREQ_VCO_1;
>+  else
>+          mpllb_ana_freq_vco =3D MPLLB_ANA_FREQ_VCO_0;
>+
>+  pll_state->link_bit_rate        =3D pixel_clock;
>+  pll_state->clock        =3D pixel_clock;
>+  pll_state->tx[0]        =3D 0xbe88;
>+  pll_state->tx[1]        =3D 0x9800;
>+  pll_state->tx[2]        =3D 0x0000;
>+  pll_state->cmn[0]       =3D 0x0500;
>+  pll_state->cmn[1]       =3D 0x0005;
>+  pll_state->cmn[2]       =3D 0x0000;
>+  pll_state->cmn[3]       =3D 0x0000;
>+  pll_state->mpllb[0]     =3D (MPLL_TX_CLK_DIV(mpll_tx_clk_div) |
>+                             MPLL_MULTIPLIER(mpll_multiplier));
>+  pll_state->mpllb[1]     =3D (CAL_DAC_CODE(CAL_DAC_CODE_31) |
>+                             WORD_CLK_DIV |
>+                             MPLL_DIV_MULTIPLIER(mpll_div_multiplier));
>+  pll_state->mpllb[2]     =3D (MPLLB_ANA_FREQ_VCO(mpllb_ana_freq_vco) |
>+                             CP_PROP(CP_PROP_20) |
>+                             CP_INT(CP_INT_6));
>+  pll_state->mpllb[3]     =3D (V2I(V2I_2) |
>+                             CP_PROP_GS(CP_PROP_GS_30) |
>+                             CP_INT_GS(CP_INT_GS_28));
>+  pll_state->mpllb[4]     =3D 0x0000;
>+  pll_state->mpllb[5]     =3D 0x0000;
>+  pll_state->mpllb[6]     =3D (C20_MPLLB_FRACEN | SSC_UP_SPREAD);
>+  pll_state->mpllb[7]     =3D MPLL_FRACN_DEN;
>+  pll_state->mpllb[8]     =3D mpll_fracn_quot;
>+  pll_state->mpllb[9]     =3D mpll_fracn_rem;
>+  pll_state->mpllb[10]    =3D HDMI_DIV(HDMI_DIV_1);
>+
>+  return 0;
>+}
>+
> static int intel_c20_phy_check_hdmi_link_rate(int clock)
> {
>        const struct intel_c20pll_state * const *tables =3D mtl_c20_hdmi_t=
ables;
>@@ -1911,6 +1981,9 @@ static int intel_c20_phy_check_hdmi_link_rate(int cl=
ock)
>                        return MODE_OK;
>        }
>=20
>+  if (clock >=3D 25175 && clock <=3D 594000)
>+          return MODE_OK;
>+
>        return MODE_CLOCK_RANGE;
> }
>=20
>@@ -1944,6 +2017,13 @@ static int intel_c20pll_calc_state(struct intel_crt=
c_state *crtc_state,
>        const struct intel_c20pll_state * const *tables;
>        int i;
>=20
>+  /* try computed C20 HDMI tables before using consolidated tables */
>+  if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
>+          if (intel_c20_compute_hdmi_tmds_pll(crtc_state->port_clock,
>+                                              &crtc_state->cx0pll_state.c=
20) =3D=3D 0)
>+                  return 0;
>+  }
>+
>        tables =3D intel_c20_pll_tables_get(crtc_state, encoder);
>        if (!tables)
>                return -EINVAL;
>@@ -2093,13 +2173,10 @@ static u8 intel_c20_get_dp_rate(u32 clock)
>=20
> static u8 intel_c20_get_hdmi_rate(u32 clock)
> {
>-  switch (clock) {
>-  case 25175:
>-  case 27000:
>-  case 74250:
>-  case 148500:
>-  case 594000:
>+  if ((clock >=3D 25175) && (clock <=3D 600000))
>                return 0;
>+
>+  switch (clock) {
>        case 166670: /* 3 Gbps */
>        case 333330: /* 6 Gbps */
>        case 666670: /* 12 Gbps */
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/g=
pu/drm/i915/display/intel_cx0_phy_regs.h
>index ab9d1d983b88..cb5d1be2ba19 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>@@ -218,4 +218,57 @@
>=20
> #define RAWLANEAONX_DIG_TX_MPLLB_CAL_DONE_BANK(idx) (0x303D + (idx))
>=20
>+/* C20 HDMI computed pll definitions */
>+#define REFCLK_38_4_MHZ           38400000
>+#define CLOCK_4999MHZ             4999999999
>+#define CLOCK_9999MHZ             9999999999
>+#define DATARATE_3000000000       3000000000
>+#define DATARATE_3500000000       3500000000
>+#define DATARATE_4000000000       4000000000
>+#define MPLL_FRACN_DEN            0xFFFF
>+
>+#define SSC_UP_SPREAD             REG_BIT16(9)
>+#define WORD_CLK_DIV              REG_BIT16(8)
>+
>+#define MPLL_TX_CLK_DIV(val)      REG_FIELD_PREP16(C20_MPLLB_TX_CLK_DIV_M=
ASK, val)
>+#define MPLL_MULTIPLIER(val)      REG_FIELD_PREP16(C20_MULTIPLIER_MASK, v=
al)
>+
>+#define MPLLB_ANA_FREQ_VCO_0      0
>+#define MPLLB_ANA_FREQ_VCO_1      1
>+#define MPLLB_ANA_FREQ_VCO_2      2
>+#define MPLLB_ANA_FREQ_VCO_3      3
>+#define MPLLB_ANA_FREQ_VCO_MASK   REG_GENMASK16(15, 14)
>+#define MPLLB_ANA_FREQ_VCO(val)   REG_FIELD_PREP16(MPLLB_ANA_FREQ_VCO_MAS=
K, val)
>+
>+#define MPLL_DIV_MULTIPLIER_MASK  REG_GENMASK16(7, 0)
>+#define MPLL_DIV_MULTIPLIER(val)  REG_FIELD_PREP16(MPLL_DIV_MULTIPLIER_MA=
SK, val)
>+
>+#define CAL_DAC_CODE_31           31
>+#define CAL_DAC_CODE_MASK REG_GENMASK16(14, 10)
>+#define CAL_DAC_CODE(val) REG_FIELD_PREP16(CAL_DAC_CODE_MASK, val)
>+
>+#define CP_INT_GS_28              28
>+#define CP_INT_GS_MASK            REG_GENMASK16(6, 0)
>+#define CP_INT_GS(val)            REG_FIELD_PREP16(CP_INT_GS_MASK, val)
>+
>+#define CP_PROP_GS_30             30
>+#define CP_PROP_GS_MASK           REG_GENMASK16(13, 7)
>+#define CP_PROP_GS(val)           REG_FIELD_PREP16(CP_PROP_GS_MASK, val)
>+
>+#define CP_INT_6          6
>+#define CP_INT_MASK               REG_GENMASK16(6, 0)
>+#define CP_INT(val)               REG_FIELD_PREP16(CP_INT_MASK, val)
>+
>+#define CP_PROP_20                20
>+#define CP_PROP_MASK              REG_GENMASK16(13, 7)
>+#define CP_PROP(val)              REG_FIELD_PREP16(CP_PROP_MASK, val)
>+
>+#define V2I_2                     2
>+#define V2I_MASK          REG_GENMASK16(15, 14)
>+#define V2I(val)          REG_FIELD_PREP16(V2I_MASK, val)
>+
>+#define HDMI_DIV_1                1
>+#define HDMI_DIV_MASK             REG_GENMASK16(2, 0)
>+#define HDMI_DIV(val)             REG_FIELD_PREP16(HDMI_DIV_MASK, val)
>+
> #endif /* __INTEL_CX0_REG_DEFS_H__ */
>--=20
>2.25.1
>
