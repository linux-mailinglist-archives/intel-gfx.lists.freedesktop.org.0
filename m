Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC38192FF2
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 18:55:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A21836E1A5;
	Wed, 25 Mar 2020 17:55:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 428E66E1A5
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 17:55:48 +0000 (UTC)
IronPort-SDR: aoj1yEuAoHMd5mNIOqcJn0bhdZOwe/r8yJJHf4dsUGKZcaMu9MtjjO+jT2edrJ3/RI2K5OXXap
 jIQcDFxfLYYw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2020 10:55:47 -0700
IronPort-SDR: yxAkPpuEQFLC64ZKr0U+/nQFpZIKF3fLdBkjgY97opnwkVk/47C3gVPArbctw4ExKM5eg3P8kM
 yN05nFnKbQxQ==
X-IronPort-AV: E=Sophos;i="5.72,305,1580803200"; d="scan'208";a="393703393"
Received: from yrahamim-mobl.ger.corp.intel.com (HELO localhost)
 ([10.255.194.58])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2020 10:55:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Daniel Vetter <daniel@ffwll.ch>
In-Reply-To: <20200325084300.GQ2363188@phenom.ffwll.local>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1584714939.git.jani.nikula@intel.com>
 <fbc5396e6a512195b38c24b113aeebe23755c716.1584714939.git.jani.nikula@intel.com>
 <20200325084300.GQ2363188@phenom.ffwll.local>
Date: Wed, 25 Mar 2020 19:55:34 +0200
Message-ID: <87tv2ciajt.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 06/13] drm/i915/hdmi: use struct drm_device
 based logging
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
Cc: intel-gfx@lists.freedesktop.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 25 Mar 2020, Daniel Vetter <daniel@ffwll.ch> wrote:
> Hm I guess the foo_to_i915 idea doesn't scale, we'd need C++ and add
> ->to_i915 to all of them somehow (but not even sure C++ is that powerful
> with it's abstraction, definitely last time around I looked at it and that
> was 20 years ago :-)

This was pretty much my conclusion as well, and decided not to pursue
it. I did consider documenting the easiest/recommended ways to get at
i915 from various types. TODO...

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
