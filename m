Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BBBF995BA6
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 01:30:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6180F10E60E;
	Tue,  8 Oct 2024 23:30:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ckLc0RG8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C801410E264;
 Tue,  8 Oct 2024 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728430254; x=1759966254;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=esRmv/xK3EtF02VQ6kpFcE76hg2ThXEJuB0mYQ3Gs6Y=;
 b=ckLc0RG89IjUbq34EIu/uxtMQHjqfGrcfMOHn0DOq7EhmCrS4nESUVuH
 9Ouh6M0gQqedP1XM92JWG3Z5nhQt5FdBMDxauct1wTM3HpNngubVFu3xf
 q7yAyK1TtNeMTAfVtAIRbsOBzfcYJy+/VAnnDHJ5zDPJVylutDZ+JbpbI
 QWSBuYEjDoE4820QrFh+pl/lUDLvlx38h8Y6A/HYcCJ4Bp/LvXcf+H/pk
 +PJQRkaHZ26HEUUL9ljfUEY8DpD68W/L545vyOeoQdFSxtkQzyHGDMD1c
 J+FfOQNdKGaSPTKwWJypw2SdcN8IF+o7840Mgf4o1Df/OLU+tmB8pi5bA w==;
X-CSE-ConnectionGUID: eSiDNA8cSquEOjmGZjAe4Q==
X-CSE-MsgGUID: pJkfmfzzT7i/ZvvpWW+YVA==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="39078939"
X-IronPort-AV: E=Sophos;i="6.11,188,1725346800"; d="scan'208";a="39078939"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 16:30:54 -0700
X-CSE-ConnectionGUID: h1l20JdmSZCxDxjLP0MjAQ==
X-CSE-MsgGUID: kQMDl6W5Q0iNtxV+fWxfbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,188,1725346800"; d="scan'208";a="76382886"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Oct 2024 16:30:39 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 8 Oct 2024 16:30:33 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 8 Oct 2024 16:30:33 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 8 Oct 2024 16:30:33 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 8 Oct 2024 16:30:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j1jEgAqjewHSDQQjMnPIIymJhp0I7JYa9HEzyClK0IYOBmfoPIxp9M3QhpQP1Pj1Z+92NzVv474XslccpW0um13KW+n31mvI21FtOiJcY/GbrZk9oEv91nmP4+pM+4t800T8Y0G1dlDA06zTA/dK6oK5jnXbZ7wAPDwje5W+PrQ6GdshEtXVG2NUkKtoLB1rxPWz+9qGSY1ibUP44StmdhQ9OxuCVHzsgbF0dKK3YANjvblZoVvKOhcYxwVBAAPsxyvQrwIZpClsCY9QVoKMSGJ3Hia7W9Sriyr1edhsS9v67MfZb9ZUBorP7xGld5yiVLWXeykiPVjLXXhkXvDtDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=58dFdGNwqcea+4m7kSaFZr2nUBOCKqgljPo2rckU1gE=;
 b=rJyLXCmFbE318Okz+bhVMS0CacHU8Kb7Kv09dNxwoLcXRoOj8q9g1QL6dVo2PqPNuWbcBERTrpVKGsIWLaMnF+evVJaHjtRyTJMMIGsn+3/jHMOjFUrqrKnl2vX5iKx38UNV6Q2WI5PMQjjXHg8Ajag6gDlux2UkGRW+Dxh7LZXcMAf7zlza/uSly1yTw/1X57v62WG5Qs0JUC+VkjjyAnQJgiyuU93SKHDEsCJYGSGSXnzUA09F1q5BSLs5fOgvQCY/6R8XJOsrkVaMf9OVAdQzPJ2GqbGjYj/KhkHGai690ta2M+wSl4ajdX1Nh28Cs9bz0DGeHjDSnJUoskNoKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DS0PR11MB7630.namprd11.prod.outlook.com (2603:10b6:8:149::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.23; Tue, 8 Oct
 2024 23:30:25 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8026.020; Tue, 8 Oct 2024
 23:30:25 +0000
Date: Tue, 8 Oct 2024 16:30:22 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 Radhakrishna Sripada <radhakrishna.sripada@intel.com>, Gustavo Sousa
 <gustavo.sousa@intel.com>
Subject: Re: [PATCH 05/10] drm/i915/xe3lpd: Add cdclk changes
Message-ID: <20241008233022.GN4891@mdroper-desk1.amr.corp.intel.com>
References: <20241008223741.82790-1-matthew.s.atwood@intel.com>
 <20241008223741.82790-6-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241008223741.82790-6-matthew.s.atwood@intel.com>
X-ClientProxiedBy: SJ0PR03CA0217.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::12) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DS0PR11MB7630:EE_
X-MS-Office365-Filtering-Correlation-Id: dda5dd9d-e282-4cd3-092c-08dce7f12f73
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?YqaFErcSFG02atLxdtZYeWwBXX1Sx634kq/WxIVxZ+fZDz3XDAaK9ZDi0jF0?=
 =?us-ascii?Q?AR3f0YdR2nJR6tNAPMfQ+DBqKI+SFenJIN8fMbFRCrWpp7OBYjKeP4wjStgr?=
 =?us-ascii?Q?4N30MrdDnZ87JXFofGoK0HbcdT3bUtBrCG589Fz7rFHzRkHGJDGLHSXr87+U?=
 =?us-ascii?Q?Z4UGhJgMaXOsXVraoh3wFmY4ruGEFxXp1tOe9eSAM2C1Dih9qSNB7JzS+edM?=
 =?us-ascii?Q?+2LqxAUgtAJ4DPRJJyO/lvoKiZuKSFcZwqj0X3bIm0FjKkqBNdgvWRfE+yzn?=
 =?us-ascii?Q?wxfqlxUBtbjRFFT9RwYx4qlIJZPglTHlvsYAvBf368eKRNUf9MJdnzC/vaLf?=
 =?us-ascii?Q?FfeJ8AaJvopQNorj+6T/EFoCAC3g1zkoSG4arEL9tCpVxMvF8Zk/WxAw708F?=
 =?us-ascii?Q?+ksCVUOLfJhU4iv68+GcFYBohrNLTU3OrcmP6G1OJgdLPlzD5ZcJ3L6IUP86?=
 =?us-ascii?Q?DItGs7GGL4snPF4O5L1Jxj5ojlHUL/T5LRIZGpAQXVRHJKizpYUhhKPXLebE?=
 =?us-ascii?Q?N3UqRo8OPTUaQBGXrf5W+6x4lXxilOPoLZjq3GgOznjQI0lBz5q5YOE327Om?=
 =?us-ascii?Q?5dWh2W4FRsuSiWhD6gi8Lt+IO4I4kCy5uxt/h+nt/GwKoKOlBd1/5psWDBuH?=
 =?us-ascii?Q?YVRL7QkC8F++X0K45XPMYjizZElDSZzJPllXEQ4z/ykUOBsyvzHIMNkEQVg3?=
 =?us-ascii?Q?LNoS873EM/0txXZihgN+XdNqPH/NKG1qG9gL9RSaCEx3LURYiPXVA70RdoKK?=
 =?us-ascii?Q?0VpWpED1kY2U1DSAicfSMPRJc/25eVLyqrCveA69edGJidaDQiggehUwytBB?=
 =?us-ascii?Q?Wnw71M+Y6dOtT5PfqyHmefVJdRPuybQZuQU5TvJVgpLsS3w1xhmH7rbCGcfO?=
 =?us-ascii?Q?ync8lgkgqGMxVA8yqiZEAKGVZVLSx1r/cdew31twzAqR7lly6hfZEEZ8qmik?=
 =?us-ascii?Q?NNG+zoOOfjIS7oIRSF/iiOjzRbyNDYM6YRiGolZwICyrbK56YnjCgMwlkH82?=
 =?us-ascii?Q?yGidJ9TkvJ+AAH1mgn+fiwo6TuG0OzYEY/1AvPaQnRMUZ8vk6d/GLkBMiQQC?=
 =?us-ascii?Q?bIzc3vrhEoaructsjp6l/e+mHL7zfcq+jVTSSlEzzGN+7I/eaXR2MPRhKAXu?=
 =?us-ascii?Q?bhUYwhxz1wkxfBCErx+6aIIGj0+h+JbTHqaeeUBL+wPhG7860H6oQh4j53zN?=
 =?us-ascii?Q?TnlBNFa0Q4Qkv8wamrtCfcNVNnvU/KJKnnIbly/08CH2QPsDqvpJZS4ZC1Bt?=
 =?us-ascii?Q?ZCqsQF9cLHjEhCtbS/dJITzmAVnjgP+gmVYD0ApB8w=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?edjhYNHtKWZ74OKx4Kz1g1BfCK0A20XBAqKaiyG+O957uzj5TM1NbAGM5Imw?=
 =?us-ascii?Q?JnnO7mPGmGxXknMtYkLcQFHdngsqSV8x4qGkBdUrj7fvSq2gK6pqI6/DtWzB?=
 =?us-ascii?Q?Jo9glV1fqwnzMJqAFemiwYBjuvwdJ/WgXaLU5lKisz0S6Ja1GXZyoePRxFpO?=
 =?us-ascii?Q?H4oNk0W7tCzOKfUvXo/5ZgIXH6BmlauDfvWgrRQrqWUAbfm0se3uXndhqOMv?=
 =?us-ascii?Q?JNhbVT5Bh81qfjLipH+zYufJY8VRbmQ1OxMkCXHUbHYFwYCSVSO7Y/i8kPhp?=
 =?us-ascii?Q?O7rkHGStVFR4ZNn0KDXGiAO6PeIWq/3M1+DwyPrFJ14TrrA/Nh7NhfpUkepO?=
 =?us-ascii?Q?Sci7BZjLj8CXz3P++4gHSpqhcHjDK3yoKVqIempdCYB+NwmtCA//6C/3QDT9?=
 =?us-ascii?Q?uMbJxc3wBD8JEmXi41sZT0FKGEJ61+4SPrhgm+NDISUNnP13wM8A+WnQTMnL?=
 =?us-ascii?Q?2DcYkvfm3XBej+gWzlawdOYEmUYjiMkfBHSXIOwJvjcZ8OORJ3eUOhhzmF2x?=
 =?us-ascii?Q?BRJx2sDUAeRjTU4NLx/TqADH18NSqoh96Kmr9Me+RRQ3ODFLeJieFaZOBaNi?=
 =?us-ascii?Q?77myXFFyu9G0YeEdCTfLyhr7K5faVOBzuBjeXDqeByzr/DkvYjdV7r5VPh1n?=
 =?us-ascii?Q?WYAH36VGw61G6Nvs9YsCiEO0//a0xSsLsbwzbbECIDoQv3zuOwsXukE26HH+?=
 =?us-ascii?Q?tSpo515a16mnCnLp1AZp6J6nS/IqUYmf38z881sjQuRDTQX/Tx4U7/jTAOTK?=
 =?us-ascii?Q?Fp4alNAz6n5aI9Nc05BRnhTsgpfhdjru+xBJ0jkl+lzKGO1BHHR1zSk5pFrK?=
 =?us-ascii?Q?SPYFw2wVZxE3+x5JT4ItkTHyw5TpM9ellZvrczS7OqGCxSgQp7Fk63fR0/iw?=
 =?us-ascii?Q?bzh7kPX118uCZnUSCIx673oMTyrRRIrkEit8kVVfUxxbWRScmKhM2OdoXwrn?=
 =?us-ascii?Q?fRCkzclnNkx58TO7HjKKCkemRx2IZ6Yjz6Q6IHu9M3hSa5LeUXNYRB7eLPVf?=
 =?us-ascii?Q?gYxo9+P9qIeR5k0gldUwTzZ0Ki+wQI7MHm7yPH0f5RQwhIKXzZmrPLUZlZsG?=
 =?us-ascii?Q?1CQKJ+/lhnanfONXrIzMyuw5j9qfBiP9HvyPaVc9KNCp2S60hpdzHOdWN3nS?=
 =?us-ascii?Q?FV6a1xSKoB6Gv0Vh123WOAeX1RTSMSuluyeQPUSHvnykREwH1dLyMf8abVXu?=
 =?us-ascii?Q?Km8GTf3Wg9zYM8jfmXLUSq2vwmHWYUp1NtaDt6H37IfZbLmz8HziySJitWd6?=
 =?us-ascii?Q?Y3UUE7wjVLaZV1gXmzJOMyaLbOPv5Z4e4pr08PhrUVRZAwwOCcVCVTnvEtV5?=
 =?us-ascii?Q?Rs1QmZEqMA4mj/4tSbln5YWmWe2BDdQcBnjBrdrUojDspIxU83zufV2HIcCP?=
 =?us-ascii?Q?Nqvd0nfSdopd0UDdlr/iyL1AR3UppA4o7ZD/BVInTCBsfc3wWr5qIK0GAx40?=
 =?us-ascii?Q?qlc5K82vgpQ3zBIus4yCAarDVJGkQ0wrmP4FkzV54RRib3LBzogl1QnYkV8V?=
 =?us-ascii?Q?B4XKyHPoEsPDi7bk1sVYZYcUPWxBsRo1Ecz5JdmmhMNmZvNNU7AHjZ/37o7w?=
 =?us-ascii?Q?Cm6prjJD0+A247gOY8sdiUJ+Wxl8g3DFlYmgB4u4ARoCCg2ML0Rk3iDI+xg5?=
 =?us-ascii?Q?VA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dda5dd9d-e282-4cd3-092c-08dce7f12f73
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2024 23:30:25.1451 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o8UwDI2CelnY+3OHJo4tY3n3U+VjI9ncb/Xk5QzDsEUW4XBhF9JTTbYhu5551KMgpIHarH/uAa/I650OW1Qs9H7vJWXHlPpLGWRkfxrQsxo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7630
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

On Tue, Oct 08, 2024 at 03:37:36PM -0700, Matt Atwood wrote:
> From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> 
> Xe3_LPD has new max cdclk of 691200 which requires reusing the lnl table
> and modify/add higher frequencies. Updating the max cdclk supported by
> the platform and voltage_level determination is also updated.
> 
> There are minor changes in cdclk programming sequence compared to lnl,
> where programming cd2x divider needs to be skipped. This is already handled
> by the calculations in existing code.
> 
> Bspec: 68861, 68863, 68864
> Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 56 +++++++++++++++++++++-
>  1 file changed, 54 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index fa1c2012b10c..6ac7bd6afc36 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1468,6 +1468,32 @@ static const struct intel_cdclk_vals xe2hpd_cdclk_table[] = {
>  	{}
>  };
>  
> +static const struct intel_cdclk_vals xe3lpd_cdclk_table[] = {
> +	{ .refclk = 38400, .cdclk = 153600, .ratio = 16, .waveform = 0xaaaa },
> +	{ .refclk = 38400, .cdclk = 172800, .ratio = 16, .waveform = 0xad5a },
> +	{ .refclk = 38400, .cdclk = 192000, .ratio = 16, .waveform = 0xb6b6 },
> +	{ .refclk = 38400, .cdclk = 211200, .ratio = 16, .waveform = 0xdbb6 },
> +	{ .refclk = 38400, .cdclk = 230400, .ratio = 16, .waveform = 0xeeee },
> +	{ .refclk = 38400, .cdclk = 249600, .ratio = 16, .waveform = 0xf7de },
> +	{ .refclk = 38400, .cdclk = 268800, .ratio = 16, .waveform = 0xfefe },
> +	{ .refclk = 38400, .cdclk = 288000, .ratio = 16, .waveform = 0xfffe },
> +	{ .refclk = 38400, .cdclk = 307200, .ratio = 16, .waveform = 0xffff },

Up to this point the table seems to match what I see in the spec.  But
after this point most of the entries below don't show up in the bspec,
and the ones in the bspec aren't included here.  Looks like things have
changed since this patch was originally written.

> +	{ .refclk = 38400, .cdclk = 330000, .ratio = 25, .waveform = 0xdbb6 },
> +	{ .refclk = 38400, .cdclk = 360000, .ratio = 25, .waveform = 0xeeee },
> +	{ .refclk = 38400, .cdclk = 390000, .ratio = 25, .waveform = 0xf7de },
> +	{ .refclk = 38400, .cdclk = 420000, .ratio = 25, .waveform = 0xfefe },
> +	{ .refclk = 38400, .cdclk = 450000, .ratio = 25, .waveform = 0xfffe },
> +	{ .refclk = 38400, .cdclk = 480000, .ratio = 25, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 487200, .ratio = 29, .waveform = 0xfefe },
> +	{ .refclk = 38400, .cdclk = 522000, .ratio = 29, .waveform = 0xfffe },
> +	{ .refclk = 38400, .cdclk = 556800, .ratio = 29, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 561600, .ratio = 36, .waveform = 0xf7de },
> +	{ .refclk = 38400, .cdclk = 604800, .ratio = 36, .waveform = 0xfefe },
> +	{ .refclk = 38400, .cdclk = 648000, .ratio = 36, .waveform = 0xfffe },
> +	{ .refclk = 38400, .cdclk = 691200, .ratio = 36, .waveform = 0xffff },
> +	{}
> +};
> +
>  static const int cdclk_squash_len = 16;
>  
>  static int cdclk_squash_divider(u16 waveform)
> @@ -1594,6 +1620,20 @@ static u8 rplu_calc_voltage_level(int cdclk)
>  				  rplu_voltage_level_max_cdclk);
>  }
>  
> +static u8 xe3lpd_calc_voltage_level(int cdclk)
> +{
> +	static const int xe3lpd_voltage_level_max_cdclk[] = {
> +		[0] = 307200,
> +		[1] = 480000,
> +		[2] = 556800,
> +		[3] = 691200,
> +	};

This doesn't seem to match the spec either.  I only see two levels (vmin
and elevated) rather than four.


Matt

> +
> +	return calc_voltage_level(cdclk,
> +				  ARRAY_SIZE(xe3lpd_voltage_level_max_cdclk),
> +				  xe3lpd_voltage_level_max_cdclk);
> +}
> +
>  static void icl_readout_refclk(struct intel_display *display,
>  			       struct intel_cdclk_config *cdclk_config)
>  {
> @@ -3437,7 +3477,9 @@ void intel_update_max_cdclk(struct intel_display *display)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  
> -	if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) {
> +	if (DISPLAY_VER(display) >= 30) {
> +		display->cdclk.max_cdclk_freq = 691200;
> +	} else if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) {
>  		if (display->cdclk.hw.ref == 24000)
>  			display->cdclk.max_cdclk_freq = 552000;
>  		else
> @@ -3650,6 +3692,13 @@ void intel_cdclk_debugfs_register(struct intel_display *display)
>  			    display, &i915_cdclk_info_fops);
>  }
>  
> +static const struct intel_cdclk_funcs xe3lpd_cdclk_funcs = {
> +	.get_cdclk = bxt_get_cdclk,
> +	.set_cdclk = bxt_set_cdclk,
> +	.modeset_calc_cdclk = bxt_modeset_calc_cdclk,
> +	.calc_voltage_level = xe3lpd_calc_voltage_level,
> +};
> +
>  static const struct intel_cdclk_funcs rplu_cdclk_funcs = {
>  	.get_cdclk = bxt_get_cdclk,
>  	.set_cdclk = bxt_set_cdclk,
> @@ -3794,7 +3843,10 @@ void intel_init_cdclk_hooks(struct intel_display *display)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  
> -	if (DISPLAY_VER(display) >= 20) {
> +	if (DISPLAY_VER(display) >= 30) {
> +		display->funcs.cdclk = &xe3lpd_cdclk_funcs;
> +		display->cdclk.table = xe3lpd_cdclk_table;
> +	} else if (DISPLAY_VER(display) >= 20) {
>  		display->funcs.cdclk = &rplu_cdclk_funcs;
>  		display->cdclk.table = xe2lpd_cdclk_table;
>  	} else if (DISPLAY_VER_FULL(display) >= IP_VER(14, 1)) {
> -- 
> 2.45.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
