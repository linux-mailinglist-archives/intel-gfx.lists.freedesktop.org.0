Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B6D8D09D0
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 20:16:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3009710FBFF;
	Mon, 27 May 2024 18:16:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i1/QS1vA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69EF210FBFF
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 18:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716833786; x=1748369786;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=ZrzD/y6ZRw0rstJpYXVEf7h/EPZDDUmQfdRN0vDK578=;
 b=i1/QS1vAfrjBoYDDMjkPzdxdRb/HSKdhN1S3jQknAZhv6HCsABDnDvBn
 PKSye+o/9dVggqJ7rTgpVnN4+MR4Z3tLjEgXSEj5XeeOd1z1MGnjWJJLG
 R/G1ci5U/KUBaXroQk2M7C7G6bYjkN5DxeU+TDmUTmTOw7QJiqbkK2RCS
 eCtjS0jqcUy05WTK1ZPAAw4cNsc73oXiQOme0EBbuLPlhW3RmkhS+r7A9
 /wEfJqkI9fJptqj+ZXDWxW2ytWVKt/tYiLijY8WnUXD1kKvGB27ClC6qP
 i80YVWYMxxeFKju2Y1bNGrV/v78sCcHJvN/xwHOgViGX46F53P5HW7dX/ A==;
X-CSE-ConnectionGUID: WHidB1R2QoKnd0EaXoHX3A==
X-CSE-MsgGUID: vhACwdX4T8GBtqL1xS7DLg==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13287336"
X-IronPort-AV: E=Sophos;i="6.08,193,1712646000"; d="scan'208";a="13287336"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 11:16:25 -0700
X-CSE-ConnectionGUID: y6HtDqm/Qf2NXtHitiMICg==
X-CSE-MsgGUID: +xhHpXfyT1WsDlQltgS8YQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,193,1712646000"; d="scan'208";a="35310396"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.200])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 11:16:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/2] drm/i915: move rawclk init to intel_cdclk_init()
In-Reply-To: <ZhQrvAjDK_H-9Af4@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240408172315.3418692-1-jani.nikula@intel.com>
 <ZhQpO3lJz9TB7c-4@intel.com> <ZhQrvAjDK_H-9Af4@intel.com>
Date: Mon, 27 May 2024 21:16:20 +0300
Message-ID: <874jajm87f.fsf@intel.com>
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

On Mon, 08 Apr 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, Apr 08, 2024 at 08:28:27PM +0300, Ville Syrj=C3=A4l=C3=A4 wrote:
>> On Mon, Apr 08, 2024 at 08:23:14PM +0300, Jani Nikula wrote:
>> > The rawclk initialization is a bit out of place in
>> > intel_device_info_runtime_init(). Move it to intel_cdclk_init(), with a
>> > bit of refactoring on intel_read_rawclk().
>>=20
>> rawclk is used outside of display.
>
> The correct solution would likely be to extract a=20
> i9xx_fsb_freq(), and use that to populate both rawclk_freq
> and fsb_freq (and switch over to fsb_freq in the
> non-display code).

I circled back to this, and PNV seems to be the problem case for making
this happen.

pnv_detect_mem_freq() in intel_dram.c and i9xx_hrawclk() in
intel_cdclk.c interpret the CLKCFG register slightly differently.

I'm presuming PNV only supports a subset of the values covered by
i9xx_hrawclk(). For IS_MOBILE() they all match, but for !IS_MOBILE()
there's a different value for 400 MHz FSB.

So how should desktop PNV interpret the register, I wonder? I can't find
any specs on that anymore.


BR,
Jani.


--=20
Jani Nikula, Intel
