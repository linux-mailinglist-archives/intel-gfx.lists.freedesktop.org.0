Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4A2135D42
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 16:57:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 965086E3E5;
	Thu,  9 Jan 2020 15:57:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29AB76E3E5
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2020 15:57:09 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 07:57:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,414,1571727600"; d="scan'208";a="218398687"
Received: from aquilante.fi.intel.com (HELO intel.com) ([10.237.72.158])
 by fmsmga008.fm.intel.com with ESMTP; 09 Jan 2020 07:57:06 -0800
Date: Thu, 9 Jan 2020 17:57:07 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200109155707.GB2717@intel.intel>
References: <20200109085839.873553-1-chris@chris-wilson.co.uk>
 <20200109085839.873553-10-chris@chris-wilson.co.uk>
 <20200109153115.GA2717@intel.intel>
 <157858441291.2197.918085554190127260@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157858441291.2197.918085554190127260@skylake-alporthouse-com>
User-Agent: Mutt/1.12.2 (2019-09-21)
Subject: Re: [Intel-gfx] [PATCH 10/14] drm/i915: Start chopping up the GPU
 error capture
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

> > > In the near future, we will want to start a GPU error capture from a new
> > > context, from inside the softirq region of a forced preemption. To do
> > > so requires us to break up the monolithic error capture to provide new
> > > entry points with finer control; in particular focusing on one
> > > engine/gt, and being able to compose an error state from little pieces
> > > of HW capture.
> > > 
> > > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > > Cc: Andi Shyti <andi.shyti@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/gt/intel_engine.h       |    2 +-
> > >  drivers/gpu/drm/i915/gt/intel_engine_cs.c    |    6 +-
> > >  drivers/gpu/drm/i915/gt/intel_ggtt.c         |    3 +
> > >  drivers/gpu/drm/i915/gt/intel_gtt.h          |    1 +
> > >  drivers/gpu/drm/i915/gt/intel_reset.c        |    2 +-
> > >  drivers/gpu/drm/i915/gt/selftest_hangcheck.c |    2 +-
> > >  drivers/gpu/drm/i915/i915_debugfs.c          |   14 +-
> > >  drivers/gpu/drm/i915/i915_drv.h              |    2 +-
> > >  drivers/gpu/drm/i915/i915_gpu_error.c        | 1169 ++++++++++--------
> > >  drivers/gpu/drm/i915/i915_gpu_error.h        |  328 +++--
> > >  drivers/gpu/drm/i915/i915_sysfs.c            |    6 +-
> > 
> > don't we want to have a gt/intel_gt_error.[ch] at some point?
> 
> I did give it some thought, and at the moment i915_gpu_error.c exists in
> its own little bubble on the outside of the driver. That isn't to say
> we couldn't keep gt/error_(engine|gt).c in the same bubble, but it was
> easier to keep it where it was and hack it provide an engine capture
> interface.

OK, sure... the patch looked straight forward to me, anyway:

Acked-by: Andi Shyti <andi.shyti@intel.com>

Thanks,
Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
