Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2838998E55
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 19:30:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6143510E0EF;
	Thu, 10 Oct 2024 17:30:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="enfiJRvF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 309E910E0EF
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2024 17:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728581455; x=1760117455;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=9t+WLTxMCkHisxCVgtebSmzUZWSOHvPc1kMHiY/KbTM=;
 b=enfiJRvFnD3BoyG8rwxmkdeK/KIat9yLuijF48uVWinR4XZw5Lb1sbSq
 e2QOryUozjUumLHzqTVFw2JnLlILoLwbEL8tXKjeygwacoXYGhfupKIml
 bQDtng0b5cQlFmvDV+kJVVHflr6s2MjMZ6BjQljQzI71LAW2MVCD2nFfa
 edoGpBelHYeGznQE33TPVplpNqh2gqunhbX8hI5ONIzJCxCi3oAb3u6CC
 5JY5zIol4JMzr/a/rjNVC7p8EIr3zZ5mOCixKG+mTbW6I5gZERVDs+5/w
 oYNqAiFCwHND4OdcweeyKRtCK1oSpqXjItQavXAP8q4eyCBhk8Of5nUTk g==;
X-CSE-ConnectionGUID: VGIoDg/gSSC+n39qqkx+SQ==
X-CSE-MsgGUID: wZ/FcdC4Q32tGdPtlUl58g==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="45436260"
X-IronPort-AV: E=Sophos;i="6.11,193,1725346800"; d="scan'208";a="45436260"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 10:30:55 -0700
X-CSE-ConnectionGUID: bK8tgC/pTAKxpVf5WrWjZg==
X-CSE-MsgGUID: doUr1x1LSTezaDtlJ+avRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,193,1725346800"; d="scan'208";a="76753268"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Oct 2024 10:30:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Oct 2024 20:30:50 +0300
Date: Thu, 10 Oct 2024 20:30:50 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>
Cc: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>,
 intel-gfx@lists.freedesktop.org, matthew.d.roper@intel.com
Subject: Re: [PATCH] drm/i915: Remove unused underrun interrupt bits
Message-ID: <ZwgPSnXdMxoWb6Mh@intel.com>
References: <20240925111802.2227604-1-sai.teja.pottumuttu@intel.com>
 <ZvQYGgYQcJnXl_wg@intel.com>
 <98eef4e7-1e43-407e-8f30-b7325c738956@intel.com>
 <ZwYyWdy8m38qnxOv@bvivekan-mobl1>
 <c7609ca9-4027-47fd-9b58-abf2cb7a0438@intel.com>
 <ZwgLSBvC4m8B3Mv8@bvivekan-mobl1>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZwgLSBvC4m8B3Mv8@bvivekan-mobl1>
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

On Thu, Oct 10, 2024 at 10:43:44PM +0530, Vivekanandan, Balasubramani wrote:
> On 09.10.2024 15:35, Pottumuttu, Sai Teja wrote:
> > 
> > On 09-10-2024 13:05, Vivekanandan, Balasubramani wrote:
> > > On 26.09.2024 10:52, Pottumuttu, Sai Teja wrote:
> > > > On 25-09-2024 19:33, Ville Syrjälä wrote:
> > > > > On Wed, Sep 25, 2024 at 04:48:02PM +0530, Sai Teja Pottumuttu wrote:
> > > > > > Underrun recovery was defeatured and was never brought into usage.
> > > > > > Thus we can safely remove the interrupt register bits introduced by the
> > > > > > feature for detecting soft and hard underruns.
> > > > > > 
> > > > > > Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> > > > > > ---
> > > > > >    .../gpu/drm/i915/display/intel_display_irq.c  | 19 +++----------------
> > > > > >    .../gpu/drm/i915/display/intel_display_irq.h  |  1 -
> > > > > >    .../drm/i915/display/intel_fifo_underrun.c    |  5 ++---
> > > > > There's a lot more related stuff in that file.
> > > > Assuming that you are referring to the ICL_PIPE_STATUS register and the bits
> > > > added there to detect soft, hard, port underruns,
> > > Is it only the underrun recovery defeatured? Do we have the reporting of
> > > underruns caused downstream by the port/transcoder working?
> > > Then it makes sense to me to still keep the Port/Transcoder underrun
> > > reporting as it would help in debugging any underruns.
> > > Still there would be stuff related to Hard/Soft underruns which can be
> > > removed from the driver like those in function
> > > icl_pipe_status_underrun_mask, printing of soft/hard underruns in
> > > intel_cpu_fifo_underrun_irq_handler.
> > > 
> > > Regards,
> > > Bala
> > 
> > The reporting is also de-featured. So, as part of the logging/reporting we
> > had 4 things being reported and following are there statuses
> > 
> > 1. PIPE_STATUS_SOFT_UNDERRUN_XELPD: This can safely be removed.
> > 2. PIPE_STATUS_HARD_UNDERRUN_XELPD: This can be removed as well.
> > 3. PIPE_STATUS_PORT_UNDERRUN_XELPD: This seems to be the problem, this is
> > de-featured as well but currently is always set and thus the string "port"
> > appears in the ci bugs. Removing this might cause duplications in ci bugs if
> > it fails to understand that its the same bug even without "port".
> > 4. PIPE_STATUS_UNDERRUN: This still tells that the underrun happened on the
> > transcoder attached to this pipe. But then as far as I understand, the
> > underrun interrupt itself tells that its an underrun on the transcoder so we
> > need not use this bit specificially I believe. But then again removing this
> > and the "transcoder" string there might cause ci issues.
> > 
> > So, we have two options here
> > 
> > 1. Either just remove the SOFT/HARD underrun bits/reporting for now and
> > remove the other ones at a later point of time.
> > 2. Or remove all these bits and make sure CI doesn't start filing duplicate
> > bugs.
> > 
> > What would be your suggestion here?
> 
> We can just remove the SOFT/HARD underrun reporting for now to avoid impacting CI.

IMO just rip all of it out. It'll be completely gone from the hardware
soon enough anyway, so we're just putting off the inevitable if we try
to do some kind of partial surgery.

-- 
Ville Syrjälä
Intel
