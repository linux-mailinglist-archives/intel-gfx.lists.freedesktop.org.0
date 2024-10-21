Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E17C49A90A4
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 22:09:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1BC310E594;
	Mon, 21 Oct 2024 20:09:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V3OUfdcH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD6A210E592;
 Mon, 21 Oct 2024 20:09:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729541353; x=1761077353;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=3n2LddTtC4zMX8TeiUsraH0e7SXOImTWIaJHgYa2Ppw=;
 b=V3OUfdcHFB1haczdVFOi5dReLUKkTq2xAKz42FoOJFj/rWDSJUGhGSnW
 tTUs2xKOYe92FadzeuV+YQGHZ5ZeuAu1FjM1cVyClnEvPtV8L1XY3P0rM
 LizE6/Ua6gfuxKlLE9NCgcyaV/BIcLjNznQxNuQOsBZCeULeq0IUDMkls
 46EyJAi61eLu4uo4pQULwxwRvt7cf/8lAjZEGqFtLiF6ml4IpxbINgsnW
 KGiZ/ApMS0QKOFNpaUln+1fmWzhNz2V8GoChObALhB/BjdAXZr63FCHep
 routy3x5716mATq5lE7qrAGyh2LtmepoOC7f152uMbqbQD3JwfjI/k3tZ Q==;
X-CSE-ConnectionGUID: KkOF3fxvRJ6zghq2hg+6Sg==
X-CSE-MsgGUID: UrveP8JrTVe66f4ggazf0Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="39586482"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="39586482"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 13:09:06 -0700
X-CSE-ConnectionGUID: 31rh3Y+fQICmqtDN5jDWwQ==
X-CSE-MsgGUID: q688ObI9TlCGwsk2eqcAGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="84445983"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Oct 2024 13:09:04 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 21 Oct 2024 13:09:03 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 21 Oct 2024 13:09:03 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 21 Oct 2024 13:09:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KGoZX6QMwo3xwTy8hXPG3xBH1D4C7fEBfjDrUA7moo1a7upEeJRPptQ0fTuVzz4q5U+bpojphXe8xyzhAcsJM8r64TQT5DzWGz3PdxMwY7MNu0or3ywYWfWGkeaxru/R8x2RGxRvqvcEPLuRqZ/IrGpJ5ZYKmAf7wR/0LVpVnRPE8Ynjc/YwUITXFrzADnG7TtQuLEZ42NNtMk16OQAXL9jO6SJxiUXWys94nv33MW8ISth6H8BhiV5OY6IeZPoOMXmmPhBVa0WLkMFP8G+iQ3M3P4Y21BSzQGlNc8n4vqPCcR2REI+jrL+oHPDgZShlFWpX9ezE/HNDfrIODjCbQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JbxvP9NPWcfhe4DKuXrozdQP5IgcFWdg01o5waGF4io=;
 b=V5qflxuiqHu9gIKzwDUIH61dMzdWIuXnsXBUOAVqPQctTv5iT0eLjMKms1tQvaYb3MojCO8O9G4ZLeNVzt+YJJMLH1XlFlZlskdKwFMmStihMLNjUspB++YqaNgYAB4a2mYBd3weenq7UPi1gOuvZvtb/jD9zd1FGsW9HT8vb87rtx6M2V+JwiuwhfCrmzqGAD7XeCVfvRnNRJPQ+zMgZwnixXvhF315o6pYEn4dmQppeYgijYs8ijNWkqQIwREiTpCndY5xl+g1V/CSvJwV5oGG5sE8+Mi71dGKSennKkLsYNKkxxoY7wdwEBSZUnWgZpQ50cq4PlElEkroNqYeKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by SJ2PR11MB8324.namprd11.prod.outlook.com (2603:10b6:a03:538::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.20; Mon, 21 Oct
 2024 20:09:00 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb%3]) with mapi id 15.20.8069.027; Mon, 21 Oct 2024
 20:09:00 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/xe2lpd: Update C20 HDMI TMDS algorithm to
 include tx_misc
Thread-Topic: [PATCH] drm/i915/xe2lpd: Update C20 HDMI TMDS algorithm to
 include tx_misc
Thread-Index: AQHbINbmx/6/5KASHkK/wq9K8UN5krKRpuaw
Date: Mon, 21 Oct 2024 20:09:00 +0000
Message-ID: <IA1PR11MB6266E9F7B9D6BA9D1B812EC3E2432@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20241017205444.102979-2-gustavo.sousa@intel.com>
In-Reply-To: <20241017205444.102979-2-gustavo.sousa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|SJ2PR11MB8324:EE_
x-ms-office365-filtering-correlation-id: 20a2d1ba-e822-4c62-af25-08dcf20c33ec
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?lP0GekOVFhqUemlKaw9WBPj7r8C5y0VoCecsJtw9TpynDiX7Pt2LdD8OOKH5?=
 =?us-ascii?Q?rjrKTDYPrPia3HVh//hi6Uf5H/wAeaScTNhB8Lxy2TCKcJWz3SKFmTZ0mej4?=
 =?us-ascii?Q?6it90Gee11z7Gwglm9RyP2pYJfb06Xc4hoAskuCsmjcP1PCJunhDxesSAnSc?=
 =?us-ascii?Q?n0oUv5rVQir9sg8Z30rn5bm6D98BtqZASQr600oLMJEqGjcEF+XTFOJvKg2s?=
 =?us-ascii?Q?wUBJyhiPiXS2205cT1X3wJQz9FSJPSR7KYFdu5aFK4bMRn7ORdwclW1iagZ3?=
 =?us-ascii?Q?hlsFcMjKKQ3n/qhL3VX4I2gSuM0CE8YI9kmUh5Sl8Su+nFB8pesRdKe58H1E?=
 =?us-ascii?Q?zHPrXy/clqxs5lIt/VKv0fTzv87bswUItrvXv9ba0TThuTfs1xP3sjlWvSg2?=
 =?us-ascii?Q?d1sHK7ZBXw7qbwlKVPPvsQMzg+X9UujvIlj4UamoQ2EuuAXNaeD+uw8ED0h2?=
 =?us-ascii?Q?GlvfaP0yqN3Dc9tAAMC4w7lbcIkTlfKNJEFVSthB23rbUFvoT+kZh6E622J8?=
 =?us-ascii?Q?8WevS+UyGpQjpU8FPx78drpWtEhNkaWQUIZiQzlkV0SFJmErFkh1zSq6GS9L?=
 =?us-ascii?Q?1hcc5ONRmihha5VaJoyBtxDvVyrnYpouj0lJk3Vjv+xTX4gTG9b9/yAsW9C2?=
 =?us-ascii?Q?3ZtiPFK+EKPindaTilubix2YfAZxnHkoRtDntIU8JAELSvMLHiONaPzIuRcm?=
 =?us-ascii?Q?zQvzo2zmDydc853FjRkiFmWtBV8r5WuvJDHvSJxzQkIuXCTfZQPYInC5Ap9H?=
 =?us-ascii?Q?Q7XE8gXWBeCBCAC1cHBmVGBCZXl1nyKiUtMsNeNUL/3OX9bC0CRNGSU8z/R6?=
 =?us-ascii?Q?1WwhiADYMNeoZjeT3dfWa1rocrobTjOCBOAEmEsCll6kS6vFWuLc706LB95C?=
 =?us-ascii?Q?ieSXGC4pl0IeVYZdb3sJRmyaemQYWgUv5ILQHz8Jkrsjnjvpa0M6ZjfM4w3w?=
 =?us-ascii?Q?1xDJXrMIaSNs8QRLJ9xJYKW5Q9CK+ya2A0tcLdtumNHFLwzYdP4pQYoacd72?=
 =?us-ascii?Q?dQGAZJmONHUNB/FyPdOGOtfr6moOfZdFf6ayNo5mHFXkZAdSQdQJ71H/I4x+?=
 =?us-ascii?Q?PpCsTaUCUFWKJ4R5uJAff7/X2X5KDnI4IodoU3oUGeIgQAmQ+QHEDNPuxLbh?=
 =?us-ascii?Q?5Mj9e3XAiWqZQsyWIz63X8Zw0aGWrx4LQguzUw4Okp2SzrO+kOG5SG7U3WR7?=
 =?us-ascii?Q?F02KLdr976zwedrHlPvqJoKrkV63mMHg/2m8bgfQxRI83d3f4LDRIacdThTL?=
 =?us-ascii?Q?x7uI926fRrbNy+MsgS/btGdzwAELGk+7/ltK6siwrPBpa9xZRjUo9nVru781?=
 =?us-ascii?Q?rZZ6FQPj8A985dAOGKrmX+NWtAjaJSsDj3mlG7A72gbgfyYPKWXOSuuaFyVD?=
 =?us-ascii?Q?KyBBEn8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pw1rggOwN04vsLCEc9J2suUoc1OH3fMLZ4idZG7DJEWiWUonLUbu94xBdJZQ?=
 =?us-ascii?Q?IG8Whovbaz8ixACGcVHAWqPA/8P2XmVR+u45EAx/Imi8G9kNeuuVmetrqAl6?=
 =?us-ascii?Q?SXl/eIeF9cj0piliU37wVLA8KbOSxU/7Q9e9URMMGI6GWWLEhwdTZbRqUCcC?=
 =?us-ascii?Q?SbO7Dj4LsTHoJby7jXAF9tCFTmNTMt9NgpkJEtlGuzD4/ZlWEp825R+lt/y+?=
 =?us-ascii?Q?weiywMprJN70ZEsD9tVDYWIESfODUsvoQWYQwNjFhHjkud9W5aAYKOnQuS66?=
 =?us-ascii?Q?9Z8Y/IiVSUB1bgckNZxJgQAmvJEgozcMHMmPmjLwM050ZbFFNN5SyzhiVsKc?=
 =?us-ascii?Q?Rv4MyKRg7lm1L5RTEL9uMrDfBpqlz5w5GRc3IoVXJvkXkt+E+0odi1VdcjuM?=
 =?us-ascii?Q?A82gKNjIfqi17ncZLmgDcoD61AkSz2EDdS8zYWJZDHwFFVPImJxd1Q5yZzDr?=
 =?us-ascii?Q?Ch6fB9u5eetPU10qNaEJ7kjfIUVkCw59GiXkFDsx6taWb5F/duuTGM6i2rQ/?=
 =?us-ascii?Q?RQezckyhM1Ad0EKQcwexkYcg5utH381KdX+AQKm85gR7Exyy5OxhE6jge5NO?=
 =?us-ascii?Q?Qky9G8+DLVnom1spFvGctsymw3AZffIteDMWZZN0YUwWI9H/vobMncGJySVi?=
 =?us-ascii?Q?nbNFigea+pi1PSpxnvFfxacFxgx1EHxBwl2Ph4HOCJjQYJLcV14ncHshieVr?=
 =?us-ascii?Q?+vICYwFwWwkf5MV0XMArJnnLR5p6EHHEGI91tDj/8X495lwSMOdEe97sYu1U?=
 =?us-ascii?Q?0oiyZRSxx5Tac222Z+rBIEVuaC1DOVA/xfbkcw0nDkYG/bU5BUi8WmBL/CaD?=
 =?us-ascii?Q?rE3B+jPqTHPTbL52nAG5BEkYIUUY/6Wv06uN3QZBC/62p8hs0H0FbHbEHfmY?=
 =?us-ascii?Q?XaVph4vaRsNnsr8uCyWJcGgKIHpitlbmvI4rVizxV4YAUkGWlyTNlmBVYt9I?=
 =?us-ascii?Q?DD5wbQFYxh+MpARtpO3Ks75Glg0pa4cW775iWSl6WFLgjvFntmgMKGPGzB18?=
 =?us-ascii?Q?L0h8Sw0QT8ZnSvPr8buOC0F4r69m5BNiTcD2XbrK6+tEWRfcq2MgppbnOgE9?=
 =?us-ascii?Q?QmW85ZYnZfIJzzG8cYlcaHDnO5L4gQW3E8no5Dy1Cni+MbCdbNaSt3qhpIb2?=
 =?us-ascii?Q?2daja9ReANWyjvR0f9NpoPCSkAMmiCcRwurYSb64noQGwuNrR/iW3zb/QvIv?=
 =?us-ascii?Q?Csl/fZJav5IWxhUQk1JP0QfaLSUUPsVP98Z5T51fetsMi9MJhA/LSDOXmUfJ?=
 =?us-ascii?Q?T3Vo+lnUZ62GbH1dMMSS0cM4ppuJG1GK3LiewFiJGhk3oP+2aXb1ltLByPU/?=
 =?us-ascii?Q?UfqpXKVq7MLgomcMlma7m11OlDONfciWzElcPeZJo5OlKb89CVspYPCsxDHX?=
 =?us-ascii?Q?vSEkAoUpUaTgjblLoNZDQFhDK2MOsBHe1dN3Y9VJlytTUv7vCaTEA33di1y7?=
 =?us-ascii?Q?ge/RiS++mZT+MVyigTVpOxiGCBW0Eowducc45Mm11O7imGXX47VzUFs3fMhM?=
 =?us-ascii?Q?MH6SxN21twc2JKuUQdeboaExMYiKaGBffg7DCnrKTxFNrK6MgDWfxLztilLr?=
 =?us-ascii?Q?wDVTd3xC+TvYhhqP2BQ8Vl+V0DtWIkFd2AkhjXPt69rQimYZi8RQhjb543iJ?=
 =?us-ascii?Q?ZA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20a2d1ba-e822-4c62-af25-08dcf20c33ec
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2024 20:09:00.4177 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iW8MMGh2AIhAC3MzQMbchyq0UuR1vsT8Skzy1WJkD5moYLqBogd0vGtNNUrr7QcNi30aDytODhfzM8cFX55S9MsdHok401JXukfo7mbgp+4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8324
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



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Gustavo Sousa
> Sent: Friday, October 18, 2024 2:23 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: [PATCH] drm/i915/xe2lpd: Update C20 HDMI TMDS algorithm to
> include tx_misc
>=20
> There has been an update to the Bspec in which we need to set
> tx_misc=3D0x5 field for C20 TX Context programming for HDMI TMDS for
> Xe2_LPD and newer. That field is mapped to the bits 7:0 of
> SRAM_GENERIC_<A/B>_TX_CNTX_CFG_1, which in turn translates to tx[1] of
> our state struct. Update the algorithm to reflect this change.
>=20
> Bspec: 74489
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c    | 17 ++++++++++++++---
>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h   |  2 ++
>  2 files changed, 16 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index f73d576fd99e..22184b2d5a11 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2142,8 +2142,12 @@ static void intel_c10pll_dump_hw_state(struct
> drm_i915_private *i915,
>  			    i + 2, hw_state->pll[i + 2], i + 3, hw_state->pll[i + 3]);
> }
>=20
> -static int intel_c20_compute_hdmi_tmds_pll(u64 pixel_clock, struct
> intel_c20pll_state *pll_state)
> +static int intel_c20_compute_hdmi_tmds_pll(struct intel_encoder *encoder=
,
> +					   u64 pixel_clock,
> +					   struct intel_c20pll_state *pll_state)
>  {
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +
>  	u64 datarate;
>  	u64 mpll_tx_clk_div;
>  	u64 vco_freq_shift;
> @@ -2154,6 +2158,7 @@ static int intel_c20_compute_hdmi_tmds_pll(u64
> pixel_clock, struct intel_c20pll_
>  	u64 mpll_fracn_rem;
>  	u8  mpllb_ana_freq_vco;
>  	u8  mpll_div_multiplier;
> +	u16  tx_misc;

In the case of tx_misc, it seems that using the u8 type have been a better =
fit.

Dnyaneshwar,

>=20
>  	if (pixel_clock < 25175 || pixel_clock > 600000)
>  		return -EINVAL;
> @@ -2171,6 +2176,11 @@ static int intel_c20_compute_hdmi_tmds_pll(u64
> pixel_clock, struct intel_c20pll_
>  	mpll_div_multiplier =3D min_t(u8, div64_u64((vco_freq * 16 + (datarate
> >> 1)),
>  						  datarate), 255);
>=20
> +	if (DISPLAY_VER(i915) >=3D 20)
> +		tx_misc =3D 0x5;
> +	else
> +		tx_misc =3D 0x0;
> +
>  	if (vco_freq <=3D DATARATE_3000000000)
>  		mpllb_ana_freq_vco =3D MPLLB_ANA_FREQ_VCO_3;
>  	else if (vco_freq <=3D DATARATE_3500000000) @@ -2182,7 +2192,7
> @@ static int intel_c20_compute_hdmi_tmds_pll(u64 pixel_clock, struct
> intel_c20pll_
>=20
>  	pll_state->clock	=3D pixel_clock;
>  	pll_state->tx[0]	=3D 0xbe88;
> -	pll_state->tx[1]	=3D 0x9800;
> +	pll_state->tx[1]	=3D 0x9800 | C20_PHY_TX_MISC(tx_misc);
>  	pll_state->tx[2]	=3D 0x0000;
>  	pll_state->cmn[0]	=3D 0x0500;
>  	pll_state->cmn[1]	=3D 0x0005;
> @@ -2266,7 +2276,8 @@ static int intel_c20pll_calc_state(struct
> intel_crtc_state *crtc_state,
>=20
>  	/* try computed C20 HDMI tables before using consolidated tables */
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
> -		if (intel_c20_compute_hdmi_tmds_pll(crtc_state->port_clock,
> +		if (intel_c20_compute_hdmi_tmds_pll(encoder,
> +						    crtc_state->port_clock,
>  						    &crtc_state-
> >dpll_hw_state.cx0pll.c20) =3D=3D 0)
>  			return 0;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index ab3ae110b68f..c1949aa1b909 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -280,6 +280,8 @@
>  #define PHY_C20_B_TX_CNTX_CFG(i915, idx) \
>  		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_B_TX_CNTX_CFG :
> _MTL_C20_B_TX_CNTX_CFG) - (idx))
>  #define   C20_PHY_TX_RATE		REG_GENMASK(2, 0)
> +#define   C20_PHY_TX_MISC_MASK		REG_GENMASK(7, 0)
> +#define   C20_PHY_TX_MISC(val)
> 	REG_FIELD_PREP16(C20_PHY_TX_MISC_MASK, (val))
>=20
>  #define PHY_C20_A_CMN_CNTX_CFG(i915, idx) \
>  		((_IS_XE2HPD_C20(i915) ?
> _XE2HPD_C20_A_CMN_CNTX_CFG : _MTL_C20_A_CMN_CNTX_CFG) - (idx))
> --
> 2.46.1

