Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D26A6BAC7
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 13:37:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C03FC10E7B8;
	Fri, 21 Mar 2025 12:37:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JSeEXfDo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FB3010E7B8
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Mar 2025 12:37:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742560641; x=1774096641;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=oQyGiV78LEK+tbLWGXm5etpWS3sUCPu5H0kZTYpo8lU=;
 b=JSeEXfDorT4Hr3B1AJ3xLYcmydbsYrPWpHqU3dYGlYc1QrgmF7IanzKh
 wzpCyREff9c2ebeMqqQ4lfLlJtAbuTPR1Kwks1fk3KjRiaXB9EgKqwCfO
 qKd5RokRdq7hIVr0l0veEDU1sWMjyuLpb0c0Ry3NNguQOShyN0/FUz0/a
 H/00GVWgB77mmwftoPJONOt2eFAxlOKZCSmPz1wO3vIux69Sr5zSoCC6X
 WXvf+rXpM662mGlYxDbh0JvJBCATMjoZDi4QTQglXD6b41a4NFm4mY7jm
 +MxfqGjdEdF1bB04s5mBMkX8uc8uA8Uh/hX5xQKcHfJyBOYdOYQBfm+RG g==;
X-CSE-ConnectionGUID: Iw2ekctURueoczGKYgim4w==
X-CSE-MsgGUID: VFCbBKFQRCuKDVoIAuVeoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11380"; a="31415834"
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="31415834"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 05:37:21 -0700
X-CSE-ConnectionGUID: fN2LIwPEQj+XS2avHEyG7g==
X-CSE-MsgGUID: kaLgaq4RTxebwSNATqk6Qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="127535785"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 05:37:19 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Jason A. Donenfeld" <Jason@zx2c4.com>, Andi Shyti
 <andi.shyti@linux.intel.com>
Cc: Markus Theil <theil.markus@gmail.com>, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, netdev@vger.kernel.org, tytso@mit.edu
Subject: Re: [PATCH v2 1/3] drm/i915/selftests: use prandom in selftest
In-Reply-To: <Z9r7ORwztMxsNyF4@zx2c4.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <CAHmME9oqvWp_Nd1Gwgyw52qy8wxztMyCpNsjByH=VnRaXqczww@mail.gmail.com>
 <20250211063332.16542-1-theil.markus@gmail.com>
 <20250211063332.16542-2-theil.markus@gmail.com>
 <Z64pkN7eU6yHPifn@ashyti-mobl2.lan> <Z9r7ORwztMxsNyF4@zx2c4.com>
Date: Fri, 21 Mar 2025 14:37:15 +0200
Message-ID: <874izmd0g4.fsf@intel.com>
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

On Wed, 19 Mar 2025, "Jason A. Donenfeld" <Jason@zx2c4.com> wrote:
> Hi Andi,
>
> On Thu, Feb 13, 2025 at 06:19:12PM +0100, Andi Shyti wrote:
>> Hi Markus,
>> 
>> On Tue, Feb 11, 2025 at 07:33:30AM +0100, Markus Theil wrote:
>> > This is part of a prandom cleanup, which removes
>> > next_pseudo_random32 and replaces it with the standard PRNG.
>> > 
>> > Signed-off-by: Markus Theil <theil.markus@gmail.com>
>> 
>> I merged just this patch in drm-intel-gt-next.
>
> This is minorly annoying for me... What am I supposed to do with patches
> 2 and 3? Take them through my tree for 6.16 in like half a year? Can I
> just take the v1 into my tree and we can get this done with straight
> forwardly? Or do you have a different suggestion for me?

Feel free to apply it to your tree too. It's not ideal to have two
commits for the same thing, but oh well.

Acked-by: Jani Nikula <jani.nikula@intel.com>

-- 
Jani Nikula, Intel
