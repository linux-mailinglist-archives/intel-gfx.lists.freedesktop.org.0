Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B542497F9C
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 13:34:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E72CB10EAE5;
	Mon, 24 Jan 2022 12:34:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B978610E6AF
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jan 2022 12:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643027648; x=1674563648;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=8+sAVSjfhyGllcSQVNgKACWOs/IVvuf7El1Ozc0O4dM=;
 b=e8LZ0NpoGeHeg+gsfLoymDSaz1rRrNmizkC1uhWt6jmmIy2mAAuCOWmZ
 4VRPjSWA20VBLpHWBxOtUs/lzHoLZkj7GN8220aYgFLereITK+9xvymfg
 fB2LUTfNT+G3U+dM6hjS1MFC0V3ABgoARnKbvz0p+j11HVXyLZ8YAG2GV
 sCfRmTl4XUd1DqKsQtSX1oQDSUmUVBxC+gSAskzqaA2Bj6Bfe8sI9jGsu
 vgdwi3d1eE3yrVXwZgAuXUwZ0F3iOHPH4mWeAdUli9dx3EQ7d7+ONgZr9
 aag3tItqM0cRvoNBQmpIaFAewMm7pSGbw0lFBEEQM8mGqcR/Qqrb4nfcQ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10236"; a="244868489"
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="244868489"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 04:34:08 -0800
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="534208306"
Received: from epreiss-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.54.23])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 04:34:06 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <20220122004259.sgd6ewxg6oll7tgi@ldmartin-desk2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220121132957.3778555-1-jani.nikula@intel.com>
 <20220122004259.sgd6ewxg6oll7tgi@ldmartin-desk2>
Date: Mon, 24 Jan 2022 14:33:52 +0200
Message-ID: <87o8412tzj.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: nuke local versions of
 WARN_ON/WARN_ON_ONCE
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 21 Jan 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Fri, Jan 21, 2022 at 03:29:57PM +0200, Jani Nikula wrote:
>>In general, we should avoid redefining kernel macros like this. It can
>>get confusing, and what gets used will depend on whether the header is
>>included or not. Moreover, we should prefer drm_WARN_ON() and
>>drm_WARN_ON_ONCE() anyway, which include the stringified error condition
>>in the message.
>>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
>
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Thanks, pushed to drm-intel-next.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
