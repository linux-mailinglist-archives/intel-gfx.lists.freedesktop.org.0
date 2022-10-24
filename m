Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 097A6609E2E
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 11:42:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7355B10E30A;
	Mon, 24 Oct 2022 09:42:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2FAF10E30A
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 09:42:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666604547; x=1698140547;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=WRB38QelPiTg1j8QwpRsutEjZBNDJzpqqS9dF70vXc4=;
 b=BQbqc/9cqHYiy60UX5A0rccByf5N8NTsyjih+2qyUud6dHO0JZKGfa8r
 zGWRumHetm8gma3v1CqnCfO0SbEn8HDsUIz0yEn79OyJYhxi0MzKOsYye
 4a4LuKtr0fl4axaawr4vpNiA61GY8oD7nwgrHRh1c+DbqKl3d/gRRLTUp
 aEnwTSe3XoRQ5+vd/+SAcdxlwAsoFZRIwoWTYMyYjNrViNwAwfUWp1ZZG
 8BuG1S0LExSu37Oy0TaGH28d+zbtKG7KTyiQVj1GG6tdEYMZPE15XZ/l/
 K81foQ+zmBWlIe/AaxmbZG6kOfXxDz4nYIgTKLbFEuU1WD5FWifKBNC4a w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10509"; a="304987797"
X-IronPort-AV: E=Sophos;i="5.95,207,1661842800"; d="scan'208";a="304987797"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 02:42:27 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10509"; a="773759736"
X-IronPort-AV: E=Sophos;i="5.95,207,1661842800"; d="scan'208";a="773759736"
Received: from scsudhak-mobl5.gar.corp.intel.com (HELO intel.com)
 ([10.251.215.22])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 02:42:25 -0700
Date: Mon, 24 Oct 2022 11:42:22 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y1Zd/jljNIYP6Qx9@ashyti-mobl2.lan>
References: <20221019143818.244339-1-andrzej.hajda@intel.com>
 <Y1Lldx9p5Fm5u0Oh@ashyti-mobl2.lan>
 <167818fb-6eb5-7836-16a1-620853821734@intel.com>
 <8735bdfwui.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8735bdfwui.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915: use intel_uncore_rmw when
 appropriate
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

> >>> This patch replaces all occurences of the form
> >>> intel_uncore_write(reg, intel_uncore_read(reg) OP val)
> >>> with intel_uncore_rmw.
> >>>
> >>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> >> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> >>
> >> There are some lines that go over 80 characters... do you mind if I fix them
> >> before pushing it?
> >
> > No problem, I guess you know that for some time the 'hard' limit has 
> > been raised to 100 chars/line [1], and this is for aesthetic reasons :)
> > If you do, please follow advice from Ville to break the line after the 
> > 2nd argument - to keep 'clear' and 'set' args on the same line, if possible.
> 
> Please don't get into the habit of changing stuff while pushing. Please
> prefer pushing stuff that was sent to the list and the CI crunched
> through as-is.
> 
> Changing the commit message is fine. Doing some glaring
> comment/whitespace fixes is acceptable. But going through entire patches
> and fixing issues while pushing, not so much.

OK, will leave it as it is.

> And in this case in particular, please don't go out of your way to limit
> to 80 characters.

All right! I won't enforce it!

Thanks Jani,
Andi

> BR,
> Jani.
> 
> >
> > [1]: 
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=bdc48fa11e46f867ea4d75fa59ee87a7f48be144

PS Hard habits are hard to die: I still like the 80 characters
because they force programmers to write cleaner code and, as a
tiling wm user, I find it more convenient.
