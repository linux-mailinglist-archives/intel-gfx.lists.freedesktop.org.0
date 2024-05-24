Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9273F8CE312
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2024 11:12:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B418B10E3DA;
	Fri, 24 May 2024 09:12:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XszrKIdb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DB0810E3DA
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2024 09:12:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716541935; x=1748077935;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Jb4SiVB5+WoZZautUaTT4E13qu+xZZX9hv0P8NogQ54=;
 b=XszrKIdbpG8vhASP9dXD5FB8h+Sk+2uX5RHupFRaxtztJAN3Ov5vYODK
 IziVH7eSfagJAzDy4l07cs3AiZg10qxrMnkvHkZqStpZpGChpFQ5TmAhI
 B6puxjqTnlTbAWi/F4MrubtW/X7rQ+Z3ZpOj02G8pG/dqt2sHLplNm3CO
 piwo/WqywYE1E2QnPS5LhRKWLQx4eE1BKO5hTxbYSrEYugXMmdu0ly4mc
 TvAl83NqmgvOfbXfsE7/QKwNUxCoSI0x0a2JOgFmvgP1/LQPUJQFMuUSD
 19r7wnF240UVHKxe2U1lBBHf8mRxHvZeKP/HthyLtSv7IHNBk73QWAYoF A==;
X-CSE-ConnectionGUID: Rxs9vERRSnmTRrb+d+S9sg==
X-CSE-MsgGUID: Ari2+urBSbSRhIFg9DZV6g==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="16700953"
X-IronPort-AV: E=Sophos;i="6.08,185,1712646000"; d="scan'208";a="16700953"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2024 02:12:15 -0700
X-CSE-ConnectionGUID: YSTFRak+Q+ut1T6MkTWrCQ==
X-CSE-MsgGUID: Rfns3rJMQKOMzhGmMp0rSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,185,1712646000"; d="scan'208";a="34049189"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.108])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2024 02:12:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 16/16] drm/i915: pass dev_priv explicitly to PIPEGCMAX
In-Reply-To: <875xv4psxs.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1716469091.git.jani.nikula@intel.com>
 <5fdc8562fe7b8d26e1ec1bb8f9a221348246bbe1.1716469091.git.jani.nikula@intel.com>
 <Zk9BNS0B7FiVrCw3@intel.com> <875xv4psxs.fsf@intel.com>
Date: Fri, 24 May 2024 12:12:08 +0300
Message-ID: <87a5kfo9p3.fsf@intel.com>
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

On Thu, 23 May 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> On Thu, 23 May 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.c=
om> wrote:
>> On Thu, May 23, 2024 at 03:59:44PM +0300, Jani Nikula wrote:
>>> Avoid the implicit dev_priv local variable use, and pass dev_priv
>>> explicitly to the PIPEGCMAX register macro.
>>>=20
>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/display/intel_color.c      | 13 +++++++------
>>>  drivers/gpu/drm/i915/display/intel_color_regs.h |  6 +++---
>>>  2 files changed, 10 insertions(+), 9 deletions(-)
>>>=20
>>> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/d=
rm/i915/display/intel_color.c
>>> index a83f41ee6834..da56d24eb933 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_color.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_color.c
>>> @@ -1284,9 +1284,10 @@ static void i965_load_lut_10p6(struct intel_crtc=
 *crtc,
>>>  				  i965_lut_10p6_udw(&lut[i]));
>>>  	}
>>>=20=20
>>> -	intel_de_write_fw(dev_priv, PIPEGCMAX(pipe, 0), lut[i].red);
>>> -	intel_de_write_fw(dev_priv, PIPEGCMAX(pipe, 1), lut[i].green);
>>> -	intel_de_write_fw(dev_priv, PIPEGCMAX(pipe, 2), lut[i].blue);
>>> +	intel_de_write_fw(dev_priv, PIPEGCMAX(dev_priv, pipe, 0), lut[i].red);
>>> +	intel_de_write_fw(dev_priv, PIPEGCMAX(dev_priv, pipe, 1),
>>> +			  lut[i].green);
>>
>> nit: the newline breaks the pattern in a somewhat ugly way
>
> It's all cocci's doing... sometimes it's smart, sometimes less so.

Pushed to din, with this small wart fixed while applying.

>
>> Series is
>> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Thanks!
>
>
>>
>>> +	intel_de_write_fw(dev_priv, PIPEGCMAX(dev_priv, pipe, 2), lut[i].blue=
);
>>>  }
>>>=20=20
>>>  static void i965_load_luts(const struct intel_crtc_state *crtc_state)
>>> @@ -3239,9 +3240,9 @@ static struct drm_property_blob *i965_read_lut_10=
p6(struct intel_crtc *crtc)
>>>  		i965_lut_10p6_pack(&lut[i], ldw, udw);
>>>  	}
>>>=20=20
>>> -	lut[i].red =3D i965_lut_11p6_max_pack(intel_de_read_fw(dev_priv, PIPE=
GCMAX(pipe, 0)));
>>> -	lut[i].green =3D i965_lut_11p6_max_pack(intel_de_read_fw(dev_priv, PI=
PEGCMAX(pipe, 1)));
>>> -	lut[i].blue =3D i965_lut_11p6_max_pack(intel_de_read_fw(dev_priv, PIP=
EGCMAX(pipe, 2)));
>>> +	lut[i].red =3D i965_lut_11p6_max_pack(intel_de_read_fw(dev_priv, PIPE=
GCMAX(dev_priv, pipe, 0)));
>>> +	lut[i].green =3D i965_lut_11p6_max_pack(intel_de_read_fw(dev_priv, PI=
PEGCMAX(dev_priv, pipe, 1)));
>>> +	lut[i].blue =3D i965_lut_11p6_max_pack(intel_de_read_fw(dev_priv, PIP=
EGCMAX(dev_priv, pipe, 2)));
>>>=20=20
>>>  	return blob;
>>>  }
>>> diff --git a/drivers/gpu/drm/i915/display/intel_color_regs.h b/drivers/=
gpu/drm/i915/display/intel_color_regs.h
>>> index 61c18b4a7fa5..8eb643cfead7 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_color_regs.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_color_regs.h
>>> @@ -37,9 +37,9 @@
>>>  						  (i) * 4)
>>>=20=20
>>>  /* i965/g4x/vlv/chv */
>>> -#define  _PIPEAGCMAX           0x70010
>>> -#define  _PIPEBGCMAX           0x71010
>>> -#define PIPEGCMAX(pipe, i)     _MMIO_PIPE2(dev_priv, pipe, _PIPEAGCMAX=
 + (i) * 4) /* u1.16 */
>>> +#define  _PIPEAGCMAX			0x70010
>>> +#define  _PIPEBGCMAX			0x71010
>>> +#define PIPEGCMAX(dev_priv, pipe, i)	_MMIO_PIPE2(dev_priv, pipe, _PIPE=
AGCMAX + (i) * 4) /* u1.16 */
>>>=20=20
>>>  /* ilk+ palette */
>>>  #define _LGC_PALETTE_A           0x4a000
>>> --=20
>>> 2.39.2

--=20
Jani Nikula, Intel
