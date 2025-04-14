Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0FA9A88BB3
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 20:46:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE8FA10E26B;
	Mon, 14 Apr 2025 18:46:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ui5TwQOG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA7EE10E164;
 Mon, 14 Apr 2025 18:46:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744656415; x=1776192415;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=TZYqZ9jkjwVe12KhZFuEG95vPfd+NfZNtVzUiQTF0Qo=;
 b=Ui5TwQOGRF5u4yM71wUcViVyBqVtskwh/KK/6ThJVV8Ny92+vCnvoRbb
 gBd8io0VZo71KcJjFQROUOmEtPSn7rS+96qGgF2O6rjlp708GFD0K77qg
 2VKICKut/GQPplalascmWjEF8cBKMVv5JAeo0TuKdAcIVAYWh6jh9r/y8
 D7jF9PdRe23yB6YY7lXcv5rPpDgbsT2PxwBSODA1hpGpytQhW9j2fCwi9
 p938gl2WJRZ5EIIrVLcHPexy80X4h1oECQ9Iy6bUOkQIh1xTDXdfaYlfE
 R+4xpfm4jB+yQFzzBredF6gE9ONU4A5DIRnH0hWFeiPpui10F2reQC5le w==;
X-CSE-ConnectionGUID: BbdfgwgNTwmOGrmMWpHpHQ==
X-CSE-MsgGUID: vfVrXW7VRA6COQiJ/GJ2SA==
X-IronPort-AV: E=McAfee;i="6700,10204,11403"; a="45374735"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="45374735"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 11:46:54 -0700
X-CSE-ConnectionGUID: A6NpG6cgRPKA0IqQirc6Pw==
X-CSE-MsgGUID: bP8q0Uk7TuKmovyR4kiu6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="134875551"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 11:46:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [CI v3 0/6] drm/i915: error capture cleanups and refactor
In-Reply-To: <cover.1744630147.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1744630147.git.jani.nikula@intel.com>
Date: Mon, 14 Apr 2025 21:46:49 +0300
Message-ID: <8734eatwbq.fsf@intel.com>
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

On Mon, 14 Apr 2025, Jani Nikula <jani.nikula@intel.com> wrote:
> Resend for clean CI.

And pushed to din, thanks for the review.

>
> Jani Nikula (6):
>   drm/i915: use 32-bit access for gen2 irq registers
>   drm/i915: record GEN2_IER in gtier[0] for pre-ilk error capture
>   drm/i915: stop recording IER in error capture
>   drm/i915: use display snapshot mechanism for display irq regs
>   drm/i915: don't capture DERRMR for VLV/CHV
>   drm/i915: use graphics version instead of PCH split in error capture
>
>  .../gpu/drm/i915/display/intel_display_irq.c  | 28 +++++++++++++++
>  .../gpu/drm/i915/display/intel_display_irq.h  |  5 +++
>  .../drm/i915/display/intel_display_snapshot.c |  5 +++
>  drivers/gpu/drm/i915/i915_gpu_error.c         | 35 +++----------------
>  drivers/gpu/drm/i915/i915_gpu_error.h         |  3 --
>  5 files changed, 42 insertions(+), 34 deletions(-)

-- 
Jani Nikula, Intel
