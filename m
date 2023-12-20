Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B04581A7E4
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Dec 2023 22:13:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D64D10E2AF;
	Wed, 20 Dec 2023 21:13:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1655F10E25B
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Dec 2023 21:13:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703106821; x=1734642821;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=hEVN3WTcmuo//VGtB4+CHCf61KB2R+NanIAGiCVbj6E=;
 b=eW/EKvo9fvJvUJb9Ifs3TuTtvM8uZPtCXkfSBSxkJ/WyGEsMvF5xWDE2
 2UE76OtPxxAHPmdjY3u0CiNGqcrSrZW8UXE1TZ8tojSk6+unIJDGrT/4m
 eIc/7S98qjBB2pr88LBHH+trX4J7bqBekpRoiCw+UqAhdQlnUo7hCCxKU
 WDiJiX6Oh/+I/Z/qYiyVuC/PJB3QWVVLDdzcM9twIrgtRpctyDciBcLu0
 J/9XPZWeSz6MtEkbBKsqpna9Iy38RAXjC4wsTu2giq7kK4Rgfs6jB/E3j
 N3Brm/CxOUOQ7gqXeqyQ/nFO80QdbkDrCJxSqWUXG3vTQ/1qaeVTICTi+ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="375364165"
X-IronPort-AV: E=Sophos;i="6.04,292,1695711600"; d="scan'208";a="375364165"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 13:13:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,292,1695711600"; d="scan'208";a="18446521"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Dec 2023 13:13:38 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 20 Dec 2023 13:13:37 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 20 Dec 2023 13:13:36 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 20 Dec 2023 13:13:36 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 20 Dec 2023 13:13:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k6mSjJkyRfLbYeQdwFcxvg1kBnPIxhk6TmIYghF23BC73tdPBmup2vzN5HtMPnvfx85VQzsPg6XnDoGIfAC+q65Pq70TmYUPmKmDbxKpI5eoSX1RupqXqz+5HwYIjl9UZ8+6CRR3yBOyzdFjZxa/H7ahsdAM2AGtv9g/An2sNYZ8v1IYjSVFzHCPvt6wVCaJGGF5W76yL0hMyNVEoaXru11hRLx+3zhWrXWcJanrWVv0ErWlgUt/PZh35ebwFJSYoE3/CSy+xWcUw6FEaV8hJ7nXODxVobUUzHslBsUDHcT/H/jNMunWrzVPhIpA5+MVBfSqD9RT0mr9pTzTqDKUzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u1zBkorfm4O1Sn7u+XpDZf4UrGi5Y5ljsvr64ffItR4=;
 b=e5xW2LWCsHNNF0TCucjjelYAhPqzgQ4wdNdlOcZwVS6jZ/Lxa9BHXPoQPDxZrgrNbiA1m8kQZg70fjskiMAbvSsRURJkkLh0SonaGmA2eFRwH9oL/xYXqikkC2FjqY01BPj0W1JAH40dHS/t+j9yKZEGxf1vnakPOeDqypAnPkqbCUx/XkFn/7rKxph01waNDqEPWHHgj3U4IIptvZe4AWX1mlBpCC8hCrrXWpenAWWwUafhpk7G7hWJsZOrrYeYEGUtLjl4icN9Ha9nCCrHQ77BPCKLngcnpSN7CZWAQCdpg6M5BMzxxDaaN3zTMvA1caWp3tNGGThVyWr8Gb2RxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by BL1PR11MB5318.namprd11.prod.outlook.com (2603:10b6:208:312::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.19; Wed, 20 Dec
 2023 21:13:33 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::48d6:d63b:c2a0:e07]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::48d6:d63b:c2a0:e07%3]) with mapi id 15.20.7113.016; Wed, 20 Dec 2023
 21:13:33 +0000
Date: Wed, 20 Dec 2023 13:13:31 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/cdclk: Remove divider field from
 tables
Message-ID: <20231220211331.GH1327160@mdroper-desk1.amr.corp.intel.com>
References: <20231124205522.57696-2-gustavo.sousa@intel.com>
 <20231127162146.GG5757@mdroper-desk1.amr.corp.intel.com>
 <ZWWoOL3WS5wTGiM2@intel.com> <ZWW4L7POCQLJi6aJ@intel.com>
 <20231201230748.GU5757@mdroper-desk1.amr.corp.intel.com>
 <170169866064.4486.2471074166550309330@gjsousa-mobl2>
 <170169923258.4486.10623068274437801256@gjsousa-mobl2>
 <20231214000726.GS1327160@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231214000726.GS1327160@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: BYAPR08CA0036.namprd08.prod.outlook.com
 (2603:10b6:a03:100::49) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|BL1PR11MB5318:EE_
X-MS-Office365-Filtering-Correlation-Id: 00dfc3d4-0f75-4798-a65b-08dc01a085fe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qbSS3FwiYaj8r+CEySiyUqroJaewOM6Ti8yMo5XQmubcQmnlm/9mHdhkAjJYx4G+TftXMlT50JvCn8aW6ZFsV7anC5Ou32E5Pr4r9DOFNXbWtHc9sSbiYyA9JDFO5xvxh2l5YFs2NIO3/HaO/74RIPPNZ0ifAoQXsmiF8hWxfKeFsK/H+NOCxBn5P//4c786WX0pBlTrqeYZYLwqCQgNEV7KhrrZSXq0hCc49p34ElzOy1dIc1OcYZFoU1wYn4a75ONIot6Ny33/J/rvPx2FW+3ymaiaGS5wUl6pJWBY97E0j5/dtlYpJHeqndaSkOFdHXluESX+rboPTmXZDsZ29PUjZJNbmr0JRYG+b5SmpfWPAeOQK9JQpelhxp0KacX8ZtpMRsWpU++BhhKpjcnnp9bu6Thlkk3JcxkZQIXSzzjGT0SQPBTRV3CGt1WDBnuuX3Z7w5NsVX0U+H7G4CTU8KvZAC0KXISJfd97UVUExF93ApFQbWcHIwQDeiW1A5OPaIIoh/sowVXml7C+P2460vStcLrfWnWjBBxeI15WW1EfjvFjRaeadStHCU3zwOeT
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(39860400002)(366004)(136003)(376002)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(478600001)(6512007)(6506007)(38100700002)(41300700001)(83380400001)(6862004)(6486002)(33656002)(82960400001)(316002)(8936002)(8676002)(66556008)(4326008)(66946007)(66476007)(6636002)(1076003)(26005)(66574015)(86362001)(5660300002)(2906002)(30864003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?+mSDqAPZLPx6kzgW1k8647rtrieUDNY2Yrp23TyzaE4KNRgSSCYeBzOnz2?=
 =?iso-8859-1?Q?ng9hhnXaAy9gY6BjqHQYIuH/hW/+QJmkBSb4K5wPr103JQ0EqAvcODbEx0?=
 =?iso-8859-1?Q?ef0HvJ785azt32KWWvVVVCno7lATVIuL1RipcKHgbf+Lh8fhZwZj/tw4Dw?=
 =?iso-8859-1?Q?jRn/akHrKOG8uCFaBQqUCNBfOqYPv10Dz2fiHGXXUbwHiwzfniN73t4O8H?=
 =?iso-8859-1?Q?4RUTtePC3r7BxWCk+FlTd0/xK+nJ1giZU5P1QGjgwuz2TNOEFYKyvPQIab?=
 =?iso-8859-1?Q?lPEflEr427CjJY2ayIExFB7uoLdO/3HQWwSoiVWxhWqXhfo3B+/kJPYjLx?=
 =?iso-8859-1?Q?2OgxAw8kciFcAV07lmOW13mTNOght8VdmgXx78oqna2grIHQkldlrOuCSf?=
 =?iso-8859-1?Q?9QDE5QDzef+/ZeI/Uj4Y2okOnZGqoq3RlB9IaK70x49eky/3R2yJw/RzBi?=
 =?iso-8859-1?Q?idCHDzRT3x6rWTJtZRKnP2mUrvFbUuGQReIei1xUeUO8wrt0IMfWRw11wq?=
 =?iso-8859-1?Q?DvaDDIkOdhgGpGTq+ZY8nWfiunWZvhScffxSkZtWiI4Pa3TzZVlVZIeExI?=
 =?iso-8859-1?Q?VjDtzHNbYrvZ5Nr+NTWFdrvmljRIXk8ptOxhOT7FfNBKc5slM0tdKrJ7JX?=
 =?iso-8859-1?Q?sWDRoeJy2BW2lfbZbJ9J2jBwSVhBD+RGVEQY/95sFtRwEoRQoha4I6/N92?=
 =?iso-8859-1?Q?gSdHNXl2XlncSjtNlnF7kmCPVSb9P4naoAZFx0tBhB8BeEqDF/MeeRuTR4?=
 =?iso-8859-1?Q?ocG2BbqabYLEdC6cMOEAFIP3hOERRJw/9yz0rhpBktkyj8H3tEI0KJBUWl?=
 =?iso-8859-1?Q?vPGiVe9gqQdOlIQr/WTX+gpP6LR030WdBKD3g/7oqRIU0ji5RKVLu1Lzfx?=
 =?iso-8859-1?Q?y1UqnHEm/RMsvnk3MUhnN5FuTr78MiSZIV0NIFZZckxeVasC6u5ONPdXsa?=
 =?iso-8859-1?Q?suC9sLrmNQ/QLSow9lKm10zGClwLMHa4wpuGKmHAiRM6p3sZDwgFT3KJxM?=
 =?iso-8859-1?Q?L2UB0tUemXM0L6o/9d+ZIB3Ygi56owOS1M/FQfrg5JAGUNZTx2ot28WwX9?=
 =?iso-8859-1?Q?2PKi6OSzVUoyxh/GigWpoyyyyee6br31rurdwh9y1XLybKmzOL96Ud8etn?=
 =?iso-8859-1?Q?DMk+r81aMTJIYQ8dWe1HNvtfiYeGkZoAI2KptlVlWbYaQactqBMyooHaCV?=
 =?iso-8859-1?Q?5alCpmpQ20R/xhyy/xWBrbzzjUT73dDQzWerLvDdfFF8xGnYG3K0i5F/eH?=
 =?iso-8859-1?Q?9CZ2K4GZJRXefExXq9sdbWzfQRe5pyK3ihXX7ajZV8krT7i+5VHC7TQ2vd?=
 =?iso-8859-1?Q?EwybN2CTZmCK9ONrgyasu5J5ELAJaWstRiIb+I8otRs96knpeosyZu+m0h?=
 =?iso-8859-1?Q?nPVe+kk0TeFsqSZKn9D1RQu69jKuKgNOnES356CRaHq8QiyQWnjlrfJah/?=
 =?iso-8859-1?Q?gexDehonuONLZycsriV8qFST3ZjtwqLBwAuuhsXgBbPtUUWQobSoDQ3NgW?=
 =?iso-8859-1?Q?xX0brRFaelc2buixZfM2HHyt+O9vE9oAz7Xs4TInqzQ1NU7MkVSKcc8vmb?=
 =?iso-8859-1?Q?VgTJfDI/tSV5PrvZ14iV5ObC+WAy8KaKveCv0FlttOmWuTpdj3dxkPl/Fv?=
 =?iso-8859-1?Q?yOGSnzzd9WsgvWLwjFkVGVvS8Cww0BxlqGOJW2itiIkKhSZJc/UdC6YA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 00dfc3d4-0f75-4798-a65b-08dc01a085fe
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Dec 2023 21:13:33.6015 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k6HeOAw0lkP7jEa/tg7BIcgfN/g13Eu5KiAvcdxtshlbGdLrC3gaiianiIs37q9Il+UD1bulOKwIZCBucZDn8xcUXvga08T1YlAKuDNFYNU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5318
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 13, 2023 at 04:07:26PM -0800, Matt Roper wrote:
> On Mon, Dec 04, 2023 at 11:13:52AM -0300, Gustavo Sousa wrote:
> > Quoting Gustavo Sousa (2023-12-04 11:04:20-03:00)
> > >Quoting Matt Roper (2023-12-01 20:07:48-03:00)
> > >>On Tue, Nov 28, 2023 at 11:51:43AM +0200, Ville Syrjälä wrote:
> > >>> On Tue, Nov 28, 2023 at 10:43:36AM +0200, Ville Syrjälä wrote:
> > >>> > On Mon, Nov 27, 2023 at 08:21:46AM -0800, Matt Roper wrote:
> > >>> > > On Fri, Nov 24, 2023 at 05:55:23PM -0300, Gustavo Sousa wrote:
> > >>> > > > The cdclk tables were introduced with commit 736da8112fee ("drm/i915:
> > >>> > > > Use literal representation of cdclk tables"). It has been almost 4 years
> > >>> > > > and the divider field was not really used yet. Let's remove it.
> > >>> > > 
> > >>> > > I think we need to go the other way and actually start using it instead
> > >>> > > of (incorrectly) trying to re-derive it from cdclk->vco.  The logic the
> > >>> > > driver is using today doesn't account for the potential use of
> > >>> > > squashing, which means we program the wrong divider value into CDCLK_CTL
> > >>> > > in some cases.  I pointed that out during the LNL code reviews a couple
> > >>> > > months ago, and I believe Stan is working on fixing that.
> > >>> > 
> > >>> > The code should be correct as is, but it does assume that the cd2x
> > >>> > divider is 2 when squashing is used. If that no longer holds then we
> > >>> > have to change something.
> > >>> 
> > >>> Something like this should be sufficient to eliminate that
> > >>> assumption.
> > >>> 
> > >>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > >>> index 8bb6bab7c8cd..58567d42e725 100644
> > >>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > >>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > >>> @@ -1897,10 +1897,7 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > >>>  
> > >>>          waveform = cdclk_squash_waveform(dev_priv, cdclk);
> > >>>  
> > >>> -        if (waveform)
> > >>> -                clock = vco / 2;
> > 
> > Ah, one thing I did not mention in my previous message is that, this
> > assignment here means that we were always assuming that the divisor was
> > always 1:
> > 
> >     x' = vco / 2
> > 
> > , meaning that bxt_cdclk_cd2x_div_sel() would do:
> > 
> >     y' = vco / x' / 2  = 1
> > 
> 
> I finally got back to looking at this.  With Ville's cleanups it's a lot
> clearer and I agree we should be safe to drop the dividers from the
> table.
> 
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> 
> Sorry for the delay getting back to this.

And applied to drm-intel-next.  Thanks for the patch.


Matt

> 
> 
> Matt
> 
> > --
> > Gustavo Sousa
> > 
> > >>> -        else
> > >>> -                clock = cdclk;
> > >>> +        clock = DIV_ROUND_CLOSEST(cdclk * 16, cdclk_squash_divider(waveform));
> > >>>  
> > >>
> > >>I haven't had time to come back and revisit this (or check your new
> > >>series yet), but when I was reviewing the cdclk stuff a couple months
> > >>ago, my concern was around bxt_cdclk_cd2x_div_sel() which is deriving
> > >>the CD2X divider from the vco and cdclk value.  On a platform like DG2,
> > >>we use squashing instead of changes to PLL ratio to hit different cdclk
> > >>values, so the calculation there doesn't seem valid anymore.  Am I
> > >>overlooking something?
> > >
> > >I looked at Ville's patches and they seem correct to me - althought I'm
> > >not that experienced and might be missing something as well... Here goes
> > >my rationale:
> > >
> > >Looking at how cdclk works with our hardware, I would say that the
> > >cdclock is defined by:
> > >
> > >    cdclk = vco / div / sq_div / 2
> > >
> > >, with: vco being the output of the CD2X PLL; "div", the CD2X divider;
> > >"sq_div", the divider that is derived from the squash wave (16 / "sqash
> > >wave 1's count"); and 2, the final division that is done at the end.
> > >
> > >The DIV_ROUND_CLOSEST() operation suggested above is equivalent to
> > >doing:
> > >
> > >    x = cdclk * sq_div = vco / div / 2
> > >
> > >Meaning that x is the "unsquashed cdclk". From this point, what
> > >bxt_cdclk_cd2x_div_sel() is doing is:
> > >
> > >    y = vco / x / 2
> > >
> > >(the last "2" divisor comes from the switch-case statement).
> > >
> > >That resolves to:
> > >
> > >    y = vco / (vco / div / 2) / 2 = div
> > >
> > >--
> > >Gustavo Sousa
> > >
> > >>
> > >>
> > >>Matt
> > >>
> > >>>          if (HAS_CDCLK_SQUASH(dev_priv))
> > >>>                  dg2_cdclk_squash_program(dev_priv, waveform);
> > >>>  
> > >>> > 
> > >>> > > 
> > >>> > > I wonder if the misprogramming we're doing today is what requires the
> > >>> > > "HACK" at the bottom of intel_crtc_compute_min_cdclk for DG2?
> > >>> > > 
> > >>> > > 
> > >>> > > Matt
> > >>> > > 
> > >>> > > > 
> > >>> > > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > >>> > > > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > >>> > > > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > >>> > > > ---
> > >>> > > >  drivers/gpu/drm/i915/display/intel_cdclk.c | 269 ++++++++++-----------
> > >>> > > >  1 file changed, 134 insertions(+), 135 deletions(-)
> > >>> > > > 
> > >>> > > > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > >>> > > > index b93d1ad7936d..7f85a216ff5c 100644
> > >>> > > > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > >>> > > > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > >>> > > > @@ -1227,183 +1227,182 @@ struct intel_cdclk_vals {
> > >>> > > >          u32 cdclk;
> > >>> > > >          u16 refclk;
> > >>> > > >          u16 waveform;
> > >>> > > > -        u8 divider;        /* CD2X divider * 2 */
> > >>> > > >          u8 ratio;
> > >>> > > >  };
> > >>> > > >  
> > >>> > > >  static const struct intel_cdclk_vals bxt_cdclk_table[] = {
> > >>> > > > -        { .refclk = 19200, .cdclk = 144000, .divider = 8, .ratio = 60 },
> > >>> > > > -        { .refclk = 19200, .cdclk = 288000, .divider = 4, .ratio = 60 },
> > >>> > > > -        { .refclk = 19200, .cdclk = 384000, .divider = 3, .ratio = 60 },
> > >>> > > > -        { .refclk = 19200, .cdclk = 576000, .divider = 2, .ratio = 60 },
> > >>> > > > -        { .refclk = 19200, .cdclk = 624000, .divider = 2, .ratio = 65 },
> > >>> > > > +        { .refclk = 19200, .cdclk = 144000, .ratio = 60 },
> > >>> > > > +        { .refclk = 19200, .cdclk = 288000, .ratio = 60 },
> > >>> > > > +        { .refclk = 19200, .cdclk = 384000, .ratio = 60 },
> > >>> > > > +        { .refclk = 19200, .cdclk = 576000, .ratio = 60 },
> > >>> > > > +        { .refclk = 19200, .cdclk = 624000, .ratio = 65 },
> > >>> > > >          {}
> > >>> > > >  };
> > >>> > > >  
> > >>> > > >  static const struct intel_cdclk_vals glk_cdclk_table[] = {
> > >>> > > > -        { .refclk = 19200, .cdclk =  79200, .divider = 8, .ratio = 33 },
> > >>> > > > -        { .refclk = 19200, .cdclk = 158400, .divider = 4, .ratio = 33 },
> > >>> > > > -        { .refclk = 19200, .cdclk = 316800, .divider = 2, .ratio = 33 },
> > >>> > > > +        { .refclk = 19200, .cdclk =  79200, .ratio = 33 },
> > >>> > > > +        { .refclk = 19200, .cdclk = 158400, .ratio = 33 },
> > >>> > > > +        { .refclk = 19200, .cdclk = 316800, .ratio = 33 },
> > >>> > > >          {}
> > >>> > > >  };
> > >>> > > >  
> > >>> > > >  static const struct intel_cdclk_vals icl_cdclk_table[] = {
> > >>> > > > -        { .refclk = 19200, .cdclk = 172800, .divider = 2, .ratio = 18 },
> > >>> > > > -        { .refclk = 19200, .cdclk = 192000, .divider = 2, .ratio = 20 },
> > >>> > > > -        { .refclk = 19200, .cdclk = 307200, .divider = 2, .ratio = 32 },
> > >>> > > > -        { .refclk = 19200, .cdclk = 326400, .divider = 4, .ratio = 68 },
> > >>> > > > -        { .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
> > >>> > > > -        { .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
> > >>> > > > -
> > >>> > > > -        { .refclk = 24000, .cdclk = 180000, .divider = 2, .ratio = 15 },
> > >>> > > > -        { .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16 },
> > >>> > > > -        { .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26 },
> > >>> > > > -        { .refclk = 24000, .cdclk = 324000, .divider = 4, .ratio = 54 },
> > >>> > > > -        { .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
> > >>> > > > -        { .refclk = 24000, .cdclk = 648000, .divider = 2, .ratio = 54 },
> > >>> > > > -
> > >>> > > > -        { .refclk = 38400, .cdclk = 172800, .divider = 2, .ratio =  9 },
> > >>> > > > -        { .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },
> > >>> > > > -        { .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16 },
> > >>> > > > -        { .refclk = 38400, .cdclk = 326400, .divider = 4, .ratio = 34 },
> > >>> > > > -        { .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
> > >>> > > > -        { .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
> > >>> > > > +        { .refclk = 19200, .cdclk = 172800, .ratio = 18 },
> > >>> > > > +        { .refclk = 19200, .cdclk = 192000, .ratio = 20 },
> > >>> > > > +        { .refclk = 19200, .cdclk = 307200, .ratio = 32 },
> > >>> > > > +        { .refclk = 19200, .cdclk = 326400, .ratio = 68 },
> > >>> > > > +        { .refclk = 19200, .cdclk = 556800, .ratio = 58 },
> > >>> > > > +        { .refclk = 19200, .cdclk = 652800, .ratio = 68 },
> > >>> > > > +
> > >>> > > > +        { .refclk = 24000, .cdclk = 180000, .ratio = 15 },
> > >>> > > > +        { .refclk = 24000, .cdclk = 192000, .ratio = 16 },
> > >>> > > > +        { .refclk = 24000, .cdclk = 312000, .ratio = 26 },
> > >>> > > > +        { .refclk = 24000, .cdclk = 324000, .ratio = 54 },
> > >>> > > > +        { .refclk = 24000, .cdclk = 552000, .ratio = 46 },
> > >>> > > > +        { .refclk = 24000, .cdclk = 648000, .ratio = 54 },
> > >>> > > > +
> > >>> > > > +        { .refclk = 38400, .cdclk = 172800, .ratio =  9 },
> > >>> > > > +        { .refclk = 38400, .cdclk = 192000, .ratio = 10 },
> > >>> > > > +        { .refclk = 38400, .cdclk = 307200, .ratio = 16 },
> > >>> > > > +        { .refclk = 38400, .cdclk = 326400, .ratio = 34 },
> > >>> > > > +        { .refclk = 38400, .cdclk = 556800, .ratio = 29 },
> > >>> > > > +        { .refclk = 38400, .cdclk = 652800, .ratio = 34 },
> > >>> > > >          {}
> > >>> > > >  };
> > >>> > > >  
> > >>> > > >  static const struct intel_cdclk_vals rkl_cdclk_table[] = {
> > >>> > > > -        { .refclk = 19200, .cdclk = 172800, .divider = 4, .ratio =  36 },
> > >>> > > > -        { .refclk = 19200, .cdclk = 192000, .divider = 4, .ratio =  40 },
> > >>> > > > -        { .refclk = 19200, .cdclk = 307200, .divider = 4, .ratio =  64 },
> > >>> > > > -        { .refclk = 19200, .cdclk = 326400, .divider = 8, .ratio = 136 },
> > >>> > > > -        { .refclk = 19200, .cdclk = 556800, .divider = 4, .ratio = 116 },
> > >>> > > > -        { .refclk = 19200, .cdclk = 652800, .divider = 4, .ratio = 136 },
> > >>> > > > -
> > >>> > > > -        { .refclk = 24000, .cdclk = 180000, .divider = 4, .ratio =  30 },
> > >>> > > > -        { .refclk = 24000, .cdclk = 192000, .divider = 4, .ratio =  32 },
> > >>> > > > -        { .refclk = 24000, .cdclk = 312000, .divider = 4, .ratio =  52 },
> > >>> > > > -        { .refclk = 24000, .cdclk = 324000, .divider = 8, .ratio = 108 },
> > >>> > > > -        { .refclk = 24000, .cdclk = 552000, .divider = 4, .ratio =  92 },
> > >>> > > > -        { .refclk = 24000, .cdclk = 648000, .divider = 4, .ratio = 108 },
> > >>> > > > -
> > >>> > > > -        { .refclk = 38400, .cdclk = 172800, .divider = 4, .ratio = 18 },
> > >>> > > > -        { .refclk = 38400, .cdclk = 192000, .divider = 4, .ratio = 20 },
> > >>> > > > -        { .refclk = 38400, .cdclk = 307200, .divider = 4, .ratio = 32 },
> > >>> > > > -        { .refclk = 38400, .cdclk = 326400, .divider = 8, .ratio = 68 },
> > >>> > > > -        { .refclk = 38400, .cdclk = 556800, .divider = 4, .ratio = 58 },
> > >>> > > > -        { .refclk = 38400, .cdclk = 652800, .divider = 4, .ratio = 68 },
> > >>> > > > +        { .refclk = 19200, .cdclk = 172800, .ratio =  36 },
> > >>> > > > +        { .refclk = 19200, .cdclk = 192000, .ratio =  40 },
> > >>> > > > +        { .refclk = 19200, .cdclk = 307200, .ratio =  64 },
> > >>> > > > +        { .refclk = 19200, .cdclk = 326400, .ratio = 136 },
> > >>> > > > +        { .refclk = 19200, .cdclk = 556800, .ratio = 116 },
> > >>> > > > +        { .refclk = 19200, .cdclk = 652800, .ratio = 136 },
> > >>> > > > +
> > >>> > > > +        { .refclk = 24000, .cdclk = 180000, .ratio =  30 },
> > >>> > > > +        { .refclk = 24000, .cdclk = 192000, .ratio =  32 },
> > >>> > > > +        { .refclk = 24000, .cdclk = 312000, .ratio =  52 },
> > >>> > > > +        { .refclk = 24000, .cdclk = 324000, .ratio = 108 },
> > >>> > > > +        { .refclk = 24000, .cdclk = 552000, .ratio =  92 },
> > >>> > > > +        { .refclk = 24000, .cdclk = 648000, .ratio = 108 },
> > >>> > > > +
> > >>> > > > +        { .refclk = 38400, .cdclk = 172800, .ratio = 18 },
> > >>> > > > +        { .refclk = 38400, .cdclk = 192000, .ratio = 20 },
> > >>> > > > +        { .refclk = 38400, .cdclk = 307200, .ratio = 32 },
> > >>> > > > +        { .refclk = 38400, .cdclk = 326400, .ratio = 68 },
> > >>> > > > +        { .refclk = 38400, .cdclk = 556800, .ratio = 58 },
> > >>> > > > +        { .refclk = 38400, .cdclk = 652800, .ratio = 68 },
> > >>> > > >          {}
> > >>> > > >  };
> > >>> > > >  
> > >>> > > >  static const struct intel_cdclk_vals adlp_a_step_cdclk_table[] = {
> > >>> > > > -        { .refclk = 19200, .cdclk = 307200, .divider = 2, .ratio = 32 },
> > >>> > > > -        { .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
> > >>> > > > -        { .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
> > >>> > > > +        { .refclk = 19200, .cdclk = 307200, .ratio = 32 },
> > >>> > > > +        { .refclk = 19200, .cdclk = 556800, .ratio = 58 },
> > >>> > > > +        { .refclk = 19200, .cdclk = 652800, .ratio = 68 },
> > >>> > > >  
> > >>> > > > -        { .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26 },
> > >>> > > > -        { .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
> > >>> > > > -        { .refclk = 24400, .cdclk = 648000, .divider = 2, .ratio = 54 },
> > >>> > > > +        { .refclk = 24000, .cdclk = 312000, .ratio = 26 },
> > >>> > > > +        { .refclk = 24000, .cdclk = 552000, .ratio = 46 },
> > >>> > > > +        { .refclk = 24400, .cdclk = 648000, .ratio = 54 },
> > >>> > > >  
> > >>> > > > -        { .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16 },
> > >>> > > > -        { .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
> > >>> > > > -        { .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
> > >>> > > > +        { .refclk = 38400, .cdclk = 307200, .ratio = 16 },
> > >>> > > > +        { .refclk = 38400, .cdclk = 556800, .ratio = 29 },
> > >>> > > > +        { .refclk = 38400, .cdclk = 652800, .ratio = 34 },
> > >>> > > >          {}
> > >>> > > >  };
> > >>> > > >  
> > >>> > > >  static const struct intel_cdclk_vals adlp_cdclk_table[] = {
> > >>> > > > -        { .refclk = 19200, .cdclk = 172800, .divider = 3, .ratio = 27 },
> > >>> > > > -        { .refclk = 19200, .cdclk = 192000, .divider = 2, .ratio = 20 },
> > >>> > > > -        { .refclk = 19200, .cdclk = 307200, .divider = 2, .ratio = 32 },
> > >>> > > > -        { .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
> > >>> > > > -        { .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
> > >>> > > > -
> > >>> > > > -        { .refclk = 24000, .cdclk = 176000, .divider = 3, .ratio = 22 },
> > >>> > > > -        { .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16 },
> > >>> > > > -        { .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26 },
> > >>> > > > -        { .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
> > >>> > > > -        { .refclk = 24000, .cdclk = 648000, .divider = 2, .ratio = 54 },
> > >>> > > > -
> > >>> > > > -        { .refclk = 38400, .cdclk = 179200, .divider = 3, .ratio = 14 },
> > >>> > > > -        { .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },
> > >>> > > > -        { .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16 },
> > >>> > > > -        { .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
> > >>> > > > -        { .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
> > >>> > > > +        { .refclk = 19200, .cdclk = 172800, .ratio = 27 },
> > >>> > > > +        { .refclk = 19200, .cdclk = 192000, .ratio = 20 },
> > >>> > > > +        { .refclk = 19200, .cdclk = 307200, .ratio = 32 },
> > >>> > > > +        { .refclk = 19200, .cdclk = 556800, .ratio = 58 },
> > >>> > > > +        { .refclk = 19200, .cdclk = 652800, .ratio = 68 },
> > >>> > > > +
> > >>> > > > +        { .refclk = 24000, .cdclk = 176000, .ratio = 22 },
> > >>> > > > +        { .refclk = 24000, .cdclk = 192000, .ratio = 16 },
> > >>> > > > +        { .refclk = 24000, .cdclk = 312000, .ratio = 26 },
> > >>> > > > +        { .refclk = 24000, .cdclk = 552000, .ratio = 46 },
> > >>> > > > +        { .refclk = 24000, .cdclk = 648000, .ratio = 54 },
> > >>> > > > +
> > >>> > > > +        { .refclk = 38400, .cdclk = 179200, .ratio = 14 },
> > >>> > > > +        { .refclk = 38400, .cdclk = 192000, .ratio = 10 },
> > >>> > > > +        { .refclk = 38400, .cdclk = 307200, .ratio = 16 },
> > >>> > > > +        { .refclk = 38400, .cdclk = 556800, .ratio = 29 },
> > >>> > > > +        { .refclk = 38400, .cdclk = 652800, .ratio = 34 },
> > >>> > > >          {}
> > >>> > > >  };
> > >>> > > >  
> > >>> > > >  static const struct intel_cdclk_vals rplu_cdclk_table[] = {
> > >>> > > > -        { .refclk = 19200, .cdclk = 172800, .divider = 3, .ratio = 27 },
> > >>> > > > -        { .refclk = 19200, .cdclk = 192000, .divider = 2, .ratio = 20 },
> > >>> > > > -        { .refclk = 19200, .cdclk = 307200, .divider = 2, .ratio = 32 },
> > >>> > > > -        { .refclk = 19200, .cdclk = 480000, .divider = 2, .ratio = 50 },
> > >>> > > > -        { .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
> > >>> > > > -        { .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
> > >>> > > > -
> > >>> > > > -        { .refclk = 24000, .cdclk = 176000, .divider = 3, .ratio = 22 },
> > >>> > > > -        { .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16 },
> > >>> > > > -        { .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26 },
> > >>> > > > -        { .refclk = 24000, .cdclk = 480000, .divider = 2, .ratio = 40 },
> > >>> > > > -        { .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
> > >>> > > > -        { .refclk = 24000, .cdclk = 648000, .divider = 2, .ratio = 54 },
> > >>> > > > -
> > >>> > > > -        { .refclk = 38400, .cdclk = 179200, .divider = 3, .ratio = 14 },
> > >>> > > > -        { .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },
> > >>> > > > -        { .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16 },
> > >>> > > > -        { .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25 },
> > >>> > > > -        { .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
> > >>> > > > -        { .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
> > >>> > > > +        { .refclk = 19200, .cdclk = 172800, .ratio = 27 },
> > >>> > > > +        { .refclk = 19200, .cdclk = 192000, .ratio = 20 },
> > >>> > > > +        { .refclk = 19200, .cdclk = 307200, .ratio = 32 },
> > >>> > > > +        { .refclk = 19200, .cdclk = 480000, .ratio = 50 },
> > >>> > > > +        { .refclk = 19200, .cdclk = 556800, .ratio = 58 },
> > >>> > > > +        { .refclk = 19200, .cdclk = 652800, .ratio = 68 },
> > >>> > > > +
> > >>> > > > +        { .refclk = 24000, .cdclk = 176000, .ratio = 22 },
> > >>> > > > +        { .refclk = 24000, .cdclk = 192000, .ratio = 16 },
> > >>> > > > +        { .refclk = 24000, .cdclk = 312000, .ratio = 26 },
> > >>> > > > +        { .refclk = 24000, .cdclk = 480000, .ratio = 40 },
> > >>> > > > +        { .refclk = 24000, .cdclk = 552000, .ratio = 46 },
> > >>> > > > +        { .refclk = 24000, .cdclk = 648000, .ratio = 54 },
> > >>> > > > +
> > >>> > > > +        { .refclk = 38400, .cdclk = 179200, .ratio = 14 },
> > >>> > > > +        { .refclk = 38400, .cdclk = 192000, .ratio = 10 },
> > >>> > > > +        { .refclk = 38400, .cdclk = 307200, .ratio = 16 },
> > >>> > > > +        { .refclk = 38400, .cdclk = 480000, .ratio = 25 },
> > >>> > > > +        { .refclk = 38400, .cdclk = 556800, .ratio = 29 },
> > >>> > > > +        { .refclk = 38400, .cdclk = 652800, .ratio = 34 },
> > >>> > > >          {}
> > >>> > > >  };
> > >>> > > >  
> > >>> > > >  static const struct intel_cdclk_vals dg2_cdclk_table[] = {
> > >>> > > > -        { .refclk = 38400, .cdclk = 163200, .divider = 2, .ratio = 34, .waveform = 0x8888 },
> > >>> > > > -        { .refclk = 38400, .cdclk = 204000, .divider = 2, .ratio = 34, .waveform = 0x9248 },
> > >>> > > > -        { .refclk = 38400, .cdclk = 244800, .divider = 2, .ratio = 34, .waveform = 0xa4a4 },
> > >>> > > > -        { .refclk = 38400, .cdclk = 285600, .divider = 2, .ratio = 34, .waveform = 0xa54a },
> > >>> > > > -        { .refclk = 38400, .cdclk = 326400, .divider = 2, .ratio = 34, .waveform = 0xaaaa },
> > >>> > > > -        { .refclk = 38400, .cdclk = 367200, .divider = 2, .ratio = 34, .waveform = 0xad5a },
> > >>> > > > -        { .refclk = 38400, .cdclk = 408000, .divider = 2, .ratio = 34, .waveform = 0xb6b6 },
> > >>> > > > -        { .refclk = 38400, .cdclk = 448800, .divider = 2, .ratio = 34, .waveform = 0xdbb6 },
> > >>> > > > -        { .refclk = 38400, .cdclk = 489600, .divider = 2, .ratio = 34, .waveform = 0xeeee },
> > >>> > > > -        { .refclk = 38400, .cdclk = 530400, .divider = 2, .ratio = 34, .waveform = 0xf7de },
> > >>> > > > -        { .refclk = 38400, .cdclk = 571200, .divider = 2, .ratio = 34, .waveform = 0xfefe },
> > >>> > > > -        { .refclk = 38400, .cdclk = 612000, .divider = 2, .ratio = 34, .waveform = 0xfffe },
> > >>> > > > -        { .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34, .waveform = 0xffff },
> > >>> > > > +        { .refclk = 38400, .cdclk = 163200, .ratio = 34, .waveform = 0x8888 },
> > >>> > > > +        { .refclk = 38400, .cdclk = 204000, .ratio = 34, .waveform = 0x9248 },
> > >>> > > > +        { .refclk = 38400, .cdclk = 244800, .ratio = 34, .waveform = 0xa4a4 },
> > >>> > > > +        { .refclk = 38400, .cdclk = 285600, .ratio = 34, .waveform = 0xa54a },
> > >>> > > > +        { .refclk = 38400, .cdclk = 326400, .ratio = 34, .waveform = 0xaaaa },
> > >>> > > > +        { .refclk = 38400, .cdclk = 367200, .ratio = 34, .waveform = 0xad5a },
> > >>> > > > +        { .refclk = 38400, .cdclk = 408000, .ratio = 34, .waveform = 0xb6b6 },
> > >>> > > > +        { .refclk = 38400, .cdclk = 448800, .ratio = 34, .waveform = 0xdbb6 },
> > >>> > > > +        { .refclk = 38400, .cdclk = 489600, .ratio = 34, .waveform = 0xeeee },
> > >>> > > > +        { .refclk = 38400, .cdclk = 530400, .ratio = 34, .waveform = 0xf7de },
> > >>> > > > +        { .refclk = 38400, .cdclk = 571200, .ratio = 34, .waveform = 0xfefe },
> > >>> > > > +        { .refclk = 38400, .cdclk = 612000, .ratio = 34, .waveform = 0xfffe },
> > >>> > > > +        { .refclk = 38400, .cdclk = 652800, .ratio = 34, .waveform = 0xffff },
> > >>> > > >          {}
> > >>> > > >  };
> > >>> > > >  
> > >>> > > >  static const struct intel_cdclk_vals mtl_cdclk_table[] = {
> > >>> > > > -        { .refclk = 38400, .cdclk = 172800, .divider = 2, .ratio = 16, .waveform = 0xad5a },
> > >>> > > > -        { .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 16, .waveform = 0xb6b6 },
> > >>> > > > -        { .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16, .waveform = 0x0000 },
> > >>> > > > -        { .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25, .waveform = 0x0000 },
> > >>> > > > -        { .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29, .waveform = 0x0000 },
> > >>> > > > -        { .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34, .waveform = 0x0000 },
> > >>> > > > +        { .refclk = 38400, .cdclk = 172800, .ratio = 16, .waveform = 0xad5a },
> > >>> > > > +        { .refclk = 38400, .cdclk = 192000, .ratio = 16, .waveform = 0xb6b6 },
> > >>> > > > +        { .refclk = 38400, .cdclk = 307200, .ratio = 16, .waveform = 0x0000 },
> > >>> > > > +        { .refclk = 38400, .cdclk = 480000, .ratio = 25, .waveform = 0x0000 },
> > >>> > > > +        { .refclk = 38400, .cdclk = 556800, .ratio = 29, .waveform = 0x0000 },
> > >>> > > > +        { .refclk = 38400, .cdclk = 652800, .ratio = 34, .waveform = 0x0000 },
> > >>> > > >          {}
> > >>> > > >  };
> > >>> > > >  
> > >>> > > >  static const struct intel_cdclk_vals lnl_cdclk_table[] = {
> > >>> > > > -        { .refclk = 38400, .cdclk = 153600, .divider = 2, .ratio = 16, .waveform = 0xaaaa },
> > >>> > > > -        { .refclk = 38400, .cdclk = 172800, .divider = 2, .ratio = 16, .waveform = 0xad5a },
> > >>> > > > -        { .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 16, .waveform = 0xb6b6 },
> > >>> > > > -        { .refclk = 38400, .cdclk = 211200, .divider = 2, .ratio = 16, .waveform = 0xdbb6 },
> > >>> > > > -        { .refclk = 38400, .cdclk = 230400, .divider = 2, .ratio = 16, .waveform = 0xeeee },
> > >>> > > > -        { .refclk = 38400, .cdclk = 249600, .divider = 2, .ratio = 16, .waveform = 0xf7de },
> > >>> > > > -        { .refclk = 38400, .cdclk = 268800, .divider = 2, .ratio = 16, .waveform = 0xfefe },
> > >>> > > > -        { .refclk = 38400, .cdclk = 288000, .divider = 2, .ratio = 16, .waveform = 0xfffe },
> > >>> > > > -        { .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16, .waveform = 0xffff },
> > >>> > > > -        { .refclk = 38400, .cdclk = 330000, .divider = 2, .ratio = 25, .waveform = 0xdbb6 },
> > >>> > > > -        { .refclk = 38400, .cdclk = 360000, .divider = 2, .ratio = 25, .waveform = 0xeeee },
> > >>> > > > -        { .refclk = 38400, .cdclk = 390000, .divider = 2, .ratio = 25, .waveform = 0xf7de },
> > >>> > > > -        { .refclk = 38400, .cdclk = 420000, .divider = 2, .ratio = 25, .waveform = 0xfefe },
> > >>> > > > -        { .refclk = 38400, .cdclk = 450000, .divider = 2, .ratio = 25, .waveform = 0xfffe },
> > >>> > > > -        { .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25, .waveform = 0xffff },
> > >>> > > > -        { .refclk = 38400, .cdclk = 487200, .divider = 2, .ratio = 29, .waveform = 0xfefe },
> > >>> > > > -        { .refclk = 38400, .cdclk = 522000, .divider = 2, .ratio = 29, .waveform = 0xfffe },
> > >>> > > > -        { .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29, .waveform = 0xffff },
> > >>> > > > -        { .refclk = 38400, .cdclk = 571200, .divider = 2, .ratio = 34, .waveform = 0xfefe },
> > >>> > > > -        { .refclk = 38400, .cdclk = 612000, .divider = 2, .ratio = 34, .waveform = 0xfffe },
> > >>> > > > -        { .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34, .waveform = 0xffff },
> > >>> > > > +        { .refclk = 38400, .cdclk = 153600, .ratio = 16, .waveform = 0xaaaa },
> > >>> > > > +        { .refclk = 38400, .cdclk = 172800, .ratio = 16, .waveform = 0xad5a },
> > >>> > > > +        { .refclk = 38400, .cdclk = 192000, .ratio = 16, .waveform = 0xb6b6 },
> > >>> > > > +        { .refclk = 38400, .cdclk = 211200, .ratio = 16, .waveform = 0xdbb6 },
> > >>> > > > +        { .refclk = 38400, .cdclk = 230400, .ratio = 16, .waveform = 0xeeee },
> > >>> > > > +        { .refclk = 38400, .cdclk = 249600, .ratio = 16, .waveform = 0xf7de },
> > >>> > > > +        { .refclk = 38400, .cdclk = 268800, .ratio = 16, .waveform = 0xfefe },
> > >>> > > > +        { .refclk = 38400, .cdclk = 288000, .ratio = 16, .waveform = 0xfffe },
> > >>> > > > +        { .refclk = 38400, .cdclk = 307200, .ratio = 16, .waveform = 0xffff },
> > >>> > > > +        { .refclk = 38400, .cdclk = 330000, .ratio = 25, .waveform = 0xdbb6 },
> > >>> > > > +        { .refclk = 38400, .cdclk = 360000, .ratio = 25, .waveform = 0xeeee },
> > >>> > > > +        { .refclk = 38400, .cdclk = 390000, .ratio = 25, .waveform = 0xf7de },
> > >>> > > > +        { .refclk = 38400, .cdclk = 420000, .ratio = 25, .waveform = 0xfefe },
> > >>> > > > +        { .refclk = 38400, .cdclk = 450000, .ratio = 25, .waveform = 0xfffe },
> > >>> > > > +        { .refclk = 38400, .cdclk = 480000, .ratio = 25, .waveform = 0xffff },
> > >>> > > > +        { .refclk = 38400, .cdclk = 487200, .ratio = 29, .waveform = 0xfefe },
> > >>> > > > +        { .refclk = 38400, .cdclk = 522000, .ratio = 29, .waveform = 0xfffe },
> > >>> > > > +        { .refclk = 38400, .cdclk = 556800, .ratio = 29, .waveform = 0xffff },
> > >>> > > > +        { .refclk = 38400, .cdclk = 571200, .ratio = 34, .waveform = 0xfefe },
> > >>> > > > +        { .refclk = 38400, .cdclk = 612000, .ratio = 34, .waveform = 0xfffe },
> > >>> > > > +        { .refclk = 38400, .cdclk = 652800, .ratio = 34, .waveform = 0xffff },
> > >>> > > >          {}
> > >>> > > >  };
> > >>> > > >  
> > >>> > > > -- 
> > >>> > > > 2.42.1
> > >>> > > > 
> > >>> > > 
> > >>> > > -- 
> > >>> > > Matt Roper
> > >>> > > Graphics Software Engineer
> > >>> > > Linux GPU Platform Enablement
> > >>> > > Intel Corporation
> > >>> > 
> > >>> > -- 
> > >>> > Ville Syrjälä
> > >>> > Intel
> > >>> 
> > >>> -- 
> > >>> Ville Syrjälä
> > >>> Intel
> > >>
> > >>-- 
> > >>Matt Roper
> > >>Graphics Software Engineer
> > >>Linux GPU Platform Enablement
> > >>Intel Corporation
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
