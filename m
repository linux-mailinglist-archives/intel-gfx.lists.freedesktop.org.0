Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B43D12E60F
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2020 13:26:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 387A26E0D6;
	Thu,  2 Jan 2020 12:26:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95E696E0D6
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jan 2020 12:26:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jan 2020 04:26:44 -0800
X-IronPort-AV: E=Sophos;i="5.69,386,1571727600"; d="scan'208";a="221363187"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jan 2020 04:26:42 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <157796239857.3681.2122815227159366558@skylake-alporthouse-com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191207170110.2200142-1-chris@chris-wilson.co.uk>
 <87k16atc5m.fsf@intel.com>
 <157796239857.3681.2122815227159366558@skylake-alporthouse-com>
Date: Thu, 02 Jan 2020 14:26:40 +0200
Message-ID: <8736cyt56n.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915: Fix cmdparser drm.debug
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

On Thu, 02 Jan 2020, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> Quoting Jani Nikula (2020-01-02 09:56:05)
>> On Sat, 07 Dec 2019, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>> > The cmdparser rejection debug is not for driver development, but for the
>> > user, for which we use a plain DRM_DEBUG().
>> 
>> ...
>> 
>> > -     DRM_DEBUG_DRIVER("CMD: Abnormal rcs cmd length! 0x%08X\n", cmd_header);
>> > +     DRM_DEBUG("CMD: Abnormal rcs cmd length! 0x%08X\n", cmd_header);
>> 
>> That's not what the documentation says about the difference between
>> DRM_DEBUG and DRM_DEBUG_DRIVER.
>
> The documentation seems to be a misconception.

How so? DRM_DEBUG() translates to DRM_UT_CORE category, which has been
intended for "generic drm code" since the beginning:

4fefcb27050b ("drm: add separate drm debugging levels")
87fdff81cd2d ("DRM: Add the explanation about DRM debug level")

Because there's so much DRM_DEBUG() usage across drivers, I've named the
new drm_device specific logging macros drm_dbg_core() for DRM_UT_CORE
and drm_dbg() for DRM_UT_DRIVER, with the idea that drm_dbg_core() would
be used exclusively for drivers/gpu/drm/drm_*.[ch].

BR,
Jani.



-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
