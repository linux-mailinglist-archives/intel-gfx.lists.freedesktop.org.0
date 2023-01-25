Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0458767B217
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 12:57:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67E7110E799;
	Wed, 25 Jan 2023 11:57:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B219810E799
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jan 2023 11:57:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674647837; x=1706183837;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=IZ6SAJ6DNisJRPH2rrelrxnrljVsfV+69TJYJDUE18s=;
 b=bfScVF03zJIQlrAMDaabU/9EvwM1i+gJzchgKIwM/pFKIc9D5TKDCw8+
 MyFZwgN6XGWMwFqP2feyauzIs6YSO5iXR3YLARkTNsTZUqonkCqDliyzZ
 TdZHJLsHOiuoHGrKlF75/H1Cp5APufgB2O6E40swGgPyJUXmzwmggWZn7
 UWk74I0yxhyv6UobUfk06BdhG6e5zY8u8Ek/To13gv+659GosZk6Km0IR
 of5sBy8WM0EFaIeBC3PKul9bXZd4m8jC100DA6Yni2v9yZG9h/dL/0Xd0
 SM8zTah8stoGFOffqF53GINo9TnbTlPGonBwgvFLV5zUxMEIcho85MrfS Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="324236443"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="324236443"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 03:57:16 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="612395108"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="612395108"
Received: from ericnguy-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.46.123])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 03:57:14 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
In-Reply-To: <Y8bJTQ4mVUGSvct3@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1673958757.git.jani.nikula@intel.com>
 <Y8bJTQ4mVUGSvct3@intel.com>
Date: Wed, 25 Jan 2023 13:57:12 +0200
Message-ID: <87pmb26d47.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 0/4] drm/i915: GMCH refactoring
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 17 Jan 2023, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Tue, Jan 17, 2023 at 02:33:05PM +0200, Jani Nikula wrote:
>> Let's see if this sticks.
>
> Suddenly all of these 'bridge_dev' makes some sense to me.
>
> I believe we could enjoy the refactor here and add some documentation
> about this... at least the name Graphics Memory Controller Hub name...
>
> I also wonder if we should make this a child device now that it is
> really organized...
>
> But anyway, everything can be a follow up, the current refactor
> is already a very good clean up step, so for the series:
>
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks for the reviews, pushed to drm-intel-next with Ville's IRC ack.

BR,
Jani.

>
>
>> 
>> Jani Nikula (4):
>>   drm/i915: add gmch substruct to struct drm_i915_private
>>   drm/i915/gmch: split out soc/intel_gmch
>>   drm/i915/gmch: mass rename dev_priv to i915
>>   drm/i915/gmch: move VGA set state to GMCH code
>> 
>>  drivers/gpu/drm/i915/Makefile             |   1 +
>>  drivers/gpu/drm/i915/display/intel_vga.c  |  32 +---
>>  drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c |   2 +-
>>  drivers/gpu/drm/i915/i915_driver.c        | 145 +-----------------
>>  drivers/gpu/drm/i915/i915_drv.h           |  10 +-
>>  drivers/gpu/drm/i915/soc/intel_gmch.c     | 171 ++++++++++++++++++++++
>>  drivers/gpu/drm/i915/soc/intel_gmch.h     |  18 +++
>>  7 files changed, 204 insertions(+), 175 deletions(-)
>>  create mode 100644 drivers/gpu/drm/i915/soc/intel_gmch.c
>>  create mode 100644 drivers/gpu/drm/i915/soc/intel_gmch.h
>> 
>> -- 
>> 2.34.1
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
