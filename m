Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D43D6072B2
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 10:43:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5833810E649;
	Fri, 21 Oct 2022 08:43:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0498410E648
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 08:42:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666341778; x=1697877778;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=lAvd2vGyTle2qfA7jVd9sV1E5EW6hhsybsbT5qCBZno=;
 b=R6/wzfBzgMyvE6cf6jf0REuwuRNJn53EEJJVo2VhAToPDGO7gNAoWC6B
 6Tpvl6/t/Pt9TUiqsJrMG2sIysobs5WMpzDKqwcE4iBhcEH/QS+gcPzxi
 QQuDhBSQNR5fAZwv54/81kTypl0iSDBXDrzetgjCD/Yl0x4O2rKIJ3x5V
 qJHhLBUS9kn7dgSe72VUbpVFjYEM23LBqD5fPV7vmkOp+IvRyxQnigwSM
 20i4o5t5xlyfvDVNiqHdwqrse6Xw1e3dx4On/dFl5Sg2bzKkugoo90VAo
 LJOio8Z/Gw9U86Ag8X6yqGy5dgl2WQIP06BuTBmR+6+tAG059/9MIEeT1 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="308048996"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="308048996"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 01:42:57 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="661485589"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="661485589"
Received: from avilla3-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.252.53.153])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 01:42:55 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 Anusha Srivatsa <anusha.srivatsa@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <Y1JE3kDZXBBjKOPz@bala-ubuntu>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221021002024.390052-1-anusha.srivatsa@intel.com>
 <Y1JE3kDZXBBjKOPz@bala-ubuntu>
Date: Fri, 21 Oct 2022 11:42:53 +0300
Message-ID: <87pmelftyq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 0/4] Prep series - CDCLK code churn
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

On Fri, 21 Oct 2022, Balasubramani Vivekanandan <balasubramani.vivekanandan=
@intel.com> wrote:
> On 20.10.2022 17:20, Anusha Srivatsa wrote:
>> No functional changes. The series is more of a prep series
>> for the mid_cdclk_config series:
>> https://patchwork.freedesktop.org/series/109694/
>>=20
>> Main change:
>>  - Change usage of "crawler" and "squasher". Use crawling and
>> squashing instead.
>>  - Handle bot hsquash and cralw similar in terms of checking
> Please check the typos here

This is a cover letter. It's not merged anywhere. It's not necessary to
point out typos here.

BR,
Jani.

>
> Regards,
> Bala
>
>> if the platform supports them or not. With the changes introduced,
>> both are a display feature flag.
>>  - Move code from bxt_set_cdclk() to make it more modularized
>> and easy to read and understand.
>>=20
>> Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>=20
>> Anusha Srivatsa (4):
>>   drm/i915/display: Change terminology for cdclk actions
>>   drm/i915/display: Introduce HAS_CDCLK_SQUASH macro
>>   drm/i915/display: Move chunks of code out of bxt_set_cdclk()
>>   drm/i915/display: Move squash_ctl register programming to its own
>>     function
>>=20
>>  drivers/gpu/drm/i915/display/intel_cdclk.c | 80 ++++++++++++----------
>>  drivers/gpu/drm/i915/i915_drv.h            |  1 +
>>  drivers/gpu/drm/i915/i915_pci.c            |  1 +
>>  drivers/gpu/drm/i915/intel_device_info.h   |  1 +
>>  4 files changed, 48 insertions(+), 35 deletions(-)
>>=20
>> --=20
>> 2.25.1
>>=20

--=20
Jani Nikula, Intel Open Source Graphics Center
