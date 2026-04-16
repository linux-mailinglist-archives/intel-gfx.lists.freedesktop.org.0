Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sC2ZBhqb4GnokAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 10:17:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6343A40B6AE
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 10:17:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0593910E1A8;
	Thu, 16 Apr 2026 08:17:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QOhCgo1s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8931610E1A8;
 Thu, 16 Apr 2026 08:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776327444; x=1807863444;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=zzxyS/86yO+QwFq7EG77Q9q1k9Dsv35OEyw8JoSHAkg=;
 b=QOhCgo1sAbCfHF7uehHdMj5nld8BCHVLwp9fwymlpEjTyc4xq1Y8xLGR
 PiONc4jAL+DwKGHWhxV7C99kxvsiV3PymJHYLvwrPIYjLJS6wOs7wEyRT
 NVdCQmLMjQZCLOjo/V30w2YAZ3RnPGl+uQaMvqd8gd0DHW0U/ZgXZSyGW
 3NMNqV2POrMkefX/TT+DO6qII5IiuUbFTHUjOwetlm0segWMb/cjRQo49
 0W3cZNoCi6n2tdSjQE6loNiiz4DBhr07VsmlKcdHtr9BqkkwN9y5Supws
 3tiFkWaHXonr+lHO/xw/UBQkyHz4WRUbSWe8ZvrwgoCfL89V54PCeaycp A==;
X-CSE-ConnectionGUID: gDVbdPv+TkqNjNUVR0LExA==
X-CSE-MsgGUID: UIHxHRGmShicv9U8cI1qkQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="77195147"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="77195147"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 01:17:23 -0700
X-CSE-ConnectionGUID: s/car1LEQ/u8yaZAVlVnBQ==
X-CSE-MsgGUID: nWgtQzsdSUq5MIYXzOlbVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="229834869"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.78])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 01:17:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, Jouni =?utf-8?Q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Maarten
 Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH v3 1/7] drm/i915: Clear i915->display when no longer valid
In-Reply-To: <20260415210411.24750-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260415210411.24750-1-ville.syrjala@linux.intel.com>
 <20260415210411.24750-2-ville.syrjala@linux.intel.com>
Date: Thu, 16 Apr 2026 11:17:18 +0300
Message-ID: <a2bed6245981f401c49ac46118e9f7ed7b46b29b@intel.com>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN_FAIL(0.00)[177.210.252.131.asn.rspamd.com:server fail];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 6343A40B6AE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 16 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Don't leave a stale i915->display pointer hanging around after
> the display driver has been torn down. Apparently the gt code
> calls into the reset codepaths after this, and if the display
> pointer is still around we may try to access freed memory.
>
> The whole teardown sequence here seems rather suspect. Why is
> display done first and then everything else via the managed
> release? Who the heck knows. Someone really needs to dig into
> this stuff and figure out the proper init/cleanup sequence for
> both i915 (real and mock) and xe...

Yeah. And i915 and xe need to be unified, and changed to call higher
level interfaces instead of deep into display.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c               | 1 +
>  drivers/gpu/drm/i915/selftests/mock_gem_device.c | 1 +
>  2 files changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index 195e34acef30..d31819758f3d 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -310,6 +310,7 @@ static void i915_driver_late_release(struct drm_i915_=
private *dev_priv)
>  	i915_params_free(&dev_priv->params);
>=20=20
>  	intel_display_device_remove(display);
> +	dev_priv->display =3D NULL;
>  }
>=20=20
>  /**
> diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/g=
pu/drm/i915/selftests/mock_gem_device.c
> index 27dc0e40a8d7..796c9b070e41 100644
> --- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> +++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> @@ -277,6 +277,7 @@ void mock_destroy_device(struct drm_i915_private *i91=
5)
>  	struct device *dev =3D i915->drm.dev;
>=20=20
>  	intel_display_device_remove(i915->display);
> +	i915->display =3D NULL;
>=20=20
>  	devres_release_group(dev, NULL);
>  	put_device(dev);

--=20
Jani Nikula, Intel
