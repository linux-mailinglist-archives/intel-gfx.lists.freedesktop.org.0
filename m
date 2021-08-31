Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E26E13FC4BD
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Aug 2021 11:33:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41A9A89819;
	Tue, 31 Aug 2021 09:33:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D59589812;
 Tue, 31 Aug 2021 09:33:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10092"; a="216587199"
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; d="scan'208";a="216587199"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2021 02:33:22 -0700
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; d="scan'208";a="498204846"
Received: from anicol1x-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.211.207])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2021 02:33:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Anisse Astier <anisse@astier.eu>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Hans de
 Goede <hdegoede@redhat.com>, Uma Shankar <uma.shankar@intel.com>, Daniel
 Dadap <ddadap@nvidia.com>, Anisse Astier <anisse@astier.eu>
In-Reply-To: <20210817204329.5457-1-anisse@astier.eu>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210817204329.5457-1-anisse@astier.eu>
Date: Tue, 31 Aug 2021 12:33:14 +0300
Message-ID: <87pmtuarhh.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 0/2] GPD Win Max display fixes
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

On Tue, 17 Aug 2021, Anisse Astier <anisse@astier.eu> wrote:
> This patch series is for making the GPD Win Max display usable with
> Linux.
>
> The GPD Win Max is a small laptop, and its eDP panel does not send an
> EDID over DPCD; the EDID is instead available in the intel opregion, in
> mailbox #5 [1]
>
> The first patch is based on Jani's patch series [2] adding support for
> the opregion, with changes. I've changed authorship, but I'd be glad to
> revert it

If you don't mind, please just add:

Co-developed-by: Jani Nikula <jani.nikula@intel.com>


Thanks,
Jani.

>
> The second patch is just to fix the orientation of the panel.
>
> Changes since v1:
>  - rebased on drm-tip
>  - squashed patch 1 & 2
>  - picked up Reviewed-by from Hans de Goede (thanks for the review)
>
> Changes since v2:
>  - rebased on drm-tip
>  - updated commit message
>
> When v2 was initially sent [3] Ville Syrj=C3=A4l=C3=A4 suggested that it =
might be
> a good idea to use the ACPI _DDC method instead to get the EDID, to
> cover a wider range of hardware. Unfortunately, it doesn't seem
> available on GPD Win Max, so I think this work should be done
> independently, and this patch series considered separately.
>
> [1]: https://gitlab.freedesktop.org/drm/intel/-/issues/3454
> [2]: https://patchwork.kernel.org/project/intel-gfx/patch/20200828061941.=
17051-1-jani.nikula@intel.com/
> [3]: https://patchwork.kernel.org/project/intel-gfx/patch/20210531204642.=
4907-2-anisse@astier.eu/
>
>
> Anisse Astier (2):
>   drm/i915/opregion: add support for mailbox #5 EDID
>   drm: Add orientation quirk for GPD Win Max
>
>  .../gpu/drm/drm_panel_orientation_quirks.c    |  6 ++
>  drivers/gpu/drm/i915/display/intel_dp.c       |  3 +
>  drivers/gpu/drm/i915/display/intel_opregion.c | 69 ++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_opregion.h |  8 +++
>  4 files changed, 85 insertions(+), 1 deletion(-)

--=20
Jani Nikula, Intel Open Source Graphics Center
