Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9C6613367
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Oct 2022 11:15:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB9B910E189;
	Mon, 31 Oct 2022 10:15:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16B0D10E189
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Oct 2022 10:15:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667211339; x=1698747339;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=t7wTcvQuYEgc1I6CptuMSssPqc+oBlw8Yj8tdUrGxK4=;
 b=hQi5ZYY9YSKrPNWSHt1Ciai0Ca/jbpqkyeW3fxHcSOLYI6y4xp+hJ1dP
 RADgiPqZgCWAUM6T94OuxjugIyUQl8D84I5SDSP0VwYb+ymJgtrfgW90r
 ao4OtLvc2B+VVPWH+kldH7HnF+RjqRJE1zKUeIXCZmcGaPjG+M+A67xq/
 jsxaGv4IpPI95d6TIpb0CFtlmp7Kj/g6U/XCQSRQIaI1TqyTJNBFqiqU1
 9bOJJH30tRjN0EzjJFpWZ0zw/nCFf0rfdbdNMbFkjynot7ip5W4IYBg4V
 xgepJWpSnPMDBDinGv6iheuKYw41/QHhvOGrGAn3Oplhj773tSTU7OjvR g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10516"; a="370936989"
X-IronPort-AV: E=Sophos;i="5.95,227,1661842800"; d="scan'208";a="370936989"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2022 03:15:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10516"; a="776083394"
X-IronPort-AV: E=Sophos;i="5.95,227,1661842800"; d="scan'208";a="776083394"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 31 Oct 2022 03:15:38 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 31 Oct 2022 03:15:37 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 31 Oct 2022 03:15:37 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 31 Oct 2022 03:15:37 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 31 Oct 2022 03:15:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=duYGz90yEnuVvSMmahUInOQoXBkztAZ4EDvHVHJBfJBCUvtVH3/bvhNaptgu/8IUQ0KmXm95Ui6AnwsFjVzflboEx0qcwiAftEqEOMgmpa/+uT/QkuQAkOxJbiJ0DVwGnYxqQIRnHylKP7sSQ9Jw1jU1wtdBI7czq6wTxxZD95ADbvsuDcO/GsnTd8jod3l5g+PJoPhLOoY2lGerkmsGwrJGvJhWdpg6WCKuFdEXxBJjIczYkhAZVGvNu92aNpAyUY6LapbewHAC3gSK7dntNz3YQGr6lAAler3laulSY548ZGBuFK6Uql9LPOxjWTFgs13gbAp6spPICcFbTeEIQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0WqRr8JvmrhUA19EdubKXWu0hHlHzh+1cZ2d4eo2iZ8=;
 b=aPUDELGm15RFwbw15NAz9ukNtFJMs9vUoOHSoHTNZjSeBVSBr0IyaGuYBc//5YnqfchPXWLKTOK6bxaZKSlEts1AcVUlryQI9nGBGgtXroJN30ooygq7ee7PQcY9pI2DpnXqkNrSw899InQYzC0xvxo6JjE2RvUo/A8QTK43ujXKqmTDd7jyLEmme5O5Crs3Z20PLtGazmmG5rvDOMHquo2HWdbtqjQ3GzGEgnNLjSG12IE2vbM9hg8oIzfkumNgo0dhXRfUTpejD2R/Em3smj/2n+o6j0CpGFwsJ238bvF0IdSSTGIZC0dSYMXMs/4b/XCwfLfROICyBxF3qftQlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA1PR11MB6808.namprd11.prod.outlook.com (2603:10b6:806:24f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.15; Mon, 31 Oct
 2022 10:15:35 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::29e1:56c3:823b:45d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::29e1:56c3:823b:45d%4]) with mapi id 15.20.5769.015; Mon, 31 Oct 2022
 10:15:34 +0000
Date: Mon, 31 Oct 2022 06:15:29 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Winkler, Tomas" <tomas.winkler@intel.com>
Message-ID: <Y1+gQbGwHhY1U5q+@intel.com>
References: <20221031055117.1043830-1-alexander.usyskin@intel.com>
 <Y1+W5ipudusyL0NB@intel.com>
 <MN2PR11MB4093A0C8F12980AEFAAF02DEE5379@MN2PR11MB4093.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <MN2PR11MB4093A0C8F12980AEFAAF02DEE5379@MN2PR11MB4093.namprd11.prod.outlook.com>
X-ClientProxiedBy: SJ0PR13CA0212.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::7) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA1PR11MB6808:EE_
X-MS-Office365-Filtering-Correlation-Id: 98a6f2de-c2ad-4e9b-5af4-08dabb28d8f6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tMEAzuVncjRi2XR0lEX5Ic3d0FUuksn65UH+z3kFobCY76+ByUjUeJY931Dv2EsIvyjy3lZfll4OOL20AyzmIKZAGOKG4yFXSApUVrjZRjj6cWS8Bf+OaAEdYoFvCMaVHsa2F0JCl2JjT/H51Y/WQ2WQCLHobpnOd333DcnNNVwFGz3JvSYYadyZr7oMKTd1/OX+DvTQQfGInskVQ7CzWNl+CPFBsotEK8xqBCUBedgNsCqdarjKLhzNutccSRKZAhpIpuGvflyIdXt5j8KZci7Kb/KrUW5u5XKq2qfF5z7HZqLjdbzO6Msocgp0XTimUDCswN/TsyqVudYvuXzX/iDEKj38vLogAJp4A/BJnDoBCF0c6CVM0tNPNR2b5hmW1VlVVUrqDId2jrLCrnXLt8iwhgaqNaX5zMGmBdNB6zNUWs29n5QaNZaMLcA0YkY0EQ9C8PSYEUtuPFT91Q3PFY2SImWHwup55PCM/gOhFFDWhy71BITRIdwnMPJgqyw1Lwc5P2vJrZPUbnfoGIptOpvhxs4f3+UBLRBGbtOft72ADTyaTwnBHRVr/VUO0CPpMGs21UTLiTb/JJskHIpw5N9u01mHwbiQbSMNNvjaEd+ZvU6NcothqqwcWpiBCAHyoGDQQOT2tdhSR0ULBcRNVd6O35YEgUljW9vpXk0qWgEMPf1nPTjLmyopotZu/NxIa8yjWm6LbrMCm+SQOm4TEA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(136003)(366004)(396003)(39860400002)(451199015)(478600001)(26005)(2616005)(6512007)(6666004)(186003)(6506007)(83380400001)(8936002)(44832011)(37006003)(316002)(6486002)(4326008)(54906003)(6636002)(6862004)(8676002)(41300700001)(66946007)(66556008)(5660300002)(66476007)(2906002)(86362001)(36756003)(38100700002)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?qdIFv32++YuHwtaYZyPa8zPRH0/qv/AAl2MTNoPB9kAQhacn+1BWN9tQXu?=
 =?iso-8859-1?Q?VvAnUcoNWUhQia0cK2gbMwwpBJ1V9U29vCy3+LQrv28WmbF/ZT9kbn/Rhz?=
 =?iso-8859-1?Q?Hwf+0zefRCtjuIJ+v/AViP5nKdym0GVE5Wa4CSLQ76U0K8LN7oGxA8tq40?=
 =?iso-8859-1?Q?L8MZSIPmxZDGXsoS5Q7bak+mPQHOwqXphm8MBmvoFv8+c0uPis2qFLrMEr?=
 =?iso-8859-1?Q?2iodJNk6tUyicJzcV0ZLC8aHfSXAj2USh/qAGHtWSilMDdnGtEGNWE13lf?=
 =?iso-8859-1?Q?w9yquc3lDXgkPBhUqdsGF3vOgqa1eEpIenXDaazYrtVuKZh1f0Is73A+Wf?=
 =?iso-8859-1?Q?9sBVrb33eWoQxValiBFLXY8yncVFF38sEkegFkj7YRNE6cuELt1bhl0Jsq?=
 =?iso-8859-1?Q?I4ga93XWAQugN/WRkTrNnUYcbC5m+tE6/3wGPov1O1gOX+IQMGXTC/6Nq3?=
 =?iso-8859-1?Q?2udn+MxfuSC5my/r4oSAbctAIU0t9BcVx0mqJKLpiPOqCP1WNT4iUAwjg1?=
 =?iso-8859-1?Q?WILylu5yCwxJuTWIEWKq9R8qPxhWT5D08PKOl5s9Fy0Pa0Fqy/Y1SlJ2j/?=
 =?iso-8859-1?Q?A6qDxc+ViF0qqEIpwqAposNjJdW33OFppFbUOYfB+4cF/0mXgbd8KC+9/W?=
 =?iso-8859-1?Q?Qd+xTSd9IeCXkg5izvrC+H/NoNGEVAqZVC3imqyMX84oIaUphyPx/4RHie?=
 =?iso-8859-1?Q?dm9umh5xMUmtkWPSjexHWnsIoW54EedcNSMT7g1+gMACc1xZWjRYJygyhn?=
 =?iso-8859-1?Q?73UISko8u7mNmpMNj9BLAM2wB6zFVr5sElabN8oRB4pFWTbblIKJdUKodm?=
 =?iso-8859-1?Q?iJ0XstIy00sXCA6BZvgvQl/PnrEczd6VDLTxghFVxecVRqrP4N8w+HsZfo?=
 =?iso-8859-1?Q?VXzOQodz0WfiDgHHlpaR6anAsqu1eJFJJ0by+RnKlxerrZHXjtuxdrUqsB?=
 =?iso-8859-1?Q?wzmkBS14TONkLyXmba6CeGBJ3HxTk3i8DwT4X45NYTsFnnITmjgBKuUrx1?=
 =?iso-8859-1?Q?awRSG0GeOzUJPOcaiQTCChPA+TlRO+zbjpATWvKa44yfQCD+5Eq40FkAdy?=
 =?iso-8859-1?Q?IRE74JlkbkoAPJG3YKUC6RDrFNydugRixHYbiMcZJdT7CU8rxLIfTr1d1C?=
 =?iso-8859-1?Q?rnmz3VeoKJ2+rqtUa5HmrxSA3SYlA2p5FMkiyfIQ68eUR3APKTnI1M7ZSx?=
 =?iso-8859-1?Q?PYXa/Q4i/QjMjy3sEynrjaCMSZkOvmnfwNEH0QvMBcMVbZvT++mWkJUIXk?=
 =?iso-8859-1?Q?PyEPajOsTGWjDjbMQAptnpVGt7W42SnvZZx/DhZmLPHEJ3LhuodY6NdvyL?=
 =?iso-8859-1?Q?MQCUzzgjq6IcCM7c7X7PLIg7E8czsqrHNVXHcHeHAhAveDqY1Qd+bF2MIZ?=
 =?iso-8859-1?Q?U6xWX7Fp7NdFFwBknTuNxC1kysRgqDB7VeRQJreDeSR4Tzs6fCdvKQqhSU?=
 =?iso-8859-1?Q?RQ57p8W89j3JS95IzXJkl4964ZIcIyvojWipeRqADt8ahQRDXP895ocLSA?=
 =?iso-8859-1?Q?dhCUDpekEnLeTscbOLU9hAZQNjGBBWseCp6PBVYbXJoHXA87iYOiVP07O6?=
 =?iso-8859-1?Q?pSGG8GsC7HcFG4slEC97HEybYnpXQVhciGfhdFI0L6yUHriIY9g0FRZY9R?=
 =?iso-8859-1?Q?wnZEHSvgRD6t9EA/OakNKNNeQuSahhpDJP6MosjmPv+Xn3+yAqYrekgg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 98a6f2de-c2ad-4e9b-5af4-08dabb28d8f6
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2022 10:15:34.1955 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bODFdqMM2QEDsxfyK3Dmck6XsqtL3+qKjDzKXisRkkuRfMendxF/n4Ar2SMOquAY2fzuSfXwzdcmeFVNOaqc5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6808
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gsc: Only initialize GSC in tile 0
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
Cc: David Airlie <airlied@linux.ie>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Usyskin,
 Alexander" <alexander.usyskin@intel.com>, Daniel
 Vetter <daniel@ffwll.ch>, "Lubart, Vitaly" <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Oct 31, 2022 at 05:48:07AM -0400, Winkler, Tomas wrote:
> 
> > 
> > On Mon, Oct 31, 2022 at 07:51:17AM +0200, Alexander Usyskin wrote:
> > > From: José Roberto de Souza <jose.souza@intel.com>
> > >
> > > For multi-tile setups the GSC operational only on the tile 0.
> > > Skip GSC auxiliary device creation for all other tiles.
> > >
> > > Cc: Tomas Winkler <tomas.winkler@intel.com>
> > > Cc: Vitaly Lubart <vitaly.lubart@intel.com>
> > > Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> > > Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/gt/intel_gt.c | 8 ++++++--
> > >  1 file changed, 6 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c
> > > b/drivers/gpu/drm/i915/gt/intel_gt.c
> > > index 2e796ffad911..92ad8cd45ddb 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> > > @@ -456,7 +456,10 @@ void intel_gt_chipset_flush(struct intel_gt *gt)
> > >
> > >  void intel_gt_driver_register(struct intel_gt *gt)  {
> > > -	intel_gsc_init(&gt->gsc, gt->i915);
> > > +	if (gt->info.id == 0)
> > > +		intel_gsc_init(&gt->gsc, gt->i915);
> > > +	else
> > > +		drm_dbg(&gt->i915->drm, "Not initializing gsc for remote
> > tiles\n");
> > 
> > It looks to me that we need to move the gsc out of the intel_gt instead of
> > workaround the initialization.
> 
> The interrupts are handled by gt, so where this should go ? 
> 

Ouch, I've seen it now. But still this patch brings me more doubts...

is gsc really a per-gt thing? if not why the gsc irq is in the gt domain?
if yes why the one in the second tile not operational?

if it is not a per-tile thing and only the irq is in a bad spot we could
still move it outside gt and make the irq to be redirected.

well, if it is really a per tile thing but it is fused of, do we have hw
ways to detect that?

if it is really a tile thing and we don't have better ways to identify
we might want to do with this patch, but add a bit more information on the
reasons and also double checking if by avoiding the initialization we are
sure that we are not going to reach any case of attempting to utilize the
un-initialized gsc.
