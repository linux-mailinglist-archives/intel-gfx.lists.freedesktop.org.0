Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 075B8133E6B
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 10:40:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F5976E1A3;
	Wed,  8 Jan 2020 09:40:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B01176E19C;
 Wed,  8 Jan 2020 09:40:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 01:40:46 -0800
X-IronPort-AV: E=Sophos;i="5.69,409,1571727600"; d="scan'208";a="222891061"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 01:40:43 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Wambui Karuga <wambui.karugax@gmail.com>, airlied@linux.ie, daniel@ffwll.ch,
 rodrigo.vivi@intel.com
In-Reply-To: <157847199686.4725.87481257304852182@jlahtine-desk.ger.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1578409433.git.wambui.karugax@gmail.com>
 <b79ee0f6efbf8358cbb4f2e163fa6b5bb04db794.1578409433.git.wambui.karugax@gmail.com>
 <157847199686.4725.87481257304852182@jlahtine-desk.ger.corp.intel.com>
Date: Wed, 08 Jan 2020 11:40:40 +0200
Message-ID: <8736cqs2uf.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915: convert to using the
 drm_dbg_kms() macro.
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
Cc: intel-gfx@lists.freedesktop.org, seanpaul@chromium.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 08 Jan 2020, Joonas Lahtinen <joonas.lahtinen@linux.intel.com> wrote:
> Quoting Wambui Karuga (2020-01-07 17:13:29)
>> Convert the use of the DRM_DEBUG_KMS() logging macro to the new struct
>> drm_device based drm_dbg_kms() logging macro in i915/intel_pch.c.
>> 
>> Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
>> ---
>>  drivers/gpu/drm/i915/intel_pch.c | 46 +++++++++++++++++---------------
>>  1 file changed, 24 insertions(+), 22 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/intel_pch.c
>> index 43b68b5fc562..4ed60e1f01db 100644
>> --- a/drivers/gpu/drm/i915/intel_pch.c
>> +++ b/drivers/gpu/drm/i915/intel_pch.c
>> @@ -12,90 +12,91 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
>>  {
>>         switch (id) {
>>         case INTEL_PCH_IBX_DEVICE_ID_TYPE:
>> -               DRM_DEBUG_KMS("Found Ibex Peak PCH\n");
>> +               drm_dbg_kms(&dev_priv->drm, "Found Ibex Peak PCH\n");
>
> Did we at some point consider i915_dbg_kms alias? That would just take
> dev_priv (or i915, as it's called in newer code). It would shorten many
> of the statements.
>
> i915_dbg_kms(dev_priv, ...) or i915_dbg_kms(i915, ...)

I'd rather use the common drm logging macros. I thought about adding
i915 specific ones only if the drm device specific logging macros
weren't going to be merged.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
