Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE9E6D9176
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 10:26:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5917C10EB18;
	Thu,  6 Apr 2023 08:26:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 702FE10EB18
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Apr 2023 08:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680769559; x=1712305559;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=nQo/z61BXPegS0nO2szjKMF1KIrnWqnzvuJOQmP6gk0=;
 b=gI8XQEfMM5uHM6FMgYxtKZpUobg+KU/hLez62539CcECzMPZM7YD9DAz
 vlSys8N7jwFoY+ZtMdraUuONM5iDHMOmxkdNl47adP7Gwes9umOfl5eeA
 QuzjNYrDtWBJowe8rpv7uV7v/iGJaeBxNKPc8vL/FY1CgXSSTtfKAW21Z
 UokkATIPPtv3OgIlEV3xzScIVz/CPLvHGITI1jDU45W4YzNf6QG9Hguo/
 gXXNUASCkb6dO51jys++3einTE/gmKVBuT0Ra0aDk+BrW45h+WzsIKlvk
 fzZo/+LcVG+ZakECHhgI/Nh6za0UdtFjAx6DXrRO8L+5AIjSBz3bd3coJ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="345277094"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="345277094"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 01:25:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="664364973"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="664364973"
Received: from asachkov-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.43.45])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 01:25:56 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Riana Tauro <riana.tauro@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230405071432.3582592-1-riana.tauro@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230405071432.3582592-1-riana.tauro@intel.com>
Date: Thu, 06 Apr 2023 11:25:54 +0300
Message-ID: <87a5zlzab1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v10 0/4] Add hwmon support for dgfx selftests
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

On Wed, 05 Apr 2023, Riana Tauro <riana.tauro@intel.com> wrote:
> Rename librapl library to libpower. Add hwmon support in libpower for
> dgfx.
> Use libpower in selftests.
>
> Rev2 : Update commit message
> Rev3 : Remove redundant code
> Rev4 : Add hwmon per-gt support
> Rev5 : No functional changes.
>        Change author for last patch
> Rev6 : re-order libpower library patch
>        add check for single gt in hwmon function
> Rev7 : Same as Rev 5 with a single gt check
>        in hwmon function
> Rev8 : Skip power comparison in live_rc6_manual for
>        discrete graphics
> Rev9 : Update commit message
> Rev10: No functional changes
>        Fix a spelling

Please do *not* send two revisions 15 minutes apart just to fix a
spelling error.

As a rule of thumb, for each revision, wait for review comments and test
results for at least a day. Usually longer. Don't accumulate a lot of
revisions for no benefit. It just causes extra work and
confusion. Rushing it does not pay off, on the contrary.

Now, you have review comments to v9 sent after v10 was out. You also
have both revisions in CI shards queue waiting to be tested, consuming
resources for no benefit. Based on the review comment there will be
another version; do not send it until you have figured out with the
reviewer what needs to be done and there's been enough time for people
to chime in.

In general, the revision log above shows a lot of new revisions for
non-functional changes. Don't do that until you have green light for the
functional changes, and the non-functional polish on top is just one
final version.


BR,
Jani.


>
> Riana Tauro (3):
>   drm/i915/selftests: Rename librapl library to libpower
>   drm/i915/hwmon: Add helper function to obtain energy values
>   drm/i915/selftests: skip comparison of power for discrete graphics
>
> Tilak Tangudu (1):
>   drm/i915/selftests: Add hwmon support in libpower for dgfx
>
>  drivers/gpu/drm/i915/Makefile             |  2 +-
>  drivers/gpu/drm/i915/gt/selftest_rc6.c    | 22 ++++++++++-----
>  drivers/gpu/drm/i915/gt/selftest_rps.c    | 26 ++++++++---------
>  drivers/gpu/drm/i915/gt/selftest_slpc.c   |  4 +--
>  drivers/gpu/drm/i915/i915_hwmon.c         | 28 +++++++++++++++++++
>  drivers/gpu/drm/i915/i915_hwmon.h         |  3 ++
>  drivers/gpu/drm/i915/selftests/libpower.c | 33 ++++++++++++++++++++++
>  drivers/gpu/drm/i915/selftests/libpower.h | 19 +++++++++++++
>  drivers/gpu/drm/i915/selftests/librapl.c  | 34 -----------------------
>  drivers/gpu/drm/i915/selftests/librapl.h  | 17 ------------
>  10 files changed, 114 insertions(+), 74 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/selftests/libpower.c
>  create mode 100644 drivers/gpu/drm/i915/selftests/libpower.h
>  delete mode 100644 drivers/gpu/drm/i915/selftests/librapl.c
>  delete mode 100644 drivers/gpu/drm/i915/selftests/librapl.h

-- 
Jani Nikula, Intel Open Source Graphics Center
