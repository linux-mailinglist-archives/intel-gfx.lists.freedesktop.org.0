Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Tb+TJ1E9KWpTSwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 12:32:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD0E6684D7
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 12:32:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=csvThB7Y;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3BA410E461;
	Wed, 10 Jun 2026 10:32:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E63D10E0B4;
 Wed, 10 Jun 2026 10:32:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781087564; x=1812623564;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=4QR48FPX6NW6pWd+A0RB2168FFt8Kbmy8OacTeDGsas=;
 b=csvThB7Y8q0udoW7y2PMRPaqLQsLEnAy+EHkVJ8aPjFLMGWx1S+3SPlH
 +b+TEHnazMhAoLk3CHoc/j/caX0roQcrvH/WblhbhYOFFPd1+szKhsd20
 wmxxSh4EQXrSQOhXV3RUnb39xxe7MevDm+bjt4e7HdbQgHE3mG8TBG7Ko
 vBeNf/tPYr19cc+GeT3Uyg+Ot7UScLxLG0LcLvJbdHK8M1PKFzsA2ywcb
 lRGK16F+ucBUn73BnQ6I94AckaSz6QEGTXWmdYKBaVnDzfH11vjj21wJJ
 QJjKnJJpmKwrG5CkhodXIl9MLlSsLvlZ3dnyiMBTi069+wxTbzNVb9g9j A==;
X-CSE-ConnectionGUID: wrgDms+6Rn2+YYyWIB8U4A==
X-CSE-MsgGUID: 4csHF8trSIKch5ihDWMGQQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11812"; a="85721122"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="85721122"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 03:32:44 -0700
X-CSE-ConnectionGUID: 7vHeeByYR6mbP2vHMrx5EQ==
X-CSE-MsgGUID: HeuP8FBRTDSW4l3PyZ1Pfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="250415777"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.244.3])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 03:32:32 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Harry Wentland
 <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, Rodrigo Siqueira
 <siqueira@igalia.com>, Alex Deucher <alexander.deucher@amd.com>, Christian
 =?utf-8?Q?K=C3=B6nig?= <christian.koenig@amd.com>, David Airlie
 <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Andrzej Hajda
 <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 Robert Foss <rfoss@kernel.org>, Laurent Pinchart
 <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Sandy Huang
 <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan
 <andy.yan@rock-chips.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Joonas
 Lahtinen <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Dmitry Baryshkov <lumag@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Daniel Stone
 <daniel@fooishbar.org>
Cc: kernel@collabora.com, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org, Nicolas
 Frattaroli <nicolas.frattaroli@collabora.com>
Subject: Re: [PATCH v17 21/28] drm/tests: bridge: Add KUnit tests for bridge
 chain format selection
In-Reply-To: <20260609-color-format-v17-21-35739b5782cc@collabora.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260609-color-format-v17-0-35739b5782cc@collabora.com>
 <20260609-color-format-v17-21-35739b5782cc@collabora.com>
Date: Wed, 10 Jun 2026 13:32:29 +0300
Message-ID: <04ff70850213ae0f75486b1a27a7edb6fb4e71c3@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[40];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[collabora.com,amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,rock-chips.com,sntech.de,ursulin.net,pengutronix.de,lwn.net,linuxfoundation.org,fooishbar.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:from_mime,collabora.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2AD0E6684D7

On Tue, 09 Jun 2026, Nicolas Frattaroli <nicolas.frattaroli@collabora.com> =
wrote:
> diff --git a/drivers/gpu/drm/tests/drm_bridge_test.c b/drivers/gpu/drm/te=
sts/drm_bridge_test.c
> index 64b665580a88..92f142ca6695 100644
> --- a/drivers/gpu/drm/tests/drm_bridge_test.c
> +++ b/drivers/gpu/drm/tests/drm_bridge_test.c
> @@ -2,15 +2,23 @@
>  /*
>   * Kunit test for drm_bridge functions
>   */
> +#include <linux/cleanup.h>
> +#include <linux/media-bus-format.h>
> +
>  #include <drm/drm_atomic_state_helper.h>
> +#include <drm/drm_atomic_uapi.h>
>  #include <drm/drm_bridge.h>
>  #include <drm/drm_bridge_connector.h>
>  #include <drm/drm_bridge_helper.h>
> +#include <drm/drm_edid.h>
>  #include <drm/drm_kunit_helpers.h>
> +#include <drm/drm_managed.h>
>=20=20
>  #include <kunit/device.h>
>  #include <kunit/test.h>
>=20=20
> +#include "drm_kunit_edid.h"

So here's the problem with adding *any* arrays into headers: every
compilation unit that includes them duplicates all the arrays. It's only
really okay for single use.

And, in this case, most of the included arrays are unused, leading to
build failures:

  CC [M]  drivers/gpu/drm/tests/drm_bridge_test.o
In file included from ../drivers/gpu/drm/tests/drm_bridge_test.c:21:
../drivers/gpu/drm/tests/drm_kunit_edid.h:958:28: error: =E2=80=98test_edid=
_hdmi_4k_rgb_yuv420_dc_max_340mhz=E2=80=99 defined but not used [-Werror=3D=
unused-const-variable=3D]
  958 | static const unsigned char test_edid_hdmi_4k_rgb_yuv420_dc_max_340m=
hz[] =3D {
      |                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~
../drivers/gpu/drm/tests/drm_kunit_edid.h:726:28: error: =E2=80=98test_edid=
_hdmi_1080p_rgb_yuv_dc_max_340mhz=E2=80=99 defined but not used [-Werror=3D=
unused-const-variable=3D]
  726 | static const unsigned char test_edid_hdmi_1080p_rgb_yuv_dc_max_340m=
hz[] =3D {
      |                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~
../drivers/gpu/drm/tests/drm_kunit_edid.h:612:28: error: =E2=80=98test_edid=
_hdmi_1080p_rgb_yuv_dc_max_200mhz=E2=80=99 defined but not used [-Werror=3D=
unused-const-variable=3D]
  612 | static const unsigned char test_edid_hdmi_1080p_rgb_yuv_dc_max_200m=
hz[] =3D {
      |                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~
../drivers/gpu/drm/tests/drm_kunit_edid.h:498:28: error: =E2=80=98test_edid=
_hdmi_1080p_rgb_max_340mhz=E2=80=99 defined but not used [-Werror=3Dunused-=
const-variable=3D]
  498 | static const unsigned char test_edid_hdmi_1080p_rgb_max_340mhz[] =
=3D {
      |                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
../drivers/gpu/drm/tests/drm_kunit_edid.h:390:28: error: =E2=80=98test_edid=
_hdmi_1080p_rgb_max_200mhz_hdr=E2=80=99 defined but not used [-Werror=3Dunu=
sed-const-variable=3D]
  390 | static const unsigned char test_edid_hdmi_1080p_rgb_max_200mhz_hdr[=
] =3D {
      |                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
../drivers/gpu/drm/tests/drm_kunit_edid.h:271:28: error: =E2=80=98test_edid=
_hdmi_1080p_rgb_max_200mhz=E2=80=99 defined but not used [-Werror=3Dunused-=
const-variable=3D]
  271 | static const unsigned char test_edid_hdmi_1080p_rgb_max_200mhz[] =
=3D {
      |                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
../drivers/gpu/drm/tests/drm_kunit_edid.h:163:28: error: =E2=80=98test_edid=
_hdmi_1080p_rgb_max_100mhz=E2=80=99 defined but not used [-Werror=3Dunused-=
const-variable=3D]
  163 | static const unsigned char test_edid_hdmi_1080p_rgb_max_100mhz[] =
=3D {
      |                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
../drivers/gpu/drm/tests/drm_kunit_edid.h:57:28: error: =E2=80=98test_edid_=
dvi_1080p=E2=80=99 defined but not used [-Werror=3Dunused-const-variable=3D]
   57 | static const unsigned char test_edid_dvi_1080p[] =3D {
      |                            ^~~~~~~~~~~~~~~~~~~
cc1: all warnings being treated as errors

This breaks the build for me, I don't know how it didn't for any of you.

Reverting these two fixes it:

ce1d0139adac ("drm/tests: bridge: Add test for HDMI output bus formats help=
er")
082fbc179c01 ("drm/tests: bridge: Add KUnit tests for bridge chain format s=
election")

I think the proper fix would be to move the arrays into a .c file, and
only have declarations in the headers. But that needs to happen real
soon or the commits need to be reverted.


BR,
Jani.


--=20
Jani Nikula, Intel
