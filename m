Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F3A31DEA6
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 18:54:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 950296E9AA;
	Wed, 17 Feb 2021 17:54:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC0206E9AA
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Feb 2021 17:54:41 +0000 (UTC)
IronPort-SDR: tF39SIAWfFzdkarxxYwtmRgR9OVwiglOhiSCMc1I13/qWqF6EgxN8XTrRFYbOyi2KWeClj95Dz
 OIcaUsvSnO+A==
X-IronPort-AV: E=McAfee;i="6000,8403,9898"; a="179759987"
X-IronPort-AV: E=Sophos;i="5.81,185,1610438400"; d="scan'208";a="179759987"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 09:54:41 -0800
IronPort-SDR: MF6e/GVm52MO9d8ShzldxoyL77NT/gAGmzh7SJaxF5tbRCYtZ3uZ6PoccI8QlS/RRNDYAjxN1g
 krBzDTzJIrKg==
X-IronPort-AV: E=Sophos;i="5.81,185,1610438400"; d="scan'208";a="439448039"
Received: from dsdani-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.4.37])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 09:54:41 -0800
Date: Wed, 17 Feb 2021 09:54:40 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20210217175440.vo7lunoy5sy74tmq@ldmartin-desk1>
References: <cover.1613580193.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1613580193.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 00/12] drm/i915/bios: vbt child device rework
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 17, 2021 at 07:03:30PM +0200, Jani Nikula wrote:
>I see the parsing and caching of child device data into
>i915->vbt.ddi_port_info[] slightly problematic. We keep adding data to
>it, and it just duplicates information. Start moving towards a single
>point of truth, and getting the information directly from the child
>device data.
>
>One obstacle has been that init_vbt_missing_defaults() only initializes
>ddi_port_info, without child devices. As the same problem arose in a
>patch from Lucas, I thought it was time to start creating fake child
>devices to unify the code.
>
>There are a bunch of cleanups and refactoring here. Patches 1-5 are
>enough to fix Lucas' patch I think. Patch 10 does what Lucas was after,
>just in a different way and as a byproduct of something else. The later

humn... but we'd still need the patches in that series to cleanup
the calls to intel_ddi_init() from intel_display.c. Or did I miss
anything?

I did a quick scan through the patches and left a few comments. Overall
it looks good to me, but I need to dedicate a little more time to give a
proper r-b. I will do soon if no one beats me to it.


thanks
Lucas De Marchi

>patches in the series are more to show the direction, and seek
>validation for that direction.
>
>Naming is also a question mark. All of these are a bit questionable:
>intel_bios_encoder_data, devdata, intel_bios_encoder_supports_*, etc.
>
>BR,
>Jani.
>
>
>[1] http://patchwork.freedesktop.org/patch/msgid/20210213190511.1017088-2-=
lucas.demarchi@intel.com
>
>
>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>
>
>Jani Nikula (12):
>  drm/i915/bios: mass convert dev_priv to i915
>  drm/i915/bios: store bdb version in i915
>  drm/i915/bios: limit default outputs by platform on missing VBT
>  drm/i915/bios: limit default outputs to ports A through F
>  drm/i915/bios: create fake child devices on missing VBT
>  drm/i915/bios: rename display_device_data to intel_bios_encoder_data
>  drm/i915/bios: add i915 backpointer to intel_bios_encoder_data
>  drm/i915/vbt: add helper functions to check output support
>  drm/i915/bios: save a higher level pointer in ddi_vbt_port_info[]
>  drm/i915/bios: start using the intel_bios_encoder_data directly
>  drm/i915/bios: start using intel_bios_encoder_data for Type-C USB and
>    TBT
>  drm/i915/bios: add intel_bios_encoder_data to encoder, use for iboost
>
> drivers/gpu/drm/i915/display/intel_bios.c     | 1021 +++++++++--------
> drivers/gpu/drm/i915/display/intel_bios.h     |   17 +-
> drivers/gpu/drm/i915/display/intel_ddi.c      |   28 +-
> .../drm/i915/display/intel_display_types.h    |    3 +
> drivers/gpu/drm/i915/i915_drv.h               |    9 +-
> 5 files changed, 584 insertions(+), 494 deletions(-)
>
>-- =

>2.20.1
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
