Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A86288C1D8
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 13:15:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9712010E7E2;
	Tue, 26 Mar 2024 12:15:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nkq95f6t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70EC210E7E2
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 12:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711455357; x=1742991357;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=SOOfL3RoyKSFajDL4sP2+Dx/AxU0QnidYSY6nKI92dU=;
 b=nkq95f6tvOIJjrmYRdRdRPWzwEA2LYGCN1eU2ouohTFmQzgIc3qMkIV5
 Dt1M7xBbU22f0J+UrwdLBlWN7ed6aZbDVva9m/GRXLFZC1VtKV9wYx2Tf
 Q41PQU1wl+jRJ0J5IpVG4v0FoQC6vcfCOINIoQG3ty1XZXQxMvgjHXgfb
 H9HKhdkUPmY4yIFiNWRKNOMeL9EbtbXOcGpf16OvelqRBhkdU4z3jRTlj
 Jv1BZIBdVxh8Dmeqmx72OqkVqWn6gJJFgc5eiKjEOZBWQTihXoz7oaT4n
 6p32mId6MZ6nmFQmRbTd7pAo5XfaJX8tTKT3ZpGUzJ0mOLbK4VpxzCtzz w==;
X-CSE-ConnectionGUID: SSetd4anRWqpEH1kiodNsw==
X-CSE-MsgGUID: TVGt/Nh8SfysIbF+D9d2qg==
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="23947173"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="23947173"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 05:15:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="15859309"
Received: from eldobson-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.140])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 05:15:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/2] drm/i915/de: register wait function renames
In-Reply-To: <171140784455.3229.10451794605525894609@gjsousa-mobl2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240320160123.2904609-1-jani.nikula@intel.com>
 <171140784455.3229.10451794605525894609@gjsousa-mobl2>
Date: Tue, 26 Mar 2024 14:15:51 +0200
Message-ID: <87sf0dgpe0.fsf@intel.com>
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

On Mon, 25 Mar 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Jani Nikula (2024-03-20 13:01:22-03:00)
>>Do some renames on the register wait functions for clarity and brevity:
>>
>>intel_de_wait_for_register        -> intel_de_wait
>>intel_de_wait_for_register_fw        -> intel_de_wait_fw
>>__intel_de_wait_for_register        -> intel_de_wait_custom
>>
>>In particular, it seemed odd to have a double-underscored function be
>>called in a number of places.
>>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

Thanks, both pushed to drm-intel-next.

BR,
Jani.

-- 
Jani Nikula, Intel
