Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0C49B61F6
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 12:36:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4735910E78B;
	Wed, 30 Oct 2024 11:36:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AadqQ4Jj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA65510E78B
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 11:36:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730288168; x=1761824168;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=lEHxMwu3BPfE8kdIuEfDvv4BPW153qHUJl1mEzPByfk=;
 b=AadqQ4JjoBqWRc0+JkhIVvI5xYHQgmE6UA6DbjhXHkmeh9XLBAf4A/dk
 R9EV+Eo/aCztaz3auDZ+VMNtMzV9JDTh61ZYgh34YU+CE0OgD7cth/Ba0
 coLyXsVFaUinkUwxUKl2LulmGUehNg1RWr1GYxBXHVlQeaWs49erFkWDG
 gwaqfpLIMlRFot0oUinNVnk3iQVUJwqh4R0wcuqpIt3ybJDU/Yjd4ib+6
 MTHzga7yhEMUz64r5oiG/0LbXPAPOq7nIG53re0PvehT1V4N7qBA1iKkW
 5Ve3xkpqeTpvRL+K2RlDbefqf+DsJr3zRRr91X4Y4x9ai4RExs4echrxq Q==;
X-CSE-ConnectionGUID: zBeqZXdrTH27ZNihhZq9EA==
X-CSE-MsgGUID: T40Lm1WhSDu5RxdpyPvBow==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="47459115"
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="47459115"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 04:36:08 -0700
X-CSE-ConnectionGUID: VGN8zVdyRTOg+8fgT5ggYA==
X-CSE-MsgGUID: fi2wHUF8QwWhZYMvJ2nOdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="81843924"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 04:36:06 -0700
Date: Wed, 30 Oct 2024 13:36:03 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Sousa, Gustavo" <gustavo.sousa@intel.com>
Subject: Re: [PATCH v3] drm/i915/xe3lpd: Power request asserting/deasserting
Message-ID: <ZyIaI_CSjm1sH3M9@black.fi.intel.com>
References: <20241029140037.164687-1-mika.kahola@intel.com>
 <87bjz3nf8m.fsf@intel.com> <ZyEVNW_OG0g8c0X-@black.fi.intel.com>
 <MW4PR11MB7054BD69AC2BB7C5D59D2565EF542@MW4PR11MB7054.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <MW4PR11MB7054BD69AC2BB7C5D59D2565EF542@MW4PR11MB7054.namprd11.prod.outlook.com>
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

On Wed, Oct 30, 2024 at 04:52:20PM +0530, Kahola, Mika wrote:

...

> > > > +static void wa_14020908590(struct intel_display *display,
> > > > +			   bool enable)
> > > > +{
> > > > +	bool error = false;
> > > > +
> > > > +	/* check if mailbox is running busy */
> > > > +	if (intel_de_wait_for_clear(display, TCSS_DISP_MAILBOX_IN_CMD,
> > > > +				    TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY,
> > 10)) {
> > > > +		drm_dbg_kms(display->drm,
> > > > +			    "Timeout waiting for TCSS mailbox run/busy bit to
> > clear\n");
> > >
> > > Just do drm_WARN() with the message here.
> > 
> > Rather,
> > 
> > 	ret = intel_de_wait_for_clear();
> > 	if (drm_WARN(drm, ret, ...))
> > 		return;
> > 
> > Cleaner?
> 
> Maybe we could drop the drm_WARN_ON() completely? This is something that
> we are not really using elsewhere in the driver. Simply drm_dbg_kms() on
> timeouts has so far been enough. What do you think?

Right, WARN() is usually for cases that *should never happen* or have *serious
consequences*. Unless that's the case, I'm not sure if it'll be useful here.

Raag
