Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C429EDBCF
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 00:40:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65B8710EC70;
	Wed, 11 Dec 2024 23:40:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JI5gGYDR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BD7510EC70
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2024 23:40:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733960415; x=1765496415;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=dbVojo3hft65yAj+QU7bC9xcdkuxglhIZOO4cUmyAH8=;
 b=JI5gGYDRnzo86+IMvYWT4htPJ/T9iSbQCko6oZGfeIjM4p5mtcw5crt7
 1mp7AW3ZXPDk8ftOzm9tFHw6tC2SkS4gCVFlxuOMLQ4u/xhdTxzSwty7N
 Ei+aPtMefrlc+PYxbkbZhA42pjB8TNjxoaFlkLidTXS6j+8cnDAFWjCUE
 AGm94TsCeSP6Y2v9KxJEmIb2YcI+JSRI5hNr9qBXh0pI7+NVDWYObB62X
 7FtRWuYxrblRYB7rfAXgK9gJJQHJZUYS4WCvwDmoeDAw8SRV8eQfuY+l6
 hV2xhGq1FkMxc5I5ppMupQtFeEazeqUSknf3c15zXBB06Jyf5R3RJjaGK g==;
X-CSE-ConnectionGUID: UkfIQIwpQ5CVg0D5JahylQ==
X-CSE-MsgGUID: rBlKcNh4R6WB28BSlFwciA==
X-IronPort-AV: E=McAfee;i="6700,10204,11283"; a="34088107"
X-IronPort-AV: E=Sophos;i="6.12,226,1728975600"; d="scan'208";a="34088107"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 15:40:15 -0800
X-CSE-ConnectionGUID: GJBjNrayT3KiZRBBE3oAHw==
X-CSE-MsgGUID: BSE/QLJoQW+4fHy9zLLW0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="100545152"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.79])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 15:40:10 -0800
Date: Thu, 12 Dec 2024 00:40:07 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Raag Jadav <raag.jadav@intel.com>
Cc: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, matthew.d.roper@intel.com,
 andi.shyti@linux.intel.com, intel-gfx@lists.freedesktop.org,
 anshuman.gupta@intel.com, badal.nilawar@intel.com, riana.tauro@intel.com
Subject: Re: [PATCH v4 0/4] Implement Wa_14022698537
Message-ID: <Z1oi12-OwzLRGLoX@ashyti-mobl2.lan>
References: <20241211115952.1659287-1-raag.jadav@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241211115952.1659287-1-raag.jadav@intel.com>
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

Hi Raag,

> Raag Jadav (4):
>   drm/intel/pciids: Refactor DG2 PCI IDs into segment ranges
>   drm/i915/dg2: Introduce DG2_D subplatform
>   drm/i915: Introduce intel_cpu_info.c for CPU IDs
>   drm/i915/dg2: Implement Wa_14022698537

merged to drm-intel-next.

Thanks,
Andi
