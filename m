Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01691178404
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 21:30:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D592C6E94B;
	Tue,  3 Mar 2020 20:30:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E985C6E94B
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 20:30:30 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 12:30:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,511,1574150400"; d="scan'208";a="233873329"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga008.fm.intel.com with SMTP; 03 Mar 2020 12:30:30 -0800
Date: Tue, 3 Mar 2020 12:30:30 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20200303203030.GA470950@mdroper-desk1.amr.corp.intel.com>
References: <20200303142347.15696-1-aditya.swarup@intel.com>
 <87d09tpiji.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87d09tpiji.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Fix uninitialized
 variable
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

On Tue, Mar 03, 2020 at 05:25:21PM +0200, Jani Nikula wrote:
> On Tue, 03 Mar 2020, Aditya Swarup <aditya.swarup@intel.com> wrote:
> > Static code analysis tool identified struct lrc_timestamp data as being
> > uninitialized and then data.ce[] is being checked for NULL/negative
> > value in the error path. Initializing data variable fixes the issue.
> >
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/selftest_lrc.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> > index ccf9debacd90..9b75b3c77a5b 100644
> > --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> > +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> > @@ -4725,7 +4725,7 @@ static int live_lrc_timestamp(void *arg)
> >  {
> >  	struct intel_gt *gt = arg;
> >  	enum intel_engine_id id;
> > -	struct lrc_timestamp data;
> > +	struct lrc_timestamp data = { 0 };
> 
> {} is preferred over {0}.

Is there a reference for this (e.g., in the kernel coding style)?  I
thought this came up a couple years ago and the consensus was the other
way, although I could be misremembering.  Unless it's changed in a
recent standard, I think {} is only legal in C++, so using it in C code
is a gcc-ism?


Matt


> 
> BR,
> Jani.
> 
> >  	const u32 poison[] = {
> >  		0,
> >  		S32_MAX,
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
