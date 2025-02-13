Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16143A34B8D
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 18:19:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BE7610EB49;
	Thu, 13 Feb 2025 17:19:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QqkS/4J8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF10210EB49
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2025 17:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739467159; x=1771003159;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=9jSHN4ul3ZleLnTMDmLIZOfk8OvNXvpRioZv/TPSV6Y=;
 b=QqkS/4J8n5ysXdbooCQUoibIRiv7+6znDjufuE+Y0poa/fxzOu0w7qja
 RbRU5kkk0Esm46pQcSC37aPJ5W1xuUqbggec0fQF0R5GwM7hS6NKc0U8t
 MZZptK/W5iXg8VIS2cs9mwWx2nYuACAWurlkaqXF4yX1biTG9A03SQwww
 XcwTxQBLmhRYeOZsta/vYnRYpHmkRam3X7jhU4hBcQ6AdZEbWGAi+JhGp
 aD7sFnAlUGK3nOLVJHZNJcD8/5aVixckyrai93AQTUIdEErFzPd9mHvCp
 GgIKWrlllpLsov9SPX6chDwF7gYk2ar44jRUxl3zUeQi2khc5PCYg5Aj2 g==;
X-CSE-ConnectionGUID: L9HeoPQVSfu/tVhMROiBYA==
X-CSE-MsgGUID: KM4eW9yTQ1e/DpoIoIRO0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="40219581"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="40219581"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 09:19:18 -0800
X-CSE-ConnectionGUID: 9N4MUBhwQU2v0fAwWmpkiQ==
X-CSE-MsgGUID: MYE75GfASb6bCUWppIhORQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="150382550"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.5])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 09:19:16 -0800
Date: Thu, 13 Feb 2025 18:19:12 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Markus Theil <theil.markus@gmail.com>
Cc: linux-kernel@vger.kernel.org, andi.shyti@linux.intel.com,
 intel-gfx@lists.freedesktop.org, netdev@vger.kernel.org,
 Jason@zx2c4.com, tytso@mit.edu
Subject: Re: [PATCH v2 1/3] drm/i915/selftests: use prandom in selftest
Message-ID: <Z64pkN7eU6yHPifn@ashyti-mobl2.lan>
References: <CAHmME9oqvWp_Nd1Gwgyw52qy8wxztMyCpNsjByH=VnRaXqczww@mail.gmail.com>
 <20250211063332.16542-1-theil.markus@gmail.com>
 <20250211063332.16542-2-theil.markus@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250211063332.16542-2-theil.markus@gmail.com>
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

Hi Markus,

On Tue, Feb 11, 2025 at 07:33:30AM +0100, Markus Theil wrote:
> This is part of a prandom cleanup, which removes
> next_pseudo_random32 and replaces it with the standard PRNG.
> 
> Signed-off-by: Markus Theil <theil.markus@gmail.com>

I merged just this patch in drm-intel-gt-next.

Thanks,
Andi
