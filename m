Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D31CA6DBCF
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 14:42:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52AA710E41C;
	Mon, 24 Mar 2025 13:42:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RvC9CS5S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CB3D10E42F;
 Mon, 24 Mar 2025 13:41:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742823717; x=1774359717;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=NsI6Dxa1q5L/jpZAovfLjCzZY19BKLCx/YwxouL5alM=;
 b=RvC9CS5STP1J7teYhLKlbiohcsjq84bS3T23qHRduhed84fLeJnhj/+H
 J2vTqIod/zP3nz4Jx1g9kIn9w4ch6zvhCdkpRQhRaLSPSIsoz6ES2JK64
 kLdoBztGFWKBc1ifxZ4rUTap8lKGTV5jQKrtQKYnCEYRBu09oY3z66H6b
 7kjvp0kfttjRYw6HCNjeW80zXNyfEDBvtiw+A2/n5AvDLgF9Kao7Ix3g7
 +m8ad7hkh0Ns0S9LMVjDP0bcGMTCjlC1+OCvQMyQiDy2jBfDJihTg8QZ9
 kziMsK/0bEKrs0G8ZPNJtPzrHpCDJAicJN2vjweWHFR1bnENy50+xGMYi g==;
X-CSE-ConnectionGUID: AR27/VNfSdSkub5XfDv2Nw==
X-CSE-MsgGUID: YmJTWjW+QtuQDP6Sxu9i0A==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="61549744"
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="61549744"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 06:41:56 -0700
X-CSE-ConnectionGUID: BlrzRQovSKW6jnXBdZUqmg==
X-CSE-MsgGUID: 6wpqHdQwSGu/dRvMG7AmWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="125000100"
Received: from smile.fi.intel.com ([10.237.72.58])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 06:41:52 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1twi3p-00000005SSH-2oSy; Mon, 24 Mar 2025 15:41:49 +0200
Date: Mon, 24 Mar 2025 15:41:49 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: mailhol.vincent@wanadoo.fr
Cc: Yury Norov <yury.norov@gmail.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Andi Shyti <andi.shyti@linux.intel.com>,
 David Laight <David.Laight@aculab.com>, Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH v7 2/5] bits: introduce fixed-type BIT_U*()
Message-ID: <Z-FhHRWtaYgTbILa@smile.fi.intel.com>
References: <20250322-fixed-type-genmasks-v7-0-da380ff1c5b9@wanadoo.fr>
 <20250322-fixed-type-genmasks-v7-2-da380ff1c5b9@wanadoo.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250322-fixed-type-genmasks-v7-2-da380ff1c5b9@wanadoo.fr>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Sat, Mar 22, 2025 at 06:23:13PM +0900, Vincent Mailhol via B4 Relay wrote:
> From: Lucas De Marchi <lucas.demarchi@intel.com>
> 
> Implement fixed-type BIT_U*() to help drivers add stricter checks,
> like it was done for GENMASK_U*().

...

> +/*
> + * Fixed-type variants of BIT(), with additional checks like GENMASK_TYPE(). The
> + * following examples generate compiler warnings due to shift-count-overflow:

"...due to -Wshift-count-overflow:" ?

Same idea — if you need a new version, since it's just a nit-pick.

> + *
> + * - BIT_U8(8)
> + * - BIT_U32(-1)
> + * - BIT_U32(40)
> + */

-- 
With Best Regards,
Andy Shevchenko


