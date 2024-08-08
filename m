Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A3F794C010
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2024 16:45:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0485A10E747;
	Thu,  8 Aug 2024 14:45:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gOlehXsd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E533E10E747
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2024 14:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723128338; x=1754664338;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=1F25IC4m2+uNAz6ojrWMwTINAb3kK1uD0XL+pUEFE00=;
 b=gOlehXsdnB7ypKRwlUA0c0K0Q0nUjRHI+aRgTujPp7DA14O8Ta8wP6Wl
 aqYBT6tM52tiyoFZS+OOItVv/EXtiqSyA+54/Zm49YRJEYx1EzzHWD3Lj
 Uy9B9QYuTUrZe0CUnT72n2m8NydOdmR4r+oi4RZMHK69lyLj4HIERGRxN
 7S7f2pKBQ+l2LriGkg5+YMgBbo1NTY9GYbFp+En1M3uTp7G8Qu4s5vfkM
 hou9yjJZjgC7/hyYOrbwYwWjesz4/4ftQape+vjlj/+NSwxHsHmnW7wO5
 g/sLEa9y47akHobdP/daulVz7qccy2AnaN5GhE8zYanWwvAEf9HtZesYC A==;
X-CSE-ConnectionGUID: 3mgCYdqlT126BZuJGdYWhQ==
X-CSE-MsgGUID: T4pruOf8RXeZwPnWsxdzaQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11158"; a="32662981"
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="32662981"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 07:45:38 -0700
X-CSE-ConnectionGUID: raOIoz0BTd+DAMRx4+0tkw==
X-CSE-MsgGUID: cRbbTxGjTBeOC2K7Zs6bnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="57330294"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 07:45:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Andi Shyti <andi.shyti@linux.intel.com>
Subject: Re: [PATCH 0/3] drm/i915: remove __i915_printk()
In-Reply-To: <cover.1722951405.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1722951405.git.jani.nikula@intel.com>
Date: Thu, 08 Aug 2024 17:45:32 +0300
Message-ID: <871q2z3wfn.fsf@intel.com>
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

On Tue, 06 Aug 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> I don't think we need the bug reporting request in the few specific
> places that lead to __i915_printk(). With them gone, there's really no
> need for __i915_printk(). Just switch to regular drm logging.

Thanks for the reviews and acks, pushed to din with some of the commit
messages improved.

BR,
Jani.

>
> Jani Nikula (3):
>   drm/i915: remove a few __i915_printk() uses
>   drm/i915: remove i915_report_error()
>   drm/i915: remove __i915_printk()
>
>  drivers/gpu/drm/i915/i915_driver.c |  8 ++---
>  drivers/gpu/drm/i915/i915_utils.c  | 51 +++---------------------------
>  drivers/gpu/drm/i915/i915_utils.h  | 16 ++++------
>  3 files changed, 15 insertions(+), 60 deletions(-)

-- 
Jani Nikula, Intel
