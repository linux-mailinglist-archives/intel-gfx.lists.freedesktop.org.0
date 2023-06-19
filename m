Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B55734E50
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jun 2023 10:46:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 118B310E1C3;
	Mon, 19 Jun 2023 08:46:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF8F310E1C3
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jun 2023 08:46:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687164381; x=1718700381;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=d6gZw+Zt82hWtD680OOpZ2On9DBOQ2qoa0tPdVGQchA=;
 b=hJwZ6eUZm1jqotZb2mGOwHdmN0tAC0bnBOacxJmCQuaxpQp6zU3TtKU8
 qO2ZyxmDBgmM62fIgKScnmbunfdAg1ZET+cXJwON4JUhWcCsde5CMPDmI
 lppsYnyjfDNTpELu84yKp6sho0BuPPqAYpQ1o0XBHfoF2WWrCaQBCS0EC
 gfJ/Kca11DGK66Hph5aRiZBwAxeCvczCrrplL68C3JaeLuMuxX4a+nnZm
 IBZ0WHK96qkm0Y3t8mVJcZpGZ/dux4Mir+qq2hAw8AvPVxm4wykkDXX6q
 uZCjKRckW/S1BEV+qyQQWhStTFnQF5RTL7nykosYgz6N2qjOEZm03uBw+ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="344328001"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="344328001"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2023 01:46:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="716785671"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="716785671"
Received: from fuhrberg-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.37.35])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2023 01:46:19 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230615095421.3135415-5-dnyaneshwar.bhadane@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230615095421.3135415-1-dnyaneshwar.bhadane@intel.com>
 <20230615095421.3135415-5-dnyaneshwar.bhadane@intel.com>
Date: Mon, 19 Jun 2023 11:46:16 +0300
Message-ID: <87pm5rkffr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 04/11] drm/i915/JSL: s/JSL/JASPERLAKE for
 platform/subplatform defines
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
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 15 Jun 2023, Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com> wrote:
> Follow consistent naming convention. Replace JSL with
> JASPERLAKE.
>
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

> -#define IS_JSL_EHL(i915)	(IS_PLATFORM(i915, INTEL_JASPERLAKE) || \
> +#define IS_JASPERLAKE_EHL(i915)	(IS_PLATFORM(i915, INTEL_JASPERLAKE) || \
>  				IS_PLATFORM(i915, INTEL_ELKHARTLAKE))

The new name for this is just dumb. This matches two platforms, JSL and
EHL, and there's no point in one of them being an acronym and the other
one not.

And IS_JASPERLAKE_ELKHARTLAKE() would be too long.


BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
