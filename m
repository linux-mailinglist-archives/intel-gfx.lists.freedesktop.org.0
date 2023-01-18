Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53BDD67166D
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 09:45:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20E4F10E6AF;
	Wed, 18 Jan 2023 08:45:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F08E610E6AF
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 08:45:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674031535; x=1705567535;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=w4QhXNK0paYtVpshZWWFj8E7I4/DPY5frLdepIUdVqQ=;
 b=aM4WP5hmUoTxq0zDFpNs6VlbC98be1kklj8+WwCN3LsGzw/ezrtaNlaz
 6v3ObXdPnBUI8SHefs4PU48lMquKSVrBAgP+DNd/l70YzbivJOew7E5qs
 r3kAY1HkwYxcm2dTCRP66+B/v/aohZt8YlCjWFyrs3u6EBrYEx6j07FBA
 V3sHj78QQ5v+Tzf+7JK1ePg9GRwXkkh3ifXm8I8WZYSlxY80AH4Rd81gP
 Y+IFI9qd2kp0wIDIh58bKMzHWf3gPQGOKFoQHnzU/ZO4E0sWja5P5BRuf
 h5S8lSd4pep5u2zTlb+uEUP+Z2c7mzf0FwNOyTvC1EX2yZzhnjln4U6B8 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="304614788"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="304614788"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 00:45:34 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="988459223"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="988459223"
Received: from kozlovdm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.28.132])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 00:45:33 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Y8bLc6dPqp8topmi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1673958757.git.jani.nikula@intel.com>
 <Y8bLc6dPqp8topmi@intel.com>
Date: Wed, 18 Jan 2023 10:45:30 +0200
Message-ID: <877cxkdydx.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 0/4] drm/i915: GMCH refactoring
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 17 Jan 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, Jan 17, 2023 at 02:33:05PM +0200, Jani Nikula wrote:
>> Let's see if this sticks.
>>=20
>> Jani Nikula (4):
>>   drm/i915: add gmch substruct to struct drm_i915_private
>>   drm/i915/gmch: split out soc/intel_gmch
>>   drm/i915/gmch: mass rename dev_priv to i915
>>   drm/i915/gmch: move VGA set state to GMCH code
>
> My main worry with this name would be confusion with HAS_GMCH().

I know.

Give me a better name, and I'll go with it. I just couldn't think of
anything more appropriate.

I guess this somewhat goes back to the HAS_GMCH_DISPLAY -> HAS_GMCH
rename.


BR,
Jani.

>
>>=20
>>  drivers/gpu/drm/i915/Makefile             |   1 +
>>  drivers/gpu/drm/i915/display/intel_vga.c  |  32 +---
>>  drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c |   2 +-
>>  drivers/gpu/drm/i915/i915_driver.c        | 145 +-----------------
>>  drivers/gpu/drm/i915/i915_drv.h           |  10 +-
>>  drivers/gpu/drm/i915/soc/intel_gmch.c     | 171 ++++++++++++++++++++++
>>  drivers/gpu/drm/i915/soc/intel_gmch.h     |  18 +++
>>  7 files changed, 204 insertions(+), 175 deletions(-)
>>  create mode 100644 drivers/gpu/drm/i915/soc/intel_gmch.c
>>  create mode 100644 drivers/gpu/drm/i915/soc/intel_gmch.h
>>=20
>> --=20
>> 2.34.1

--=20
Jani Nikula, Intel Open Source Graphics Center
