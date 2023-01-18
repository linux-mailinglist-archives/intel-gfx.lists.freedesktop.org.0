Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B45B66717B5
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 10:28:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BD1F10E20B;
	Wed, 18 Jan 2023 09:28:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4BC110E20B
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 09:28:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674034112; x=1705570112;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=W3KUDmVFb9Br+JvR37p2H1+RLExWZkt/aElD131U8Z0=;
 b=IXbjxOgE0gXVW9LVzSX9rf6FqBI+t/eIy5X3ejwDRXAML8gbUGh64mDl
 VXJueJaWjsrTeGTpX6NEZQOazKrzMAXYseDaenpE6UCBrovP87ymITWw9
 vHK9O1UymsEcfrShaWVCjekRlBQu5euAR3aTv2j2oFrQ1snzCY/brWlc7
 adEQ9xSuBjay9qHednxYZ2pEZ6YcOc4kbo71yEJFhyJS8HMZGDz4UKx6U
 qAG1j01QtrIzABXKW+895ERXMNF0mj4RzktPoKcCSx8Idjgr0AvtSkilg
 nnmwCQldjDyJDl8hYk/6LSqCUJkRCF4kFa08i2Jhuxcvl3qqSiClaLQnM Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="312821084"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="312821084"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 01:28:32 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="723013775"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="723013775"
Received: from kozlovdm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.28.132])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 01:28:30 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, ville.syrjala@linux.intel.com
In-Reply-To: <Y8bgndYojVvvfq7P@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230116164644.1752009-1-jani.nikula@intel.com>
 <Y8bgndYojVvvfq7P@intel.com>
Date: Wed, 18 Jan 2023 11:28:28 +0200
Message-ID: <87y1q0chtv.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: add
 intel_display_limits.h for key enums
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
> On Mon, Jan 16, 2023 at 06:46:44PM +0200, Jani Nikula wrote:
>> Move a handful of key enums to a new file intel_display_limits.h. These
>> are the enum types, and the MAX/NUM enumerations within them, that are
>> used in other headers. Otherwise, there's no common theme between them.
>> 
>> Replace intel_display.h include with intel_display_limit.h where
>> relevant, and add the intel_display.h include directly in the .c files
>> where needed.
>> 
>> Since intel_display.h is used almost everywhere in display/, include it
>> from intel_display_types.h to avoid massive changes across the
>> board. There are very few files that would need intel_display_types.h
>> but not intel_display.h so this is neglible, and further cleanup between
>> these headers can be left for the future.
>> 
>> Overall this change drops the direct and indirect dependencies on
>> intel_display.h from about 300 to about 100 compilation units, because
>> we can drop the include from i915_drv.h.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks!

I'd still like to get Ville's ack on this.


BR,
Jani.

>
>> 
>> ---
>> 
>> N.b. intel_display_limits.h is not a great name. I was hoping it was
>> only needed for the MAX/NUM enumerations such as I915_MAX_PIPES but
>> there are a number of headers that use the types for struct members as
>> well. intel_display_enums.h sounds too generic too. Suggestions?
>> ---

-- 
Jani Nikula, Intel Open Source Graphics Center
