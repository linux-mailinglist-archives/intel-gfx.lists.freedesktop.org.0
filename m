Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gB+oEjXnzGk/XwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 11:36:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB4A377C64
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 11:36:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9B3710F059;
	Wed,  1 Apr 2026 09:36:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jmhERhPS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9AFA10F059;
 Wed,  1 Apr 2026 09:36:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775036210; x=1806572210;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=5fWZid7FFcOhN+mcQS1hb2PSkUhDbMDNG/3v20HGiZ8=;
 b=jmhERhPSZ9A3wLu91w4ewx0UbzapzBhA1hVUldGks0mV41/wHadNLHwK
 eiliLQgBFd7Nbv4E4z7LGkcMesCBlGJ2OJK0e2Nku1JxhGcxxQqpwgfu3
 9N94sw7+n0QJ5kXNStRiZgQn6qhjpXVcTFYf+qasTCFgBbcj96Z8k3+ZL
 Lp7L2zqOiD0irxZnWKJfIrX9R7pQkbdGDNK8P6QJwDCPOlscsyDIJWJUN
 RIohwzRNHyZZh7olRloZoD9JM5jvTpUr9DInAapmlza7xzm5enjgLlRQC
 ddUgrRSuYFY6YiZ7Lr5dBPLVfQ54BGzUc6LCbqDgJn4V/TfOuLx7/VAh4 Q==;
X-CSE-ConnectionGUID: VXr9rkGfR7qayk7HYy888Q==
X-CSE-MsgGUID: sd+De3viQKOTTS9bM8bUIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="86684822"
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="86684822"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 02:36:50 -0700
X-CSE-ConnectionGUID: mMdBP1RIT4ilhalIp9YSIA==
X-CSE-MsgGUID: K8FAI4D3Ri2UMTS3Xxi7FA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="231559566"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.152])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 02:36:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/5] drm/{i915, xe}: convert VLV sideband display
 wrappers into real functions
In-Reply-To: <acvMGpZbVVjd6tKO@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <cover.1774957233.git.jani.nikula@intel.com>
 <57740dc3a820cb5fc1cfcd28e4be58b2cb48020d.1774957233.git.jani.nikula@intel.com>
 <acvMGpZbVVjd6tKO@intel.com>
Date: Wed, 01 Apr 2026 12:36:44 +0300
Message-ID: <b2e71477fc6a2f96c2ea48f9359c9601ef8b2c23@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 8FB4A377C64
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 31 Mar 2026, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, Mar 31, 2026 at 02:40:54PM +0300, Jani Nikula wrote:
>> Convert the VLV sideband static inline wrappers into real
>> functions. This will help the follow-up work of moving the VLV sideband
>> to the display parent interface.
>>=20
>> The downside is that we'll have to build vlv_sideband.c as part of xe
>> build, to avoid a plethora of stubs.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>=20
>> ---
>>=20
>> 'git show --color-moved' will help review
>
> If only --color-moved and --word-diff could play nice...

Aye.

> For some other other patches --word-diff alone seemed pretty good
> fortunately.

--word-diff-regex=3D"\w+" or some other tweak also improves it sometimes.

> Series is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed the lot to din.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/vlv_sideband.c | 125 +++++++++++++++
>>  drivers/gpu/drm/i915/display/vlv_sideband.h | 165 ++++----------------
>>  drivers/gpu/drm/xe/Makefile                 |   3 +-
>>  3 files changed, 156 insertions(+), 137 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/vlv_sideband.c b/drivers/gpu/d=
rm/i915/display/vlv_sideband.c
>> index e18045f2b89d..2472e0412728 100644
>> --- a/drivers/gpu/drm/i915/display/vlv_sideband.c
>> +++ b/drivers/gpu/drm/i915/display/vlv_sideband.c
>> @@ -8,6 +8,71 @@
>>  #include "intel_dpio_phy.h"
>>  #include "vlv_sideband.h"
>>=20=20
>> +void vlv_bunit_get(struct drm_device *drm)
>> +{
>> +	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_BUNIT));
>> +}
>> +
>> +u32 vlv_bunit_read(struct drm_device *drm, u32 reg)
>> +{
>> +	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_BUNIT, reg);
>> +}
>> +
>> +void vlv_bunit_write(struct drm_device *drm, u32 reg, u32 val)
>> +{
>> +	vlv_iosf_sb_write(drm, VLV_IOSF_SB_BUNIT, reg, val);
>> +}
>> +
>> +void vlv_bunit_put(struct drm_device *drm)
>> +{
>> +	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_BUNIT));
>> +}
>> +
>> +void vlv_cck_get(struct drm_device *drm)
>> +{
>> +	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_CCK));
>> +}
>> +
>> +u32 vlv_cck_read(struct drm_device *drm, u32 reg)
>> +{
>> +	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_CCK, reg);
>> +}
>> +
>> +void vlv_cck_write(struct drm_device *drm, u32 reg, u32 val)
>> +{
>> +	vlv_iosf_sb_write(drm, VLV_IOSF_SB_CCK, reg, val);
>> +}
>> +
>> +void vlv_cck_put(struct drm_device *drm)
>> +{
>> +	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_CCK));
>> +}
>> +
>> +void vlv_ccu_get(struct drm_device *drm)
>> +{
>> +	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_CCU));
>> +}
>> +
>> +u32 vlv_ccu_read(struct drm_device *drm, u32 reg)
>> +{
>> +	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_CCU, reg);
>> +}
>> +
>> +void vlv_ccu_write(struct drm_device *drm, u32 reg, u32 val)
>> +{
>> +	vlv_iosf_sb_write(drm, VLV_IOSF_SB_CCU, reg, val);
>> +}
>> +
>> +void vlv_ccu_put(struct drm_device *drm)
>> +{
>> +	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_CCU));
>> +}
>> +
>> +void vlv_dpio_get(struct drm_device *drm)
>> +{
>> +	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_DPIO) | BIT(VLV_IOSF_SB_DPIO_2));
>> +}
>> +
>>  static enum vlv_iosf_sb_unit vlv_dpio_phy_to_unit(struct intel_display =
*display,
>>  						  enum dpio_phy phy)
>>  {
>> @@ -48,3 +113,63 @@ void vlv_dpio_write(struct drm_device *drm,
>>=20=20
>>  	vlv_iosf_sb_write(drm, unit, reg, val);
>>  }
>> +
>> +void vlv_dpio_put(struct drm_device *drm)
>> +{
>> +	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_DPIO) | BIT(VLV_IOSF_SB_DPIO_2));
>> +}
>> +
>> +void vlv_flisdsi_get(struct drm_device *drm)
>> +{
>> +	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_FLISDSI));
>> +}
>> +
>> +u32 vlv_flisdsi_read(struct drm_device *drm, u32 reg)
>> +{
>> +	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_FLISDSI, reg);
>> +}
>> +
>> +void vlv_flisdsi_write(struct drm_device *drm, u32 reg, u32 val)
>> +{
>> +	vlv_iosf_sb_write(drm, VLV_IOSF_SB_FLISDSI, reg, val);
>> +}
>> +
>> +void vlv_flisdsi_put(struct drm_device *drm)
>> +{
>> +	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_FLISDSI));
>> +}
>> +
>> +void vlv_nc_get(struct drm_device *drm)
>> +{
>> +	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_NC));
>> +}
>> +
>> +u32 vlv_nc_read(struct drm_device *drm, u8 addr)
>> +{
>> +	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_NC, addr);
>> +}
>> +
>> +void vlv_nc_put(struct drm_device *drm)
>> +{
>> +	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_NC));
>> +}
>> +
>> +void vlv_punit_get(struct drm_device *drm)
>> +{
>> +	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_PUNIT));
>> +}
>> +
>> +u32 vlv_punit_read(struct drm_device *drm, u32 addr)
>> +{
>> +	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_PUNIT, addr);
>> +}
>> +
>> +int vlv_punit_write(struct drm_device *drm, u32 addr, u32 val)
>> +{
>> +	return vlv_iosf_sb_write(drm, VLV_IOSF_SB_PUNIT, addr, val);
>> +}
>> +
>> +void vlv_punit_put(struct drm_device *drm)
>> +{
>> +	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_PUNIT));
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/vlv_sideband.h b/drivers/gpu/d=
rm/i915/display/vlv_sideband.h
>> index 2c240d81fead..065273726379 100644
>> --- a/drivers/gpu/drm/i915/display/vlv_sideband.h
>> +++ b/drivers/gpu/drm/i915/display/vlv_sideband.h
>> @@ -4,7 +4,6 @@
>>  #ifndef _VLV_SIDEBAND_H_
>>  #define _VLV_SIDEBAND_H_
>>=20=20
>> -#include <linux/bitops.h>
>>  #include <linux/types.h>
>>=20=20
>>  #include "vlv_iosf_sb.h"
>> @@ -13,144 +12,38 @@
>>  enum dpio_phy;
>>  struct drm_device;
>>=20=20
>> -static inline void vlv_bunit_get(struct drm_device *drm)
>> -{
>> -	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_BUNIT));
>> -}
>> +void vlv_bunit_get(struct drm_device *drm);
>> +u32 vlv_bunit_read(struct drm_device *drm, u32 reg);
>> +void vlv_bunit_write(struct drm_device *drm, u32 reg, u32 val);
>> +void vlv_bunit_put(struct drm_device *drm);
>>=20=20
>> -static inline u32 vlv_bunit_read(struct drm_device *drm, u32 reg)
>> -{
>> -	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_BUNIT, reg);
>> -}
>> +void vlv_cck_get(struct drm_device *drm);
>> +u32 vlv_cck_read(struct drm_device *drm, u32 reg);
>> +void vlv_cck_write(struct drm_device *drm, u32 reg, u32 val);
>> +void vlv_cck_put(struct drm_device *drm);
>>=20=20
>> -static inline void vlv_bunit_write(struct drm_device *drm, u32 reg, u32=
 val)
>> -{
>> -	vlv_iosf_sb_write(drm, VLV_IOSF_SB_BUNIT, reg, val);
>> -}
>> +void vlv_ccu_get(struct drm_device *drm);
>> +u32 vlv_ccu_read(struct drm_device *drm, u32 reg);
>> +void vlv_ccu_write(struct drm_device *drm, u32 reg, u32 val);
>> +void vlv_ccu_put(struct drm_device *drm);
>>=20=20
>> -static inline void vlv_bunit_put(struct drm_device *drm)
>> -{
>> -	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_BUNIT));
>> -}
>> -
>> -static inline void vlv_cck_get(struct drm_device *drm)
>> -{
>> -	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_CCK));
>> -}
>> -
>> -static inline u32 vlv_cck_read(struct drm_device *drm, u32 reg)
>> -{
>> -	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_CCK, reg);
>> -}
>> -
>> -static inline void vlv_cck_write(struct drm_device *drm, u32 reg, u32 v=
al)
>> -{
>> -	vlv_iosf_sb_write(drm, VLV_IOSF_SB_CCK, reg, val);
>> -}
>> -
>> -static inline void vlv_cck_put(struct drm_device *drm)
>> -{
>> -	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_CCK));
>> -}
>> -
>> -static inline void vlv_ccu_get(struct drm_device *drm)
>> -{
>> -	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_CCU));
>> -}
>> -
>> -static inline u32 vlv_ccu_read(struct drm_device *drm, u32 reg)
>> -{
>> -	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_CCU, reg);
>> -}
>> -
>> -static inline void vlv_ccu_write(struct drm_device *drm, u32 reg, u32 v=
al)
>> -{
>> -	vlv_iosf_sb_write(drm, VLV_IOSF_SB_CCU, reg, val);
>> -}
>> -
>> -static inline void vlv_ccu_put(struct drm_device *drm)
>> -{
>> -	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_CCU));
>> -}
>> -
>> -static inline void vlv_dpio_get(struct drm_device *drm)
>> -{
>> -	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_DPIO) | BIT(VLV_IOSF_SB_DPIO_2));
>> -}
>> -
>> -#ifdef I915
>> +void vlv_dpio_get(struct drm_device *drm);
>>  u32 vlv_dpio_read(struct drm_device *drm, enum dpio_phy phy, int reg);
>> -void vlv_dpio_write(struct drm_device *drm,
>> -		    enum dpio_phy phy, int reg, u32 val);
>> -#else
>> -static inline u32 vlv_dpio_read(struct drm_device *drm, int phy, int re=
g)
>> -{
>> -	return 0;
>> -}
>> -static inline void vlv_dpio_write(struct drm_device *drm,
>> -				  int phy, int reg, u32 val)
>> -{
>> -}
>> -#endif
>> -
>> -static inline void vlv_dpio_put(struct drm_device *drm)
>> -{
>> -	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_DPIO) | BIT(VLV_IOSF_SB_DPIO_2));
>> -}
>> -
>> -static inline void vlv_flisdsi_get(struct drm_device *drm)
>> -{
>> -	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_FLISDSI));
>> -}
>> -
>> -static inline u32 vlv_flisdsi_read(struct drm_device *drm, u32 reg)
>> -{
>> -	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_FLISDSI, reg);
>> -}
>> -
>> -static inline void vlv_flisdsi_write(struct drm_device *drm, u32 reg, u=
32 val)
>> -{
>> -	vlv_iosf_sb_write(drm, VLV_IOSF_SB_FLISDSI, reg, val);
>> -}
>> -
>> -static inline void vlv_flisdsi_put(struct drm_device *drm)
>> -{
>> -	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_FLISDSI));
>> -}
>> -
>> -static inline void vlv_nc_get(struct drm_device *drm)
>> -{
>> -	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_NC));
>> -}
>> -
>> -static inline u32 vlv_nc_read(struct drm_device *drm, u8 addr)
>> -{
>> -	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_NC, addr);
>> -}
>> -
>> -static inline void vlv_nc_put(struct drm_device *drm)
>> -{
>> -	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_NC));
>> -}
>> -
>> -static inline void vlv_punit_get(struct drm_device *drm)
>> -{
>> -	vlv_iosf_sb_get(drm, BIT(VLV_IOSF_SB_PUNIT));
>> -}
>> -
>> -static inline u32 vlv_punit_read(struct drm_device *drm, u32 addr)
>> -{
>> -	return vlv_iosf_sb_read(drm, VLV_IOSF_SB_PUNIT, addr);
>> -}
>> -
>> -static inline int vlv_punit_write(struct drm_device *drm, u32 addr, u32=
 val)
>> -{
>> -	return vlv_iosf_sb_write(drm, VLV_IOSF_SB_PUNIT, addr, val);
>> -}
>> -
>> -static inline void vlv_punit_put(struct drm_device *drm)
>> -{
>> -	vlv_iosf_sb_put(drm, BIT(VLV_IOSF_SB_PUNIT));
>> -}
>> +void vlv_dpio_write(struct drm_device *drm, enum dpio_phy phy, int reg,=
 u32 val);
>> +void vlv_dpio_put(struct drm_device *drm);
>> +
>> +void vlv_flisdsi_get(struct drm_device *drm);
>> +u32 vlv_flisdsi_read(struct drm_device *drm, u32 reg);
>> +void vlv_flisdsi_write(struct drm_device *drm, u32 reg, u32 val);
>> +void vlv_flisdsi_put(struct drm_device *drm);
>> +
>> +void vlv_nc_get(struct drm_device *drm);
>> +u32 vlv_nc_read(struct drm_device *drm, u8 addr);
>> +void vlv_nc_put(struct drm_device *drm);
>> +
>> +void vlv_punit_get(struct drm_device *drm);
>> +u32 vlv_punit_read(struct drm_device *drm, u32 addr);
>> +int vlv_punit_write(struct drm_device *drm, u32 addr, u32 val);
>> +void vlv_punit_put(struct drm_device *drm);
>>=20=20
>>  #endif /* _VLV_SIDEBAND_H_ */
>> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
>> index 9dacb0579a7d..7960c2db33bd 100644
>> --- a/drivers/gpu/drm/xe/Makefile
>> +++ b/drivers/gpu/drm/xe/Makefile
>> @@ -332,7 +332,8 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>>  	i915-display/skl_prefill.o \
>>  	i915-display/skl_scaler.o \
>>  	i915-display/skl_universal_plane.o \
>> -	i915-display/skl_watermark.o
>> +	i915-display/skl_watermark.o \
>> +	i915-display/vlv_sideband.o
>>=20=20
>>  ifeq ($(CONFIG_ACPI),y)
>>  	xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>> --=20
>> 2.47.3

--=20
Jani Nikula, Intel
