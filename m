Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 515CCB5A146
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 21:19:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8DB710E169;
	Tue, 16 Sep 2025 19:19:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CdRMpaXV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1B7410E169;
 Tue, 16 Sep 2025 19:19:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758050391; x=1789586391;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=x16rWhYFjuZltUNSgeMIR7QmFEAXrtLUKSBWffZFZHI=;
 b=CdRMpaXVHsM61DvG4tTMYTybhxg3RdoVeaPyRGkxOsCkpYi4AaMmtcnN
 z34Ty6Ag/IffUTgQIq2poSrDPCUoetuK0/3jf3PpuMzaA1QTsHeBDnjlC
 fGrog8wTrCutGkx2vkO+UfNy42epxqnCgIkTV8MfQy9N3LXiZyKxzh35+
 OodcYqRhh75XwVL74/yx1cocWdkd74gke25G3anERbqZAAA/GTfobBXTg
 jUUxlyvOjPj7Bh4v90qCcPOlIftpUj91kQNupGM8BUDQZNDrhawMH+LkV
 BT39bksCVq0qokFFxrjV8QU7Z8/aY9iawo9CB1XgSiVfRqwM79a49qcWS g==;
X-CSE-ConnectionGUID: QRbGSZq2RnCq0Cg2Hb3eZg==
X-CSE-MsgGUID: Wi46bG9UTdet9b3b9ETx8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11555"; a="60273612"
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="60273612"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 12:19:50 -0700
X-CSE-ConnectionGUID: 1S+YjHr2ROOrX0Y4C/ebdQ==
X-CSE-MsgGUID: RSgwurLOTkaSe5mUsy6Siw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="175457771"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.225])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 12:19:48 -0700
Date: Tue, 16 Sep 2025 22:19:45 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: Maarten Lankhorst <dev@lankhorst.se>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>,
 Vinod Govindapillai <vinod.govindapillai@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>
Subject: Re: [PATCH 2/9] drm/{i915, xe}/fbdev: add intel_fbdev_fb_pitch_align()
Message-ID: <aMm4UfqnlZ4RfMDm@intel.com>
References: <cover.1756931441.git.jani.nikula@intel.com>
 <ae51d1e224048bdc87bf7a56d8f5ebd0fbb6a383.1756931441.git.jani.nikula@intel.com>
 <aLqsC87Ol_zCXOkN@intel.com>
 <48e0a14d67ba84d64f6589bbdd0090e86be4fd4f@intel.com>
 <7cs3dirtgrypn7xjzmv7rxmkgbrtfxxjmtth576kfwerlydcgx@6zelewdmaukb>
 <fdcc32f2-c36b-439f-8d15-14b3fb7bd5dc@lankhorst.se>
 <aL8D_dRE5nslOAUi@intel.com>
 <86c6dd41fba3bc78b82a0f0343c7be770126a4e4@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <86c6dd41fba3bc78b82a0f0343c7be770126a4e4@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Tue, Sep 16, 2025 at 02:44:53PM +0300, Jani Nikula wrote:
> On Mon, 08 Sep 2025, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > It's aligning stride, not the size. So doesn't make sense. The only
> > time you need page alignment for stride is for remapping, which is
> > handled correctly by i915 in the dumb bo codepath and not handled at all
> > by xe as usual.
> >
> > I suspect what we really should do for the fbdev allocation is to use
> > the dump bo code, and make sure that code works the same way for i915
> > and xe.
> 
> So what does it mean in practise and who's going to do this?

For now I'd be happy if someone just nukes that bogus page alignemnt
of the stride on xe, allowing i915 and xe to use the same code here.
Reusing the dumb bo code would probably be quite a bit of work, and
doesn't seem necessary to solve the immediate problems.

> 
> I'm trying to a) clarify what's i915/xe specific, b) minimize those
> parts by pulling in common code to display, and c) finally making the
> remaining i915/xe core specific parts independent of display. I'm trying
> to make incremental forward progress.
> 
> But I just can't sign up for fixing up absolutely everything. Some of it
> is technical debt going all the way back to 44e694958b95
> ("drm/xe/display: Implement display support"). I think many of the
> interfaces between i915 and xe around bo's are way too high level, but
> there's clear "impedance mismatch" between a lot of i915 and xe specific
> things, and they just don't map 1:1 nicely.
> 
> 
> BR,
> Jani.
> 
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
