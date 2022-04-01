Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27FC04EF804
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Apr 2022 18:32:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9171D10E45E;
	Fri,  1 Apr 2022 16:32:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E66AB10F5E6;
 Fri,  1 Apr 2022 16:32:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648830758; x=1680366758;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=BZ84mCdW2h1uvx5/kzFjGZ6MXCsrMN01GTYbXdxxPkw=;
 b=U30HV+dPdvwhHqh9IEWRDX1egd9ofdOF/SixKecMVNrdsszeHMZOgTPC
 OHhjkDdzMjMQGowUZv9a6PV6CgopOEn6+PImb31mEavwlBmlN7iWWKbpR
 g9jm5u3lVdF91rGD4MadTbqiS1EUUsswOOYNHegR/Xc1qyj2hMUR+RsKP
 6tts0sTRBoz0Jbv2s+r2vsk24QApbutLrNHpHZaRhxIQpI5z5om0FgLJQ
 BrrytLqpGDjpl5Sjze3p3Qbam9Zi6p6hanfGqQCbsUkyRf4uXmCiqNDWH
 eMMEGiotgnUoF7tvuX7jbF4NXeFbjl6ETjvoJSSm4PLJ3+Xhtx+G2vvZ0 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10304"; a="323348597"
X-IronPort-AV: E=Sophos;i="5.90,228,1643702400"; d="scan'208";a="323348597"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 09:18:51 -0700
X-IronPort-AV: E=Sophos;i="5.90,228,1643702400"; d="scan'208";a="547854802"
Received: from anikolov-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.62.217])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 09:18:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YkcH+OO+lVBejjn4@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1648752228.git.jani.nikula@intel.com>
 <877d8989om.fsf@intel.com> <YkcH+OO+lVBejjn4@intel.com>
Date: Fri, 01 Apr 2022 19:18:45 +0300
Message-ID: <87sfqw7p5m.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 00/12] drm/edid: cleanup and refactoring
 around validity checks
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 01 Apr 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Apr 01, 2022 at 11:55:21AM +0300, Jani Nikula wrote:
>> On Thu, 31 Mar 2022, Jani Nikula <jani.nikula@intel.com> wrote:
>> > v2 of https://patchwork.freedesktop.org/series/101931/
>> >
>> > Rebased, review comments addressed.
>>=20
>> Ville, care to double check patches 1 & 7 please?
>
> Looks fine by me
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed the lot to drm-misc-next.

BR,
Jani.

>
>>=20
>> Thanks,
>> Jani.
>>=20
>>=20
>> >
>> > BR,
>> > Jani.
>> >
>> >
>> >
>> > Jani Nikula (12):
>> >   drm/edid: use struct edid * in drm_do_get_edid()
>> >   drm/edid: clean up EDID block checksum functions
>> >   drm/edid: add edid_block_tag() helper to get the EDID extension tag
>> >   drm/edid: make drm_edid_header_is_valid() accept void pointer
>> >   drm/edid: clean up edid_is_zero()
>> >   drm/edid: split out edid_header_fix()
>> >   drm/edid: split drm_edid_block_valid() to check and act parts
>> >   drm/edid: use a better variable name for EDID block read retries
>> >   drm/edid: simplify block check when filtering invalid blocks
>> >   drm/edid: split out invalid block filtering to a separate function
>> >   drm/edid: track invalid blocks in drm_do_get_edid()
>> >   drm/edid: reduce magic when updating the EDID block checksum
>> >
>> >  drivers/gpu/drm/drm_edid.c | 295 +++++++++++++++++++++----------------
>> >  include/drm/drm_edid.h     |   2 +-
>> >  2 files changed, 173 insertions(+), 124 deletions(-)
>>=20
>> --=20
>> Jani Nikula, Intel Open Source Graphics Center

--=20
Jani Nikula, Intel Open Source Graphics Center
