Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SFhTILAazWnOaAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 15:16:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DED3F37B10F
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 15:16:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 184D410F100;
	Wed,  1 Apr 2026 13:16:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mlmj66CY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4895610E209;
 Wed,  1 Apr 2026 13:16:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775049388; x=1806585388;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Zme4EORxb62mE3Gz7iyiSunA8aKnHeRnkKkuESSBcOk=;
 b=mlmj66CY3YO+1N8bpz8+KS713Kz4bBsBhfmqxicOqYu4ZrD3poIHRU4i
 Xo0WDn1FL1bt2rzWbcrH6CQMgHC3oD7BXerfxuMtTfPdSnZUiIvTNO3ZQ
 XG8Rs2IrBRtqN60keaa48R1xEGVSst9JWiJMuY4A7FGKJ27P4G4YYx800
 YQ6sKBTNXbrO56Nj5ommD9/IOTUdsoGRbvIytkmIrnr+Iy+3b1hYhNfrm
 75xcNBx4SnPGCNKJkPX9j4HGjmf/LC1SJ0ypDwniGmNSKoTgI2rEBepUG
 QISCwx7goACicbB9TUdW75Z4TrJ6XP0EOjVCj49Q+4Wrj2ZMJqAUxdDcC A==;
X-CSE-ConnectionGUID: 0+bU9M4zSzGw3tjLhKyODQ==
X-CSE-MsgGUID: 6jlnWr8pSJC6vZsA/NWGzw==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="76201311"
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="76201311"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 06:16:27 -0700
X-CSE-ConnectionGUID: XzMBAfNSQdWKwlsuWtPI5Q==
X-CSE-MsgGUID: rmDiZ7X8TpKXF/WYxs6TVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="231081173"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.152])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 06:16:25 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 00/12] drm/i915: More uncore nukage from display code
In-Reply-To: <20260331154259.24600-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260331154259.24600-1-ville.syrjala@linux.intel.com>
Date: Wed, 01 Apr 2026 16:16:22 +0300
Message-ID: <ccd24c66f09b7e743f2de36c87c8653ba3578d14@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: DED3F37B10F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 31 Mar 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Ggt rid of more intel_uncore stuff from the display code:
> - new intel_mchbar_read*() abstraction for MCHBAR registers
> - some direct replacement of intel_uncore_{read,write}()
>   with intel_de_{read,write}()
>
> v2: Fix bisection on xe (nop intel_uncore_read64())
>     Deal with review comments

Yeah, still looking good.

BR,
Jani.

>
> Ville Syrj=C3=A4l=C3=A4 (12):
>   drm/i915/qgv: Use intel_de_read() for MTL_MEM_SS_INFO* reads
>   drm/i915/mchbar: Provide intel_mchbar_read*() abstraction
>   drm/i915/mchbar: Define the end of the MCHBAR mirror
>   drm/i915/mchbar: WARN when accessing non-MCHBAR registers via
>     intel_mchbar_read*()
>   drm/i915/mchbar: Use intel_mchbar_read() instead of intel_de_read()
>   drm/i915/mchbar: Use intel_mchbar_read*() instead of
>     intel_uncore_read*()
>   drm/i915/de: Add intel_de_read16()
>   drm/i915/de: s/intel_de_read64_2x32()/intel_de_read64_2x32_volatile()/
>   drm/i915/de: Add a simple intel_de_read64_2x32()
>   drm/i915/vrr: Use intel_de_read64_2x32()
>   drm/i915/mchbar: Use intel_de_read*() for MCHBAR register accesses
>   drm/i915/rom: Use intel_de for SPI ROM register access
>
>  drivers/gpu/drm/i915/Makefile                 |  1 +
>  drivers/gpu/drm/i915/display/i9xx_wm.c        | 10 +--
>  drivers/gpu/drm/i915/display/intel_bw.c       | 17 ++--
>  drivers/gpu/drm/i915/display/intel_cdclk.c    |  5 +-
>  drivers/gpu/drm/i915/display/intel_de.c       |  8 ++
>  drivers/gpu/drm/i915/display/intel_de.h       | 17 +++-
>  .../drm/i915/display/intel_display_power.c    |  3 +-
>  drivers/gpu/drm/i915/display/intel_dram.c     | 33 +++-----
>  drivers/gpu/drm/i915/display/intel_mchbar.c   | 79 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_mchbar.h   | 19 +++++
>  drivers/gpu/drm/i915/display/intel_rom.c      | 19 ++---
>  drivers/gpu/drm/i915/display/intel_vblank.c   |  4 +-
>  drivers/gpu/drm/i915/display/intel_vrr.c      |  6 +-
>  drivers/gpu/drm/i915/intel_mchbar_regs.h      |  7 +-
>  drivers/gpu/drm/xe/Makefile                   |  1 +
>  15 files changed, 172 insertions(+), 57 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_mchbar.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_mchbar.h

--=20
Jani Nikula, Intel
