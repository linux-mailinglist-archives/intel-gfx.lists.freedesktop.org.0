Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B08A4C96C2E
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Dec 2025 11:55:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14BD210E39D;
	Mon,  1 Dec 2025 10:55:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dkMi61J2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C675310E39E;
 Mon,  1 Dec 2025 10:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764586526; x=1796122526;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=KfN07TpgP8bC5Czw+ceYlnm44VgDoYNo4lI73Tvi3bY=;
 b=dkMi61J21Ms7aiEMeo+iArWFrUCx/YX6XfQorMwzUOX+yTuH0ZCAREdL
 GRmP2VHS2G2lmZI3TkVsZTaxAt1oqqyxcju+PSpkBEqDUBq+0x0nVG7xN
 hhRYPKqZzeTcOGMxPRZ4/z+tbPZib55eF8C9GSpPRGEhi6CwiTT34IsZF
 c2N9Iyp98DuxKSR5sqmLc9qq6bPEdIvOLiNdQebdHBwgkWUFvgcspl/9D
 uX0+osHESwjZ++ScPM0FqjcViVP2eXwNfY6V/1huz9GNJg3P7V8DwrwPw
 I21Fe+nCrUg9VBFx2V4cwBSeAHX0ucNS54BCktvejv46XOTyDOC0C/Dsn g==;
X-CSE-ConnectionGUID: kIFWQa5RQky6uQW00hEguw==
X-CSE-MsgGUID: UMO4oDj0Rta1gpY2XKDdLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11629"; a="66553230"
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="66553230"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 02:55:26 -0800
X-CSE-ConnectionGUID: Fg4gvcojQry4iWeFbwqTFg==
X-CSE-MsgGUID: 2WE2HdTsQYC2TKrUCMCdsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="198986985"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 02:55:25 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 02:55:24 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 1 Dec 2025 02:55:24 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.11) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 02:55:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZqpIUqjt0Rvwps0nk/TsDyCCVNk+QwAYHuDyWSjvE7IcUtY0eOKoPGMaBK9oPHJkzgrm3bZdJoyPsevHYCvT21qjal+sEFzicyaOSpIPEdMVj3hLu0JFm6vCo2hWJSDtWC9AM+iYu3v5//JtBQ7Wr5/xaWp6enfV6dP2bWo3qNnwJsQVVs7VgkO+KgSKzIjd6mcYj/SrOnSBWqgqbChAtsUxAQelH/PbVVsYQzFMssUux+vqkzdR850NTgJx5fbLP9yg6CbkbTZexRGGskfGkjc9XeuHHCdyeR2A7nDkuK6uhPyOZTG3YbsXARoojL6A5xrcU/rSme6+cyt/ZfkGlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0/3TtcMERJnA3D1h26he2MyY2/mITA26VFcFI+KFeCY=;
 b=B5ZKlbCIyCr3Kjg+O6dIDUkzinTLGCSiZJ0QIiMGdcjdhXhM6aP2v8DqPQp9m4UwwHW6JZVRhoUlGXGnZ8p2LJNJtDKylTM0wGCJUfAX3onVXCNKF5C6hzsNwRYx+RRYBlibmZzLW2KsdxYWfzTCj5F8x1Evw1vpHSdrSGzlDQzLjKsapQA+lWDUcpLGCR2prDB25bC6cej+f6PMViNi+wWu99L07vdTrR7ZAq6nEuT+uTcM+nZDb91Lvw1V/8s7hsXzJx+0TPkehZf3311Fv3ocMflsqY1pczg3ymK/46f14ii9M1YfRjoKNehL7vAUEESrokVR+6/wJvLT8s/2Nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CO1PR11MB4900.namprd11.prod.outlook.com (2603:10b6:303:9e::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Mon, 1 Dec
 2025 10:55:22 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Mon, 1 Dec 2025
 10:55:21 +0000
Date: Mon, 1 Dec 2025 12:55:17 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 6/8] drm/i915/psr: Move Panel Replay DSC sink support
 data to intel_connector
Message-ID: <aS10FQaKYS-Vj-cW@ideak-desk>
References: <20251121111655.164830-1-jouni.hogander@intel.com>
 <20251121111655.164830-7-jouni.hogander@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251121111655.164830-7-jouni.hogander@intel.com>
X-ClientProxiedBy: LO4P265CA0016.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2ad::10) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CO1PR11MB4900:EE_
X-MS-Office365-Filtering-Correlation-Id: 999dd236-7c92-483e-1187-08de30c81fbb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?+0EE8NKLgM2vg4bg1rIS0UadCBK739qgRn+MIaz5XuLKas6115YZ9vALm7?=
 =?iso-8859-1?Q?hoXY4WtkG2uTL1MS8gTc/05KMJc4CzAUlP7ESV5JZahlWqg8KCyoufMQzz?=
 =?iso-8859-1?Q?ZFydJpA0cfhypUXVInwigxQE7nUb5vRzmzr/t/3BCk6pWtOTyOMOKernjm?=
 =?iso-8859-1?Q?cDppXV0WhXQfQyN2chsLK7CC6/XMwXQVfVEypZD7IPhm4pum2t6OMqdaXo?=
 =?iso-8859-1?Q?B3ybrAFuU00b//67+dFd5kpG959xdPtBogtnwHXXi0CA4XarD99h2aqqHz?=
 =?iso-8859-1?Q?INZbe94Yj4HOiif3cFJ5oFe3ItRmpAbBK/qL/xZ3l9SqfspbBVPm5ZpbCW?=
 =?iso-8859-1?Q?pQO8UtyBNGxYBgYebhsOEmYhUPMs3rS/UGL1e8K2Dp+cOIwPrfkK2YRiwV?=
 =?iso-8859-1?Q?ycyGmaJP2Eer0MOpeStSCFZPlDH2WsU4gCqrjPkW+wUYACwaEiNMJs8als?=
 =?iso-8859-1?Q?hfb15EHla7WoYXEFGu/hCG/G6qJBUGGmQTX1DNrwyQ7/tR8wIZZAePFyiw?=
 =?iso-8859-1?Q?SdgrixpkGGNzBKEkLqAcXFTvnr3/fEmguOTrQuRbiE4q4MEaU4E2ML0XGh?=
 =?iso-8859-1?Q?auCYSFN7cF/qF3OTkGxB1kyPpMfb+n0Jn3IZ/p/vYCOYClgHM4h9EOaUkh?=
 =?iso-8859-1?Q?6IWymEB5pKMUge/hk2wF3O8kOACutSRbVOoE35Fhom1og527FkXu7OdLg2?=
 =?iso-8859-1?Q?4isWY174f9VrxAjQEUU8CaMZmLmWDudciajzF7XZDicpGWBsJDlVm4D3Jw?=
 =?iso-8859-1?Q?5qvLE7n0zDnpDJpQQjgMpCwzMjKel1hJKPXtLXiztytNV+b6IFBdO8H3fv?=
 =?iso-8859-1?Q?aXhPaAoQRpX54gRJY3GrXJjmECO9sb421qUeMMoFXpIIsP/GKaFdHjhMHP?=
 =?iso-8859-1?Q?jGFxoscvS3mv0NPOrIhu5RlF41crfQHKaVxC6cDir74mfe9y6u7TXXEcwJ?=
 =?iso-8859-1?Q?+8fcgubZWbTbDn0InXoisyP9XHQsOLyEVqsWfUMPt1KkO4G/YjKyCUjY5e?=
 =?iso-8859-1?Q?91xbSmSF0zCIoiKI1MlSXC1m8V3Qbw1FoFU/5cKq9MrpzATGbpX7JoWdwA?=
 =?iso-8859-1?Q?3K7G5sQZyxDWTCLpX6G8eu4//uVV0cPsC7oSjFaKOiYujDIpfVD2w95veq?=
 =?iso-8859-1?Q?bCRl6pKyuuhItzTHdhZsPDKXJtoNpBJ9vcEZawUhgaRmn4U1xXBbuqANHI?=
 =?iso-8859-1?Q?yeeLf+BQ9vTUwYO7Vmm/nEPyQTOtcw+zZVxsy6oqioMuM4/pKAx4wsiFwc?=
 =?iso-8859-1?Q?mb3azMbG47Gc/tkwzyuK3u7VHNHaPCnnrSVy3NNoAy5tfOljr1ftMxNtsN?=
 =?iso-8859-1?Q?2/3zcMpEWz7uUCe24NqZz2pbUjDlDGsg8Ce/pdBQpggLvxSaVwp1WHq76A?=
 =?iso-8859-1?Q?4vRIyfkQ2HY2lwswSTard3b9aD3AzRPcT9ccNJEU2Q5DwCO0SKG0+dltPL?=
 =?iso-8859-1?Q?B87Nvo+kVeNTtqTPfFBsUU+VO1K/mM50eYgm6utCyJx/weJRI4ZEbyPoU2?=
 =?iso-8859-1?Q?A3jJ0fRWz3COv+PDq0Mgl9?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?7lWYwrMBF38hUuMN5tsVM3Ro64acg2zwshxpD0SsNxvYeMFiO4yyzCsre+?=
 =?iso-8859-1?Q?E1Qc3RCPDfJPMPb1HFldHwNpJkVdtdLN2NT4QWVgM/ITwEvI2rX1CY8c91?=
 =?iso-8859-1?Q?5jaVq9xDdpe8DKySqWEojmWPauo91UwyNqwS1dLY6BjnHwZ2cMAFe/fjNn?=
 =?iso-8859-1?Q?S4cJe+QePW/WByxy3oxZnzEW2RfXsrDBDM+ArSYnbcNiSxUJ0IxCbbnuwl?=
 =?iso-8859-1?Q?yESWasVmJ+4gTK9L6TkR8iyE0ecrYkXxrwCdHJI8/oyiSJ3t3bsz1QPEdr?=
 =?iso-8859-1?Q?p1keSScYhd9ba6tD0q2ANv61xetEXB4gCzUujMPlZ2SSAQNw202s3rbtEB?=
 =?iso-8859-1?Q?StroTfdVXOIivUCJbVEakatLWATzcmLTUKNP1zIOnS0bHMPQRuDAidjYlE?=
 =?iso-8859-1?Q?SX3esXAOV7TJXusjDdOSOQqKsZAKOd9+3sPWwhiv0UerTAa30UTIrxT90v?=
 =?iso-8859-1?Q?7INmN6rywX4CYVDGjiYuo0BvMP7iwGKLR7vgkret7LeppHnpYJ1vXH7mbY?=
 =?iso-8859-1?Q?npqCMh7v0Drgc8QTpWd8S5Tp4PoFtl0CvlpBMTrBdmCKWSM6CoEaSGGrNl?=
 =?iso-8859-1?Q?ykGTDHb0/E7sdZvCiIkht7uOyUkE0+3x5uy3YS3xNrUtZotNHhcfyyrEN3?=
 =?iso-8859-1?Q?Vs+Iz/1G4YLC97CLB1MMLQQmCQmzGdqZRV5IxGHG0IBtd2Y+BdQnGOFqdU?=
 =?iso-8859-1?Q?4OhQQJ+MDBDsdQ+t4ZG9ESf40C8iKEeDBbDCr3USpLUeMuaiaqz65A9wEl?=
 =?iso-8859-1?Q?cDQLpyAQKd26QhmhJ+t/JBOQIGtY8Ojj7sDyeTt6Whj0645zhCD8BW2WpM?=
 =?iso-8859-1?Q?n5Gj9tLmhGT8hR3zgbYPIv1bxUs6qMEUbmi/xsriLS/O0rgshqo+r7571M?=
 =?iso-8859-1?Q?2V1dyK2XPfPAmxw0PNHQCQYADnHHRkbEphCIjTGjh6u9HTCmocN3bp9S4b?=
 =?iso-8859-1?Q?u3MdSEx33EfT6NOGCh1edrXOVom0WcjJarfNoctFsCcsNpePvmwUW8D7m6?=
 =?iso-8859-1?Q?sUtq1ZVd1Eee0XYbmdXdiaf9iaiqNxiod+VPOGZyiw/X/HI40H+HiCHzVP?=
 =?iso-8859-1?Q?7ym8EmBArXRzVq7tQO9yEDZqFOHwbXR7IGf6DN+UOHG8Ym+CkaNnsJgF8J?=
 =?iso-8859-1?Q?funAwEXEBSqtlteVMg23D82eWubPZh41n+Hp7ilrrQUnRMjEn2l89P+2gJ?=
 =?iso-8859-1?Q?vJLYywc3cMpOrKVga/FXbWDDNhQZJYdKaJ9uFxP1V9rnTeU5jIf4dqrmgy?=
 =?iso-8859-1?Q?oOj4l1SF+k8Lr26CKMRmygDLNwhUTOgIt+/F2z86CqXYthbDHSrg8h/DGA?=
 =?iso-8859-1?Q?GfULrMaNWB7rClgYx1USFQLXlT5f3dwoPpGeupGPHDfLLfLzjUhm1nfQdF?=
 =?iso-8859-1?Q?/wZsrY7luIprqzrVFIgztjjqy8LgNUu9HEEEMs6MowIFD5/Nw6GL3Gwlj7?=
 =?iso-8859-1?Q?fX5pr+P26RQKMeEKG1fj8rRRXq8cltnfkUeTJNQfOK5lLfqzqBb3dYp/z5?=
 =?iso-8859-1?Q?eV7SnkX1sDCIzJVB9d16XD6OOVxUtdVD7Q1YF628wBm7xvnEE+dJa8M1FV?=
 =?iso-8859-1?Q?llR6nVYQWNQ+24ZA53P7L85ViuK76Pu+phljVAgdbrjIp6suXF8xWFhHl6?=
 =?iso-8859-1?Q?waRDvFP4Ftkiddf3mYtEjt0Y/45k0pd64rxjs+uncGNOyhcAp+u03QRVj0?=
 =?iso-8859-1?Q?/ICk9bHQIlgUgFaT/94xhgvmrrPLkzheGck2YCGG?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 999dd236-7c92-483e-1187-08de30c81fbb
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2025 10:55:21.8467 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VlW/VMGIEcvkMOSKLnVmmKGmRKzIjcnD7ipIJz6vepV8OHCItFUhooEuEXcodl82o6dLBaPzhy8f9eAV90euXg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4900
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

On Fri, Nov 21, 2025 at 01:16:53PM +0200, Jouni Högander wrote:
> As a preparation for MST Panel Replay we need to move Panel Replay sink
> related data into intel_connector. Move Panel Replay DSC sink support data
> as well into intel_connector.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_display_types.h    | 15 ++++++++-------
>  drivers/gpu/drm/i915/display/intel_dp.c           |  2 +-
>  drivers/gpu/drm/i915/display/intel_psr.c          | 13 +++++++------
>  3 files changed, 16 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 8587d2c527f72..e1d47496ea4de 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -509,6 +509,12 @@ struct intel_hdcp {
>  	bool force_hdcp14;
>  };
>  
> +enum intel_panel_replay_dsc_support {
> +	INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED,
> +	INTEL_DP_PANEL_REPLAY_DSC_FULL_FRAME_ONLY,
> +	INTEL_DP_PANEL_REPLAY_DSC_SELECTIVE_UPDATE,
> +};
> +
>  struct intel_connector {
>  	struct drm_connector base;
>  	/*
> @@ -566,6 +572,8 @@ struct intel_connector {
>  		} dsc_branch_caps;
>  
>  		struct {
> +			enum intel_panel_replay_dsc_support dsc_support;
> +
>  			u16 su_w_granularity;
>  			u16 su_y_granularity;
>  		} panel_replay_caps;
> @@ -967,12 +975,6 @@ struct intel_csc_matrix {
>  	u16 postoff[3];
>  };
>  
> -enum intel_panel_replay_dsc_support {
> -	INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED,
> -	INTEL_DP_PANEL_REPLAY_DSC_FULL_FRAME_ONLY,
> -	INTEL_DP_PANEL_REPLAY_DSC_SELECTIVE_UPDATE,
> -};
> -
>  struct scaler_filter_coeff {
>  	u16 sign;
>  	u16 exp;
> @@ -1744,7 +1746,6 @@ struct intel_psr {
>  	bool source_panel_replay_support;
>  	bool sink_panel_replay_support;
>  	bool sink_panel_replay_su_support;
> -	enum intel_panel_replay_dsc_support sink_panel_replay_dsc_support;
>  	bool panel_replay_enabled;
>  	u32 dc3co_exitline;
>  	u32 dc3co_exit_delay;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 7195c408d93ab..d32f476c288c1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6053,7 +6053,7 @@ intel_dp_detect(struct drm_connector *_connector,
>  		memset(connector->dp.pr_dpcd, 0, sizeof(connector->dp.pr_dpcd));
>  		intel_dp->psr.sink_panel_replay_support = false;
>  		intel_dp->psr.sink_panel_replay_su_support = false;
> -		intel_dp->psr.sink_panel_replay_dsc_support =
> +		connector->dp.panel_replay_caps.dsc_support =
>  			INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED;
>  
>  		intel_dp_mst_disconnect(intel_dp);
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index b488be8c917dc..4bae39f745ea0 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -644,13 +644,13 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp, struct intel_conn
>  		_panel_replay_compute_su_granularity(intel_dp, connector);
>  	}
>  
> -	intel_dp->psr.sink_panel_replay_dsc_support = compute_pr_dsc_support(connector);
> +	connector->dp.panel_replay_caps.dsc_support = compute_pr_dsc_support(connector);
>  
>  	drm_dbg_kms(display->drm,
>  		    "Panel replay %sis supported by panel (in DSC mode: %s)\n",
>  		    intel_dp->psr.sink_panel_replay_su_support ?
>  		    "selective_update " : "",
> -		    panel_replay_dsc_support_str(intel_dp->psr.sink_panel_replay_dsc_support));
> +		    panel_replay_dsc_support_str(connector->dp.panel_replay_caps.dsc_support));
>  }
>  
>  static void _psr_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector)
> @@ -1659,7 +1659,7 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
>  			goto unsupported;
>  
>  		if (intel_dsc_enabled_on_link(crtc_state) &&
> -		    intel_dp->psr.sink_panel_replay_dsc_support !=
> +		    connector->dp.panel_replay_caps.dsc_support !=
>  		    INTEL_DP_PANEL_REPLAY_DSC_SELECTIVE_UPDATE) {
>  			drm_dbg_kms(display->drm,
>  				    "Selective update with Panel Replay not enabled because it's not supported with DSC\n");
> @@ -1756,7 +1756,7 @@ static bool _panel_replay_compute_config(struct intel_dp *intel_dp,
>  	}
>  
>  	if (intel_dsc_enabled_on_link(crtc_state) &&
> -	    intel_dp->psr.sink_panel_replay_dsc_support ==
> +	    connector->dp.panel_replay_caps.dsc_support ==
>  	    INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED) {
>  		drm_dbg_kms(display->drm,
>  			    "Panel Replay not enabled because it's not supported with DSC\n");
> @@ -1841,6 +1841,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
>  			      struct drm_connector_state *conn_state)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
> +	struct intel_connector *connector = to_intel_connector(conn_state->connector);
>  	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>  
>  	if (!psr_global_enabled(intel_dp)) {
> @@ -1872,7 +1873,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
>  	}
>  
>  	/* Only used for state verification. */
> -	crtc_state->panel_replay_dsc_support = intel_dp->psr.sink_panel_replay_dsc_support;
> +	crtc_state->panel_replay_dsc_support = connector->dp.panel_replay_caps.dsc_support;
>  	crtc_state->has_panel_replay = _panel_replay_compute_config(intel_dp,
>  								    crtc_state,
>  								    conn_state);
> @@ -4144,7 +4145,7 @@ static void intel_psr_sink_capability(struct intel_dp *intel_dp,
>  	seq_printf(m, ", Panel Replay Selective Update = %s",
>  		   str_yes_no(psr->sink_panel_replay_su_support));
>  	seq_printf(m, ", Panel Replay DSC support = %s",
> -		   panel_replay_dsc_support_str(psr->sink_panel_replay_dsc_support));
> +		   panel_replay_dsc_support_str(connector->dp.panel_replay_caps.dsc_support));
>  	if (connector->dp.pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
>  	    DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT)
>  		seq_printf(m, " (Early Transport)");
> -- 
> 2.43.0
> 
