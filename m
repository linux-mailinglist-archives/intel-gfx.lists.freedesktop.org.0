Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C031CB9961
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 19:42:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE00410E07C;
	Fri, 12 Dec 2025 18:42:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rp8zJCi1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1350310E07C;
 Fri, 12 Dec 2025 18:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765564920; x=1797100920;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=NyM9Z5EcUDNVX1MTx5tI0jxTSaBWG4M2iEKKTE2BmtM=;
 b=Rp8zJCi1G0uJ3vwOt14eqCEsYZQBmQTccYKZkJ/bK2ZaRVowoniBAtpI
 Yf8w6wOXCNDaMq9Lke1aVc87b1CUyBi5spbiPyYw17jOVau55BN+BItyY
 7+15u73gNkKeyRiML0b79mAtC0ra3LLBX2Vx6ohSJKhoVr7izicOR6lwl
 4VCcdK+rzlqMsIWAUsRCQmtYDOK8fjctrHXCWsNuts/HeReqV7BOEVc+F
 AxFkUIQcGtUfKFnk1Qj4DkB066DH7AkyVgF0jfKZqQB4Sz3hEcssOkDfO
 LXYBP+0Wg+XvCqn5FiPE3sJzjt08yKOcUu/yye7XdjhRVBGXd2CUf7QmH Q==;
X-CSE-ConnectionGUID: xfxH2fvMRoqAGcj9iPVzQQ==
X-CSE-MsgGUID: dDnGNL1IQ6qMIAZVK0Gplg==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="70156878"
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="70156878"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 10:41:44 -0800
X-CSE-ConnectionGUID: h4yG7kbFSlSA63pFid1oPQ==
X-CSE-MsgGUID: xRTSXzuDQ9+Ai/ADos3/Kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="197649869"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 10:41:44 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 10:41:43 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 12 Dec 2025 10:41:43 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.65) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 10:41:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qX2+ftj1J2VKGh3wwhZA6JIrgpT3rz3zDq8OFeuLfo6GTSK+AkCYS4ufaIS1WAD1LRwYnjI3TcREfUpK5+4PnPJ/Dq4QhVJeTDio56iTDgzWR+7WiLGa02Ebe4ch3ToaiD3sRcACw/MzDFl6EWsTBW3zx/gWmkExL1yFOeYJxWAGKT7Y9jeJW07/OMYz+8Ee92afkiJWLJRrEpL0cEXYzdO2QXXB4T2D71Kf2njnwQhQCImEKjVj8viqefm39dMXkrqCu2YLGI5FsWD5wbQYAY6jSAgtl4etIlOHHigra22vBgdpkURHPUlpcWXJf1W1XcxPlncSIBVO0DeZnjwX+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IzBzJXd/AmYYoyl9OQHkt9mPV+U9OlApB4D9EkHP2v8=;
 b=IfpOndYz44Ru7IhllUBRkyTVrTkPkilVB1U1u8p5Giemwv7CQHqBUt7liH0CRNto0drgmhYGy2FGJ1k23W+wlWp/saZ+JX/O0iyNuoDQRNWjYSGkaZdyHZs3056PVWRedNwxl/zFDg/Bl7r9qaD1NDDPaA4NUna/wAmVOfyH9IKx3wEI4U0sjIBa6+Qsl0wbin2B6QWUzOB4yEIxpKDABPP0zlkvwTpyOB0hwg8EJFXhzOq/5PT7AGXgx/+NYRVRqhVmhlk5Ft7RlbzHF15nfvgXHvzCul3rCqHirMyfQIX+h/wXMM7fMBG2CdRO5YVNxbTJj9I5KFJGxA1XCX2UKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB4840.namprd11.prod.outlook.com (2603:10b6:510:43::16)
 by SA0PR11MB4623.namprd11.prod.outlook.com (2603:10b6:806:95::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.12; Fri, 12 Dec
 2025 18:41:41 +0000
Received: from PH0PR11MB4840.namprd11.prod.outlook.com
 ([fe80::7044:24a0:758a:4bfd]) by PH0PR11MB4840.namprd11.prod.outlook.com
 ([fe80::7044:24a0:758a:4bfd%2]) with mapi id 15.20.9412.011; Fri, 12 Dec 2025
 18:41:41 +0000
Date: Fri, 12 Dec 2025 20:41:08 +0200
From: Imre Deak <imre.deak@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 31/50] drm/i915/dp: Simplify computing DSC BPPs for DP-SST
Message-ID: <aTxhxNxQHAEiA5cq@ideak-desk>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-32-imre.deak@intel.com>
 <3637b184eaaa74fff1eea2f19ddd91565c63c154.camel@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3637b184eaaa74fff1eea2f19ddd91565c63c154.camel@intel.com>
X-ClientProxiedBy: LO4P265CA0046.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2ac::20) To PH0PR11MB4840.namprd11.prod.outlook.com
 (2603:10b6:510:43::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB4840:EE_|SA0PR11MB4623:EE_
X-MS-Office365-Filtering-Correlation-Id: 4f0da6ac-6990-41c1-f84e-08de39ae1783
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|366016|10070799003|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?3sP7zkE8mIjgpKNgMiusb9Kmc3R72QO5a2DHHTk1huyA+A44XytbMpe/Bj?=
 =?iso-8859-1?Q?sKRgeQQag02Fpzb8gli3BErN5YkqSNDDm7mywxWVeNkKlIvoGr3THYTeh5?=
 =?iso-8859-1?Q?81fI2dddpPpNTEFtwpCiB1D9tBskIeZgzgsuXLJkvJ28JhzVvv0jT9eMMV?=
 =?iso-8859-1?Q?YcdyMsgbzeDoawa4LkofkkKHxZIBhm4AlFpXxY0iUGmk6FqsDTcDtdSmGQ?=
 =?iso-8859-1?Q?IL5CV7YWkxAuDFZDe5Z4yH3nJdF/fjkY59cVnibaLFBI/JaP3GXynC80ox?=
 =?iso-8859-1?Q?pcfVloeYdjqo3+hAS+qrwnR4eW3vBNbd/VFWJ33a5yCbaCsn+PPRm1yO1s?=
 =?iso-8859-1?Q?/7t+wgDH7WmA6PdArGN+UCmgfKd23DWpOtQc3R+behSfq3LEDERT00+V3b?=
 =?iso-8859-1?Q?SK5kKVsROFptIaD+oZZ8z9wnTxL88tnPoZqaEIsfsgC5q+gb/eD7bX6jI7?=
 =?iso-8859-1?Q?vCM3cAGDNda5IZDxh4iLKg/O2abRA2fL6HmOkGZdti87L5e/p7FGVyVqCX?=
 =?iso-8859-1?Q?eUonx5XS2iNl3qEwqrqolJehFJVWNpfWKN3wjJORyOMZw1mClkkEzLcNX5?=
 =?iso-8859-1?Q?cFVxfX//u1R2tTxShb+5frxa0RGBmwJvKhEu7AWL+qF7XxzwyCNJckKyVc?=
 =?iso-8859-1?Q?bMGgOwrLCHRimmBP8mldv54vEz2i/OvF1T3/WwjgvgFLxDO7ld6xwhV5tb?=
 =?iso-8859-1?Q?22gE+9WJjH/39TRqg7ZdVcGAmk9KsemtfixkdTYxxX03PIOHR2HhDsttsC?=
 =?iso-8859-1?Q?+AasEWRPL2SVOkGrX3yCY1mzIHXRebASV6JqGbwhIJa0Ba2hA5+8/xTZoH?=
 =?iso-8859-1?Q?W04uCGlqXJhqWf0DG57Bqae+esQnGtudqg1nQE+L6qEqmmtZSyOaXsW9v6?=
 =?iso-8859-1?Q?KU5/qmB5jR/Wvp4fccjOqz9HPDNgkZUMu9ur02uSNbW+xqKwAwDXfRZExP?=
 =?iso-8859-1?Q?XwoHwoT7Hi+pgxx8XBuZcuK9kbYj4DEnO6YHbBO3wvkUY5LOTiTesputYx?=
 =?iso-8859-1?Q?e0B2EFxgYVpFSdRFM+JmedkNDyrlI5YkiVLUG8Do24Ny3aea3RRp6IYaWC?=
 =?iso-8859-1?Q?1josF2nrwVJS5eLEVjQmAowqkF/8eRuRptw7MpnLIhdeVGBhdn4YyYS5c/?=
 =?iso-8859-1?Q?jNyLpTx4opKZ+JqIy6qmO+xCWPnKastLGnrHK8xOXduNNENNXySt0z1rUK?=
 =?iso-8859-1?Q?29H5gE3YYbmFKGgyY3fG9elV1gSj5X37XFpRU3LEzCH0eDLabtzMWRG0TP?=
 =?iso-8859-1?Q?N2F9emE+vd3KCfmv5TnjDvntj+0jtIks82JlI+Jggu2togQln/g4g7uDTi?=
 =?iso-8859-1?Q?CmXccRe9vhqI+wiceKubU9/SuB//Ak78whKROlP1h5/VJpu1lH/iVXR7TZ?=
 =?iso-8859-1?Q?/mZhM1to32UKCl3HjJAK+IxLepbEoftnOPawu7wYDuPm8ZVrcDW/7FHZsY?=
 =?iso-8859-1?Q?Dg1uTx2ouj5ySahRcibpstOO3zEyddAGzdLx98diLsUOT2bHPl0/h3Z7an?=
 =?iso-8859-1?Q?WU2qOMYZfpvIW+/XGBkudf?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4840.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(10070799003)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?bqa3domWkaDHaesdZGX6kAI97Bxy7zHEdPm3fyiNibiudhZke+wER5J77u?=
 =?iso-8859-1?Q?HGLJ7ArlTWP8NOJBictiTwCi65JZt1Wg1SCfLc0jxXCtZGQ8f+FJSYTEJk?=
 =?iso-8859-1?Q?ButIvcz/AKnzZ4ojfks3MhuFs6gdfqkCGaA3PAVYq4OpJZxPedC9GCVt8h?=
 =?iso-8859-1?Q?Wy47ZuqNbqRvfdE8MxNN5cCB/QBJk1f8Vz1072wjQK2I7Or72vjgJdNcc4?=
 =?iso-8859-1?Q?LvvYOAAfS3ynZ8m8FI7iw1IwX7bLek5cz0wXxMcploasQwwSAFHqG1cdsm?=
 =?iso-8859-1?Q?O11dDtnQw6m9wLa8rEmyMjTRWUT25qTx49+N5sI/6ASsxIV04OG7MHvUu4?=
 =?iso-8859-1?Q?sTygA+0ArE2fAO0FhpQHBopBH1ob8inBthPe2JJRWgYwMAGYe4qJGG3zeP?=
 =?iso-8859-1?Q?80URo86Hp8E5gEhAF6A0/6E3aTPnlHy794VYftuaqixbsZwWXvRN8ACx//?=
 =?iso-8859-1?Q?EE55fpl4IPVP80n3qc+cJixcc/Lx8u12hSAoEeq515IVXjSA63tXLN31JS?=
 =?iso-8859-1?Q?0hHSm1nYwzxRgXaMM/dgsuYQF/uNy9VLecxoWLiNRce8w9zmZbKr/SRnBQ?=
 =?iso-8859-1?Q?qln1o41sJFHZtLoLDVD+zId6d6VgbHlntNJAVhZFglxeMuYRPvriTTqAf9?=
 =?iso-8859-1?Q?pNSpTjMWDAsMBQuvYfeMI5POIbt19tbKI7G1nCtjqkommaYNpQUPZ79PYD?=
 =?iso-8859-1?Q?spkwfyVH4mLRcFMVhNNPv3DEu5vnHiUBlAYZ1e01IYq9Tx1hpXjzaJRF3E?=
 =?iso-8859-1?Q?FxvFShca3Mpu900oCGSVK8Ffll7A04HI4Q5ktZO+DCDrMeaqJMKfP6cnJj?=
 =?iso-8859-1?Q?ihJLpilZj31li/CJGNycLEEtxx3uoiQOcUPNMyW3jtS0IKtwl+P/9bkS+H?=
 =?iso-8859-1?Q?7YpKK9ayM1kGjCGbkaVyKLjqf8VJEcBgFTIsqe+sHgazKre+2Bl1xoddro?=
 =?iso-8859-1?Q?mHxFw1/01liLZeBh2rBznp96+0BcMabwAdcSJ6TKq6lDXg2QfiESvgGUNK?=
 =?iso-8859-1?Q?riapIj2gFkQAlgxt7wvapCM9ApP09xleYsjCSIFlmPmybngAWv5Blkymf9?=
 =?iso-8859-1?Q?QMPpvI4ofR9swRU2ZW34Pw7Ce83wivxcRZK1Yh3dGbuSUrMZJPHpktdr8d?=
 =?iso-8859-1?Q?rDZ57RI1gKRyW9qvyr57u/DjZgoeM1BGY5FyLj2dcu0FW6bEdE9I2Q5ohS?=
 =?iso-8859-1?Q?ua+5TYIRD7O+NwhADfuDvGaDknm1WGzyDb0abkUqYQkefTgFHHMtYHM7vn?=
 =?iso-8859-1?Q?F9+tc70ZwoYnf4tDwkgsWQa6Cx/OpHQzwQudckpumvf5T8QyYllhCUT0cS?=
 =?iso-8859-1?Q?PRsdo4wcIczbHBQlw185LdhpQZ5C4jDtS21LH+eOYqwoLG4vLJ4yVlSPvT?=
 =?iso-8859-1?Q?vJ6srdD6n1mf5wuuHphKiH35EkM8rgRC+Cvb19UgsEYTKdqZplEj65pyvK?=
 =?iso-8859-1?Q?8qyQczpRmMEyGnbEc/hitdWwsUs/jt1TJTpVvpMDG9c0pt3s3PFl+5IzpJ?=
 =?iso-8859-1?Q?EvPLMaYMVl9lWHmm57NKuStu7MuL7eLLYAU91gIhG+ZC2NyDt6RAvxGcO1?=
 =?iso-8859-1?Q?rDFozEiELxGsEwMfeIR7zvIzuwGLWAXb6AMEDTakuBYZCWnMWh9pkir+7z?=
 =?iso-8859-1?Q?/UgmA+JzPVK+yPaXTnF1n+LcvakXpnWmg0CyK3v07MSwt8/QJapVlK46+3?=
 =?iso-8859-1?Q?XVwyiGCovZ4UJ3dFJhuBbPQ4wo91MzXrNrddGS1U?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f0da6ac-6990-41c1-f84e-08de39ae1783
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4840.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2025 18:41:41.7385 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oF3DVuVqKl0HYmDa7FjAtibAxdyOk1TtcnrM26s1wtoIKDyfsylw+ufTk8Xu1JeKTuy7vwZI1jA4zr4/hY+4kw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4623
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

On Fri, Dec 12, 2025 at 04:59:31PM +0200, Vinod Govindapillai wrote:
> On Thu, 2025-11-27 at 19:50 +0200, Imre Deak wrote:

> > The maximum pipe BPP value (used as the DSC input BPP) has been
> > aligned already to the corresponding source/sink input BPP
> > capabilities in intel_dp_compute_config_limits(). So it isn't needed
> > to perform the same alignment again in
> > intel_dp_dsc_compute_pipe_bpp() called later, this function can
> > simply use the already aligned maximum pipe BPP value, do that.
> > 
> > Also, there is no point in trying pipe BPP values lower than the
> > maximum: this would only make dsc_compute_compressed_bpp() start
> > with a lower _compressed_ BPP value, but this lower compressed BPP
> > value has been tried already when dsc_compute_compressed_bpp() was
> > called with the higher pipe BPP value (i.e. the first
> > dsc_compute_compressed_bpp() call tries already all the possible
> > compressed BPP values which are all below the pipe BPP value passed
> > to it). Simplify the function accordingly trying only the maximum
> > pipe BPP value.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 29 +++++++----------------
> > --
> >  1 file changed, 8 insertions(+), 21 deletions(-)
> > 
> 
> I guess, typically this is a two patch solution. But considering the
> code changes it make sense to have it as one patch.

Yes, the current code before this patch combines the alignment and
fallback logic, so I found it clearer to remove both in one patch,
instead of tweaking the code in one patch to do only one of these and
then remove the tweak in a separate patch.

> 
> Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index ee33759a2f5d7..902f3a054a971 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -2294,11 +2294,8 @@ static int
> > intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
> >  					 struct drm_connector_state *conn_state,
> >  					 const struct link_config_limits *limits)
> >  {
> > -	const struct intel_connector *connector =
> > -		to_intel_connector(conn_state->connector);
> > -	u8 dsc_bpc[3] = {};
> >  	int forced_bpp, pipe_bpp;
> > -	int num_bpc, i, ret;
> > +	int ret;
> >  
> >  	forced_bpp = intel_dp_force_dsc_pipe_bpp(intel_dp, limits);
> >  
> > @@ -2311,25 +2308,15 @@ static int
> > intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
> >  		}
> >  	}
> >  
> > -	/*
> > -	 * Get the maximum DSC bpc that will be supported by any valid
> > -	 * link configuration and compressed bpp.
> > -	 */
> > -	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd, dsc_bpc);
> > -	for (i = 0; i < num_bpc; i++) {
> > -		pipe_bpp = dsc_bpc[i] * 3;
> > -		if (pipe_bpp < limits->pipe.min_bpp || pipe_bpp > limits->pipe.max_bpp)
> > -			continue;
> > +	pipe_bpp = limits->pipe.max_bpp;
> > +	ret = dsc_compute_compressed_bpp(intel_dp, pipe_config, conn_state,
> > +					 limits, pipe_bpp);
> > +	if (ret)
> > +		return -EINVAL;
> >  
> > -		ret = dsc_compute_compressed_bpp(intel_dp, pipe_config, conn_state,
> > -						 limits, pipe_bpp);
> > -		if (ret == 0) {
> > -			pipe_config->pipe_bpp = pipe_bpp;
> > -			return 0;
> > -		}
> > -	}
> > +	pipe_config->pipe_bpp = pipe_bpp;
> >  
> > -	return -EINVAL;
> > +	return 0;
> >  }
> >  
> >  static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
