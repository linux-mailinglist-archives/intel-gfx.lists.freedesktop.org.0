Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8AB0B843BC
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 12:54:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE97A10E74A;
	Thu, 18 Sep 2025 10:54:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I1+hTSJM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0001A10E757;
 Thu, 18 Sep 2025 10:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758192891; x=1789728891;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=mjXxP6fwAQEaTgw6csSTGxoI0D8oeeymXRsvqRg79go=;
 b=I1+hTSJMJK7szVoJdftcRFrmRMZC7Ku8DqRavgyHMrS4HJBbr7jvBUie
 lmo3dUft5PUN2Oona5+Efd/eTsv0C0Utyo5FiXxsP+OSgg8UnsgbydcGT
 rzhA6XC7P0mx9RyRKly7v4T+YbA3zDW8dp4q5ywXbMBm1p6NIUS1r6gGe
 5TIeZZKrHSjn1qZ/Dq946ezpj5hbkOWnFlicjTLSNUHCHSsDS91fNhTcs
 enYRcoeMBsJ9NcV0o7owN3LYK+1FCBwoG6tzMUehAj+yZfgXSAlZev01g
 UMmq0PancsR/bWZz7n56LiP4PVMoXfMIWIaTIi+vYcXcWcKs4loSqpNfY w==;
X-CSE-ConnectionGUID: ncVKhySSTZ+xs3S5EH8bNg==
X-CSE-MsgGUID: +KdqOGtCRduoI3TfRcjgug==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="60209537"
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="60209537"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 03:54:50 -0700
X-CSE-ConnectionGUID: GZ5zibRsQuWS/K/WY52cjQ==
X-CSE-MsgGUID: ieCiogToRzu1/u36PjH+cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="175950688"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 03:54:48 -0700
Date: Thu, 18 Sep 2025 12:54:45 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
cc: ville.syrjala@linux.intel.com, michal.grzelak@intel.com
Subject: Re: [PATCH v2 01/15] drm/i915: do cck get/put inside
 vlv_get_hpll_vco()
In-Reply-To: <1a6553f54619275aa05512421e19115a71cd3eb0.1757688216.git.jani.nikula@intel.com>
Message-ID: <120f0c47-ad64-8aeb-45fe-3db0af056a2b@intel.com>
References: <cover.1757688216.git.jani.nikula@intel.com>
 <1a6553f54619275aa05512421e19115a71cd3eb0.1757688216.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1274161189-1758192647=:965526"
Content-ID: <01699d8f-d59d-c9e7-add6-2e5a3ab94680@intel.com>
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

--8323329-1274161189-1758192647=:965526
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <b7833066-889a-9254-6eb7-3518ef34aaf0@intel.com>

On Fri, 12 Sep 2025, Jani Nikula wrote:
> Move towards VLV/CHV clock interfaces that handle sideband get/put
> inside them instead of at the caller.
>
> We'll need to move the calls outside of existing get/put.
>
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³
--8323329-1274161189-1758192647=:965526--
