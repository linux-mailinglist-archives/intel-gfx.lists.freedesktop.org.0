Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3906DC8B7
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Apr 2023 17:46:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE6E310E0B0;
	Mon, 10 Apr 2023 15:46:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B48B10E0A9;
 Mon, 10 Apr 2023 15:46:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681141567; x=1712677567;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=ew74Igycz3ip3R/ocsN70Oa8GZgVvKwk4pRnTkf8ziY=;
 b=Jomu2mLhl8PsBmTnyZ6qfdDurWDQI6CakmsHY3l1iAz96+CfzIpxuMUG
 0fQ+LboX8nyYEGPh4RWAJmUT1Lv+9Vi3KwHEq5vox+mgBKdS8Dm0+WnZG
 kpAdkt37flqNdQtAuIOnYS/wp7aL4x7O+nbT/YpBqUJMwo7c/kWZL/0FU
 DFAyswD8Y3nGCwE5kS+/YStGWiNSD6GQdJcnPsm4ZPYNLmjFu5hrAmPx3
 Frc8fzYngnG18JR3W6Igu7rPGSkXnGoo0X/QdCVBuFvnz88mNqn7KrzOD
 rPuyGIi6YfHWXe3UlRp528ACYiXRjs6Lv70QIuUW2083wuYuCIk+QpmaN A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="406212464"
X-IronPort-AV: E=Sophos;i="5.98,333,1673942400"; d="scan'208";a="406212464"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2023 08:46:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="688294952"
X-IronPort-AV: E=Sophos;i="5.98,333,1673942400"; d="scan'208";a="688294952"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 10 Apr 2023 08:46:06 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 10 Apr 2023 08:46:06 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 10 Apr 2023 08:46:06 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 10 Apr 2023 08:46:06 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 10 Apr 2023 08:46:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WCEHg8evJBHv1eQrPlfQj9lInOhX3YB//TDwmSzd5QYvWQc+8bZlUMDgwmOU2Ig+SmW/jJEB6KYa4WcBO2fYhFddcn06CabDx3BHx+cmTo6nyKl92MdcvL25n5v+Jzy6qZGzH9c+2iNXUEuMsetDKRhFTI6qwW3ZH66+UkQPnmPGPrkK8gBS294/bDYULsPca7rdzExRsoJJ2alz5gVQ533f/8DMuLtZMWAoh1+BdYRP3xNJnZULq12Z27PgkRa9neQ7gcLpGOXwu4gGAQbvLT2NQqPypo8NU6pMEzEvi29YyRXydKg0iErHpZyQn0pLrvtxyW5H7g0l3PCO3KWuNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UJw/Hxzw0orVftMLdwstfg5G8KqSv+KnpVJ2r6WoIP0=;
 b=EQA9DDnxmPmsEcR/8tDhhQld3NupuD+9ZjWm400A5MId7BzB4n6rorzC87Xnz+dnjRoIEIQuEdIIPxJ9bkj9rg0IGvhlRMaIoUkqr/Bdvpc+GTLC3Mygb9hwqKFxZl4kOx98dHUsFoHyWRaOL6YadtuMlCm9x8YYDdF+pIoj8CUD0qn49R4p+Cz1+0WGP3bM6Nny3FdpbVJPmv0X9HiN9AZlomqfyNJH/Q+uCmnmW/jkmfizxF3nrScvMylkY07uJrMUHoSnSQWgZRqvoNXk+qBg17QqUfd6dzMsBcUixthoJB3Tqkc1S8oVgEhT/0e/nQ9k1Z1bO5cgskuE7DcPqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA2PR11MB4889.namprd11.prod.outlook.com (2603:10b6:806:110::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.38; Mon, 10 Apr
 2023 15:46:03 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::2b57:646c:1b01:cd18]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::2b57:646c:1b01:cd18%6]) with mapi id 15.20.6277.036; Mon, 10 Apr 2023
 15:46:03 +0000
Date: Mon, 10 Apr 2023 11:45:59 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <ZDQvNwOAbQs0Gcw5@intel.com>
References: <20230406143133.29474-1-jose.souza@intel.com>
 <ZC8tvEoKW425Sbeh@intel.com>
 <9cdff10d82ca47241257edf8c8443e5368464692.camel@intel.com>
 <ZDQqwfP+ZcONL2wO@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZDQqwfP+ZcONL2wO@intel.com>
X-ClientProxiedBy: SJ0PR03CA0264.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::29) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA2PR11MB4889:EE_
X-MS-Office365-Filtering-Correlation-Id: 008ede67-bf29-4237-f34f-08db39dab096
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /j9FO40xbIdwwQ1hl9zG4+4j3smO3kOjiPtN9yF0+uPJztlK2omtIb1+A2pOQOCPaaGoFef15ry8tdyZ6kvKtjhb3JQr88iT/ayysm83Fc5ikWVg1wyMAt5Fm826FMlD6twQufSXUCYUWSX1q+ySM4ISfPc/H3+fG0YnAMQHW3w+Z60eaW/GpKyVW3W6Gsv5ZVQpcN+FcoIw0VMlu28sVe1grg944osveUY+HuvoHwQ/RSAzUtD4SB/1zaVLzIPECpbBpHrOpp7pRJYUL0wXbwxyRXOfQiO4r/gi836l5AbyP/o/TVxQAK1UDQcWz5oDyEnrGvz3HMdenJj896EYk0d2YIMQ/dRljE+eRnnZ4a/sD3/wU+L5VHj7bt7mhlwcXzZvRMN1WNs1WC9ZlJYZ8cF70WtVzvyci5/Vbb4gL6kCu71a2vKkiHF/GmXHILLWq+AXVSHHjQYx1kWdc5hnUfR/dkaYRR3e5FJ9Qm3195fr6nNPch4yMpLcpKTsmkm0
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(366004)(396003)(136003)(346002)(376002)(451199021)(966005)(6486002)(66476007)(8676002)(4326008)(6636002)(66946007)(54906003)(478600001)(66556008)(450100002)(41300700001)(316002)(37006003)(86362001)(36756003)(83380400001)(2616005)(6506007)(26005)(6512007)(6666004)(2906002)(8936002)(5660300002)(6862004)(44832011)(38100700002)(82960400001)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?1jyPWP4f47OvwIma2zFXFCo0FZCn2SnO+b5FlsgsELOafxPdJE0/+xNRwk?=
 =?iso-8859-1?Q?s6u+YjeeMV4A0e188nEDLPZK8LI5Bu8dAyJgBhpm42+NPuaxoKsuEfpVgQ?=
 =?iso-8859-1?Q?tHSbMCZ/peNcQ8U4xultJXhghS71DC/yq7n5/f1NLgSJ7cqtPxm6aP1DB2?=
 =?iso-8859-1?Q?PnUl1ZBSFeeg+66yUVqjEPhlCs32OgmJ0CgyoR6ORIwVGqRZ7Eo7Ch7w6l?=
 =?iso-8859-1?Q?Z7hVW7DJIwVVCv+/TRj/7W16sJw1OPV5KvUtoLOcIllHZo4bwD0tmRnJYy?=
 =?iso-8859-1?Q?DLY2OAG1jKQYndY/vAMQ/m/YsLttnwnkYgMKaWRQMffcSBTXs8P5o2GXTK?=
 =?iso-8859-1?Q?et3gGa6Vfi2F0a8l55Lj+HYykeczmAvWOOhwb+n9SGjwIvJFmN6mQEZx5o?=
 =?iso-8859-1?Q?KTNFFWbrjlKqjxSVweUBcq3iVRXeMFDwwYy6sKOtbWnC9j7R3gTdpfKTgp?=
 =?iso-8859-1?Q?vw/ueSKCMN7RIVsvL3F0mbtgw8/Z4DQSwJo+4YUQQ4AfaRb3eVGUf0ECyK?=
 =?iso-8859-1?Q?mrxrI5rRR/DznKRZsdMGsh30YdhRI3Hh78YPmq/uiRE0kGjMLBu68QTrns?=
 =?iso-8859-1?Q?GTKRXAoXgxFbC0uCNvh4RmXcwa895+6cAV0jh6wAQEKAcpv6244ezLgEVQ?=
 =?iso-8859-1?Q?GaiKzeiIir+Qnq14HZO/0GJ0IlB4dX1Rw6j330CAi3XC6DGUqQB00TkUBC?=
 =?iso-8859-1?Q?7FMjrRzWX81mwJGb/yumN6Y6dJixDo5HORra3P/a8enV3IzD4ChCvelNuE?=
 =?iso-8859-1?Q?ynzNxfBaSBO+6mb3S3nP2l9v3Fjewvh8A9KkzNjSJNuSFktxybg0hqClM7?=
 =?iso-8859-1?Q?JJniMW530aF8N/znudmw6ONfXZS/fhlLslDOxLosWmuppnQsLp5fpVN69/?=
 =?iso-8859-1?Q?wCn6mVrjqaJxtbASnylf0C+ogDX1MOOKmx0yTxSUDDpLlVbb5X5sdrHe7m?=
 =?iso-8859-1?Q?5AE+2DhyXNhoALGLnZLwsfVdaBMv2nmlKdO2h2VY99KA/ZteiBxsxHLppV?=
 =?iso-8859-1?Q?X9cmenwcX4SmQ3gAf5kLvGWUmZjTniHMd7c54IWrSRaBGSpd30K3e+KuP+?=
 =?iso-8859-1?Q?/tS0/ofvMyju5ianCsJkE5CXoJhdL3Mhmkqpwl9pua8wjm/CcMpM7mU0El?=
 =?iso-8859-1?Q?m4wFJ/Ad5hxmSuKzk0iW/X/9MEv9JAXGof9EvIo2e12hYxFsXhFi0Ee7aM?=
 =?iso-8859-1?Q?VEMOM5kXFuodkhG7Qf0GgOrxqmAaq5a1cKz8tBwCOpPdc8XhJ3Gk7EKMtm?=
 =?iso-8859-1?Q?RsJ3s72eewu/xxUgypQDl4haZkFZeh8QdT6CO4aptgLamt3uw3sok5lyjG?=
 =?iso-8859-1?Q?lJNqZxEXB/UO+Rkyou8fq0jbfg8KH5xhdmEW2mPPfF7ebwrvBNNpCdTAqn?=
 =?iso-8859-1?Q?047LUSQ7SFCqIE1qhnpaK5R9my96UGF3aD29CiPMTYZkwJf1/Ownl4ZOyB?=
 =?iso-8859-1?Q?O4Euxx7GZy+ruwyAkwkgS1yERdebu+tfhWDb3DV8ZPtaD5Ep0/Jl5gqw4S?=
 =?iso-8859-1?Q?dvdOwgmPL662LwGbIkPDloiJb4so7UkIldJ0MxveVoRPsiZ0KsQDrS94Or?=
 =?iso-8859-1?Q?EgxcewmfbMpHylMtH3KOv26B+2gia+f+cfShi4TJHAs0Q8ULDE5GMapwR5?=
 =?iso-8859-1?Q?8lCkuIB2DZ/c4zzfoYy1DXfEPWu1UWDslt?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 008ede67-bf29-4237-f34f-08db39dab096
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2023 15:46:03.4396 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Fu4mThqx6CshX2WKzmfhpJ1ublgFs6vmE2rFgwvhjDUgohDoaxa6bAvASqCXxwd8u7QH0cfcyKqC0VcGRgS8zQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4889
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v2 rebased 1/6] drm/i915: Nuke
 unused dsparb_lock
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 10, 2023 at 11:26:57AM -0400, Rodrigo Vivi wrote:
> On Mon, Apr 10, 2023 at 10:43:12AM -0400, Souza, Jose wrote:
> > On Thu, 2023-04-06 at 16:38 -0400, Rodrigo Vivi wrote:
> > > On Thu, Apr 06, 2023 at 07:31:28AM -0700, José Roberto de Souza wrote:
> > > > dsparb_lock it not used anymore, nuke it.
> > > 
> > > Well, this doesn't exist in our drm-tip baseline, so it would be good
> > > if this patch is a fixup! to whatever patch is adding this back here.
> > > 
> > > Take a look to the Jani series I just pushed:
> > > 
> > > https://lists.freedesktop.org/archives/intel-xe/2023-April/002000.html
> > > 
> > > I believe you should make this series on something more like that.
> > > so on a next step I run a rebase --autosquash and we get cleaner patches.
> > > 
> > > Also, I believe this series here might conflict with that, so I'm
> > > afraid you will have to rebase it anyway. Sorry about that...
> > 
> > Will skip this patch then, it will probably be gone in next rebase.
> 
> no. we do need to remove it. But the right way is with a
> fixup! drm/i915/display: Remaining changes to make xe compile
> 
> A patch that removes this dsparb_lock from the patch that is now incorrectly
> addding it in our xe tree.
> 
> > 
> > Can you please take a look at the other 5 patches before I send a new version?
> 
> I will take a look one by one...

done, but the i915 patches should first land in drm-intel-next and then
we backport them here or get on a rebase.

> 
> > 
> > > 
> > > > 
> > > > Cc: intel-gfx@lists.freedesktop.org
> > > > Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_display_core.h | 3 ---
> > > >  drivers/gpu/drm/i915/i915_driver.c                | 1 -
> > > >  2 files changed, 4 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> > > > index cc058eb303ee8..d2346d43d1162 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> > > > @@ -266,9 +266,6 @@ struct intel_wm {
> > > >  	 */
> > > >  	struct mutex wm_mutex;
> > > >  
> > > > -	/* protects DSPARB registers on pre-g4x/vlv/chv */
> > > > -	spinlock_t dsparb_lock;
> > > > -
> > > >  	bool ipc_enabled;
> > > >  };
> > > >  
> > > > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> > > > index 066d79c2069c4..ea2cc56d18a6e 100644
> > > > --- a/drivers/gpu/drm/i915/i915_driver.c
> > > > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > > > @@ -214,7 +214,6 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
> > > >  	spin_lock_init(&dev_priv->irq_lock);
> > > >  	spin_lock_init(&dev_priv->gpu_error.lock);
> > > >  	spin_lock_init(&dev_priv->display.fb_tracking.lock);
> > > > -	spin_lock_init(&dev_priv->display.wm.dsparb_lock);
> > > >  	mutex_init(&dev_priv->display.backlight.lock);
> > > >  
> > > >  	mutex_init(&dev_priv->sb_lock);
> > > > -- 
> > > > 2.40.0
> > > > 
> > 
