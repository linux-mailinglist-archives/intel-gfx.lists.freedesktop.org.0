Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D172220DD2
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 15:16:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A31A76E204;
	Wed, 15 Jul 2020 13:16:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0573A6E204
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 13:16:26 +0000 (UTC)
IronPort-SDR: K+0/456NPJxHxDw1EoO1rSsKf5lpCa83p5fn/7SRB3MT6+hHdgDkck+jva3iuzsx6ZXkDT9p0U
 Ete6kAU2MHxw==
X-IronPort-AV: E=McAfee;i="6000,8403,9682"; a="147144899"
X-IronPort-AV: E=Sophos;i="5.75,355,1589266800"; d="scan'208";a="147144899"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2020 06:16:26 -0700
IronPort-SDR: jcyTE5XUW5myI1GvnXb6SyQzfOwIwP6fMChw77uFOKfwkk7AvcKI3QJcGHEE0ML7rQgJJWp7/R
 Xrp/ixR7ssfQ==
X-IronPort-AV: E=Sophos;i="5.75,355,1589266800"; d="scan'208";a="460081026"
Received: from iferdane-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.55.197])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2020 06:16:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Chris
 Wilson <chris@chris-wilson.co.uk>, "Vivi\, Rodrigo"
 <rodrigo.vivi@intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Wed, 15 Jul 2020 16:16:19 +0300
Message-ID: <87d04w2a1o.fsf@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] Fixes that failed to apply to v5.8-rc5
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


Hi all -

The following commits have been marked as Cc: stable or fixing something
in v5.8-rc5 or earlier, but failed to cherry-pick to
drm-intel-fixes. Please see if they are worth backporting, and please do
so if they are.

Failed to cherry-pick:
e5ec1f954869 ("drm/i915/fbc: Use the correct plane stride")
1d9221e9d395 ("drm/i915: Skip signaling a signaled request")

I've already sent the pull request for -rc6 [1], I presume Joonas will
take over the backports, if any, next week.

BR,
Jani.


[1] http://lore.kernel.org/r/87ft9t0vtt.fsf@intel.com

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
