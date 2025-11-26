Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F8FC8957B
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 11:41:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCC9110E59D;
	Wed, 26 Nov 2025 10:41:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m1kuWUas";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E538810E59D
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Nov 2025 10:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764153693; x=1795689693;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=+3uf068jfpFAlV9UhJ2AOkoYFxdA8zg9MQS5UQDCqZM=;
 b=m1kuWUasQ5zmEcIPOTx52u10tKd7dY61b+0sWFrhNZnl1XysRg7vUSc+
 JqgBxx+2YnXS2tDpu4cW2OrDQ+tb2yOxOwSro9RvI7NmPdPmPqVbXg6/l
 PtP397zhZb6sBNFHSFDuH8fV4ahHMxgKj41L4TngdTt36+R3Y4yq9pgU0
 3rUrfWvmFERpj7/JZTZLBOVzSINLfA163Qi7mhDwXGZ4g2tH9nJ4OSFoJ
 qvbkb7ZdQRBte/VJ3SAwg4du76mcZULAvzHBU2e1egZc5sTr4mK/ESDLc
 e1tC/5FeQUjBO0BrLCDGQNwVWVl/TvF/yzcEP+e+ggaMl965/5eM8CkkR w==;
X-CSE-ConnectionGUID: CtOfSeLpSymg2hBWnCCGeQ==
X-CSE-MsgGUID: W1HH6v/HRGyxd4hyGOmGDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="70045410"
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800"; d="scan'208";a="70045410"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 02:41:32 -0800
X-CSE-ConnectionGUID: m4C3dgZRT5OT9DyO8KPYTQ==
X-CSE-MsgGUID: q0aizKdSTSaN+SFibSxcoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800"; d="scan'208";a="197069984"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.1])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 02:41:31 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: stable@vger.kernel.org
Cc: intel-gfx@lists.freedesktop.org, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Subject: please backport 8c9006283e4b ("Revert "drm/i915/dp: Reject HBR3
 when sink doesn't support TPS4"")
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Wed, 26 Nov 2025 12:41:28 +0200
Message-ID: <ae09d103eb4427f690685dc7daf428764fed2421@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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


Stable team, please backport

8c9006283e4b ("Revert "drm/i915/dp: Reject HBR3 when sink doesn't support TPS4"")

from v6.18-rc1 to v6.15+. It's missing the obvious

Fixes: 584cf613c24a ("drm/i915/dp: Reject HBR3 when sink doesn't support TPS4")


Thanks,
Jani.

-- 
Jani Nikula, Intel
