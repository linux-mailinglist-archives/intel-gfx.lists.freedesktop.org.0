Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0468DA3299D
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 16:12:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF88C10E8EB;
	Wed, 12 Feb 2025 15:12:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="enFmPMyi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E2B810E327;
 Wed, 12 Feb 2025 15:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739373173; x=1770909173;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=wuvZpulGVUB+Jfg35t1KPB/XfBc59T8MU6RILOnGM8Y=;
 b=enFmPMyiRLOyAij0HkJ1PUEPAgdTP5XvssiHRbLBY4QiCLK05nCSg3YY
 4z+zx4tNbjJ0e9vEpUIl8Gdvgj6dUysKOqsy7v3Hx5AIshDMkHWMwsOwF
 X0eeijk3aY/rQnmyP8JZsxer+kwCZ4vWAn3RmadUfyu0qpLaEXY4AbPK4
 ofugaq07CfIB1PZ6trxxxnUh3zLdLihVgvHWAFZ7X+IbpriZ+fzzzYqfE
 VxojhR8zRR8iEqIbrh7mXIFLncMcnEn82VNUwMk72BFmRHHm4G0gW5NbH
 B6xPwhPewwGqk+NZHgTDP74hOkEobyzcM/ePklCj/KFk+tkXkHLumwgee w==;
X-CSE-ConnectionGUID: 2JrRjTlfRsKybeGj6R6SgA==
X-CSE-MsgGUID: VYiEdC5fTnCc90q24Nln0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="51468108"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="51468108"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 07:12:52 -0800
X-CSE-ConnectionGUID: cfB/bK9lTOi7fMXTsFtpqQ==
X-CSE-MsgGUID: v2ftpraLQ/mFhBMX332Xsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="113055183"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Feb 2025 07:12:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Feb 2025 17:12:49 +0200
Date: Wed, 12 Feb 2025 17:12:49 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 imre.deak@intel.com
Subject: Re: [PATCH 3/3] drm/i915: split out display register macros to a
 separate file
Message-ID: <Z6y6cd1KeIR1_1lF@intel.com>
References: <cover.1738935286.git.jani.nikula@intel.com>
 <f6ceecdab92d47e92700b19b278028f0773d71e5.1738935286.git.jani.nikula@intel.com>
 <Z6y0C3mX8XyIiZUa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z6y0C3mX8XyIiZUa@intel.com>
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

On Wed, Feb 12, 2025 at 04:45:31PM +0200, Ville Syrjälä wrote:
> On Fri, Feb 07, 2025 at 03:35:22PM +0200, Jani Nikula wrote:
> >  #define _FPA0	0x6040
> >  #define _FPA1	0x6044
> >  #define _FPB0	0x6048

These at least are only used by the display code, so the
script seems to have some issues picking up everything.

> ...
> >  #define _PIPE_MISC2_A					0x7002C
> >  #define _PIPE_MISC2_B					0x7102C
> >  #define PIPE_MISC2(pipe)		_MMIO_PIPE(pipe, _PIPE_MISC2_A, _PIPE_MISC2_B)

Those aren't used currently, so that explains why they
got left behind.

> ...
> >  #define _PIPEA_FLIPCOUNT_G4X	0x70044
> >  #define PIPE_FLIPCOUNT_G4X(dev_priv, pipe) _MMIO_PIPE2(dev_priv, pipe, _PIPEA_FLIPCOUNT_G4X)
> ...
> >  #define _PFA_VSCALE		0x68084
> >  #define _PFB_VSCALE		0x68884
> >  #define PF_VSCALE(pipe)		_MMIO_PIPE(pipe, _PFA_VSCALE, _PFB_VSCALE)
> ...
> >  #define HSW_PWR_WELL_CTL5			_MMIO(0x45410)
> >  #define   HSW_PWR_WELL_ENABLE_SINGLE_STEP	(1 << 31)

And these three seem to be used from gvt only atm.

-- 
Ville Syrjälä
Intel
