Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6686E7E5A
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 17:36:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB7AF10E079;
	Wed, 19 Apr 2023 15:36:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0810710E079
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Apr 2023 15:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681918559; x=1713454559;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=T92j5vwKeoGnfybQs7h7mavXmRSnNFHjg1XdBwrzdn4=;
 b=LLP44AXoVQAiYHv8pUVYVAVRshp0aJ9DinMu5mnBdkIbHED2231LxCOM
 omf9YuTCdfJUS3SHTI3LIdjqfkfZ/vLRiBpyfzZ4Dofvb5wrTdYCvXxE4
 82XXAlOnYPWTHK/+pYhJw9fapR6bexu2YzPgQy05Y0fXahRdl6baIHwzG
 odjhudjgcSvGXFsjSXTdNKitaSXh/SnSY9+XyFL6345AI/QMS9dhElPUT
 rxMdNiLw1VGwhnEwpmiDJMokFsY5lI259D/ZnP6xUHKUEsGbd4YD1JNdW
 YGKis1gjqfepKRCSSAkF0jbkAGmSP6giIvMcGNvMoUQvwpHtZyDQHHudO A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="344230110"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="344230110"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 08:35:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="802951270"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="802951270"
Received: from yedidyal-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.47.37])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 08:35:57 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230418175528.13117-11-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
 <20230418175528.13117-11-ville.syrjala@linux.intel.com>
Date: Wed, 19 Apr 2023 18:35:55 +0300
Message-ID: <87sfcvyjdw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 10/15] drm/i915: Remove dead scaler register
 defines
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

On Tue, 18 Apr 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We have some duplicated scaler register defines that are
> never used. Remove them.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_reg.h | 12 ------------
>  1 file changed, 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 75e1f30adda1..919d999a2345 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4041,18 +4041,6 @@
>  #define PF_VSCALE(pipe)		_MMIO_PIPE(pipe, _PFA_VSCALE, _PFB_VSCALE)
>  #define PF_HSCALE(pipe)		_MMIO_PIPE(pipe, _PFA_HSCALE, _PFB_HSCALE)
>=20=20
> -#define _PSA_CTL		0x68180
> -#define _PSB_CTL		0x68980
> -#define PS_ENABLE		(1 << 31)
> -#define _PSA_WIN_SZ		0x68174
> -#define _PSB_WIN_SZ		0x68974
> -#define _PSA_WIN_POS		0x68170
> -#define _PSB_WIN_POS		0x68970
> -
> -#define PS_CTL(pipe)		_MMIO_PIPE(pipe, _PSA_CTL, _PSB_CTL)
> -#define PS_WIN_SZ(pipe)		_MMIO_PIPE(pipe, _PSA_WIN_SZ, _PSB_WIN_SZ)
> -#define PS_WIN_POS(pipe)	_MMIO_PIPE(pipe, _PSA_WIN_POS, _PSB_WIN_POS)
> -
>  /*
>   * Skylake scalers
>   */

--=20
Jani Nikula, Intel Open Source Graphics Center
