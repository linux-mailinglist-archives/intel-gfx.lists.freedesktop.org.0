Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 436128988C8
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 15:28:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8005710E530;
	Thu,  4 Apr 2024 13:28:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Th7SXE+V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FE6A10E530
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Apr 2024 13:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712237315; x=1743773315;
 h=date:from:to:cc:subject:message-id:reply-to:mime-version;
 bh=zL/o2dyB0jowlGfVpgC3DOHrmnHMiWgMY0nIbEHPgnc=;
 b=Th7SXE+VF6FHhk/mA3CzT7SWRIFyCCyBu03Qj0E/yNYENqQUhWv4aQ+K
 yKO+ezhYbn7bPJ/hPPzh4CpScuju/4WjaQOgLhA48Mxc6bVxdqnoztPGE
 LB0Ru/c7kxfJ226BZmGyJzKV7K0U6NeLo/YLD7S0xZ4yMhZDiCXB9F2So
 M5KaoeTiZbTqS49arbVxDgNFCjXkuW+kgb9sHTI0iGnefp7X/TKWPJpHj
 jRafwBwAg2XfAXxHK4xF+iwR6O3x/ONSEl6AZl3nSqMhONnJVT/x6GucL
 rbx6jrX50jizsKXmcCQN59duy8za7nTEwA193xrhHdW22GeiozxJvvqQ3 w==;
X-CSE-ConnectionGUID: 55EzbBInSUKCJIxaEnUC3Q==
X-CSE-MsgGUID: aB/LwrTiTX+VrOeLhBWsGQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="11291426"
X-IronPort-AV: E=Sophos;i="6.07,179,1708416000"; d="scan'208";a="11291426"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 06:28:34 -0700
X-CSE-ConnectionGUID: 19c3ccOMR5K2dwTjcWQy9g==
X-CSE-MsgGUID: SZDJqoRQQ9mofuSroIgfjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,179,1708416000"; d="scan'208";a="23541894"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 06:28:34 -0700
Date: Thu, 4 Apr 2024 16:29:04 +0300
From: Imre Deak <imre.deak@intel.com>
To: stable@vger.kernel.org
Cc: intel-gfx@lists.freedesktop.org
Subject: v6.8 stable backport request for drm/i915
Message-ID: <Zg6rIG0idN3NSTbP@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Stable team, please backport the following upstream commit to 6.8:

commit 7a51a2aa2384 ("drm/i915/dp: Fix DSC state HW readout for SST connectors")

Thanks,
Imre
