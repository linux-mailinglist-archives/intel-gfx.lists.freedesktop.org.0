Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yMzlG+zE3Gn5VwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 12:26:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0283EA9D9
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 12:26:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A0F010E3ED;
	Mon, 13 Apr 2026 10:26:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=collabora.com header.i=nicolas.frattaroli@collabora.com header.b="SClcCwRG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com
 [136.143.188.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8F0710E32A;
 Mon, 13 Apr 2026 10:26:48 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1776075995; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=h02R6SYWbmcMwoKgTR8LoC3h+o9xXPnlKOZgWDVMAOIfszgmHpI899QpLHBqvwiFWX+RKwwE4nLjDgd2c94afqa1TXauKAQ9elb3Jrzj0iDuxzm3EaLjO/ckhtIDBoYv7kZBBaTJdnOcrVX/5blV/hFS/O6mJLb8Hg1nEXExWIM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1776075995;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=MBy494F68r0qLKKEsa3LN0mB+quFxcEwe7H5kFBVbr0=; 
 b=Sw/0B9KI3xsgcXQuQvm+LSh3j6xIKGTH2vfNTHYxLh3t0BZNS2a6Z4FSigmlBak0Q/a/hw0toiKTnNNkUHM0uLQFDzPlAEfAbtZ1tlRgfFtjDMhX5OaUV1CfK/Sw3Z5GzltNIVBRoU/BessP6XT2Ou/K/SwtZ15mP9dh771A9Cw=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
 dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1776075995; 
 s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
 h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
 bh=MBy494F68r0qLKKEsa3LN0mB+quFxcEwe7H5kFBVbr0=;
 b=SClcCwRGC3ptzz2W6dz6wheJPXh9BWTnc8EClbxkbu1yo2vIJT9PGcBejDaK6Nhe
 rECltZo9KuLaCQbOPkDfPZlGcwqAk5TatoV/zPjCblwvHcZJ8DSzwR1pcUupkpWRkb9
 0yCeg7taHZbw7dhQ6hUP5rC01qXeRmHCd4WO9fkA=
Received: by mx.zohomail.com with SMTPS id 1776075993436742.8313316176907;
 Mon, 13 Apr 2026 03:26:33 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>,
 Rodrigo Siqueira <siqueira@igalia.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Dmitry Baryshkov <lumag@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>
Cc: kernel@collabora.com, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-doc@vger.kernel.org, Werner Sembach <wse@tuxedocomputers.com>,
 Andri Yngvason <andri@yngvason.is>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Marius Vlad <marius.vlad@collabora.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH v13 00/27] Add new general DRM property "color format"
Date: Mon, 13 Apr 2026 12:26:22 +0200
Message-ID: <6275841.lOV4Wx5bFT@workhorse>
In-Reply-To: <20260413-color-format-v13-0-ab37d4dfba48@collabora.com>
References: <20260413-color-format-v13-0-ab37d4dfba48@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
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
X-Spamd-Result: default: False [0.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[zohomail.com:s=zohoarc:i=1];
	CTE_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=zohomail];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,rock-chips.com,sntech.de,ursulin.net,pengutronix.de,lwn.net,linuxfoundation.org];
	RCPT_COUNT_TWELVE(0.00)[43];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	FROM_NEQ_ENVFROM(0.00)[nicolas.frattaroli@collabora.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[collabora.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,tuxedocomputers.com,yngvason.is,oss.qualcomm.com,163.com];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,collabora.com:dkim,collabora.com:email,intel.com:email]
X-Rspamd-Queue-Id: CB0283EA9D9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Monday, 13 April 2026 12:07:14 Central European Summer Time Nicolas Frattaroli wrote:
> Hello,
> 
> [snip mucho texto]
> 
> ---
> Nicolas Frattaroli (26):
>       drm/display: hdmi-state-helper: Use default case for unsupported formats
>       drm: Add new general DRM property "color format"
>       drm/connector: Let connectors have a say in their color format
>       drm/display: bridge_connector: Use HDMI color format for HDMI conns
>       drm/bridge: Act on the DRM color format property
>       drm/atomic-helper: Add HDMI bridge output bus formats helper
>       drm/display: hdmi-state-helper: Act on color format DRM property
>       drm/display: hdmi-state-helper: Try subsampling in mode_valid
>       drm/amdgpu: Implement "color format" DRM property
>       drm/i915/hdmi: Add YCBCR444 handling for sink formats
>       drm/i915/dp: Add YCBCR444 handling for sink formats
>       drm/i915: Implement the "color format" DRM property
>       drm/rockchip: Add YUV422 output mode constants for VOP2
>       drm/rockchip: vop2: Add RK3576 to the RG swap special case
>       drm/rockchip: vop2: Recognise 10-bit YUV422 as YUV format
>       drm/rockchip: vop2: Set correct output format for RK3576 YUV422
>       drm/bridge: dw-hdmi-qp: Use common HDMI output bus fmts helper
>       drm/rockchip: dw_hdmi_qp: Implement "color format" DRM property
>       drm/rockchip: dw_hdmi_qp: Set supported_formats platdata
>       drm/connector: Register color format property on HDMI connectors
>       drm/tests: hdmi: Add tests for the color_format property
>       drm/tests: hdmi: Add tests for HDMI helper's mode_valid
>       drm/tests: bridge: Add KUnit tests for bridge chain format selection
>       drm/tests: bridge: Add test for HDMI output bus formats helper
>       drm/bridge: Document bridge chain format selection
>       drm/connector: Update docs of "colorspace" for color format prop
> 
> Werner Sembach (1):
>       drm/amd/display: Remove unnecessary SIGNAL_TYPE_HDMI_TYPE_A check
> 
>  Documentation/gpu/drm-kms-helpers.rst              |   6 +
>  Documentation/gpu/drm-kms.rst                      |   6 +
>  drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c  |  91 +-
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c       |   1 +
>  drivers/gpu/drm/display/drm_bridge_connector.c     |  24 +
>  drivers/gpu/drm/display/drm_hdmi_state_helper.c    |  53 +-
>  drivers/gpu/drm/drm_atomic_helper.c                |  86 ++
>  drivers/gpu/drm/drm_atomic_uapi.c                  |  11 +
>  drivers/gpu/drm/drm_bridge.c                       | 104 ++-
>  drivers/gpu/drm/drm_connector.c                    | 178 +++-
>  drivers/gpu/drm/i915/display/intel_connector.c     |  10 +
>  drivers/gpu/drm/i915/display/intel_connector.h     |   1 +
>  drivers/gpu/drm/i915/display/intel_dp.c            |  43 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c          |  47 +-
>  drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c     | 111 ++-
>  drivers/gpu/drm/rockchip/rockchip_drm_drv.h        |   4 +
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c       |  21 +-
>  drivers/gpu/drm/tests/drm_bridge_test.c            | 971 +++++++++++++++++++++
>  drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c | 345 ++++++++
>  include/drm/drm_atomic_helper.h                    |   7 +
>  include/drm/drm_connector.h                        | 120 +++
>  21 files changed, 2203 insertions(+), 37 deletions(-)
> ---
> base-commit: e3dc6072028a594d5e9bfc6476165842602d5307
> change-id: 20251028-color-format-49fd202b7183
> prerequisite-message-id: <20260409101539.22032-1-ville.syrjala@linux.intel.com>
> prerequisite-patch-id: f382aeb5da5f2b8f6e2cb22b88eb47f490f2c724
> prerequisite-patch-id: 20570aeb28e3c31353e6f697b193b23d8b47c47c
> prerequisite-patch-id: 1b7e24034883b22cd82be025a1cf82ae77170fd0
> prerequisite-patch-id: 6ec2dc2c05a75391b67cb12d93168f5e8da8ec55
> prerequisite-patch-id: 32e84581998ef4eef05e1681c7ec36b90f2a6bb7
> prerequisite-patch-id: 99c2187a846b0c9ac2ea1a892c17483120cb7da1
> prerequisite-patch-id: fb41b4668a3b7c8c375c67ffd6b178fa3273e86a
> prerequisite-patch-id: 4c115a36eea0d5f80643dc34310690894ac80e0e
> prerequisite-patch-id: 6fdec0832cd6062de3cc5c2f363c5d624d8a00f9
> 
> Best regards,
> --  
> Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> 
> 

Oops, forgot to apply the review trailers from last revision. (I did
actually remember, but didn't remember to explicitly confirm applying
them, and it defaults to not doing so.)

So these two:
- drm/atomic-helper: Add HDMI bridge output bus formats helper
- drm/connector: Register color format property on HDMI connectors

Lack Dmitry Baryshkov's R-b, but I assume it'll get picked up
on the next `b4 trailers -u` anyway. Just mentioning it though
to ruin the surprise for any reviewer who feels gaslit otherwise.

Kind regards,
Nicolas Frattaroli


