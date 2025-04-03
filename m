Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97234A7A2CA
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Apr 2025 14:25:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1143010E23A;
	Thu,  3 Apr 2025 12:25:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TrLPI/Lr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9158C10E23A;
 Thu,  3 Apr 2025 12:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743683113; x=1775219113;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=gEdzei2dpJ8QjemyJcigL/vqwUfgTdquxVIpL9GkZBA=;
 b=TrLPI/LrrTugkgA/NwIP3smnvEKUB1zFJUutAWYBzzmI8lTjca7aVV26
 YK7peDMXhTM2tbijNwo0QM+G7QoLoJyjnHDE/hOTcqINBVeTaJeQxmC5C
 zhn2DV0gWuUj0Q7yyt/si/LcX4/WVXwb+ZUiXN7/g+JPptxN3k2bgfcdD
 z1O4cj+8TkC6rnChvKjzJcjqaTzIEGsNrqEo0VKWivA1xO3IFA135fQJW
 xACnKfs0I3uyUYClXQy0v/8T1Y6sT7EeC8I0K0FiMxXyG/yHHnV99NXLz
 tBzGlBewrLcihZTxaHbQ/BI94xzFrzPtdlLuh4xnDUHq1A0gW+I1UeWIy w==;
X-CSE-ConnectionGUID: 63P17yAkRJiUAa6LH5fNjA==
X-CSE-MsgGUID: dF0vwVWKQymwXdbxYE+v7g==
X-IronPort-AV: E=McAfee;i="6700,10204,11393"; a="32689816"
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="32689816"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 05:25:13 -0700
X-CSE-ConnectionGUID: TOO4mbl+R4K8dmv2GF3bZA==
X-CSE-MsgGUID: vHeph2LlRAefPitguloKbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="127270028"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 05:25:10 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "20250311100626.533888-1-william.tseng@intel.com"
 <20250311100626.533888-1-william.tseng@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>, "Lee, Shawn C"
 <shawn.c.lee@intel.com>, Cooper Chiou <cooper.chiou@intel.com>
Subject: RE: [PATCH v4] drm/i915/dsi: let HW maintain the HS-TRAIL timing
In-Reply-To: <SJ0PR11MB589490938579B493076E42D2F1AD2@SJ0PR11MB5894.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211217100903.32599-1-william.tseng@intel.com>
 <20250311100626.533888-1-william.tseng@intel.com>
 <87semx4gsz.fsf@intel.com>
 <SJ0PR11MB589490938579B493076E42D2F1AD2@SJ0PR11MB5894.namprd11.prod.outlook.com>
Date: Thu, 03 Apr 2025 15:25:07 +0300
Message-ID: <87ecy91lgc.fsf@intel.com>
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

On Mon, 31 Mar 2025, "Tseng, William" <william.tseng@intel.com> wrote:
> No problem.  Thank you so much for your time.

I was reading the Windows driver code when reviewing your changes, and
spotted some other things. Posted at [1]. I'd appreciate it if you could
test or review them. I don't have the hardware...

BR,
Jani.



[1] https://lore.kernel.org/r/cover.1743682608.git.jani.nikula@intel.com



-- 
Jani Nikula, Intel
