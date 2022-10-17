Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C436008D9
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 10:39:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B32C510ECE5;
	Mon, 17 Oct 2022 08:39:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33D1810ECF1
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Oct 2022 08:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665995961; x=1697531961;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=uoiZlUOykZD9BywQS8wXNJeQY6o145UYMfFjg+AoJFk=;
 b=O3Sij6CIiN9QGIy4nH0JeARN6NRN/6606HEWYSbkSCX61blO8hqCxvca
 SkLQ331S6SRB4KKl3nxWJaWbt1KxkKnRmTUketINs4CKir6Zoh4+Vz/4K
 7DwBzX0AStsFvQVeu2wG6TrUbg4h4s+DKTEScmIXNXXi+SgC4R5Y1rNTy
 yIBrlYVutBYPy79b5QDS0LmCS+7PdjleQf2F7er/8iYfusMPQKktIAkeZ
 fI7nvuR3wpZtDqHz+hElbvgrFovBI0Hkrauzb9sIvWRmWPJ12586d9Z/w
 Ju3N5CTJITpu+Du2okkmm8NHM7GiVbEUnUh7wUFWG7O0gQ7CoNnDsz8ts Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10502"; a="306822549"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="306822549"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 01:39:20 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10502"; a="606047281"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="606047281"
Received: from cgarnier-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.44.27])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 01:39:18 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Hans de Goede <hdegoede@redhat.com>, intel-gfx
 <intel-gfx@lists.freedesktop.org>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>, "Thorsten Leemhuis (regressions address)"
 <regressions@leemhuis.info>
In-Reply-To: <87a65usvgq.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <355dde1c-91e3-13b5-c8e8-75c9b9779b4f@redhat.com>
 <87a65usvgq.fsf@intel.com>
Date: Mon, 17 Oct 2022 11:39:57 +0300
Message-ID: <877d0ysv1e.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] alderlake crashes (random memory corruption?) with
 6.0 i915 / ucode related
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

On Mon, 17 Oct 2022, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Thu, 13 Oct 2022, Hans de Goede <hdegoede@redhat.com> wrote:
>> With 6.0 the following WARN triggers:
>> drivers/gpu/drm/i915/display/intel_bios.c:477:
>>
>>         drm_WARN(&i915->drm, min_size == 0,
>>                  "Block %d min_size is zero\n", section_id);
>
> What's the value of section_id that gets printed?

I'm guessing this is [1] fixed by commit d3a7051841f0 ("drm/i915/bios:
Use hardcoded fp_timing size for generating LFP data pointers") in
v6.1-rc1.

I don't think this is the root cause for your issues, but I wonder if
you could try v6.1-rc1 or drm-tip and see if we've fixed the other stuff
already too?

BR,
Jani.


[1] https://gitlab.freedesktop.org/drm/intel/-/issues/6592

-- 
Jani Nikula, Intel Open Source Graphics Center
