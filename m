Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48218C9F504
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Dec 2025 15:38:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA0B010E77A;
	Wed,  3 Dec 2025 14:38:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UpgsYuGL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D28010E77A;
 Wed,  3 Dec 2025 14:38:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764772685; x=1796308685;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=vEeKRWgosG07VUP96N511xjoE1dQyEQsFcOiqyp8QSE=;
 b=UpgsYuGLZd7AuR8bbgB/M32uUrI2reqSCQTJ7rQYt3fnwHGNNbLuIVMK
 D6XV51/nz89FNAd8A4HAiHDWoECGiviyLfNcAst6hyErFSFo0bv/i6OY6
 FRfeLbfE+CGAizF+iMEB3TbGXgeVMLDb6Qv7IDr9yqYNHvJnE6Weg13NX
 2Q3QAptrTMC4g7IyBkZDfQI9EFOeW7lqNC1KuTMd+2C3GZSAkCUNb3k+I
 e2UDjrtSAHhEEDIB3rFoh95Vdq6gB021R3nOUhlI0ZZ6Fp+NR04Q6tvpZ
 gCeKnXeyTyk2hUe2wSVtAPy2CDSimgy15v9NCdym014iw5sQgRv0xmnzI g==;
X-CSE-ConnectionGUID: nI0KwA2gS/q/tcnqpJ+TDA==
X-CSE-MsgGUID: AV8ze3eCTPufgxAXMi35KQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="66653489"
X-IronPort-AV: E=Sophos;i="6.20,246,1758610800"; d="scan'208";a="66653489"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 06:38:04 -0800
X-CSE-ConnectionGUID: L7g7ZRghTOmFF9d8xl9p0A==
X-CSE-MsgGUID: lq3px4QOQRy1OXfcRH7EDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,246,1758610800"; d="scan'208";a="199164193"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 06:38:04 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 3 Dec 2025 06:38:03 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 3 Dec 2025 06:38:03 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.38) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 3 Dec 2025 06:38:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BO5BXLn0iCPlh1U/X9Dos4XAvIZCSpTpEXH999AQgkLR1EA2rW+PQyBLp7PwafyD0PZXxt1R1yxoOM+DVA4jhX2Z+LClJhnGjW9uksiXhcQQMVSQgKheuFTxpcQ3cUwZ9vm1/+gA9KbhG8sLgoxeeQRVDvoQV2jsSn1MG28sccXGzI2eiN4m4oS3jj8gtkPf1YIyfCicNMLhnScYDUEP7P0pmF6ZC1XUSEDrKWhftNtIAFI5OAc2ZNtUZ9sU3/3zeJnuxfF0zdXzyOmEfjGooJhx5kBw08hhLyrTl/9FCFhGzKwzJUpbHE4Nsm2hAM2v5lRnAi97102IwMyoimzROA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lGuefbSD8iE6bncqgxiDDq0Y3omXQXv0xYJ12gjyMmI=;
 b=yLUUxm7iKpeso0d/plcOXpGNpynd9+OGjjO6YqU31N4UYxo98tL7dz89IEjAf0z3zcK6VE2lnDKo+IS+JfZhky1bA1j4ZO+iL5Uwt5VkAldN8SZDpzOptv7XToBnZueujINf9evcCfium12ukEyOS2qXinvFbM3KKuOKbcmK5CQ/CcGsCd2eLaBgSJkdFow0j+gyHZ43yvvAVNWiJFFatOSMTtfvoaLMGHCGaY39kz4yR1hxtGkHmGj9+SXfTJye95MNQ55U9bP5A76PRm3QHDoWgD7SfqK6fwYXtUnGqS7Nj/wVaWmeaK6w/xxEdZzsMsntFhxs3u/nv5pQn4SsPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY8PR11MB7059.namprd11.prod.outlook.com (2603:10b6:930:51::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.9; Wed, 3 Dec
 2025 14:37:59 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Wed, 3 Dec 2025
 14:37:59 +0000
Date: Wed, 3 Dec 2025 16:37:54 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jouni Hogander <jouni.hogander@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 5/8] drm/i915/psr: Clear pr_dpcd as well on disconnect
Message-ID: <aTBLQkd57Nz4VE7s@ideak-desk>
References: <20251121111655.164830-1-jouni.hogander@intel.com>
 <20251121111655.164830-6-jouni.hogander@intel.com>
 <aS1zoYALyiaUezDI@ideak-desk>
 <04897dced22b4e0600f952354b998f32cfd9f9b1.camel@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <04897dced22b4e0600f952354b998f32cfd9f9b1.camel@intel.com>
X-ClientProxiedBy: LO4P123CA0243.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1a7::14) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY8PR11MB7059:EE_
X-MS-Office365-Filtering-Correlation-Id: 0c5a5a06-b367-4f0e-4c7d-08de32798e82
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|376014|10070799003|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?t2a5Hl2WZZYTNqiGtOaGT4dyRUNGLuTVs8wVOd+8TubMRgMlsJLpfNeCiS?=
 =?iso-8859-1?Q?7imyopR+FHKK1DaXs3d5wyUIE+64QsZwKcJVT6m+SevGS/SnZG3WECS1IY?=
 =?iso-8859-1?Q?jfwygU/ulgya9Jd9MpPjwxlACjKDlGbuIyBBiYSfqepAKPHPTgQhBId83s?=
 =?iso-8859-1?Q?7bAdLR/5VCadutKK2gP1so08OmjMjw42BrpmryqSkLzCTXjg7RQgHSRchD?=
 =?iso-8859-1?Q?92UMK/8fHVERJYcPWFln4bw9R6sxGgSzcOVVhINg2yIg/wDPr5HPgg0Esk?=
 =?iso-8859-1?Q?UoqS6M0VXw2fZZ/BI0CI7bRAZlHfIYAQQiypOa77TSMERVnx1PTuvJP3go?=
 =?iso-8859-1?Q?fuqzQKAbwdGDrY1d1oRHDenoXIoivpqGWNmc/nLJromziMf5uH4IANuOAc?=
 =?iso-8859-1?Q?yUkiOQsBNjLd286skHZe19jEcTEz532Ad3N9lGD5KW8Wj5pCV32cKyIQmH?=
 =?iso-8859-1?Q?FM1zXnD+jpCt1fV+axTgkpJpd93DA4OZ2GJkysksDGVEiNeD4TAbHDT8BK?=
 =?iso-8859-1?Q?SemhpHkZMXBXnbQP0EulREHLFDqssHRNtN8Ys5YeAfxnYhYtBeyuOL3T08?=
 =?iso-8859-1?Q?GhTB5q9kFACLtzAGhGzQAhQvtoGbcNIJ3krxRypJO+mB1xHEqoTQzuCnTK?=
 =?iso-8859-1?Q?Gi2HlK6HUeWmMeOvWrlY7BssryxTlt5GtMizgsuuRzVb9Vy46tkqraYg8y?=
 =?iso-8859-1?Q?CO5EE3Rt10NFpU3sd5fb76MUP2GPEO2l2ISPpy4QSi3R9HTwkyDGAi65uD?=
 =?iso-8859-1?Q?kD4oL9xcFcz9lPsuPwgVQgPDbzlbyp+gFjQnlHfzH5rieG5UbNuU1+VFi9?=
 =?iso-8859-1?Q?xdVfey+OZaXvc7m7BnxuFFQqGapy8dw58X5q3p+m5BHf515T/FVCTA/MQz?=
 =?iso-8859-1?Q?tWd3Si7hUqyArf5uAywQV4xUF58dzPBLYIbXwBGLc5D4nY15AeiD08QFaZ?=
 =?iso-8859-1?Q?WQZp/Q/gBtg1GJ53R8GULoFPDQKukQQDMFmbTYdaFHXauDbfEjBjFBIwD3?=
 =?iso-8859-1?Q?Du2SNhpNMPPinntwwE19geWQIsEffHhAjMLiXosxO2DbwRhPPosAvXvpnG?=
 =?iso-8859-1?Q?08/5XpHsyOHfVYGZmYjVKMoUX7T1NlHAJI1j4gZe46h8KCERqrojE4SEBW?=
 =?iso-8859-1?Q?RopNpCPObxxh+uFm6GNV2RSywrxrPZCd17kCGWNjv7fCCMQSfUrDRWVvTf?=
 =?iso-8859-1?Q?3Pc3j1ciAUT1qq/68W3U+aQhlG3VlQw9Ax4HL05QnSLTHuu37WbaeTKKZo?=
 =?iso-8859-1?Q?IZvRaeIay82C9LiL6ulJKcxkfFHpYGKsRchwxedw87w9y8DbZeRF7z4ujQ?=
 =?iso-8859-1?Q?0MKk7tzWru49Yuyxk4HeAr/zn97v+GnRzJOk8OQHmSRtz15wuGHwUImNAD?=
 =?iso-8859-1?Q?zJlsDk0rGtxucGfERn7y+VKEgY8a2F9TSfbr0bHe0BvcBokLr9b9KjHPZ+?=
 =?iso-8859-1?Q?w2x9sNA7IqGYMQ51+jJjGcZx6RVS3AnrOrl9MyUx7yicwk3IhfXnnhi0Q/?=
 =?iso-8859-1?Q?QbKlRY0hWG+Yyb/l0FQchR?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(10070799003)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?zOpFqYzwpgldb6BW9VHgoFYuI97GuBoXhXfloTAp0JtlGBHNND2oQ1hdGa?=
 =?iso-8859-1?Q?WaQ5V6rE1/FkSc+ZgmtNcvVsnuG0dr5hfUjILmjN2esSDL/HOkO8kYNjSd?=
 =?iso-8859-1?Q?Rw2Nt5S7vEfn/cS26rfiee9Ggt+Q4HfyMVyNrSL1rtE3fYBmd8KnuzPK8G?=
 =?iso-8859-1?Q?j51YRdCmfXc/SXsUaHN9uyvosZkMXii6KhQdPclPdjOvsyO6+/4h3lXhV4?=
 =?iso-8859-1?Q?GdQzCm04xs/VSXB5Qck03shhj/hn6JM+L8wZTNF4YEWxco939yOmDD7Dqh?=
 =?iso-8859-1?Q?lbL+P/HnpzdTov6/Bq9VKCuleTt8Hb3DLy2ulMEw8b6tHEUcKctX48c3vO?=
 =?iso-8859-1?Q?1GTk+9riq7PM6FuCu/GOX/ZZ2h69YAIy808M9Jm04fsQmTj6qsfN+TYsqc?=
 =?iso-8859-1?Q?Dz9xUdGUwNDuyIjMZCif/21kSeC9FwZIYs/3olbUtk7xOUSF/Pb4l0OMny?=
 =?iso-8859-1?Q?m+P79mseO3OHVha4HdirYYnqMYafKGzY4gjse/fEYikbkxqZGMO9eoN4R3?=
 =?iso-8859-1?Q?8aM1BfFgPfq9xb7ttumgnPPxNjaLmUFV3OBzlMlzs7KVt/pI0TzGklRd6H?=
 =?iso-8859-1?Q?jDpegynVaxBN4+P94vSUvVT82zFPChQ8baSI0b0H67oE6StKE/fhLs5pN9?=
 =?iso-8859-1?Q?oRVGOxx/Hxpqzc9G+7Y9j/tgSqV1pX77doS0HsGyR+1bHbv1gDm5yLiY5j?=
 =?iso-8859-1?Q?Wd1M9kJNp3eQ0gNHrmBMSjulQFvQTJn3vY9cy1ArdS9nzwbpzphC3NyFwC?=
 =?iso-8859-1?Q?vLOdNx7CKS3/YsC8RCbLhznpS51MJwNM3yjlXd8KXzEfe/8X8k0OzaaQNI?=
 =?iso-8859-1?Q?1QYxrzkCR/CettO10S4EMt0HCcMbaNN6tEicLIEnSkhRmqjyhY9kV3o1H5?=
 =?iso-8859-1?Q?CztwPbcNHrBgZnYExtH+LgDpGxBqL/LuxoDLpND4/v2HIWtfpC/PfR79SE?=
 =?iso-8859-1?Q?wPUOTcvFQj86msvFoBfTvpc9lkH2e3B8hvdyCN0/2Id1zx8lr+t9vRzmF8?=
 =?iso-8859-1?Q?lU1NESDNbdUi46m2ktYLjGZ0cNGnz6xFnj02zlmYpDj7hNTY+x3K/VJMyr?=
 =?iso-8859-1?Q?LQgKjLS1ksKQsK/80U5ocN3pIcpHkypbHO3UbpOoxKBaFaYFX2ekV1cWgI?=
 =?iso-8859-1?Q?/HVnDkfhn03vbjmiqegtSKs2n5qPhkmzjSDH/AtVrLgVxQv+SXiqyEz4Qr?=
 =?iso-8859-1?Q?rR0sKtny8zdjhaDck4EwzapYHZGjK4QQK8qSRpF7UNH9EseSKhQqyNCYvF?=
 =?iso-8859-1?Q?wnRL68lkMGZoJQTwMWSQhsPaX8M0u68b19jh5i+7XhvEUA5rhoM+Fu/pM6?=
 =?iso-8859-1?Q?FeTLaLvyGbV3ylTJaD2vB4HJgHM6oO4sFwI8BZ0tz/BNQq9H1PT8Sv4zAg?=
 =?iso-8859-1?Q?kJOfRaJQXp1XfSG5Y5ZhSfG4b8giu8sSR5DpBuv82mLQMvaEGPWf7zRIAI?=
 =?iso-8859-1?Q?n4cnJNDCAaIPMZy/rKya67e8UxftVh5LOJMJ+Kw9HmdKB0O5cxvyCfU6vZ?=
 =?iso-8859-1?Q?oqVEIz5kQN2ShpmP9owdY3v/VkkW592xlwWqs69TDSU38QUoiqLBg0ht5S?=
 =?iso-8859-1?Q?HmRRxbJ1h5FsflSTN6Xnxj02ZOR0O6swXQDA5hrEC+i7eu30FGapf0PN5y?=
 =?iso-8859-1?Q?s0dHQcIzKaZcmsj+q3Ll7J5o12v4TrZ7uJv7+3Xr4cXdGu+ULgA7a154qF?=
 =?iso-8859-1?Q?OfhA42cDeOgu6Ttfydnz3J+stpNgzuAmj7HKaNcP?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c5a5a06-b367-4f0e-4c7d-08de32798e82
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Dec 2025 14:37:59.8040 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xGSumrCxVQbMM4ZVmuZXVGLb1yuYDcsQDvBF7OKVGLo75WAQsxDzqIFkHCeZ1WwX9yCPWQ1Pgv0/lRSOpWyscg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7059
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 01, 2025 at 01:23:41PM +0200, Jouni Hogander wrote:
> On Mon, 2025-12-01 at 12:53 +0200, Imre Deak wrote:
> > On Fri, Nov 21, 2025 at 01:16:52PM +0200, Jouni Högander wrote:
> > > Currently we are leaving pr_dpcd containing Panel Replay capability
> > > DPCD registers as it is on disconnect. Clear it as well on disconnect.
> > > 
> > > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp.c | 1 +
> > >  1 file changed, 1 insertion(+)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index 62808cd35f5f2..7195c408d93ab 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -6050,6 +6050,7 @@ intel_dp_detect(struct drm_connector *_connector,
> > >  	if (status == connector_status_disconnected) {
> > >  		intel_dp_test_reset(intel_dp);
> > >  		memset(connector->dp.dsc_dpcd, 0, sizeof(connector->dp.dsc_dpcd));
> > > +		memset(connector->dp.pr_dpcd, 0, sizeof(connector->dp.pr_dpcd));
> > 
> > What about psr_dpcd?
> 
> PSR is only for eDP and can't be disconnected.

Ok. Panel Replay used on non-eDP has also Selective Update for instance,
but that has separate PR specific capability registers. The same is true
I presume for any other functionality that could be used both on PSR2
and PR.

It's still a bit strange that intel_dp_detect() -> intel_psr_init_dpcd()
-> _psr_init_dpcd() reads psr_dpcd (aka dp.psr_caps.dpcd after your
patch) for non-eDP as well. Even though the values should not be used
anywhere based on the above, I'd still avoid explicitly reading them out
for non-eDP (only as a follow-up imo, no need to change this now).

> > All these resetting of the caps cause a problem if the connector
> > needs to be modeset after the sink is disconnected (since then the
> > state computation for the connector will fail seeing these caps
> > being reset). Instead the caps should be kept intact here,
> > resetting/reiniting them only when a new sink is connected. Since
> > this is a pre-existing issue, could you add for now a corrsponding
> > FIXME: comment in this patch?
> 
> Thank you for pointing this out. I will add the FIXME.
> 
> BR,
> 
> Jouni Högander
> 
> > 
> > >  		intel_dp->psr.sink_panel_replay_support = false;
> > >  		intel_dp->psr.sink_panel_replay_su_support = false;
> > >  		intel_dp->psr.sink_panel_replay_dsc_support =
> > > -- 
> > > 2.43.0
