Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67FB64981D3
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 15:14:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 645B510E2F8;
	Mon, 24 Jan 2022 14:14:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01EFE10E2F8
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jan 2022 14:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643033695; x=1674569695;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=bZvnNCegU8Xl9oqPqbNhZWdrqKaUV9d9V/TnVeL/zNM=;
 b=kL9KIrgMlLNuDUBwHQU9mjSngQ3l7qdtuyxlcB7XBeTGYFdOEuiqcde4
 J8YWFj+nDiCyOTty2EQasQVwNCyScvT2ZYs/8JB64mqBjsDcgyghafKi7
 Xm1mDHK/ZJgz0HDeb0GGW/kMsvFlQJH14eLUgAPFDruxkYAONmEkNCV03
 kOiktihPoVCDInB08Tkgt4uWDbD22q4o4ggcRHvCw2ZzBr3SFOIJi22vl
 JBTpGewC1am8qmZIJDoSCqER2jz4pemjVN/dVhzoKc0+Yzrhrw6F9NyQi
 vhFz2lGwBjIYGTFKmtJPv6JVkpA9itLbP+BUs/h1/JqyZWyV9CZPmn97a w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10236"; a="245997501"
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="245997501"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 06:08:55 -0800
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="534235237"
Received: from epreiss-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.54.23])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 06:08:53 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YeqxRDzd/PY8E4bP@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1642769982.git.jani.nikula@intel.com>
 <YeqxRDzd/PY8E4bP@intel.com>
Date: Mon, 24 Jan 2022 16:08:39 +0200
Message-ID: <87ilu92plk.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 0/9] drm/i915/display: drm device based
 logging conversions
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 21 Jan 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Jan 21, 2022 at 03:00:29PM +0200, Jani Nikula wrote:
>> Purge some accumulated drm device based logging changes from my local
>> branches.
>>=20
>> Jani Nikula (9):
>>   drm/i915/snps: convert to drm device based logging
>>   drm/i915/pps: convert to drm device based logging
>>   drm/i915/hotplug: convert to drm device based logging
>>   drm/i915/dp: convert to drm device based logging
>>   drm/i915/plane: convert to drm device based logging and WARN
>>   drm/i915/sprite: convert to drm device based logging
>>   drm/i915/lspcon: convert to drm device based logging
>>   drm/i915/cdclk: update intel_dump_cdclk_config() logging
>>   drm/i915/cdclk: convert to drm device based logging
>
> Eyeballed it quickly. Looks all right to me.
>
> Series is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed to drm-intel-next.

BR,
Jani.

>
>>=20
>>  .../gpu/drm/i915/display/intel_atomic_plane.c |   5 +-
>>  drivers/gpu/drm/i915/display/intel_cdclk.c    |  23 +--
>>  drivers/gpu/drm/i915/display/intel_cdclk.h    |   3 +-
>>  drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
>>  .../drm/i915/display/intel_display_power.c    |   2 +-
>>  drivers/gpu/drm/i915/display/intel_dp.c       |  35 +++--
>>  drivers/gpu/drm/i915/display/intel_hotplug.c  |  14 +-
>>  drivers/gpu/drm/i915/display/intel_lspcon.c   | 142 ++++++++++--------
>>  drivers/gpu/drm/i915/display/intel_pps.c      |  22 +--
>>  drivers/gpu/drm/i915/display/intel_snps_phy.c |  29 ++--
>>  drivers/gpu/drm/i915/display/intel_sprite.c   |  24 +--
>>  .../drm/i915/display/skl_universal_plane.c    |  10 +-
>>  12 files changed, 169 insertions(+), 142 deletions(-)
>>=20
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
