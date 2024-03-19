Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FADC88058C
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Mar 2024 20:38:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 101EB10E1FE;
	Tue, 19 Mar 2024 19:38:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mJyYx9pm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B0C510F46E
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Mar 2024 19:38:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710877130; x=1742413130;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=u2QucK29aRzlK548ra10IX8j7nKFsI0TbBH/OGaVE3E=;
 b=mJyYx9pmdjn06siQ/CxBYLS31VdkLooU3a28gEitnQkrkivYvZiuKYIu
 yd/We3hLTeWHs4YOun/cGDeboEPh8b4SRqw2EE4tYT1Lpww86/GUBshmp
 mZ+8cQyd6w6MU5PFOdDeRjsntuDY3mDQEA/yd1ZvzQ4c6WT/lxKo7ERVp
 0CIJd5NBcL9AHgiIbSIVAAgkfqOmLzSslvNKSX+Ydz/gtko1QXKFJydEf
 Un6jENfBg2dGtDwOtrd5BGDE0EUmPhkU/sRXhR/Gw1sAAFJHUL2/mrmMj
 Oo2A520G1D1eRAtP4p58vTM9DXPzPPqnSgDhHXlP7OiSniVkh4KNBU0HE Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11018"; a="5651895"
X-IronPort-AV: E=Sophos;i="6.07,137,1708416000"; 
   d="scan'208";a="5651895"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 12:38:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11018"; a="827782265"
X-IronPort-AV: E=Sophos;i="6.07,137,1708416000"; d="scan'208";a="827782265"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 19 Mar 2024 12:38:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 19 Mar 2024 21:38:45 +0200
Date: Tue, 19 Mar 2024 21:38:45 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: stable@vger.kernel.org
Cc: intel-gfx@lists.freedesktop.org
Subject: v6.7+ stable backport request for drm/i915
Message-ID: <ZfnpxcS2dXkzlExH@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
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

Hi stable team,

Please backport the following the commits to 6.7/6.8 to fix
some i915 type-c/thunderbolt PLL issues:
commit 92b47c3b8b24 ("drm/i915: Replace a memset() with zero initialization")
commit ba407525f824 ("drm/i915: Try to preserve the current shared_dpll for fastset on type-c ports")
commit d283ee5662c6 ("drm/i915: Include the PLL name in the debug messages")
commit 33c7760226c7 ("drm/i915: Suppress old PLL pipe_mask checks for MG/TC/TBT PLLs")

6.7 will need two additional dependencies:
commit f215038f4133 ("drm/i915: Use named initializers for DPLL info")
commit 58046e6cf811 ("drm/i915: Stop printing pipe name as hex")

Thanks.

-- 
Ville Syrjälä
Intel
