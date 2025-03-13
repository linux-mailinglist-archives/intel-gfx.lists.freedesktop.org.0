Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D3FA5EE44
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Mar 2025 09:44:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D87010E807;
	Thu, 13 Mar 2025 08:44:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ADZnx8qv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87CE910E806;
 Thu, 13 Mar 2025 08:44:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741855484; x=1773391484;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=gIAYjBKMqce3bFz56tOdZ16sVXU/0jMOrkLzCsqbr24=;
 b=ADZnx8qvHzXbD1e1BEY5wrWnd3Fx7rZwQSuVtULQOyZTd+IGESwqH4kx
 F7GN8HsCju4sJHl0kqSG7HcUnHXGLu1uJ5cXC9YalaBzK0CtCUkbcHahI
 G0R369hESjarUX34f9Df4dXtGiPVa5OBE4EhD5DrZRkEmj4noey//osIc
 EPfKxl2R3hXbj0uDJ1sVfh3hg1Y//WT+Sc+TYpCrvu3TrMBDMnKC1Rp6A
 ZNuwqMnEoLGMjilbM9sKcdGr6xTgfWBPPUgu4gB05hNy8whj16kmkziIE
 /urjpXdI4/+5Me6vP/o+8eYnfcIZxsh6kf8Vvm3kMhShXNwbj2C0LQzW5 Q==;
X-CSE-ConnectionGUID: tZv5wGZRT7KTqOF0muT3ng==
X-CSE-MsgGUID: j9gwvzLJQY+nQgbeQKvAAA==
X-IronPort-AV: E=McAfee;i="6700,10204,11371"; a="42213079"
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="42213079"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 01:44:43 -0700
X-CSE-ConnectionGUID: NVAGG8USRh2or7/a8HgA6Q==
X-CSE-MsgGUID: mAt82+JuRrmkJbeiFjx5sA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="121589459"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.115])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 01:44:41 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>
Cc: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH] drm/i915/display: Maintain alphabetical order for
 HAS_AS_SDP and HAS_CMRR
In-Reply-To: <ktvzkpyjl5mf64bizabtr7cumt7qcm4ipe7vpwnyibwtqfoyxk@tuwfw32wl267>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250311135925.1523852-1-ankit.k.nautiyal@intel.com>
 <87wmcvfnin.fsf@intel.com>
 <174179922572.12216.11347505165808081803@intel.com>
 <cdb8af14-e5fe-4718-991b-1b44fcea5d04@intel.com>
 <ktvzkpyjl5mf64bizabtr7cumt7qcm4ipe7vpwnyibwtqfoyxk@tuwfw32wl267>
Date: Thu, 13 Mar 2025 10:44:37 +0200
Message-ID: <87msdpe2ve.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 12 Mar 2025, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Thu, Mar 13, 2025 at 10:08:30AM +0530, Nautiyal, Ankit K wrote:
>>
>>On 3/12/2025 10:37 PM, Gustavo Sousa wrote:
>>>Quoting Jani Nikula (2025-03-11 15:08:48-03:00)
>>>>On Tue, 11 Mar 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>>>>>Reorder the macros HAS_AS_SDP and HAS_CMRR as per alphabetical order.
>>>>>
>>>>>Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>>>---
>>>>>  drivers/gpu/drm/i915/display/intel_display_device.h | 4 ++--
>>>>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>>>>
>>>>>diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
>>>>>index 717286981687..332647c4ca81 100644
>>>>>--- a/drivers/gpu/drm/i915/display/intel_display_device.h
>>>>>+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>>>>>@@ -142,10 +142,12 @@ struct intel_display_platforms {
>>>>>          func(supports_tv);
>>>>>  #define HAS_4TILE(__display)                ((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)
>>>>>+#define HAS_AS_SDP(__display)                (DISPLAY_VER(__display) >= 13)
>>>>>  #define HAS_ASYNC_FLIPS(__display)        (DISPLAY_VER(__display) >= 5)
>>>>Y comes before _ in asciibetical order.
>>>Maybe that's just me, but I feel that's counter-intuitive in a context
>>>where we use _ to separate words.
>>
>>I do agree. I was assuming that we sort the words separated by '_' as 
>>delimiter.
>>
>>For a given hypothetical list, I thought the ordering will result in 
>>similar items grouped together
>>
>>(please forgive me for making up silly names here)
>>
>>HAS_HD
>>HAS_HD_AUDIO
>>HAS_HD_DISPLAY
>>HAS_HD_SUPPORT
>>HAS_HDMI
>>HAS_HDMI_PCON
>>HAS_HDR
>>
>>But with the `sort` command it will be:
>>
>>HAS_HD
>>HAS_HDMI
>>HAS_HDMI_PCON
>>HAS_HDR
>>HAS_HD_AUDIO
>>HAS_HD_DISPLAY
>>HAS_HD_SUPPORT
>>
>>However, if majority of folks use editor's sort command it becomes 
>>simpler to have the ASCII ordering for everyone.
>
> we would need another command to do "the right thing", for whatever
> definition of "right" we want.  Not sure if it's worth pursuing as the
> sort is also used in other places like includes and build objects in
> the Makefile. Would we change all of them?

This.

Just use what the common tools do as the default, and go with that.


BR,
Jani.

-- 
Jani Nikula, Intel
