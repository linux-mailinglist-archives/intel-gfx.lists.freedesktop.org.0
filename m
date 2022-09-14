Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 891F85B8C02
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Sep 2022 17:36:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA95D10E042;
	Wed, 14 Sep 2022 15:35:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C11B210E042
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Sep 2022 15:35:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663169751; x=1694705751;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=pazspkx17+4IIeIA6dfujNaPmFS/V0oJR3WpyMdZg0c=;
 b=iDtU/4DtLnM8Q7Bs6AzvPAdbfQIXiaXg9RTc1eT9oiJFG4cyYQTjjCJz
 bBEcVYvyah4Cuqjaafqwj8e9oazpr1jiUo6db7W7oCHDF15gWDbNy5itv
 cENUk+yf9CHtJUQWlA7+URs/rx2EFa73RyHyDlkgigHje8KaGegHh/8Ea
 xFbrdBPYsGOxa08wpSHYHax0JvEvL7SPdtZ3/j9fVaB18iFUfGCzm16Xj
 H08uAe72+2FonIesCatfmtdWgReogs32TCmixtrM+i4m0lOpsY9iSA3/C
 oC/M69x1j53Hat05Z0ZSHBOeiBd3XxUvwVzbkXJgrAKLw/JsUvVBZILmn Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="285500030"
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="285500030"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 08:35:49 -0700
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="679097420"
Received: from pvasili-mobl3.ger.corp.intel.com (HELO intel.com)
 ([10.252.57.74])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 08:35:46 -0700
Date: Wed, 14 Sep 2022 17:35:44 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Message-ID: <YyH00K6oxqwlyWu9@alfio.lan>
References: <20220914141553.16864-1-anshuman.gupta@intel.com>
 <YyHmK0sc2r1G7x5i@intel.com> <YyHod22zbMjkh8iY@alfio.lan>
 <CY5PR11MB6211B3178019DC4309DE43CB95469@CY5PR11MB6211.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CY5PR11MB6211B3178019DC4309DE43CB95469@CY5PR11MB6211.namprd11.prod.outlook.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/DG{1,
 2}: FIXME Temporary hammer to disable rpm
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Auld,
 Matthew" <matthew.auld@intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Anshuman,

[...]

> > > > +	 *  which really disables the PCIe power savings and leaves the bridge to
> > D0
> > > > +	 *  state.
> > > > +	 *  Let's disable i915 rpm till we fix all known issue with lmem access in
> > D3.
> > > > +	 */
> > > > +	.has_runtime_pm = 0,
> > > >  };
> > > >
> > > >  static const struct intel_device_info adl_s_info = { @@ -1076,6
> > > > +1096,7 @@ static const struct intel_device_info dg2_info = {
> > > >  	XE_LPD_FEATURES,
> > > >  	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) |
> > BIT(TRANSCODER_B) |
> > > >  			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
> > > > +	.has_runtime_pm = 0,
> > >
> > > The FIXME msg can be smaller, but it also needs to be here.
> > 
> > I actually like the comment, is very clear and helps understanding the issue :)
> Shall I move the comment to commit log , and keep a smaller comment for both DG1 and DG2 ?
> With that I can address your comment and Rodrigo comment as well.
> Keeping such a big comment at two places will not make any sense.

OK for me!

Thanks!
Andi
