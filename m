Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C024AB7ED
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Feb 2022 10:46:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6510610E2C7;
	Mon,  7 Feb 2022 09:45:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E484C10E2C7
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Feb 2022 09:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644227157; x=1675763157;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=bOHBoJ9ZQN/EL9FflWEX8D3eHMp1v+zfPUmxso+b+5I=;
 b=II3xrF3/fUABJLMLJenS3+WYGTIXOpa8eezgsEiA3s6dFQlzQnbePYkq
 06r8LNtCsMhy6+a9bbfOfFX3fS9EGvaiAXpoA3xWf/VDs6ssnushqu5sk
 qly5qzuP/7dkb6XTg5MnlJ/IVeZZzj3QFeK32XJEpzjkLVEqygkPz0Inj
 r7mEhgatQCDi2E3/pCdfZeqTKP7TrB6NPGKrYtJILupZmjXzqrf909mLr
 +r0MKmNgec+8qpbj239hxle3fm73qGLBxP8Rt1tvNNMB3NHspDT2NLOXS
 st6XPd3FE6YlHQupQwZvDRx0r47TqtE40yeVykEwoQvSJISkrlIABdnTR Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10250"; a="311980656"
X-IronPort-AV: E=Sophos;i="5.88,349,1635231600"; d="scan'208";a="311980656"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2022 01:45:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,349,1635231600"; d="scan'208";a="567421683"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga001.jf.intel.com with SMTP; 07 Feb 2022 01:45:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 07 Feb 2022 11:45:54 +0200
Date: Mon, 7 Feb 2022 11:45:54 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <YgDqUgGT7ioRHoDb@intel.com>
References: <20220204141818.1900-1-ville.syrjala@linux.intel.com>
 <20220204141818.1900-3-ville.syrjala@linux.intel.com>
 <20220207073048.GC2471@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220207073048.GC2471@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Workaround broken BIOS DBUF
 configuration on TGL/RKL
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

On Mon, Feb 07, 2022 at 09:30:48AM +0200, Lisovskiy, Stanislav wrote:
> On Fri, Feb 04, 2022 at 04:18:18PM +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > On TGL/RKL the BIOS likes to use some kind of bogus DBUF layout
> > that doesn't match what the spec recommends. With a single active
> > pipe that is not going to be a problem, but with multiple pipes
> > active skl_commit_modeset_enables() goes into an infinite loop
> > since it can't figure out any order in which it can commit the
> > pipes without causing DBUF overlaps between the planes.
> > 
> > We'd need some kind of extra DBUF defrag stage in between to
> > make the transition possible. But that is clearly way too complex
> > a solution, so in the name of simplicity let's just sanitize the
> > DBUF state by simply turning off all planes when we detect a
> > pipe encroaching on its neighbours' DBUF slices. We only have
> > to disable the primary planes as all other planes should have
> > already been disabled (if they somehow were enabled) by
> > earlier sanitization steps.
> > 
> > And for good measure let's also sanitize in case the DBUF
> > allocations of the pipes already seem to overlap each other.
> > 
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4762
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Thanks. Sprinkled on some cc:stable and pushed.

-- 
Ville Syrjälä
Intel
