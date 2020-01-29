Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDCFB14C78C
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 09:33:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0463689760;
	Wed, 29 Jan 2020 08:33:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73E3889760;
 Wed, 29 Jan 2020 08:33:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jan 2020 00:32:25 -0800
X-IronPort-AV: E=Sophos;i="5.70,377,1574150400"; d="scan'208";a="222381324"
Received: from mburkard-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.68])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jan 2020 00:32:20 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Wambui Karuga <wambui.karugax@gmail.com>, airlied@linux.ie, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com
In-Reply-To: <158023610727.2129.14756905957829283843@skylake-alporthouse-com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200122125750.9737-1-wambui.karugax@gmail.com>
 <20200122125750.9737-2-wambui.karugax@gmail.com>
 <b97de5b8-b87f-3b2d-e8bc-942fc21b266e@linux.intel.com>
 <87h80fd751.fsf@intel.com>
 <158023610727.2129.14756905957829283843@skylake-alporthouse-com>
Date: Wed, 29 Jan 2020 10:32:23 +0200
Message-ID: <87h80eaciw.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gem: initial conversion to new
 logging macros using coccinelle
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 28 Jan 2020, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> Quoting Jani Nikula (2020-01-28 13:48:10)
>> On Tue, 28 Jan 2020, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
>> >> -DRM_DEBUG(
>> >> +drm_dbg(&T->drm,
>> >
>> > This changes DRM_UT_CORE to DRM_UT_DRIVER so our typical drm.debug=0xe 
>> > becomes much more spammy.
>> 
>> This is what I've instructed Wambui to do in i915. It's my mistake that
>> I haven't requested this to be pointed out in the commit message.
>> 
>> DRM_DEBUG() and DRM_DEBUG_DRIVER() have been conflated over the
>> years. The former is supposed to be for drm core code only, but drivers
>> are littered with it. I'm hoping drivers are less likely to use the new
>> drm_dbg_core() which maps to DRM_DEBUG(). The shorter drm_dbg() is the
>> new DRM_DEBUG_DRIVER().
>> 
>> If you think drm.debug=0xe is too spammy now, the fix is not to abuse
>> DRM_UT_CORE as a spare category
>
> That mistake was made when that category was assigned to user debug like
> ioctls.
>
> Shall I send a revert to remove the spam?

Fine. Please suggest an alternative to DRM_UT_CORE to use here.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
