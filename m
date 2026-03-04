Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJY8D7APqGk8ngAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 11:55:44 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B69B1FE9A0
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 11:55:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 717DD10E9A9;
	Wed,  4 Mar 2026 10:55:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PXGNDv/v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C649010E9A9;
 Wed,  4 Mar 2026 10:55:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772621740; x=1804157740;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=D2mokMgwiDrPC5HTWpeWeXojhsT9ULqabU9TNVWeJMM=;
 b=PXGNDv/vX8W6fvGMOGBTSgqVGZdCPH8xR4DBTHt0yAwDrRjJtpPaZrH9
 zvKZziVMH/yGNdJJhxP81mJugAbEh5Lcs4zkCcJeceepV/4mbHvLOdNST
 LwMHeBCnXbh2+pYfxR5yAr/Mo6E0oppmH9F2ljtkr3Yh9VmISBAbZlUiP
 oDeblc3FFelw7ZC/x2C1XOBrWpn4cGJgmEc/THHptsMn65YYUiFvonaZk
 BdcOHyflJcPGpFPGiMVKiuhZIKyNQUT5Rs9JIv//utJvx9s4odO+di7uz
 pl09UURVBvdQ6MHwJhkbR4gJgcD8ThZplwT4GUm/vkErkDm/bfSgFee5I w==;
X-CSE-ConnectionGUID: EJ2w2gCPSnmaN3yqkLJofg==
X-CSE-MsgGUID: JzMnXMOzROm+ZE4OMGnh9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="85146017"
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="85146017"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 02:55:39 -0800
X-CSE-ConnectionGUID: C3+BYwgfQ8e2hreBNg8DEg==
X-CSE-MsgGUID: 6K04dB7ATHeFeG7d+jcezA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="241317248"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.84])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 02:55:37 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/4] drm/i915: add VMA to parent interface
In-Reply-To: <aacIH_3FjC7azuC9@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <cover.1772212579.git.jani.nikula@intel.com>
 <036f4b2d20cc1b0a7ab814beb5bb914c53b6eb53.1772212579.git.jani.nikula@intel.com>
 <aacIH_3FjC7azuC9@intel.com>
Date: Wed, 04 Mar 2026 12:55:34 +0200
Message-ID: <99c154bc50a9b5c51f1f7945cf904cc7cbca95e7@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
X-Rspamd-Queue-Id: 9B69B1FE9A0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Action: no action

On Tue, 03 Mar 2026, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Feb 27, 2026 at 07:17:12PM +0200, Jani Nikula wrote:
>> It's unclear what the direction of the VMA abstraction in the parent
>> interface should be, but convert i915_vma_fence_id() to parent interface
>> for starters. This paves the way for making struct i915_vma opaque
>> towards display.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_fbc.c          |  5 ++---
>>  drivers/gpu/drm/i915/display/intel_parent.c       |  9 +++++++++
>>  drivers/gpu/drm/i915/display/intel_parent.h       |  3 +++
>>  drivers/gpu/drm/i915/i915_driver.c                |  1 +
>>  drivers/gpu/drm/i915/i915_vma.c                   | 10 ++++++++++
>>  drivers/gpu/drm/i915/i915_vma.h                   |  7 ++-----
>>  drivers/gpu/drm/xe/compat-i915-headers/i915_vma.h |  2 --
>>  include/drm/intel/display_parent_interface.h      |  7 +++++++
>>  8 files changed, 34 insertions(+), 10 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/=
i915/display/intel_fbc.c
>> index 91de38379282..3e9b3e532499 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>> @@ -45,7 +45,6 @@
>>  #include <drm/drm_fourcc.h>
>>  #include <drm/drm_print.h>
>>=20=20
>> -#include "i915_vma.h"
>>  #include "i9xx_plane_regs.h"
>>  #include "intel_de.h"
>>  #include "intel_display_device.h"
>> @@ -1463,7 +1462,7 @@ static void intel_fbc_update_state(struct intel_at=
omic_state *state,
>>  		    !intel_fbc_has_fences(display));
>>=20=20
>>  	if (plane_state->flags & PLANE_HAS_FENCE)
>> -		fbc_state->fence_id =3D  i915_vma_fence_id(plane_state->ggtt_vma);
>> +		fbc_state->fence_id =3D intel_parent_vma_fence_id(display, plane_stat=
e->ggtt_vma);
>
> Hmm. I think I'd rather just return the fence from the pin stuff
> and track it in the plane state, and then nuke plane_state->flags
> since it'll no longer be needed.

I'm afraid I merged the lot two hours before your message. :/

BR,
Jani.

>
>>  	else
>>  		fbc_state->fence_id =3D -1;
>>=20=20
>> @@ -1490,7 +1489,7 @@ static bool intel_fbc_is_fence_ok(const struct int=
el_plane_state *plane_state)
>>  	 */
>>  	return DISPLAY_VER(display) >=3D 9 ||
>>  		(plane_state->flags & PLANE_HAS_FENCE &&
>> -		 i915_vma_fence_id(plane_state->ggtt_vma) !=3D -1);
>> +		 intel_parent_vma_fence_id(display, plane_state->ggtt_vma) !=3D -1);
>>  }
>>=20=20
>>  static bool intel_fbc_is_cfb_ok(const struct intel_plane_state *plane_s=
tate)
>> diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/d=
rm/i915/display/intel_parent.c
>> index 89f78ca1cd15..0c5962cb2f6d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_parent.c
>> +++ b/drivers/gpu/drm/i915/display/intel_parent.c
>> @@ -317,6 +317,15 @@ void intel_parent_stolen_node_free(struct intel_dis=
play *display, const struct i
>>  	display->parent->stolen->node_free(node);
>>  }
>>=20=20
>> +/* vma */
>> +int intel_parent_vma_fence_id(struct intel_display *display, const stru=
ct i915_vma *vma)
>> +{
>> +	if (!display->parent->vma)
>> +		return -1;
>> +
>> +	return display->parent->vma->fence_id(vma);
>> +}
>> +
>>  /* generic */
>>  void intel_parent_fence_priority_display(struct intel_display *display,=
 struct dma_fence *fence)
>>  {
>> diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/d=
rm/i915/display/intel_parent.h
>> index 2317482ef072..6e7d09133aee 100644
>> --- a/drivers/gpu/drm/i915/display/intel_parent.h
>> +++ b/drivers/gpu/drm/i915/display/intel_parent.h
>> @@ -102,6 +102,9 @@ u64 intel_parent_stolen_node_size(struct intel_displ=
ay *display, const struct in
>>  struct intel_stolen_node *intel_parent_stolen_node_alloc(struct intel_d=
isplay *display);
>>  void intel_parent_stolen_node_free(struct intel_display *display, const=
 struct intel_stolen_node *node);
>>=20=20
>> +/* vma */
>> +int intel_parent_vma_fence_id(struct intel_display *display, const stru=
ct i915_vma *vma);
>> +
>>  /* generic */
>>  bool intel_parent_has_auxccs(struct intel_display *display);
>>  bool intel_parent_has_fenced_regions(struct intel_display *display);
>> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i=
915_driver.c
>> index 5f77e891604d..18f912043f90 100644
>> --- a/drivers/gpu/drm/i915/i915_driver.c
>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>> @@ -775,6 +775,7 @@ static const struct intel_display_parent_interface p=
arent =3D {
>>  	.rpm =3D &i915_display_rpm_interface,
>>  	.rps =3D &i915_display_rps_interface,
>>  	.stolen =3D &i915_display_stolen_interface,
>> +	.vma =3D &i915_display_vma_interface,
>>=20=20
>>  	.fence_priority_display =3D fence_priority_display,
>>  	.has_auxccs =3D has_auxccs,
>> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915=
_vma.c
>> index afc192d9931b..6a3a4d4244dc 100644
>> --- a/drivers/gpu/drm/i915/i915_vma.c
>> +++ b/drivers/gpu/drm/i915/i915_vma.c
>> @@ -27,6 +27,7 @@
>>=20=20
>>  #include <drm/drm_gem.h>
>>  #include <drm/drm_print.h>
>> +#include <drm/intel/display_parent_interface.h>
>>=20=20
>>  #include "display/intel_fb.h"
>>  #include "display/intel_frontbuffer.h"
>> @@ -2332,3 +2333,12 @@ int __init i915_vma_module_init(void)
>>=20=20
>>  	return 0;
>>  }
>> +
>> +static int i915_vma_fence_id(const struct i915_vma *vma)
>> +{
>> +	return vma->fence ? vma->fence->id : -1;
>> +}
>> +
>> +const struct intel_display_vma_interface i915_display_vma_interface =3D=
 {
>> +	.fence_id =3D i915_vma_fence_id,
>> +};
>> diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915=
_vma.h
>> index 8054047840aa..fa2d9b429db6 100644
>> --- a/drivers/gpu/drm/i915/i915_vma.h
>> +++ b/drivers/gpu/drm/i915/i915_vma.h
>> @@ -404,11 +404,6 @@ i915_vma_unpin_fence(struct i915_vma *vma)
>>  		__i915_vma_unpin_fence(vma);
>>  }
>>=20=20
>> -static inline int i915_vma_fence_id(const struct i915_vma *vma)
>> -{
>> -	return vma->fence ? vma->fence->id : -1;
>> -}
>> -
>>  void i915_vma_parked(struct intel_gt *gt);
>>=20=20
>>  static inline bool i915_vma_is_scanout(const struct i915_vma *vma)
>> @@ -481,4 +476,6 @@ int i915_vma_module_init(void);
>>  I915_SELFTEST_DECLARE(int i915_vma_get_pages(struct i915_vma *vma));
>>  I915_SELFTEST_DECLARE(void i915_vma_put_pages(struct i915_vma *vma));
>>=20=20
>> +extern const struct intel_display_vma_interface i915_display_vma_interf=
ace;
>> +
>>  #endif
>> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_vma.h b/drivers=
/gpu/drm/xe/compat-i915-headers/i915_vma.h
>> index c4b5adaaa99a..da1d97b48fee 100644
>> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_vma.h
>> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_vma.h
>> @@ -26,8 +26,6 @@ struct i915_vma {
>>  	struct xe_ggtt_node *node;
>>  };
>>=20=20
>> -#define i915_vma_fence_id(vma) -1
>> -
>>  static inline u32 i915_ggtt_offset(const struct i915_vma *vma)
>>  {
>>  	return xe_ggtt_node_addr(vma->node);
>> diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/=
intel/display_parent_interface.h
>> index b4b0f58ae3ee..d02ab7cc1c92 100644
>> --- a/include/drm/intel/display_parent_interface.h
>> +++ b/include/drm/intel/display_parent_interface.h
>> @@ -149,6 +149,10 @@ struct intel_display_stolen_interface {
>>  	void (*node_free)(const struct intel_stolen_node *node);
>>  };
>>=20=20
>> +struct intel_display_vma_interface {
>> +	int (*fence_id)(const struct i915_vma *vma);
>> +};
>> +
>>  /**
>>   * struct intel_display_parent_interface - services parent driver provi=
des to display
>>   *
>> @@ -198,6 +202,9 @@ struct intel_display_parent_interface {
>>  	/** @stolen: Stolen memory. */
>>  	const struct intel_display_stolen_interface *stolen;
>>=20=20
>> +	/** @vma: VMA interface. Optional. */
>> +	const struct intel_display_vma_interface *vma;
>> +
>>  	/* Generic independent functions */
>>  	struct {
>>  		/** @fence_priority_display: Set display priority. Optional. */
>> --=20
>> 2.47.3

--=20
Jani Nikula, Intel
