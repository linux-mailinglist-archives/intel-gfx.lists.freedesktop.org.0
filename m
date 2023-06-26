Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BAAD273E64F
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 19:20:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FB7C10E0FD;
	Mon, 26 Jun 2023 17:20:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA32510E0FD
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jun 2023 17:20:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687800045; x=1719336045;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=87audpvoi/C39/WxN4mL+Fh1JHrfz9UjV1x8SI3ZHJ0=;
 b=l2zz6W66S1/vp23r1yyrU/Kmq/I6XihZXhtokwNmDd16i7B450SLGHMk
 7a2qfROSKLMQJ3fP1IGW8a7Z2We74KWCE2AMlhwZI4E7HREBavZVqljVZ
 hYBWuklj32o8iOOZjkIi4kKDmahCAJAjHgUJF5ISil0B5VpzQzWb0KaoK
 b+CDeobhLZmOI0C+oZ7xUVJGdJvyUXkqc/+OqjUJANTBLNQxT/vyUTSJ9
 jZ242+LuMaJuTJcQOeOIpgU6rePyaDN5JEIuI0n14op9152PVNsdkWEA+
 77TOeJiNlplgDnQgfhE/tXR/A2OOn5uVKCe085XsAQrqzggjqPXJsWZqu g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="351112665"
X-IronPort-AV: E=Sophos;i="6.01,160,1684825200"; d="scan'208";a="351112665"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 10:19:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="781523900"
X-IronPort-AV: E=Sophos;i="6.01,160,1684825200"; d="scan'208";a="781523900"
Received: from pdenis-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.62.207])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 10:19:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Luca Coelho <luca@coelho.fi>, intel-gfx@lists.freedesktop.org
In-Reply-To: <b16da6722996675475fbbe7197a19345e8bc8349.camel@coelho.fi>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230621123156.14907-1-jani.nikula@intel.com>
 <b16da6722996675475fbbe7197a19345e8bc8349.camel@coelho.fi>
Date: Mon, 26 Jun 2023 20:18:59 +0300
Message-ID: <87sfaeta4c.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/doc: fix duplicate declaration
 warning
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

On Mon, 26 Jun 2023, Luca Coelho <luca@coelho.fi> wrote:
> On Wed, 2023-06-21 at 15:31 +0300, Jani Nikula wrote:
>> We have duplicate kernel-doc directives for the same struct, leading to:
>> 
>> /home/jani/src/linux/Documentation/gpu/driver-uapi.rst:2279: WARNING: Duplicate C declaration, also defined at rfc/i915_scheduler:3.
>> Declaration is '.. c:struct:: i915_context_engines_parallel_submit'.
>> 
>> Use the Sphinx C domain namespace for the rfc document to fix this.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>
> This looks pretty straightforward.
>
> Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

Thanks, pushed both.

BR,
Jani.


>
>
> --
> Cheers,
> Luca.

-- 
Jani Nikula, Intel Open Source Graphics Center
