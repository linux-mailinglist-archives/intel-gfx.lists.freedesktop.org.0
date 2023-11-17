Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AFB87EF7C2
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 20:20:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B3D910E768;
	Fri, 17 Nov 2023 19:20:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBDA210E769
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Nov 2023 19:20:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700248824; x=1731784824;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=Pcjlg4c8SGLDFEa01POK3zx5z2yye+81G84NbdXbAWg=;
 b=DmI2jTV5wWhsz9h/jzaXtjwNZ3QUrLGiScdjYIY9Mtc0egGjOCtZ5JU+
 vzyWVJvYRnPaBCXB0aVB0kWsDK51TMmKQnz+dRJviX51kK/OXO2XjLMBa
 PQtzPSHfaJWo6zMHKdducSqk6a+e9i6IE7UHvk+sO/gHYojR8F3G/I4Cj
 h8NymDDWBgj9TbmOalNd218A662IrnODK5Rh7RvkM/Kc48N+O8D3fcLE7
 5cOS5Wdn1z24YY47YWbRDzRVBa7+K72enqm0J+eCRv1mutAKpK1y79E4f
 46QbY62PmqapeAeIDJFZWdCcFVqbaE1zvZmYoZ9csX0Czu7LzwfstOla8 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="457855605"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="457855605"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 11:20:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="883203602"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="883203602"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Nov 2023 11:20:21 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 17 Nov 2023 11:20:21 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 17 Nov 2023 11:20:20 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 17 Nov 2023 11:20:20 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 17 Nov 2023 11:20:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AExXpha4ZcdORVqwU2UqeweAQ3jytP7u4xuH8RPeeYN3ud/k8UkDBvSZ4bp5/7QfTJhFIXhc3K+VxYVN4PFwXkgf1QXz17nnb8fefqSIBJ31i1nWQntIweOyY3aUyhXyQWdigksbbqUMiJk0YME3+wKLovPPD1gtMTud1JCxNntE4lvHd8triXE7rlCqZmc1yAGRpwV1RPGE0mpstjJUcqTF2Kv1a1LULkqAiSm2okGtyKd27DO2zI+lCAmLO1mTgt2nmH/IPkOT1TNScbIuVIKCMhZb21cVHwgGOF0GIwYNg8aeJdPCBNwuAZ7ebcJfygZOwbUBzmVlloWjNMluxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DzN79i4Oj16PGgk3urGw0RFVIJWFHuEGgI+3t/4Y3ko=;
 b=HMLBEiGp9x6V9BXNUnQCgucmiMVXahi/S+jHAMktQ5Y9Z46MVrSLtvR9rAKe/IDcbDsOuRcbRJVW3s7vQOcQnpX62bOVW4lkKHkHPKZwhPFIb4AXw1rIpbAtNpdpVuQrMtbMQ3iRsDoqHIipyxznKnH4JlFmiSFuZ1JLBbI9hePtgUStpTILd9P55SKRFT1wpl2n9MM5zC76lUGeRsRHqxyYLqseQU9vj0FyTiobvdnZdy4J5T4m2bAKkJXTyNf1yynDaFxzH7+Rodm1RdXKgLQeg/JkoYmLTWq/8SU7NeTTn1VDhoIXfiJIIXUUpw8F2QeNKl50zGBaP24e+X/E4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by DM6PR11MB4754.namprd11.prod.outlook.com (2603:10b6:5:2ad::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.23; Fri, 17 Nov
 2023 19:20:16 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::78eb:ce50:6f36:7b2c]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::78eb:ce50:6f36:7b2c%7]) with mapi id 15.20.7002.022; Fri, 17 Nov 2023
 19:20:15 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231115182117.2551522-2-matthew.d.roper@intel.com>
References: <20231115182117.2551522-2-matthew.d.roper@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Fri, 17 Nov 2023 16:20:12 -0300
Message-ID: <170024881227.47595.2986507472544400916@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR06CA0023.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::36) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|DM6PR11MB4754:EE_
X-MS-Office365-Filtering-Correlation-Id: cf192c82-ba8a-4e05-8062-08dbe7a23a9e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7O8Qru6pDlpySJ6xGReksA7GRfemhDkpasXAFSZULJsTAU2s4uFkoFENxoMhrkrtFcGlS6wcgd8rSPS16jsGiBxmvHZ+G5IR44TLR4mHb+7bOR4xs2wKPqUIr5VptGidYbGU8guJUTTaqNtd0x6aLXGMwPef8H1d1uEoWO5o8Jx2pLt3VyPS+eF9tEPkVFXKKVsSdW4RhLF4uKkx0cVoqCd/lfXjwph88bnPs011z+qgFKNoepSFyaBcB/6yi2O2SrILL62bglSfihhmM6zxLQC+b4QY4y4JxVxtG6QoovGHlJrCFXOoQ0+HsffLuZALvKWHncSWwT57MwagCkJofvxEqIKs2CpaeQctaQhjKGUcdv9oBtFnl2vrkzqnV20fFOhncR72vNYgEcjHz39Kg8wN92syVyvLd2d8YY3BI9Uf2y35FQCkSdONrEaGjG8lWX34tz4j4F5QEhYsJV6qxcVvta7KBivezn+iFq6gnRItRwbE4GKtMx68FGwzNZYKtvftua5/h0Me64ya69zAT1gZMgJNIrlWYv0H6qPVtUCJ0frC4nccG3Dt3vgdUIuF
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(366004)(376002)(396003)(346002)(136003)(230922051799003)(64100799003)(186009)(451199024)(1800799009)(44832011)(6506007)(5660300002)(4326008)(8676002)(8936002)(6666004)(6512007)(9686003)(6486002)(41300700001)(38100700002)(33716001)(82960400001)(2906002)(316002)(66476007)(66556008)(66946007)(83380400001)(107886003)(26005)(86362001)(4001150100001)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZHk0NmdCSlR1eGFKUkpMZkU5c3VaeGxydDJJS1AxUHlST2VoRmRQUjUzL1Vy?=
 =?utf-8?B?MnM2eXA4ZFRibGN1MGk3UVI4b3htd1JONFF4NEF5Y3FBZ1pxVzRpQkg2TWI4?=
 =?utf-8?B?VjU1TFRNTlRTYnkwR0U5V2ZXQlREZDJ0cXFzRTZGYnhQZFQ0MTVrdEU5OXpq?=
 =?utf-8?B?RmlGNzFvSWh3TWlHUEQ0K25CbWRzSnBPYnJZaUpWQVdNT1ZpRUp0TkFkMUM4?=
 =?utf-8?B?VjQ2L09kNEhoMEFCSEcrUjNVTGsyS3FnVU03TFZrZVd0VWpqRUVLZmpISEo2?=
 =?utf-8?B?WEFzOFBLd0ZtckJvaDFxaFBOSkFlZ1Q5Tmh1aUR2SWNQUGZqVi9WdExwWnFY?=
 =?utf-8?B?bDVVRENkZ2huT1BOeGVseUpFL1lLWEd2aG9kMEoxdTFuS3hXdERoZy8xWjh6?=
 =?utf-8?B?Mko3RzFUcklrNXJlbUdMcXpFcHMwTWYzeFFEUEl2QUdMS0IybVhDQXplejRM?=
 =?utf-8?B?dGExeDZST2E2WUJQNlozZ0ZpY0h1b1Brc0dHU0dhQjZWUTRjK3dqci9SR1dx?=
 =?utf-8?B?TnNxNDdNSFRPZkpPdWg1RzJkUGh0VjVTV1AyckF6U1JBS3BkeFV6SFlHRkxw?=
 =?utf-8?B?SytVcG55MTFlaDd6K2xnRUNnZ24zYnVRejZ0bS9WZHp3VW1qN2pNZFBLb1dO?=
 =?utf-8?B?QWhURFZydld1bnEwSXVPZ2xheVh5QXdpZUgvNFVUNGVtS1NpSnUwM2JKa0t4?=
 =?utf-8?B?Y0twSTgxRHZzZ3lNaXhDWUtoNW9sNG94YjAva1UwUVJyTGJyOVRnc0wyU2RF?=
 =?utf-8?B?RzFIdkRPOUkrM1QwWnpTUjk3a3ZTR0N2a0ZzWDNRVWdqK2pnSzhMdVgwYi9G?=
 =?utf-8?B?VXdBcE9ldVd0dUJJN29jd2ZlRWc3QWYyNmhOcXpCb21FNEJmNVQvbXc5aWhh?=
 =?utf-8?B?QVFxRkVhekNBSzFkRGRsdnQxSHNZT3MrWHR3MGQ1aWVDbXkvalF0Y1BRNnZJ?=
 =?utf-8?B?UGlXOHVKam5xeWdKME4xTHZMNnl6NW1nb0xYT0tNRzNnbm8vZWQwOVNVcGVv?=
 =?utf-8?B?Ulc0RXdQdTg0Nm8vY1k1RE9XMThodUoyVEhqOFg0blBLUlEzU1pvUnFPNG1C?=
 =?utf-8?B?citncW5nYWdmbkhYdXVjK3pBancxQklPcjBhNHNuR1lkVysydmVZeVdnOGt5?=
 =?utf-8?B?cEdkOXlLSHh5cFB6TDFLWlBiK0hXdkFDY0FKSDF0SnJuOTNGL21vYU9pSG5k?=
 =?utf-8?B?WXBnM29IK2dVMDVnTUhCMnI1M2h4djFiOTBFelBHcnVPNjFtcWNFRm82VmpI?=
 =?utf-8?B?UHh4b21ndndySnpKRVJPVXZtMWR6dVlzZmZzcmo0VzQrazJTOXNpQTVzbjRQ?=
 =?utf-8?B?Rkh6dmMrcFI1aWtLa0Jsd3d1YURsb1loMGVDcGJJUkZwaXVQSG9jVmgwMGh1?=
 =?utf-8?B?dUJvSzJuM0swLzdhT0VpT2kwMXVzdWZOVEJJcTJ2NjNTWXVwMncvRmk4bDJk?=
 =?utf-8?B?Mlg3aTVyMW5JYmZPcGhCSk5mcE1vZVJrbVVSVXpyK0wxNmkxaVEwSUhLdWpv?=
 =?utf-8?B?RVE4SWZiUG42Z3dHSVQ5UGlLQStXeHJOVC9ZNWZqMkVaRUEzd2VNT0Y4TXZ0?=
 =?utf-8?B?Z0M1WFRnRUwzSk5tTW1CWGJMQVA5ZC9XSGNBelA0WWlSVFFzS016aDZjZ1F3?=
 =?utf-8?B?YkJwSm1FODlMdGNkL0p6SThQTDMwNHFhS00zbzJobCs1ZHlNblNkOWVERUJq?=
 =?utf-8?B?WmpDTWJUUENyV0d4eFdIRkU0VHpzN1V1SUxoV1ZldnJjbWQrWTkwSUYwWjJ4?=
 =?utf-8?B?bzhxaDloYkFwTDBoZEVxazh5VDFPd0FWSE9TanRib0taZmdsclBEQ3d0Sm9P?=
 =?utf-8?B?R0dvTDZVZldOSTVsd2NlNkQxc29mY3UxODl0UEEyTTEwa20vclF2MFMzaHhU?=
 =?utf-8?B?K3h2aU54ZldhOGkwb2VJbS9ScjdJNVZCRWdNd3NCMmxOTklIMFlxbkd5V2E1?=
 =?utf-8?B?K094R3BNd1dBNUVBaDNPOFpwS2JOMGhzUy9paTF6U1hzM0hKb1hRM1JKcTJU?=
 =?utf-8?B?R2VQUE1tcmorZ2JuVkk3ZGtmRTN6R0RNTXA4R3MvNmxSeWJSMTB5S3NpZk5J?=
 =?utf-8?B?cGkxcmpBRHVqa01KQlUxc05wbEpNT2JWMDRNaldIbVNnQjA1cXZvK29rd2Y4?=
 =?utf-8?B?WSt1Rm52czY1ZkZDbzhCYnJ3UDZDUXg4U25sZmtyUXZMZnl5amRFWEU1Tk1R?=
 =?utf-8?B?aHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cf192c82-ba8a-4e05-8062-08dbe7a23a9e
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2023 19:20:15.8371 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bsubNNQuDrQO96cIZR9auCBIRIE86i6UTqf3Jbmm9i9RPfBaD0OhVCWu9tW+iM8RSVkr2yKziV0eQIv2RsBfmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4754
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Wa_18028616096 now applies to
 all DG2
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matt Roper (2023-11-15 15:21:18-03:00)
>The workaround database was just updated to extend this workaround to
>DG2-G11 (whereas previously it applied only to G10 and G12).
>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/gt/intel_workarounds.c | 8 +++-----
> 1 file changed, 3 insertions(+), 5 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm=
/i915/gt/intel_workarounds.c
>index 63205edfea50..9bc0654efdc0 100644
>--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>@@ -2937,6 +2937,9 @@ general_render_compute_wa_init(struct intel_engine_c=
s *engine, struct i915_wa_li
>                  * Wa_22015475538:dg2
>                  */
>                 wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW, DIS_CHAIN_2XS=
IMD8);
>+
>+                /* Wa_18028616096 */
>+                wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW, UGM_FRAGMENT_=
THRESHOLD_TO_3);
>         }
>=20
>         if (IS_DG2_G11(i915)) {
>@@ -2965,11 +2968,6 @@ general_render_compute_wa_init(struct intel_engine_=
cs *engine, struct i915_wa_li
>                            true);
>         }
>=20
>-        if (IS_DG2_G10(i915) || IS_DG2_G12(i915)) {
>-                /* Wa_18028616096 */
>-                wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW, UGM_FRAGMENT_=
THRESHOLD_TO_3);
>-        }
>-
>         if (IS_XEHPSDV(i915)) {
>                 /* Wa_1409954639 */
>                 wa_mcr_masked_en(wal,
>--=20
>2.41.0
>
