Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E694141C10A
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 10:53:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A14AA6E195;
	Wed, 29 Sep 2021 08:53:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E487C6E195
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Sep 2021 08:53:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10121"; a="212148776"
X-IronPort-AV: E=Sophos;i="5.85,331,1624345200"; d="scan'208";a="212148776"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 01:53:28 -0700
X-IronPort-AV: E=Sophos;i="5.85,331,1624345200"; d="scan'208";a="554617859"
Received: from pathanas-mobl1.ger.corp.intel.com (HELO [10.252.38.52])
 ([10.252.38.52])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 01:53:26 -0700
To: Matthew Auld <matthew.william.auld@gmail.com>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, stable@vger.kernel.org
References: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
 <20210830121006.2978297-9-maarten.lankhorst@linux.intel.com>
 <CAM0jSHP7GtkRoDV+avUKyOe6SOce0ZO_2Tzg9p8O7KR9nWk_VQ@mail.gmail.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <aec64c55-f44b-8dbb-eb28-de4c732410ae@linux.intel.com>
Date: Wed, 29 Sep 2021 10:53:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <CAM0jSHP7GtkRoDV+avUKyOe6SOce0ZO_2Tzg9p8O7KR9nWk_VQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 08/19] drm/i915: Fix runtime pm handling in
 i915_gem_shrink
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

Op 29-09-2021 om 10:37 schreef Matthew Auld:
> On Mon, 30 Aug 2021 at 13:10, Maarten Lankhorst
> <maarten.lankhorst@linux.intel.com> wrote:
>> We forgot to call intel_runtime_pm_put on error, fix it!
>>
>> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>> Fixes: cf41a8f1dc1e ("drm/i915: Finally remove obj->mm.lock.")
>> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
>> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
>> Cc: <stable@vger.kernel.org> # v5.13+
> How does the err handling work? gem_shrink is meant to return the
> number of pages reclaimed which is an unsigned long, and yet we are
> also just returning the err here? Fortunately it looks like nothing is
> calling gem_shrinker with an actual ww context, so nothing will hit
> this yet? I think the interface needs to be reworked or something.

We should probably make it signed in the future when used.
It should never hit the LONG_MAX limit, since max value returned would be ULONG_MAX >> PAGE_SHIFT,
assuming the entire address space is filled with evictable buffers.

I've kept the ww lock, in case we want to evict in the future. Without ww context the buffers
are trylocked, with ww we can evict the entire address space as much as possible.
In most cases we only want to evict idle objects, in that case no ww is needed.

Pushed just this patch, thanks for feedback. :)

~Maarten

