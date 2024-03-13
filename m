Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C09587A812
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 14:07:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB5F210E8F6;
	Wed, 13 Mar 2024 13:07:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OXCzBLF+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2398510E874;
 Wed, 13 Mar 2024 13:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710335243; x=1741871243;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5vw/ZhcovFqwR7HPA4W8i5CZC5EXQdnVD6pej2onsWY=;
 b=OXCzBLF+VTjliGblMaDJOd4/h/JskOYISsBikUA2e8rmg4GfvQfWddBg
 QhwryuFccuqNXI9cDYYlf3Z5Q3JZfFRpTktkVjlxtBR7u9NhYgbcWMmD0
 dF/vqHPAa/k43QZuCYxdTjkbiIzYEMoejZSGVcCHTLRLAQ07F9+xbKQTQ
 7BT/xSFVcnMRPcKkEkIJlb8mCYW4eU59Dn8yRBEtitPeJFVMjCWKnmUvJ
 ugLrLOSAinV8aWtuBj1JKQzkE3LxfPkH2QNNlw1PHcSVLev8ORJTPQJZp
 0UdqwJOwPXhx/pETlRjom7jP2gF61Ez+XKU8VgHKOZjFkdZxWT1padrfR A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="15822833"
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; d="scan'208";a="15822833"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 06:07:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; d="scan'208";a="42852631"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 06:07:22 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Gustavo Sousa <gustavo.sousa@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: Re: [PATCH v2 0/8] Enable LNL display
Date: Wed, 13 Mar 2024 06:07:53 -0700
Message-ID: <171033513087.2584417.10361013024587941744.b4-ty@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240312163639.172321-1-gustavo.sousa@intel.com>
References: <20240312163639.172321-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
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


On Tue, 12 Mar 2024 13:36:31 -0300, Gustavo Sousa wrote:
> This series aims at providing the remaining patches for enabling display
> on Lunar Lake, which used Xe2LPD display IP.
> 
> The first set of patches contains fixes and extra stuff required for
> supporting CDCLK on Xe2LPD:
> 
>     drm/i915/cdclk: Rename lnl_cdclk_table to xe2lpd_cdclk_table
>     drm/i915/cdclk: Add and use mdclk_source_is_cdclk_pll()
>     drm/i915/cdclk: Only compute squash waveform when necessary
>     drm/i915: Extract intel_dbuf_mdclk_cdclk_ratio_update()
>     drm/i915: Add mdclk_cdclk_ratio to intel_dbuf_state
>     drm/i915/xe2lpd: Support MDCLK:CDCLK ratio changes
> 
> [...]

Applied all the patches to drm-intel-next. Thanks for the patches and reviews.

[1/8] drm/i915/cdclk: Rename lnl_cdclk_table to xe2lpd_cdclk_table
      commit: dfdfc609bb71521ac22a2ff91f608644bf7e7b6d
[2/8] drm/i915/cdclk: Add and use mdclk_source_is_cdclk_pll()
      commit: 5372a54d7a3cf32c761d2896276b72b495bcb497
[3/8] drm/i915/cdclk: Only compute squash waveform when necessary
      commit: 452269e2f0ea180a4bc39fd4643df7fe2ea0bb8e
[4/8] drm/i915: Extract intel_dbuf_mdclk_cdclk_ratio_update()
      commit: 66a0e0681392420b326f00ba732e6bda099eda29
[5/8] drm/i915: Add mdclk_cdclk_ratio to intel_dbuf_state
      commit: 9161e31181440e4882f78e02783e40325dc82e27
[6/8] drm/i915/xe2lpd: Support MDCLK:CDCLK ratio changes
      commit: c834a080a0134e7bd0cb18c3a2b0dd674794d182
[7/8] drm/i915/xe2lpd: Load DMC
      commit: bf1a72ab5a446e383682e34347237ee5317c2185
[8/8] drm/xe/lnl: Enable display support
      commit: 79263e4b3f0ed5928a1622300d32ed35f7d8fc24

Best regards,
-- 
Lucas De Marchi <lucas.demarchi@intel.com>
