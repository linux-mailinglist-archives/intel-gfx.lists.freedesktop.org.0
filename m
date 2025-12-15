Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C254CBDAA0
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 13:00:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A62B210E454;
	Mon, 15 Dec 2025 12:00:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CUygLG7G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C54910E452;
 Mon, 15 Dec 2025 12:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765800054; x=1797336054;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=CNo/kgz/aAKMMuQ+X9nI8YLRZt37x2P67SVfrNzDi+o=;
 b=CUygLG7GCjLIToMwF6ZzqyDMXCGAQ2VRuP1/CBJ8ToEymHWwWm37VFmL
 neT3/fKFQPNmukxvoVUIC8hUWnx26XS72sZbeYpgD29v3ZMCmfydj5j9a
 Tb4Iefi9wbSGX4y6V7hHf59ZcxB/0aNtm6K0LjSOiQzSprCaZjA2Kj1Gt
 Xoug19BxBZaWdeCbL2+J4ca/9sWrJzfHzwPoUBRrAIegr1+AdI7I3zey1
 mfRQyXY+E2Q31TIKHw2t3qAn2NWIhgt/TfRhmEd4EogGEjCUdI6eN1b7Y
 50zXt0pmkzvRH38yxnzJC55zS32/Cj05TaZB6XiUm20iZLvCqXNKSq7SX g==;
X-CSE-ConnectionGUID: tRJvhPO5TeG9CfJrOE7LDg==
X-CSE-MsgGUID: 1oTWE/2TQNGivqySb/OYjQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11642"; a="71553669"
X-IronPort-AV: E=Sophos;i="6.21,150,1763452800"; d="scan'208";a="71553669"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 04:00:53 -0800
X-CSE-ConnectionGUID: /guLdnKwTPKY1TkqIu1RFg==
X-CSE-MsgGUID: Dtyj/06GSG6IGljpXsyatQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,150,1763452800"; d="scan'208";a="197590123"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 04:00:52 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 04:00:51 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 15 Dec 2025 04:00:51 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.56) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 04:00:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x+SpA3uG95aFsWNeO3xF7+TeLVz6u65RhxU6F3iu4cGFPgQVlRdXtLZMqLq/+Hiq0uavnnXRS41DnLTIAkNK9gwaAweyw/i6rdxVOthYSeFXBpF3RAvzV+qjaeHzfynYiiWz1HSnlSyd4o0mm7awOEJWD+2ipiBnxIhRDBMcjDy+NwbE9y8vIDe4Q1CyWjVE7+Dm2dbzU+BCFc1PnmW+C1QDXi1upTxHGbm2R8nPeUDhWS1tWzKnLlsLtGijbZgLeMEuac2fpuvHm/HZOaMlDMj2mkDXqACu76ucSqDpYppBi3h8zud8s2lmsguSQrx64+OOoJPQ1Xci82rSp0040w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KQsov2k1f00lb8vmVoBr5ZXye57PUyp/q0w75/HtmCY=;
 b=YrtvsnduCiJxKweQ26BPLeeuIZJPsZgywm1Pqup8psvGVMyEcvs1nepTrobfIHK6p6P6XSHjq6reSrJP/6iy0LlhekenyZ3MmXAZ7cZzDMrOX7bTVng/0GjUHMHEWaOXd288oZ2AftiJesr4SkkbfYynX03ygF9DcqT+ioysXpKV0PNdNYAODGbhCJq9pIXgj6IQdaj+ynd3yhyKmvexuceexTD2Tr4IPX14drVE6dK5Iaq9i/yjXJDRh602VBRm3395ip/s3P5P2Pvz/i2pQ7kXKYnqGfcv2qOq9oDvFp8Eep8idE8WSkquGbEVdnRZOeUD8OSdlcXokvwqT+KRRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY8PR11MB6818.namprd11.prod.outlook.com (2603:10b6:930:62::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Mon, 15 Dec
 2025 12:00:43 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9412.011; Mon, 15 Dec 2025
 12:00:43 +0000
Date: Mon, 15 Dec 2025 14:00:38 +0200
From: Imre Deak <imre.deak@intel.com>
To: Luca Coelho <luca@coelho.fi>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 15/50] drm/i915/dp: Factor out
 align_max_vesa_compressed_bpp_x16()
Message-ID: <aT_4ZsaerMLKqdEb@ideak-desk>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-16-imre.deak@intel.com>
 <b99036ffc22bc31bdecff2b57a6a630dd941c634.camel@coelho.fi>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <b99036ffc22bc31bdecff2b57a6a630dd941c634.camel@coelho.fi>
X-ClientProxiedBy: LO4P265CA0307.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:391::15) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY8PR11MB6818:EE_
X-MS-Office365-Filtering-Correlation-Id: feb80c7f-4681-4c68-7c05-08de3bd192d0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|366016|10070799003|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?U0lYcn+Z4W9f/OFRidQcdLX1NIb6WRl4mHTN82wK0+8BxgCG25/9W5tf+NCi?=
 =?us-ascii?Q?3Zc04g/7mfDyf/430OuvhcGvvZbpwjpi+Gk0zRYxq3KGfLaoYWfEpSR0NVWH?=
 =?us-ascii?Q?dvNInFX1Gy4p3bvJPcxoWszwmkMLUBX2rp+bJzGl0tWiVhiSUiHd6kaULt+S?=
 =?us-ascii?Q?a4skA/4P2QMAD/wyqX3JeXz+0cOBMiWW8CzxofhyFpCVaqy8IuykARbvyktA?=
 =?us-ascii?Q?cL88NF8f8AtzHlN1rkmgFpmr4QLOMevp1vkvA4VL8Md3YoUvnBQbm6AuwZ9P?=
 =?us-ascii?Q?VHJLdKgytxkwqlz2BvY5IFnXNxtihAWlvpN6gj29CH7lasY9P8aFH+t0s1QJ?=
 =?us-ascii?Q?iMCH/eO7MhD96vyNmxTcLptZPef8trvBryQjk23E2Pcgmb7DAHCPdn54DlrX?=
 =?us-ascii?Q?tv1QJLYJpk81SKhu614jcmwpv79I2Ue935rjDzIMbRbNqCie0yDUB9Qb4Urr?=
 =?us-ascii?Q?MtFVP5490YDAX1T0xUMun4hfdm3n7rrI3NxmQn60ZVBEhCn+ekNJRZGyO1zf?=
 =?us-ascii?Q?1bLfhG9lAMk7nEYz4NmVDL1cSJpKtyAsPD6QKKVVndMeQBivMbFcRzq1Wcvv?=
 =?us-ascii?Q?NMdzDKziaVtTu7dxlZvoa/t902hjMO/7GyOmXySo3eBkn1GilyzeQYfISVtN?=
 =?us-ascii?Q?/rPKA3MmU4atPdHyrNoFEE9wTlAyzVIG826IZWvjn9hvyzruRD94TLIAQl3f?=
 =?us-ascii?Q?eMt/pBRG6Wlb4yEQV97jP+ZxVYG5BMCX9NhjLfg2gTIRct3o9l8apTPAfHe7?=
 =?us-ascii?Q?fVcUovf4aACbNBjrLKuYMkGCp8dG41dvJP9+j+irlXbAMqbYoJBsVPv82OJV?=
 =?us-ascii?Q?sbqwXggVFqdkzYjHQI8kOocXHNKIpUILN7WgvVmcqw8sssAAxBjseWfvVJZ8?=
 =?us-ascii?Q?0hvh1tnZRb+H05nXv4W9HhX3GV34dMnal6jQ7nVrPMcRkpMDPQxfLRTCXWwQ?=
 =?us-ascii?Q?smOnJW07YQWh9oJOTw63IrHdeEEmTZgllipFbdeDijv9S1kF/cjva7X3RgI4?=
 =?us-ascii?Q?A9o0EVGBryIZuIHi1OV9RLlGbRBREP/nL0+Ra+erSxV3eUytpMslyMhrlL3F?=
 =?us-ascii?Q?5UZ61lGlKW3/LMZomnxJDBrr4HlQdXICrvQzPvp9Tp1KV19+PlT+82xMBLf9?=
 =?us-ascii?Q?BNTaO42wQtaiih/DUb6CGNg9sbOK3/t4fXv8/9bNfpy/f82/1iKy1nOIboM/?=
 =?us-ascii?Q?01BmzEncPGcC1f1kVB0tdLqu32EPt1RbwfI9Zm/WMy8biaPQC5xRq5/1TCvy?=
 =?us-ascii?Q?qA4WFaND9INouP/UXMve1HtYmSNc3sHOuVETdMuQUpe2oxyHxXaOcAaiKp9R?=
 =?us-ascii?Q?jp6yGbVh64oNwbJ8jn2H31DmMfrdUiJ83GygsO0T6+v9fntVCjQFZzfqYfzk?=
 =?us-ascii?Q?n8IFUe/Q6aLJgJvagEQy/Fc1nptXTkVh1xt7Qo+e+b1C8H5wyl0Quv5xeqoX?=
 =?us-ascii?Q?1TEQTBW4vrfkUgahbGokZbn9RxFfk7YZ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(10070799003)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?o1Q07qKXuozbaFo7qdwbUFJTMK7Uv8o69suwMCI45iqvq+2x1OOfCHhrkmWz?=
 =?us-ascii?Q?WbEx1XlTstKLc4FcPhmcHcVPiWR2SgVnM/Tj6gnsYd89UqcTCnSPzoVf3Z0a?=
 =?us-ascii?Q?6W/t3h9o3oKfDFZEPLqyF5GX0YW+JEkoKDMYel21TMk/FZ4DFgo9clsGS7xU?=
 =?us-ascii?Q?a6QTARUBnu429dhRIdO0c7zBL953Rsv/llTL92pFwtHq4w1fHfOdCCq3VAAs?=
 =?us-ascii?Q?YaaRLMfYG1MoyHv71r3zBErd/X+vXq5IKxEelWjuMv3vEqkX1MLgyxbbvji7?=
 =?us-ascii?Q?FkfNawqF8bggLvpIqqY6f88z3LRaklSu9RlN93NP61F2vyW3y9M6/jxE9LTG?=
 =?us-ascii?Q?abdKDJMXXJvlNrZ8ewkpL971Tps5mKFB3xxU+ooKgTeHZp0kkEa6PVWwTzKd?=
 =?us-ascii?Q?ioMLfV3cqLwsFMqBp62hDRdJTNkN7XRjXuDEW3hR83zCd/Dm+FwHBliQ+DRH?=
 =?us-ascii?Q?Q6VTM2Ziza2W2N49M088K4dMul/cwnDnt05bQ+eZ0AhCvuPSyF8PEp62mBlK?=
 =?us-ascii?Q?mZeDXSyRhT6xl074ySH05lpopZEGjS1OV7cibGy15vTx20xcoU2o6/2HkEzd?=
 =?us-ascii?Q?tPVPd9h8viWpoHhynE8xV1n82ye7t70UUuG5a3+SZHooEDjekDkv8T+pRUlt?=
 =?us-ascii?Q?fp5kkTRwkhG5qaSCefMiRmyC3tJFpbyc7BivfnvWIz42Hcdy4PbbEQZu9V+m?=
 =?us-ascii?Q?1kvFjBnYcXySMxKLGfIWaSr2QehAKrjWrBhfkDpuzsxmY32bqSBDNtNEM7ds?=
 =?us-ascii?Q?V+CiZRoCmFzsIdtKczTa2N1KGC4lInsQVckTa8A/EWL9SofGXpDnjI39nzTb?=
 =?us-ascii?Q?pY0YjwpFlQNvn1ZU4sB3GFF+lma5mtqzPjzBdvD1a+qyhofjxIFJ4czlH3wH?=
 =?us-ascii?Q?MLEHAnMb4pAECs5OI46d2CTJHxlhwrFrkFGZMoQlzBrEMKQekvUiHBro6zhJ?=
 =?us-ascii?Q?IpHSebg9igM6so8JRs6kaRJcjBqlJQszQFMDVBh2F6hOUvJYGKEWdpkUlewt?=
 =?us-ascii?Q?dONC/Uo3p2WxbBwfD/2RIfjtQjN8C72os+dLbV61Xr4LzveeKa2GU9G4EzeU?=
 =?us-ascii?Q?FdvX0OhxatTGoLpBRMH+1DhBkUhOg8+4y2Rf/0CCVaLIVNr1h3R6DkNYmxAR?=
 =?us-ascii?Q?WO0aKcr/8XAJf2MMuvXyHvEccmCzstf27PJu/LyMvdl7f2ogB0IKThHKOdIm?=
 =?us-ascii?Q?cSmvPOCY+F8UN367voRyqbHyaB1IlZBPsBWZzmGnrnM3r7Ei7sFwPX9fNFZZ?=
 =?us-ascii?Q?4143+7n1+7GDWMgrpMRb1+hX7LN1oKrsL2ovJxYr66pDN3S1AgN5CeniWjek?=
 =?us-ascii?Q?McYQV8FXjliP9XKpuJlNb5yy3klYli/PXKaCVZc01IYnmGDvf5l6zJjM/3MG?=
 =?us-ascii?Q?dSxtFHf6gplmslDkvRCEDPdAD2UEZnzIu9d8qTgz7kQ9cVuEIh005pMyLQMm?=
 =?us-ascii?Q?O8dytAZBUO5lLZuVoclHL9qQbUT5rBGw38mhRWbN+UbajbON1p6yFqdAXrsg?=
 =?us-ascii?Q?FTrj0D7hamXAiAofxGh4heU39eT9nV95eBITWpUz2WYnLz0QXo/1siGTVIYN?=
 =?us-ascii?Q?AE6MhaysbN9A4B/KFU0/i+db4xr9DKrl/gloDHmS+ePAHrVsNa87/VqquCOW?=
 =?us-ascii?Q?Yxlylp0H1o1USqlbpisrycdVsoDnJOu4+vE5NYazqaVh?=
X-MS-Exchange-CrossTenant-Network-Message-Id: feb80c7f-4681-4c68-7c05-08de3bd192d0
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2025 12:00:43.1557 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sUr43wQR2wWMKQkFvkw+bGUN5mO7Hjr2nYNrfOq16nj+ILIRweZYrLa7nGqlWD2/J3K/iozb1evWdB5X9W+sog==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6818
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

On Mon, Dec 15, 2025 at 09:49:45AM +0200, Luca Coelho wrote:
> On Thu, 2025-11-27 at 19:49 +0200, Imre Deak wrote:
> > Factor out align_max_vesa_compressed_bpp_x16(), also used later for
> > computing the maximum DSC compressed BPP limit.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 35 ++++++++++++++-----------
> >  1 file changed, 20 insertions(+), 15 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index dcb9bc11e677b..3111758578d6c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -867,10 +867,23 @@ small_joiner_ram_size_bits(struct intel_display *display)
> >  		return 6144 * 8;
> >  }
> >  
> > +static int align_max_vesa_compressed_bpp_x16(int max_link_bpp_x16)
> > +{
> > +	int i;
> > +
> > +	for (i = ARRAY_SIZE(valid_dsc_bpp) - 1; i >= 0; i--) {
> > +		int vesa_bpp_x16 = fxp_q4_from_int(valid_dsc_bpp[i]);
> 
> Any reason why you're doing the loop from the end to the beginning,
> instead of the more natural from 0 to the end?

Yes. The values in valid_dsc_bpp[] are stored in increasing order, so to
find the maximum value <= the passed-in limit, the natural iteration
order is from the end of the array.

> I think this is clearer and less prone to mistakes:
> 
> 	for (i = 0; i < ARRAY_SIZE(valid_dsc_bpp); i++) {...}
> 
> 
> > +
> > +		if (vesa_bpp_x16 <= max_link_bpp_x16)
> > +			return vesa_bpp_x16;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> >  static u32 intel_dp_dsc_nearest_valid_bpp(struct intel_display *display, u32 bpp, u32 pipe_bpp)
> >  {
> >  	u32 bits_per_pixel = bpp;
> > -	int i;
> >  
> >  	/* Error out if the max bpp is less than smallest allowed valid bpp */
> >  	if (bits_per_pixel < valid_dsc_bpp[0]) {
> > @@ -899,15 +912,13 @@ static u32 intel_dp_dsc_nearest_valid_bpp(struct intel_display *display, u32 bpp
> >  		}
> >  		bits_per_pixel = min_t(u32, bits_per_pixel, 27);
> >  	} else {
> > +		int link_bpp_x16 = fxp_q4_from_int(bits_per_pixel);
> > +
> >  		/* Find the nearest match in the array of known BPPs from VESA */
> > -		for (i = 0; i < ARRAY_SIZE(valid_dsc_bpp) - 1; i++) {
> > -			if (bits_per_pixel < valid_dsc_bpp[i + 1])
> > -				break;
> > -		}
> > -		drm_dbg_kms(display->drm, "Set dsc bpp from %d to VESA %d\n",
> > -			    bits_per_pixel, valid_dsc_bpp[i]);
> > +		link_bpp_x16 = align_max_vesa_compressed_bpp_x16(link_bpp_x16);
> >  
> > -		bits_per_pixel = valid_dsc_bpp[i];
> > +		drm_WARN_ON(display->drm, fxp_q4_to_frac(link_bpp_x16));
> > +		bits_per_pixel = fxp_q4_to_int(link_bpp_x16);
> >  	}
> >  
> >  	return bits_per_pixel;
> > @@ -2219,7 +2230,6 @@ int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector)
> >  bool intel_dp_dsc_valid_compressed_bpp(struct intel_dp *intel_dp, int bpp_x16)
> >  {
> >  	struct intel_display *display = to_intel_display(intel_dp);
> > -	int i;
> >  
> >  	if (DISPLAY_VER(display) >= 13) {
> >  		if (intel_dp->force_dsc_fractional_bpp_en && !fxp_q4_to_frac(bpp_x16))
> > @@ -2231,12 +2241,7 @@ bool intel_dp_dsc_valid_compressed_bpp(struct intel_dp *intel_dp, int bpp_x16)
> >  	if (fxp_q4_to_frac(bpp_x16))
> >  		return false;
> >  
> > -	for (i = 0; i < ARRAY_SIZE(valid_dsc_bpp); i++) {
> > -		if (fxp_q4_to_int(bpp_x16) == valid_dsc_bpp[i])
> > -			return true;
> > -	}
> > -
> > -	return false;
> > +	return align_max_vesa_compressed_bpp_x16(bpp_x16) == bpp_x16;
> >  }
> >  
> >  /*
