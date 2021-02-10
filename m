Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B6B317348
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Feb 2021 23:24:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A2636ED12;
	Wed, 10 Feb 2021 22:24:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1A696ED12
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Feb 2021 22:24:31 +0000 (UTC)
IronPort-SDR: nWj6OJNYaglfxS8VkKPOCCPQpKNc/rZ4dat2MwD7uo6C+CESl+ddduIk+Tu1Br0Nt1YIaCD7OR
 rsaLIndZBn0Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="169287841"
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="169287841"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 14:24:30 -0800
IronPort-SDR: KXDJRPaxpA7KjBKEMtzgPA/G++zeRmbFiaUbwYXYnlrQ1KF74klHFooknBNANUH3WwRRII2quD
 PRUcXtPtP93g==
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="421226429"
Received: from sganes2-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.30.225])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 14:24:30 -0800
Date: Wed, 10 Feb 2021 14:24:29 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20210210222429.pnqihigewlearcza@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20210128192413.1715802-1-matthew.d.roper@intel.com>
 <20210128192413.1715802-18-matthew.d.roper@intel.com>
 <87h7n0hu9p.fsf@intel.com>
 <161191892944.12947.12934684852512611563@build.alporthouse.com>
 <87eei4hrz7.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87eei4hrz7.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH 17/18] drm/i915/display13: Add rc_qp_table
 for rcparams calculation
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 29, 2021 at 02:01:32PM +0200, Jani Nikula wrote:
>On Fri, 29 Jan 2021, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>> Quoting Jani Nikula (2021-01-29 11:12:02)
>>> On Thu, 28 Jan 2021, Matt Roper <matthew.d.roper@intel.com> wrote:
>>> > From: Vandita Kulkarni <vandita.kulkarni@intel.com>
>>> >
>>> > Add the qp table for 444 formats, for 8bpc, 10bpc and 12bpc, as given=
 by
>>> > the VESA C model for DSC 1.1
>>> >
>>> > Cc: Manasi Navare <manasi.d.navare@intel.com>
>>> > Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
>>> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>>> > ---
>>> >  .../gpu/drm/i915/display/intel_qp_tables.h    | 294 ++++++++++++++++=
++
>>> >  drivers/gpu/drm/i915/display/intel_vdsc.c     |  22 +-
>>> >  2 files changed, 315 insertions(+), 1 deletion(-)
>>> >  create mode 100644 drivers/gpu/drm/i915/display/intel_qp_tables.h
>>> >
>>> > diff --git a/drivers/gpu/drm/i915/display/intel_qp_tables.h b/drivers=
/gpu/drm/i915/display/intel_qp_tables.h
>>> > new file mode 100644
>>> > index 000000000000..13694d5220d4
>>> > --- /dev/null
>>> > +++ b/drivers/gpu/drm/i915/display/intel_qp_tables.h
>>> > @@ -0,0 +1,294 @@
>>> > +/* SPDX-License-Identifier: MIT */
>>> > +/*
>>> > + * Copyright =A9 2019 Intel Corporation
>>> > + */
>>> > +
>>>
>>> The include guard is missing.
>>
>> Should we even be putting large tables into a header?
>>
>> Would this be better as a .c?
>
>Agreed.

ugh... that huge table on a header and even marked as __maybe_unused is
very ugly. We should really not do that.

Lucas De Marchi

>
>BR,
>Jani.
>
>-- =

>Jani Nikula, Intel Open Source Graphics Center
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
