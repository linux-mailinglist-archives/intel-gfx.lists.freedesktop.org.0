Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1589A1D53
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2024 10:36:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 416A710E7C0;
	Thu, 17 Oct 2024 08:36:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dKkmwop3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A160910E1D8
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2024 08:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729154213; x=1760690213;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=JDElpxISy7v4j6DtO+PeApMMSIkeIV3I7PR26DPl+c4=;
 b=dKkmwop32fbkN+9ZUQEAKxcSCyxyhKAA1tgR2tIfIloiPD8FmT2Gg2vQ
 SQCATnYoD7KsJ4QI3XZQWfuhX3Mm4gZ7NbIP4lCO1Pvztt2A8Xp6cw0rs
 WRwdCsX93OP10JdRZnI/hOh7uGzMOstV/5qR9f1rxRrZ/cDL/OkEEa1U9
 TSqqpYoeXmddqqG/bwBfHlBy65lEf9CL9uJZti2AxksLdLwcZ3936qYM+
 Gnb/anOyCelFigOJCdE72XVbGymOlhn7ZBjxZNVnYRIYLyL06NikNNT7/
 zO+xAfa36xGqRxmI6f0O7Pg/4ozYSYiVB8CpjRm6vXRZNFFMs+Ttkaa3m g==;
X-CSE-ConnectionGUID: e7VMsqg5RceBrxZH94doSw==
X-CSE-MsgGUID: 0xS+wSknRH2yzhXDEpZFoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11227"; a="40000046"
X-IronPort-AV: E=Sophos;i="6.11,210,1725346800"; d="scan'208";a="40000046"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2024 01:36:52 -0700
X-CSE-ConnectionGUID: mDiznKMtQEKQdUmOWj0NXg==
X-CSE-MsgGUID: WDzizZCaS5a3NMukzHJFTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,210,1725346800"; d="scan'208";a="83132262"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.141])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2024 01:36:50 -0700
Date: Thu, 17 Oct 2024 10:36:46 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: "Gote, Nitin R" <nitin.r.gote@intel.com>
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Wilson, Chris P" <chris.p.wilson@intel.com>,
 "Das, Nirmoy" <nirmoy.das@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Subject: Re: [PATCH v4] drm/i915/gt: Retry RING_HEAD reset until it get sticks
Message-ID: <ZxDMnoIfhFlof11O@ashyti-mobl2.lan>
References: <20241015145710.2478599-1-nitin.r.gote@intel.com>
 <20241015235241.GE5725@mdroper-desk1.amr.corp.intel.com>
 <SJ0PR11MB586781FA6D8A0DA6C145EBEFD0462@SJ0PR11MB5867.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SJ0PR11MB586781FA6D8A0DA6C145EBEFD0462@SJ0PR11MB5867.namprd11.prod.outlook.com>
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

Hi Nitin,

> > > we see an issue where resets fails because the engine resumes from an
> > > incorrect RING_HEAD. Since the RING_HEAD doesn't point to the
> > > remaining requests to re-run, but may instead point into the
> > > uninitialised portion of the ring, the GPU may be then fed invalid
> > > instructions from a privileged context, oft pushing the GPU into an
> > > unrecoverable hang.
> > >
> > > If at first the write doesn't succeed, try, try again.
> > >
> > > v2: Avoid unnecessary timeout macro (Andi)
> > >
> > > v3: Correct comment format (Andi)
> > >
> > > v4: Make it generic for all platform as it won't impact (Chris)
> > >
> > > Link: https://gitlab.freedesktop.org/drm/intel/-/issues/5432
> > > Testcase: igt/i915_selftest/hangcheck
> > 
> > The referenced HSW-specific gitlab issue was closed in 2022 and hadn't been
> > active for a while before that.  This patch from Chris was originally posted as an
> > attachment on that gitlab issue asking if it helped, but nobody responded that it
> > did/didn't improve the situation so it may or may not have been relevant to
> > what was originally reported in that ticket.
> > 
> > Looking in cibuglog, the most similar failures I see today are the ones getting
> > associated with issue #12310.  I.e.,
> > 
> >   <3> [220.415493] i915 0000:00:02.0: [drm] *ERROR* failed to set rcs0
> >   head to zero ctl 00000000 head 00001db8 tail 00000000 start 7fffa000
> > 
> > Are you trying to solve that CI issue or is there a different user-submitted report
> > somewhere that this patch is trying to address?
> > 
> > 
> > Matt
> > 
> 
> Yes. This patch is for https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12310
> I will update the link.

No worries, I can update the link here.

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
