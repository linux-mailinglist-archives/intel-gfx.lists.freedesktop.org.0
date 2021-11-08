Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A45449B2A
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Nov 2021 18:55:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D51216E16D;
	Mon,  8 Nov 2021 17:55:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3788A6E16D
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Nov 2021 17:55:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10162"; a="213020329"
X-IronPort-AV: E=Sophos;i="5.87,218,1631602800"; d="scan'208";a="213020329"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2021 09:40:06 -0800
X-IronPort-AV: E=Sophos;i="5.87,218,1631602800"; d="scan'208";a="503124725"
Received: from mschuett-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.33.194])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2021 09:40:03 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Michael Cheng <michael.cheng@outlook.iglb.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211108171922.845020-1-michael.cheng@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211108171922.845020-1-michael.cheng@intel.com>
Date: Mon, 08 Nov 2021 19:40:00 +0200
Message-ID: <87mtme7dhr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 0/1] Introduce new i915 macros for checking
 PTEs
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
Cc: michael.cheng@intel.com, wayne.boyer@intel.com, lucas.demarchi@intel.com,
 siva.mullati@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 08 Nov 2021, Michael Cheng <michael.cheng@outlook.iglb.intel.com> wrote:
> From: Michael Cheng <michael.cheng@intel.com>

Sender is Michael Cheng <michael.cheng@outlook.iglb.intel.com>, please
fix your git config.

BR,
Jani.


>
> This series is to introduce new macros generic to i915 for checking 0 and 1 bits,
> instead on relying on whats defined by the mmu, since it could be different
> or non-exisitent between different platforms.
>
> Michael Cheng (1):
>   drm/i915: Introduce new macros for i915 PTE
>
>  drivers/gpu/drm/i915/gt/gen8_ppgtt.c |  6 +++---
>  drivers/gpu/drm/i915/gt/intel_ggtt.c |  2 +-
>  drivers/gpu/drm/i915/gt/intel_gtt.h  |  3 +++
>  drivers/gpu/drm/i915/gvt/gtt.c       | 12 ++++++------
>  4 files changed, 13 insertions(+), 10 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
