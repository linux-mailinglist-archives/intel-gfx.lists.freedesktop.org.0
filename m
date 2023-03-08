Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE3A76B107E
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Mar 2023 18:56:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C91410E058;
	Wed,  8 Mar 2023 17:56:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE73610E058
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Mar 2023 17:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678298214; x=1709834214;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=rgLVY78EKWgMZ2OFhmU3s2UpmtkJuKWmmQHmEmdB/gs=;
 b=fW0h2PjJ0I47+iEuhrKhUWHDyhPOA3Pud9E/AaBv0sUo/VjBAN3Rhtkk
 eQaeuNbtnR5J6kC4aU304oMlsWH40zKuTMB9dQ5VZzI0RenpOS1Of/YEO
 qGrABuC4P5H89TA5PnrTv/4nMMxZe2p2CHR6zbrHJfJ5xD2uCqS8jksVw
 jEEDxwLAJ0DP//LRV03AicSZJvR4f6yTnesItWdnL6rBZRVk+QVSOtFRp
 7avskKDLqJMavJsbfkDwUo5q7ZqpFfyDTM7UXTfbCWjBd2+lYihsPi/sF
 s8IPBe7JuW/2g0GZ+p0iOjXV346E2JW1XdyZpG4nLoxxbV8C7JJi4Xa3N w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="337749586"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="337749586"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 09:56:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="746000824"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="746000824"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 08 Mar 2023 09:56:39 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 8 Mar 2023 09:56:38 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 8 Mar 2023 09:56:38 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 8 Mar 2023 09:56:38 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 8 Mar 2023 09:56:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gVuLH6Gt900jO+S15VkDFIf/ogWLbOhfd51r6BqSohrCkOw1v0dhgtDnqmCxacdC2fys5bdtnurM9UjTg/bEXnZR/htLdOc+JnRiMxnkDSXaXnLak7cv70cBCrVSEa+160PCA/WK5iOAYLi+uRnXmT6R/0roNg5l/+8xOmA0jopV4ZsXSNAz51qOdWr7p2HXSokR85Vv2z5dwz0B1YPA9QYOlWxx6uLY5ILI0PVG3NVfr6qzvnU7bzcUhiOojwmSEkmw3lOe56u1DHvXmyrD/VrGQoR2+rCQ7Q9sXdZOq9Rxj6NhBAjtbOAtVy7i367t8YfiN7Mujoq+kZtcjcPHAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FLgvK7yj6nudmrxfsmTaiQ3EfOeH4xWQpI3d7QC5fsI=;
 b=JLhmofP3ltrheNGKavm5o2IVygPYov0Sm0Dt8hqG+AI6iJ8hQOe+J8hGmjx9Lgnw+MsxThzJjcIF2AKVQ9W/zmRYuwF6fweOTgexRJfdUBvYVwgGzhT8Dy7yzgeaheVeI8/0gMNVHp69GH/PIt1We6FwCv+c1nh2hvoDGk359K+1E1KhqdqNBjWpFjZ1SMT2gzqp2nAi9HdK0SqH9L1NhJC+7QOO4kinnUtYcZ+3OOMp0jVf1sMXS7ylq5txL4h0O9mMzojUIP6yky/coM54ZxKQW9/BCg1a+u7/0p+RYlNPR1s09L26jMqrVq6q1knlK8KargulfL36xOubW3HZHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SJ1PR11MB6250.namprd11.prod.outlook.com (2603:10b6:a03:459::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.29; Wed, 8 Mar
 2023 17:56:33 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158%9]) with mapi id 15.20.6156.029; Wed, 8 Mar 2023
 17:56:33 +0000
Date: Wed, 8 Mar 2023 12:56:28 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZAjMTAnKPG1NQG8+@intel.com>
References: <20230308165859.235520-1-rodrigo.vivi@intel.com>
 <20230308165859.235520-2-rodrigo.vivi@intel.com>
 <ZAjK4yVlIV3Wwi8b@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZAjK4yVlIV3Wwi8b@intel.com>
X-ClientProxiedBy: SJ0PR13CA0204.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::29) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SJ1PR11MB6250:EE_
X-MS-Office365-Filtering-Correlation-Id: ec0f6f36-6413-4fb6-e1b7-08db1ffe7401
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: STq4x2jFBnddomyJ7FQt+NuOb+7iATKvSpZm/bdPjbLNScBQnCe/Dvad2aDfSvtLNm02VKAZG0/Fq5chkYf9SXrWAKNadIDukAQ1pq78pYKJnN26QgeS1dBLzKEqKMOudYAtAWsALfvp6KkEMfTSxSijSLCTENsVK+rqmctC5/kjdjHY4pmv0TPIkIl6cXykhO6TK4MRR+1WD13iEnc9eM4ArrMbZSByMSkGewCvLjQQc5p1e3GzCoSPBL5rXSZlgMoxK92Xavp2AruPiL4LhzBPU1WTHLvWVN1Oels5h5Ecbjy4adsnOuxZHC2z2dxhfRpoknZdVdoOOYYIx/Jzyk6Iz7uak29HBlV3Ku0vBVjGVpn4S52VS3tQ0QN74Ringpk444TEBytMPdO8kwnlhglg+qk4BOxlQSqpxy4vY5dzPqHD15Cc0M/L35iNZhZCMYHAiUGdimSMphUfuqY7GivitSNKGPwBLuzFFRoz/pBIOmnPqW5+/7oBb4s6XwcVTSzZOKCSCpqv4uBBTgrVVooeYjCwlFoljo+9ad6pmraZ/tTBZ6+lVk8IOCkXh7tMNQ2IE7v1KUmZUoPRM4jVb1RRL5UWSc9+7xe8Uj7JcS1xVkSey0Em9lz8WMdFwOCIOmO6ck9Mm+bt50UHnigF6w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(376002)(39860400002)(396003)(366004)(346002)(451199018)(2616005)(44832011)(2906002)(66946007)(6916009)(4326008)(5660300002)(66476007)(66556008)(26005)(186003)(8676002)(41300700001)(36756003)(6666004)(82960400001)(38100700002)(8936002)(6486002)(86362001)(478600001)(6506007)(6512007)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?s0fRr2Lh0G/Ah1HgVT8c5VhxRQBW86T7IqkR99eAyex4Ompgx5t24z0Bl0?=
 =?iso-8859-1?Q?kJGVw6GFkud8Q1hCTwuhGTOQRFmLeJrzGTgVtuQteg9SYoHfjpsy5CuZLe?=
 =?iso-8859-1?Q?5TCpcjBV2rp4teV7eeXl4WPMYtA9nkcocL9y+AUNGfQgbF6Rn7aLF/ZVeD?=
 =?iso-8859-1?Q?xZ4BqN7Yh1k8duw8c162GKYw+Xx874C0i0OCl1aK3+iXKBcsUje4IOCMYh?=
 =?iso-8859-1?Q?gwFdW8oBECo0yOh6FFcHXiQ1A9Rdb+wbDSYWgI/HWG1wevQaDJHNNgoQw7?=
 =?iso-8859-1?Q?N9eUtw5JNR5LcVPkiVcL22IietKzDnsVmeS10a200i2qod1MNgzty8i5GE?=
 =?iso-8859-1?Q?3l4IB3aWdZdTk+zE4a5ZXQGl8EvZDbvtgXi0huSC/q/UaVPDcsYHShpck7?=
 =?iso-8859-1?Q?Fi8llKng1ljd4UTLal+A8eBz4SLnWr3w1I+ZJ8WdjZlzDfSv0ZV+TPaDRG?=
 =?iso-8859-1?Q?mluEpEKvZW5S2N/Jjlubaok5T4BVq/OT1lID5EDd/U0swIf2cCoLdu5DEr?=
 =?iso-8859-1?Q?ufE6yP7aldeGGztNmrTGAHbzW9ckFV3/5OY5ecDgYnNrLwqs6IwxgfOcd8?=
 =?iso-8859-1?Q?Qc9MqGfmLSRacFFCEqiqm3GUy6qYZNXdmBtUHpg333I309zZw77vEhrfte?=
 =?iso-8859-1?Q?q/kVzdQbtIkk/RpkD63j3tBZ/LOSyUdL635neNAyTONMngaEQLfJh9UCQo?=
 =?iso-8859-1?Q?Fer+WxaiA9OiZZE7w47hqMafE7HCzqG8ydGX7/vczw3vL6xUVXvHGeiXbY?=
 =?iso-8859-1?Q?Hm0VoE6X1jSbCmsliGepiRkw71QLQ0ifymg/DhYZ1DEzjMI5PbJfkbBZQs?=
 =?iso-8859-1?Q?LsZf7GssvehqgpDFc7EoN0rpKr8n/aOsYWUZnqPVYtH25CcTPp0WHOCjK8?=
 =?iso-8859-1?Q?lZ7utnanVtNrWTG0d/Uwhu/BNrp1yDlfBjgh3dpl8LsPOMOFrvi/+ya/Yd?=
 =?iso-8859-1?Q?z3kkEcO2QCgFGSeU5ZZW5gd81QDJ1g38fxCOXRYw8gSVe6+m/+sYOchfC4?=
 =?iso-8859-1?Q?enG3Y51YbrF9NW0gxNJJ50TgHqkO8BrG6lSOAVToLjqJ03J0WpdKBWZq+R?=
 =?iso-8859-1?Q?W4I2rkFhloPvc6aZmHAOJu826Xh1pB9rrvI9PBefyfBY9pEn7aCzLJkWg3?=
 =?iso-8859-1?Q?YxtR0Aqr/jDMeGGDfrY0bkGlIYuJyzhc5KIlGqwsomsE2c+DeZZ/Nwb4wS?=
 =?iso-8859-1?Q?UJLayIiuD6/SwfcCf1HoKBsBwZSl1H7SRhSi5FGAlkD458Kf9WVT1LeGFW?=
 =?iso-8859-1?Q?lgVgcCSqvi0IRmI6SRENNDOYzNKc76rWRRdu5GuI7FVjRtopTbCcrWe4Yv?=
 =?iso-8859-1?Q?KnfA9X/MMhV/jyEgtOFiZeqTzL84QOtx3C/M2lB5k5EfC8YaXVW4E+7GxW?=
 =?iso-8859-1?Q?Yj1DmaeMKxHkGelznVAKPoroFbymk8W/9sJpg/mVtXx3djAdLaGxe9o7Od?=
 =?iso-8859-1?Q?AscUqDJR1Dvm96gplGA1MHTKVwUgNJLtt/BCDkyBItiD2nE6g7hoSVudb5?=
 =?iso-8859-1?Q?VBJkf9KySGvy7g0GbzVCJjGnch7IfJD17dF15Ti989Ckc/ghQKVyrbW5Vv?=
 =?iso-8859-1?Q?vNRIHO0V1AGA7YKeCydz6UQQDJSJTT8zfFQzYtgQ5mImEv5JjT7AjF4D9R?=
 =?iso-8859-1?Q?z7Eu0PGJnytWLNG5m9LF8FT3j4LFtK3ynjnItcNqnFgR3f5f6u20EPsg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ec0f6f36-6413-4fb6-e1b7-08db1ffe7401
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2023 17:56:33.4004 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8x/hUz8JSYgGnTGiPBDbZRugbBlhHBDkDZbSpcZtYbHRCXqI7OTNh6Vh1/5v8Brg9sqUjVhQs3eMwp7pJgoz5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6250
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/i9xx_wm: Prefer intel_de
 functions over intel_uncore.
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 08, 2023 at 07:50:27PM +0200, Ville Syrjälä wrote:
> On Wed, Mar 08, 2023 at 11:58:59AM -0500, Rodrigo Vivi wrote:
> >  	} else if (IS_I915GM(dev_priv)) {
> >  		/*
> >  		 * FIXME can't find a bit like this for 915G, and
> >  		 * yet it does have the related watermark in
> >  		 * FW_BLC_SELF. What's going on?
> >  		 */
> > -		was_enabled = intel_uncore_read(&dev_priv->uncore, INSTPM) & INSTPM_SELF_EN;
> > +		was_enabled = intel_de_read(dev_priv, INSTPM) & INSTPM_SELF_EN;
> >  		val = enable ? _MASKED_BIT_ENABLE(INSTPM_SELF_EN) :
> >  			       _MASKED_BIT_DISABLE(INSTPM_SELF_EN);
> > -		intel_uncore_write(&dev_priv->uncore, INSTPM, val);
> > -		intel_uncore_posting_read(&dev_priv->uncore, INSTPM);
> > +		intel_de_write(dev_priv, INSTPM, val);
> > +		intel_de_posting_read(dev_priv, INSTPM);
> 
> I'm still not really convinced that we want to
> use intel_de_*() for non-display registers.

hmmm... I see...
so should we create a new component out of i915/display and move
these calls there?

but in the end of the day it is the same uncore functions that
are getting calling underneath anyway, right?!

I believe i915/display should only call intel_de for mmio, so it
gets easier on the code reuse on Xe.

> 
> -- 
> Ville Syrjälä
> Intel
