Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D54B1C6A1
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 15:08:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F04810E76B;
	Wed,  6 Aug 2025 13:08:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fByHCWOA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D8F210E76B;
 Wed,  6 Aug 2025 13:08:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754485728; x=1786021728;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=rXjpM9kYoLDMINmsBPpa6wnwZ3LH1siZZiRLb4Ebhfo=;
 b=fByHCWOAjPF0xEsz85uSoXb8cRhsKZ8rOafBS6xIZAcmalKIu1VjMQ48
 q3i7EJND5C/4QeWwciEKadsrTgosTlPhnINL+cCsv1h9uxyitZ/NHnz1A
 gQY96W5J8Y7GJYAuR/8/lCMzSfyIrBav/8uvM5X3fp+6FdCUp+3kVvnW4
 JU/gmtpaecz49r4c2hIDyINKHZHrXpIxSGV1s5rPKYwE2RNOP2CBH1h+r
 GgkUEptXzCYzUoEep5EvdpI2rEJ3yGycrd48pUhGZsrCrPed1yempCNqa
 nQHKGvciVc84X0V9YuOuQMAxa0aXorWYR2jaod0PvRwtGQwJabzeSO5Hy A==;
X-CSE-ConnectionGUID: kV7QfU9MTdmhgSfbp1yTjg==
X-CSE-MsgGUID: 0D6OkG58R6eUuKW+iKx8Mw==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="60641098"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="60641098"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 06:08:47 -0700
X-CSE-ConnectionGUID: DV9PtV6gQ9GMzmtK9LrOmg==
X-CSE-MsgGUID: wDo1ylTAQyCWVDAM543ehQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="165142057"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.70])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 06:08:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Luca Coelho <luca@coelho.fi>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/3] drm/i915/display: hide global state iterators,
 remove unused
In-Reply-To: <2553eb55439720a8f99e5303faff9065807b0140.camel@coelho.fi>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1753953530.git.jani.nikula@intel.com>
 <a23212d9298423d8971d6ad62f961386f7f927cc.1753953530.git.jani.nikula@intel.com>
 <2553eb55439720a8f99e5303faff9065807b0140.camel@coelho.fi>
Date: Wed, 06 Aug 2025 16:08:42 +0300
Message-ID: <8c3b8058756aa52b96e25be33165536d796850a3@intel.com>
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

On Wed, 06 Aug 2025, Luca Coelho <luca@coelho.fi> wrote:
> On Thu, 2025-07-31 at 12:19 +0300, Jani Nikula wrote:
>> for_each_{new,old,oldnew}_global_obj_in_state() are only used within
>> intel_global_state.c, hide them there. intel_for_each_global_obj() is
>> unused, remove it.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>
> Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

Thanks for the reviews, series pushed to din.

BR,
Jani.

>
> --
> Cheers,
> Luca.

-- 
Jani Nikula, Intel
