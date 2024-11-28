Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 964A59DBAB8
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2024 16:40:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FE2410ECF4;
	Thu, 28 Nov 2024 15:40:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cJkJ88SJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80EF310ECF4
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2024 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732808453; x=1764344453;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ciIAfb3OB8il0vgAKFf+PKj6YbGFf1QVhzxp6NcwJaQ=;
 b=cJkJ88SJP5nZrGulf2Y3JMlGf2Yxp0/VKeNyM6AMHzEC1IoGS+fDMJg2
 rmqG4Sg9OnvuHzZd6PUVjiloUSIq4NovhVU60s2lAseRZcMIqUFE9MUij
 Rjs8cOcG/NGRJCDueFTw+iFEESxXoemWxXM4JWpIQcVUxq+ZTDDzc7+R0
 B719KnpdhMgiSld2MOOv1KeM+fTLa2+KkIc95fb9RsPOrV8dqqzh8HXTJ
 i9RuCczpxRMfLFIC4+gjsYta/W292ShvOjLhii0QcpXhrgjFAj1H3y+ct
 LkhLdKIBaosRPPMsGIX7ZvJjoHY03cghRp2u2JYJZyFYoeYOoPVGlxCda g==;
X-CSE-ConnectionGUID: NPgkYQLaSeaZzSMW5ykgnw==
X-CSE-MsgGUID: AgUff+/ASRSfefVbbWiMOw==
X-IronPort-AV: E=McAfee;i="6700,10204,11270"; a="35909026"
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="35909026"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 07:40:53 -0800
X-CSE-ConnectionGUID: nyoyvqOfTcOkT0niUQVN3w==
X-CSE-MsgGUID: 8AzjMBieSE+CjKmbyWZz5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="92437648"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 28 Nov 2024 07:40:51 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 28 Nov 2024 17:40:50 +0200
Date: Thu, 28 Nov 2024 17:40:50 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Brian Geffon <bgeffon@google.com>,
 Vidya Srinivas <vidya.srinivas@intel.com>
Subject: Re: [PATCH 0/4] drm/i915/dpt: Try to make DPT shrinkable again
Message-ID: <Z0iPApqoGFAoS53j@intel.com>
References: <20241127061117.25622-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241127061117.25622-1-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: comment
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

On Wed, Nov 27, 2024 at 08:11:13AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Try to make DPT objects shrinakble once again. To overcome
> the earlier suspend/resume issues we'll just make sure all
> DPT VMAs are evicted during suspend, and thus resume won't
> care whether the DPT objects got kicked out or not. 
> 
> The proper solution would perhaps be to do the DPT CPU
> mapping on demand in dpt insert_{page,range}() but that
> would require a bunch of extra thought (especially for
> DPTs allocated from stolen).
> 
> Cc: Brian Geffon <bgeffon@google.com>
> Cc: Vidya Srinivas <vidya.srinivas@intel.com>
> 
> Ville Syrjälä (4):
>   drm/i915: Don't reuse commit_work for the cleanup
>   drm/i915: Intruduce display.wq.cleanup
>   drm/i915/dpt: Evict all DPT VMAs on suspend
>   Revert "drm/i915/dpt: Make DPT object unshrinkable"

Series pushed to drm-intel-next. Thanks Brian and Vidya.

> 
>  drivers/gpu/drm/i915/display/intel_display.c  |  6 +++---
>  .../gpu/drm/i915/display/intel_display_core.h |  3 +++
>  .../drm/i915/display/intel_display_driver.c   |  6 ++++++
>  .../drm/i915/display/intel_display_types.h    |  2 ++
>  drivers/gpu/drm/i915/display/intel_dpt.c      |  4 ++--
>  drivers/gpu/drm/i915/gem/i915_gem_object.h    |  4 +---
>  drivers/gpu/drm/i915/gt/intel_ggtt.c          | 19 ++++++++++++++-----
>  drivers/gpu/drm/i915/gt/intel_gtt.h           |  4 ++--
>  8 files changed, 33 insertions(+), 15 deletions(-)
> 
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
