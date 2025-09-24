Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A65B986E6
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 08:47:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00CA410E6A4;
	Wed, 24 Sep 2025 06:47:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mr51GVj8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45D8E10E0BF;
 Wed, 24 Sep 2025 06:47:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758696460; x=1790232460;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=YQjmjhQDfDvim2HsXwt5E7FkDK1lUHJpD70buGn1nfA=;
 b=Mr51GVj8BCftxEeMh+QXiDOj7KnYSt59nH5Ir4OGxTERd53vqNxf8xYI
 JTU+UeWkZIQoOzd5lkXEbzrwqcaJKvEDg8xgWfa5ilwAqp6Ub9PBUCH/j
 GEN2W1z5bbkZWObcoxh6zY3BUZqpNYmqUVcZ9GMIlShRpSt1ksputh8nj
 USMWsrFtBd1o/TGCy9ctNMV7UzQTMzrtcNNDQM0wzcLMMz1Ad/sprNif0
 HpFg2t2JnLPlTwcF11wqemRW6G5S+rPi8Mp+O3DZcTwwommpGODTsyp9F
 qUGk8H6o+YTqBRGbPqB0AW04HPHagvNVDD8z5lzx9iAl/oxbsPeeMdjRF Q==;
X-CSE-ConnectionGUID: KWcVaH7jT2muW//kQoaEFQ==
X-CSE-MsgGUID: 5YWkYFZVQAmOlkxkt3GpFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60926954"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60926954"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 23:47:40 -0700
X-CSE-ConnectionGUID: yWtfydsxQLuFiqckLN7ikg==
X-CSE-MsgGUID: rihj3l54R8OlFgkMVGss9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="176790949"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.149])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 23:47:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 5/5] drm/i915/irq: split ILK display irq handling
In-Reply-To: <aNKyfVyQPpMsCpQy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1758637773.git.jani.nikula@intel.com>
 <e8ea7c985c3f3a80870f3333bde2e1bf30d653b0.1758637773.git.jani.nikula@intel.com>
 <aNKyfVyQPpMsCpQy@intel.com>
Date: Wed, 24 Sep 2025 09:47:35 +0300
Message-ID: <312ff528782df9b79af1964e8d4ac99fb6d23bdf@intel.com>
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

On Tue, 23 Sep 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, Sep 23, 2025 at 05:31:08PM +0300, Jani Nikula wrote:
>> Split out display irq handling on ilk. Since the master IRQ enable is in
>> DEIIR, we'll need to do this in two parts. First, add
>> ilk_display_irq_master_disable() to disable master and south interrupts,
>> and second, add (repurposed) ilk_display_irq_handler() to finish display
>> irq handling.
>>=20
>> It's not the prettiest thing you ever saw, but improves separation of
>> display irq handling. And removes HAS_PCH_NOP() and DISPLAY_VER() checks
>> from core irq code.
>>=20
>> v2:
>> - Separate ilk_display_irq_master_enable() (Ville)
>> - Use _fw mmio accessors (Ville)
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks for the swift reviews, pushed to din.

Xe CI didn't run on this version, but this does not touch any codepaths
that get run on platforms in Xe CI. And the previous version passed.

BR,
Jani.



--=20
Jani Nikula, Intel
