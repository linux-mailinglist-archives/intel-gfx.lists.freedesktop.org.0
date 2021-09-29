Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA95341BF6D
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 08:59:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50CFB89CB2;
	Wed, 29 Sep 2021 06:59:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D38E89CB2
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Sep 2021 06:59:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10121"; a="288533472"
X-IronPort-AV: E=Sophos;i="5.85,331,1624345200"; d="scan'208";a="288533472"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2021 23:59:23 -0700
X-IronPort-AV: E=Sophos;i="5.85,331,1624345200"; d="scan'208";a="554513972"
Received: from amelillo-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.221.121])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2021 23:59:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@gmail.com>
In-Reply-To: <cover.1632869550.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1632869550.git.jani.nikula@intel.com>
Date: Wed, 29 Sep 2021 09:59:18 +0300
Message-ID: <87bl4bx3y1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 00/24] i915/display: split and constify
 vtable, again
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

On Wed, 29 Sep 2021, Jani Nikula <jani.nikula@intel.com> wrote:
> I must have read the series several times over without spotting the
> issue, but finally figured it out with the help of [1].
>
> Return value and check added to intel_compute_global_watermarks() in
> patch 4, and a couple of patches rebased. Seems so obvious now...
>
> Fingers crossed.
>
> BR,
> Jani.
>
> [1] https://patchwork.freedesktop.org/patch/msgid/20210928223241.22149-1-jani.nikula@intel.com

Yay, finally pushed the lot, thanks for the patches and patience.

The lock debug patch seems like a worthwhile thing to have.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
