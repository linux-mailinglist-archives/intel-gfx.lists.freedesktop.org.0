Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 276F06A7062
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Mar 2023 17:01:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 169DB10E2EB;
	Wed,  1 Mar 2023 16:01:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E95AF10E2EB
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Mar 2023 16:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677686458; x=1709222458;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=dOfIHw0XcWmKTeBOyGTcZzKkaoYuxdWm3iXIh5Y6IZY=;
 b=DpeRPxRjPySMPPY6rxZVxiOq39BUOKbWrV+LxbfG9U6VG5mRL1FXpmLc
 b+VSFPL+gV5V9yAtkMJ9jBlRyduOMyooxcNOfEjHAcSCjv8u5Vk3c60rq
 XnX82zQlN9cX5gz2K9KldGyBFAwKiN68spXC5sTzeW6yMPW1Ayorn+p0Q
 ERpNPy5+TmKWBm+ySYjKSfP/vpX1vg08eKtFpZTGo+4vw6WUfoiGiAn5f
 rXTAFeJlDL2ZttnPgjfD2FqU8zpdCT1mHeuqhM6Jhas1BQq+Qws2G7Jme
 bcMSpyrAwJgHHqVIU84nZqzukVFS/ZwMSJCxCs45sQqmZoLyWfM82dZA9 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="331923308"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="331923308"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 08:00:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="674613265"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="674613265"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 01 Mar 2023 08:00:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Mar 2023 18:00:51 +0200
Date: Wed, 1 Mar 2023 18:00:51 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y/92swZjW47GuN2c@intel.com>
References: <20230301151409.1581574-1-jani.nikula@intel.com>
 <Y/9xf6SkV1fG4JSA@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y/9xf6SkV1fG4JSA@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: fix DSS CTL register offsets
 for TGL+
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 01, 2023 at 05:38:39PM +0200, Ville Syrjälä wrote:
> On Wed, Mar 01, 2023 at 05:14:09PM +0200, Jani Nikula wrote:
> > On TGL+ the DSS control registers are at different offsets, and there's
> > one per pipe. Fix the offsets to fix dual link DSI for TGL+.
> > 
> > There would be helpers for this in the DSC code, but just do the quick
> > fix now for DSI. Long term, we should probably move all the DSS handling
> > into intel_vdsc.c, so exporting the helpers seems counter-productive.
> 
> I'm not entirely happy with intel_vdsc.c since it handles
> both the hardware VDSC block (which includes DSS, and so
> also uncompressed joiner and MSO), and also some actual
> DSC calculations/etc. Might be nice to have a cleaner
> split of some sort.
> 
> That also reminds me that MSO+dsc/joiner is probably going
> to fail miserably given that neither side knows about the
> other and both poke the DSS registers.

I suppose MSO+joiner should just be rejected outright since 
the splitter seems to sit before the joiner in the path.
We'd need them to be the other way around.

But MSO+DSC does look plausible.

-- 
Ville Syrjälä
Intel
