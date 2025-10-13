Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F424BD5721
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 19:19:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF49B10E0A2;
	Mon, 13 Oct 2025 17:19:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MpH0SiOT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9188E10E0A2;
 Mon, 13 Oct 2025 17:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760375963; x=1791911963;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=d5yntMWubaY2pHM4QP+zNiwJMlVYEJMFLfu1vJMivyM=;
 b=MpH0SiOTYZtylZ964aP05znoHUjbarHHostpIlB6AQF+09TGINeJVrmU
 TwjSR5iiyI5n4KoX8eybaIcwuQ1ktWJsCd1DHkmDSz+NyLTAZSpDJi/sO
 OoTu1KjqP4vuGancLRuDaTlduiowihyUTk5TUj/88+Q08UOsX1+bUEPnm
 avpFbz35ltNGQxWtzkh6rI9vzhNsx0/pqfacwu8dGXxDHZ3fEKGwEv7G1
 i3NhWTh6ol5qUDVCki9ojIkU4BpcHNKnQmQKTBAAzAnqksmiT2JouTJvh
 4vqdum1+ctuBLBR5YQsppDooPKik5HeS6jtY/UYhs+NPmF/hI3oqcGybR A==;
X-CSE-ConnectionGUID: wyS8uXIOQTa8DZzHEhyfqQ==
X-CSE-MsgGUID: AJtJfqJGQ8+pLXlMkmu6Ww==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="62415596"
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="62415596"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 10:19:23 -0700
X-CSE-ConnectionGUID: OpCbmG/sQWeFaLE9amUMdg==
X-CSE-MsgGUID: tMqduKj+SJi3/ZRGoFBSZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="186062167"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.105])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 10:19:20 -0700
Date: Mon, 13 Oct 2025 20:19:17 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: Maarten Lankhorst <dev@lankhorst.se>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>,
 Vinod Govindapillai <vinod.govindapillai@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>
Subject: Re: [PATCH 2/9] drm/{i915, xe}/fbdev: add intel_fbdev_fb_pitch_align()
Message-ID: <aO00lQvvlyKUX9_N@intel.com>
References: <ae51d1e224048bdc87bf7a56d8f5ebd0fbb6a383.1756931441.git.jani.nikula@intel.com>
 <aLqsC87Ol_zCXOkN@intel.com>
 <48e0a14d67ba84d64f6589bbdd0090e86be4fd4f@intel.com>
 <7cs3dirtgrypn7xjzmv7rxmkgbrtfxxjmtth576kfwerlydcgx@6zelewdmaukb>
 <fdcc32f2-c36b-439f-8d15-14b3fb7bd5dc@lankhorst.se>
 <aL8D_dRE5nslOAUi@intel.com>
 <86c6dd41fba3bc78b82a0f0343c7be770126a4e4@intel.com>
 <aMm4UfqnlZ4RfMDm@intel.com>
 <0f9e52f66a126ca0d446015539018e29219d4b13@intel.com>
 <179b10ce04e0e0d5f08fd8e2eaeae4cf689ba2ea@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <179b10ce04e0e0d5f08fd8e2eaeae4cf689ba2ea@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Mon, Oct 13, 2025 at 04:52:04PM +0300, Jani Nikula wrote:
> On Thu, 18 Sep 2025, Jani Nikula <jani.nikula@intel.com> wrote:
> > On Tue, 16 Sep 2025, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> >> For now I'd be happy if someone just nukes that bogus page alignemnt
> >> of the stride on xe, allowing i915 and xe to use the same code here.
> >
> > I hope just [1] is enough for this.
> >
> > [1] https://lore.kernel.org/r/7f4972104de8b179d5724ae83892ee294d3f3fd3.1758184771.git.jani.nikula@intel.com
> 
> So that regressed [2]. (Bisected internally, unfortunately not reported
> on the gitlab issue.) Any ideas, before I go on and resurrect this patch
> adding different strides for i915 and xe?

That bisect doesn't make any real sense to me unless there's an existing
bug in the xe code where it fails to pin (and somehow the smaller stride
alignment makes it fail) but it still reports success to the caller. 

Unfortunately that code in xe is completely illegible due the scoped
guard mess. So it's darn near impossible to see with a visual inspection
where it might silently fail. I think someone will need to sprinkle
debugs all over that code to track what is happening to the pin count.

-- 
Ville Syrjälä
Intel
