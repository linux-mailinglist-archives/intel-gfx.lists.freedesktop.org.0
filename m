Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72165160FCE
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2020 11:19:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30E098905E;
	Mon, 17 Feb 2020 10:19:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EE0F8905E
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Feb 2020 10:19:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Feb 2020 02:19:53 -0800
X-IronPort-AV: E=Sophos;i="5.70,452,1574150400"; d="scan'208";a="223784660"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Feb 2020 02:19:51 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Christian Kujau <lists@nerdbynature.de>, intel-gfx@lists.freedesktop.org
In-Reply-To: <alpine.DEB.2.21.99999.375.2001141825300.21037@trent.utfs.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <alpine.DEB.2.21.99999.375.2001141825300.21037@trent.utfs.org>
Date: Mon, 17 Feb 2020 12:19:48 +0200
Message-ID: <87y2t1v7ln.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm: bugs.freedesktop.org is no longer
 accepting bugs
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 14 Jan 2020, Christian Kujau <lists@nerdbynature.de> wrote:
> Hello,
>
> this should apply cleanly to drm-tip.
>
>
>     drm: bugs.freedesktop.org is no longer accepting bugs.
>     
>     freedesktop.org Bugzilla is no longer in use and new DRM bugs
>     should be reported to https://gitlab.freedesktop.org/drm/intel
>     instead. While we're at it, update some URLs of still-open bugs
>     that have been moved to the new bug tracker.
>     
>      drivers/gpu/drm/i915/Kconfig           | 3 +--
>      drivers/gpu/drm/i915/i915_gpu_error.c  | 2 +-
>      drivers/gpu/drm/i915/i915_utils.c      | 2 +-
>      drivers/gpu/drm/radeon/radeon_device.c | 2 +-
>      4 files changed, 4 insertions(+), 5 deletions(-)
>     
>     Signed-off-by: Christian Kujau <lists@nerdbynature.de>

Thanks for the patch, we've ended up fixing this with commits:

3a6a4f0810c8 ("MAINTAINERS: Update drm/i915 bug filing URL")
ddae4d7af0bb ("drm/i915: Update drm/i915 bug filing URL")

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
