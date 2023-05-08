Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00FBB6FB126
	for <lists+intel-gfx@lfdr.de>; Mon,  8 May 2023 15:16:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 745C210E2AD;
	Mon,  8 May 2023 13:16:41 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E049710E2AD
 for <Intel-gfx@lists.freedesktop.org>; Mon,  8 May 2023 13:16:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683551798; x=1715087798;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=7ajNO1TY/rxRGovV77UjwKuoLaMoccNhAcP/MoJ7WzE=;
 b=RmkkYJ/0GZZh94Nuvc8+0DC7k2LiQ8yYUIhpULXcO/oqbwwpxgHSTK6G
 kdR/oxuUVWpWtn+vQulVAGg72DnL4oyjEJfsBhjhSu61R7mvnzqzAWAfA
 wA/S9DV32zcLxakeSFroULSYOCH8FS2l1+Rq6QXIP2exoJ0HRkdJFDJEP
 6T6BV0qAikwzkh7WLH7lPU/zgQrqeaKoSItyersPnyy01lYsmBaN59qXM
 TeHiEISP/DDIOciPtgIse3Ngr7/OgeIvthYrcdBMXJ+bsBVg6HYykNDfo
 9Ip6U8lQmVEb2KqKwbYR8mK4FlZR8g68XOsVxtBGYJE7sXbzy07mal9/m w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10703"; a="352698806"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="352698806"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 06:16:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10703"; a="768057264"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="768057264"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 08 May 2023 06:16:36 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 8 May 2023 06:16:36 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 8 May 2023 06:16:35 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 8 May 2023 06:16:35 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 8 May 2023 06:16:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CAc0gPKEKL55LHkvzPraC+k5g7P6FieK4AiL4tK5KdP32d2Fx9Fv4G754yDc9TKDoJPjMyKjCtMRGuEzMM54CIP3nmrK7lvhkwn2esiRs0PKpAFGVg6+HjQKJGY/9WOR7CaxjTvBZrEeAkiPguuJQFq9ia+8VanM3DZadcvwKzU72l9OTrjwsuu45Xx5wCy1fCHYwO1dG2N9b/seuP8/wzzpXsqftzUonqQR8YnbcOM/RcDl6A9PzJJwrqISMgEb1/kxoZKTjwo8qpH+pUI9n8qWYCdTDWveVtlyx7KkyXeWVbcxVHtfOtl7Ln330/VfTrZh6eF6JkWpGYSEg2mN0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+eYf6QQ04Mp29cTeVnexmF0w4QBctLVChq4/9lDKtww=;
 b=dDYE923VWcaracWVbV4Fl+noePxGlo4srC5OafVyfdPHrjXW1Lzzt7JCisePDsKHdbunCdMhcRdgDDZVH79MmrzTBrfKs0W9LqlOX3VNW1+yuu+59kKOc1w7WrS1+fRek8RvRj1tp9JwBxrXugAWVSxY88Ep0+8M5z+M2kB8gWqAlXIqFvKoDRaWUts2GwRpo67cRUHs0+aBPUBfmUOWINFI/QiTj24GL/RlIcvgqiguqeXDpDMhTpIhzxOJnp95bMkGwcZ1/xiHEP1Y4Fje85hOxK7Xyq9tlprQlULNrrKHkmpsEu3wvDOIzPV6rkmaajQ2Ujx2ERPKTVSlat3aqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by PH0PR11MB5158.namprd11.prod.outlook.com (2603:10b6:510:3b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.32; Mon, 8 May
 2023 13:16:33 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::28c6:f268:89bd:e45a]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::28c6:f268:89bd:e45a%7]) with mapi id 15.20.6363.032; Mon, 8 May 2023
 13:16:33 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230505184640.2200251-2-clinton.a.taylor@intel.com>
References: <20230505184640.2200251-1-clinton.a.taylor@intel.com>
 <20230505184640.2200251-2-clinton.a.taylor@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Clint Taylor <clinton.a.taylor@intel.com>,
 <Intel-gfx@lists.freedesktop.org>
Date: Mon, 8 May 2023 10:16:26 -0300
Message-ID: <168355178643.27719.9360483840605560200@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR03CA0162.namprd03.prod.outlook.com
 (2603:10b6:a03:338::17) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|PH0PR11MB5158:EE_
X-MS-Office365-Filtering-Correlation-Id: 730e44ea-7d97-445a-d984-08db4fc6711c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7PUtuB4ar014KGuil1+wYKY+Dw52fdId3tJCAgiFSZs1UuicmyBKumHtu3rEVe5VBkuKrd7+7v4wt+PBpl8cmPBXx+n/y9F5iOz2hSRByrqcUGj9kOkUDGS7pEG/tsoeC769kKClxgy68NBUd6FpUlbaR6VcQcnQQENXLbFNZBfrIOtyXZphU1gy8c6xhUA2HIY7jZeWRqqicQKS6GJlRlHFBPdpCdF8nlV46kzxLN1oYc06B7VmiFS+NCFB5mq8yR0I+pVqE6bn6ppFWclPDcASoIZfn4dw6ALaIFJoSUCHpm7oXTkoKsc/kvabtzXbqLThbD0brLwV6fWhnfYhm7zeuQ1F5x4ViBCuw1SwzoaFNd+BwXJtFvu8nOXFtpAPvnyeR3jIsTZYqRizupUlcooTCfzbSVJjgGRjQ8Fu7oJyuqIRNvzbO9BCWazfZ2U8Th5/cLyGgsC4Y1D+Pt1Kfe0hJ5MZXPHya+17bJDqXoBe42ecRIqYCaVmp3hCKUk3jrgYAW5+qr/gC71nJaf74VmpoouCbfrygpVvKpgPyQPooDG1PvYIZj6bD0C+mFft
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(376002)(136003)(396003)(39860400002)(366004)(346002)(451199021)(2906002)(41300700001)(8936002)(8676002)(316002)(44832011)(6666004)(5660300002)(66946007)(66476007)(66556008)(478600001)(6486002)(6506007)(6512007)(9686003)(26005)(186003)(82960400001)(33716001)(38100700002)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dm01eVgvZHU3YS9UOUdMa1pFRTYyYmoxWlA3RURQbm8wSjVvbEl1bnFEVFhC?=
 =?utf-8?B?SHdWczUvS3BqOU5zMG1vQUEwbmsrczlTL1pVdUhNYzFCNlNOU1BYYUw0dEV2?=
 =?utf-8?B?WUVSaWFETDkrTlRzZ05BM2NvZTlIeHdVT1JOMEh1SWRUdjBGUFlrTzEwcGln?=
 =?utf-8?B?MmlvL3FRc3ZHdTY5ZlphNnFlSHZFeTRITzE5NEQrVi9UVGhxd3h2UHI2WHgz?=
 =?utf-8?B?cXJXNEREZVlDUk1uS1dNTVR1elRsYVora0lBSThuRlhXcHlXQ2MxMzZTcm15?=
 =?utf-8?B?cXR5NXhOOWpkbVBKcHpOMTZUNHFFTE5oOTJwUGJkNTZ6emtXNmdJaFVJYlRL?=
 =?utf-8?B?TFI1eFdDVTg3NHQvN0V3MS9BSUEzd3QrcW5reUxJV0h1MEptTXdwQUNGQzdv?=
 =?utf-8?B?eGlwK1E3aXJrREpuVTlWS2VyTk5YbnIwYVpvc1JjS285NzJWTHY3UGxXYXpT?=
 =?utf-8?B?NitUck9iQ0QwMXl6OXpjKzBqKzU4enZCbHBDUVR6T1JaSTY0TVhHTHF3TWll?=
 =?utf-8?B?Sm9CODVWRmdDSktndDVXU3Zna3d6Qm1va1RCeFVZSXdiT2taeWZ5VzJ4dWxD?=
 =?utf-8?B?RFRBRTBwZlZpcklFOUpqa2gveElmSlYxOStjOGl2SlVzaGNnbndBVWw1S2w1?=
 =?utf-8?B?ekdhQUhFeHdocHFRU2dLcnVKUmxxM2wrdXJiU0t5Nm5URXA1NXl1VUVwQ0Va?=
 =?utf-8?B?TG10bGp2VTEzV0FYUnpFU0EvY28xSkpZbUlzNXU1OGJGczYyYnZMYjJKbXo5?=
 =?utf-8?B?U3cyRU1lTDNIQ3dHUVQzdklTQVZTdEVmaFF3T2pxbnlkeHNFVmZsMi9OSkxi?=
 =?utf-8?B?WS8wbGV5VkZMZ3A5dy8ycERSYWlXMHh6YVQ0cGJNYUVYOWtUMlRyNHExM3hH?=
 =?utf-8?B?emlCb1ZZZUxIRGRLMEF1ZUJ1MktWamdMZ1R3WkVQM2owWGFTZURxQTVwSERt?=
 =?utf-8?B?aSs1czc0Z0JuWGtGZ2FWdUZtYVRwc1p3Y2t6aE5paWhVSGQvamdtaTNLa1M2?=
 =?utf-8?B?TDlDYzdDQWxGZWtuY28yTklXM0lvS2MxemdFbmpuOEd0N1JjODJFWjJVZXhs?=
 =?utf-8?B?Q1hKZUswd0JPQzROS1EyS0lodVRTR2k5NnRKbHRqTm92ci9KeEhQZElGcWow?=
 =?utf-8?B?M1h3dUk1NFh2VElKZTVoNGY2K3puUENnN2xpNjl3N1hHZ3VyUzQwVWVBTkNO?=
 =?utf-8?B?a0N3cTFLSWdXVFl0YmRvSzNJR280bWtRZ3F2QmpGeVNLWTZKT3BXYjlWUWFz?=
 =?utf-8?B?bjlDbFZXcFpSc1BPTkFzcnJVS0pjcmZOQzZackJXV2ttTlNTTHRrOWM0NFhC?=
 =?utf-8?B?MkI0T3VsYzVuNjJPdndGRUdycmlDVlBnb0tUWjN3a1ZOM01UMkFiT1VQRG9T?=
 =?utf-8?B?Zi9zVWV3RFErUVc0Wis3QUNteDZhRnp3ODdkeGErVEJQTHBNVzk3N3BLemVq?=
 =?utf-8?B?MGlqb3M2NUV2L2I4QXNiQjRqVkliYjRBOVo0eExuTzlmNXhLcCtwQzdGWjlx?=
 =?utf-8?B?OWZLaW9JNFJwM2hFNXN5dnJUWVBvbnhoRm83RVZHZkRSZzlDY1ZwK1RwWVpI?=
 =?utf-8?B?eTlTRW5PZUJTYzhFOEN3MzY3cEZuMVluWDlzZ2Z0Zm5IVHhLU1Z6ZkdjT25l?=
 =?utf-8?B?OUVwL3JzbkV4NVBaZ0grQXFhbDFBMWIrMGNSanFSTUhsbGNPeWJFMVNGSEti?=
 =?utf-8?B?U3k2WldjODRiWWxQTk9aSzUydlFxMU1TL2NyM3Rwd24xcFhtN0VyaFNCYnc2?=
 =?utf-8?B?SUtWa2h4MkU2VG8zdGpNZVdkUXRZUjYvM0RWbmxvaS9PTzl2WTVWdDdyNmxt?=
 =?utf-8?B?aXpMc2pRdEg5TUcrcUhFN1dtUnZrMEJHZ05hVW9OUy9uOHgrL24wcUVrOWdX?=
 =?utf-8?B?a2QzOVQ3SEhTaHREOGFHamRnMGhCUjY1RkoyVGYyMndoc2xTNmNoNkdDVDUr?=
 =?utf-8?B?Q0lUT0huL0c5SFlldkZqV0gveHgvak5ROHRMKzh6bUNPQkMwUGhIVlNpVXVr?=
 =?utf-8?B?K2ZVbDF6Z21McStxT290OEp1c2lwbXhGQ3ZVRnM5QzVXUGdBN2Z3SzAwY1BN?=
 =?utf-8?B?ajJOY0xBUUVCVUdWVlY4NFYybkFTUW0ycW9rbnhpK1ZZYmJsbVJhaE9XWHNJ?=
 =?utf-8?B?Ny9xWWlNajNyRDRHZ0VkVEthM0RSTXhzVHhkcFRRdFRZSkhCYzF2MkRmSzZ4?=
 =?utf-8?B?RGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 730e44ea-7d97-445a-d984-08db4fc6711c
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2023 13:16:32.6253 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hcxlb2foxvgPM2nK1a5uTXryA09w9nhZhbT+XACTCV7X1PGhj0hyi8svPZTnk2Ir3XY0kwq8CbxzSwQEsrTxEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5158
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Add 16bit register/mask
 operators
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

Quoting Clint Taylor (2023-05-05 15:46:39)
>Add the support macros to define/extract bits as 16bits.
>
>Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
>---
> drivers/gpu/drm/i915/i915_reg_defs.h | 49 ++++++++++++++++++++++++++++
> 1 file changed, 49 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/i=
915_reg_defs.h
>index 622d603080f9..eb273f3ce3eb 100644
>--- a/drivers/gpu/drm/i915/i915_reg_defs.h
>+++ b/drivers/gpu/drm/i915/i915_reg_defs.h
>@@ -143,6 +143,55 @@
>  */
> #define REG_FIELD_GET64(__mask, __val) ((u64)FIELD_GET(__mask, __val))
>=20
>+/**
>+ * REG_BIT16() - Prepare a u16 bit value
>+ * @__n: 0-based bit number
>+ *
>+ * Local wrapper for BIT() to force u16, with compile time
>+ * checks.
>+ *
>+ * @return: Value with bit @__n set.
>+ */
>+#define REG_BIT16(__n)                                                   =
\
>+  ((u16)(BIT(__n) +                                                \
>+         BUILD_BUG_ON_ZERO(__is_constexpr(__n) &&         \
>+                           ((__n) < 0 || (__n) > 15))))
>+
>+/**
>+ * REG_GENMASK16() - Prepare a continuous u8 bitmask
>+ * @__high: 0-based high bit
>+ * @__low: 0-based low bit
>+ *
>+ * Local wrapper for GENMASK() to force u16, with compile time
>+ * checks.
>+ *
>+ * @return: Continuous bitmask from @__high to @__low, inclusive.
>+ */
>+#define REG_GENMASK16(__high, __low)                                     =
\
>+  ((u16)(GENMASK(__high, __low) +                                  \
>+         BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&      \
>+                           __is_constexpr(__low) &&               \
>+                           ((__low) < 0 || (__high) > 15 || (__low) > (__=
high)))))
>+
>+/**
>+ * REG_FIELD_PREP16() - Prepare a u16 bitfield value
>+ * @__mask: shifted mask defining the field's length and position
>+ * @__val: value to put in the field
>+ *
>+ * Local copy of FIELD_PREP16() to generate an integer constant
>+ * expression, force u8 and for consistency with
>+ * REG_FIELD_GET16(), REG_BIT16() and REG_GENMASK16().
>+ *
>+ * @return: @__val masked and shifted into the field defined by @__mask.
>+ */
>+#define REG_FIELD_PREP16(__mask, __val)                                  =
        \
>+  ((u16)((((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask)) +    =
  \
>+         BUILD_BUG_ON_ZERO(!__is_constexpr(__mask)) +             \
>+         BUILD_BUG_ON_ZERO((__mask) =3D=3D 0 || (__mask) > U16_MAX) +    =
      \
>+         BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__=
mask)))) + \
>+         BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (=
~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))
>+
>+

Nitpick: There is an extra blank line here.

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

> #define __MASKED_FIELD(mask, value) ((mask) << 16 | (value))
> #define _MASKED_FIELD(mask, value) ({                                    =
 \
>        if (__builtin_constant_p(mask))                                   =
 \
>--=20
>2.25.1
>
