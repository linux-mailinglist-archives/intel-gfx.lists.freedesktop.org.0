Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB31AA6EA9
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 12:01:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E5C610E8EF;
	Fri,  2 May 2025 10:01:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YDtnDJIb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95AD510E8EF
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 May 2025 10:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746180086; x=1777716086;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=z4jL0Vg5XB/i9ICODSp/g3Q+qQzgJiD5TS2mXKuMRuA=;
 b=YDtnDJIbd+G9eImIeeR1lCoJjudn8JpZOeGlwTQ+FlvmmSm7VI1ixBVg
 PqPrn+97xvXLZ4DfBHXQhHtFpxrbqAgat8aaPIqruDUt1WS3IuAz0Hyi8
 kEVzenwOJEyFLVCN95LU6E8gEu/VFHfSnnApGSlM61OfL9ACN00Xp1UmO
 YuYZgFEkYTDqI16rhPnv1IsiC25zyjy7YKbQBruUuMtdiRClkIun0gRle
 Eao2YbCtvoRLXT11z2+wk3uhyUMXCYmLSvGiP7TF4hY+yDtYBz+QVxUc8
 AXJj75FUTcjlD4HP2VSx06eBgP8FDdi8pk30J8v5EEMwGK06aij8qqaxw Q==;
X-CSE-ConnectionGUID: aDmEb0TyTAODlFns3jSO8A==
X-CSE-MsgGUID: z7fv41pgTImWY3E05OLu7Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="35478187"
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="35478187"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 03:01:25 -0700
X-CSE-ConnectionGUID: /nTVyr4fS1GRra2RxiHZPw==
X-CSE-MsgGUID: 6+WPyP4TS0m/9pTKUx98iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="165669260"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.144])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 03:01:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Tvrtko Ursulin <tursulin@ursulin.net>, intel-gfx@lists.freedesktop.org
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Subject: Re: [PATCH] drm/i915/error: drop dmesg suggestion to file bugs on
 GPU hangs
In-Reply-To: <e34c0c3a-f8db-47c1-9763-0e3a1056afb6@ursulin.net>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250429115055.2133143-1-jani.nikula@intel.com>
 <e34c0c3a-f8db-47c1-9763-0e3a1056afb6@ursulin.net>
Date: Fri, 02 May 2025 13:01:20 +0300
Message-ID: <87o6wbwcun.fsf@intel.com>
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

On Fri, 02 May 2025, Tvrtko Ursulin <tursulin@ursulin.net> wrote:
> Acked-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>

Thanks, pushed to din.

BR,
Jani.

-- 
Jani Nikula, Intel
