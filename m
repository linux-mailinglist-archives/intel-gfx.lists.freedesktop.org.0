Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B25C72F85
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 09:53:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B25A410E717;
	Thu, 20 Nov 2025 08:53:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jgsgn2uW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52BAE10E714;
 Thu, 20 Nov 2025 08:53:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763628805; x=1795164805;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=P6DFBe82oAcT+mV8uivtsQrOksYeg6blMIXrjyuavgM=;
 b=Jgsgn2uWcOVcCOM0VrMHr2BUc/7SwjMiHaPCwPf7dcqPa2m9ppq6CdhL
 ERfqqw55z/MKWf+Rc6VJjqCk0wOJOYp6BxcGWTJHdErws/zxp7deEWqjC
 uBgTdJ2MwwDQpnUcQeRGZX1DeNnp33Okiqb3xPFU4qYHYOrMe6zw/CV/g
 IiW2Eh5WFMBdaj/QfmNeBVyuuANvPDRbzgFNhoDz8l+G6CALK2zI4dKxl
 bv6xIU3ttaCmAAmcZmGRAfzZ+M+QfUAPrsLVF5ElPVD3hxWR5G0FT4FxP
 AbptueKw2ZodXgXIU3wFTcRP2cyXQKvuK3D6io4BX1toa12txsDn/qUVE Q==;
X-CSE-ConnectionGUID: MNMZgTiVQEa+pJ+SD5ILQw==
X-CSE-MsgGUID: g1oDEvIxR9GToOwoS22qQg==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="83076907"
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="83076907"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 00:53:23 -0800
X-CSE-ConnectionGUID: UAXAYVHzT4GahXYh5CCRrA==
X-CSE-MsgGUID: pJnbyPbvToewbCT7gHZJqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="195440724"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 00:53:22 -0800
Date: Thu, 20 Nov 2025 09:53:19 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 jouni.hogander@intel.com, ville.syrjala@linux.intel.com, 
 animesh.manna@intel.com
Subject: Re: [PATCH 5/5] drm/i915/alpm: Disable LOBF around transitioning
 for LRR/seamless MN
In-Reply-To: <20251119135152.673276-6-ankit.k.nautiyal@intel.com>
Message-ID: <6f8679bb-305b-04cd-4333-f9a443d457fc@intel.com>
References: <20251119135152.673276-1-ankit.k.nautiyal@intel.com>
 <20251119135152.673276-6-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-362608476-1763628247=:275675"
Content-ID: <fa942ffc-ec96-4118-5583-59fc2237c080@intel.com>
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

--8323329-362608476-1763628247=:275675
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <fafaefac-620a-fea5-d05f-49bc8b7e2785@intel.com>

On Wed, 19 Nov 2025, Ankit Nautiyal wrote:
> When enabling LRR/seamless MN disable LOBF first and re-enable
> afterwards.
> - pre_plane_update: if LOBF was enabled, disable LOBF before the
>  update_lrr/update_m_n transition.
> - post_plane_update: Re-enable LOBF after the transition.
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³
--8323329-362608476-1763628247=:275675--
