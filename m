Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A638AE0DA
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Apr 2024 11:20:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4D5B11324E;
	Tue, 23 Apr 2024 09:20:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ROdHevGR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70ED711324E
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Apr 2024 09:20:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713864019; x=1745400019;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=2Qt8yLGpiEuXSGHTBTWuthT75ClW2Z582uWgJ38LYws=;
 b=ROdHevGRYiaT+TDANn7NWJGWXsyIXwyCq0zRr/LW6HY1YQmv1bNlrkr4
 S3n2F+WExTzTIC++NEyUpXNP1pFK9i0CbCGXiOHSuIYpTuASn0hLi9VMJ
 3Kd6j6VKGsJtr3Vj2Vz/2jj+9J++Xa4klqkB/pggXU84FehDIfpqQ8vwJ
 HrR23C0nRi4wU8XyjQ/Q6zkayBkTWIUCAzTbNtW8bsvThiPTKjIbDGdsX
 Gqud/cXr3eHRC7YUqVthygMWCNwLmyXqWk86MvyJU2EoHLcRPqERycKAO
 7DPSRTU4wIkLMSgvl53bH5K6jCwtomD/rH6nDPFZGYZJ0ZtMGD1nfJE+m A==;
X-CSE-ConnectionGUID: LZkuiQdHSEKd7qPbbrXZ8A==
X-CSE-MsgGUID: WoMAuPcjSgGPt5Rv9vO8sw==
X-IronPort-AV: E=McAfee;i="6600,9927,11052"; a="20134184"
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="20134184"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2024 02:20:19 -0700
X-CSE-ConnectionGUID: snd1ARhfSYiIRYk5yTAI0g==
X-CSE-MsgGUID: 9rjocc1iRiyzpkrHmK3Isg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="24355619"
Received: from fpirou-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.46.117])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2024 02:20:17 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 09/14] drm/i915/dpio: Derive the phy from the port
 rather than pipe in encoder hooks
In-Reply-To: <Zid1SnDvslKvqa82@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240422083457.23815-1-ville.syrjala@linux.intel.com>
 <20240422083457.23815-10-ville.syrjala@linux.intel.com>
 <87y195u2q6.fsf@intel.com> <Zid1SnDvslKvqa82@intel.com>
Date: Tue, 23 Apr 2024 12:20:15 +0300
Message-ID: <87edawsaeo.fsf@intel.com>
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

On Tue, 23 Apr 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, Apr 22, 2024 at 01:10:57PM +0300, Jani Nikula wrote:
>> On Mon, 22 Apr 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> > diff --git a/drivers/gpu/drm/i915/vlv_sideband.c b/drivers/gpu/drm/i91=
5/vlv_sideband.c
>> > index ffa195560d0d..68291412f4cb 100644
>> > --- a/drivers/gpu/drm/i915/vlv_sideband.c
>> > +++ b/drivers/gpu/drm/i915/vlv_sideband.c
>> > @@ -9,7 +9,6 @@
>> >  #include "vlv_sideband.h"
>> >=20=20
>> >  #include "display/intel_dpio_phy.h"
>> > -#include "display/intel_display_types.h"
>>=20
>> I guess this should be done in some other patch?
>
> I think it should have been part of
> commit f70a68bc1d18 ("drm/i915: convert vlv_dpio_read()/write() from
> pipe to phy")
>
> but got missed. This patch is basically what was left from a
> similar change I had in my branch. I can split this hunk out
> into a separate patch.

No big deal, really. I just want to get this stuff merged. :)

BR,
Jani.

--=20
Jani Nikula, Intel
