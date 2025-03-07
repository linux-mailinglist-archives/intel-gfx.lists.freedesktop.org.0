Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 286DBA563AB
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 10:23:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C265A10EB1B;
	Fri,  7 Mar 2025 09:23:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nU0jbtLp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4227210EB1B;
 Fri,  7 Mar 2025 09:23:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741339396; x=1772875396;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=cXgBHAZhu7Wd3pHJSI5yvpA8Lqf2BAA7U/sU2tIHwzs=;
 b=nU0jbtLpEqM/aVkKfF4doEbIfqU2uvkEe33RDckxLSt7tR/JG1efABVL
 OPpjBvPyjXEAgepKipAfTAjAog8R8yw9cE1714YCouZimNVyEWzF4qOUw
 OCx9uihdIN1izr06rfl9f4mGMAS4k9L5PIE0tz9XM02Jc6IxM9xRq0dOQ
 7hG4mW8jAv22kyFrBC2XwqW8YTIMnZUzHdAizNkU7uUz0rlMbO20E7PIf
 CMK1LxhQnWyk2mVpIBpVjIbhH3xZR4EPxobVP2OvrdjNI28P7eQ9Kw3/f
 lzu4eX7hl+NhYHamWQyB9dYb7N3jabugx9KKQsTg48grtR8iGwdlFmy6h Q==;
X-CSE-ConnectionGUID: pOs7vb4dQKuuu3oaB6blDw==
X-CSE-MsgGUID: 35E5b8aESHqFPHGmPKTu9w==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="53771700"
X-IronPort-AV: E=Sophos;i="6.14,228,1736841600"; d="scan'208";a="53771700"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 01:23:16 -0800
X-CSE-ConnectionGUID: pngkyYqSRWWxzTiYfC990w==
X-CSE-MsgGUID: Vfrc5TX2ReSiBRTcOVrrLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="119798375"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.179])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 01:23:13 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: "Knop, Ryszard" <ryszard.knop@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "rk@dragonic.eu" <rk@dragonic.eu>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>, "daniel@fooishbar.org" <daniel@fooishbar.org>,
 Sima Vetter <sima@ffwll.ch>
Subject: Re: Discussion: Moving away from Patchwork for Intel i915/Xe CI
In-Reply-To: <20250306-guillemot-of-nonstop-honeydew-aed30a@lemur>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <814f9bcb9c7ee22af45bd5278255af247c6664fa.camel@intel.com>
 <871pvbxt40.fsf@intel.com> <20250305-nonchalant-fresh-stoat-61ea0a@lemur>
 <87frjqwidc.fsf@intel.com>
 <20250306-guillemot-of-nonstop-honeydew-aed30a@lemur>
Date: Fri, 07 Mar 2025 11:23:09 +0200
Message-ID: <87bjudi48y.fsf@intel.com>
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

On Thu, 06 Mar 2025, Konstantin Ryabitsev <konstantin@linuxfoundation.org> wrote:
> On Thu, Mar 06, 2025 at 12:42:07PM +0200, Jani Nikula wrote:
>> I haven't had the time to dig into b4 source on this, but it would be
>> great if it could automatically detect whether sending colors is the
>> right thing to do or not. Basically only emit color codes to interactive
>> terminals, unless forced also for pipes.
>
> Yes, it should do that automatically. Please send a bug report to
> tools@kernel.org and I'll work an automated switch to "simple" attestation
> marks when we don't have a terminal.

Done. Link for posterity [1].

BR,
Jani.


[1] https://lore.kernel.org/r/87ecz9i4eo.fsf@intel.com


-- 
Jani Nikula, Intel
