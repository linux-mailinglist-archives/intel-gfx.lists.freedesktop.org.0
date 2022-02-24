Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3444C3268
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Feb 2022 18:00:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6B8E10E56D;
	Thu, 24 Feb 2022 17:00:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9633910E56D
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Feb 2022 17:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645722006; x=1677258006;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=w56Ml/nkX2uTU7lRQaJCQBFua0h0qsn5CKcgu2FZIyU=;
 b=FvDGbua+b75eNk8YycMUsn0tBp771gbrO9ha81ffSGBh51+Q6B7LE+Eg
 QcZLa4ocvKuKkZjFDNyifkr0/86Kcz0/9SIh/A/SgL59tmDFAI8NBAZsD
 SirnxvnkRLlD+eXxU06TyiKZeqk7AyHPGaljSRCeo+5fGCa9TpU3RGvCt
 sZo1jmK4dnqpdd19PsVhsD9OfhGM0gQiYJft0R3a1h6pzqD9vhHL8YgD1
 hqR5yB7v9GNrFNuE1VMQczx6aCHr92QwRM6gqGiZ3X/ZcCYKJ1O0TCECw
 aHx5SV9oaduQqciKEqIXnon0vK9YlKCftnzIrsI56OoZjZriCDGvPaUm/ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="252206439"
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="252206439"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 09:00:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="574277115"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga001.jf.intel.com with SMTP; 24 Feb 2022 09:00:02 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 24 Feb 2022 19:00:01 +0200
Date: Thu, 24 Feb 2022 19:00:01 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <Yhe5kWpVAd8aq7uy@intel.com>
References: <20220210062403.18690-4-ville.syrjala@linux.intel.com>
 <20220211092604.393-1-ville.syrjala@linux.intel.com>
 <20220224143703.GA19081@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220224143703.GA19081@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 3/5] drm/i915: Make cursor plane
 registers unlocked
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 24, 2022 at 04:37:03PM +0200, Lisovskiy, Stanislav wrote:
> On Fri, Feb 11, 2022 at 11:26:04AM +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Drop the locks around cursor plane register writes. The
> > lock isn't needed since each plane's register are neatly
> > contained on their own cachelines.
> > 
> > The locking did have a secondary effect of disabling
> > interrupts around the cursor registers writes though.
> > If we drop that then we open outselves up for sceduling
> > delays and whatnot while on the middle of the register
> > writes. That increases the chance of not all the register
> > writes land during the same frame. For normal atomic
> > commits this is not a concern as the vblank evade mechanism
> > anyway disables interrupts around the update, but the legacy
> > cursor codepath does not. Technically we should do a vblank
> > evade there as well, but so far no one has bothered to hook
> > that up. So in the meantime let's put an explicit local irq
> > disable/enable around the legacy cursor update to keep the
> > race window minimal.
> > 
> > v2: local_irq_{disable,enable}() for legacy cursor ioctl
> 
> Guess, this will help our infamous atomic update evasion time exceeeded.
> I think I've even checked with similar patch.
> Good that its finally will make its way into kernel.

Yeah. I also sent a new series that split color management
to noarm+arm and drops some more usless locks.

After those I think the TODO list is down to:
- cursor noarm+arm split
- scaler/pfit noarm+arm split
- random locked register accesses during fastsea,
  and maybe a few are still left in pure plane commits as well

> Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Thanks.

-- 
Ville Syrjälä
Intel
