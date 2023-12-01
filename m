Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 892BA80141E
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Dec 2023 21:13:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A485010E145;
	Fri,  1 Dec 2023 20:13:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E550510E145
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Dec 2023 20:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701461628; x=1732997628;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=PBKS/VkyIOc2iAlXwLLjth4L4ObP1+ay4kVHaePUr0M=;
 b=CLIurycuY1ewNKV/7Zn2QMeX9UI7wwaWIkac+MTYxBVbWXDkJWGMcP5s
 CiHBkv9uEPzJYbrwD1bDHbWBtzmwgOmVSmr0ikwnrQTAi9DGoFAellB47
 aR4rGq1x94Ows2iDLAyUzrea8Cn2hkBdJsGwQUku1/a+fmZkbXQp3aL1f
 Htntrg5mxBFOVQOF7zUYvl1r03dlP4ETe++PT8IkoP0NUVSKrXU4bBtML
 b97wAFvwn3NJDoAPkKbE3afcRCNp3BUIVZ1zl4pDmFWqo9+6vjl+QLo8P
 SnCBxLw6R5tCwReQBDaPtPq26ScoFtaHOg1WMWoPzM2CiZqAc3QA6Yk6x A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="428256"
X-IronPort-AV: E=Sophos;i="6.04,242,1695711600"; 
   d="scan'208";a="428256"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2023 12:13:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="913682922"
X-IronPort-AV: E=Sophos;i="6.04,242,1695711600"; d="scan'208";a="913682922"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Dec 2023 12:13:46 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 1 Dec 2023 12:13:45 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 1 Dec 2023 12:13:45 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 1 Dec 2023 12:13:45 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 1 Dec 2023 12:13:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cul/Y3F7MESoOm/DdjMaCoIvX90jtE/7gzCwZQWqq+U81Gplm0Dkvp23BrMJuY7LnxOrpgE2hQ73UEaCX7kNrWgpWSRrDwzqM7tRtS40azwYgwxM1LHHI3ACq/7RAON1loykwi95aTzboxrH8psEmI1wxCiJ17gSARZgSIoSOqzfY7awjFrtcfm9s+HsnO4LRRFMw/sphWLDkuptnTvpKpHEyjUFIvigdmi7Lr05Y49hbQ0s2hZ/OTg93KuJIgxJrCgOYFCYvf1R3FJgDEtTgawkZT5VdQseb0xSIZ3U/q5/leq+W8REevoayspbLABsvjZJb9A+B9D8bb66RVAg3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pHOPd2a0se72kVJhog1xfnocTg6Lm00JjEyxp0e+zlI=;
 b=cio+Eh+wiRHgDcWwbG25B1dDVuLebRzscqAKsPHFXpAYSi6BVJbvCIAU7RNMhOd5IkDirXdyUKrpWhW2wBgZxYfbUM2hif3JPNg6vTqDavb25QS0guCHCPP+7Kv0yyc2LIyPzPoGMfjkvFm/KYUz20K+7KDGEk9qB0Gz8+yQhVc4aDppNnV0IhQivVK+hoHfYJGEuMatQoq+1VnI+MMo3Q38csqWVlokNRBeJoGiNBZhl1nOPhT/3esO5a0Vazglup7InTbWqt/88Pqk98S1IsAh9rPLn9Qk8q75czdurSUqroIiZleIRV8z47gCrQ4Uux8j0aJE4jihg/L7d3LQww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by CY8PR11MB7136.namprd11.prod.outlook.com (2603:10b6:930:60::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.29; Fri, 1 Dec
 2023 20:13:43 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::3964:7725:b677:28c6]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::3964:7725:b677:28c6%7]) with mapi id 15.20.7046.028; Fri, 1 Dec 2023
 20:13:42 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231128115138.13238-4-ville.syrjala@linux.intel.com>
References: <20231128115138.13238-1-ville.syrjala@linux.intel.com>
 <20231128115138.13238-4-ville.syrjala@linux.intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Fri, 1 Dec 2023 17:13:38 -0300
Message-ID: <170146161860.74196.15128036322042431763@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR01CA0049.prod.exchangelabs.com (2603:10b6:a03:94::26)
 To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|CY8PR11MB7136:EE_
X-MS-Office365-Filtering-Correlation-Id: 79919be8-7a2c-4ce4-867b-08dbf2aa03da
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +RGxWq5B1HXxcHXkqTptJHZ+vblMpYxdfm/5GiNZZRLYk4m+ORgD8MEON05ncdWgkjDIpwjYKKZ1xCLV62JPDwQPd0kRzyh+SGs41Tk6wPRxxYwjWeNzBQVM9Zr4nq+Oan+CeRxtIuMBZVgj6iyP7gD4GlHjZqwf7YtI1aaMJBmpBZ5+ZkxhwSsrz1vewL/H1zeYDb4gtB7CkjPJnPZrW2T1OHfML6hcQdnIk3m+XqL4Wk7QSrUFzmGOgyS71kldOf2iNFyAOgCiDRkDuDqrg4id+LQvI2oB5funVKkNCEX/VBN7+Ct1VjJph9V9agohkTh3X09TS1PXWxkqSXyaH+7iN+en7rKRQeOB9sxjjLQ5/jDdB6CJTCMiLnPgtUXFY50ZR0W5CHkBw9z025QWhu96VWE+MAXpaKrLARU+1FLUL1n03xpSK6OEDJ3ZnpmHvSpWAFeSnDAipEcu8RRGD6dZGz2Y1zoNKD1aQFhTbsxe7jzjPx9fA4TYmKTeVdcRe7sGryJueIxrkGhqIDVePGu545l/yJig94A4S9CWzXiQnkU81VZm6Oy4/ZIeRlxa
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(346002)(366004)(136003)(396003)(376002)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(8676002)(8936002)(6666004)(6512007)(6506007)(66556008)(66946007)(478600001)(6486002)(316002)(9686003)(33716001)(41300700001)(38100700002)(4001150100001)(86362001)(44832011)(2906002)(66476007)(5660300002)(26005)(83380400001)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c3JVaGZJSlA2UTIxRjZSNTV0Z2FaR3JNWE9GSHNRWW9BK0xFYTl2ZjZDMngx?=
 =?utf-8?B?Zy9WejVmRUFFTjhERUpFTUZqS1h0SEhjWDlzY2FOK3AxQUFBenZQQzBtS0tD?=
 =?utf-8?B?azZPazZNb085WW1QMEQzZGtpT0FJNVRibkk4ajRVVmJTWkVON3RlalJpRXlB?=
 =?utf-8?B?TkZjWTI5MzJUaWgyeVoxeGZxUEhrNHhsWG1Dai9aZEZGVU5icE5YQkRHTU1S?=
 =?utf-8?B?c0NJOTlzUXI4Yk1wcTZPaWFGQjhKU1pleW9sN1Q3NjM1WU1iTnpkTGtmRHl5?=
 =?utf-8?B?OVVFYzhwbHphY25iazU4LzZFNG8vSmpZWTk4cUMwMWVkVk16VmdidUFRTFhW?=
 =?utf-8?B?eTF2YzZlblpETUlmbllWRHBZUW1RdHN4NmRXeDdZQ0h6RnJERXVoTmZVejNx?=
 =?utf-8?B?UWRXL25tdDZKbXRUVVJDa3VVUDBTZGhLY1ZKdzhCQ1BuSjNzNkhYdjlGYXBK?=
 =?utf-8?B?Nm1vd2MrSU00RklEa01sYU9GWEpSenBXSlZCYk5LOGtpTExHOG1oWWpSTGVu?=
 =?utf-8?B?N3Nod1I5RXR6NXZtZUZ6d3pmdEhZOTFrMEhIMFhmZWJuQVBpOWV1MmhmemN0?=
 =?utf-8?B?TlprTVlwVmN6MHh3U2xXLzNvc01wT095elJVTE8vSWFLSkFGUk5hbTYrZWVU?=
 =?utf-8?B?U0tCQVNDRlptV3dQS09PRGpQSTRXUm40N3RtVE1WN004N29tallpWmJobHRz?=
 =?utf-8?B?T2dVSDBhOThXemxtUURPM0lGYVNTQlJyUktzTjdhY3VROXVCWlNtTkQzSTdQ?=
 =?utf-8?B?cUhFSkE3UVA4YmxUVzhYZUpNSHcwTVdxbUM5Z2xKNEdwRXpKSnRYQW1sV0RC?=
 =?utf-8?B?QXd0REpWTE5EbW44VDhrTytFK0dZczIzSHFBSUJRUGtIZnc4QThteFgvMnVy?=
 =?utf-8?B?enpJM1NGMENOazdkMisyZENWV2RJNW56OWJFZllzTkFROGxHVEVGNlhnN2g1?=
 =?utf-8?B?L0t5dnFJRThnMTY3WTRsZ1BjV1BJNHE5U0RNaVZDcE5TYWJrMVQ0VllOTHRy?=
 =?utf-8?B?U2swdG1NTlpML0Vrd0pSUlRobWNZeE1OTEZxeXlhZ04vT21DOUtmUjNGSy83?=
 =?utf-8?B?RnJod1k3dTdwMmRZTWZhNG9KQ0ZYZngvY1hCaGZsVUhtSnpMUC8vZjA4cXpU?=
 =?utf-8?B?bTFrUUVnTEtDR0c3UXoxWEdQQ3R3NUxuMzgyT1lLTjArRFE4TW9RU2RGR3dF?=
 =?utf-8?B?dU9EbkpqQkdlK1Fpc0dWSENYQmxURndvWFR6NjlZa3ZlNG5zRGlKTDEyKzZt?=
 =?utf-8?B?UkovMmZEeWdFeFE5N2I0TjdhR2VsWnRSUzgxYVYvaTU4OGpzOFcyZ3pCSkUv?=
 =?utf-8?B?T0R1bUJFR3FJT01Sa2NvVzdNR3pnV3duR2VuS281Q21mL0s3RkxjcFYvMTcw?=
 =?utf-8?B?V2U3TG9NdkNEYnJHekx4MStnWjBOR25YRDRuMkZ0cXFSM1BEeHZoUkFyZ2Vz?=
 =?utf-8?B?STQ3NC8zanJDdVZCZ2JWOUVMbXlaMld2YW5nUE91K3lKVVhYUG5PVzdUODlQ?=
 =?utf-8?B?RmJmbjFqbzh2ZXkrM0U0OFN1WFZyYTdlem5iMksvMVhwL2ZhdjFQMzZMMS80?=
 =?utf-8?B?d1JMditEeGtCSnhvVlpUOWd5WS9FVmx3RzVOZmcyQWp5c0VPRlJvUGpKWlVw?=
 =?utf-8?B?VmNJbVZLOW1oTENXN3gxRUJnYy8yOE1PYkhpbVlaS2lqVTQ2dEFEdllNNDdr?=
 =?utf-8?B?YXZxb0dhWEF3NUZoMFFZYU5NSXdaaFBYZmMwT1FTT0ZJU0x3MlRrcEtQVlEz?=
 =?utf-8?B?UEowajdZSEZqZ0dHaEc2eHFqdGNFaU1UOVRLWFIwOHh2K1QwYXVFL1k0R2xG?=
 =?utf-8?B?aitxSlAvaE01RmJ6WlBacExNRTcrMkNwdnNTeHVvdkpJM3h6ODc4eDJMbXZI?=
 =?utf-8?B?bnA1dUtBZWhwWmxrbDdudHZlckt0aldvY0ZnMGg0UHY1Nm9jaTdXZlFJQWND?=
 =?utf-8?B?ZVVSR0ZWTC9JVU9qT0pHSVdOMFdkblNId1kxaXhEbXdtYlJGTjZlL2czeUFK?=
 =?utf-8?B?Sm5OQllvZkN2c1lPZ2dCbm9vT3JxNkg2RGx3SmRWQ1Z6eUNIWGgrWE9YODZt?=
 =?utf-8?B?ejkvNGpIdC9WZlBKT21DV1QvSTQrRTZTdGxTVU9CK1JaRzNlSHhXMTFJMms1?=
 =?utf-8?B?OXcwN1psdFNhdXhudXVLWHY3MkJWVzViUERDYjFuKzBwdkNQTUEvaGNSbWpW?=
 =?utf-8?B?cXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 79919be8-7a2c-4ce4-867b-08dbf2aa03da
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2023 20:13:42.7165 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9gxc2F65IolJFHLvTO4s7NSeVKffVqTmMdQ6DvL8MKuTdfwzlLO7BEa9A489/I+BQjJ1lptYw6U6gfFIYr8wxw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7136
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/8] drm/i915/cdclk: Remove the assumption
 that cd2x div==2 when using squashing
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

Quoting Ville Syrjala (2023-11-28 08:51:33-03:00)
>From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
>Currently we have a hardcoded assumption that the cd2x divider
>is always 2 when squahsing is used.

It seems the code was actually making the assumption that the
divider is always 1. With the current code, when squashing is used, we
have that bxt_cdclk_cd2x_div_sel(dev_priv, clock, vco) is equivalent to
bxt_cdclk_cd2x_div_sel(dev_priv, vco / 2, vco), meaning that the
returned value will always be BXT_CDCLK_CD2X_DIV_SEL_1.

> While that is true for all
>current platforms it might not hold in the future. So eliminate

Not sure about the other platforms, but for MTL, I have checked the
BSpec table and also did some calculations by hand, and it seems like
the cd2x divider is actually always 1.

Unless I'm missing something in my analysis above, I believe s/2/1/ in
the commit message is necessary. With that,

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>the assumption and calculate the correct divider from the other
>parameters.
>
>Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>---
> drivers/gpu/drm/i915/display/intel_cdclk.c | 6 ++----
> 1 file changed, 2 insertions(+), 4 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/=
i915/display/intel_cdclk.c
>index 87d5e5b67c4e..d45071675629 100644
>--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>@@ -1899,10 +1899,8 @@ static void _bxt_set_cdclk(struct drm_i915_private =
*dev_priv,
>=20
>         waveform =3D cdclk_squash_waveform(dev_priv, cdclk);
>=20
>-        if (waveform)
>-                clock =3D vco / 2;
>-        else
>-                clock =3D cdclk;
>+        clock =3D DIV_ROUND_CLOSEST(cdclk * cdclk_squash_len,
>+                                  cdclk_squash_divider(waveform));

Nit: maybe take the opportunity to rename "clock" to "unsquashed" for
clarity?

>=20
>         if (HAS_CDCLK_SQUASH(dev_priv))
>                 dg2_cdclk_squash_program(dev_priv, waveform);
>--=20
>2.41.0
>
