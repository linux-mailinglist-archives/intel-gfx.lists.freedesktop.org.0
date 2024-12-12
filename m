Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2D79EE422
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 11:31:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF1CE10ED55;
	Thu, 12 Dec 2024 10:31:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="boRaYlh/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CC9E10ED50;
 Thu, 12 Dec 2024 10:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733999460; x=1765535460;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=DtPigWg9sMv80pYKgnbjs/YI2ruZ++WTmGUPQV1p1do=;
 b=boRaYlh/Ub993uSfjfh9YsuFjrNDme0Yi/hIvgFtkuinfL4Ij1KK1qub
 hzGI3nl/J3LxB/s/0dIxwa2OODE3pETY07bCq3H2rORJAoSr4a0l/PieB
 JhC0c0gInYlk4XNma6x+4txrH9yUfsEBCGRxSmpquwkKXdcm185R94IyL
 yE669SJPZMZYhQVivSiWJAsq4lDN8sVpKtLQOEBDUOk1S9Z38CcvmAoYI
 IkRK7UdNmqEmWxZpqrv9u4eJeIuIet5cQy+N7JZYI88c5vNFqd4aJk90L
 BEF3FZXjQ9nFyyM1Rl1oBB6K7Vu5HFWGo6WbIYQxKlchaaSXhkBd9Aj+K Q==;
X-CSE-ConnectionGUID: BHHA5MuGSHCr1F+q4LZvuQ==
X-CSE-MsgGUID: ukFStvXeSVyeSVpq5emJiA==
X-IronPort-AV: E=McAfee;i="6700,10204,11283"; a="34333881"
X-IronPort-AV: E=Sophos;i="6.12,228,1728975600"; d="scan'208";a="34333881"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 02:31:00 -0800
X-CSE-ConnectionGUID: HiEWYaFSTlObmNR79NoROA==
X-CSE-MsgGUID: z+iXmhvoTMWA1jT/yyvUyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,228,1728975600"; d="scan'208";a="96083118"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.101])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 02:30:59 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Luca Coelho <luca@coelho.fi>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 3/5] drm/i915/dp: convert to struct intel_display
In-Reply-To: <5ddef9ce5dd38db49379697fe532802ea34b6a76.camel@coelho.fi>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1733827537.git.jani.nikula@intel.com>
 <682fb4caec2ef524efc6a9f377e16513dd1241c5.1733827537.git.jani.nikula@intel.com>
 <5ddef9ce5dd38db49379697fe532802ea34b6a76.camel@coelho.fi>
Date: Thu, 12 Dec 2024 12:30:54 +0200
Message-ID: <87r06dw5up.fsf@intel.com>
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

On Thu, 12 Dec 2024, Luca Coelho <luca@coelho.fi> wrote:
> On Tue, 2024-12-10 at 12:46 +0200, Jani Nikula wrote:
>> Going forward, struct intel_display is the main device data structure
>> for display. Switch to it internally in DP code.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>
> These huge mechanical changes are impossible to review fully with my
> attention span, but the patch looks sane.  Again, if you used any
> semantic patch to do this, it would be easier to review it instead. ;)

I started off with a *huge* semantic patch which isn't easy to review
either... especially so because it falls short on a bunch of cases and
needs manual tweaking anyway.

I'm not sure what the return on investment is with tweaking the cocci,
because making changes to it ends up being a lot of trial and error. :(

> Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

Thanks,
Jani.

>
> --
> Cheers,
> Luca.

-- 
Jani Nikula, Intel
