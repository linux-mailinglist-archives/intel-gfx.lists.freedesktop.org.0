Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB3C366A86
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Apr 2021 14:12:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 641076E1CF;
	Wed, 21 Apr 2021 12:12:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BBAD6E1CF
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Apr 2021 12:12:55 +0000 (UTC)
IronPort-SDR: dK3bVVdyml+kcOV7IAENo6N93hgfcoNWgqhlnPmA6v4Mpx97oQhJysXIvfCnO4WbbE1S/w0yvR
 IMgJ9Dxbvd5Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9960"; a="195800428"
X-IronPort-AV: E=Sophos;i="5.82,238,1613462400"; d="scan'208";a="195800428"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2021 05:12:52 -0700
IronPort-SDR: HO699T3UFBP2/+7qQyX/SwJUekI2GPF+w6iMNEGRLKXrHcj8jtOM1+FoEjGwWiJIKrPlzsAl73
 BKhfM0+14+/w==
X-IronPort-AV: E=Sophos;i="5.82,238,1613462400"; d="scan'208";a="427491425"
Received: from uchalilx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.36.64])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2021 05:12:50 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
In-Reply-To: <20210421112441.GA3514109@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210414155208.3161335-1-imre.deak@intel.com>
 <87a6pzeqfi.fsf@intel.com> <87tunz99wu.fsf@intel.com>
 <20210421112441.GA3514109@ideak-desk.fi.intel.com>
Date: Wed, 21 Apr 2021 15:12:48 +0300
Message-ID: <87r1j396pr.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 00/11] drm/i915/adl_p: Add support for
 Display Page Tables
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 21 Apr 2021, Imre Deak <imre.deak@intel.com> wrote:
> On Wed, Apr 21, 2021 at 02:03:45PM +0300, Jani Nikula wrote:
>> On Thu, 15 Apr 2021, Jani Nikula <jani.nikula@linux.intel.com> wrote:
>> > On Wed, 14 Apr 2021, Imre Deak <imre.deak@intel.com> wrote:
>> >> Alder Lake-P adds a new Display Page Table hardware structure, mapping
>> >> tiled framebuffer pages to the display engine, reducing the address
>> >> space required in GGTT for these framebuffers.
>> >>
>> >> This patchset adds support for this taking a minimum set of dependency
>> >> patches from the ADL_P enabling patchset at
>> >> https://patchwork.freedesktop.org/series/87897/
>> >
>> > Cc: Daniel
>> >
>> > I guess we'll need a topic branch for the base enabling to merge to both
>> > din and dign? I guess it'll need to include the stuff in
>> > topic/intel-gen-to-ver too.
>> >
>> > Shared stuff like this keeps being a problem with the separate dign
>> > branch, especially when the only way to sync is to merge both din and
>> > dign to drm-next and then backmerge to both.
>> 
>> I've created the topic branch.
>> 
>> When this series starts getting ready to merge, please use the
>> topic/adl-p-enabling branch, so we can merge it to both drm-intel-next
>> and drm-intel-gt-next.
>
> Ok, thanks, I would need a review for 4 (trivial) patches in the
> patchset. Could you explain the reason for a separate branch?

drm-intel-next and drm-intel-gt-next only get synced via merges to
drm-next, and backmerges back to each branch. If adl-p basic enabling
patches (PCI IDs, device info, etc.) only get merged to drm-intel-next,
any gt enabling in drm-intel-gt-next will be pending on the merge +
backmerge, which will be some time after the next merge window. At least
three weeks away. Additionally accumulating merge conflicts.

With the topic branch, we can merge the basics to both right away, and
continue with details in each branch separately.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
