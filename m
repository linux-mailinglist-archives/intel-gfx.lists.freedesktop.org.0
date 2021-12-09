Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6988446F1E0
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 18:28:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C612810E1FD;
	Thu,  9 Dec 2021 17:28:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83FBF10E1FD
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 17:28:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639070920; x=1670606920;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=AUJpA60SmvNYcNvN5LWqZ5BQCkQfksaJd/Onc2+YbGw=;
 b=dzUKe8qyY5xe0fbXw0dutulBvYSDU6iYrLpEGhtnWu+njbkOd6loTtFX
 mwHLVGgzx+hviJJzUAlhm6W1OHFO1I+M27jq0gwOzGskf1UOCwAf6dQes
 Tm0gXxXujsPL5tk7fTB0FRTlXZpFjVdbE/iIcH8Js4WgA2PgiaK9mU3W4
 kOI+z4Auy2qfZT9hqIrpae+lfl/VDtlVU5loCw2rWr9EasiZF0G6nQb7m
 VIgPInsNEjxtLQQtLwhFpVy8uJ6VlF4CdQeefGjs7Cxb2HIzxwFJkXQ0p
 bwl7vi+bVLPAvUvANMBP96/gp1H6dwfLkzPga1D8rIcinihvQeQImMLs0 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="237965877"
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="237965877"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 09:28:39 -0800
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="658827919"
Received: from ayushshr-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.115.39])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 09:28:39 -0800
Date: Thu, 9 Dec 2021 09:28:38 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20211209172838.zonao36tpktxeblj@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <cover.1638961423.git.jani.nikula@intel.com>
 <7862ad764fbd0748d903c76bc632d3d277874e5b.1638961423.git.jani.nikula@intel.com>
 <20211208160321.ihbm6lxz4dijo43l@ldmartin-desk2>
 <87bl1r3vac.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87bl1r3vac.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915/trace: split out display
 trace to a separate file
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

On Wed, Dec 08, 2021 at 06:39:55PM +0200, Jani Nikula wrote:
>On Wed, 08 Dec 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> On Wed, Dec 08, 2021 at 01:05:17PM +0200, Jani Nikula wrote:
>>>Add display/intel_display_trace.[ch] for defining display
>>>tracepoints. The main goal is to reduce cross-includes between gem and
>>>display. It would be possible split up tracing even further, but that
>>>would lead to more boilerplate.
>>>
>>>We end up having to include intel_crtc.h in a few places because it was
>>>pulled in implicitly via intel_de.h -> i915_trace.h -> intel_crtc.h, and
>>>that's no longer the case.
>>>
>>>There should be no changes to tracepoints.
>>>
>>>v3:
>>>- Rebase
>>>
>>>v2:
>>>- Define TRACE_INCLUDE_PATH relative to define_trace.h (Chris)
>>>- Remove useless comments (Ville)
>>>
>>>Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>>Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>
>>
>> only thing I noticed in the code move is that we lost the comments about
>> grouping the tracepoints. Was this intentional? Example:
>
>Yeah, specifically requested by Ville (see v2 changelog above).


ah, ok. Thanks.

Lucas De Marchi
