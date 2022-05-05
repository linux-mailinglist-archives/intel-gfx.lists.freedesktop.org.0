Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AED4851C649
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 19:40:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBA6210E38A;
	Thu,  5 May 2022 17:40:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE11810E38A;
 Thu,  5 May 2022 17:40:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651772416; x=1683308416;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=mHnod6XXX34MdlvbtaTm9r1Wlp8fVhnITN5yHfw/718=;
 b=TxlM3tD+mJQIp8CFnXQ/sySV5JyLsmTEDFfDycTgSt2vaMl2OmuZwOOV
 +sWw8boFVB42u03qzRSxwQ3zRXT/2xTv/n1pRlJkrEpHskk68/lDOgCDS
 R8EnuP/EtpkBwgyM8fJktgK3GqkDsEZOZhHFoMGz4dllZ/pnCqbovf2PD
 kbgd9bl4LTCy+Q3gCtS7psB18LNvNS3eis5lpPxfsLJtIfhvl24VfzWPN
 f1HZKClSW7LQRaD0z/ODQRQ95REjYUEecZRbmINj/hbKRkHFq9lXu0ZsB
 tGzoAYFEEy7HVyPCpvY1J19Z1rUK7+8uPvoCduOYNxXBCqMXKtp1STXEm A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10338"; a="250183607"
X-IronPort-AV: E=Sophos;i="5.91,201,1647327600"; d="scan'208";a="250183607"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 10:40:15 -0700
X-IronPort-AV: E=Sophos;i="5.91,201,1647327600"; d="scan'208";a="735008579"
Received: from mstepka-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.134.211])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 10:40:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YnL+iIClH+aXHalJ@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1651569697.git.jani.nikula@intel.com>
 <YnL+iIClH+aXHalJ@intel.com>
Date: Thu, 05 May 2022 20:40:08 +0300
Message-ID: <87k0azlvyf.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 00/20] drm/edid: CEA data block iterators,
 and more
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

On Thu, 05 May 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, May 03, 2022 at 12:23:45PM +0300, Jani Nikula wrote:
>> I've kind of lost track of the version numbers on some of the iterator
>> patches, but this is the next version (or mostly a resend) of
>> [1]. There's an additional rename patch for SCDS.
>>=20
>> BR,
>> Jani.
>>=20
>>=20
>> [1] https://patchwork.freedesktop.org/series/102703/
>>=20
>>=20
>> Jani Nikula (19):
>>   drm/edid: reset display info in drm_add_edid_modes() for NULL edid
>>   drm/edid: rename HDMI Forum VSDB to SCDS
>>   drm/edid: clean up CTA data block tag definitions
>>   drm/edid: add iterator for EDID base and extension blocks
>>   drm/edid: add iterator for CTA data blocks
>>   drm/edid: clean up cea_db_is_*() functions
>>   drm/edid: convert add_cea_modes() to use cea db iter
>>   drm/edid: convert drm_edid_to_speaker_allocation() to use cea db iter
>>   drm/edid: convert drm_edid_to_sad() to use cea db iter
>>   drm/edid: convert drm_detect_hdmi_monitor() to use cea db iter
>>   drm/edid: convert drm_detect_monitor_audio() to use cea db iter
>>   drm/edid: convert drm_parse_cea_ext() to use cea db iter
>>   drm/edid: convert drm_edid_to_eld() to use cea db iter
>>   drm/edid: sunset the old unused cea data block iterators
>>   drm/edid: restore some type safety to cea_db_*() functions
>>   drm/edid: detect basic audio in all CEA extensions
>>   drm/edid: skip CTA extension scan in drm_edid_to_eld() just for CTA
>>     rev
>>   drm/edid: sunset drm_find_cea_extension()
>>=20
>> Lee Shawn C (1):
>>   drm/edid: check for HF-SCDB block
>
> All of the above patches look OK to me.
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks a bunch, pushed the lot to drm-misc-next.

BR,
Jani.


>
>>   drm/edid: detect color formats and CTA revision in all CTA extensions
>
> For this one I'm not entirely convinced the behavioural change
> for the no-CTA ext case is what we want. Replied to that one
> individually.
>
>>=20
>>  drivers/gpu/drm/drm_edid.c | 799 +++++++++++++++++++++----------------
>>  1 file changed, 458 insertions(+), 341 deletions(-)
>>=20
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
