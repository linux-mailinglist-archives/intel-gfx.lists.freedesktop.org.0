Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 715A0144E63
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 10:13:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6C9C891C1;
	Wed, 22 Jan 2020 09:13:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2F5C891C1
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jan 2020 09:13:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 01:13:32 -0800
X-IronPort-AV: E=Sophos;i="5.70,349,1574150400"; d="scan'208";a="220248871"
Received: from mlblandf-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.252.37.232])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 01:13:30 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Vivi\, Rodrigo" <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
In-Reply-To: <BBD667F4-13F1-48BA-9F3D-BA8A3CA548FC@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200121103020.26494-1-jani.nikula@intel.com>
 <157960810578.23235.12006380676824156361@jlahtine-desk.ger.corp.intel.com>
 <BBD667F4-13F1-48BA-9F3D-BA8A3CA548FC@intel.com>
Date: Wed, 22 Jan 2020 11:14:24 +0200
Message-ID: <87o8uvj1jj.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: drop alpha_support for good in
 favour of force_probe
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
Cc: "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 21 Jan 2020, "Vivi, Rodrigo" <rodrigo.vivi@intel.com> wrote:
>  On Jan 21, 2020, at 4:01 AM, Joonas Lahtinen <joonas.lahtinen@linux.intel.com> wrote:
>
>  Quoting Jani Nikula (2020-01-21 12:30:20)
>
>  It's been a long enough transition period since the DRM_I915_FORCE_PROBE
>  config and i915.force_probe module parameter were introduced in commit
>  7ef5ef5cdead ("drm/i915: add force_probe module parameter to replace
>  alpha_support"). Remove alpha support.
>
>  Cc: Arkadiusz Hiler <arkadiusz.hiler@intel.com>
>  Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>  Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>  Cc: Tomi Sarvela <tomi.p.sarvela@intel.com>
>  Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
>  Reviewed-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>
> Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks for the reviews/acks, pushed to drm-intel-next-queued.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
