Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A990808683
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Dec 2023 12:16:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E81E210E877;
	Thu,  7 Dec 2023 11:16:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A61510E877
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Dec 2023 11:16:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701947787; x=1733483787;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=PobdVpxEbJK0YTxp1NXDhxIWz0OgagrJ4vzva4Jogxg=;
 b=CxaeGCoBxFhDo142uO2RGng5jR8fOQuqe0IFOm4uizO3jAskORtQvyi6
 4G9eZggssXVRxOxVOE/M8YgzTLNwXRrKGTZ2CoQILexZxZwkgMLr/EeWC
 zo37aV2n1EGS0Ov48+Vi2zS67dharsdEIEvUdvu8POqsCCOmCRecklzTb
 Ua8vO8mTmK43HofADmmQMmyIelM97zq5tn5UjJKZU8nR/2071r9FyQMpo
 4o5D6U+N/ErUWi0lifxNlswoXWz03tqiCb3iBGT1QirpbhmCTG3jrhUHZ
 9sQUv0L5IiWL1eRhKQ5gWJNE7M2Wn+b0nIaVc8zIex2GjG59a7bMBjIcj g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="384619603"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="384619603"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 03:16:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="944996207"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="944996207"
Received: from mrehana-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.62.169])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 03:16:24 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [Intel-gfx] [PATCH] drm/i915/rpm: add rpm_to_i915() helper
 around container_of()
In-Reply-To: <170186778710.27709.8587555962086417246@gjsousa-mobl2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231205121545.2338665-1-jani.nikula@intel.com>
 <170186778710.27709.8587555962086417246@gjsousa-mobl2>
Date: Thu, 07 Dec 2023 13:16:21 +0200
Message-ID: <87zfymz2ii.fsf@intel.com>
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, Dave Airlie <airlied@redhat.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 06 Dec 2023, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Jani Nikula (2023-12-05 09:15:45-03:00)
>>Reduce the duplication.
>
> By the way, is it too ambitious to dream of a to_i915() using generics?

I'm not fundamentally opposed, but there are a few open questions here.

_Generic() has been slowly cropping up since commit e8c07082a810
("Kbuild: move to -std=gnu11"). Well, maybe even before that in some
cases. But there are only 30 or so users. I'm kind of uneasy about going
"all in" with it in this fashion before there's more general approval
that it's fine. Dave, Sima, thoughts?

The other thing is that with i915 and xe display integration, we're not
sure yet where it'll go. It's possible the display code will cease to
use i915 and switch to some other device struct. See [1] for some draft
ideas. At least for display code, I'd prefer not embarking on this kind
of changes yet so we don't have to churn many times in a row.


BR,
Jani.


[1] https://patchwork.freedesktop.org/series/124286/


-- 
Jani Nikula, Intel
