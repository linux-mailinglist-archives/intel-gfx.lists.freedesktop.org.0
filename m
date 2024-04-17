Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1EFB8A8003
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 11:42:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AB4B11334E;
	Wed, 17 Apr 2024 09:42:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AluKuarA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 076E5113346;
 Wed, 17 Apr 2024 09:42:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713346966; x=1744882966;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=NnLWbdZ17SYrMwjK3Aos7br1qYCNwEzqMTBvxLik8XA=;
 b=AluKuarAr8q3a3W4e+rjeuyu7hvdi6FR9HigEJXH6D2cRXB+jTutN81t
 5EI2EkIBMF0uBtiTMbMbtSpYjqv3jvYjtgJkzm038HyaXq2YJpEUxamj5
 hoCrRguwVBHGVZR1M2ew/++MBcwyKVUxUWPYbdQYHM8lG/MK5Meb+vZu2
 dzyY/uYMHSNgEPwD+thdY7pd6wj1UrP4QSI6uKcpSDy6FkS1ipiJ1OrAv
 LH2SyTkqtbu1DzJKjYqbdkL6FcbcwDcjKRhKDBNnsWM3W0VFmZTjHdtia
 MCC6D5DY2wsXUTzWINgqU+4wZU7oEOsQSLHtneNt2QxrzMPL2gKtkbV8Q w==;
X-CSE-ConnectionGUID: 67VaF+BoS+2v+mGZNGkSUQ==
X-CSE-MsgGUID: EOhc6ElaSbyVxbjbHIzfFQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="12612587"
X-IronPort-AV: E=Sophos;i="6.07,208,1708416000"; d="scan'208";a="12612587"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 02:42:46 -0700
X-CSE-ConnectionGUID: uXQslFStSgK6hgyZ8FUGRQ==
X-CSE-MsgGUID: RcEBwGDxSb+frpRgQ28qXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,208,1708416000"; d="scan'208";a="23168620"
Received: from vpus-mobl1.ger.corp.intel.com (HELO localhost) ([10.252.45.164])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 02:42:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Luca Coelho <luca@coelho.fi>, "Shankar, Uma" <uma.shankar@intel.com>,
 "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v5 1/4] drm/i915/display: add support for DMC wakelocks
In-Reply-To: <2fe5226a281ad1db416d26969e5edf07b60dd349.camel@coelho.fi>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240412094148.808179-1-luciano.coelho@intel.com>
 <20240412094148.808179-2-luciano.coelho@intel.com>
 <DM4PR11MB63600F7F0EE905B24FED01B2F4042@DM4PR11MB6360.namprd11.prod.outlook.com>
 <7c2a11df009a90646d39783c01f722b96717966c.camel@coelho.fi>
 <DM4PR11MB6360FFEA82155778AD9B9778F4092@DM4PR11MB6360.namprd11.prod.outlook.com>
 <2fe5226a281ad1db416d26969e5edf07b60dd349.camel@coelho.fi>
Date: Wed, 17 Apr 2024 12:42:40 +0300
Message-ID: <87v84gxr3j.fsf@intel.com>
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

On Mon, 15 Apr 2024, Luca Coelho <luca@coelho.fi> wrote:
> Thanks a lot for your reviews! Now I just need to get someone to merge
> this series, since I don't have commit rights to the repo yet.

Thanks for the patches and review, merged to drm-intel-next with a
slightly heavy heart because it sets me back with [1] in a pretty
annoying way. Oh well.

BR,
Jani.

[1] https://lore.kernel.org/r/0b48d6bebfe90aa2f901a05be8279ed887d99d7a.1712665176.git.jani.nikula@intel.com


-- 
Jani Nikula, Intel
