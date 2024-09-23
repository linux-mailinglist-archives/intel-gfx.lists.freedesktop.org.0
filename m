Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D336E97F01E
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 20:09:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71BA310E44A;
	Mon, 23 Sep 2024 18:09:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IrZSq8b3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4411510E44A
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2024 18:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727114967; x=1758650967;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=NDCFJzQIn8K2Kbe30wxXxjb938cb6K8Lm2xmlt4tV4Q=;
 b=IrZSq8b3ZjCt9IY/j75m6oexsORTxdhacAXogjt1VvCFbBgU134fx/R2
 OtJWRD4ftnYic/v54qM/Zfxo+XVoHeaLwCKw3fslzV6aymYPjpspl4ZIl
 jCIywdkDZ0W4Gu0+GoynWQxwoF7aO3mSn1nX/oBJkIeuDz6dZ7TEeKTg6
 zfqFxaOcEYrJy5IoymrKGuwssBNySJlJRYGVzNQ9Hy/amGISiCUNmBW/f
 ye6y/3qBleds7GevDYP/W3dUu/GmxZYTPleq2Lh+xN/AmTyK3eBFKcG0k
 wxodrlTUXAVSP2ZstSWFHOZr+07otrmLKQqDhuuP6FFCF2O+QF0BtSE4u A==;
X-CSE-ConnectionGUID: y2EITNGEQLS9oxh+deLGeg==
X-CSE-MsgGUID: Nko0ThblRmaUrl5+Wkn2OQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="26234294"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="26234294"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 11:09:27 -0700
X-CSE-ConnectionGUID: iPTvt+wZTKOtPnJcLu7zlg==
X-CSE-MsgGUID: Tr7I+ZwgRdG9aiGcWtsKlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="108584334"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Sep 2024 11:09:27 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 23 Sep 2024 11:09:26 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 23 Sep 2024 11:09:26 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 23 Sep 2024 11:09:26 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 23 Sep 2024 11:09:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kLhooDcd+W4JCnbNHvUhoJxqZsxGlfh8Iq7g9/X+TNynB6CGxScJDravJAqDZxtcYjENCDbl59Xn69ArsQEV74OwJT0VzKk/gFrY0LhVlxWsSyzTxDlEsduYt6UjvL1MIOstZ9mdNB5nguHzaKbzJUK5jrcILNcqwLyr4uTZ2pm1cg5Zjd1iYg5ck6jzCrxpHoD3+6XVDBQLrdY7KgQxE1CSpLbd4AdHm6UzKFnln7SdAjHk6KpkoZSr5RYcN6HbOIgRYcYBCPipmo1bar31UAtLb09i1nRz9aLqS0e/g7aSw5d6RqOvVqnwV3r+8R2a0rx4/I5UXMtojZg4vJ9A/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m4mWKkcdHokg+SzkkNtvMeAlWv1ryG7NOs5/uEGseJE=;
 b=Z6LGqq04dlFKHp0Q59gKnfXlR0u4/eSaOZd6yz0REUK6pbZEomk7Rw1Aip97PBhQRcyQDPsGBTFPnx7TGEeNrOKCWsoDlx6L4gVjH+wDeg7sYbjLptqq3WaZtOChl/DL8H5wBr+jbyWv3WhdZne1xadRvIcPCAV9ovT1P8XOLGc/sVoX78uFam44OqPOupsuOuaNy8BpHpksQIbyKnaOs9bXA9jH+TdV0jIJal3UmuyPqMfDlWOQDaHuWLvMvCs1QBwitNE8tK5szYm3MA/X9GtnZGUobMKwjPSfY6IiCbz0NqDkGUFNSBD9zQ/jzQnZqb6WcZWOqCO1Bv64Iq/qaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CH3PR11MB8138.namprd11.prod.outlook.com (2603:10b6:610:158::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Mon, 23 Sep
 2024 18:09:23 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%5]) with mapi id 15.20.7982.022; Mon, 23 Sep 2024
 18:09:23 +0000
Date: Mon, 23 Sep 2024 11:09:19 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: Suraj Kandpal <suraj.kandpal@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <uma.shankar@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/hotplug: Reduce SHPD_FLITER_CNT for
 DISPLAY_VER() == 12
Message-ID: <20240923180919.GA5091@mdroper-desk1.amr.corp.intel.com>
References: <20240923031007.1058072-2-suraj.kandpal@intel.com>
 <20240923031007.1058072-3-suraj.kandpal@intel.com>
 <ZvGnm0Uj0KzErdM5@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZvGnm0Uj0KzErdM5@intel.com>
X-ClientProxiedBy: BY3PR04CA0020.namprd04.prod.outlook.com
 (2603:10b6:a03:217::25) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CH3PR11MB8138:EE_
X-MS-Office365-Filtering-Correlation-Id: c0840d9e-896f-40c4-6014-08dcdbfada8c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?bc9c3ZG+EhyGG/ZEju2veW64r00d9i/T/Jw6S+GzmUBgDyzwPEJsrcKGbD?=
 =?iso-8859-1?Q?hKoIi1WToLpc8YyBzi/IsrNuWlBI7rrf0yp5M30CdXmWJfsByOz1JaV7Iq?=
 =?iso-8859-1?Q?+5QAQPsBHr3eRp+W14sUxFdttAXhhyRyIT5I5LtRWnBNYrpcqqSPXY+Qpy?=
 =?iso-8859-1?Q?4k310uFMjaP+4A2BDNm6B57yuIJ1rKbjnfvHykuCnUmZGsBWS+ZRI/9Bq3?=
 =?iso-8859-1?Q?cj5BZjFT6Jb4N6UguhdQQUXRpPvi7emjoler5F13borMlL/pz4PlVf3d8b?=
 =?iso-8859-1?Q?KR2p2tJqbOtxR0+XLdfiCK9jWS1VRUdm2ulNkHgrEf9RQUv+/cqxnCP7YS?=
 =?iso-8859-1?Q?nQ/wUja43nMeekTMcYwa7+Z56sC5SLut2zqyUkrGH/2kJQlsK5Lz/xTzJj?=
 =?iso-8859-1?Q?Was2Fpx2FeqROulZ204bG/KUSqEFVdmHKaaH93+o5W7JBKmvsZg9UVDZ5/?=
 =?iso-8859-1?Q?zf15v2A312tN8x3l1e1Df2RwRhQACIt4NDthljkGFCQKQf29Y8eCgx3JfE?=
 =?iso-8859-1?Q?4L0OwSDk2rjT4XxL4ZqKT51w2UnT3c0Ebvi5nWCk0JkMATDhErQ/otHbal?=
 =?iso-8859-1?Q?o60UPsX83rv1l93KiEmyHOc4mt4DevP5DkHCOEFy+BM0z6M+Qz6hnRdVZy?=
 =?iso-8859-1?Q?cQmowwE1mUIeNC95UOr0dN1jLwqttyD9N4tvIHNG9jhDQ2GAmcJKQUxm/c?=
 =?iso-8859-1?Q?EUovLW9J2n0VyWdvUMp+9GD1SXazseoL3pJsW66Q9oW3CnBKa1pqaR+dL7?=
 =?iso-8859-1?Q?/d9s9xFrQS+FcWcwnRieHMWPyGxN2GAxT89JOLIg97QMADnoJjlFFQ3vdX?=
 =?iso-8859-1?Q?WPStw2GdcpGti7JvvwJUuSYLEDki+xZPcN8hH4TgMeHrvlHf41HfV5GHSB?=
 =?iso-8859-1?Q?Mv+agXI3xfId89PyBZuIawKWM9lFmgicmYtUeGTFXnh2GVKj+g8dcYKd06?=
 =?iso-8859-1?Q?+GhJL1hYjnAGBteSoH5vDlsOhQu2dyO0EaWlMrjFnFsS5BUQdky6sUQMcX?=
 =?iso-8859-1?Q?Idn7ssv6HNTjtVLmtYWcpxN3vavJ9/sHQE2szZLYQ/oOx7xHS+7yFL9lBv?=
 =?iso-8859-1?Q?A58veeF8ApDRpFdrCY6lDBWD7TYbLk3f4MKmsgK2stOOv5ge/OYaipBeM3?=
 =?iso-8859-1?Q?WUXHKUZBsN+TF6zPU5ySLwZGPSJGTJFYYyl97IWhphjhJIb00Ot+pElRFu?=
 =?iso-8859-1?Q?EexEeH9OFn+oLyb/W/KhhLDQs9GqsnS9U+e+ErCxX9mhz3n24s/nv11SmR?=
 =?iso-8859-1?Q?fBhQ2ViREVFD2xy97EgRbuU8NOEcedyzzOgAr2BA9ClER/BV7T7cGfaM7e?=
 =?iso-8859-1?Q?uCWozzWC16stWJhKZzTErGgrGg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?7aiwsLsdv9L29qR9x7g6u0JUYISz4Ling74SXHFWR1g4+pb6hS7vRf9136?=
 =?iso-8859-1?Q?KEO3eXRRqRzPu6fx4oJrCBkUYDX6Y0x/yStL5daKfY9tQKgfgpxqvelNZk?=
 =?iso-8859-1?Q?KxBe+gYio8j6OG5j2dBL8+96LVTVzF6WLPSekq43YZ9TYpETKukbU6l+Xy?=
 =?iso-8859-1?Q?NxuClLB9WYvKeIT631nG/UCsmOmkXhnr+VP/gjN3tGJjIhPBtnuPI3vbEk?=
 =?iso-8859-1?Q?BxhBBXrGtoJV50Uwuzqfmths/baWnjOHXwr0qyFIh8w13ICY8ZtLLGSskQ?=
 =?iso-8859-1?Q?vKlxrmX+ZIrcQa9DUT3sAsmrUK/ghCf37ACNoxTaVfE3CXJDUbAUanA/aX?=
 =?iso-8859-1?Q?j5d+MGXJGuMiy0aPnxB8fU6py02kXM3c1ujtdHiAoGfLbO4HDIh2woFDbf?=
 =?iso-8859-1?Q?TuOVPPQiyg4MutLhG+ZbQWq9JIltQ8hTOqRbys7RVOYdoznjEU7bY4WdnV?=
 =?iso-8859-1?Q?8CMPs67C+mi4OyByKEiHcmbJsShpACep63G2QS6xoDPVaxnF65Wk1hPe+L?=
 =?iso-8859-1?Q?STrZ5Wi/owf2Bp37UelRmmJRg9Q2OnsSukg7VKfgO2f3827YntMYwwGJa6?=
 =?iso-8859-1?Q?r9mJZ7lIOVAxXjujrtwJWLHHASf8E3vdk4MAVf3LbnikK4mpsvrRWUZFvC?=
 =?iso-8859-1?Q?bV9FBPgtBVgoNDRTnzpjFmUT01wPnfT3gCkbitCW67Z/PGqspj3Cz+KISv?=
 =?iso-8859-1?Q?P6fD4PxxeWoTfH8KAbflYLKsc48Opfa31UA9/mcHwZFXSob6iloSPFL2us?=
 =?iso-8859-1?Q?bP/ujzPtjnWS17sZIlKSZklY5tmgLcEiGde6vjpcxIReoeR25RIAlSNi1i?=
 =?iso-8859-1?Q?D85Fd6HlXfkikCcqGyopr7FXfsAmLIu9HJmFvCDDkoEuvngjybCnCCK8Sq?=
 =?iso-8859-1?Q?5zOualr2YXNDsClqLowk6eQvGAopG1+mT3fzYMDLkrnSV/c1geuHrtXnsA?=
 =?iso-8859-1?Q?aqwUiWlA3Gf3IJ7FaJXRiE18HKy+C6hHA9HXV7vgqqiQf+1m/twIznbTQq?=
 =?iso-8859-1?Q?/pK+fzHVk7dLXkUIltBIjpzpqrnfd8sS1bZiKj2sJV+Fs0w3W4072ZEmLb?=
 =?iso-8859-1?Q?YwVjRUm1LtT+1ojMsF8LYayoTyxZsS3DP3O8u6hnf0pFyVbJVNxQmwPiRr?=
 =?iso-8859-1?Q?nmlcM7QnK4YXE+ahqRsLm+AJJxzFxIAm0sN+Wm/nje+Fgg/tB8sepSIs84?=
 =?iso-8859-1?Q?oY0swFBPA24uRF7yPb6RdwynSeiSIH7QN2nWxzCW+ZheI3U83AAkkeoTk1?=
 =?iso-8859-1?Q?hj34l/yCtcOE1RmtFNTMlIvfuNzabwk8Sjuo/qW6CwqAPg/Cx9DxQW8gmM?=
 =?iso-8859-1?Q?Ff0/8f/eTOtZ+Ola7NNgiiMbzBL7SS6PjhnuzD9PfTpIwN85HcvCqRi4dA?=
 =?iso-8859-1?Q?Dy3d6sysVxGnyHsq2ase6kZ6VU/zCS4Z4zotibSssLwm8HQjQBhjTWdosq?=
 =?iso-8859-1?Q?bCz2rjeDEzuSYjXjvUDQQlGylnJ585xA75d9+WLtX3V8pnD+1JDL2BpoiX?=
 =?iso-8859-1?Q?yPAJxtGjS+Sr8w2cQRigemcK/Z5DlW1sWOSB01E3MKrdV/L6ARNosKohTL?=
 =?iso-8859-1?Q?Oy3hWVoi7I8Nv4ePmp6kqAz4Dtg8IkUTSNfQAIyEhkW+7dU9/NC9fJIuUY?=
 =?iso-8859-1?Q?jOXYQCEB2wwZDH6QmDiNloDDLqC9QAOEwHpPWZ1Z3M3ZDrB7LUZJpMBQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c0840d9e-896f-40c4-6014-08dcdbfada8c
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2024 18:09:23.6193 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JtlF7NQPlLO14RMTWWB4770ibD3L2zSQatChEqgPYqAUaD48ZST+1rbUMlrf8Ij4DvGu95vGlZ5X9wjCpJi5rf40DUHkc0n7yCsEOM2tC6U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8138
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

On Mon, Sep 23, 2024 at 08:38:35PM +0300, Ville Syrjälä wrote:
> On Mon, Sep 23, 2024 at 08:40:07AM +0530, Suraj Kandpal wrote:
> > Reduce SHPD_CNT to 250us for display version 12 as it lines up
> > with DP1.4a(Table3-4) spec.
> > 
> > --v2
> > -Update commit message and comment [Matt]
> > 
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_hotplug_irq.c | 6 +++++-
> >  1 file changed, 5 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> > index 2c4e946d5575..8427386132e6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> > @@ -849,7 +849,11 @@ static void icp_hpd_irq_setup(struct drm_i915_private *dev_priv)
> >  	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
> >  	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
> >  
> > -	if (INTEL_PCH_TYPE(dev_priv) <= PCH_TGP)
> > +	/*
> > +	 * We reduce the value to 250us to be able to detect SHPD when an external display
> > +	 * is connected. This is also expected of us as stated in DP1.4a Table 3-4.
> > +	 */
> > +	if (INTEL_PCH_TYPE(dev_priv) < PCH_TGP)
> >  		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT, SHPD_FILTER_CNT_500_ADJ);
> >  	else
> >  		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT, SHPD_FILTER_CNT_250);
> 
> IMO if we start reducing this for older platforms then we
> should just do it for all of them, instead of based on some
> random cutoff.

There is a note in the bspec (page 4342) that says

        "Program SHPD_FILTER_CNT with the "500 microseconds adjusted"
        value before enabling hotplug detection."

for CNP and ICP which is where the cutoff originally came from.  I'm not
sure about CML (which uses CNP), but ICL at least supports DP1.4a, so I
think the note in the bspec is probably just outdated and we'd still
want 250 to ensure we align with the DP spec.

So I'd suggest just dropping the condition in this function and using
250us here.  We can probably leave things be in spt_hpd_irq_setup which
gets used for CML/CNP.


Matt

> 
> -- 
> Ville Syrjälä
> Intel

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
