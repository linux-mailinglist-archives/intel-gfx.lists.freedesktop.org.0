Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF456857C66
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 13:16:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 257B810E616;
	Fri, 16 Feb 2024 12:16:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b005jCgf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E934A10E616
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Feb 2024 12:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708085809; x=1739621809;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=7zcJoKuuDXzKQnKfM2uTI2k/OfvZsAYdcYxyfMTyQzw=;
 b=b005jCgfIE7CURTfKdBxs1fB6wT+6FjQsTCup6maS/EsAk01NCicSvJt
 8m8s5dxKrNoXvR+lEGQBdSDhdUTyyKFekhSJKzoh+v0IKUJ1u3Pk/Tt4A
 dkq9XyGCTl6WzWdBAsw2cb34agbAs7a7Yte8oeeBQC2zThIAFjdje7zoG
 9qQxZEW2waRrT5q5z/lIw+zBgjJIEIaZD2R3RlaLYuL4yCeHSWKOBg8ep
 cCfz1LHXFuz50UjlQWvMUPVVYVi0c4tQ5JUk7aBGfQ+LPEpY0f87462yt
 9bJzCS5SXYQIA9a6sAwlo5o+eUByvpe7iCLp+FvdBhjKyvh5oqFv4K8Gr Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="2343943"
X-IronPort-AV: E=Sophos;i="6.06,164,1705392000"; 
   d="scan'208";a="2343943"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 04:16:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,164,1705392000"; 
   d="scan'208";a="3849838"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Feb 2024 04:16:48 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 16 Feb 2024 04:16:47 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 16 Feb 2024 04:16:47 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 16 Feb 2024 04:16:47 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 16 Feb 2024 04:16:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jgfwxUuVtdk1t1rLpGrdowHkLcSKX6XEdpHltCIhvTrMJzh1Rl8E9QlY9vUlhYa738uGTxfRvvMihRRltsBx5DANaWDmKR4tLN0w4ULadIXck9hHo3fwvur8V3fX2RKeDlPOTjt2alp4MOtyM40tZDsWRFbemdtbFFQJmgxZRwwKyMVKmU1vQm/nyIBrEwjpOw/1IkYi/37URWgmixlk+D7bIyHMmH1PxkCUwV6T7yLZvKycqElsk7JYipUKf9cV7QJDn614AhaL+LRog42CTXHarJkIIKn308GWzAp1TahuofmR1D1ajXxZAH8f17VDKv6AD5m7jVsIclZSaAUfVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mBGjnErn4LV033cDT6vBuhv+Xg9PSrI9dy8GLiVPEUU=;
 b=iuC2Yp+9m3A4cqf00K/cCbdHg/4zmij9bCc06gAi0vrQ0a6LAhu0T6InpsGVbY83R0duiRxLGwIqrd+71ZTcJCjXbBkG0WC0gvjMGhMRP4vvMWg2jxLbfBTXLusTRmjIz169JEmbdW8vnx8utCjlxNZbdg47AtH3GTVaPKc+Zk9YrgiYiQGNOHzdF8fJ5XS46D+KtiqFzrRR6htVhi/J/GJdak7EH18FF9xRl5I54QMXfSE91uv0Q+ybyRDVk86nFDxCnOYJnC7WN5VL34ynB0VLTGdWDADCVxcXgTQZNxLJUjND3+TqJSe991nu2i135iWzcmwLWfj59AJyKUVtXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by MW3PR11MB4764.namprd11.prod.outlook.com (2603:10b6:303:5a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.31; Fri, 16 Feb
 2024 12:16:45 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::64e6:ee24:79f8:efa]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::64e6:ee24:79f8:efa%4]) with mapi id 15.20.7292.029; Fri, 16 Feb 2024
 12:16:45 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240207013334.29606-4-ville.syrjala@linux.intel.com>
References: <20240207013334.29606-1-ville.syrjala@linux.intel.com>
 <20240207013334.29606-4-ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 3/4] drm/i915/cdclk: Remove the hardcoded divider from
 cdclk_compute_crawl_and_squash_midpoint()
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Fri, 16 Feb 2024 09:16:41 -0300
Message-ID: <170808580111.10917.5861102353295435557@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0094.namprd03.prod.outlook.com
 (2603:10b6:303:b7::9) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|MW3PR11MB4764:EE_
X-MS-Office365-Filtering-Correlation-Id: 097ddab1-c5be-4466-babc-08dc2ee92425
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XQ2B2BIy7E45NEgqxxcRCvj5StUUlBFNIR0XosOpJLOvxC//TaTyP6Hdc2znBY3qfpWNc/ij4nubI+rk2KKqUxkYlQz1PBow9aTLvpxcIPl1SB6j5VASx4HjTOuHaf0FlJca8gEBPdOJg8ET8KmskAM+RPFmYjEXmsD+BGbt//4GyORol+cZAZiXlNIVLXmCzcq6Ys7dORgkt3PiDNH7CKI+rrTPj6jPNk9+NBvWFoJG/yCR5fCuIr3xzqNDg6+l63YPZcOU2IH83s6oOmxE17nkmezaYfY606jvmMChC+IH/ypafEGEQ0jbTbcAnVacDr0nbDS4IIahO31N5qWHyPpfqZsz7wl53qJwTrK2jaE3uS0wDC35gXPwuRMJ1SwrDe3vomLw/cHdlnUH0W9WjqrvtvvP/0ybP38duoMZdWTxMVXEjZeiacUu3G/V/4Y3w+Zw2lLz494DzNzDRgl5lbYWpD8TimV9vy8VQEvjiPSwQkN8MC3rOGrPGspHjXh16pMIWDsDytysi2R/0LJ0avzboNAMoPJ4MhYdC6Hv4Q7QjBsPqCIiFJM8FHKqYuZGw8RLeknp9jFqkxJWiU8yzF/giCnO1hH6UCJA8YD9HiYUjZ2Vl/2bBGbOFB8fvRy+
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(376002)(366004)(346002)(136003)(396003)(230922051799003)(64100799003)(451199024)(186009)(1800799012)(86362001)(16122699003)(33716001)(8936002)(8676002)(82960400001)(66476007)(66556008)(66946007)(41300700001)(5660300002)(2906002)(38100700002)(44832011)(83380400001)(6666004)(316002)(478600001)(26005)(6506007)(9686003)(6512007)(6486002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SGlxY2FudDk4NnowRDJyd3A4cFdrZWNtR3NGbVVMbnc3TG5xNlVaTlBrMk1h?=
 =?utf-8?B?bCtsMEpLcXN3QUpmWlVzSHh4TDVqNkMwOEJCOTg3MUdtdUxaUjMzQkUzRGkr?=
 =?utf-8?B?eTgzNkNvT1E5RWRFTFRhYU5aRDdGUkJWVG45bHluajdVV291cHBQbG5oQUIx?=
 =?utf-8?B?YzFVQnJNYnlaaHZwZUs1aUJnTlpBY0tkckliUUxFS1ZTNUxqOTZ5b25wL1M2?=
 =?utf-8?B?dGNFQThqM3BoNXJ4MUxWTXp4cW1IUXNLTGRJU1hUdEtOVkNuTjViQng2L0lB?=
 =?utf-8?B?aWJVN0Z3Q3RPM3lWTWk5dGtvWVdUaHEwSVBELzZWejcydGYxbVFqTy9nTzRr?=
 =?utf-8?B?dFZWbkZzV01DK2NBeFQwbjRBWUlFU3QyWk04ak80UkVZU3FGSG1IQjJmMzlZ?=
 =?utf-8?B?TUtieDhONjFmT2ljUDZRaVRvb3pmeDhiR2dQcE9QeWxabThUUEE3dUt1YUtR?=
 =?utf-8?B?Y2FjQXdtQ0cvSnhvaHdGVXpWS2toSktDcTRhSlhBOFY3S21zWlNKeDNLVmg4?=
 =?utf-8?B?ajNRYTlXUnczV1B3bmxFRTJFbFVLWnBIVTNOTHV6VzJnUE5Lam1rd0k3SDVE?=
 =?utf-8?B?RUZRdUJYMmdrVm0zY3cyWDU3eW1DSGZpbm9sQkg5YzV6RmZzdkN3NG9ta1hH?=
 =?utf-8?B?NEQzRHh3ak5rQUkzMU5rWW9TZHB5aWtEVVpCQnVRVUJSSmJjazNxbTU2Uzlr?=
 =?utf-8?B?MG1MYVIzN1BoMnMyYi9SSFV5TzROUjRYU3hvTVVxTXY2dHFTZzJ1SHpHLzE3?=
 =?utf-8?B?eE1aaXVSVlpnVFg0MC95enYzUDJZQnc2bzlYdEE4c2VwV25KMWpmNitDTHRo?=
 =?utf-8?B?eWpsVld3QVVCTndlckFWRjRSWGtBa25od1ZwRFV4ZmozZENBUXRrUVF3aGF3?=
 =?utf-8?B?bTlJUkl6Qm5CYmF2UVdEbVVjeVNGa2tvNjdVZ2VzaDlIVXEyQ2pQMzg4L1hk?=
 =?utf-8?B?RGJGZXptTHhJS3R3cHBLVllId2lHbHIvdlpXSlMySTdsY3VJZG9kVHd4Rmlr?=
 =?utf-8?B?R2E5dndETlhWUGpTZ0FXUDFpaE9yeFhpWmI3ZkpaZFhUZDAwd0tBRlFUaUlP?=
 =?utf-8?B?RWltK3h2aWwxcHlScmlDNFNPYWpabTJwS2FYQUx4Zmt0TUxBbFZHdHFHaG8z?=
 =?utf-8?B?V0ZLSjFTcE1IRGRWbnhPNTZlYWIvRTlsUXVDZ0Q1dFZOYU9xblNyMlo3UXl3?=
 =?utf-8?B?YWFBVWI3NE9vWUhZeEhUbDhlS3VmM0lucGpvLzZsRHljYWw0YlNtMHFMMG1X?=
 =?utf-8?B?dHNzOGEyWjJxTmlVRllHQ1Y0dG8rdThzRmxMVnpIdDB3aGk4Y0FKYmFhWUtW?=
 =?utf-8?B?ZjZXbFowdWM0d1hMUFhJYTJtdmVzM0RqbkZwVVNNeFJCR05lSWxmOEZJSHkx?=
 =?utf-8?B?YzJpTDMra1ZpdlU1VkVIY3VTZUc1VVJCQ1d4d1dSaVpHS1VNVjljcXNJbWt6?=
 =?utf-8?B?dkNrZy9JSndvVElnNjlJZ2t6bE12czE1WVJORjZTcFA1Y0JUVDlpMzZQTHRF?=
 =?utf-8?B?ZlpsMjdHalM5aXI4TG8vTElMbTE4ekZWTEY0R1FqbGVjQWdMbjBRNUlFTVZ1?=
 =?utf-8?B?RHZqeHlyb1k1c2ZPTVlLVjVtaW41UVlJSTRhLzl3Ulh0aEVjZ2hqdTlZWHNs?=
 =?utf-8?B?bUcrZVJ6RFFIYS9pUTh6L3ZQZVI4TUdiNWtTcmJ6eXh1ajdHdCszUWRGSnow?=
 =?utf-8?B?NmlQeWRvTXB2L0Y4bS9OelNGaUJIUlg0dUxQNFBzNWYxT2NKTDNJVzBjeHlX?=
 =?utf-8?B?NW56U2tkM1pUVkV6N3ExUU02MFphWFBDUSs2K3Fwdjcyam50aGlmVlJBL0g5?=
 =?utf-8?B?RCtaL2ZIZitsbUJPZHdPUnZ0WFNTbDlIVm9zakRZZEpjSFA1TXZjNE5vL1ZR?=
 =?utf-8?B?U29DZW1JOU1ZeXk2T2N5dDNMRXp6eW5KRktGa1B5bHd4d3d4dEN3dy9mZ2VF?=
 =?utf-8?B?SXlHVnJ4Zkp3S3hMcm1RV0UveVBXRzY4bWFSZitMbVcvb283UE5IMGVMbUx1?=
 =?utf-8?B?N1V5VlNDT1lNdDVkVTJBSjVrTlFCSExFSVI2UFZXalRGN3FQVUVlM3F4LzRw?=
 =?utf-8?B?VnhYdFpYa2ZKdk1RbytsRE1uaXlOVVRGTTBiUGMrcjdpM05LZExGT21CdFU3?=
 =?utf-8?B?Wm14ODR6bURzV3JMcEZGeG1WQTduUURnSEZGSnhLR2RPYnlpUkdYWWo1TUd1?=
 =?utf-8?B?aVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 097ddab1-c5be-4466-babc-08dc2ee92425
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2024 12:16:45.0265 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BgyToveHMYEjz9NgFzMEf+8FkVKEaQzlrk/B/U5oJ3rNWU5nRTXOdtJ64dTupX+uhIv/7KGlIxXm9d5mYq1UZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4764
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

Quoting Ville Syrjala (2024-02-06 22:33:33-03:00)
>From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
>cdclk_compute_crawl_and_squash_midpoint() was still assuming
>that cd2x divider =3D=3D 1 (ie. full divider =3D=3D 2). Remove that
>assumption by computing the dividers properly.
>
>We'll also toss in a WARN in case the divider someone ends

s/someone/somehow/ ?

>up different between the old and new cdclk configs. That should
>never happen given we have div=3D=3D2 in all the cdclk table entries
>for the affected platforms.
>
>If in the future we need a config where the divider also needs
>to be changed then we likely need to add an extra step into the
>cdclk programming sequence to make sure things stay within
>legal limits throughout the process.
>
>Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_cdclk.c | 18 ++++++++++++++++--
> 1 file changed, 16 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/=
i915/display/intel_cdclk.c
>index a0013e37d53c..ca00586fdbc8 100644
>--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>@@ -1846,7 +1846,7 @@ static bool cdclk_compute_crawl_and_squash_midpoint(=
struct drm_i915_private *i91
>                                                     struct intel_cdclk_co=
nfig *mid_cdclk_config)
> {
>         u16 old_waveform, new_waveform, mid_waveform;
>-        int div =3D 2;
>+        int old_div, new_div, mid_div;
>=20
>         /* Return if PLL is in an unknown state, force a complete disable=
 and re-enable. */
>         if (cdclk_pll_is_unknown(old_cdclk_config->vco))
>@@ -1865,6 +1865,18 @@ static bool cdclk_compute_crawl_and_squash_midpoint=
(struct drm_i915_private *i91
>             old_waveform =3D=3D new_waveform)
>                 return false;
>=20
>+        old_div =3D cdclk_divider(old_cdclk_config->cdclk,
>+                                old_cdclk_config->vco, old_waveform);
>+        new_div =3D cdclk_divider(new_cdclk_config->cdclk,
>+                                new_cdclk_config->vco, new_waveform);
>+
>+        /*
>+         * Should not happen currently. We might need more midpoint
>+         * transitions if we need to also change the cd2x divider.
>+         */
>+        if (drm_WARN_ON(&i915->drm, old_div !=3D new_div))
>+                return false;
>+
>         *mid_cdclk_config =3D *new_cdclk_config;
>=20
>         /*
>@@ -1877,15 +1889,17 @@ static bool cdclk_compute_crawl_and_squash_midpoin=
t(struct drm_i915_private *i91
>=20
>         if (cdclk_squash_divider(new_waveform) > cdclk_squash_divider(old=
_waveform)) {
>                 mid_cdclk_config->vco =3D old_cdclk_config->vco;
>+                mid_div =3D old_div;
>                 mid_waveform =3D new_waveform;
>         } else {
>                 mid_cdclk_config->vco =3D new_cdclk_config->vco;
>+                mid_div =3D new_div;
>                 mid_waveform =3D old_waveform;
>         }
>=20
>         mid_cdclk_config->cdclk =3D DIV_ROUND_CLOSEST(cdclk_squash_divide=
r(mid_waveform) *
>                                                     mid_cdclk_config->vco=
,
>-                                                    cdclk_squash_len * di=
v);
>+                                                    cdclk_squash_len * mi=
d_div);
>=20
>         /* make sure the mid clock came out sane */
>=20
>--=20
>2.43.0
>
