Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 016758D09DC
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 20:25:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEC0C10E2C4;
	Mon, 27 May 2024 18:25:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kr6iJYtS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F29E510E2C4
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 18:25:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716834324; x=1748370324;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Qv4mFw43RMgjzQgGPV0YGwl0W/oYstLJiHL7FKUrBmk=;
 b=kr6iJYtSCD23x2A99R2qNVPInps48UbWPq3fsvyspl4M/PJuAx/iGU2x
 evBm0GCGgQJAzy77svVQig3lRzrViGT1z0dWIQ1QKsANlvaRwlmmgm0CY
 fEHrAxmDUbsFMdrRPdCmoi9iAS6/sJGZOxAXrbdckQjpZDO4Df/9ztqhY
 r0IfxObM2iEsBC1HfeSYS5jcYCnnD8K/t78YCISLlysvOL8ts1j5V89Dw
 926na9iAzNVGIJkX913RzLcYxCF0fFKK68/4ixfnPqGs/nCuRH5SdYBGU
 ET0xSAHDuhAPMtgQ/Ne34S1usxnIhyQOfS2YbqGoYDsIvaujg8i3OpGFB w==;
X-CSE-ConnectionGUID: CJbIS4qBRuylkZmieGKZdQ==
X-CSE-MsgGUID: GwwC3um7Si2ZQiT1wagHnw==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="16952023"
X-IronPort-AV: E=Sophos;i="6.08,193,1712646000"; d="scan'208";a="16952023"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 11:25:23 -0700
X-CSE-ConnectionGUID: q0laAZoaRouvHFdwPz4LWg==
X-CSE-MsgGUID: PBQ5lzcrRrq0sCsYebT9Fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,193,1712646000"; d="scan'208";a="34722701"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.200])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 11:25:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/2] drm/i915: move rawclk init to intel_cdclk_init()
In-Reply-To: <874jajm87f.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240408172315.3418692-1-jani.nikula@intel.com>
 <ZhQpO3lJz9TB7c-4@intel.com> <ZhQrvAjDK_H-9Af4@intel.com>
 <874jajm87f.fsf@intel.com>
Date: Mon, 27 May 2024 21:25:18 +0300
Message-ID: <87wmnfkt81.fsf@intel.com>
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

On Mon, 27 May 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> On Mon, 08 Apr 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.c=
om> wrote:
>> On Mon, Apr 08, 2024 at 08:28:27PM +0300, Ville Syrj=C3=A4l=C3=A4 wrote:
>>> On Mon, Apr 08, 2024 at 08:23:14PM +0300, Jani Nikula wrote:
>>> > The rawclk initialization is a bit out of place in
>>> > intel_device_info_runtime_init(). Move it to intel_cdclk_init(), with=
 a
>>> > bit of refactoring on intel_read_rawclk().
>>>=20
>>> rawclk is used outside of display.
>>
>> The correct solution would likely be to extract a=20
>> i9xx_fsb_freq(), and use that to populate both rawclk_freq
>> and fsb_freq (and switch over to fsb_freq in the
>> non-display code).
>
> I circled back to this, and PNV seems to be the problem case for making
> this happen.
>
> pnv_detect_mem_freq() in intel_dram.c and i9xx_hrawclk() in
> intel_cdclk.c interpret the CLKCFG register slightly differently.
>
> I'm presuming PNV only supports a subset of the values covered by
> i9xx_hrawclk(). For IS_MOBILE() they all match, but for !IS_MOBILE()
> there's a different value for 400 MHz FSB.
>
> So how should desktop PNV interpret the register, I wonder? I can't find
> any specs on that anymore.

My guess would be this:

index b78154c82a71..19ca3ed5212a 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3545,7 +3545,7 @@ static int i9xx_hrawclk(struct drm_i915_private *dev_=
priv)
 	 */
 	clkcfg =3D intel_de_read(dev_priv, CLKCFG) & CLKCFG_FSB_MASK;
=20
-	if (IS_MOBILE(dev_priv)) {
+	if (IS_PINEVIEW(dev_priv) || IS_MOBILE(dev_priv)) {
 		switch (clkcfg) {
 		case CLKCFG_FSB_400:
 			return 100000;



--=20
Jani Nikula, Intel
