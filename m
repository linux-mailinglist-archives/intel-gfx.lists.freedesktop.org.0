Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EDE38CC663
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 20:36:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D89F310E48E;
	Wed, 22 May 2024 18:36:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GyR0DChs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 090C510E48A;
 Wed, 22 May 2024 18:36:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716403006; x=1747939006;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=2rhgh+BR9bBd83IwdIjhqo7oQ+mkjjxUcF4D9vgGo1E=;
 b=GyR0DChsNnkFShFKOmen4h0ODF3V8sgW6tCM5drtG++8EJ1MBELAC9iN
 rMIZHTrrsYEk0/I1Eaapg2XdcFYZ+jeLwvduvdjEbXPiISZjCP6Zumw+i
 EsuB2iel3fFkgqIKPJquzZKdoFe0UHWqy4PnJZFufQEhkSjKmxN3jXJdf
 XM5S4AKJXZa68PzmE+HeYqAvedVQNb2jzMN8hgtIUFCyZlt8WXqneR5ht
 cvCNrkbTgPyGQN576u+m80HdSPiUb+3W66CW7huft6mixS9iB+H5lZKCB
 fh5b9EA2jL/5+vTGL0NbT8/JVs4ytP+0a4Xyls1neR0Arl6j8eGm1mOr7 Q==;
X-CSE-ConnectionGUID: 6quRsU79TjeTD0K9jwL0CA==
X-CSE-MsgGUID: ++LENxvNQzqIbHmSs/sK8Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11080"; a="35190095"
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="35190095"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 11:36:44 -0700
X-CSE-ConnectionGUID: kQPOyKLSTX+MeEW0Ez596A==
X-CSE-MsgGUID: yiGVV04IQsaXQMwCNKVHBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="56625760"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 11:36:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com
Subject: Re: [PATCH 00/10] drm/i915: identify all platforms in display probe
In-Reply-To: <171640168863.10417.28066664900974969@gjsousa-mobl2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1716399081.git.jani.nikula@intel.com>
 <171640168863.10417.28066664900974969@gjsousa-mobl2>
Date: Wed, 22 May 2024 21:36:40 +0300
Message-ID: <87y181pubr.fsf@intel.com>
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

On Wed, 22 May 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Jani Nikula (2024-05-22 14:33:37-03:00)
>>Add independent platform probe in display, in preparation for breaking
>>free from i915 and xe code.
>>
>>Up next would be adding separate IS_<PLATFORM>() style macros to
>>display. Not included here, because I couldn't come up with nice names
>>yet. IS_DISPLAY_<PLATFORM>() is a bit verbose.
>
> Drive-by comment: At least for recent hardware, we can use
> display-specific release names, e.g. IS_XE2LPD() for LNL's display,
> since theoretically that display IP could be reused in a different
> platform.

I think we should prefer the IP version checks over adding names like
xe2lpd which IMO are hard to remember and associate with platforms or IP
versions.

And we'll still need the platform checks for a plethora of old
platforms.


BR,
Jani.


-- 
Jani Nikula, Intel
