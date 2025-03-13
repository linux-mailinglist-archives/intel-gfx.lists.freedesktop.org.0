Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF94A5F10C
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Mar 2025 11:40:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4072210E834;
	Thu, 13 Mar 2025 10:40:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WHQib0yd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4835410E82E;
 Thu, 13 Mar 2025 10:40:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741862431; x=1773398431;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=xuBhfvn01b4So4XBTk4GuAxPxxnnAOrXoL279U6Br94=;
 b=WHQib0ydP/lkHf+1+4MCJNXLObMmHM4EWUM9RYGTZCanNEvSXJVDICIN
 9tsrnVo+n5iOx5vvqiq+Pb/fU+yyQU1MeLTkHUXw4gOirVhU/+exyLjl1
 eJGbKoU9myI4RL5HG4ULlCwtCSzH7gUVd55307kc0kkqmSVzrN4qIb7GZ
 GqJl7sHrFh/y+vFnWQIt1Ip45Z09exjhyIIxQGDehShaMgcdhgRHcU86O
 wwJtCVAwyoYKvfbG3dPd1lBlOcS2piS6pyExaOnUvmeK+2E2NO9rxDz94
 ihTc2mbJzREwQSm53+0z/dYu4DYJw2qRuyvApMzeytvmp5VO+p50snTBo g==;
X-CSE-ConnectionGUID: Qrdl+FrASUylLWfrnxU8XA==
X-CSE-MsgGUID: GbgjzKHFRWK8KxuuAxKEgA==
X-IronPort-AV: E=McAfee;i="6700,10204,11371"; a="65429773"
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="65429773"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 03:40:29 -0700
X-CSE-ConnectionGUID: 5+ody089Sqqnke0uiMYUoQ==
X-CSE-MsgGUID: vbOIP8Y9RvKnkKQhnb3W5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="121416415"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.115])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 03:40:27 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Knop, Ryszard" <ryszard.knop@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "rk@dragonic.eu" <rk@dragonic.eu>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>, "daniel@fooishbar.org" <daniel@fooishbar.org>
Subject: Re: Discussion: Moving away from Patchwork for Intel i915/Xe CI
In-Reply-To: <87ecz1dybg.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <814f9bcb9c7ee22af45bd5278255af247c6664fa.camel@intel.com>
 <87ecz1dybg.fsf@intel.com>
Date: Thu, 13 Mar 2025 12:40:23 +0200
Message-ID: <87bju5dxig.fsf@intel.com>
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

On Thu, 13 Mar 2025, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> We currently add Link: tags to commits pointing at patchwork. There's
> already been requests to switch to use Lore links instead, and I think
> we should probably do that.

I created a MR to do just that.

https://gitlab.freedesktop.org/drm/maintainer-tools/-/merge_requests/74

BR,
Jani.


-- 
Jani Nikula, Intel
