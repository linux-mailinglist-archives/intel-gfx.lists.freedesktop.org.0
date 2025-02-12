Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0080DA328EE
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 15:45:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9793610E8CE;
	Wed, 12 Feb 2025 14:45:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FvPzVvp0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72A2C10E8CC;
 Wed, 12 Feb 2025 14:45:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739371535; x=1770907535;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DPhVWfuzqgm2AAbTWf8tfr+heTctjWFg9QzU4MngKG8=;
 b=FvPzVvp0m4To7f+ilrbnMyoZ1tFcg1VGB7NYmrdaWpVIfESul5Xc/VsF
 oHLKfJO3NDzMash0Q1u838cxb0h/+/wl/8mx4ckuwY7NtGfVi2nMIyEV/
 TGG/eFNkqVrxSvpa7xbhwrrGqbiD/kSui8JUkHAvhAQamyAB+9ylrfvWC
 dhnzHIJGP7xqTSSPyUhkXsDN5gAJDsZgdr/60KUHj2TnfbAoqz2tnyaxP
 jgvyxBECiNSIU6j5txMdIe8K7ReBGe38FsDuWggJgzK8T00msJ9nlcF/B
 CShjJ4EjI2uO1f1eCriSyJu9BhdStHE4iB0DsxjauuHgtTxMN8OgRfQdS Q==;
X-CSE-ConnectionGUID: GzotmhmnQvOgnSRCMCHmAw==
X-CSE-MsgGUID: QXyIqxcvQZ2m0MKGN/45Ag==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="39913181"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="39913181"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 06:45:35 -0800
X-CSE-ConnectionGUID: AP5V/7eEQ5KgcHlGrVwymA==
X-CSE-MsgGUID: 5HbEf+SxQPm5DQ6k+JNONA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="113050786"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Feb 2025 06:45:33 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Feb 2025 16:45:31 +0200
Date: Wed, 12 Feb 2025 16:45:31 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 imre.deak@intel.com
Subject: Re: [PATCH 3/3] drm/i915: split out display register macros to a
 separate file
Message-ID: <Z6y0C3mX8XyIiZUa@intel.com>
References: <cover.1738935286.git.jani.nikula@intel.com>
 <f6ceecdab92d47e92700b19b278028f0773d71e5.1738935286.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f6ceecdab92d47e92700b19b278028f0773d71e5.1738935286.git.jani.nikula@intel.com>
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

On Fri, Feb 07, 2025 at 03:35:22PM +0200, Jani Nikula wrote:
>  #define _FPA0	0x6040
>  #define _FPA1	0x6044
>  #define _FPB0	0x6048
...
>  #define _PIPE_MISC2_A					0x7002C
>  #define _PIPE_MISC2_B					0x7102C
>  #define PIPE_MISC2(pipe)		_MMIO_PIPE(pipe, _PIPE_MISC2_A, _PIPE_MISC2_B)
...
>  #define _PIPEA_FLIPCOUNT_G4X	0x70044
>  #define PIPE_FLIPCOUNT_G4X(dev_priv, pipe) _MMIO_PIPE2(dev_priv, pipe, _PIPEA_FLIPCOUNT_G4X)
...
>  #define _PFA_VSCALE		0x68084
>  #define _PFB_VSCALE		0x68884
>  #define PF_VSCALE(pipe)		_MMIO_PIPE(pipe, _PFA_VSCALE, _PFB_VSCALE)
...
>  #define HSW_PWR_WELL_CTL5			_MMIO(0x45410)
>  #define   HSW_PWR_WELL_ENABLE_SINGLE_STEP	(1 << 31)

This approach seems to leave quite a lot of stuff behind.
I'm just wondering how painful it'll be to find the right spot
for those again after the fact...

-- 
Ville Syrjälä
Intel
