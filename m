Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B48CAFF2B4
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jul 2025 22:09:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A333610E052;
	Wed,  9 Jul 2025 20:09:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cAOzdJxh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A784C10E052
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jul 2025 20:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752091767; x=1783627767;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ew437jZZzUtNEW+hKJWQw2cXISzgxG9iDRIQDnuG6dg=;
 b=cAOzdJxh0fNOu4+ui/iRw2sq3h6cRImgi4W7h8tX5UcfuTIjOtKd2x+7
 CeRBceAA2/DVithOiHclLFztgGDX8QCRLk0kzt8D+eu4fk+24EOFoAMb1
 +yT6R+avvrUwWu8dO1A4yZ6BmXeVXFOTMle1kv5QuH51eNg0ISFhrOovJ
 yvP7TYpaaYi/mH77ZmZXJ/a+tLdW44SPtbCSMbRD5qYm3hZCBUAbFCrDY
 E0JF2bofut2OyohNJPfmC4GRSGyVBLdPRBuPTsWj38qxThUdF6BCoHiP2
 fLh/nvxJspNAgE82Rxs3ORF/RULK+vPezt8HwiYC8EPXkdOgGSeZ/J0Do A==;
X-CSE-ConnectionGUID: RNrK8oA5S9eIPO9WK546sA==
X-CSE-MsgGUID: eYGSTRxPRxu9Sa/mMEsrZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11489"; a="56971987"
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="56971987"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2025 13:09:26 -0700
X-CSE-ConnectionGUID: pbREcFI9SoGVLEVrDuroiw==
X-CSE-MsgGUID: Sm2uVTLkRtuv9BpAD9V/WA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="161528138"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.254])
 by orviesa005.jf.intel.com with SMTP; 09 Jul 2025 13:09:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Jul 2025 23:09:22 +0300
Date: Wed, 9 Jul 2025 23:09:22 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: Ben Hutchings <ben@decadent.org.uk>, linux-rt-users@vger.kernel.org,
 intel-gfx@lists.freedesktop.org,
 Debian kernel maintainers <debian-kernel@lists.debian.org>
Subject: Re: PREEMPT_RT vs i915
Message-ID: <aG7MckLkTuzZ5LBe@intel.com>
References: <7c42fe5a6158445e150e7d63991767e44fc36d3d.camel@decadent.org.uk>
 <aG6nMhimN1lWKAEP@intel.com>
 <20250709194443.lkevdn6m@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250709194443.lkevdn6m@linutronix.de>
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

On Wed, Jul 09, 2025 at 09:44:43PM +0200, Sebastian Andrzej Siewior wrote:
> On 2025-07-09 20:30:26 [+0300], Ville Syrjälä wrote:
> > > 
> > > It seems like the critical uncore lock is currently held in a lot of
> > > places and potentially for a long time.
> > 
> > It shouldn't be held for that long. I think it should just be
> > a raw spinlock.
> 
> What about I resubmit the series and we look again? I don't think the
> lock should be made raw just to be done with it.

Until someone actually does the work to confirm the thing is working
reliably there's no point in posting anything.

And IIRC the other remaining problem with RT was the spinlocks used
inside tracepoints (which is uncore lock, and probably some vblank
locks). So that too needs some kind of solution because it's going to
very hard to debug the timing sensitive parts without the tracepoints.

-- 
Ville Syrjälä
Intel
