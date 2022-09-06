Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE895AEB4B
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 15:59:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A687710E690;
	Tue,  6 Sep 2022 13:59:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7870E10E690
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 13:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662472751; x=1694008751;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=dpF03StTBnid/9RB/5hCf3uuiVWEVakeat+daAI64Ws=;
 b=b1tGq2DWTvMUvdWAm7m7fOkQj7vHAGGgqD1Mef2pwwC3rNs70tCfNdIm
 rS2NgL1waOWng5QspbKX1hWJebYCpcSr3Cy7ISrOgo7O3FnKpIFJzNKD3
 i8vPZe61mbTgB4iVyh1yIvrGerl13pHLKh5nu7QGOXJw2PLcRVsaaIdUj
 waOCztqq8aBI0lSfdh7X02xP7quqrhXBCjA555IEMFpxqJhWqHcxB8d4q
 Mprl7STALNj4Sf2jflLQ0QnDQZUo6i9jzABrTF+GZ83iyQDDBp2I88i2+
 HqS3mZ40Cy6wjd1BWcVtDS6VJMiQccnkedB3EtnJbYltUdgCHLZkuJXev w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="297382895"
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="297382895"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 06:59:10 -0700
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="675697485"
Received: from reichelh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.45.69])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 06:59:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <1fe4fe6b-87f6-b8d5-79a4-4f7dff2dc642@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1662390010.git.jani.nikula@intel.com>
 <82a353c5c4b52df2354f9413b547c7619a45d92d.1662390010.git.jani.nikula@intel.com>
 <1fe4fe6b-87f6-b8d5-79a4-4f7dff2dc642@linux.intel.com>
Date: Tue, 06 Sep 2022 16:58:52 +0300
Message-ID: <878rmwa9k3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: split out i915_gem.c
 declarations to i915_gem.h
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

On Mon, 05 Sep 2022, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> On 05/09/2022 16:00, Jani Nikula wrote:
>> +/* FIXME: All of the below belong somewhere else. */
>
> For the series:
>
> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Thanks, pushed to drm-intel-next.

> (((
> I think historically i915_gem.h started as a stash for random bits which 
> felt obviously wrong to put elsewhere, but it should be fine to 
> "upgrade" it to a more important status now that you are working on 
> cleaning things up, especially i915_drv.h.
>
> Where this "somewhere else" place could be is a bit tricky - I suspect 
> there isn't any great urgency to re-home them. If one day splitting 
> i915_gem.c into functional parts comes on the agenda so I guess then. 
> But it's not that huge even so don't think it's top priority.
> )))

Mostly it's a bunch of debug/trace helpers that perhaps shouldn't have
been called GEM_ anything to begin with. i915_debug.h?

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
