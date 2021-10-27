Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6544F43C5DF
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 10:58:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AC556E846;
	Wed, 27 Oct 2021 08:58:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C1466E832;
 Wed, 27 Oct 2021 08:58:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="316318819"
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="316318819"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 01:58:35 -0700
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="497775836"
Received: from smaharan-mobl.gar.corp.intel.com (HELO localhost)
 ([10.251.214.195])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 01:58:32 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matthew Auld <matthew.william.auld@gmail.com>,
 Matthew Auld <matthew.auld@intel.com>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>, ML
 dri-devel <dri-devel@lists.freedesktop.org>, kernel test robot
 <lkp@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?=
 <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
In-Reply-To: <CAM0jSHNig=n9cw0CCNhWHnLn5hLPYFFQR4D9OgZ-QavgyJGJpg@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211021125332.2455288-1-matthew.auld@intel.com>
 <CAM0jSHNig=n9cw0CCNhWHnLn5hLPYFFQR4D9OgZ-QavgyJGJpg@mail.gmail.com>
Date: Wed, 27 Oct 2021 11:58:28 +0300
Message-ID: <87k0hyj13f.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dmabuf: fix broken build
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

On Wed, 27 Oct 2021, Matthew Auld <matthew.william.auld@gmail.com> wrote:
> On Thu, 21 Oct 2021 at 13:54, Matthew Auld <matthew.auld@intel.com> wrote:
>>
>> wbinvd_on_all_cpus() is only defined on x86 it seems, plus we need to
>> include asm/smp.h here.
>>
>> Reported-by: kernel test robot <lkp@intel.com>
>> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>> Cc: Thomas Hellstr=C3=B6m <thomas.hellstrom@linux.intel.com>
>
> Jani, would it make sense to cherry-pick this to -fixes? The offending
> commit is in drm-next, and there have been a few reports around this.
>
> Fixes: a035154da45d ("drm/i915/dmabuf: add paranoid flush-on-acquire")

If the Fixes: tag is in place, our tooling will cherry-pick it where it
belongs. (In this case, drm-intel-next-fixes, not drm-intel-fixes.)

Cc: Rodrigo who covers drm-intel-next-fixes atm.

BR,
Jani.



>
>
>> ---
>>  drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c | 7 +++++++
>>  1 file changed, 7 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/dr=
m/i915/gem/i915_gem_dmabuf.c
>> index 1adcd8e02d29..a45d0ec2c5b6 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
>> @@ -12,6 +12,13 @@
>>  #include "i915_gem_object.h"
>>  #include "i915_scatterlist.h"
>>
>> +#if defined(CONFIG_X86)
>> +#include <asm/smp.h>
>> +#else
>> +#define wbinvd_on_all_cpus() \
>> +       pr_warn(DRIVER_NAME ": Missing cache flush in %s\n", __func__)
>> +#endif
>> +
>>  I915_SELFTEST_DECLARE(static bool force_different_devices;)
>>
>>  static struct drm_i915_gem_object *dma_buf_to_obj(struct dma_buf *buf)
>> --
>> 2.26.3
>>

--=20
Jani Nikula, Intel Open Source Graphics Center
