Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1DF9C72F7C
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 09:52:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34F4D10E715;
	Thu, 20 Nov 2025 08:52:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gJwh8VEO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A00C110E715;
 Thu, 20 Nov 2025 08:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763628755; x=1795164755;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=V5h7IW34xa8jA074DhyYOflrIfEy6U8P0Tcs6tmKGAQ=;
 b=gJwh8VEO6AniHkLmL7zHBAUl+usB2JSnP/coRmKlR8YlgqFAw2C31r5e
 0aLAGYz4Dfy8SgPnTKXuC47nNZ7FgxRXfHouNc/y1LFKFgX3DkRPehNCq
 sf2Z+wZ5eyL4vsNLvU+VNNLIjZi2pBpJH3IQjWJppRLphznGlQlVWhTU0
 7lAegHxqsAuy9G639sK1vCrgsWng4sVmTAWBG60AMnpFJe8TApzjTgtby
 AvmMDzTK+Ov9sb1OMoaAcUvmd5p9OaucsltXZnUJRLh92hnt+a8hgc//J
 IGnx3R4nZ3LrPw1Hv86CjziwdBtoVgp3TYw0XWGZZeIIGuTeqbymhvISy A==;
X-CSE-ConnectionGUID: k4IFIai3Tiu17tivXAUwBg==
X-CSE-MsgGUID: SI9zmqBBQx+nRk4CtwbUlA==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="69307474"
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="69307474"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 00:52:35 -0800
X-CSE-ConnectionGUID: 8gJT7I50QymRrNnps28GJg==
X-CSE-MsgGUID: 1IuihjRpQJyHQB1fsKmZCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="228615800"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 00:52:32 -0800
Date: Thu, 20 Nov 2025 09:52:30 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 jouni.hogander@intel.com, ville.syrjala@linux.intel.com, 
 animesh.manna@intel.com
Subject: Re: [PATCH 3/5] drm/i915/alpm: Allow LOBF only for platform that
 have Always on VRR TG
In-Reply-To: <20251119135152.673276-4-ankit.k.nautiyal@intel.com>
Message-ID: <89fee0ca-5c79-7ae9-0042-60e8901615e6@intel.com>
References: <20251119135152.673276-1-ankit.k.nautiyal@intel.com>
 <20251119135152.673276-4-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1331651793-1763628003=:275675"
Content-ID: <624620ce-5b3b-797a-19bb-395fe60501a8@intel.com>
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

--8323329-1331651793-1763628003=:275675
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <2c3eaeb0-02ed-fe6e-231a-5fe7f5efaa58@intel.com>

On Wed, 19 Nov 2025, Ankit Nautiyal wrote:
> As per bspec the LOBF is allowed when running in fixed refresh rate mode
> i.e. when flipline = vmin = vmax and when window1 is non zero. This
> implies that we can allow LOBF only when VRR timing generator is running
> in the fixed refresh rate mode.
>
> Use the check intel_vrr_always_use_vrr_tg() to avoid LOBF with legacy
> timing generator. Also use intel_vrr_is_fixed_rr() to check for fixed
> refresh rate mode.
>
> v2: Modify commit message to clarify window1 requirement for LOBF.
> (Ville)
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³
--8323329-1331651793-1763628003=:275675--
