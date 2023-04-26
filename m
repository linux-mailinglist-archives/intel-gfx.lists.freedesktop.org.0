Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 027A16EF4A4
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 14:48:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B524610E0BE;
	Wed, 26 Apr 2023 12:48:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA95710E0BE
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 12:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682513299; x=1714049299;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=FCl6OsyOrO1rUkCOWto4TULSFHqyAoTCiL0WnZK/5sk=;
 b=gm11CnzXF1+PRX3nXbxe8/P+A9qbTqTKGCyJh8/10f24oCEIx5wHGEpW
 AISmJXTSzemqDHjSTjrVW4EZIZbzcmMutUpg8VQT4EJZuV5CMJE9pXj1H
 9HXM3vIzSLWd5gDznDehzaODTKD1+GHWm25PipR7gnF8HxTr7IDnZk+hg
 gp4O5aUmSI/FK8sXiWO5Gkf9mDEqQctPNAYK+zwJUzL6ztk+OWU8McSOP
 OUIcEVh6ALrHYZN4N66DQVB/j4S4HXddh0+yE6gkcUlGnZjD2uqrwzYFG
 VYfA3PyGhbescduvtAILC2aC/PuTgsRLnkVa79gFix2KrJ+xzP0TNvjgC w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="349029479"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="349029479"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 05:48:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="644233842"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="644233842"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 26 Apr 2023 05:48:18 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 26 Apr 2023 05:48:18 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 26 Apr 2023 05:48:18 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 26 Apr 2023 05:48:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AqzHKbRLUoX+L8HumjsA4wja0GX1k4Gm1QiQn+3kgd0S/H89ZnDm9cQtjJQBMG1CFrWl751Zvm48DpLIpImsAG/1dW1k2nAjNnhXk/uEJdxj+U8jl1V58++XaQ/d2de44DJtNjEPWHGXgqwOdsGInpgiqyLi+4tqXUmPvnzhzwMfQQOIOQHNPcF5NE3RceAjydICUzJ9zpfAkTuMkAqcWgK0pArRd5g4wXdcCPk8ePwTLC+wjca4hKTUpILy1Nz4Xf42qk5K8H8z5aY7n73nLnIoH9b8UuVH3yGP+kgRnuL3R0WXk2JTpCEOAK4lAqOhhsHfBznuVAavg9NtX5mVkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7xo6l3LzL+Kq82Ih69M4qgR9AtihOS/7Y2wAetpc0oY=;
 b=GPcZKNzvHGnaRsx4ENSVlXcCkqAS/4SqvEq5o70HxGPwHglaKIDExFpI/uJo9F7J0Gc2vhBiEUDqlOCjiy6+bZWp+5LSpQJVPqRt5hAlp5GEmL/84SN+DsXzphykZKa1tfH+lEZVEQbK7+gztqiaL9M+VSr/wawqXbq95QAOiXUtzFGXRytU37rIVLvELzP7+YD8QLEuwSSFLg1D0Td5wDYDIZf00gFI4fQVY4I0VSsQ5y3FOYG/j+gtX0DXKw0A+XBtX4xYgQgx6mLcNaweiuGqb3mLkOJzJoW2lZzBMVx6PNhibD7bG25aRfW97zgAEIugxSv55287hoQBhJJB2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by CO1PR11MB4770.namprd11.prod.outlook.com (2603:10b6:303:94::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.34; Wed, 26 Apr
 2023 12:48:16 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::28c6:f268:89bd:e45a]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::28c6:f268:89bd:e45a%7]) with mapi id 15.20.6340.021; Wed, 26 Apr 2023
 12:48:16 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230420221248.2511314-1-radhakrishna.sripada@intel.com>
References: <20230420221248.2511314-1-radhakrishna.sripada@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Wed, 26 Apr 2023 09:48:09 -0300
Message-ID: <168251328980.2664.15413475376781466021@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR03CA0143.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::28) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|CO1PR11MB4770:EE_
X-MS-Office365-Filtering-Correlation-Id: 15da9a2d-791c-4b84-d4b1-08db465480c8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HkVrq2cocOZMFoCjBnkEBlL45e1G6JkuowhefL1y0k9SkN/edpBO5tQB2QpV5QhiX+70/jQK4L5HtuCkj0Velg4k+pWUR9HjNNipNlGU+ePPPUAun8H2FvzkStwdkTz/QbU1zWxmxao5vgQViudiekeC7LRkLg+ms19F7Fd740im9C0u8/IrJJ/hHMyxXwRiqHqLVOW+O70Ez4i9eHPaOlhjD1ylkVxeMcteW3bWLbmdUFN9hHAbGM6pYHRt4H8KtVe+2MdCfcUTiRaK8LLtLkgVC+BdWkz4N5vY6fYsV92drT5mcWb4ihqXbSA+vbarMMfNj7CnuxQQeSeKYvi6aTHCIHJei5Oq7o+GCx/xnCJ4FryYMLCMiEy7n+EyW6vVyQsF7H/UDLQ00a5VopDMwvs3z96MiltPlgfW6h9ve5EGLv4K3vovieET+8SSvZXXqccGZ4xeYAmOv/rP6Q/8En5eSvFzkranOA9bjSBxgxjp9Uxx6/KbzTUqVexApJaXPTqJYsJG3VcSLYBm/plEmQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(366004)(136003)(376002)(396003)(39860400002)(346002)(451199021)(316002)(82960400001)(5660300002)(44832011)(8676002)(8936002)(66946007)(66556008)(38100700002)(86362001)(2906002)(41300700001)(66476007)(966005)(26005)(6512007)(6506007)(9686003)(33716001)(6486002)(478600001)(186003)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Qm5zKzJkdmJ3aFY1cy8vc1p2Sy9qeGswdUFPSGxyRGFPTGtFeXFMQThKcDhV?=
 =?utf-8?B?Z1JEWWxLbFVwZ04vd1grRmRoRUhIQytKaUF3bGh2RW5JQXZpOGxGbExyODB0?=
 =?utf-8?B?QVRBdVNaaitFcXZTQi83YzhDbm9QRE11cWdUL3dQMnRacmNaNXpsODRWMThW?=
 =?utf-8?B?UndIMmpDdW04bnk2U2xDaFVQQjF3ck8vYU0reGl2MnBuTTAraW1NQXNJTjR0?=
 =?utf-8?B?MGVTNnRKUjh5aFBlSk9vZDEwUXVlVVhSbFlmRDlLRkRkV3ZTLzg5U0x0TkNu?=
 =?utf-8?B?S0ZWS2Fxa1BOd3AvVm91ZUg5MnEyVy81SzlzMk9uOTBVVkphazJhMjcrUnFi?=
 =?utf-8?B?ZXRiL0tYMzhsVnZpR0hkYjVTN3B2UDZjRVlTQmlocE42Y0gxUThBZlBOVVZT?=
 =?utf-8?B?Q28zQjlER1o1US9MaGl5ZE5YaXBXaCtpUThaemtRRkFiT2RyaWkyejM2L1cx?=
 =?utf-8?B?UFdma3B3d3lxY1RWcFpRZzJIelJDRmlJZ1JxT01mVzkzaWxnRVo1dktjelg3?=
 =?utf-8?B?TmtWY08rNzNDS3l5RGpUVlQxU3NXZWpDZUMwQlIrRGt5ZUdLTEU1cXJ1ZnU2?=
 =?utf-8?B?eGl6dzZ5dlRTWVozdFFXLzZIVXVHazlwTmpDdXkvM1VPb0taNXdhdm15UnhJ?=
 =?utf-8?B?VTJyUm12QXJvdjk3OTNkZWNuNnRNazFaTC9BMW05SmNINXFyczdyTGk4NmJU?=
 =?utf-8?B?U3RTSmtKNzZtSGxIUVFBSGJnVUVvVU9DNlZlN05nZ3E2RElWR2JSUzRidjJY?=
 =?utf-8?B?TE9iakh2bHp2d3RycFhKMCt4eGg3VC85VW1BUjI0QVVaaTF2U1daUndHY25W?=
 =?utf-8?B?N2ZtSzNMTVdLQ1B3bHNQUzlVZmlnWGgrNkxwVVEzS1lYUXoyb0ExVWduS2Ry?=
 =?utf-8?B?QjVLQlBrQjJzd3E0WG9hZjBiSFpaVHJKUXF2b2JVRDY3bGd2MXJDRURCNEdI?=
 =?utf-8?B?NEpzY1Y2YXg1YkpJUlY0L2E3dnJDUzhKMG5ubWZwMjZzKzQwVkpUQ2h3QnhB?=
 =?utf-8?B?Mm90Z2JGc3M5U241bkYwbHJTMDVIUFp4MWplUEZyalV6a2tHalY0QnVEczdD?=
 =?utf-8?B?a0tNam1LV29PMGRESS92MUR3UGJHaGFpcEsraVRCWlZYaWorOHhnUDBIdXE5?=
 =?utf-8?B?UkIwenlCQ0NJV1NRYjVNRWFkRkVEYzVzbVFDbm1kb3J0MTltU2paZHl0ZGNk?=
 =?utf-8?B?bmFadmp1Z0ltb2Q5dUZwQ2c2eEFtRHhIc1p2YWxDdjJjOTNwV1Vic0VlNE5h?=
 =?utf-8?B?cVI3alZPOG16V1BoSDlCaUFSQzUzZHdtU29sVVVuT1BCWUpRby9QcmNRVnNM?=
 =?utf-8?B?YUtGWGE4TzVmNlFlUHBodlNiWTg1Z3g5ZVRBUFB2NGZ6TnF5UzZ5aXlpSzdK?=
 =?utf-8?B?dHo4LzVJbHZPSEkwWFZ3U3pGd3dsRHNpOXhhRXF4K3FYT0swRGZtUHNZSzBw?=
 =?utf-8?B?OTBqVUlhWmg3WEpRZmZrdE85cWl2MmhPakwyMFJjVHphQ3RtTW9COG1IYWIv?=
 =?utf-8?B?aVl2N3RVcGhKcmtudlY2V1pIOXA5a2FUUHU1ajVFd1kxMXpsNWhlVXF5RG1Z?=
 =?utf-8?B?N3pRZkd4NmV0S3JOMXArOFBBQjhTMytKdmRVR1NMSDRhd1dBQkpubzVpazE1?=
 =?utf-8?B?YmdXeEl2NDJYYTJXK2ZPajRod2wxL1hKOVdlTU5nbllYdFVudmlCbTYxOHQ1?=
 =?utf-8?B?VzRubTNBOW9JMXc1em1kbHpiSFVNV1JBS0lwRkFjUm5wbmhWV3d5WTExRjhG?=
 =?utf-8?B?andpcENpT1crNXJSQ040UjJhMzZQYUFva04zMXFFUHp4RGdOanhqOWFFSzZI?=
 =?utf-8?B?cnE5a2NuVEFsbklScHAzbjBkMWFIZ2UzT0JiUEszMGNMdmZWVFhwemM1MDNy?=
 =?utf-8?B?dzdQdGJZaWg2cEVobjZDbThDUVRvbDFxNnVmdXA4WitLMEd2VHluNTVhODdp?=
 =?utf-8?B?Ny9aUHdlcDAwUEIvSXU5RWI5UXA5ZVZaVFd0VEdNQ2hGY3hleEZVZ2hwcnhG?=
 =?utf-8?B?NlR6MVJYQ2swMVpvK0pvRkJ1cFpxYnZKRG1mZjdDS2xXNkFFbnNzYU5aTi82?=
 =?utf-8?B?UjM3NWRpYnNoMFlaQzU1UVFuM1Bua0oveGpPaGhsU1k2OEEzM3FJWU9kMWNB?=
 =?utf-8?Q?sdhUwKkQf55I1BODy4Cnfy3ch?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 15da9a2d-791c-4b84-d4b1-08db465480c8
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2023 12:48:16.0802 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: daA7ZZDXAQ1KJOvkb0qU6Ypm6oU1mq9uWDYr2nsZD4FNwAm02lOv4BHo6RcpXT3lMmK2TlVvTdbQE3bzE8q2CA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4770
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/mtl: Add the missing CPU
 transcoder mask in intel_device_info
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

Quoting Radhakrishna Sripada (2023-04-20 19:12:47)
>CPU transcoder mask is used to iterate over the available
>CPU transcoders in the macro for_each_cpu_transcoder().
>
>The macro is broken on MTL and got highlighted when audio
>state was being tracked for each transcoder added in [1].
>
>Add the missing CPU transcoder mask which is similar to ADL-P
>mask but without DSI transcoders.
>
>[1]: https://patchwork.freedesktop.org/patch/523723/
>
>Fixes: 7835303982d1 ("drm/i915/mtl: Add MeteorLake PCI IDs")
>Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

Acked-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/i915_pci.c | 2 ++
> 1 file changed, 2 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_p=
ci.c
>index d64e074d7457..847057569796 100644
>--- a/drivers/gpu/drm/i915/i915_pci.c
>+++ b/drivers/gpu/drm/i915/i915_pci.c
>@@ -1135,6 +1135,8 @@ static const struct intel_gt_definition xelpmp_extra=
_gt[] =3D {
> static const struct intel_device_info mtl_info =3D {
>        XE_HP_FEATURES,
>        XE_LPDP_FEATURES,
>+  .__runtime.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B=
) |
>+                         BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
>        /*
>         * Real graphics IP version will be obtained from hardware GMD_ID
>         * register.  Value provided here is just for sanity checking.
>--=20
>2.34.1
>
