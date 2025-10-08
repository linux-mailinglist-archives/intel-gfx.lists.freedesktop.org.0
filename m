Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 912F4BC37D8
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 08:42:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BB9010E07D;
	Wed,  8 Oct 2025 06:42:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KihELY16";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F077E10E07D;
 Wed,  8 Oct 2025 06:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759905721; x=1791441721;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=/6R6FliWNZZPlPkoD0SAIbz0khbNN6Q2pq9THeGGcc4=;
 b=KihELY164xfs+79P6/wo/Wrz985dTT5kkgOjNgUma/Rmh9xflADbgNhP
 2fcNOOs769DztZadzl9OyC1i6pFLfCjJpliQauRsE3otAdeOw0b5bv+Zl
 y11lRvCYgYo5K5bzT4sWLU6fl95HcDsxPsehHkENssDU0WHhSxpmWoEo4
 ygXL9qjVOKCmiEWWg5avfa9E+6rjlebZUwu3It4NVNu7r0a6uZZzP/E7T
 6kKqaTMiV9nerCFUhWJhh/Vn8Jtt82LjXNLd9+fcXd+WkK1lPytejA6iT
 HrCfpSs1UQFJZESXk0d6IczxgbjIGAS9XJL2CCnbKWjSd7YC7fl4rm/Le w==;
X-CSE-ConnectionGUID: 2AoMsbqcSY6b+5yVCEr+Ug==
X-CSE-MsgGUID: kr1cuxMHSqekefI84zbgyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11575"; a="61297807"
X-IronPort-AV: E=Sophos;i="6.18,323,1751266800"; d="scan'208";a="61297807"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 23:42:00 -0700
X-CSE-ConnectionGUID: DYpBAqT6RyKFr5sax2iZFw==
X-CSE-MsgGUID: mg9Uh3fxSN6cyk4kpn10GQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,323,1751266800"; d="scan'208";a="179613383"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 23:42:01 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 7 Oct 2025 23:41:59 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 7 Oct 2025 23:41:59 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.62)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 7 Oct 2025 23:41:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ISJwVKfQwWAb69Ze1BW2pOmc4/+mLWTA+EurvZ3enbF1uQ997srhheHln1InhLEep6w+KAmaYF2EzyAc8TZ8TexUv54/yKut88xHqTSLkZMVud1lOcDW/sP4daVZ4UURe9mq+Ny8hJJp+qc/0ZG2c1gtuUf0MjaYrg7DV8LogdyCL3MdU7XFeiAykctQHx3CUKcHn88daTtPwVMOr+LPvvA3jN+Y6HHIjf/OTBo2uGxyFj2SQPX5TFYNn4+DONkhBi/02VDjhxXaHRvWKl/+CI6Tb7GvCs8vLdKAl8fyQlobUtfmaSUOTTOJtXOi/S9llzP147cxBwwPCr2MkOoFUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Df2ynDshoB+qbpPRXKys0a3ojG7+CflK507N5rdec3Q=;
 b=m1lfzWSGK7GOgEMYWbh+z9OuxlwSznoWp6Zy7sPg2GRC/P+ksCkrt4WpvTEIHJfW1W5atA6MjO/DIeQozlzQsWf1Z/wJtAyfLs79zrJ/ToNZlb9lYrG836Opuydum79mdc+OVUtsx376trs2880/CazqI0d7QCIvTIIffohppmC8wC3LfhbSft+7PeSPxMuLcVwuOBJwFb+cASt2I56WS0FFXG14Gp9l/DC8D6Wq6d2PrE2/Bqd0CQe8KjUsdHXqWeRijU0eApwC/N73JXremX80U0/uYqnU/V0c2ElcCtVL+4ya46tGEHgAkNKRGw7fJ0Z1nX4CylOwjDFuQsqH/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY5PR11MB6137.namprd11.prod.outlook.com (2603:10b6:930:2b::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.9; Wed, 8 Oct
 2025 06:41:53 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9203.007; Wed, 8 Oct 2025
 06:41:53 +0000
Date: Wed, 8 Oct 2025 09:41:49 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 3/4] drm/i915/opregion: Make
 intel_opregion_notify_adapter() static
Message-ID: <aOYHrTWhkIF36G3n@ideak-desk>
References: <20250708160320.5653-1-ville.syrjala@linux.intel.com>
 <20250708160320.5653-3-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250708160320.5653-3-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: DU7P195CA0007.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:10:54d::26) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY5PR11MB6137:EE_
X-MS-Office365-Filtering-Correlation-Id: ca30780a-d894-417a-9b0c-08de0635c454
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|10070799003|7053199007; 
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?xXNF5sJHJ7WEGFpaihBebzNVM/GjHy3eO/7r1zkkH2uDoaIDQ3mKYnnk8Y?=
 =?iso-8859-1?Q?9nlJPm2srAw8krTEMo5l/ViOPaZmCdohDl/svOZmSHYXamJnsLpovDhouQ?=
 =?iso-8859-1?Q?E7cfulZ/NnYEKXsmWmV/GJXExi3ARf+isP55xl7Fvv8bkIy+WLuM/ZD06r?=
 =?iso-8859-1?Q?K8+ZPpW6z4eyowMHJon3KQq7Jho4JaYSBgq0/ZdE3NeMH3YbqqYBSQEiMK?=
 =?iso-8859-1?Q?lBgNc8ZGujKk7vFNRLmtqtbgXPjhq7hW4IYKAsFvAmAo6nvKsXpH8VAWPa?=
 =?iso-8859-1?Q?ATP8gOJJ3//gPORD8cG/Tj4t0FbfKjizJQzkKSObSU/mlT/rzxmcwa57Bn?=
 =?iso-8859-1?Q?Ji3KIMPg2roLmKojE39O09CKfsYTH5X+fmgQiECvCPbqQdarCqJ4DSP2aX?=
 =?iso-8859-1?Q?zO3aKFJikUmJgyQBKEJghtOXgbDQ1M6Ty5RQnnJkFGFscw3tgM2EiuPDWq?=
 =?iso-8859-1?Q?MwcoUPQtRs71u62vnTdU5bFvwiAhPo4+ZKgCn3kBKoaIP8rkEpLyKxjK61?=
 =?iso-8859-1?Q?1Wbua125F3VKO/+vp+aNhzrp0kbI1Ov17W7GpOaFKLFrvPAW4o8iqY1aWF?=
 =?iso-8859-1?Q?hBU+ueDobfTzq6OYd5/agrwdAV7OgT0rJtoIsoiEX1T/6JQ+LyfGGkT5ew?=
 =?iso-8859-1?Q?uTKqPEQVbpsAl4we70O17BLNRsuyuijfzftqZpp2ga+GZCl6pAYkdBYKTW?=
 =?iso-8859-1?Q?vkyLwZWkp8v6Er3jZEzM6PsYWCz9gLh9ZdN+g5b8R8l6qTTYURNHnZ25Zu?=
 =?iso-8859-1?Q?c5NCeUyXdsTlzuTlBtoMhUU9GGbKtMbUhfV6u9ftB/IGx1z9jaEGMsKmgN?=
 =?iso-8859-1?Q?IdxCc5DFqhvFIJ12YzUx56Mlu957hCxoobTnrE55imoI8xaE88Q9jiXCmt?=
 =?iso-8859-1?Q?6ufdq/iEwkpB/IbmRsTMi392TnPgPMXMwDdS+HkwXfIaCJgIf7lDfcMfgb?=
 =?iso-8859-1?Q?XVKa6Zt6eE3b7OZ8dC4w11LY8NtfPbvfKn0CJ76bLEeS6s+dCgrf3Q7dWC?=
 =?iso-8859-1?Q?dG1QQk9W/KZ5LRlaIQJBElDP9cY6tVChVsEInHDjbAg3Wg3Fs+7IZMXXbi?=
 =?iso-8859-1?Q?IUHUPW4EhydUTLXH/mfv6BnSB5gclH2Dc3C8kdNoZ2AD70zPRzHPbgZbIy?=
 =?iso-8859-1?Q?eF8CMtYUbE6lQ0JH/quLYL8vZ6g3S3puqHI8AHtGMrEDMQOtI83zfQUsc7?=
 =?iso-8859-1?Q?TkZ6RHJCLeKJk+ygGuvqDExQSUbF7RgmIlP8n448rM8QFAOAx5XY2UCeay?=
 =?iso-8859-1?Q?8l7wEHYex5+N0S+vnjph1eKov0VtuVIW7h5ByEDAZC8N4HyBaqzOwdSeoa?=
 =?iso-8859-1?Q?TyvFg1fTHmX12Wb05d2zP1MJrg2PxU410ohTZOgTrok4fVpOUuSA7yym1k?=
 =?iso-8859-1?Q?8cHOuIACIRcg2Z1ro5ukH+X9fRcMJmpkcAvBMmvXyK2HnNW9nLAwZzdtwT?=
 =?iso-8859-1?Q?IbV+xE7KTAE3bqgn2Fs8pc9QD6LZLoGf49Ozs/8Y4ILQfHCfQfUO0V3YSc?=
 =?iso-8859-1?Q?wvnBc8iJfzPFf1S7U5GwuZ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(10070799003)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?MZHzm3Lw8quodWif++qtV5xfJf4Zenav08MI5PuIliPH14DyF2WtcOr7em?=
 =?iso-8859-1?Q?V7YwIYZwAoVSWnTyCidpNgOlsPQo2lFBSTsS5AI8+OoUlVny58VE+Tma1s?=
 =?iso-8859-1?Q?NWJ4NbyLe4OBplNOVngx7A6q7gE8tggpKc0M9KiQkZdfgaoIS6G2aHN94M?=
 =?iso-8859-1?Q?POsS0vdeVEyT4YAhVrBjzIzqJho8g/w75UY0GllM6RBUrYZkwsSszPDEux?=
 =?iso-8859-1?Q?x3gSUVwB2T7O3/yMLH9vE4xTQI4R8lyxNEYmAXC5sl/67EWRHwClfgmTth?=
 =?iso-8859-1?Q?RAMhQMsVhhVrOmaunCa0um9QGZV8FMnL9xqjOeSnRN+dDX3c0+dsrA1M99?=
 =?iso-8859-1?Q?7hLLS1RloVh03G7QQ27MDrDzdmxhWHtcMt8Z1qzy6fDaCHHZoQlxU9A13F?=
 =?iso-8859-1?Q?G2CWynLxa9oQpCqO/K2xyzvKzM5MWPt8nGrghYCFg7ruuIRTKVgC/1ebnM?=
 =?iso-8859-1?Q?S6ud2fxaUOAF/GFL/+lwXjKTQRIs5gorgjX16vacDwxsJoNq8TTx/MsDAj?=
 =?iso-8859-1?Q?Esf6HQyMN3bBDqtrbvZzhr6L1YMFI8xmwTJR9e4ry8mSBZDhY2ItUwgIs6?=
 =?iso-8859-1?Q?fy6bG8RKIKBzW3NQS6ttiWZrWAgcp7UFWxqOQyAvRtd/nDLKT3b8OnO2JJ?=
 =?iso-8859-1?Q?4mtyMXxoj8R+SAov6TVptdHv94ZSAbnYHtcucOwbuvyCgMiVcitHitD/wv?=
 =?iso-8859-1?Q?lyGra9uDXKzWQH17JdPmLCW02dGk4DCIkK1QRT1LDH0eViWldu0Lc9Abb0?=
 =?iso-8859-1?Q?msPw4KtNg4wyB5uNPCg2E/renE99Zgg6C7anZJV3GuRZX/O8k/saRzULae?=
 =?iso-8859-1?Q?Yb5jAFEl3Ni8/fW3sP99DnFP4BvR51m6xs7ko4RrOMA5A/AletfSYGzhZ9?=
 =?iso-8859-1?Q?2CodZiM4uW+KEQBFXVILB0fozQQGe21maOg/bE4RvrTiny+B0jGT33MtJL?=
 =?iso-8859-1?Q?8kXqmRkn350ueCeuv0LbVekpn5kI4WSsvT1gYcENOfC2rK3QZMnwfu09Rp?=
 =?iso-8859-1?Q?gTWAoqgyhpAue/NjUpH0ei8NAr8IBq5BWx2yVg4ex8778I/PMpKzc6Y7tT?=
 =?iso-8859-1?Q?3DVuF9wcHQfYEjRYwz16Iu1DQzmq0lEVtZ0u3LvbtuhzMFI1OQWFcwtgd+?=
 =?iso-8859-1?Q?8RnwKrICAefuK7/qDHWVPtUQGGSgA8GcgmckxlaYVg8SRO6/bexkv0AZr3?=
 =?iso-8859-1?Q?3N2qswqsT0va9wcaxXlhngULDlNiVMfPxN3obEAfzDhzDFVIR15Six6zxZ?=
 =?iso-8859-1?Q?twF3Ijv5IcdkMoO5wrH5NIJy+kvlNM4IURWQgAcwNYjkiZvO06AQzHx/iO?=
 =?iso-8859-1?Q?V61WMvWA6wn92bTJxKYFqncj8dVIg7pEujdTWpJliIyGr8epZPegGDq4C9?=
 =?iso-8859-1?Q?0wBmFQh4f6Vtdzv3HggVTiqPO5hLTPaLQjN7wxly7KGrd4FWH3bgWGIVB7?=
 =?iso-8859-1?Q?OvK+k2AZIRSPMIEN5JT4dF1erPaJKgh6I8ryCgwrvRYt9XTHth5IeZBOPO?=
 =?iso-8859-1?Q?aCD/tcr8R9sKwZCtdAxhLXazKUB5JDOnXBak3ECr2+tgHQJUXRTq8bj5TQ?=
 =?iso-8859-1?Q?EOY8XR4U/QKo81I4R4TyXi8mkSI+J3F/5irsrY1ufGYGd9aVGjWSsdQUvA?=
 =?iso-8859-1?Q?/gQ5N4i+hqtOmF3mWQ0W/degseM4mWzXcf/7KoZohb10c4CAMyB2Gw/8Cd?=
 =?iso-8859-1?Q?IQjSrjyP8MlM25THoPQ+hH5kZei8DDQRBK1z8Ib9?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ca30780a-d894-417a-9b0c-08de0635c454
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2025 06:41:53.3074 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dIPAFqwP9jmdn96Wetlhj1zga4b+GpiGRJZR8Psx8faYYXecv1kRsYaYkT/cCZ36z62yZ6CbhK+KB92byW5BmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6137
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

On Tue, Jul 08, 2025 at 07:03:19PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> intel_opregion_notify_adapter() is no longer needed outside
> intel_opregion.c. Make it static.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_opregion.c | 4 ++--
>  drivers/gpu/drm/i915/display/intel_opregion.h | 8 --------
>  2 files changed, 2 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
> index 9e39ab55a099..e99616ea2ae6 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> @@ -470,8 +470,8 @@ static const struct {
>  	{ PCI_D3cold,	0x04 },
>  };
>  
> -int intel_opregion_notify_adapter(struct intel_display *display,
> -				  pci_power_t state)
> +static int intel_opregion_notify_adapter(struct intel_display *display,
> +					 pci_power_t state)
>  {
>  	int i;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
> index 7067ffe07744..d5b60029e007 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.h
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.h
> @@ -51,8 +51,6 @@ bool intel_opregion_asle_present(struct intel_display *display);
>  void intel_opregion_asle_intr(struct intel_display *display);
>  int intel_opregion_notify_encoder(struct intel_encoder *encoder,
>  				  bool enable);
> -int intel_opregion_notify_adapter(struct intel_display *display,
> -				  pci_power_t state);
>  int intel_opregion_get_panel_type(struct intel_display *display);
>  const struct drm_edid *intel_opregion_get_edid(struct intel_connector *connector);
>  
> @@ -114,12 +112,6 @@ intel_opregion_notify_encoder(struct intel_encoder *encoder, bool enable)
>  	return 0;
>  }
>  
> -static inline int
> -intel_opregion_notify_adapter(struct intel_display *display, pci_power_t state)
> -{
> -	return 0;
> -}
> -
>  static inline int intel_opregion_get_panel_type(struct intel_display *display)
>  {
>  	return -ENODEV;
> -- 
> 2.49.0
> 
