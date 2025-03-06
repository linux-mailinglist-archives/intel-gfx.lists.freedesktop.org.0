Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C71C2A54B3B
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 13:52:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2874D10E195;
	Thu,  6 Mar 2025 12:52:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TWNxVpwE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B4D310E195
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Mar 2025 12:52:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741265550; x=1772801550;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=0iCCNJ9RA6gcJxlE3Ccq9kND0hpd3u9GJiXlOztdbKk=;
 b=TWNxVpwEQIuRJtahmD1BRQ0/rARoeeq93IlkknIAIqVvTGOz/pGPd4rs
 0zsFTWp2nRUbufKg0Jtmio27v4jQZfnyZGMIhtO+IJPn62QSZW5rtUKUf
 Krufjw4u5he3PHZy4sarLEv12BspUHGoL/zTRa1JXiO132katWTjbJ0eF
 VJUQk2pVehKamcCvgBGd1DMIHgsLW7NsKK2+H95aGv6xyL7alZLiOVE/w
 sBtOHpjasbqKUPaNAdFV3CiSfR1LDIP0RHyysZi8Fm4jcRqYTfl/j3BMF
 yyr9jNaqWV4GqB4qHau2YHAHYEdAmqw7wPDquAeuZa+PVCp6l27SgEDr0 A==;
X-CSE-ConnectionGUID: KrExj9+iQuSbRuATyXwxRA==
X-CSE-MsgGUID: xSbFCn3SSRKxAubibYZNTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="52909173"
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="52909173"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 04:52:29 -0800
X-CSE-ConnectionGUID: NsdUy7/4RTmaNQ35mx82eQ==
X-CSE-MsgGUID: jcbTZD3RS0qufV0MAWaygQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124228093"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 06 Mar 2025 04:52:26 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Mar 2025 14:52:24 +0200
Date: Thu, 6 Mar 2025 14:52:24 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Cc: intel-gfx@lists.freedesktop.org, andi.shyti@linux.intel.com,
 vidya.srinivas@intel.com, matthew.d.roper@intel.com
Subject: Re: [RFC PATCH] Revert "drm/i915: Disable compression tricks on JSL"
Message-ID: <Z8maiLd63cK-PUnU@intel.com>
References: <z6xndjwwwnck67qcv2355v5qejq64qldziqg7saint3eqe6fo2@6sx7xyh5juvc>
 <Z8htKL3L5ICwXzNb@intel.com> <D88HRP898QST.23MJT5TUM1HFR@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <D88HRP898QST.23MJT5TUM1HFR@intel.com>
X-Patchwork-Hint: comment
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

On Wed, Mar 05, 2025 at 05:00:26PM +0000, Sebastian Brzezinka wrote:
> Hi Ville
> 
> On Wed Mar 5, 2025 at 3:26 PM UTC, Ville Syrjälä wrote:
> > On Wed, Mar 05, 2025 at 02:49:46PM +0000, Sebastian Brzezinka wrote:
> >> This reverts commit 0ddae025ab6cefa9aba757da3cd1d27908d70b0e.
> >> 
> >> According to bspec 14181, CACHE_MODE_0 is a register that's under userspace
> >> control, and DISABLE_REPACKING_FOR_COMPRESSION workaround should be already
> >> in all recent Mesa releases. So, there is no need to include it in kernel.
> >
> > igt doesn't have it.
> >
> >> 
> >> Also, this workaround·sporadically fails to load:
> >> ```
> >> ERROR GT0: engine workaround lost on application! (reg[7000]=0x0,
> >> relevant bits were 0x0 vs expected 0x8000)
> >> ```
> >
> > If it somehow fails to load from the kernel why would it
> > work from userspace?
> >
> > Hmm, apparently CACHE_MODE_0 needs the mcr steering stuff.
> > Does that fix the verification fail?
> 
> Thanks for sugestion. Right now I think that I try to move this wa to
> icl_ctx_workarounds_init as both Mat and Chriss notice that register
> is a part of the context. 

Hmm, didn't realize there was a separate list for that. It looks to
me like there are a bunch of context saved registers handled in
the enging_ctx() stuff currently. I think someone needs to go through
all this stuff and relocate all the registers to their correct spots.

-- 
Ville Syrjälä
Intel
