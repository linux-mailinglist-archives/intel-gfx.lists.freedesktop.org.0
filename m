Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE95D7A6A4E
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Sep 2023 19:58:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F160310E143;
	Tue, 19 Sep 2023 17:58:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B60910E143
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Sep 2023 17:58:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695146289; x=1726682289;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=uA5z60wPjLX/qcdKTSUHKq6k4SHqIGtPN2WdsRItJB4=;
 b=lPiVqfTGbNVhChQQ7gsF/w+PjBmkxrIGCvNXkD1x1zwO7dfM9/icbDSv
 N23+mqxdhJnsvuBC+MCGYix+PazUDTJkH2dAttcS9qIo5NQvS/j7uNejt
 mjmJs8wugAgzlrjfkaM/8KvzDAbvXVzFJ+4MaMT2J4YpDVtcABIjiKRss
 UwiQmzTuNkB4VlNZGeN1nhyzFEbWPHAFA4bg5P9xMXU8XkgD2gb5gmUzk
 FuuN4cXDTl4QuqwltlAuE0foQwj6h3tYNq6t9x+QifT9peDIxnCD8BJMy
 Y/4A59dS4kcuPuauvOaXaS4KnJqfk7wBteyUWWXRCY0vdCpk0QkSqxVTU Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="379916590"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="379916590"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 10:58:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="861649669"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="861649669"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Sep 2023 10:58:07 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 19 Sep 2023 10:58:06 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 19 Sep 2023 10:58:06 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 19 Sep 2023 10:58:06 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 19 Sep 2023 10:58:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gn1+SWWLlRekS5/ndMSohNlADzCcH9M9xhUZrF9MsRatoGRlm0YuHft1uEotcim5+DEbchHyKyXj265L8Tr9s0j96/As0awA+ZBBMGtTUkjgC1jO7FmAjmd7LXxRLqLu/JGmUFkqeU8utEwLDOgYSZB5Rsi/kv5J2GkgaCdf0W+yfQtd/Lb/4GL1EOS189ca/UM0HkM/XxJxojVbjimH+43KdhpWRvARG2+jq1z0mgw/LV7TQgxyjM4y3LMmQy5I2oaM6gdlMfNFOLByI4uwUk32zsH3Iv85N8HAqKW9pMsXHx0No0LK6oCT8/Qoj1UwxWVXKaaNs8JK149aCz6caA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8V6HnCLfD5la29lWrqWLEhMf3twjoc4ILtA3dAIO+Uo=;
 b=gnKjxzYaQ4TKijLogEJ87VZMcYi2XblvukewybJ2JGgLfAcIOoMio9A/Au8Q0ey0AYPLqeUiQ7D6lNjGN2o3QdVpKrm1XYIXDc21G0bdvff/dtw53dAoP5eMBtkMZ2rK+iktEBiCGX78oqkKtANWXgRstfBVyprLrcY2jBIDbzkKneknZLNN4+oWMbkRkqE/ll4gpXFAuYlrrBKabK54iIXFbvvL6evv82jOzXY4WPlL9NX5MFNBSOwcifGFtqxN6e0trOVjFxlMCGxs88WAKYdrAwvOVHrQUs1G/3CEAgpz+bQf0W9hTeNRpwR0gtf7e7UlxxVrZNUeLuMQRITxHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by CY5PR11MB6439.namprd11.prod.outlook.com (2603:10b6:930:34::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.27; Tue, 19 Sep
 2023 17:58:04 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf%6]) with mapi id 15.20.6792.026; Tue, 19 Sep 2023
 17:58:04 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230919174953.51546-1-gustavo.sousa@intel.com>
References: <20230919174953.51546-1-gustavo.sousa@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Tue, 19 Sep 2023 14:57:45 -0300
Message-ID: <169514626543.2105.14293183581593312572@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR06CA0001.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::14) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|CY5PR11MB6439:EE_
X-MS-Office365-Filtering-Correlation-Id: 71db9cf6-4fdf-453a-a723-08dbb939f8bd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: reAxkdHECeJRUyZTmGwnuok+GfsPgHHsiPKN5Aa9QPqHTOkYu/ldljpoViQqELful4Yt6W0HzfTc9XSu7sAe1o29YG+5qD8ubuUzP/C3fVIlifCEJR+wCRvUnImecmTZH6uBSbaMrE3kI/ZDZ9Gm+UaOuMBCPix6tYNfCroR+ufx6dpkr5lk14+mA5LDsvdnYsCpPCVNI0SO/8V8jx+vjeSVfg2aa8AF15TQPXvXnLvdPfjonzwcmFYXpk1wuY1ILSLZ4I1GAROFW8A33+tExzWLBe4/W5rFLMlO6UGfRlnw0JooUSjqtS9TbkYurnFB1D/Jl84OwVRtXn6f9Ame5M38Th6ev8bwFYXBcy8gQjAXsLMT3snEaDl37w5r8PoTFkVV265P4Zj+MQj9FaiIURCnEQtz9CAxKkPEiss+xCWaKHIt9kW0+Gs2+4LkDf2UqvO5ob/s22+R4UurEyGgVSww7lJqVF5WIOTP4TnZXqLGAT60ukwPi8xbFAH9T2+tjOLUIHCZdafMSR1X8D9C+ZTWZbf0ufQbEq6zRLy8fIU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(376002)(39860400002)(136003)(396003)(366004)(346002)(1800799009)(186009)(451199024)(966005)(6512007)(9686003)(6486002)(6506007)(26005)(8936002)(8676002)(33716001)(82960400001)(2906002)(41300700001)(86362001)(66476007)(66556008)(66946007)(6916009)(316002)(44832011)(38100700002)(6666004)(5660300002)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MDBDSDgvZWJjSkUyOFZ2ZnJEeGpGTGFqa0dFTFNvcUZRazcvSy82MnV0Qjh4?=
 =?utf-8?B?UHRjRkdhWE1yVkNyQUp2NWdqN3NzdnNsS0Z3NzlndEtib0FxdHExVCtneXBQ?=
 =?utf-8?B?bUQ0T0tSK3VpcU9zT0M4S1ErQWNCMjA0U3ZJSWwzeG8xd3BxTDhjdjQwSm5K?=
 =?utf-8?B?V2hiblEwRFdrYU9vSERnVGMwVVk4bXBxN3JyVzlpQlZiYjF0by8ySXd2eEl0?=
 =?utf-8?B?dFd6ZVpIYlRZeW01T0VPbGg5SW1jbkFoMUhZSnBwa2tOUXJBYU5LRXBremhQ?=
 =?utf-8?B?TDhiS2RHdW1xSkkrODZUSWc0VTlGOGdrUTVIMWJWbk5QaU5saG1mQ0RSYWRF?=
 =?utf-8?B?cmxLSEF2N1FVenkraXRjRjdSdk40S3BHUmp4aGtsenRVbU1aR1pPMFphVXE4?=
 =?utf-8?B?blFMalM4L3k0UkxEVGhEZ1k0Y2pxRG9MV3VoMWQ1aml5aklQWWV2Sk4zRzFm?=
 =?utf-8?B?Q0JxbGNsT0xncjV2c2R1SzhFdThuK05oOTVFMnR4cXVKMng2ZVk2dis2RmhE?=
 =?utf-8?B?RmhubnNPQitEYS8rWHJKM2FjSEJlRU10TjBhTHB0ZWZFS2UvWlJoSVlTdjNM?=
 =?utf-8?B?aEd0V2R3bzc3MHNYcXFXL1B1dDhOVlR6TUJuL2krYnR4UHQ2L2daRENoYWxk?=
 =?utf-8?B?RTZ4UkU5ZXorN25rUjJwaGdXSVJlTTBQMi9xcVBmS09PQTVYYmFXRDRrV1BU?=
 =?utf-8?B?ejFaTHRzZTgvN05MY0FTUHk0VEEyWlRzaklla0dzWENNcEVBUEZ4bGhpRy9C?=
 =?utf-8?B?TEZYZHdiSElVdTZ0Sm5ITm5rT1VWcEU5NFdtY3l4c2hoNXMrT255SFZIU1Y4?=
 =?utf-8?B?TVlxYjdiNDJsVnluU21ucjNybWZET3VUWU9DcHFkZTlISlhISHpEdElORms0?=
 =?utf-8?B?dXNrbXNMbzVYblFoTmpDaFdGSFdMdlVHcnJGT2hoaFpRUm9ucHF4VUN4T3hQ?=
 =?utf-8?B?YUR3dGQxSmthVFlmZThZYWtWcWIrN216SXNpNUpDV2NLVG4zMjJBeW1zOW5h?=
 =?utf-8?B?UGpQa29zZEtHMi8yblVUSUpCMVhsRDdWZHR2aG5uNnRKMi9HZW1FU21Wa092?=
 =?utf-8?B?Qk5RRlhJQitxWXZiaitjL0Q1ZksrU2laMWlLTUNwcElDRGhqdC8rQzhPQ3hk?=
 =?utf-8?B?aFpFU0swdlhUNURWcUtod1ZZVVFoQXY2djM5THNMVnZGQ20ra3JpdUhsSThj?=
 =?utf-8?B?SzdKekZMdS8vWkorNzB1enV6WDVlckM5STdwd0FpejFoSDJmRlFZRHNMNjRh?=
 =?utf-8?B?NUdCNG92MXFJc1ZVTnZma2ttNVF1UmNub1YyTHFsZE51amRtQkhRQk5vT3Nn?=
 =?utf-8?B?Sm5MTXhkZjlUcVdDS3NTYkI2UVpWbU5hZWN4b2xMR2VQS0hNNDlCRlFvWkxW?=
 =?utf-8?B?c09xUlpBcnhjL1NCUnptQ2VNYmE3STRuLytXdWYydDd2bU9oTHR2RnhDZDZZ?=
 =?utf-8?B?aW1uZUZkTUdpVjVXNGllMFJXZjJ3RmExb2grdTRJNlFLQnFia2N2Zjk0Z1VW?=
 =?utf-8?B?azFtRDNwREJyMmRXQnllVWFqUVZ6N0tRTGxTTHRieHFMdTJCNDYvTk1DNzRZ?=
 =?utf-8?B?U3duR2NIVFRIeng3bFdYYndRd25TQzNmcVZhUlhOMGh5WGIwUURERnpZcWJW?=
 =?utf-8?B?RGk3KytqajZjdmNnSGtUanRwOWk4dXpZcGQrQ3BCUThEdWRzOTBSTGc1R1Vn?=
 =?utf-8?B?MmZIR2gwQ0pIYTJWRFpwc2l2c1JPa0lwaUJzOHJ4NE1GUGg3bjZBdkc5Z3da?=
 =?utf-8?B?QkhONXl0dVJqa3daanB5WU5Md2RLWnFBcCtBbFZyMXkvbmFnbm9CS3F4YkJO?=
 =?utf-8?B?NGpQVGZLM0lGK2VlVHJQQUtnWVZ2TWZNNjY1RTNITDBQQjlremVrTFdrWGZj?=
 =?utf-8?B?UzBUSzlWL0YzNVdLSkIxSmdhMURucDNzRU5JZGcyOTNaVzRFN0dYUFpYcWJ2?=
 =?utf-8?B?Y0ZiMWw4NjNpUkthWFR5TDYzMGx1eGZlVVlGV2tjTHFGWW9kcVhHTkNTTGJY?=
 =?utf-8?B?MXhTd0cyZG02KzFBT1VYenhydWtMWVBmTTZ4ZjRBTDJIWi85Z3plbEJhYmxr?=
 =?utf-8?B?R0dQaStyMlNQSlhPRjAxRFdOanl3SUVOcnBzR0ZnUHFsaHNxN3YwaVROMlFu?=
 =?utf-8?B?S28yNEJOS291V2JUTFdVMGhma0NEZ0dRNHhHR3d5UVpwN1hwQUQvY3pwSG4w?=
 =?utf-8?B?TFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 71db9cf6-4fdf-453a-a723-08dbb939f8bd
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2023 17:58:04.1358 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qc0F+4T5ZpViqMeZSUYOwJLNNHfyMVtgrN2hZvrKCgrOBBk316m6fRDdxeevYRvrdn0+kFNhS30eJzqaoV9B/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6439
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/irq: Clear GFX_MSTR_IRQ as part of
 IRQ reset
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

Quoting Gustavo Sousa (2023-09-19 14:49:53-03:00)
>Starting with Xe_LP+, GFX_MSTR_IRQ contains status bits that have W1C
>behavior. If we do not properly reset them, we would miss delivery of
>interrupts if a pending bit is set when enabling IRQs.
>
>As an example, the display part of our probe routine contains paths
>where we wait for vblank interrupts. If a display interrupt was already
>pending when enabling IRQs, we would time out waiting for the vblank.
>
>Avoid the potential issue by clearing GFX_MSTR_IRQ as part of the IRQ
>reset.
>
>BSpec: 50875, 54028
>Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

FYI: This is the i915 version of
https://patchwork.freedesktop.org/series/123920/ .

Gustavo Sousa

>---
> drivers/gpu/drm/i915/gt/intel_gt_irq.c | 3 +++
> 1 file changed, 3 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915=
/gt/intel_gt_irq.c
>index 77fb57223465..849dea61fc74 100644
>--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
>+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
>@@ -214,6 +214,9 @@ void gen11_gt_irq_reset(struct intel_gt *gt)
> {
>         struct intel_uncore *uncore =3D gt->uncore;
>=20
>+        if (gt->type !=3D GT_MEDIA && GRAPHICS_VER_FULL(gt->i915) >=3D IP=
_VER(12, 10))
>+                intel_uncore_write(uncore, GEN11_GFX_MSTR_IRQ, ~0);
>+
>         /* Disable RCS, BCS, VCS and VECS class engines. */
>         intel_uncore_write(uncore, GEN11_RENDER_COPY_INTR_ENABLE, 0);
>         intel_uncore_write(uncore, GEN11_VCS_VECS_INTR_ENABLE,          0=
);
>--=20
>2.42.0
>
