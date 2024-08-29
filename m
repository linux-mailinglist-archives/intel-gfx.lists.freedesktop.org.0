Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F21FF964AFA
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2024 18:05:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9E5D10E726;
	Thu, 29 Aug 2024 16:05:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gPXMWtbx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B44810E720;
 Thu, 29 Aug 2024 16:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724947500; x=1756483500;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=VLyOoMcazMV5q4QQix3F7SBU49MYqTGbT4np6PoZGTo=;
 b=gPXMWtbxqV7fKFCHjVylqZ9les2klzwPQgFHaJUM1+tpT4+QkT5eXEN2
 4d17CnOP7pmgT+EHHU4Wqbq2hLmnTdy8DVtqwJ6c8tGxj5fSo1soBpWKs
 epkwlbMeSab1E+ExnHpxN48UALGnOs1NoZA6rKCRUHOqM3UhINMAZm/OP
 7Cy2ZR1fTLdlvN+Z+T818yRagJ6xjyy5/r7G3p/cIq005HpeWlc3PhF3F
 sSrEARknH2vTBcFtaEe1MuLKmiP2En8wOzTsr1sbBKb8Jluwp2cePcdB2
 dw6SUnqhbQrUQwxUqLI79j6Xr8l9uBSBUACtO6p0od0JEbmLY+KW43xEp g==;
X-CSE-ConnectionGUID: MJCVLVZARYKtT6jY+ZTfWw==
X-CSE-MsgGUID: pbwbmivGTUGUlMB036vmew==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="27430580"
X-IronPort-AV: E=Sophos;i="6.10,186,1719903600"; d="scan'208";a="27430580"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 09:03:55 -0700
X-CSE-ConnectionGUID: luedtuRBSSCucDkydAf1xA==
X-CSE-MsgGUID: ij9+LiJSSeuTurDkbm7Msw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,186,1719903600"; d="scan'208";a="63611886"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 29 Aug 2024 09:03:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 29 Aug 2024 19:03:51 +0300
Date: Thu, 29 Aug 2024 19:03:51 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, lucas.demarchi@intel.com
Subject: Re: [PATCH v2 0/9] drm/i915/display: platform identification with
 display->is.<PLATFORM>
Message-ID: <ZtCb5yc6KCy1S6bo@intel.com>
References: <cover.1724092799.git.jani.nikula@intel.com>
 <Zs-LdJYx_lVDt9PC@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Zs-LdJYx_lVDt9PC@intel.com>
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

On Wed, Aug 28, 2024 at 04:41:24PM -0400, Rodrigo Vivi wrote:
> On Mon, Aug 19, 2024 at 09:44:27PM +0300, Jani Nikula wrote:
> > v2 of [1]. Please read the cover letter there.
> > 
> > This addresses review comments and adds a few more commits on top, in particular
> > the last one showcasing the approach.
> > 
> > The main question remains, is this what we want?
> 
> I don't know why, but the 'is' thing is still strange.
> 
> I know I know... I'm bad with naming myself.
> 
> I think about 'platform' but that get too big
> 
> if (display->platform.BROADWELL)
> 
> I think about 'gen' but then it is overloaded....
> 
> then I think about 'ip' is worse...
> 
> 'version'?
> 
> 'name'?
> 
> if (display->name.HASWELL)...
> 
> ....
> 
> But well, I like the overall simplification here in general.
> Without a better name to suggest, I guess let's just move ahead...

One slight concern with the is.foo is whether it complicates finding
things with eg. cscope. But I suppose for platforms that doesn't matter
all that much. For the has_foo stuff it'd be much more relevant.

Anyways, can't think of anything particularly elegant myself either,
so go ahead I guess.

> 
> > 
> > BR,
> > Jani.
> > 
> > [1] https://lore.kernel.org/r/cover.1718719962.git.jani.nikula@intel.com
> > 
> > 
> > Jani Nikula (9):
> >   drm/i915/display: use a macro to initialize subplatforms
> >   drm/i915/display: use a macro to define platform enumerations
> >   drm/i915/display: join the platform and subplatform enums
> >   drm/i915/display: add display platforms structure with platform
> >     members
> >   drm/i915/display: add platforms "is" member to struct intel_display
> >   drm/i915/display: remove the display platform enum as unnecessary
> >   drm/i915/display: consider HSW/BDW ULX to also be ULT
> >   drm/i915/display: keep subplatforms next to their platforms
> >   drm/i915/bios: use display->is.PLATFORM instead of IS_PLATFORM()
> > 
> >  drivers/gpu/drm/i915/display/intel_bios.c     |  36 ++--
> >  .../gpu/drm/i915/display/intel_display_core.h |   3 +
> >  .../drm/i915/display/intel_display_device.c   |  89 ++++++---
> >  .../drm/i915/display/intel_display_device.h   | 180 ++++++++++--------
> >  4 files changed, 174 insertions(+), 134 deletions(-)
> > 
> > -- 
> > 2.39.2
> > 

-- 
Ville Syrjälä
Intel
