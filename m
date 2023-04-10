Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E7F6DC877
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Apr 2023 17:27:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 970A610E3B5;
	Mon, 10 Apr 2023 15:27:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF81610E3B3;
 Mon, 10 Apr 2023 15:27:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681140427; x=1712676427;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=boOcaZlPojIcvRC7gc87PfoTy/OcW1OXApDcDXfSPTk=;
 b=B7/Zm8sg35hJkau/bzk/C+6NdDIfjnfFv3CkjkHIIQ7j4k5T8v4no7ET
 v2lX6xN/hK4ddPElBJbew7xO9ctQgUbZj3UXiwHXVgEW5KubnUXGskRyC
 uEzGuzfh0ouJ0IbixaAX31ai6kmHKqct/S0UoeiC+RvqmuSUjsovGGg7i
 xbFZ6JJtEBx7YKpOPLgbzjZCNs2zrBFiqlkvdiiHgm1fXZ24yse38iU+K
 rxTtZNV1BUrIuBiuDUpmIPdRGja8G+JMmvfmYB24yrjvrQuLBuA2ijaQu
 3Zl4+gEPlRWfep1FufbUGLhEI9R4widxYftqpKK3YNEhx89y1Y8xdR3n1 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="343384425"
X-IronPort-AV: E=Sophos;i="5.98,333,1673942400"; d="scan'208";a="343384425"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2023 08:27:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="720864060"
X-IronPort-AV: E=Sophos;i="5.98,333,1673942400"; d="scan'208";a="720864060"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 10 Apr 2023 08:27:05 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 10 Apr 2023 08:27:05 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 10 Apr 2023 08:27:05 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 10 Apr 2023 08:27:05 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 10 Apr 2023 08:27:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KxYe9IWvQTOVYcwKDKp8M3LhA25zModfkxa9e/wompVXqVzs5iwl9XiPXcqgiyh5QqbinVfzV3aHGYJnDMzAnut9GyL/EVfMM7ZgKKomYXolFzg7vHwqWBBYAGMGwlFWAovhEoqwrPNzx55bGbdabhSlEwS9ZAlB8QlcPMqc2ZRuyauAOKhNx/tFbgb3CpESgz2+2odIF2zU1t6J/iUgF3q1mHLNbNmK5kLpwCo5hh4skFwUKW+s6BnnRmcA9AAqxlGbQ+DDIum8uDiizi2VHv+AmMDBJAYFBmu2NJuvtXmr3xJx06gEzxKY9VF0wzeK1suAqYTLKXbjh3IMChpjOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wwo13Srvxk1HLISpQy86wguB5TCMZ8T9dBQtpVVQE5E=;
 b=YQNk80Qj4mHFROhqFkdg0jUtieT2AnZ+nHPRMXC55LQnJPWOJKWReRXOmoTejVARLdnT1IvyuSQnnqqpKCFM01c53iIAnZ9dmaPx76ftxb9KUYGd0dwNXv0n0TsBX2donqfzbLvr4uRkJ07CsoKPZ/MH+vwKC2AIFyq/GSVFPVe3kfyWURuU4Rf51wIYrfMJMXLYkTPNxhknw8RXrJa8EVp+kTwUYTecUGdhyp4IqXcKHLD+yETTy1DmBug4Zo/6UHzbMijFb0FeZVlcQwksWs3wXX0auUqjDRnuH+Lz4WZKgnyLTbz2mgitm6TtgaJfLsmoFlm6BwtTiXmd4DBWFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DS0PR11MB7683.namprd11.prod.outlook.com (2603:10b6:8:df::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.34; Mon, 10 Apr
 2023 15:27:01 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::2b57:646c:1b01:cd18]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::2b57:646c:1b01:cd18%6]) with mapi id 15.20.6277.036; Mon, 10 Apr 2023
 15:27:01 +0000
Date: Mon, 10 Apr 2023 11:26:57 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <ZDQqwfP+ZcONL2wO@intel.com>
References: <20230406143133.29474-1-jose.souza@intel.com>
 <ZC8tvEoKW425Sbeh@intel.com>
 <9cdff10d82ca47241257edf8c8443e5368464692.camel@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9cdff10d82ca47241257edf8c8443e5368464692.camel@intel.com>
X-ClientProxiedBy: BYAPR11CA0042.namprd11.prod.outlook.com
 (2603:10b6:a03:80::19) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DS0PR11MB7683:EE_
X-MS-Office365-Filtering-Correlation-Id: 7b512796-deda-458f-d83d-08db39d807f5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mATKUrWejnjiChmdE2yUDuQVTXhpvH6wwQttrO/WuMMW8OLau9IxSa+lQZclPHxjYcS7bMU7I9DAUAXp/swIRImIlDfZnh9HWKWiHLSqBmmQrmbbL+OkpeftKvxQpFbqRp5kRlQuoR6Pvw7D0pIcUp9u6js+8hLvibA5eQqaH2Os6xOPp0JJ8KJ2p48bfwCQk3+7NTGfFLI3bzgaNkzwlojUOZcXgZFXPyxt9MTlF7jV6tmJl2z53sdPfGwEha8jpQQjikDXP62mWoHOptWFN8EVYPCsIlYHADHLFTcq00VpZOYDC6jE7Vx9Qt4LQJIZSwbijzRKrBMkmoIpsYU4hVwi66kULr+Lgixq+wh0kTEUsB0ozPSSFL7WKlqYYFPMeOZuiQ1ENIUUQkEwrKmFQpDYu8CQeFikT4uc4/N3YbWwjV4JJkvqkdSQo4o4otn0RZwZKBIKHG8rqraK9MBoYMPypjgV53AtDysop75POJprngOlVK52Bor0vIPwLrj3gsarnoEVzzbXYec54EEKx+fA6iCZuPphjrj32kr/i90W9gV2L6D1N73T9DE2f67f
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(346002)(396003)(136003)(366004)(451199021)(478600001)(6666004)(450100002)(54906003)(6636002)(316002)(37006003)(6512007)(6506007)(26005)(186003)(6486002)(966005)(2906002)(44832011)(66476007)(5660300002)(66946007)(66556008)(41300700001)(8936002)(8676002)(6862004)(4326008)(82960400001)(38100700002)(86362001)(36756003)(83380400001)(2616005)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?HTfaRUNyi7qKjRTy/5myZ/t5eVmpUAwKLTMqTokEiIIF9x9vAewCge4K1T?=
 =?iso-8859-1?Q?HUYr/2kTTPu2zV09vnroSx5wPJi36Z/W7zCfPokYFOhfgMbCHqEXTNlKXi?=
 =?iso-8859-1?Q?oH9V3fKUkj9qP/hShtCfI9rtH5c3d2BqtYJ/AIs/dzTqWxt1CrBB2gagUi?=
 =?iso-8859-1?Q?OXRZ9StdTa9FvhguU03veDOmcW4I/k7OMBN3qSJBVuEk8hKrFE9cR8byAj?=
 =?iso-8859-1?Q?WIZuPeuxy46ypu1B2X9ANBGaGo8PPLkXzeAIUsyUt7jYkPqS0ncDQSUcJ8?=
 =?iso-8859-1?Q?nRr8ZkNY8CHQ6bpgYcjI68F37R0my0vvrJcT0/QTz3vwJQb82KUxC58FiL?=
 =?iso-8859-1?Q?6RWujlI6nBjqMOzNcGkTc3AuoeEe1VY9ixLimwyqlQ1cd4MPF9ODbgudBb?=
 =?iso-8859-1?Q?UPFnb7RjkshIrSin0mIjF8Y+e4/CqcDuQHBVgDOtMBNde1yrlEQ/a09iFv?=
 =?iso-8859-1?Q?dFhGYAOdm1arcIrWD+p9LRl2VfY1DS1ZLu2Ml12OIpDOA9qkiMjaPuRwsi?=
 =?iso-8859-1?Q?xFcqTCE60BIHWyHLq643OFuBEfa7OhoD0Fu0reQ0U/2CzkYG2p7NoMKCXv?=
 =?iso-8859-1?Q?RxgT4IR01u29u/XOkvqlLMZqA+uyASHPwZ3rO47EpDuWdHbmFv/d+5+NAB?=
 =?iso-8859-1?Q?yvCYDnxUW2Pyvuux9pNGIXG5UgtPVpsldJD2VOc6OMkAgREi5SDaje+FsK?=
 =?iso-8859-1?Q?uo7PVf3GaCXJ1cm4jIIfYVUG98SWUvaWbfstk9skUtktnRKvYAC/HKi0kR?=
 =?iso-8859-1?Q?P7zkM7Tcw+QhG6WrSaaHnE8NTQoFjdVwSvxvcelLQeMB4uuiK9I95wIqes?=
 =?iso-8859-1?Q?xm+CJM9F7bOHWwI9yBHCzPyeUMGK1scMO5ZrrUV5gcpes86zHA/t9WEbAp?=
 =?iso-8859-1?Q?h9v++sqRFUU1az9i3x+SNn6AP3vtbIRnvH8513M8i/bbKk/lSoiDbCdA04?=
 =?iso-8859-1?Q?C5eCy2I9RUhEjwR+1YD67Q+iqBYvYIpKjO8cDTpKrZcq+5tqax/PtsKESE?=
 =?iso-8859-1?Q?5I3lXV74MWLcXUSz+3UbPR2epn9Ey1gcBKnRbyQM5G9ATSAFrV/VtAK1ft?=
 =?iso-8859-1?Q?cI5D1+yR/YCoIrWg0/fmMnfPIhe7+rfpekd+g6HaYyoUl9prvcztOdEUbX?=
 =?iso-8859-1?Q?CCiNJxL7y3IoTIkrhpxWAQJn6e3Y4u+h44VnYyZ0qjH49TEdRb1d8ybZ1y?=
 =?iso-8859-1?Q?PkDcR3SBJQ/LAqg9mZI1N6U17ezUkf4k5ehtSKI/ELzzhVOrq7UjjTESNY?=
 =?iso-8859-1?Q?quf/dc+Ei++Fhnjf9QN9o9BA8gpRycSMh1et3wivRH03WPEsi+TSzHQSmA?=
 =?iso-8859-1?Q?sYLUpxyQp3E47ABeixmwtcVi8AelxH//FM5BuGQmP1qZ6guRVp8DXTWrrA?=
 =?iso-8859-1?Q?XTSf5Z13Jv+x4v+Y0Zg9/tkqhsehLXomL2Y+WHgTFC0q8wXBZuJ13JZ1Nd?=
 =?iso-8859-1?Q?54EMI/xmoi5LuG0xRKKZmjQ2OwGFKW/09QKc7uci4sl1Cdeywkx1cuy/QP?=
 =?iso-8859-1?Q?wRfzNvUAXbFuo7a7NJTyqHRhHmr4leeILAf9gco5emzZHH5Vca63FN7lDz?=
 =?iso-8859-1?Q?Jwh15s3x/ULvVuRzQ/yI7U8+jO8JmBbuzz2qm/61WGOyAKyyjXvaxgLFRX?=
 =?iso-8859-1?Q?o0psOP0vCH3Xg4ThIfd84AKB8N/mO+fW3r?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b512796-deda-458f-d83d-08db39d807f5
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2023 15:27:01.5190 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o83IulpjzPIXFcH+utugo67WGXsDMrS/yaNOFh9kL5ldX5OU7rFQq8eLQu35/H4+7TdKjWXmYdzXy8rdv/M03w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7683
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

On Mon, Apr 10, 2023 at 10:43:12AM -0400, Souza, Jose wrote:
> On Thu, 2023-04-06 at 16:38 -0400, Rodrigo Vivi wrote:
> > On Thu, Apr 06, 2023 at 07:31:28AM -0700, José Roberto de Souza wrote:
> > > dsparb_lock it not used anymore, nuke it.
> > 
> > Well, this doesn't exist in our drm-tip baseline, so it would be good
> > if this patch is a fixup! to whatever patch is adding this back here.
> > 
> > Take a look to the Jani series I just pushed:
> > 
> > https://lists.freedesktop.org/archives/intel-xe/2023-April/002000.html
> > 
> > I believe you should make this series on something more like that.
> > so on a next step I run a rebase --autosquash and we get cleaner patches.
> > 
> > Also, I believe this series here might conflict with that, so I'm
> > afraid you will have to rebase it anyway. Sorry about that...
> 
> Will skip this patch then, it will probably be gone in next rebase.

no. we do need to remove it. But the right way is with a
fixup! drm/i915/display: Remaining changes to make xe compile

A patch that removes this dsparb_lock from the patch that is now incorrectly
addding it in our xe tree.

> 
> Can you please take a look at the other 5 patches before I send a new version?

I will take a look one by one...

> 
> > 
> > > 
> > > Cc: intel-gfx@lists.freedesktop.org
> > > Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display_core.h | 3 ---
> > >  drivers/gpu/drm/i915/i915_driver.c                | 1 -
> > >  2 files changed, 4 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> > > index cc058eb303ee8..d2346d43d1162 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> > > @@ -266,9 +266,6 @@ struct intel_wm {
> > >  	 */
> > >  	struct mutex wm_mutex;
> > >  
> > > -	/* protects DSPARB registers on pre-g4x/vlv/chv */
> > > -	spinlock_t dsparb_lock;
> > > -
> > >  	bool ipc_enabled;
> > >  };
> > >  
> > > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> > > index 066d79c2069c4..ea2cc56d18a6e 100644
> > > --- a/drivers/gpu/drm/i915/i915_driver.c
> > > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > > @@ -214,7 +214,6 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
> > >  	spin_lock_init(&dev_priv->irq_lock);
> > >  	spin_lock_init(&dev_priv->gpu_error.lock);
> > >  	spin_lock_init(&dev_priv->display.fb_tracking.lock);
> > > -	spin_lock_init(&dev_priv->display.wm.dsparb_lock);
> > >  	mutex_init(&dev_priv->display.backlight.lock);
> > >  
> > >  	mutex_init(&dev_priv->sb_lock);
> > > -- 
> > > 2.40.0
> > > 
> 
