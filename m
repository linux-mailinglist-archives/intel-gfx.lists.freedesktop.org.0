Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9881689FDC9
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Apr 2024 19:09:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D74D110ED42;
	Wed, 10 Apr 2024 17:09:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mNRegu1s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F148510EC93
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Apr 2024 17:09:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712768972; x=1744304972;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=UMxiMct6NU9jjtwNdkleRx+28tBm6wZus/kLEjwMO/A=;
 b=mNRegu1sYbZEALwLolP+YdLy5oL178hjHqjeKNI0AJIGWk9ltfohBm33
 pRGLSJVG4NNzocGQnGH6pzz1wPdrXmUsSX6Q+Df821rO3OVNNM+Mvaz7R
 5r6kqitGHa/RL/skDZHNpZ81n4Zqcz5UHJxfWmdGLIzPOYHaQSAy/yYDO
 cEAsT6n+3iWuNBVAB3fUOF4LBIF7+gv7qUFGeon3HsNgq7ZGd3QerDbPW
 Hs2+JNj07Li9Hw8pKeRtvpNNtCbd/GgkKVD5bpLnRiUkvGTg8Fbbdy2+2
 AlL4fd1Pltks/esiisNEQHqV/wv3655SLaMQYxTzgxVmdiStIdnlFkTM1 g==;
X-CSE-ConnectionGUID: Idu43cxNSuSJ2hRVAzhYHg==
X-CSE-MsgGUID: LL96WeNISMGt2uMvpiSHlw==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="8323157"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; 
   d="scan'208";a="8323157"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 10:09:27 -0700
X-CSE-ConnectionGUID: N6rlnnRiSJ6VRSUKpc/6oA==
X-CSE-MsgGUID: +6MT8ZIXTfK4KVaefgJKxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="21210007"
Received: from oakasatk-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.60.54])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 10:09:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/pps: pass display to PPS register macros
In-Reply-To: <20240410165052.234695-1-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240410165052.234695-1-jani.nikula@intel.com>
Date: Wed, 10 Apr 2024 20:09:19 +0300
Message-ID: <87o7ah6t6o.fsf@intel.com>
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

On Wed, 10 Apr 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> Pass struct intel_display pointer to PPS register macros intead of
> implicitly relying on the dev_priv local variable.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Whoops, accidentally sent the same patch twice, with slightly different
commit messages.

-- 
Jani Nikula, Intel
