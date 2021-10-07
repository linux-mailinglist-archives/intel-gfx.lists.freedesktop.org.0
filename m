Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 836FB425186
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 12:53:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FF396E83B;
	Thu,  7 Oct 2021 10:53:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B2A26E83B
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 10:52:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="223618976"
X-IronPort-AV: E=Sophos;i="5.85,354,1624345200"; d="scan'208";a="223618976"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 03:52:47 -0700
X-IronPort-AV: E=Sophos;i="5.85,354,1624345200"; d="scan'208";a="478517537"
Received: from roliveir-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.41.10])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 03:52:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Dave Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
In-Reply-To: <20211007031318.3088987-1-airlied@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211007031318.3088987-1-airlied@gmail.com>
Date: Thu, 07 Oct 2021 13:52:42 +0300
Message-ID: <87ee8xyumd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC PATCH 0/8] drm/i915/display: refactor plane
 config + pin out
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

On Thu, 07 Oct 2021, Dave Airlie <airlied@gmail.com> wrote:
> This is another series in the refactor intel_display.c into more manageable
> places.
>
> This moves the initial plane config and all the fb pin/unpin code out.
>
> It also refactors both a little to make the interfaces cleaner.

I had a few nitpicks I commented on. Overall this looks good to me, but
I'd like Ville's input on the code movement at the high level, are the
split and files sane etc. I can do the detailed review after that.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
