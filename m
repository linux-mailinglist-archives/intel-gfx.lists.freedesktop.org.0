Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 066853F8355
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Aug 2021 09:48:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D5016E53C;
	Thu, 26 Aug 2021 07:48:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 531956E53C
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Aug 2021 07:48:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10087"; a="215844707"
X-IronPort-AV: E=Sophos;i="5.84,352,1620716400"; d="scan'208";a="215844707"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2021 00:48:16 -0700
X-IronPort-AV: E=Sophos;i="5.84,352,1620716400"; d="scan'208";a="537240247"
Received: from jwhogabo-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.249.45.163])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2021 00:48:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lyude Paul <lyude@redhat.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <875yvte89p.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1629888677.git.jani.nikula@intel.com>
 <f6a0203f9871cb91fb8da5a83bc8a608e2bb1607.camel@redhat.com>
 <875yvte89p.fsf@intel.com>
Date: Thu, 26 Aug 2021 10:48:10 +0300
Message-ID: <8735qwejet.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 0/3] drm/i915: better backlight & panel
 abstractions
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

On Wed, 25 Aug 2021, Jani Nikula <jani.nikula@intel.com> wrote:
> On Wed, 25 Aug 2021, Lyude Paul <lyude@redhat.com> wrote:
>> Reviewed-by: Lyude Paul <lyude@redhat.com> (assuming this still applies)
>>
>> As I mentioned on IRC pretty much all of the DPCD backlight helpers already
>> made it upstream. There are some changes I'm working on right now for VESA
>> backlights that use PWM for controlling the brightness level (so we can
>> hopefully fix https://gitlab.freedesktop.org/drm/intel/-/issues/3680 ,
>> otherwise I've gotta do some more poking with the backlight folks from Intel I
>> got in touch with), but I have no problem with rebasing this when the time
>> comes.
>
> Thanks!

And pushed.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
