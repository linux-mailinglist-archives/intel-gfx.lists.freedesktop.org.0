Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B53196C22A
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 17:24:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEA4310E7EE;
	Wed,  4 Sep 2024 15:24:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OZtuN1cj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D367910E7EE;
 Wed,  4 Sep 2024 15:24:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725463470; x=1756999470;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=5n36SvssDL8eDLf7J0rT6y0zUcE0+ULo5TcMJaZpMGQ=;
 b=OZtuN1cjBqnMUiwpwxx+V5Vo97Bf2ld0GAe7FlLrStPwwuv/7UblqR+O
 QCJ5mOOy9qN7vXRxJviwxc/vHuRSKPIzN26NTmACE01lJGaGpjTzcJ7ie
 15dvTeyGMyW59iJlcYW0JJteAvb2xn5oF3f5VlCC9u922r28bGnbPJX8Z
 k6JP+AU2wmcTbSu8estelsjUZrBWR3nXN0Ja0u9M0m1LH9qJpi6VoiXVW
 kCr5W41dqf1Bf4MNr5613blfSbE1zZGqUZeqYJ06HE7FIuRajudMZ2AiU
 zUc6l/NZuox4BPiOm/JrOlckjG+63kXFAXjTqO9ORNNlys5jRPLfXmHRl g==;
X-CSE-ConnectionGUID: pCzDislORxW3V4eHmXRSkg==
X-CSE-MsgGUID: 6d2YUkQOSsCTVnsx7T33wg==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="23935570"
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="23935570"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 08:24:30 -0700
X-CSE-ConnectionGUID: IJRI6ShwSme9PFzAwt7RWg==
X-CSE-MsgGUID: UsF7AS2ERU66Pqbcl0ZMpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="65352365"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Sep 2024 08:24:30 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 08:24:29 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Sep 2024 08:24:29 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Sep 2024 08:24:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lF3/u8BfM3mmMkuOw8O94PVHuKWFa4Yn+S89xn5OS/ezibMGV89d76rtVVmsAvYTipyLH3eIZFpMa26EYgBBO9GTJJIIilKpVW0h8v/Ht1NVLD4nipUbsK2rVXuyADEillrCfdyBtu9itPQvJqgeaJNeS94VIC7khysSi+3y5Y3iLRV2NWPolgQ+zUJWs0ShjduILbyVk7KKA/Dx5p18OeeMFq1ATWW/jnJvM8g+CWYpqy5zCfN6HEyus5WQr/Rs4SZVHJRejJTJ0L8nMnc0hft9SV41G+7bbV/4CLpsqpI3A92exQ3VQbBYG7prlw9y3j/NgEZfYzx/C2Olrdc8AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KFWyUDY6Q4WByLZA5kYWYKB6YbEhLFRxmKID3CJo9YI=;
 b=egb4K5ttcWcs7cXNB6W3hnmb6Ii3wQi3Z4kUSlNhnLGVldnSIq6tb6zr1DyRqRzot8SP//HPITnram2AWAyHkpU4n3aqM1fPlB3cNnmFHg49xEWo/OSDqcwQUsPXrOwBWXiGjpf+eMKdlM5OzUxjakQOMlG6cxrppS6azkIQfL4Kip0k+7eRBYNrFv1JR1p4A1ZUNLht9ttQWqq+fkk37qcUJaNuinOJloIyT8WbK/gzqwv4EUetbjs7y8ij/BDpc+86TJSQcD4F/+R0hUWJwWz+7bMS/tQmRfEl1nScbiXWCmikqvExvwefY+0wv6DDVnoOWmDBLCtSlhAt7BQqWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SA0PR11MB4528.namprd11.prod.outlook.com (2603:10b6:806:99::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Wed, 4 Sep
 2024 15:24:27 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7918.024; Wed, 4 Sep 2024
 15:24:27 +0000
Date: Wed, 4 Sep 2024 11:24:23 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 4/4] drm/xe/display: Reduce and streamline d3cold display
 sequence
Message-ID: <Zth7p73SNdnjf-z1@intel.com>
References: <20240903223803.380711-1-rodrigo.vivi@intel.com>
 <20240903223803.380711-5-rodrigo.vivi@intel.com>
 <i6uf4dy4ibedkeeb76lcx6ntwhkcik43vxc6gakdyk6ygfgl7u@3a7wfdac2lqt>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <i6uf4dy4ibedkeeb76lcx6ntwhkcik43vxc6gakdyk6ygfgl7u@3a7wfdac2lqt>
X-ClientProxiedBy: MW4PR04CA0216.namprd04.prod.outlook.com
 (2603:10b6:303:87::11) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SA0PR11MB4528:EE_
X-MS-Office365-Filtering-Correlation-Id: 7dc132ec-9bbb-49ed-880e-08dcccf5a9cf
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?nI8zCWoCs9jF+XdUhUICB2GyXlCj4VeDvQQYd9AUjgB4t05fIFYP519BRdOb?=
 =?us-ascii?Q?bV4D+DiC2fI35owm4FNrom51YQMv5aJJ7z9XWYMfd37WUBH8tIAmh8aD2f6N?=
 =?us-ascii?Q?prHR8DyoOLJZUigsXSVUIf2T1c+qN8xF2x9SPHD2ZySdBBgJPbjOtNNLP5si?=
 =?us-ascii?Q?OU42DIMQEa3fgT3TeNA2ukL0oxy4jGUyl0Dby7Mh7+2EPPpo6EJ148yEBiya?=
 =?us-ascii?Q?IVBWrt9IhWskWbXeFrZSyWGCt9+qYSCQoDVZXcT7QVZHM5OxKb6LU5nlFDi+?=
 =?us-ascii?Q?9v6IW9zPxGJDsbtx7iGSh9s7hXPMSl997wVsIrSig+L4iSywkyWCJRDX33PS?=
 =?us-ascii?Q?vUHd5ya/DdULzaqzskObfOqzZOPusy6dVmLzc0HIuBqPE5/OwIDlbSIVsL+p?=
 =?us-ascii?Q?EglrJRbVDvFOtW21TUx+gaEcYNAq0NxDzZkinLVI1hNqjbjjaGtnh3HBiQYH?=
 =?us-ascii?Q?NEf/6WcblkLvVxvyu/OhsIyzUv+FKdkHEVLS/2qVNijyKuF0zbhO9knfDTCp?=
 =?us-ascii?Q?Xd1UvUl84zUDQL0LL7HSje17DXlMDbbyY4aIPmLgC9k/ocYL0ghz1P3zbQPB?=
 =?us-ascii?Q?3ElbJ+sd0bVZWKPPpyI4ID4niswLXWhJnWiK3JUUHcNFdtVYZMHQYVgrLQDd?=
 =?us-ascii?Q?znGhIUqJJ8CyHEK0sLn1MBPEcnomS3oYfgYAR4VIORO4NrmqukKofwvri1mJ?=
 =?us-ascii?Q?/opV15qea1fi2fNNTP8PNOkQSOMhGiWoTu/C5LEeMxoXXeRJZQpsiuFjGMlO?=
 =?us-ascii?Q?uSedUbnmiyKuiFkdQV2R7uHJ3ygMwpTEY/EbD2AIT4pbRb1jLFEgm5fYrf/K?=
 =?us-ascii?Q?QRQivGbxj4tBsKM1G6Dx9ytEijT9iYr9VS3PVmn70yENDvwVHVxovY8EdzfP?=
 =?us-ascii?Q?swC/NM45diR7CdK+xYnSpoQRAEZfDJ05Zct2dFFY+OKRN090wgdtiWZSnDur?=
 =?us-ascii?Q?5KJMlkOpHyl0bgSwwxwObLXm9vFi0ARw8rx++iANxF390ivHJigaVWigxLv0?=
 =?us-ascii?Q?6aLZwz7ndVqrwrFK5H1WDE+HCKcTyGtPVJtvXPsIeA0k4fEgkXfiXh6TGy2U?=
 =?us-ascii?Q?2SzrD2kLCijrvfLEDw+N2xJxedgGWsp3LBNs18EauS7sIgKHn8Cn5YQ6FR1+?=
 =?us-ascii?Q?jg37ytcdRZdhifxe2r4btVxJvQdB9SguTg2hYnm/i3I/LPZW0haBMBLE0vay?=
 =?us-ascii?Q?kpdba7dGNKSsxboQ0bjjnhjy+5iiRlQ48ypwrnCnE47AsdFcl6T95GoCOM3G?=
 =?us-ascii?Q?AyFQpVb+mXmXS/HUufi7tfjY9sk7QG+h/btSXHjn23Xj2MNkA0LUyA4cqeTc?=
 =?us-ascii?Q?Xs/YpwRnKsgXbYGsX0gnaNSsSmP1qYFqs0BBYuGnW6W+yA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qs2T44ITgTF9YMUXbTL7g9/o7Ts4yWgoYVxn6JY39fVN1qo7w3fpwxyymxvt?=
 =?us-ascii?Q?MeaRgelCx1wDMI0aCQ8RtoRAhNdw5AlBq0buU4yZYhxbujp493z9fDUaM+61?=
 =?us-ascii?Q?XattXM5K2tyRRN9OCBktpqyFL0MCZ1S4nl5R45UDaHnypsa/mU4njopTJlbo?=
 =?us-ascii?Q?ChEpwksxo6A/OTy8NJKIs3IVEWDHJDfSozUBcVybBpquw7UuOgKD1G+w6yIA?=
 =?us-ascii?Q?gD9mKkcA/dXtq6FdhNqkUN3xuSG+Gq5Hh52GZnslHnxZhiIwkDcS8GyKOWDH?=
 =?us-ascii?Q?3zzOo65qprDVfTFQdjJIhtSF7RZim8YgDCkT7Cu37+PB/FH75CE3GJ8eYRZa?=
 =?us-ascii?Q?99rCoKMqckmZjXL5DXIGa//KweiARNtJWpsePOP13HobK1/OuVW0ZuyOWVu7?=
 =?us-ascii?Q?3E7aYYMS9jFnN4FhIsWLOWKQ4fMatJUC2RsPTb5btROXMF2tbRKwsPIZsbtJ?=
 =?us-ascii?Q?A8mbehoKv6TooBXMm2jqc64YRAhp4qIE1dKbXIwcehRCYbEVfWs9iJEPGXU0?=
 =?us-ascii?Q?Ldvl8jFg6Jb40j99vuFbd+jy5bNZYVCddShuKaKfyB21/tsxovibWQpIx6Gu?=
 =?us-ascii?Q?P4KHJULQrrh0Vdm8tmp80p/VLFJz+vUvrxIXpsit/2RgOr4RCjZl9wd1cvqo?=
 =?us-ascii?Q?qWYLrTsJnLbb66X5nhw2yQAKeJlr0Dp8LNuzPOLOeZqPQtTuWroUvy3dvmdm?=
 =?us-ascii?Q?Vb7kreE/YZn70awvydRC8NklLAPHNoMZxGHv9/ZvuhkFrKgozrolfQK9N8hb?=
 =?us-ascii?Q?lVpsC4Irb4OdATQu8f9PPIFKrk4e15806x/oKHRk3kZehFR8dQOKAporObh2?=
 =?us-ascii?Q?iMbuAFWInwTAP1TLQj5Q4wviTbW50THDxgDwBV7+ApilaKHkHjrgakxM5oR/?=
 =?us-ascii?Q?xgkoCLJFTvT+NiX/QP8PMaR5c9/I9Qdmb2gaD5myolqXZItkkuq8WvXBQmZO?=
 =?us-ascii?Q?vcul9Tk+2dHPawEMnjqJ7GxjLBRGMENhYeHyiQog4EkKv+qwhEZ02yfQhofe?=
 =?us-ascii?Q?TqUoJbdN9e2QWVZuIGl3tsH34Rr05y18Ifwf0VAPgMsn3XRFpJnytYMdEqmx?=
 =?us-ascii?Q?WiAnLojICcIqY/OiihnZArC17fXfCwmCot6FtcBBCcvhbEHWbjMXczIoHOrZ?=
 =?us-ascii?Q?cn+7KlIbMDT6HmTolMBg4MbuH6G1fwkB1OU0SIUL9ealegyKCrWilk2JVwVa?=
 =?us-ascii?Q?EXmlAywt47IDJEgOjWSfjSnegI/06bfMPMpNpeMLr7l6RLSds5SuHxFZhnK2?=
 =?us-ascii?Q?Sdr3qic7XABE/9dSLHdzR4MfqNnM7JrnsiB2BVeo2TCwFDHz0GLKtreGr920?=
 =?us-ascii?Q?jQgrJYS3JUn+AdNSYISGDFWn77rUG+G7UlYnTWfSlu1VRgooyoezK/sbfXnY?=
 =?us-ascii?Q?RuT+Lcqg9vr/qDsU+lgfvmt0a7a48rJYAfmRULx2uXr4rlgjPkjAewUFluWU?=
 =?us-ascii?Q?dCuuF8Ds4GXnN+5JbSP2u3maHeWQzmEEion2xhTp+VDOVl29l9IE8YkJNG7Z?=
 =?us-ascii?Q?TcC2tg6qV2ZIwyRcro2W+ltdluEpv/kmqfsY1nWxqhKFJRh02gQ0Pjf+d5Zd?=
 =?us-ascii?Q?ZDnbjrfcx6Uqlf1SWwSpxAPMz+yJg0lGZg0dWRaR1Ubnaq1CsdXwCY/faIs7?=
 =?us-ascii?Q?yg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7dc132ec-9bbb-49ed-880e-08dcccf5a9cf
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Sep 2024 15:24:27.1197 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cXKGGMARALKGYAxtSDW7yRbVLRS71yMgQK2cfh/Q+OZZKnbe6zGhHJWgRBxFEsrSEyxiWh1viWMjrE7MIZ2pgA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4528
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

On Wed, Sep 04, 2024 at 11:09:24AM +0530, Anshuman Gupta wrote:
> On 2024-09-04 at 04:08:03 +0530, Rodrigo Vivi wrote:
> > When going to d3cold we surely don't need to flush commits,
> > nor handle fbdev. So, clean this up a bit.
> > 
> > Also move the opregion call to make the function more symmetric.
> > 
> > Cc: Imre Deak <imre.deak@intel.com>
> > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > ---
> >  drivers/gpu/drm/xe/display/xe_display.c | 12 +++---------
> >  1 file changed, 3 insertions(+), 9 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> > index daf9b9baa88a..3fd3e74f1310 100644
> > --- a/drivers/gpu/drm/xe/display/xe_display.c
> > +++ b/drivers/gpu/drm/xe/display/xe_display.c
> > @@ -310,9 +310,6 @@ static void xe_display_to_d3cold(struct xe_device *xe)
> >  	 * properly.
> >  	 */
> >  	intel_power_domains_disable(xe);
> > -	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_SUSPENDED, true);
> How do we make sure fbconsole doesn't use vram to blink the cursor ?

Good question, but that's not the point.
The point is, if the fbconsole is there blinking the cursor, we are
100% sure that this runtime suspend call here won't ever happen.

If we reach to this point. The fbconsole is not active and doesn't need
to be suspended.

> 
> Thanks,
> Anshuman.
> > -
> > -	xe_display_flush_cleanup_work(xe);
> >  
> >  	intel_dp_mst_suspend(xe);
> >  
> > @@ -329,18 +326,15 @@ static void xe_display_from_d3cold(struct xe_device *xe)
> >  
> >  	intel_dmc_resume(xe);
> >  
> > -	drm_mode_config_reset(&xe->drm);
> > -
> >  	intel_display_driver_init_hw(xe);
> > +
> > +	intel_opregion_resume(display);
> > +
> >  	intel_hpd_init(xe);
> >  
> >  	/* MST sideband requires HPD interrupts enabled */
> >  	intel_dp_mst_resume(xe);
> >  
> > -	intel_opregion_resume(display);
> > -
> > -	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_RUNNING, false);
> > -
> >  	intel_power_domains_enable(xe);
> >  }
> >  
> > -- 
> > 2.46.0
> > 
