Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D316D50AE
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Apr 2023 20:34:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD0EB10E17F;
	Mon,  3 Apr 2023 18:34:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23F7210E17F;
 Mon,  3 Apr 2023 18:34:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680546870; x=1712082870;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=nGfsOqM+Fgaelnu7Bu61fgHO0bV5ieNvP1ffNut2Q8k=;
 b=R6bwduQk2/GqM6nKxmwbcBGlR32GblQ7F75wSjy/kV2Tf+6MLXcd2Qbm
 MOJvm3hb5LiuNHSydsbCQalByJn70bDj8oFHFFdhQS/EfXsrcXc8PtBUP
 xHKaENXhFpJJC5eeMfArqmgskzWmFLEh6KTCTEjllsvfHxjytQDmB4LFW
 dEvpYRQNxbcLmlFf4mV9uU4kFsPljQXwLZio0JweGBRKW17OthDI+1Q/a
 2B3pGxTI49ieD4dPIvU60VVM5D6fMnR6Fdrsukv/2zxYz/29BoA7Vyz5g
 g0Q9bGcrx185u6FbFQKMt0KfxSIulMUNHgPcNiGaPHebt2Kub/1UR55vm A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="428272541"
X-IronPort-AV: E=Sophos;i="5.98,315,1673942400"; d="scan'208";a="428272541"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 11:34:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="679580704"
X-IronPort-AV: E=Sophos;i="5.98,315,1673942400"; d="scan'208";a="679580704"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 03 Apr 2023 11:34:28 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 3 Apr 2023 11:34:28 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 3 Apr 2023 11:34:28 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 3 Apr 2023 11:34:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B1lN5eRxPFgV1YofYpOxtGFCxpryaUoDJhipFSCLg5UeMZta/dNs42mKS3q8l226ugaRN3jtxk7Nfls9xMWy9uD0RTtXHmJbe+el2nD9EO+ZN1/OYRQv6TdJFbaGYCJAgvZfrsM9C9NkqExSKum4CJGtwytPY9btASCndwyBfFA/WjL+qKLjyQiLbZAvBcB7wRpt6ELg23rh1nl6vAVxtH2gl2FbRbpZXE0wEt5AITNZY2DUBNYXs9/hR+M3eir/6963RCMGVJq8bjtn7brE6GmJXKUcXMOQYTrrG3skrg/esgja3M4peubSg7kCtHZtrmTL60WBYngAqUbyDnpeWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=juXPd8mI85aaqDp5M/mssCL5mhS+lS9FTAQRERxjCH8=;
 b=NbAt9O8R2o7MOsY6f72fIv1G4amQNjxIp3UDpJEhR1Cc8TG5h/Zsu/F1zaAKyr1iV20jYmfa87sJ6czIRLhajcQTU8L4qGToK/lSEwdf5Y3b5oMivxF1OnY4Rzu5aQK0qpQuS2u4F8SXMkezMxu59e+FXD2gKb8njYJFaolf4u3Oqeb73c1d1CYpxWB7J9YYLPA0iqQv7Mh84Ch6WbxNxTuyIZJ3xtGZKy5tfty024ousKvcPtHZwBHlNsQbG7f/8ZHljcGnvj+CjYMQzrlGznN7xFLOCSGbWcKErmlfaina3QwAs91avAtmYIPg7yFPQysis+KcmjyNsqPzUMDILA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SJ0PR11MB5789.namprd11.prod.outlook.com (2603:10b6:a03:424::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.30; Mon, 3 Apr
 2023 18:34:23 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::2b57:646c:1b01:cd18]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::2b57:646c:1b01:cd18%9]) with mapi id 15.20.6254.033; Mon, 3 Apr 2023
 18:34:23 +0000
Date: Mon, 3 Apr 2023 14:34:18 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <ZCscKrjtYBanN1tU@intel.com>
References: <20230403164615.131633-1-jose.souza@intel.com>
 <ZCsG32XI7XLljXGP@intel.com>
 <bc6c151c44b46ce04da7760b7ce359f2bf1764fd.camel@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <bc6c151c44b46ce04da7760b7ce359f2bf1764fd.camel@intel.com>
X-ClientProxiedBy: SJ0PR05CA0016.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::21) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SJ0PR11MB5789:EE_
X-MS-Office365-Filtering-Correlation-Id: a1c9440a-d5ec-4665-4fba-08db34720b71
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gEH9BUFo4MA2B7ibuqL6eYznriEMGIzErtPa1sGQuPDqMs9fO4gH9XxH4DRvioVJ+pVFJibftA3mNDrj4QacECU3moN1SqWH3dGcm9XAGZUQYKtnJzCe/ryQJmmWK0P9cu3gwiL7/zBZl7HgZMOX3ks6PmRPznF9ft3QhXKhvnnX8ZUK5ijyKFA7nWtA7J3khIkCIagOYTPLYMJTS/QEwdQWMvtdh2gFp25uksmPfdUQeKjtKeh6XTewD/juB6I/at1pjTiWIW4J3T6TNaFTneD7JDLifQg4o0wcm686BMyaNoRWdErJO0nvJoiw0bQpATy+iTtb38zPHDF4RY/gdK/rPY1Mmr3T6J5czMDlN12OFpHzPvsbOai7JnvJj9i9p6hivu6RSux1y5gWp7wCFOeum9jmqM6uXq6QmefoJrgr3CWK5fCZjmGNMHniWHgrVanQZP9whuimlTz7jhTEV52wiHSrf3AiAa08r2SC4JIC2O1hm+kgQ4qwu03W+AsI
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(346002)(136003)(39860400002)(376002)(451199021)(186003)(6512007)(6506007)(26005)(44832011)(6666004)(54906003)(6636002)(478600001)(38100700002)(36756003)(450100002)(66556008)(86362001)(66946007)(66476007)(83380400001)(4326008)(8676002)(82960400001)(316002)(37006003)(2906002)(41300700001)(5660300002)(6486002)(8936002)(966005)(6862004)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?YMJloDVv7Vd4m+e/76ZIyexoo/hsloEb/5tvna4c/FcEniCTiJe4ZPAUZu?=
 =?iso-8859-1?Q?YZsXy2K0zlE5gk14vVoK7BJgiN2V08porpobgYqM666ktyw7aJInMcCCwh?=
 =?iso-8859-1?Q?yDBriMztZo2YSbpCV67Lt6jhzDKkDn4w02djcTOF+4YW5Z0R6JmmFkJCQD?=
 =?iso-8859-1?Q?r5vHiOwhIcoks2tgxaRDaQeCK6xgBEwEDQIHR5N8Kz/KM43KSheMcw4o4A?=
 =?iso-8859-1?Q?bgbw/z5W0cEDw5SGc1mSr6wFg+SAL7kQryoTUT44Dx9G+poeF/dtoPcsjs?=
 =?iso-8859-1?Q?0n1SLwAuG+3UXAVs+xjeK13t1Zp6x3hDroRWMOAgO19QeIio1q1osZLfVP?=
 =?iso-8859-1?Q?RHKsjijGxgvu8B/L/kHM6is4f1u0Tm5p7yoKK7TgsR54YA8/b8SyliWA4x?=
 =?iso-8859-1?Q?vKpikpJkXIMjtAmT7UFTXVwaija7j0jsaLoKH/eBQVE6MNS28O6vpnZYg3?=
 =?iso-8859-1?Q?4cIuO1JK7lz9dFvTGO/kBZWu3kPSgUEYYBdAdPQRFriApSvUcrA8wbgaz2?=
 =?iso-8859-1?Q?VQF0+8EWlMTX6CAEmvi4BLrW70o14Bbcu4oYYIJo9MacSP4okMHIMunD4+?=
 =?iso-8859-1?Q?NsAo97b9OZ2j3i8z+hVMkrgqOo1gZzfyimDbMUaeskyDhGYrRW7vpLMoo/?=
 =?iso-8859-1?Q?/YFe8YbG66cn8lhSO9uT6j8T+GVjeNxWgRnya/5+IJb6Z4uMgusYkTWcbz?=
 =?iso-8859-1?Q?Wx/oYvlQ6Uxz0ZZUxUV8gCE+hA1zsvKC+aRdex89DkBt4LNvtXxadTdxZv?=
 =?iso-8859-1?Q?H8zlj2CuaOgOqzlo6BTilXEqza4+1okqnVTxLn3CJPcL0I//OoBBDx3f0O?=
 =?iso-8859-1?Q?fNqy18jbGscolo+TBsFWBbbZ8PJq7LFSVp822hWq3LB1vBJnBexvoVbzgt?=
 =?iso-8859-1?Q?o0vVFgzrAYq9v7n0sCSYkEmmSkukMUEJvHmG+BtzxdV0Aio7UFtZ5rfrKh?=
 =?iso-8859-1?Q?FN5pPWFccbJ2Kmkv9qDnIHydyVwEAEn0P0jwacu4SyV9TvcOAYc7EobQcr?=
 =?iso-8859-1?Q?3uJq/qGkZ8COe7QO0Wu3j93ZQDeM1Yxn1qtEIyqrkjBfVOT3bEXD2usGMi?=
 =?iso-8859-1?Q?UftCkIj6A70grvKYSHIyyDMkJ2InBxPE0Htzb6LBK37YSd1A0BzoHqtlrm?=
 =?iso-8859-1?Q?2J0F7HtM/acUhQQz4NsQbSiL+pJ6UgYX+74Iu9ySwZJdIWXSAZnj5EV+yy?=
 =?iso-8859-1?Q?QlemS46GclY4GCb0z/q8pAx4ONAVtjAdak2Uj6Ojjt6r6MOrR/KZcMEaEH?=
 =?iso-8859-1?Q?zyi46WMJscB3hwFaZrZS0o7xGgQE9IzOU3/8edxMV5lQJjVIeFJ9q8V3W8?=
 =?iso-8859-1?Q?uw3HSlXUM2CRQSSfPF72YGurHRWfb6JP09lOoO4AIF2hyyton69MjoN5Yf?=
 =?iso-8859-1?Q?IyWqZX0jBby5g/0VEg/Po8ZFmcX+x0Pz+zXZuU2UwL/rPSzXSBqLSkxwMU?=
 =?iso-8859-1?Q?MzWlE7dm6Ny5nulkVFnZk4+kYv7bL1M8iJhNHKn7Yak3WyJjp8VVTJZApi?=
 =?iso-8859-1?Q?DxQUl3h3AJtHqkvcweIo1BwadfXw+FLEjLSwTtTpivsqBzKb1l8mc5vQLJ?=
 =?iso-8859-1?Q?c1yFhQWqnnz1AgQKaWKGeslFPXfUuaNN0TMwPzJBsJQMjzLEFj2r1z08lv?=
 =?iso-8859-1?Q?v5oPq19oOV/k+84ATGN970uEm2yd6rSPPJBL421KWddpQQ5mCvcCGr7g?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a1c9440a-d5ec-4665-4fba-08db34720b71
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2023 18:34:22.8783 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qWyiiQJClmU8ytaYdTKVL9htJmbxTIdGG36jR/jVt1AfTMioVk2Bj+VKtOAhzEvcaSQQFFuVrA/bnOlg68ppsg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5789
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 1/5] drm/i915: Split display
 locks init from i915_driver_early_probe()
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 03, 2023 at 02:10:26PM -0400, Souza, Jose wrote:
> On Mon, 2023-04-03 at 13:03 -0400, Rodrigo Vivi wrote:
> > On Mon, Apr 03, 2023 at 09:46:11AM -0700, José Roberto de Souza wrote:
> > > No behavior changes here, just adding a function to make clear
> > > what locks initialized here are display related or not.
> > > 
> > > Cc: intel-gfx@lists.freedesktop.org
> > > Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/i915_driver.c | 23 +++++++++++++++--------
> > >  1 file changed, 15 insertions(+), 8 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> > > index 066d79c2069c4..224cb4cb43335 100644
> > > --- a/drivers/gpu/drm/i915/i915_driver.c
> > > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > > @@ -188,6 +188,20 @@ static void sanitize_gpu(struct drm_i915_private *i915)
> > >  	}
> > >  }
> > >  
> > > +static void
> > > +i915_driver_display_early_probe(struct drm_i915_private *dev_priv)
> > > +{
> > > +	spin_lock_init(&dev_priv->display.fb_tracking.lock);
> > > +	spin_lock_init(&dev_priv->display.wm.dsparb_lock);
> > > +	mutex_init(&dev_priv->display.backlight.lock);
> > > +
> > > +	mutex_init(&dev_priv->display.audio.mutex);
> > > +	mutex_init(&dev_priv->display.wm.wm_mutex);
> > > +	mutex_init(&dev_priv->display.pps.mutex);
> > > +	mutex_init(&dev_priv->display.hdcp.comp_mutex);
> > > +	spin_lock_init(&dev_priv->display.dkl.phy_lock);
> > > +}
> > > +
> > 
> > hmmm... I like that, however Jani had indicated in another series [1]
> > that he would prefer the wm mutex inside the wm code for instance...
> > 
> > So, should we move all of these to their own components instead of this
> > move?
> > 
> > [1] https://patchwork.freedesktop.org/series/115675/
> > 
> > I checked and for a few components it is simple to move them to their
> > own init functions. However for a few we would need to create new init
> > functions and call them here.
> > 
> > Jani, more thoughts?
> 
> Forgot to CC you two in the new version: https://patchwork.freedesktop.org/series/116039/
> 
> display.wm.dsparb_lock is not used anywhere.

it currently doesn't exist on drm-intel. Not sure how it appeared in drm-xe...
Probably a !fixup needed on initial display patches.

Please notice that my series on the link I sent earlier re-introduce it with a proper
usage. Ville had already reviewed the code, but I hold the push because Jani
asked about a better placement.

What I tried to say earlier here is that this patch is probably not following
Jani's vision on how to organize the initialization of these many locks.

> Moved display.dkl.phy_lock, will leave the rest to someone to take over.
> 
> 
> > 
> > >  /**
> > >   * i915_driver_early_probe - setup state not requiring device access
> > >   * @dev_priv: device private
> > > @@ -213,18 +227,11 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
> > >  
> > >  	spin_lock_init(&dev_priv->irq_lock);
> > >  	spin_lock_init(&dev_priv->gpu_error.lock);
> > > -	spin_lock_init(&dev_priv->display.fb_tracking.lock);
> > > -	spin_lock_init(&dev_priv->display.wm.dsparb_lock);
> > > -	mutex_init(&dev_priv->display.backlight.lock);
> > >  
> > >  	mutex_init(&dev_priv->sb_lock);
> > >  	cpu_latency_qos_add_request(&dev_priv->sb_qos, PM_QOS_DEFAULT_VALUE);
> > >  
> > > -	mutex_init(&dev_priv->display.audio.mutex);
> > > -	mutex_init(&dev_priv->display.wm.wm_mutex);
> > > -	mutex_init(&dev_priv->display.pps.mutex);
> > > -	mutex_init(&dev_priv->display.hdcp.comp_mutex);
> > > -	spin_lock_init(&dev_priv->display.dkl.phy_lock);
> > > +	i915_driver_display_early_probe(dev_priv);
> > >  
> > >  	i915_memcpy_init_early(dev_priv);
> > >  	intel_runtime_pm_init_early(&dev_priv->runtime_pm);
> > > -- 
> > > 2.40.0
> > > 
> 
