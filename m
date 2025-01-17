Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA8BA15222
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 15:51:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDBBB10EB0F;
	Fri, 17 Jan 2025 14:51:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZmHjH/TU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4F2D10EB1E
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2025 14:51:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737125490; x=1768661490;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=hnCVBE6CWqN+YiX0d0CHF/tgTx2izKQzWpe3oANt9/U=;
 b=ZmHjH/TUpkMwcEJk/dgZFPo9zlP1BJyROkh2Q/3UZiadqEFDm9IR81ZE
 /JZMSl8lpZrCUBco4kYZr7onsOUFRSKuZywFNkLrWSbwgy3JhId16KJEt
 1HXEOR/kd5acaXMW0WP4xri6LxIoT7CgHdUQ9GnvqkBBG5fur82eD9fst
 jAuovKoCn5s3nsTuntbiHKSrmAK5Id2CPJ4IPU4UWMNpKGAMBbIcxokmF
 9QKww6lbI4MwQRvyy3JJg+mm+spfqfIfzQSUJVCowUu8+B345n5JzHhY2
 ajxeKKJURmdfTRT/xT/lcTqVhLrR8kQYSa1oS4CH5jBu/i1zrDVSzqSma w==;
X-CSE-ConnectionGUID: n743BxVxR8aoDWw3kgDBvQ==
X-CSE-MsgGUID: i8rQWcebQWipBGwcZJvqiA==
X-IronPort-AV: E=McAfee;i="6700,10204,11318"; a="48951925"
X-IronPort-AV: E=Sophos;i="6.13,212,1732608000"; d="scan'208";a="48951925"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 06:51:30 -0800
X-CSE-ConnectionGUID: C5wd0oR6TsmNzM5hvenipg==
X-CSE-MsgGUID: Mwe+KjnYTY6wrPHLnGJFKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,212,1732608000"; d="scan'208";a="105996686"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 17 Jan 2025 06:51:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Jan 2025 16:51:27 +0200
Date: Fri, 17 Jan 2025 16:51:27 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ed Maste <emaste@freebsd.org>
Cc: "Shankar, Uma" <uma.shankar@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [Intel-gfx] [PATCH v2 18/19] drm/i915/dsb: Re-instate DSB for
 LUT updates
Message-ID: <Z4pubxKiwBeHsiLJ@intel.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
 <20230606191504.18099-19-ville.syrjala@linux.intel.com>
 <DM4PR11MB63606E29BBD17E56F2FCD96DF4F0A@DM4PR11MB6360.namprd11.prod.outlook.com>
 <CAPyFy2CPyspxOK5H5TqnYZWuD_zXy4rz_e212eJG6Jt=DxiRzw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAPyFy2CPyspxOK5H5TqnYZWuD_zXy4rz_e212eJG6Jt=DxiRzw@mail.gmail.com>
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

On Mon, Jan 13, 2025 at 02:26:21PM -0500, Ed Maste wrote:
> On Wed, 13 Sept 2023 at 14:11, Shankar, Uma <uma.shankar@intel.com> wrote:
> >
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > >
> > > With all the known issues sorted out we can start to use DSB to load the LUTs.
> 
> On FreeBSD with a port of the i915 driver from Linux kernel 6.7
> (https://github.com/freebsd/drm-kmod/pull/332) we still encounter the
> issue addressed by the workaround. I see a few commits following this
> one that look like they may be related to this issue -- do you know if
> there are required DSB fixes following this change?

You want at least
commit 41429d9b6836 ("drm/i915/dsb: Fix DSB vblank waits when using VRR")
commit 2504a316b35d ("drm/i915/color: Stop using non-posted DSB writes for legacy LUT")
commit ecba559a88ab ("drm/i915/dsb: Don't use indexed register writes needlessly")

but no idea if those backport cleanly to such an ancient baseline.

> 
> We are of course continuing to move forward and will presumably bring
> in fixes (if any) in due course, but if this was not yet reliable as
> of Linux 6.7 we'll just keep the workaround in the meantime.

-- 
Ville Syrjälä
Intel
