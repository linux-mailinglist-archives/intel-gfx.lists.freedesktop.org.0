Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4E6A7EFCB
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 23:41:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E07110E15A;
	Mon,  7 Apr 2025 21:41:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AXpSmBPp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 900B210E15A
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Apr 2025 21:41:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744062090; x=1775598090;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=1MhszW4bNZERTMuiCq5VhA95GyhG6CsbtG6jeZQe9q8=;
 b=AXpSmBPpMuCH8cvoevVZshuZTFBX3Dbz3FM2u8M9LhBbAwAP3y/lyxNI
 iWXBXbt87d86P13QozPFYUektgQFkMKFXsVkc1ghDsfpL80m8wlsV/zc0
 6xCI3RKO+G9qrqKUP3sUZer7gXdU+u4izwVR7UEPesc6XznGIzWF22/ek
 faH56n0lyHcVFg+OXylbrfK2SDMFc8Q4ZMUMgSO0IwmChZu92iO2rjGxU
 hIreTFdnXx9rnusm0Mva9CrRoS0pJa/JRC7GMJWNke4Ajzu+8IrQVwWym
 vMleqKWx+MF0xEb6RNqJIPM/qzvWKJwqbOdsuCCMlJyMo7r0S7XzZRwMm w==;
X-CSE-ConnectionGUID: Ji73zBfzRsWyFDu4SfnFPA==
X-CSE-MsgGUID: Dv8Dw0l6RoSQHiqkBHZAJQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="70847150"
X-IronPort-AV: E=Sophos;i="6.15,196,1739865600"; d="scan'208";a="70847150"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 14:41:29 -0700
X-CSE-ConnectionGUID: e6YncO8ZSdyPd4lX9M50xw==
X-CSE-MsgGUID: s5bz9OxSQ5+VXbswM4fCMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,196,1739865600"; d="scan'208";a="132206405"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 14:41:29 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 7 Apr 2025 14:41:28 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 7 Apr 2025 14:41:28 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 7 Apr 2025 14:41:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R85+CACNxnf5O8OUq5VjryS3l8rUerEms6OW5yJrea+BHADTOoliedM6xow37mvA+qzufBYD8hh40hL8/OK/Mijx7fSVRlxJY7hy0hgfK+ZsuSyZpXtoYV/XZXkci9e7zz7LPRgh0WxZwcHT8oJg44ZtN7+E7rG8SpaVf0d8uDUfGwIKiRIDnFqv0BViMIJ85Qs5KbqKdvrbn2NJ0vRPAmdXXLCvQuXYC4w1cnOogLvsEN3HYa6RO65ZQE5pTU/RrYXY4aqZParMotqxHVUYHboc60i21ozr8jVcX3bR97UZbLOjcfhqRRq9+QKbOdaLZc4CjlIHQOwjCaPutjBSbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bPGRNl9C/HCU+ZRchNkngJmftM9N8+mhNWfndhg5pwI=;
 b=ijFMrI8nU4F+UQUed6WcKd/m7U5kFEt0oAS2eWLyIzcGCPI8r5f+rJYiK3/cBh8z6kJuf2zMTXc9BhJslE17syItx4g8QJFyUNodhWyt9buPozIZf7Dub+Qgh7GqEWbodbOGr0NiXJ+QjSRymkYVr9saFXWc0VM5Ka+o7blpFHImAcrbYKuEjNoAN8AILkzo1aI1jLazSU1g8uB9MV56kmGQMKIhxzMROoK6gYUDl3JL7CerTsyVRmSEavslHi/GpUp6JBWBpxXvY2i10w7W7SWB8rViTbCk7qnMvDMxubXu+FEY+4lpDaKn1dFjOLjZXK/OqFa8bhQiFpn+H7wBwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SA2PR11MB5097.namprd11.prod.outlook.com (2603:10b6:806:11a::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.32; Mon, 7 Apr
 2025 21:41:25 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8606.033; Mon, 7 Apr 2025
 21:41:25 +0000
Date: Tue, 8 Apr 2025 00:41:27 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Lin, Charlton" <charlton.lin@intel.com>
Subject: Re: [PATCH v2 1/2] drm/i915/dp: Enable SST LT fallback between UHBR
 and non-UHBR link rates
Message-ID: <Z_RGh3AZRWf4CBvw@ideak-desk.fi.intel.com>
References: <20250405003434.641638-1-khaled.almahallawy@intel.com>
 <Z_N5AAOf9uVeXPUV@ideak-desk.fi.intel.com>
 <f78113b6684041df9515a420f791ed680561c43a.camel@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f78113b6684041df9515a420f791ed680561c43a.camel@intel.com>
X-ClientProxiedBy: DB7PR02CA0029.eurprd02.prod.outlook.com
 (2603:10a6:10:52::42) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SA2PR11MB5097:EE_
X-MS-Office365-Filtering-Correlation-Id: 17908ac8-9e1a-4c6e-567d-08dd761cf263
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?Qybo1agv/z24FOal/o9CU1yKR2LYM8/75K/eIkExMhbWX4Cad7kukv3UwK?=
 =?iso-8859-1?Q?g5RUH6q13+nd7uLidn8H5cDm9Hq2S5BE4D3iKAuQ5ySQjCiBS+O9aIbZSV?=
 =?iso-8859-1?Q?2cp19G3PiHV62mPZT79I11oQqOEOvX5mEGHnTEVaPFBG6BuxB45iq6aSdJ?=
 =?iso-8859-1?Q?Y/faVuihf9b0N/OKUDlSQFWesAktTz2nboK5N08FhsP9O5dwKHLuIW4SNw?=
 =?iso-8859-1?Q?RN3LE1mJ77eWeyEwB/kFqS2OIF3X5FNTTDDrFkOoUttngVBUx3b9WToXh8?=
 =?iso-8859-1?Q?qSW+9ehY5MhGC+w59b8+agTRVAdg9cwvkbRoeLZTIpGIn6A0vUpiUzrynq?=
 =?iso-8859-1?Q?Bi3Pv0o5Zu5ymIKUNaRpCH0Gc6abmxle+oD8GsVuJJLR6fYqpYDIWR/Qg/?=
 =?iso-8859-1?Q?ZxNxaILkHbqUOFW8a5Ebo6Ky2yi8u4npKbfe+ebA6w+Qofei5fgIoU86Nq?=
 =?iso-8859-1?Q?W3WHcRr4LGxhFDCDGop1LN9wj7kC/JotTVvKdtJbLG8Cdrf84bdLjGbC/s?=
 =?iso-8859-1?Q?tJ/pjOYGcutps+f0fFJfGOXlnaQxAfgakCNXqaUMWHVRn/zN0Pl1tgl6MZ?=
 =?iso-8859-1?Q?38UQgu1TB5Y0Fcq7CVW+wCxfDPLazv4ysn0OW3aPekjziIRvTqgM7nd6DB?=
 =?iso-8859-1?Q?dqozgk7gYTyjrRkUaSOjVgItxjeXZTpIiuskdQTJ+aShfVOqDMA2bHXNlS?=
 =?iso-8859-1?Q?uQekVfD2zzpF1MfYWiDEHVusSk4Zj1g1+nuS3RVcYmBPViOB/RgcVlWqvC?=
 =?iso-8859-1?Q?YbPqwfy31i8Tdo2sBUTS/tKnc10y6xaduQfqtNgKMWEjVw0/qKmZL3aFy/?=
 =?iso-8859-1?Q?iLRwLpj7WfzTRdEpB0ZTR6fxqUU1eyPO6pTE4iDfKA1hVRwmwd3t7QGdXL?=
 =?iso-8859-1?Q?iN9cWtgRdbcxINALjbrLsNe4BniOgaVM28eudWayNZeNu0cS4UGG4oGMA6?=
 =?iso-8859-1?Q?/FG1dC7pnrgjWSNm/5l4TjWUdHvWOiiMIcbcV/k8jn6qUJ57egDgMDPD3z?=
 =?iso-8859-1?Q?aKx34CnfYHbF8xd8ksR4ih/G0q3RgZetXmisbP7YNyPvtFtpewAGqULEBS?=
 =?iso-8859-1?Q?aNcuajcaXGkYfVcWskqpr0vEQ2EHywXhCxZNsKIXyidVYAtlEpuH0SwWqj?=
 =?iso-8859-1?Q?TeFxOxykrtBg+JOCWEuixkA5F06KYf48IEt9O5EuUnueEAsk+CZuJF8DJM?=
 =?iso-8859-1?Q?fNGxzY5mytVCl/TaMMHthF+Enivu82dvHm9rQ2dIE6/LOb4TLP0toqjVuZ?=
 =?iso-8859-1?Q?J1XiOXSfpAlfdjguYFydy4K66cQJObJrA/lqKG7f+saU7OWvqqavz0MsBf?=
 =?iso-8859-1?Q?q0fy60A3Fa0xWO+8iiJxC42lVXoKRcbqW0V/4EglfJqRHgeJOQ1LvGUs/W?=
 =?iso-8859-1?Q?Sl8hArCVNbctumT1sUDNrOTk19COOzp4MopeLxQDSvsSM2KZ5dZOhzHK6O?=
 =?iso-8859-1?Q?6VRT74Z+yY5lMGgO?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?sXRUpRLzS6y7g5htiLoDXo0NPWKgSx1hGINCSboP+BvNzM6qNT7Vb6aOep?=
 =?iso-8859-1?Q?HJ8xb1ZOZl4Ye0j+F4UJ6pCtQ2H/Z6r72U5qCFLsWjTkYisK21kKC0wawM?=
 =?iso-8859-1?Q?2csej75ME6i4GLV8IPwc6vkqHnv9mtJRjDFl9WQH3Mll5DOrBhQWya9u3F?=
 =?iso-8859-1?Q?jRNTKP9xLc2kgAlS9Pnk5LfvS6FlH1BuD8sTIDbThzdPe7xYsLTOTObDXQ?=
 =?iso-8859-1?Q?9E4pQ3rbw1YV/D4XuKzPUwAxeqFK2nmuhRGbSKdMkjC/w2/lJLtdB5MUK3?=
 =?iso-8859-1?Q?0QPm2ilkSi0jvf+Jua+K3GhOMEkapMjKPs86KX9JooeCkBoFpTE5yla80F?=
 =?iso-8859-1?Q?IVwqv32CKths1lIgrXujzp8dPR996z+3GzDhpxpGfHLP88dvp9/T0vrWxd?=
 =?iso-8859-1?Q?vMA0kRr3CPWvIAy7NGx9a73hGpu3DzOV6Ihs3ibeqxfsjArguQdNAU9Dqw?=
 =?iso-8859-1?Q?iY2uChCDWbhIlQQze74QkipHmY2Umq9hG7wSpfzMwYMQJ/5EI/MV3DpUD0?=
 =?iso-8859-1?Q?yUKpgE3b+AIMcIPj3cVADqUoLfCcPxELRONhjb2RAueGkMK2YtFlu2HY1g?=
 =?iso-8859-1?Q?+CiwBRYIiEgjtZY06Dkzp4UGxWCUX+rLcTRRS3bHRWc7NFbn8FoEhjJbTw?=
 =?iso-8859-1?Q?4nherk09U+WlZbwucdvCabaL3Kvz/Wkk4XcPrilex1UeSojA/RrN9RcZjq?=
 =?iso-8859-1?Q?UWM9RIQckB6Lg/sKCsRFxVaD6ynGpzTsNHzjkXfrjU6fQaHDWdaS2wBWS2?=
 =?iso-8859-1?Q?DXEXVatnvgNFo5DORajIWnKDpXWGbOzFirHI+kXD72bbvSVtpAe4KRESAp?=
 =?iso-8859-1?Q?9t3C7GhdGAmLX1zLCn5f2MTKKuRthGckWHv+xy0QiVuXDqJQMrYTkA7BTn?=
 =?iso-8859-1?Q?tQh1XiIWlS6sEePRGPlyb/Sms+IiN6gcsjzms8fT+6Ttn+PVId2UW60eDk?=
 =?iso-8859-1?Q?Xjd04umm4bLD+CoFg2yWUfI4rD/ZbwyAYkz204tIRbTuRO3Ef41B3iaN+p?=
 =?iso-8859-1?Q?vxTyjbXVjMuJIlVc2Y6A+2eeftr2g0L6qE8epNajAkZEzchPKTNhOeU1qF?=
 =?iso-8859-1?Q?oymm1hSHZlXapUYNUALXla69LcH4saF5MtotJw6Y2F4WnCGOCxDhm/XT8m?=
 =?iso-8859-1?Q?Pvp5k+Ok1GvOwUZU9OW6NmaoNRGvXF5/O0vrZZPD6XXVOcdVxzooCxTIkg?=
 =?iso-8859-1?Q?ZBGq8juWaWQRG2PLjRNSQszXmYdYPPfeVb/CUS0Q4x3Opf0JBka/WMAlPs?=
 =?iso-8859-1?Q?kAqnBwYkmlhM2VxpT1G1Eiv2s0yeTpEtfx6oK/qVmOSiC6/H6wkDgl8/Mm?=
 =?iso-8859-1?Q?TNiOwxugtzYGL/K+2WqzVY21VrXzOlPrLMTPr+QXzHhY+7hnCio4MOrGW3?=
 =?iso-8859-1?Q?mbrHvvuacOOfATrQ5aWAUiFZxLP905in+ccBu9NvQOHuFQvedwxTKhURhj?=
 =?iso-8859-1?Q?ptYkKm5SofSyy6Mbn8HtxY9noB/dUuR0JD7LZ2XL3EqO4D4OxptvHMHYlk?=
 =?iso-8859-1?Q?dB61zaxNCtGMWonpTJeyxk7TEnWqLOdawqD8yze0h7xod5o+pc5L8InvrJ?=
 =?iso-8859-1?Q?QA5tHYCMT5XLUJy770dmgHPFbK30hpJeZrx4HMaK1uUXl4rGXQZm7gMgoX?=
 =?iso-8859-1?Q?Jl6iWGkxwfU6qK0O5H7kVX8cblCJDzrcc3?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 17908ac8-9e1a-4c6e-567d-08dd761cf263
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2025 21:41:25.6491 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fL7cZ1BVhDzRmQ/FqxiXu7USEMV/QjiugXGtcf7L5JoDvVRUMRVkfadX0MOe3fhnGbR5rHBMmy/C6TU4JK+hTA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5097
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

On Mon, Apr 07, 2025 at 11:41:38PM +0300, Almahallawy, Khaled wrote:
> On Mon, 2025-04-07 at 10:04 +0300, Imre Deak wrote:
> > On Fri, Apr 04, 2025 at 05:34:33PM -0700, Khaled Almahallawy wrote:
> > > With all the pieces for UHBR SST LT implemented, we can now enable
> > > LT
> > > fallback switching between SST UHBR and non-UHBR link rates.
> > > 
> > > [...]
> > > 
> > > @@ -1303,7 +1233,7 @@ static int
> > > intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
> > >  		return 0;
> > >  	}
> > >  
> > > -	if (!reduce_link_params(intel_dp, crtc_state,
> > > &new_link_rate, &new_lane_count))
> > > +	if (!reduce_link_params_in_bw_order(intel_dp, crtc_state,
> > > &new_link_rate, &new_lane_count))
> > 
> > On SST - during state computation - a minimum link configuration
> > required for the mode was selected to beging with. Simply reducing
> > that
> > link config further in BW order as for MST (which selected the
> > maximum
> > link config to begin with) doesn't work.
> > 
> 
> Thank you for the review.
> 
> Just to clarify what we're seeing, we used the following hack to
> simulate a faulty cable that can only carry 1 lane RBR:
> 
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1026,7 +1026,11 @@
> intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp,
> -       training_pattern = intel_dp_training_pattern(intel_dp,
> crtc_state, dp_phy);
> +       if(intel_dp_is_edp(intel_dp) || (crtc_state->lane_count == 1 &&
> crtc_state->port_clock == 162000))
> +               training_pattern = intel_dp_training_pattern(intel_dp,
> crtc_state, dp_phy);
> +       else
> +               training_pattern = DP_TRAINING_PATTERN_1;
> +
> @@ -1419,7 +1423,7 @@ intel_dp_128b132b_lane_eq(struct intel_dp
> *intel_dp,
>         /* Start transmitting 128b/132b TPS2. */
>         if (!intel_dp_set_link_train(intel_dp, crtc_state, DP_PHY_DPRX,
> -                                    DP_TRAINING_PATTERN_2)) {
> +                                    DP_TRAINING_PATTERN_1)) {
>         }
> 
> 
> Below is the default behavior without these changes:
> 
> adjusted mode: "3840x2160": 60 533250 3840 3888 3920 4000 2160 2163
> 2168 2222 0x48 0x9
> Link Training failed at link rate = 540000, lane count = 4
> adjusted mode: "3840x2160": 60 533250 3840 3888 3920 4000 2160 2163
> 2168 2222 0x48 0x9
> Link Training failed at link rate = 540000, lane count = 4
> generating connector hotplug event
> adjusted mode: "3840x2160": 60 533250 3840 3888 3920 4000 2160 2163
> 2168 2222 0x48 0x9
> Link Training failed at link rate = 270000, lane count = 4
> generating connector hotplug event
> adjusted mode: "3840x2160": 60 533250 3840 3888 3920 4000 2160 2163
> 2168 2222 0x48 0x9
> Link Training failed at link rate = 162000, lane count = 4
> generating connector hotplug event
> adjusted mode: "3840x2160": 60 533250 3840 3888 3920 4000 2160 2163
> 2168 2222 0x48 0x9
> 128b/132b Link Training failed at link rate = 1000000, lane count = 2
> generating connector hotplug event
> adjusted mode: "3840x2160": 60 533250 3840 3888 3920 4000 2160 2163
> 2168 2222 0x48 0x9
> pica hotplug event received, stat 0x00020000, pins 0x00000400, long
> 0x00000000
> 128b/132b Link Training failed at link rate = 1000000, lane count = 1
> Can't reduce link training parameters after failure
> 
> It uses the fallback code we propose to delete. It is holding the lane
> count and dropping the link rate starting from 4xHBR2, which was
> computed to the minimum required for 4k@60. In the next loop, for 2
> lanes, it went up to the maximum common rate, UHBR10. Because of the
> condition in reduce_link_rate, it refuses to drop to non-UHBR rates and
> fails to train the monitor.

The following enables the fallback between UHBR and non-UHBR rates:

@@ -1223,7 +1223,6 @@ static bool reduce_link_params_in_bw_order(struct intel_dp *intel_dp,
 static int reduce_link_rate(struct intel_dp *intel_dp, int current_rate)
 {
        int rate_index;
-       int new_rate;

        if (intel_dp->link.force_rate)
                return -1;
@ -1235,13 +1234,7 @@ static int reduce_link_rate(struct intel_dp *intel_dp, int current_rate)
        if (rate_index <= 0)
                return -1;

-       new_rate = intel_dp_common_rate(intel_dp, rate_index - 1);
-
-       /* TODO: Make switching from UHBR to non-UHBR rates work. */
-       if (drm_dp_is_uhbr_rate(current_rate) != drm_dp_is_uhbr_rate(new_rate))
-               return -1;
-
-       return new_rate;
+       return intel_dp_common_rate(intel_dp, rate_index - 1);
 }

> However, with the proposed changes, we get the following:

The problem with that as I described above is that an SST link doesn't
get initially trained using the maximum link capabilities as opposed to
an MST link. For instance, in the example below 1000000x2 will not be
used at all and also get disabled for future modesets on the same link,
because the minimal link config (540000x4) initially used for the given
mode has a lower BW than that of 1000000x2. However 1000000x2 could work
fine (for instance because the limitation is due to the number of lanes
- as in a faulty cable, not due to the link rate).

> adjusted mode: "3840x2160": 60 533250 3840 3888 3920 4000 2160 2163
> 2168 2222 0x48 0x9
> Link Training passed at link rate = 810000, lane count = 4
> Link Training failed at link rate = 540000, lane count = 4
> adjusted mode: "3840x2160": 60 533250 3840 3888 3920 4000 2160 2163
> 2168 2222 0x48 0x9
> Link Training failed at link rate = 540000, lane count = 4
> generating connector hotplug event
> adjusted mode: "3840x2160": 60 533250 3840 3888 3920 4000 2160 2163
> 2168 2222 0x48 0x9
> Link Training failed at link rate = 810000, lane count = 2
> generating connector hotplug event
> adjusted mode: "3840x2160": 60 533250 3840 3888 3920 4000 2160 2163
> 2168 2222 0x48 0x9
> 128b/132b Link Training failed at link rate = 1000000, lane count = 1
> generating connector hotplug event
> adjusted mode: "3840x2160": 60 533250 3840 3888 3920 4000 2160 2163
> 2168 2222 0x48 0x9
> Link Training failed at link rate = 540000, lane count = 2
> generating connector hotplug event
> adjusted mode: "3840x2160": 60 533250 3840 3888 3920 4000 2160 2163
> 2168 2222 0x48 0x9
> Link Training failed at link rate = 270000, lane count = 4
> generating connector hotplug event
> adjusted mode: "3840x2160": 60 533250 3840 3888 3920 4000 2160 2163
> 2168 2222 0x48 0x9
> Link Training failed at link rate = 810000, lane count = 1
> generating connector hotplug event
> adjusted mode: "3840x2160": 60 533250 3840 3888 3920 4000 2160 2163
> 2168 2222 0x48 0x9
> Link Training failed at link rate = 162000, lane count = 4
> generating connector hotplug event
> adjusted mode: "3840x2160": 30 297000 3840 4016 4104 4400 2160 2168
> 2178 2250 0x40 0x5
> Link Training failed at link rate = 540000, lane count = 1
> generating connector hotplug event
> adjusted mode: "3840x2160": 30 297000 3840 4016 4104 4400 2160 2168
> 2178 2250 0x40 0x5
> Link Training failed at link rate = 270000, lane count = 2
> generating connector hotplug event
> adjusted mode: "3840x2160": 30 297000 3840 4016 4104 4400 2160 2168
> 2178 2250 0x40 0x5
> Link Training failed at link rate = 162000, lane count = 2
> generating connector hotplug event
> adjusted mode: "2560x1440": 60 241500 2560 2608 2640 2720 1440 1443
> 1448 1481 0x40 0x9
> Link Training failed at link rate = 270000, lane count = 1
> generating connector hotplug event
> adjusted mode: "1920x1080": 60 148500 1920 2008 2052 2200 1080 1084
> 1089 1125 0x40 0xa
> Link Training passed at link rate = 162000, lane count = 1
> 
> 
> We can see that it follows the DP2.1 specs, page 973:
> 
>    1 If 128b132b_DP_Supported?
>      a If support 4 lanes?
>        4 With supported bit rate configuration UHBR10, fallback as
> follows:
>        	 4L UHBR10 -> 4L HBR3 -> 2L UHBR10 -> 4L HBR2 -> 2L HBR3 ->
> 	 1L UHBR10 -> 2L HBR2 -> 4L HBR -> 1L HBR3 -> 4L RBR -> 1L
> HBR2 ->
> 	 2L HBR -> 2L RBR -> 1L HBR -> 1L RBR
> 
> 
> So, are we missing something?
> 
> Thank You
> Khaled
> 
> 
> 
> > >  		return -1;
> > >  
> > >  	if (intel_dp_is_edp(intel_dp) &&
> > > -- 
> > > 2.43.0
> > > 
> 
