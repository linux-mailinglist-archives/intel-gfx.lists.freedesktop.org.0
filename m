Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE2F87CBD1
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Mar 2024 12:02:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C294112161;
	Fri, 15 Mar 2024 11:02:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C+zrW4Lf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05A56112161
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Mar 2024 11:02:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710500556; x=1742036556;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=PhSY4PLYn9ZN19nZklsdPSRtshBOld/M1zr7xnXGST4=;
 b=C+zrW4LfzIhIumruKBMASArM7SNX/Ogr9cg/HzBnTDz4prPppdFAb1Gr
 O9+gcc+Cv2iKkRbHIRn43beUTJQNPvSjN+i3LFyyflwRAECRKMEPhiRW5
 joHbG6NRnT/S31bVUX2s6svo0nGSPDMmiMZzJMiMJt27SzbUGmeXm9emv
 Yvi7HbfgtS+qVeGEcTIjYFPFv0BwXmqrgkpnRYpp60J2XRA6K9wTPS/Io
 vgl/RG+a21XZ+Y7V3BLQF+9ww7I9SKwn+cVihzei9Cl8g+BZe3BFmyDPy
 qpsyx8IB9eI52TPDjUplpHJQ6EBXFSO2IrcUstyIhxLg39OPMWfjCLD5b A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11013"; a="5229063"
X-IronPort-AV: E=Sophos;i="6.07,128,1708416000"; 
   d="scan'208";a="5229063"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2024 04:02:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11013"; a="827780566"
X-IronPort-AV: E=Sophos;i="6.07,128,1708416000"; d="scan'208";a="827780566"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 15 Mar 2024 04:02:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Mar 2024 13:02:32 +0200
Date: Fri, 15 Mar 2024 13:02:32 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: gareth.yu@intel.com, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/display: Fixed a screen flickering when turning
 on display from off
Message-ID: <ZfQqyLJBAAuNLKZ2@intel.com>
References: <20240306031348.1344034-1-gareth.yu@intel.com>
 <87il1zzmpt.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87il1zzmpt.fsf@intel.com>
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

On Wed, Mar 06, 2024 at 12:19:42PM +0200, Jani Nikula wrote:
> On Wed, 06 Mar 2024, gareth.yu@intel.com wrote:
> > From: Gareth Yu <gareth.yu@intel.com>
> >
> > Turn on the panel from zero brightness of the last state, the panel was set
> > a maximum PWM in the flow. Once the panel initialization is completed, the
> > backlight is restored to zero brightness. There is a flckering generated.
> 
> Please be more precise in describing what exactly happens and
> when. Driver probe? Modeset? What restores backlight to zero brightness?
> 
> Better yet, please file a bug at fdo gitlab, attach full dmesg with
> debugs, etc.
> 
> Before we had the concept of minimum brightness, the minimum was always
> 0. And the check was:
> 
> 	if (level == 0)
> 		level = max;
> 
> Historically, the point was, if you're enabling the display and
> backlight, you don't want it to be at 0 brightness, because for most
> displays that means a black screen.

I think that hack was originally added becaue some silly
userspace thingy was setting the backlight level to 0 on
suspend/etc. and then forgetting to restore it back to a
sane value afterwards. Dunno if that nonsense behaviour
still persists to this day.

-- 
Ville Syrjälä
Intel
