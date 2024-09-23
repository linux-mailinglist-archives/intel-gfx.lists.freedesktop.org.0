Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D41297ED2B
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 16:29:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 504AA10E404;
	Mon, 23 Sep 2024 14:29:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JK60Y4mu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0DCD10E26A;
 Mon, 23 Sep 2024 14:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727101792; x=1758637792;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ZevgJZtNtR3Jtz0Z+Et9zt7VJQgPgHY7wZqqWyX71zQ=;
 b=JK60Y4mu2OuRgpGI6pnl582JZHKAqs32Wqv8+sQeMW3F76QnEu/BfZxY
 fpTSC+QgJNUHPws+IpTJl5NH091LZehRvqYaFIDPT31Hf7oU26kkX687K
 G4c98VKDz4rxNGuScfjGgPl7rCWleFT3kV9Bq0bQZtdC8gtzP/ZmfZhxI
 W8NxjcDPQguiOfVLSOwD+jE6K/8o5nrBg6YHS6gaBwP1V/pP4cP2Q9Xwn
 9KgegKzXU3oGB8oF1QoC+ZAIB72GyUUfW/kMXC+kzGbnOKwtWXmV0SPN4
 xe2Vn/y+KEMvpwLfz2EI2pTT5I6nZuFEX0avh2ZtOAdxoJPqlnLxT+qAF A==;
X-CSE-ConnectionGUID: 7Ge9SSQwRw6vXZXAdJS8Ww==
X-CSE-MsgGUID: xZbFiHg6R7qiccV7EkCfCg==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="26145168"
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="26145168"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 07:29:51 -0700
X-CSE-ConnectionGUID: js/cvQmnSyK7hNHbR5oawg==
X-CSE-MsgGUID: 4CjpA6ChRCSJyeFOi2VDTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="71228412"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 Sep 2024 07:29:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 23 Sep 2024 17:29:48 +0300
Date: Mon, 23 Sep 2024 17:29:48 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 4/5] drm/i915/bios: Extract vbt_signature[]
Message-ID: <ZvF7XOO192MJyONv@intel.com>
References: <20240910134219.28479-1-ville.syrjala@linux.intel.com>
 <20240910134219.28479-5-ville.syrjala@linux.intel.com>
 <87y13xf4p3.fsf@intel.com> <Zu2p3dlneXYbmWEu@intel.com>
 <87frpq7myg.fsf@intel.com> <ZvF5qm-uT8yXt6p7@intel.com>
 <877cb25txt.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <877cb25txt.fsf@intel.com>
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

On Mon, Sep 23, 2024 at 05:24:46PM +0300, Jani Nikula wrote:
> On Mon, 23 Sep 2024, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Mon, Sep 23, 2024 at 12:12:39PM +0300, Jani Nikula wrote:
> >> On Fri, 20 Sep 2024, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> >> > On Thu, Sep 12, 2024 at 03:15:52PM +0300, Jani Nikula wrote:
> >> >> On Tue, 10 Sep 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> >> >> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> >> >
> >> >> > Replace the three hand rolled "$VBT"s with a vbt_signature[]
> >> >> > to avoid accidents.
> >> >> >
> >> >> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> >> > ---
> >> >> >  drivers/gpu/drm/i915/display/intel_bios.c | 12 +++++++++---
> >> >> >  1 file changed, 9 insertions(+), 3 deletions(-)
> >> >> >
> >> >> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> >> >> > index cbbda94c3dab..0b92b494117f 100644
> >> >> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> >> >> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> >> >> > @@ -2964,6 +2964,8 @@ static const struct bdb_header *get_bdb_header(const struct vbt_header *vbt)
> >> >> >  	return _vbt + vbt->bdb_offset;
> >> >> >  }
> >> >> >  
> >> >> > +static const char vbt_signature[4] = "$VBT";
> >> >> 
> >> >> Always a bit scary to add strings without termination, but I guess it's
> >> >> justified here.
> >> >
> >> > I guess we could make it look less like a string with eg.
> >> > static const u8 vbt_signature[] = { '$', 'V', 'B', 'T' };
> >> > ?
> >> 
> >> Alternatively,
> >> 
> >> static const char *vbt_signature = "$VBT";
> >
> > Or could just be something like:
> >
> > static const char vbt_signature[] = "$VBT";
> > static const int vbt_signature_len = 4;
> >
> > BUILD_BUG_ON(vbt_signature_len != sizeof(vbt_signature) - 1);
> > BUILD_BUG_ON(vbt_signature_len != sizeof(u32));
> >
> > and use vbt_signature_len instead sizeof(vbt_signature) everwhere.
> 
> Works for me, up to you.

I'll roll with that. I guess it's safer to have the '\0'
in case someone gets the urge to do something like
printk("Unable to find %s ...\n", vbt_signature) etc.

-- 
Ville Syrjälä
Intel
