Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2898186BD8
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 14:13:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 857446E43D;
	Mon, 16 Mar 2020 13:13:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73AB06E43D
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2020 13:13:47 +0000 (UTC)
IronPort-SDR: 9gz2IgzOZYqKtO6/aJJTrhsBVoJc+1Q+yXuX1sjTKprsTESviCb7ozucawcCiUqaPh5+xVQw3v
 673j24Ma7Xxg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 06:13:46 -0700
IronPort-SDR: 6D593bmKZrTJCZPkUh1afB7qp/P84Py2iXc/mBgKl/q65msXhGRbGm05M/BlglE1/olFAVYuIR
 5WZyecDTe8bw==
X-IronPort-AV: E=Sophos;i="5.70,560,1574150400"; d="scan'208";a="417136584"
Received: from unknown (HELO localhost) ([10.252.54.59])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 06:13:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, "Lankhorst\,
 Maarten" <maarten.lankhorst@intel.com>, Matthew Auld <matthew.auld@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
In-Reply-To: <877e08shcs.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Mon, 16 Mar 2020 15:14:11 +0200
Message-ID: <87mu8gjvbw.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] Fixes that failed to apply to v5.6-rc3
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 27 Feb 2020, Jani Nikula <jani.nikula@intel.com> wrote:
> Hi all -
>
> The following commits have been marked as Cc: stable or fixing something
> in v5.6-rc3 or earlier, but failed to cherry-pick to
> drm-intel-fixes. Please see if they are worth backporting, and please do
> so if they are.

New ones for -rc6:

003d8b9143a6 ("drm/i915/gem: Only call eb_lookup_vma once during execbuf ioctl")
520f8350364d ("drm/i915: properly sanity check batch_start_offset")
07bcfd1291de ("drm/i915/gen12: Disable preemption timeout")
fb899dd8ea9c ("drm/i915: Apply Wa_1406680159:icl,ehl as an engine workaround")

BR,
Jani.

> This one was fine to cherry-pick, but caused problematic (for me!)
> conflicts in drm-tip rebuild:
> 42fb60de3129 ("drm/i915/gem: Don't leak non-persistent requests on changing engines")
>
> BR,
> Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
