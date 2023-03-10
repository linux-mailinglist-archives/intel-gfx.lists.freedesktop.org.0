Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6346B50B5
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Mar 2023 20:09:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81B3510E079;
	Fri, 10 Mar 2023 19:09:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 240A710E079
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Mar 2023 19:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678475367; x=1710011367;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=sOyyd8e/PW/Ag+8GT/a6C5Kh5tVvk/Kzm7V9SKzTKzY=;
 b=H2Q5KYNGqJ5VxsJg6ARPimDuq3f9ISBeVlzQWQy4tK2crIlR9/uSBqeO
 SnEBhvfAZLtTiPWPmAWP4Ob4QIfeY103AqyRlnFPXI9MwoGCOvinmy5Qw
 7wFbMl7VwHQvvy893dWEdp4B0Xs/UB4k1kFMZRN/7QKHWxCQODdXC/iM4
 o+AV8jjFTQ7mARRWxwFYwbPiMlBQ3qxzjoHgOc9CfUd7nkN2YHX6m88WS
 SrOANO3kdPcU5zIC2cihEyYnDIuCm52xaUcXFm4jid3B9oWONOGZxyZAi
 axBEgwZAaFvo6Um/c4Wb+hbDlBfJGJvqAQA1a2KFmCykvRhTaYFcZcJOA g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="364461905"
X-IronPort-AV: E=Sophos;i="5.98,250,1673942400"; d="scan'208";a="364461905"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 11:09:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="788136281"
X-IronPort-AV: E=Sophos;i="5.98,250,1673942400"; d="scan'208";a="788136281"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 10 Mar 2023 11:09:09 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 10 Mar 2023 11:09:09 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 10 Mar 2023 11:09:09 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 10 Mar 2023 11:09:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=heqER6p2sgGHAYpEbNvG+JfgLCcuSSy+7FhU2zDKLlsr4aZWjXs74addA/lOFEYlHjrg96veoK01jL1EiWZ04gbu89I2tIexEVYcMbM7CLl+2MfVLvFqs4z4X22vmD34BiyWlJWptPAYu7r//RIMtPOyO7sOfBnEpVoJovR1g7FN2BlVcbhKPQ1DCsdmSmfzFmMEA9Rw2/bg02pGOEesvHmdxm+nP8E1gEkiyNkaz4Xzfk1fJmgbj9uwFjhwnC/hjFEDEtoyz+XlXGPgdnSH8Hw0oSqdVG4wwzC4SdxTK9BrMf7w4OYd4XbFI7aao5GvDmKlWPhUEifrht9NInnDtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KV3SEC+PRxQP4knw4REBpi/GmrJJBT1vfeMRN00W7aE=;
 b=j27VuFFr13tUIPr2Glioh7gZy1zz4b8uGEqd4VLeGUexNVvb99FDJy9QF+004Z8CwXd5cA4dY0j5Q+5F0XOyMFQLRqtTrisSRZRTrSlxlVz5wOaW09uf4y7Z3lnaydZLvtPtxEmjAJzQ3CEAMLzEE6RwTi4umNCMckoUuwyXqLf1CmAndoRYYGikPV52wzyq6IOsraZ3aCyB24+UR3N0rIhCnP+/01Vyxd1ge+zsv1wgmun8MGEZr/Gaef4dZ7rf9SxHq3g5k38U2UVRcvsIAcmZirQdlOD61JltpdKbWxaaWIe6f+CkgmzBXvN/opWfEEQCIdOdPjpyEdLyP8WYuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SJ1PR11MB6201.namprd11.prod.outlook.com (2603:10b6:a03:45c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.19; Fri, 10 Mar
 2023 19:09:06 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158%9]) with mapi id 15.20.6178.019; Fri, 10 Mar 2023
 19:09:06 +0000
Date: Fri, 10 Mar 2023 14:09:01 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZAuATTy9LAxaW2rI@intel.com>
References: <20230308165859.235520-1-rodrigo.vivi@intel.com>
 <ZAkGJw5ZNgvuS01d@intel.com> <ZApXyJsA6WUxrood@intel.com>
 <ZAtaTkXQ2UsLX21w@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZAtaTkXQ2UsLX21w@intel.com>
X-ClientProxiedBy: BYAPR06CA0020.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::33) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SJ1PR11MB6201:EE_
X-MS-Office365-Filtering-Correlation-Id: d6e7b4c6-8f48-4b23-8b32-08db219aeb90
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BO+DqXlvu+Eu69kvzkzP+JyZx6b5Mm+rn36nAOO+Plne2fskNbVn6AHfBBOnJl3Ux25FQ4OFuKmgye90aDPNBWlbU9U7OL1cbBcnp9TsoDze+bwiljBazyPsDjutlpYzmUWpaIlHW0qePNUQ0inpNKTrXU/CJzGHpHCajSPVvp3/Ogf7P8HMay/sEoPgQ4DjppbhIeJPBwLo+w9l/RFTvefp04x7qY/MirmkyM/QOW4GjYnDdAReN0R1pHT/OVO/EpmkxEhGmkTrpBq3Oi0JU4FRCvnCTRpolB7F1LeiPOtUTWJAr9HJ2n6ztXZKP2fuo9RfaZMhj6fQfC9kkTIgomZBunaptPchzeDhusSwPYnttAVOdTOuS+k40tMvAzNLRW66HGHiiga4nUSkdlxjW9glWLMjysaevhpRZv5QHOkFtYd51W/mB5wXLN/tCqgq6ojvier0qaz2jZY+UWEadmrYCSBX7YMzEX3e1PoQFKmq43IpFOOYx1dWmpJe0+oo8RNMTxeuDJsjNrq5tOWwlwR7TFa5A1C4e5+lkXY/vqnDfKsAWC5099i6PS3dok5edQjz0QmH89yKVQQoYD1dcqYjRvPWlQAOxV1DzzkF7bwSkhT9ij0JJBRcYpZNhlFy
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(39860400002)(376002)(366004)(346002)(136003)(451199018)(36756003)(83380400001)(66574015)(82960400001)(186003)(6666004)(4326008)(5660300002)(6506007)(26005)(6512007)(966005)(2616005)(6486002)(8936002)(2906002)(41300700001)(8676002)(66556008)(66946007)(86362001)(66476007)(6916009)(44832011)(316002)(38100700002)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?WcIrjApoCxPRmPV/q/sWifJ3xEUTTYPxGugbne/3xtBVdyxv5ZknoHgWYb?=
 =?iso-8859-1?Q?OsqoDYisJE4OEhmBOis/3t6PfziJkCbqEoh+i0xGclzZl/EQnUuAVLzu9r?=
 =?iso-8859-1?Q?RAu6yGdvgikMU5vepu2HnThArhfR0dTE3YgHwakCd4eccj/8caa/cbzw3O?=
 =?iso-8859-1?Q?LMErur3fxemfdqVbx24eUFniocyp2pubetZ0WSVD0S5ECQe2iEyrHTyoBn?=
 =?iso-8859-1?Q?EFdeqzYMltgZjZYra0fgYoObUxzKfgYV11cyFBYmswahofbofJEcxaWTNo?=
 =?iso-8859-1?Q?jUG5C+DKwBmRcY/ANdcT1+z4HI8/PJx3nzK4FkDPFZXoNF4x5atQjc5Ufo?=
 =?iso-8859-1?Q?OdmSyUvlGca1WDjaIaZukCimInWWt3nWJdQTZk+zF4rPR8ScZX7g3bcXTs?=
 =?iso-8859-1?Q?VWaqllnzncbMqydDVVOn7v5HXPl3YIwWvyqhksuaMZlPuXeGbHtFQoUwTB?=
 =?iso-8859-1?Q?eIlWfCQBlafzGVWWJ4Z4a6jhPjbzWadUXhtNiZbizbejANX3B/Sx5Rx4zr?=
 =?iso-8859-1?Q?Rjm3ASFJK8gipWRKicSL9bLOfUXaKzR36zHylJnUFAjbtSGlBk7yWkVjh6?=
 =?iso-8859-1?Q?ar3FBnbdcxR0zQrtUK+Bdw7GIh5jOOfEsQoYTmoWeo+HCkH3Ncl2zFsQjz?=
 =?iso-8859-1?Q?Sp9F0pfnJzN5Oj48PiUN9J0QmPgXJ14Uu8qg/XFWkaxrePR6JPuzKaEjow?=
 =?iso-8859-1?Q?HYzvMAG13e0QSzq2LOu1o9CcuYqgrxk5cjdezRuUmsbf/KTp3PtsGsij2r?=
 =?iso-8859-1?Q?0GW9rtSb7OdAiTiwId2A0ZHWdj3SLJKejeEG9oziB1VcivY4o3ycWUxcjK?=
 =?iso-8859-1?Q?P4HTYcTbVrgkaGsaFj3IPybqOiUHfxBottCxuQOLEQIA4bi0fOh5gfCQ9Y?=
 =?iso-8859-1?Q?nQTEEEjuRHmlgfme9FRJsOVFKPlseSgTc0R5qQxDypHPvDB5wLZqcu+3vc?=
 =?iso-8859-1?Q?I75UiG8lp6Bzh7UMCjwAjJD0NEFeq4rvDlcKPYDZ0qzCxAVY3CkGUKjCGj?=
 =?iso-8859-1?Q?kxw49P3vQ8ZztjbwjgKTbN3KtwGNx3BqznpLYwktmcUC3UovPqREzClfIA?=
 =?iso-8859-1?Q?w3dIRSsVIJPrDZyZ4PaRg7z7oI4zFYkuEWTu0y0LAOY5BxMH0cNIbhkhjy?=
 =?iso-8859-1?Q?uVqArA9sBnj8mH3CSkoApUjkWwcuuDFrjxuWQhXUBGJWyZttcu/EjDGete?=
 =?iso-8859-1?Q?s6hin2OuFeOiQSBJX79B+Kr/MCr+sWriL6BZbLDkWdWVwOcRm99TB8fX3O?=
 =?iso-8859-1?Q?h28zQiXleE3FT0jyTgugQe6BcT1zhOdZe0QEWSCS6MVUyEZobvXwfvAvP9?=
 =?iso-8859-1?Q?1EAKpzUUTH3Fsmh0GqFJYgAuVJr8nOtdGwtykjkidFl7IDaspuwCFya9KU?=
 =?iso-8859-1?Q?pkQ1CAQbnUdSMxBViRbjxv/L7PkjEEwxr6Vzjto+A/S6tFlrVADxXc/d4z?=
 =?iso-8859-1?Q?CSjSUdAmcKtlGFRIIkkyIwNkai8K5U3zUUFPEOx0jw2MOKa/h/ZcD23541?=
 =?iso-8859-1?Q?zW7g0L/t5KRB1+vBK+PqA0MjexLNAoHvtymU7rgqUvuDkuDHRAZ/XCY4ty?=
 =?iso-8859-1?Q?BCptOF0SaP3oRceqlYrz2eS2xcDFaIpSoh3ogNC+/mzBHzOP5VCCapZT3F?=
 =?iso-8859-1?Q?5gwvKT+K6CS9O8M+KgvOHjpwbT/aOV6GxgWlHoRijt8mlQdP8gLdpSiw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d6e7b4c6-8f48-4b23-8b32-08db219aeb90
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2023 19:09:06.6684 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: exRVDlEPySPy1HjgSaHjd/OD6xccstYKJt2IeVja834b7A+K7vdiA3W7iA1IrJXKOl3RZQsNpOgHlxX8LXvvBA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6201
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: Restore dsparb_lock.
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

On Fri, Mar 10, 2023 at 06:26:54PM +0200, Ville Syrjälä wrote:
> On Thu, Mar 09, 2023 at 05:03:52PM -0500, Rodrigo Vivi wrote:
> > On Thu, Mar 09, 2023 at 12:03:19AM +0200, Ville Syrjälä wrote:
> > > On Wed, Mar 08, 2023 at 11:58:58AM -0500, Rodrigo Vivi wrote:
> > > > uncore->lock only protects the forcewake domain itself,
> > > > not the register accesses.
> > > > 
> > > > uncore's _fw alternatives are for cases where the domains
> > > > are not needed because we are sure that they are already
> > > > awake.
> > > > 
> > > > So the move towards the uncore's _fw alternatives seems
> > > > right, however using the uncore-lock to protect the dsparb
> > > > registers seems an abuse of the uncore-lock.
> > > > 
> > > > Let's restore the previous individual lock and try to get
> > > > rid of the direct uncore accesses from the display code.
> > > > 
> > > > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > Cc: Jani Nikula <jani.nikula@intel.com>
> > > > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/i9xx_wm.c            | 13 ++-----------
> > > >  drivers/gpu/drm/i915/display/intel_display_core.h |  3 +++
> > > >  drivers/gpu/drm/i915/i915_driver.c                |  1 +
> > > >  3 files changed, 6 insertions(+), 11 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
> > > > index caef72d38798..8fe0b5c63d3a 100644
> > > > --- a/drivers/gpu/drm/i915/display/i9xx_wm.c
> > > > +++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
> > > > @@ -1771,16 +1771,7 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
> > > >  
> > > >  	trace_vlv_fifo_size(crtc, sprite0_start, sprite1_start, fifo_size);
> > > >  
> > > > -	/*
> > > > -	 * uncore.lock serves a double purpose here. It allows us to
> > > > -	 * use the less expensive I915_{READ,WRITE}_FW() functions, and
> > > > -	 * it protects the DSPARB registers from getting clobbered by
> > > > -	 * parallel updates from multiple pipes.
> > > > -	 *
> > > > -	 * intel_pipe_update_start() has already disabled interrupts
> > > > -	 * for us, so a plain spin_lock() is sufficient here.
> > > > -	 */
> > > 
> > > I was wondering if we need to preserve the comment about irqs,
> > > but since this is the only place using this lock, and it's never
> > > called from an irq handler a non-irq disabling spinlock will suffice
> > > anyway.
> > > 
> > > Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > thoughts on this: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114868v2/fi-kbl-7567u/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-b-dp-1.html
> 
> This code doesn't run on that platform, so unrelated.

oh! indeed.
okay, I just triggered a rerun to get the full round... luckly...

> 
> > 
> > maybe related to the usage of this uncore.lock in
> > 
> > drivers/gpu/drm/i915/display/intel_vblank.c
> > 
> > ?
> > 
> > Should we create another spin lock and include both of these cases?
> > (Then the irq comment is relevant again :))
> 
> We're already 4 spinlocks deep when in vblank code. Let's not add more ;)
> 
> > 
> > > 
> > > > -	spin_lock(&uncore->lock);
> > > > +	spin_lock(&dev_priv->display.wm.dsparb_lock);
> > > >  
> > > >  	switch (crtc->pipe) {
> > > >  	case PIPE_A:
> > > > @@ -1840,7 +1831,7 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
> > > >  
> > > >  	intel_uncore_posting_read_fw(uncore, DSPARB);
> > > >  
> > > > -	spin_unlock(&uncore->lock);
> > > > +	spin_unlock(&dev_priv->display.wm.dsparb_lock);
> > > >  }
> > > >  
> > > >  #undef VLV_FIFO
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> > > > index fdab7bb93a7d..68c6bfb91dbe 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> > > > @@ -253,6 +253,9 @@ struct intel_wm {
> > > >  	 */
> > > >  	struct mutex wm_mutex;
> > > >  
> > > > +	/* protects DSPARB registers on pre-g4x/vlv/chv */
> > > > +	spinlock_t dsparb_lock;
> > > > +
> > > >  	bool ipc_enabled;
> > > >  };
> > > >  
> > > > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> > > > index a53fd339e2cc..c78e36444a12 100644
> > > > --- a/drivers/gpu/drm/i915/i915_driver.c
> > > > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > > > @@ -223,6 +223,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
> > > >  	mutex_init(&dev_priv->display.pps.mutex);
> > > >  	mutex_init(&dev_priv->display.hdcp.comp_mutex);
> > > >  	spin_lock_init(&dev_priv->display.dkl.phy_lock);
> > > > +	spin_lock_init(&dev_priv->display.wm.dsparb_lock);
> > > >  
> > > >  	i915_memcpy_init_early(dev_priv);
> > > >  	intel_runtime_pm_init_early(&dev_priv->runtime_pm);
> > > > -- 
> > > > 2.39.2
> > > 
> > > -- 
> > > Ville Syrjälä
> > > Intel
> 
> -- 
> Ville Syrjälä
> Intel
