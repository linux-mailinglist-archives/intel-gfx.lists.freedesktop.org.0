Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE6E9B500E
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 18:04:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B9FD10E6AA;
	Tue, 29 Oct 2024 17:04:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SMcydHr2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7D6810E6AA
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 17:04:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730221489; x=1761757489;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=hm2Tan0k7Fgg4SNNV6lEcgmZ3782GaVNcOPMVrXzOuk=;
 b=SMcydHr2o99IPHm2u+yDi0g0lWEjyR5gheldffaXR+8dc9lMNNskx07h
 PvwOmZOuTogwAfwn5I+5VrueVB1iv/y6CUg/wLi2At/LTs8Iy54g2gD7x
 3Ms5+sQ7cWnSvYmlaDXxmcfDx5ySR0LcnoNyWRa4TydIvwhOX03aOf3L+
 roEKZG5QOgi4JkLtNDG6kgucF4T7/pOSBOz0iZB4bhVqcLJtDSrVMQvtH
 bqNAdgg7sHveXucVcTRFIU1TDEjlHYkj/To97iAFMaGkoPVaibgrmxI69
 JIKwV6/TUjVS9WjDNaj6a7miWx4HNwS0Xc4mzgBAIt1J8Gzm9B0+zQN9Q w==;
X-CSE-ConnectionGUID: T3tbDGtaREO6iM0l4dZjdw==
X-CSE-MsgGUID: ntWq+KphQ1moInhGszMyag==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30017684"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30017684"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 10:02:51 -0700
X-CSE-ConnectionGUID: S2bNcv7mT4GtRgRGN7OdXA==
X-CSE-MsgGUID: Wkhjv0CoQXeIzaEJFZFh4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="85978387"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 10:02:48 -0700
Date: Tue, 29 Oct 2024 19:02:45 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org,
 gustavo.sousa@intel.com
Subject: Re: [PATCH v3] drm/i915/xe3lpd: Power request asserting/deasserting
Message-ID: <ZyEVNW_OG0g8c0X-@black.fi.intel.com>
References: <20241029140037.164687-1-mika.kahola@intel.com>
 <87bjz3nf8m.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87bjz3nf8m.fsf@intel.com>
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

On Tue, Oct 29, 2024 at 04:41:29PM +0200, Jani Nikula wrote:
> On Tue, 29 Oct 2024, Mika Kahola <mika.kahola@intel.com> wrote:

...

> > +static void wa_14020908590(struct intel_display *display,
> > +			   bool enable)
> > +{
> > +	bool error = false;
> > +
> > +	/* check if mailbox is running busy */
> > +	if (intel_de_wait_for_clear(display, TCSS_DISP_MAILBOX_IN_CMD,
> > +				    TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY, 10)) {
> > +		drm_dbg_kms(display->drm,
> > +			    "Timeout waiting for TCSS mailbox run/busy bit to clear\n");
> 
> Just do drm_WARN() with the message here.

Rather,

	ret = intel_de_wait_for_clear();
	if (drm_WARN(drm, ret, ...))
		return;

Cleaner?

Raag
