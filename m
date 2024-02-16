Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C40857C62
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 13:15:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07FA710E45D;
	Fri, 16 Feb 2024 12:15:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kalTjRpG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D792310E45D
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Feb 2024 12:15:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708085718; x=1739621718;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=9ixmnfAyH88aCCUPKThp70oOOHRjKWjTFkjgT5sbtCg=;
 b=kalTjRpGqgAhvJt06aLYrvHc+80EYXDINtK+Ks/1bwf6NY5nw//pvady
 c3HHGzOWZsuY500WBqD0GPn5syhCH7EZlsP28eyyo4E9dngugGEziKtBz
 +V+l/Wh2Gf2bd/b6eCmubLgkpEECgdbdPquBr3uqCEOqk9diXL183fEDw
 +adUGqES6rQ225gum9h+4O6Y5PwztkdFJ50PSCHymyu+hIP6wNUzX0VUt
 a7+mosZ3Pnn/3SDeFEoA7KCyvz9wDcrMtN+7Wh2dT6n39RPHNxwOtv5g2
 09SkDVqrk7TAWHlqShvQW2xHsKihOoOuTGUsi90krtQynkwULag7yqjcI Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="13604824"
X-IronPort-AV: E=Sophos;i="6.06,164,1705392000"; d="scan'208";a="13604824"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 04:15:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,164,1705392000"; 
   d="scan'208";a="3993127"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Feb 2024 04:15:18 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 16 Feb 2024 04:15:17 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 16 Feb 2024 04:15:17 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 16 Feb 2024 04:15:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=krSPKLNup3z2HzlwssZ/X500hF3d3hOhSj/HLhih6ZhVmEI0o7pd5pDUjblEcoR71ikn93fT+jUd46GyBNCYsZZvklIp0Wf8J5fgRlm+5SkVSw88wI4suLB3qXz6H6gxMVcnbwEozrHujwQJ13rVoRGQGUIsr60JmaeV+JzGelk0KNOXe9J4I3RbDxOqmo8Ff9qQYjDZLq6i5FLj4fc7fECFfwpIHkL9FTUAvqU5j0Fz23LZ6jAJFVCtcOaHXLLkaRJkIYGjJyGJ4to1h2G8FGM78noHKnR2eRE+SV5Exw8T9QSiSiz6MwByQcrKyoA/Cv4Rk+disLCXqCQ3kMObqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q4/cSFMfhaSmhYN1DfvYnX0RF8a1eiLGT/iRVQtmlS0=;
 b=NkhpGFq566DiLLTHYWj28advPdJ7egpvL5MxWfgKSAy3MBjFhpDIELGa/MMPtPhT3ghgokEGefvofBnEgskJ3jWgE3sbeH120cYxZjoo1kOgT56vS8zS4kWfhjjQ4poszETDdtbeThcXryFK734WJL/wiKousT/PAE7aGBDXA1evg66ndc+ScZErs4sRCPXnJlLG85CAwy/XBqBUVqIPmq0zTuyTQq0QQ8WQ6MhnxBUzMJ+ONPcLmFXRGBFnNQoWoC3gkd1ml8XTKgX6XvVSoQGYIP+vQdVtNO7s+xfUTKjQVBNKIIMIawQiYC7isn7peJYMGFHt3Si6XKGI1Arp1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SN7PR11MB6996.namprd11.prod.outlook.com (2603:10b6:806:2af::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.31; Fri, 16 Feb
 2024 12:15:14 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::64e6:ee24:79f8:efa]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::64e6:ee24:79f8:efa%4]) with mapi id 15.20.7292.029; Fri, 16 Feb 2024
 12:15:14 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240207013334.29606-2-ville.syrjala@linux.intel.com>
References: <20240207013334.29606-1-ville.syrjala@linux.intel.com>
 <20240207013334.29606-2-ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 1/4] drm/i915/cdclk: Extract cdclk_divider()
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Fri, 16 Feb 2024 09:15:09 -0300
Message-ID: <170808570940.10917.4761315161604589489@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4P222CA0001.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::6) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SN7PR11MB6996:EE_
X-MS-Office365-Filtering-Correlation-Id: 04821295-a74a-4937-e5bb-08dc2ee8ee52
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AxmSkGka5F3vy+fAGiO8u7dfZ04JoyeP8/C+BowttOfnXYGFBlbkMCF7ZCmejF1IgGH/pn9uYNLeA7Md9vsx1A6+N/OLBtuZwKgMqptZXsoZ4ib1UEjqhCQPD9Hu88S/CHrN+aKXA5yZRp9Xsvw1jS5ngtxgG/TubKzDzUy0VdELwgBrckvRjNekvXgC6utKcBTuO3/731X+LLiDzU2mljMwAZORs7X9x9fYx5c4fRSvBM1AOBDpGtXUly0WGzTNfvjoDazNRgFSZGwp9Ed1ddPts9vE+w+IR05zVotoRat1Zw8vwzPaJmjzlqclNWF7VFPuZxUev1+R70hy2I6dKQhasQSI1qFPXztWUK4gY1CPeQbzhpSvzICRcqJfV0XuR9EQGtPqj2tvLVuQ77BNHZKWXRvzWQnB6le5ctdeO9TVXOm3IFRDT5zRtkgM6zvMdSomGBwZKDEvHTRlQfxuRZs0drJOKnyTo7/etzIBxc+zEkHXzwXoTUe+KNtuwfValouU58g1tYv6Gj+7ifc9cIVWzUs1XBot7U1cmuUmQP1gonf2ypZ1QyW3S/8cOJPsd9f2EJkfelNXIRBPMxCUJ2RI9hRt+nhpqSQALxcoXb+uKFqK85vq6EaxjuX0jFQ0
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(136003)(39860400002)(346002)(376002)(366004)(396003)(230922051799003)(451199024)(64100799003)(1800799012)(186009)(33716001)(38100700002)(82960400001)(83380400001)(16122699003)(44832011)(316002)(26005)(6512007)(6486002)(478600001)(6506007)(41300700001)(9686003)(6666004)(2906002)(66476007)(8676002)(66946007)(66556008)(8936002)(5660300002)(86362001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TEw4dVFQZGFpbXV3K1JXd2laVW9DeTVnNk0zbE83N2VBcEU3NGtLZ3k0WGUy?=
 =?utf-8?B?RC9XbVlqam5aOUI1RkdMMjBsSVB3dVNFZUJjQ043cmFGRGFpWlNqcVdDRHZ1?=
 =?utf-8?B?djBQN2JZazBMcVhjQVlGUUNaK3B2L3cyZkp4NllrajQ2b2gxSGxONEZtbzRL?=
 =?utf-8?B?MlpZa3hsNStpeGZNaWFnaWc4MWhQbktwUnoxd29hcVIrUDFkM2hCeEQyTDMw?=
 =?utf-8?B?elJHbmR0ZkpMeHREQm1NSVFEQ0JCeXZwVThrL2RvcEljRWxBYVM1S2lzU0hi?=
 =?utf-8?B?aUxmNEdjUTF0MitaSXg2eTl6K1hkOWhNQ3ZKSTUyc0ZQeEJVbEdiL2VWZG5y?=
 =?utf-8?B?SzdnZ3hIc2xCOEZKbFF3RFAzbXFDOHlaQ0RlU1ZhZ2lZRUFuZENaMVJQb09J?=
 =?utf-8?B?b1J2UzZJeDZOYitnV2FlQytnbWZUbVloYzd6TGlyQWRMdGJZYUpHRVBvTTFs?=
 =?utf-8?B?ZXdGeUJWaURSVjhPaHhMclNvVGs4Ly8vSml6MktDeVVCODkweDdxM3djOGxY?=
 =?utf-8?B?V1R4dy9IdS9ZWmR4N0dRL29jVnFwRU9remxDNGxwWlJvOU52QWlhT25yNjA4?=
 =?utf-8?B?RmJTcUlQSzhiRzhvNFNyOE9XZnpSYU9jZ0IybFpVc1RYQjJFK0RDdE1sVFJO?=
 =?utf-8?B?NldNejRYRFF3dVpBQ0lMa2ZiQlh1RDFkMG5yc09kaDZIWkw0UDh2K3A5Q1F6?=
 =?utf-8?B?WlZGRVBYWDhTM09SVjBxQk51OGNSSkNTQnZnY1hBRTRrd280L1Ura1lGVEFu?=
 =?utf-8?B?UUVJZWNHeVg0TCt0UEd1V0xsV25XOElIaEtLbXcvTXZzeXNSMjE5VGJIWC8w?=
 =?utf-8?B?azdxeEhzTHdsb3VJZHFISXFpamxWZ2NnR2hEb0RtWkVOT3JJMjlCWTFFbHdv?=
 =?utf-8?B?NDhEM2ZzTDY3SEthclFtNTB5TERTaFlXZzlYbW5LdEEwRnVoaHpLb3ROeGli?=
 =?utf-8?B?dlR2dEpJMCszSmFwT3FBbDFZZzZweHZCYzFyTDMxMjdPME5pOG1NcnVJZzRZ?=
 =?utf-8?B?QWJ5WTZYMnJzaDE0WU1TYUowRVBZb3NjZXR4N3BQWURFSzNqeHVDa3pPSkR0?=
 =?utf-8?B?bW1jb3RkVktLbVNJaU9zMDB2ckpzUzMyVjVlbHBvbS9aMVo0eDRRd0VvNmVu?=
 =?utf-8?B?RDFkT0hsQyttWkZ3dnlTUFc5VU9sZEhTSk5ZUXc5NWJ6YmtyY1Z4SEQrL3Zx?=
 =?utf-8?B?bWlLWjFEc3ByTTltMnA2eEhLWE1FSVFLcDIyTnB1ZEgyV1FNTHU1c2t6K2tW?=
 =?utf-8?B?WW1JTVNUK1FZQ0RCS2hINkdkSC9KQklCeW5vTm1oNHFKMEpTc3c2eFVDT2hH?=
 =?utf-8?B?Q0xsWG50ZlJZa3liVDB1MUpublBnTk1IOWFQWGJqR1BBY2hMdjJqeDJyWmNn?=
 =?utf-8?B?ODZ6VUgvSjVoeDd4OG5ZaW04THB4MkRHNEFOSmwxOVZRbmR1UFJRcmxKS0wv?=
 =?utf-8?B?d0JpYjd2TnRtVGpFM0RyNTl4eklmcDEwYXN2eEszQ01aeFFmZTNEVTQ5WlZo?=
 =?utf-8?B?OHlzN0g1UG9sOFNrQzN2dS9zK3ZRMXk5NlFwbUJDRUE5d2RJRkhmY1lQcExl?=
 =?utf-8?B?b2FJQ09YWW9TRVBVMVMvMmRBWG81WGRzbGZxTmxFNG9aZlZzRHZmeGkwZ09s?=
 =?utf-8?B?OXUzR1p1aFBxVGFudUpkU2s3TGc0bDBuVjVtYUlXNjYrQXJudllDQkt4a1Bx?=
 =?utf-8?B?N1VXMjBUQUowTFhaWWd3K3dPVnlnNzg1dEpOSUpvdnZYKzExVU1rK281eXhm?=
 =?utf-8?B?cmhldmVSVTRMSm9ZMW1FY1IxRkNRazM2U1dXWHRjNjNEMi9tRG0vZUNUbXlW?=
 =?utf-8?B?MUhDcllLVzI0Vi9TV3RZMjNxdTVaa3lYWmhickxzTTdlemFYN1kzVjA3Nmha?=
 =?utf-8?B?Wm1NYzM4TVBOSEM2MEhmVnJWMHdQa05PSUxPY2o4c0E5ek9STWlrOGJRSjdZ?=
 =?utf-8?B?eHpjS0xiMXNTUmJiTlk2V2xGc082L3k3djdyd0NiYTMrdkc3bEkycDNEdnN1?=
 =?utf-8?B?dnFVc1ovTE5HN2VmRWVLUC9LNDZhZkRiRkR3YVVmd1VtNHV3NVBXMFB1Smdj?=
 =?utf-8?B?WWkrRVQ3QUJuR2kvVnMwbzZGekxGQmxnd2JTa1E3STV5Uk1JdWVPSzQyNzJk?=
 =?utf-8?B?dVhYZmloSHNBUUdDcUhURzcybkpjSWEzWmFlSjkrdjNDSDlrc3NCeFM4YUhU?=
 =?utf-8?B?VGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 04821295-a74a-4937-e5bb-08dc2ee8ee52
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2024 12:15:14.7005 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1TtnYEHwF8PmoqeE8mAGnuAPi9dSdNEdakBfjkBmYH3RtVSQHDHN9NWN0Ic6jRKYgf9IT/Cbuc3mxVlYuGVKWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6996
X-OriginatorOrg: intel.com
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

Quoting Ville Syrjala (2024-02-06 22:33:31-03:00)
>From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
>Extract the cdclk divider calculation into a helper. We'll have
>more users of this soon. We can now also get rid of the intermediate
>'unsquashed_cdclk' variable.
>
>Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>---
> drivers/gpu/drm/i915/display/intel_cdclk.c | 31 ++++++++++++----------
> 1 file changed, 17 insertions(+), 14 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/=
i915/display/intel_cdclk.c
>index 26200ee3e23f..d79485e17ed1 100644
>--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>@@ -1406,6 +1406,20 @@ static const struct intel_cdclk_vals lnl_cdclk_tabl=
e[] =3D {
>         {}
> };
>=20
>+static const int cdclk_squash_len =3D 16;
>+
>+static int cdclk_squash_divider(u16 waveform)
>+{
>+        return hweight16(waveform ?: 0xffff);
>+}
>+
>+static int cdclk_divider(int cdclk, int vco, u16 waveform)
>+{
>+        /* 2 * cd2x divider */
>+        return DIV_ROUND_CLOSEST(vco * cdclk_squash_divider(waveform),
>+                                 cdclk * cdclk_squash_len);
>+}
>+
> static int bxt_calc_cdclk(struct drm_i915_private *dev_priv, int min_cdcl=
k)
> {
>         const struct intel_cdclk_vals *table =3D dev_priv->display.cdclk.=
table;
>@@ -1744,10 +1758,10 @@ static u32 bxt_cdclk_cd2x_pipe(struct drm_i915_pri=
vate *dev_priv, enum pipe pipe
> }
>=20
> static u32 bxt_cdclk_cd2x_div_sel(struct drm_i915_private *dev_priv,
>-                                  int cdclk, int vco)
>+                                  int cdclk, int vco, u16 waveform)
> {
>         /* cdclk =3D vco / 2 / div{1,1.5,2,4} */

Not sure if it would make sense to keep the comment above now.

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>-        switch (DIV_ROUND_CLOSEST(vco, cdclk)) {
>+        switch (cdclk_divider(cdclk, vco, waveform)) {
>         default:
>                 drm_WARN_ON(&dev_priv->drm,
>                             cdclk !=3D dev_priv->display.cdclk.hw.bypass)=
;
>@@ -1826,13 +1840,6 @@ static bool cdclk_pll_is_unknown(unsigned int vco)
>         return vco =3D=3D ~0;
> }
>=20
>-static const int cdclk_squash_len =3D 16;
>-
>-static int cdclk_squash_divider(u16 waveform)
>-{
>-        return hweight16(waveform ?: 0xffff);
>-}
>-
> static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_priva=
te *i915,
>                                                     const struct intel_cd=
clk_config *old_cdclk_config,
>                                                     const struct intel_cd=
clk_config *new_cdclk_config,
>@@ -1906,16 +1913,12 @@ static u32 bxt_cdclk_ctl(struct drm_i915_private *=
i915,
> {
>         int cdclk =3D cdclk_config->cdclk;
>         int vco =3D cdclk_config->vco;
>-        int unsquashed_cdclk;
>         u16 waveform;
>         u32 val;
>=20
>         waveform =3D cdclk_squash_waveform(i915, cdclk);
>=20
>-        unsquashed_cdclk =3D DIV_ROUND_CLOSEST(cdclk * cdclk_squash_len,
>-                                             cdclk_squash_divider(wavefor=
m));
>-
>-        val =3D bxt_cdclk_cd2x_div_sel(i915, unsquashed_cdclk, vco) |
>+        val =3D bxt_cdclk_cd2x_div_sel(i915, cdclk, vco, waveform) |
>                 bxt_cdclk_cd2x_pipe(i915, pipe);
>=20
>         /*
>--=20
>2.43.0
>
