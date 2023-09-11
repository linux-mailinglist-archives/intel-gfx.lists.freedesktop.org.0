Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B143E79A68B
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 11:04:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 103EB10E07C;
	Mon, 11 Sep 2023 09:04:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 933C810E07C
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 09:04:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694423071; x=1725959071;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=ZSmBCgMNOGVTdcAsg87pBrn1UJKEIw7qGAFqmpUVygg=;
 b=iKFUBwC+c9Z9O9bqTKX9Lxkx9ZL84LoyayDTeg+LimJ+VfgsttpUjiQ5
 RBoAYd/5NpJqgUR60M5zGAZ17r9pZQIsO/PnClcOIkSv4IKaA0SnT0eq6
 /VBgRlcw+5Cr0E3orrsRXVDXC9icqVu39M8h5qfq9IZyujnyU/lGbARvU
 +FpgPUYbKOsF6M+Ae1jZGUfdnJAEzCr3uvHHVdH2+tg52gjR7bdV98LXp
 ZXaT2g3vjJYqVYNB9+euYhaEqDkoqCIDVK6aUdsd4eY7OOwI/nm/ALHG6
 qXOtOYkK/Xy3/nV0Csl7WGaItV4lGl6H/c3qZa+nTw6LMGLlMppl1PjGe Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="376947327"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="376947327"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 02:04:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="990028222"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="990028222"
Received: from kschuele-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.119])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 02:04:25 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230908230121.GY2706891@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230906234732.3728630-6-matthew.d.roper@intel.com>
 <169415476608.14897.6529883326785951018@emeril.freedesktop.org>
 <20230908230121.GY2706891@mdroper-desk1.amr.corp.intel.com>
Date: Mon, 11 Sep 2023 12:04:20 +0300
Message-ID: <87r0n5f5d7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgU2Vw?=
 =?utf-8?q?arate_display_workarounds_from_clock_gating_=28rev4=29?=
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

On Fri, 08 Sep 2023, Matt Roper <matthew.d.roper@intel.com> wrote:
> None of the problems reported here were caused by this series; applied
> to drm-intel-next.  Thanks Lucas for the review.

I'm late to the party, but thanks for doing this. Good stuff.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
