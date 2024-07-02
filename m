Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83694923B56
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2024 12:24:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7421E10E5B0;
	Tue,  2 Jul 2024 10:24:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d7OLYcqJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3047F10E5AD;
 Tue,  2 Jul 2024 10:24:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719915896; x=1751451896;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=lh6UVXCjIVhdQKo6hZ9n4Wol/P4cdJSH3WeSAfjx+Sk=;
 b=d7OLYcqJp9lFLvWT/BkwetRLrQlsTR9ePGSOjBDIBCj1OQkiFSl8742g
 +TyHNZeO4K9nme+AgG5/0IiQ84bxL6Ip3duFoufRND5F5Mk/BBiPaNUwS
 XLUOTFIVwS1aoJqqP8KOIsFqLRQl9sGlw9/WeQPFf4jFqMoM06BdwFoEz
 j5b3bqfBeosbNtA/CAvsGkSt6mbU8vmtbluFuRLd8w6GbGkxKey1fNlon
 TspK3jQyHTnaCAKZym+j8a+MbhP79uK54hvg0Skj52bLdeiTttdS/iemh
 hbHqr5BWsigtEtblMYpKcaWSBq5uoIjDR2bCwXICQ8+hLGX/9griyc6v5 Q==;
X-CSE-ConnectionGUID: btcj/VZpSFSUt2iqsb1LBw==
X-CSE-MsgGUID: qWppl19USlqS/nYfo5APMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11120"; a="42509458"
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="42509458"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2024 03:24:56 -0700
X-CSE-ConnectionGUID: zUamIXnIR0WAbaOtYMqT6w==
X-CSE-MsgGUID: M4360qk9R6u3PvCdeoApEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="45928366"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.179])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2024 03:24:53 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>, Matthew Auld
 <matthew.auld@intel.com>, intel-xe@lists.freedesktop.org, Jonathan Cavitt
 <jonathan.cavitt@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/2] drm/i915: disable fbc due to Wa_16023588340
In-Reply-To: <gqpfyt677ovisjdi2fzqqzjwugcvs6hxxqmkbkfckoacwpomn7@ngbrweofy2tu>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240619143127.110045-3-matthew.auld@intel.com>
 <20240619143127.110045-4-matthew.auld@intel.com>
 <Znw5jj7YROnoWD9j@intel.com>
 <70fd9b0e-36a7-4247-914f-ac71c33fca7d@intel.com>
 <ZnxPKAIPax-95pyk@intel.com>
 <20240626174224.GZ2906448@mdroper-desk1.amr.corp.intel.com>
 <thill5bemih77oisv2fcbgote36xbuh6bbzobt2ppvqabb5rp7@xfwvht77tien>
 <Zn8CoGF3QXVuZdc8@intel.com>
 <gqpfyt677ovisjdi2fzqqzjwugcvs6hxxqmkbkfckoacwpomn7@ngbrweofy2tu>
Date: Tue, 02 Jul 2024 13:24:50 +0300
Message-ID: <874j989jm5.fsf@intel.com>
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

On Fri, 28 Jun 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Fri, Jun 28, 2024 at 02:36:16PM GMT, Rodrigo Vivi wrote:
>>Fair enough. Perhaps we could at least define this in i915_drv.h so we implement
>>in the compat headers and avoid the ifdef I915?
>
> yeah, I'm fine with that approach.

Based on Lucas' feedback [1] on v2, looks like we'll need the .c file
anyway. Whether that's then wrapped in intel_display_wa.h with #ifdef
I915, or i915_drv.h, up to you.

Also, for the record,

Acked-by: Jani Nikula <jani.nikula@intel.com>

on merging this via drm-xe-next.

BR,
Jani.


[1] https://lore.kernel.org/r/6hq2htqmbjjhrdad3jbgsesvteqe3g65hpznzsyk6bxj42iowq@my4rit2pa4sm


-- 
Jani Nikula, Intel
