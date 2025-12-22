Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 016E5CD621F
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 14:22:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DB4D10E51A;
	Mon, 22 Dec 2025 13:22:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FP+eeDpu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D87010E51A;
 Mon, 22 Dec 2025 13:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766409719; x=1797945719;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=crj3cjMYwg5aDj/QHQsdn1drehIVssMGCR2woGF4/qE=;
 b=FP+eeDpupBLrjZUPXcL1lIaRS3aBGbVHCYyqeIaNUskKRwSGYVibXaMI
 riLAz0OuNLRXpGJLyipOW3V83TrRUQju5kDjvYa/D4VNEwmkYpyKJ/rZX
 gAsTAP5NN+elavYJIrxy7pjQuND37YAufYYUwvn4HGI8Oi1j82f9Hs4aH
 HG9ybiGJH0nxIF4ffUJKNSoJvhv1cJA1aSDc9J4OUhruDW2sEXyN1dPwQ
 mc/20W9WX/fM2cIwls/AMXuM2+aU3cGYwifAOqk0bKOHm9vYPvPWuHiLW
 zjso7VsIA2beZLuG04up/6ZLAUpDHEJ+MAeosi78N4VzxBp7PvpWpTW4A g==;
X-CSE-ConnectionGUID: K3rCH67TTHW9ehvPvks6Nw==
X-CSE-MsgGUID: LbdXdltOSy+yhBVMEVYyaw==
X-IronPort-AV: E=McAfee;i="6800,10657,11649"; a="68017625"
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="68017625"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 05:21:59 -0800
X-CSE-ConnectionGUID: wGSPE4qGRJqJAkOkGKaSIA==
X-CSE-MsgGUID: bvSAQwiYRJKe91tCTYxtbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="200027381"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 05:21:57 -0800
Date: Mon, 22 Dec 2025 14:21:56 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/xe/display: drop i915_utils.h
In-Reply-To: <20251219104036.855258-1-jani.nikula@intel.com>
Message-ID: <939bb2d2-5f7d-e1af-f47f-f56c71204255@intel.com>
References: <20251219104036.855258-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="8323329-1079833054-1766409718=:1478141"
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1079833054-1766409718=:1478141
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8BIT

On Fri, 19 Dec 2025, Jani Nikula wrote:
> With the i915 switch to generic fault injection, display no longer needs
> the compat i915_utils.h. Remove it, along with a few includes.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>

BR,
Michał
--8323329-1079833054-1766409718=:1478141--
