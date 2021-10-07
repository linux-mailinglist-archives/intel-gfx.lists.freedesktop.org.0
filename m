Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69AA74258B1
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 18:59:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B418C89EA6;
	Thu,  7 Oct 2021 16:59:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C29EF89EA6
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 16:59:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="289809035"
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="289809035"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 09:59:28 -0700
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="489086489"
Received: from roliveir-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.41.10])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 09:59:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Animesh
 Manna <animesh.manna@intel.com>
Cc: intel-gfx@lists.freedesktop.org, gwan-gyeong.mun@intel.com,
 mika.kahola@intel.com, manasi.d.navare@intel.com, jose.souza@intel.com
In-Reply-To: <YV8iyeS0eVnnoUAM@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211007155729.27812-1-animesh.manna@intel.com>
 <20211007155729.27812-2-animesh.manna@intel.com> <YV8iyeS0eVnnoUAM@intel.com>
Date: Thu, 07 Oct 2021 19:59:21 +0300
Message-ID: <87tuhsydna.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 1/4] drm/i915/panelreplay: HAS_PR() macro
 added for panel replay
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

On Thu, 07 Oct 2021, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Oct 07, 2021 at 09:27:26PM +0530, Animesh Manna wrote:
>> Platforms having Display 13 and above will support panel
>> replay feature of DP 2.0 monitor. Added a HAS_PR() macro
>> to check for panel replay capability.
>>=20
>> v1: Initial version.
>> v2: DISPLAY_VER macro used instead of has_pr flag. [Jose]
>>=20
>> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_drv.h | 1 +
>>  1 file changed, 1 insertion(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915=
_drv.h
>> index 12256218634f..8db0626337e3 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -1693,6 +1693,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>>  #define HAS_DDI(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ddi)
>>  #define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (INTEL_INFO(dev_priv)->display=
.has_fpga_dbg)
>>  #define HAS_PSR(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_psr)
>> +#define HAS_PR(dev_priv)		 (DISPLAY_VER(dev_priv) >=3D 13)
>
> Public relations?

Yeah, HAS_PANEL_REPLAY() sounds more like it. Also wondering why this
doesn't depend on HAS_DP20() which is what effectively gets done in
patch 2. Sure, it's more restrictive at the moment, but IIUC that's the
dependency.

BR,
Jani.

>
>>  #define HAS_PSR_HW_TRACKING(dev_priv) \
>>  	(INTEL_INFO(dev_priv)->display.has_psr_hw_tracking)
>>  #define HAS_PSR2_SEL_FETCH(dev_priv)	 (GRAPHICS_VER(dev_priv) >=3D 12)
>> --=20
>> 2.29.0

--=20
Jani Nikula, Intel Open Source Graphics Center
