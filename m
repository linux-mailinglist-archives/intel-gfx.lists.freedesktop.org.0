Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57F898C7301
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 10:40:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5EE710E312;
	Thu, 16 May 2024 08:40:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YU94d+D4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 014FD10E312
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2024 08:40:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715848825; x=1747384825;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=xgUy7we08YxltjqIzyk6v4tpW0NU7cd0sxpdmlSzB+E=;
 b=YU94d+D432ap3ywULtF9Lv+lQbUxh2Z9fEoWHHBx1GRWb18/Jn0szHys
 nbG8sJsJ1jA9MLInBTZaxlS8EVMcpUm9tRL9S6IN00Ez0fek4WsVzMNXA
 fLwIskU6OHFgwN67StFlTSEi1runkOCw1+iFBMW99TVbOGKCR5iI0Wl2b
 R8LMn2oYpPOOVk3+5mFJv1yfsox+cQu/2l6dSTaq1D82ViRFksAMkLMqT
 QiNa/LU7ZXjNvDqk4Ry2b1xrasZ/vIhoq32K/+AbeYk5v6n693A3nhZ61
 BgD3BSLDOIXXRk744YGL6NkDxHK7JaDgUsrEPJIT1uKM4/W3MHc5tu+wh A==;
X-CSE-ConnectionGUID: OF1koUMqTD+l+mclS+AgbQ==
X-CSE-MsgGUID: 1Xv1I6c3Q0Wwltskub6i0A==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="12127491"
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="12127491"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 01:40:24 -0700
X-CSE-ConnectionGUID: NNBrYC50SjugujdysUC/RA==
X-CSE-MsgGUID: IL6c6fdoRkGqyegRib0Ahg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="31357477"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.208])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 01:40:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 0/8] drm/i915: pass dev_priv explicitly to CUR* registers
In-Reply-To: <ZkSlIYIfVescQxto@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1715774156.git.jani.nikula@intel.com>
 <ZkSlIYIfVescQxto@intel.com>
Date: Thu, 16 May 2024 11:40:18 +0300
Message-ID: <87msoqb159.fsf@intel.com>
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

On Wed, 15 May 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, May 15, 2024 at 02:56:40PM +0300, Jani Nikula wrote:
>> Update all the register macros in the intel_cursor_regs.h file.
>>=20
>> Jani Nikula (8):
>>   drm/i915: pass dev_priv explicitly to CURCNTR
>>   drm/i915: pass dev_priv explicitly to CURBASE
>>   drm/i915: pass dev_priv explicitly to CURPOS
>>   drm/i915: pass dev_priv explicitly to CURPOS_ERLY_TPT
>>   drm/i915: pass dev_priv explicitly to CURSIZE
>>   drm/i915: pass dev_priv explicitly to CUR_FBC_CTL
>>   drm/i915: pass dev_priv explicitly to CUR_CHICKEN
>>   drm/i915: pass dev_priv explicitly to CURSURFLIVE
>
> Series is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed to din.

BR,
Jani.


--=20
Jani Nikula, Intel
