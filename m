Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A01B29E8F2F
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2024 10:50:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CF9D10E69F;
	Mon,  9 Dec 2024 09:50:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hbmcSvh0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 629EE10E69E;
 Mon,  9 Dec 2024 09:50:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733737810; x=1765273810;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=SE2gqz4eXWuZdiCCj3MBTgNpJ0EGMXIWTf0LYfUv5E0=;
 b=hbmcSvh0xwdUqEDbESmJfDVgWb2+vcEsW6jBtczBlA/sA9V64rhEJdd7
 lI6UMAlVTnzoNGRl7oDgixq77iAXxM1Is4Ppllm3qLXd2AshkHdCmu+5W
 aowDs9/81SRiHZ36vf9VSzVIOG5ZjEot6PIXdVrr6wdftFD3udutHxyEj
 FV4QXaJRyZKZw2OJU6piltu/a96WVI/c09f1MSvKOBUreNCM2SNYZtP/p
 hixu1+a2L1eUwb4b4+AJp8LMGCwgLosFH9q489EWkuZz/NRLGEcT/ykM6
 1mvxjHnfLUqNXPTbOEt3QK2VuS6n7jQfGZT27R1l4y49klE35RBpD7jXP A==;
X-CSE-ConnectionGUID: OLsYycdSTliuGJrKD64iUA==
X-CSE-MsgGUID: m2df+ehuSiC2mT+v6ZK/Kw==
X-IronPort-AV: E=McAfee;i="6700,10204,11280"; a="34259575"
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="34259575"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 01:50:10 -0800
X-CSE-ConnectionGUID: touccvR9S/G7Y9OTp/P+Qg==
X-CSE-MsgGUID: IuXIlW8ZQUyEYc4jsT5zOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="94711779"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.194])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 01:50:08 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH] drm/i915/display: convert intel_display_driver.[ch] to
 struct intel_display
In-Reply-To: <173332146931.1598.5367405260871758876@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241204102150.2223455-1-jani.nikula@intel.com>
 <173332146931.1598.5367405260871758876@intel.com>
Date: Mon, 09 Dec 2024 11:50:05 +0200
Message-ID: <877c8918z6.fsf@intel.com>
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

On Wed, 04 Dec 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Jani Nikula (2024-12-04 07:21:50-03:00)
>>Going forward, struct intel_display will be the main display driver
>>structure. Convert the main display entry points to struct
>>intel_display.
>>
>>Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Used b4 shazam followed by git show -W --word-diff and things look sane
> to me. So, also trusting the compiler,
>
> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

Thanks, pushed to din.

> Note: I found some places where the i915 variable could be dropped if we
> replaced &i915->drm with display->drm (calls to logging functions), but
> perhaps that was left for a future iteration.

Right, but all on the caller side, not within intel_display_driver.c. I
didn't want to expand the patch too much as it already touched quite a
lot.

BR,
Jani.


-- 
Jani Nikula, Intel
