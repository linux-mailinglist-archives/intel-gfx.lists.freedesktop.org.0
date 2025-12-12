Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14119CB9822
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 19:03:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48C7510E91C;
	Fri, 12 Dec 2025 18:03:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dvqcSWlJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4270410E91C;
 Fri, 12 Dec 2025 18:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765562613; x=1797098613;
 h=date:from:to:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=OfLaeRw/A2WjsCZgxNGWpzR8iGPR1GJ0cKikKjS+1G0=;
 b=dvqcSWlJGDYZfRG7/RnjhG08XYUXVpg9m5xf4KK8Csszx7S6XLScgIiX
 Pz1C8lHUhufuTDoJk067Qo7RIc/TkU1ir4QlfTXxSZFuYxsZV+AGo8zbq
 E/EaLcMAT8fkgRl9myVL0ohzA86YF6DuDI5oXJ32+HhCMIfiVrY1BtVPs
 Y2/CrXNwjoWg/jSRGrL/TRS1K4Skc7COZQHNpCTkhAb6GI3PNn6mXziGN
 wa1TZHpNTowOApyCVtt+qaJ1lRJ0cJRdm7ijQAuYlMpm5ht1Jc1uBLFV8
 9VSpMKABa5ZhENrWOsmyTtFsD2r9Ztkdcl5XlBAE7ZlA83/kKaxPBJUcE A==;
X-CSE-ConnectionGUID: pjdhwPC1SsCvQK6KzHLt+g==
X-CSE-MsgGUID: Is05WUdASc6RRwwprVa4jw==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="55137379"
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="55137379"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 10:03:29 -0800
X-CSE-ConnectionGUID: H60m+PJ6Rf+aWShWYddadA==
X-CSE-MsgGUID: 5jApb1jrSyy5LGngwv7B8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="196223291"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 10:03:29 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 10:03:28 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 12 Dec 2025 10:03:28 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.70) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 10:03:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GlK7ex2YfbPGtXF75UdYylXeHHNkzii1u9HDuaCxjtAOYIeoEcRSxB+JVC5A9aE6UNtuzYDmRaBT7wD5CRMFD8EUQoVqor0XtVliYLO3ZE8A1hBcNYImUwk1I+iKBTfJ5KIXoqgvLZK2cp79dJRG+STgWOpmBYME5xFjC2q7OcOq9nMHi3ZUebtMkaaLdYy908Tr3ilGY0PHlLBicLPiH7O1ZaqelX9+3QvnxeEKZX3svY2eZOyUkhws02eNmUJMvTwtYM3a/dq5MPoM09eOPjunie/fQT9emiewa/MLbvhhHy0l8KeQuS+zVghUN5BnZKf++A7c8mVYlcb3j+NQ1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IjXozDEc6xZ7LYuXRU7SXlqC2ZpktwJC/HE5eBFLxQA=;
 b=BMu1KEyETwjx5glaeU01RAfie9MKRe2RclRGrhGybXhrpuZNfR2ycQ6dQao5Z7UN+1lYl9GY/uylt49RDiGTb31M6tc8nnh/bH/8K924kyZ15DvXgXf6jwV7bF2LJq5Xa8n6bGJ0DWAJqi+aPwTNP/0XT8z2iIpwQvUqh85V8T5F2XIzly/7xGzHLUQGOVwmpG/b7JMC+yBVcBuMBNZohEsfKoyyq57CXGc6chOL4CelBMeAXCFlTCBeFlpP78iClA4HGEwDTt2TeqOxy5Fhh37uCUWVJ3lq5CQallLvC6wNiV5dpnNbsP4WDtjmQWrxCNXpXPk5qRYFDiL+gkP8ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB4840.namprd11.prod.outlook.com (2603:10b6:510:43::16)
 by SJ2PR11MB7428.namprd11.prod.outlook.com (2603:10b6:a03:4cf::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.10; Fri, 12 Dec
 2025 18:03:25 +0000
Received: from PH0PR11MB4840.namprd11.prod.outlook.com
 ([fe80::7044:24a0:758a:4bfd]) by PH0PR11MB4840.namprd11.prod.outlook.com
 ([fe80::7044:24a0:758a:4bfd%2]) with mapi id 15.20.9412.011; Fri, 12 Dec 2025
 18:03:25 +0000
Date: Fri, 12 Dec 2025 20:03:20 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jouni Hogander <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 50/50] drm/i915/dp: Use intel_dp_dsc_get_slice_config()
Message-ID: <aTxY6DfEJ-9_RCeI@ideak-desk>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-51-imre.deak@intel.com>
 <373f8167ff21a16c8856f3c83499c7176e4b1890.camel@intel.com>
 <aTqbrglYFDv7krbV@ideak-desk>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aTqbrglYFDv7krbV@ideak-desk>
X-ClientProxiedBy: LO2P265CA0289.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a5::13) To PH0PR11MB4840.namprd11.prod.outlook.com
 (2603:10b6:510:43::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB4840:EE_|SJ2PR11MB7428:EE_
X-MS-Office365-Filtering-Correlation-Id: 95678757-094b-4b89-135c-08de39a8bee3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|10070799003|366016|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?y3V98c+eSc/PBr3A6VwMf3FiUJa9evTRL6BfiACBNSZDETIx4qy6gpuAjF?=
 =?iso-8859-1?Q?9B1i9+I7McqUv1OYFBJDOMmJyGGlhdku0anI51j1RbRwLxDIagkJdBHgeF?=
 =?iso-8859-1?Q?wS1pSEFoIbkaBhwO8MxGdYlaN9J/FE53SJ9lV+npHbKFb12ly9+y8EhiiM?=
 =?iso-8859-1?Q?dcyjq6sbBfj4jSxVNln9uPMQq8ZbJwbDELQVid0FpYGTG4fZIjYPgxocof?=
 =?iso-8859-1?Q?ftkiN0zU4K/whh+zdnYEnKCHmgr1BeWJ6+uzGBEck925DpSVE3WyG3gO7E?=
 =?iso-8859-1?Q?l+hjI4I0RuO3Jb8d5BLKPCNfBL2xUKzomfTrecb+GUideH1+qMzUYQiIAO?=
 =?iso-8859-1?Q?auKxTsKszBucPFKmODQhexwg3lCuSIE6am7y0+KBZ/TxEgBFgIppr1owVj?=
 =?iso-8859-1?Q?Ljv4/PZrsPVqd/H8iREgrj66sbwPNkG/ugqlm8ipyIxUs/QipvWBhN+Z5B?=
 =?iso-8859-1?Q?866//eYt/ivGVUCp/HC8S5HU7I0X9OTOUEdO9qRTe8j+LRzTjdDwmkTnhe?=
 =?iso-8859-1?Q?KJRFPAY6AVcDuHu27YZ92yX1h3sjZO66itEjL/wL+ekmkj+oNLXmsfzzaG?=
 =?iso-8859-1?Q?5A5ppQ/GtgJkDrtA7Q+xmilpQa6z8mlZMxm9TeuZFpZAXsE6iE0hHDgti/?=
 =?iso-8859-1?Q?f09pVwY6PiC1FyUyo1D+e3wkRZS9wx81C/avMI77l5D5+FZEP5UJxCX49S?=
 =?iso-8859-1?Q?r2p7DBQOmpn7aYPBe/h/eIXhmjjc2+1OEBYoNTlCDwPErzEzEiN2mk0Xg2?=
 =?iso-8859-1?Q?xTnyZBCHzBDLJFVbje9h1DpKt4PmZIWVk11PYhm0ofn0h1tLdMS8Ed9lec?=
 =?iso-8859-1?Q?6RPYxDXm54OKmmNhVdWzKvTh8cEM2yGRBeD7kid441Vnf832jfGeQlbxj7?=
 =?iso-8859-1?Q?ByUOkq7qQxu49eEcqQbrK7CSPpQ63j2NQImU2q9gk6ihZcq62Ow+f56hCi?=
 =?iso-8859-1?Q?xe+inDoazDpGvsXpsOj03M38pjwg03OBqagx5hxWRQ2YbUlFO9d8isBMuk?=
 =?iso-8859-1?Q?H2rdD1td9xALXyFKwmBVDt0JoxxLgkx0NrSdM1tyz0YADSDKvtTxfJftgV?=
 =?iso-8859-1?Q?AyRbEVTPsbIYVw2kXPISlKWAv+bs8vL8hP4nqwMt8tsazt2rRCl01MKBbf?=
 =?iso-8859-1?Q?Cni3gK2uLwGGiDXSaH3GdjZBPkhmnEtd1RoMFgfW7X392aMx+sYOBbzLAP?=
 =?iso-8859-1?Q?UDkPIUagW+WRLZ4UAImDzov38lm6Q6ajTrttqMiM6RYrd4kfXrnkKcUSK7?=
 =?iso-8859-1?Q?VUrtmYa/NrpyY0d2r60F1uGOHftenMAm5ma3qzgwZpB9oBQMiXVKGdIlFB?=
 =?iso-8859-1?Q?0QHKU8jlvNUu7r8Pih1NgJAST1cUBPxrQzL8GFRRqYIdbBh/2QUsT0BYu8?=
 =?iso-8859-1?Q?fwcgkMEFUAGR3NWrjHZHBdCw38IpBdgo2sdeRgQdt9Ffqtzc/Xisdn87Tv?=
 =?iso-8859-1?Q?/YRkBp0UyR6OGIJCViPZpen3wF1K5UHrwcj1fu1BFc4gpNnV7nsgx2B+zV?=
 =?iso-8859-1?Q?f+hs4Qc65mQGICDNBsChs6?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4840.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?yvWC99mguDZfE0NPFOaU3vbh/l4H7K3Zmn4gc8hf7wYpL7hAQ3E8cz9+Vx?=
 =?iso-8859-1?Q?NZoYv3scVPekRnUKwkbS90Y3REHC8og5YMyqFWcfueOf5gap7+PhTlhhdA?=
 =?iso-8859-1?Q?NB0vZWaMoH7yi7uh7CRR8d8rwrDHOPxcv3AmcUxwQD4VE074GcRUA1zWca?=
 =?iso-8859-1?Q?JcO/hxgMOKYpgwL69YR3wu0yoNRDHmpgAhFP8dlTscODBdCozA3w9H5vfU?=
 =?iso-8859-1?Q?wTAsJgEpnUwlpnBDlwqcXNI0MpojwMukSXyHK+nozZuBPSEGiTOi5MX42s?=
 =?iso-8859-1?Q?pFRoQZ2AGr7ErfDk+r9tzHYj/MAEMsWl/6Tu0GgP1K6xnqGZ2Egang/LaK?=
 =?iso-8859-1?Q?jJlMbnWs4j4P5xTtnJkoKlHhedSLaT8onN6oVKnIoghuI7kBUNKaKIMmxr?=
 =?iso-8859-1?Q?aRuuRuU6CG4yHHx3nW9K7A24xHhIyWSnYUHCJ4wsZonUz8cVsnMx5LB9XD?=
 =?iso-8859-1?Q?8M9gSnsIs903GFGKKSyErr70v3h+/tt5DWbCNtFeG1+Q8dfuP2G2XuNTv5?=
 =?iso-8859-1?Q?YasWrAwGidpphSSZq9GjfkWhSXWgXP5I7cHT+zjtyW9Z30WkKj78h1c/CU?=
 =?iso-8859-1?Q?FN8Dsf9SFEXv14d+vpx3IDUTfiGhJP2EDm+JpVJgJQ2nMvz5kymxlmYsRt?=
 =?iso-8859-1?Q?nt8MmCPT5CUm+4k8PxI9van4RNvF5FxsAOvQrVp8Wx5CmR4yLEoJE6IPqi?=
 =?iso-8859-1?Q?ahNCN/7syQwilBYG+oVKT0L/RkvD3IbvDukORvyaf/4jsguS102XTt/LKs?=
 =?iso-8859-1?Q?lmkAgQMD/RYrHkdVlWVALkDbAfOLfJUPHGbiVBKr2EyrFM5/aIJH/GjR7v?=
 =?iso-8859-1?Q?2bAX8IGb5UOrTa/x5Mbnv+0BTCbs++nH7U4M96I63y/LUmC6/i5lDXmi65?=
 =?iso-8859-1?Q?JQi8JbbUqshI0UBAXztIV9hGFHfY/vg2M9M+7TC2MZjDb9V02niP+MA/OF?=
 =?iso-8859-1?Q?lxcU/0qTBSVr+MP4mbFuGBTz+JA8CFKO03pxTEZ5uAJyTDKPaKKlNnnhXR?=
 =?iso-8859-1?Q?S4kx/KUP0+EGUrR3YESd+zuN5S3ejAdO3dBy6ZgZqB+weAk2QMit/9CslO?=
 =?iso-8859-1?Q?sL9IgxLcOypFV+ccXys335h0ccu63lLiZTPhJ1R6Iun3+6c70oY3h4XQ3+?=
 =?iso-8859-1?Q?4+JB4IvLoTQUzLgcZTFUdZlcF6jy0TMKb77hI/finlB+kajR98iD8fjmdT?=
 =?iso-8859-1?Q?hVL4iGnX+vf0V+bZbo7ei43MyIhCFEmEf3FN/9M1k5oRvg6QzGorHx8YIW?=
 =?iso-8859-1?Q?yMNIdZaGUlbApFW11VNrEX11HoIccDdc4pBx2iF2nfbSI53XWOKWgCWcAi?=
 =?iso-8859-1?Q?d9966RfWRlvrR612gTeJOrlptd2RZvTAWCD83wA1XWTYFuXu0MuKcYf4l/?=
 =?iso-8859-1?Q?5dioKSq7Vx5nSg/9VOPe9rnkGgvuiFhyFth5d1ChlYR6Wjfq+sGleeNiha?=
 =?iso-8859-1?Q?OpvhaMGIl/ijgKVtw29ZfJBkWkayem9IniHqJN0VQpCGAZoZwyQDh20KB1?=
 =?iso-8859-1?Q?8lYcs6yvQbw2pojrjIqSO5ZjBXDMC8v1uwC6o433Ti1g3lwgz8/0h42TuP?=
 =?iso-8859-1?Q?szGCaJ+B4Jlyi8ZZOFi5+BJtTGYyWcdWq6w46ghR5x7ANK15Fz7uDETL+y?=
 =?iso-8859-1?Q?H+yG5aUqMCVWskaCIwpVHOF5wD4tHYqfSdYek2lP3hz/2kmfF4K9PFuy55?=
 =?iso-8859-1?Q?kM3eVnY4mIb+Epv7Bkl7YjOerLYHkra4gRNSNuR/?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 95678757-094b-4b89-135c-08de39a8bee3
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4840.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2025 18:03:25.5269 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4qhMRliCKS48jCJriAokNvKPMQfZtANxFPqEPv0DaZTyC+wWIohfZjk0zHZ8sLQ/Iu+N1P1XYXt4K1mcY4m7yg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7428
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

On Thu, Dec 11, 2025 at 12:23:42PM +0200, Imre Deak wrote:
> On Thu, Dec 11, 2025 at 08:59:25AM +0200, Jouni Hogander wrote:
> > On Thu, 2025-11-27 at 19:50 +0200, Imre Deak wrote:
> > > Simplify things by computing the detailed slice configuration using
> > > intel_dp_dsc_get_slice_config(), instead of open-coding the same.
> > > 
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp.c | 35 +++--------------------
> > > --
> > >  1 file changed, 3 insertions(+), 32 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index 003f4b18c1175..d41c75c6f7831 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -2387,7 +2387,6 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
> > >  		&pipe_config->hw.adjusted_mode;
> > >  	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
> > >  	bool is_mst = intel_crtc_has_type(pipe_config, INTEL_OUTPUT_DP_MST);
> > > -	int slices_per_line;
> > >  	int ret;
> > >  
> > >  	/*
> > > @@ -2413,39 +2412,11 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
> > >  		}
> > >  	}
> > >  
> > > -	/* Calculate Slice count */
> > > -	slices_per_line = intel_dp_dsc_get_slice_count(connector,
> > > -						       adjusted_mode->crtc_clock,
> > > -						       adjusted_mode->crtc_hdisplay,
> > > -						       num_joined_pipes);
> > > -	if (!slices_per_line)
> > > +	if (!intel_dp_dsc_get_slice_config(connector, adjusted_mode->crtc_clock,
> > > +					   adjusted_mode->crtc_hdisplay, num_joined_pipes,
> > > +					   &pipe_config->dsc.slice_config))
> > >  		return -EINVAL;
> > >  
> > > -	/*
> > > -	 * VDSC engine operates at 1 Pixel per clock, so if peak pixel rate
> > > -	 * is greater than the maximum Cdclock and if slice count is even
> > > -	 * then we need to use 2 VDSC instances.
> > > -	 * In case of Ultrajoiner along with 12 slices we need to use 3
> > > -	 * VDSC instances.
> > > -	 */
> > 
> > I'll guess you have considered this comment being useless?
> 
> A stricter condition between pixel clock (mode clock) vs. CD clock is
> described already in intel_dp_dsc_min_slice_count(). I can further
> clarify the comment in that function, mentioning also the above VDSC
> engine 1 ppc limit as a reason for the condition there.

After talking with Ville, the 1 pixel per clock vs. CDCLK limitation is
actually explained and accounted for (increasing the CDCLK if necessary)
in intel_vdsc_min_cdclk(). Another thing to do would be to increase the
number slices and with that the number of VDSC engine streams, so that a
lower CDCLK can be used. This optimization isn't attempted atm, but I'll
add a TODO comment to intel_dp_dsc_get_slice_config() to consider doing
that in the future.

> The 12 slices-per-line / 3 VDSC streams-per-pipe logic is already
> described in intel_dsc_get_slice_config().
> 
> > Anyways, patch looks ok:
> > 
> > Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
> > 
> > > -	pipe_config->dsc.slice_config.pipes_per_line = num_joined_pipes;
> > > -
> > > -	if (pipe_config->joiner_pipes && num_joined_pipes == 4 &&
> > > -	    slices_per_line == 12)
> > > -		pipe_config->dsc.slice_config.streams_per_pipe = 3;
> > > -	else if (pipe_config->joiner_pipes || slices_per_line > 1)
> > > -		pipe_config->dsc.slice_config.streams_per_pipe = 2;
> > > -	else
> > > -		pipe_config->dsc.slice_config.streams_per_pipe = 1;
> > > -
> > > -	pipe_config->dsc.slice_config.slices_per_stream =
> > > -		slices_per_line /
> > > -		pipe_config->dsc.slice_config.pipes_per_line /
> > > -		pipe_config->dsc.slice_config.streams_per_pipe;
> > > -
> > > -	drm_WARN_ON(display->drm,
> > > -		    intel_dsc_line_slice_count(&pipe_config->dsc.slice_config) != slices_per_line);
> > > -
> > >  	ret = intel_dp_dsc_compute_params(connector, pipe_config);
> > >  	if (ret < 0) {
> > >  		drm_dbg_kms(display->drm,
> > 
