Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 079D4CAFB65
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 12:01:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72A2510E512;
	Tue,  9 Dec 2025 11:01:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WPid3ylD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB63910E510;
 Tue,  9 Dec 2025 11:01:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765278102; x=1796814102;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=mv/+teG9mGzoD3EP4VbgGuUksarh70xFe4YA9r64FXA=;
 b=WPid3ylD+W1KBUH0+sXHAShl8Rj39tXoVTrqNlV7nPEZ52FsLrCNLX6j
 m/pzRzb8vQCYBQpx1FK0hbIf60aEUWP5N0+5cFlhEzHuMa6aMZpWCIQsh
 A37KbeBj53vkJLIiE6xqzGubprENqWGAibWb3QHPAfWWob+k15TWYfXlH
 ekyJCHz6Qnkp/CdSEntFvBGLUebdWvbki/R+OyNx9vFCWtR2qTR7IVCCU
 KsSqS/oAk8dG/bizbW70aP6eUVhDOr+k1dbNoOVtMGoLCqNxlUdVlySDL
 JXF57Sls8BNaa2xj+qfzLu5H5PHQMebk5KhfQTxgXigMONQtdMod9thiu g==;
X-CSE-ConnectionGUID: Z5XdSFHLRbm1Jk39kx0idQ==
X-CSE-MsgGUID: xPVTo6bVRl+sKrJb4Ww3XA==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="84837511"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="84837511"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 03:01:42 -0800
X-CSE-ConnectionGUID: bSubWdCpS7SwAoy+7G8FDg==
X-CSE-MsgGUID: iNnmbHIHTmSKKxVomV8GjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="201120207"
Received: from mwiniars-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.154])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 03:01:41 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 18/19] drm/i915: Clean up PCI config space reg defines
In-Reply-To: <20251208182637.334-19-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251208182637.334-1-ville.syrjala@linux.intel.com>
 <20251208182637.334-19-ville.syrjala@linux.intel.com>
Date: Tue, 09 Dec 2025 13:01:37 +0200
Message-ID: <0a930f98c696f68b2dca8cac1441257f09139bcf@intel.com>
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

On Mon, 08 Dec 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The PCI config space register defines in i915_drm.h are
> a bit of a mess; Whitespace is all over the place, register
> masks and values are defined in inconsitent ways.

*inconsistent

>
> Clean it up a bit.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

--=20
Jani Nikula, Intel
