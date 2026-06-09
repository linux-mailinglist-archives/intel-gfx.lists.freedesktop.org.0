Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Sp4FLbAKKGpl7wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 14:44:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 488CD660226
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 14:44:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=zohomail header.b=CMrfh2uj;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("zohomail.com:s=zohoarc:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E392310E2FA;
	Tue,  9 Jun 2026 12:44:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com
 [136.143.188.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AA8910E2EC;
 Tue,  9 Jun 2026 12:44:28 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1781009057; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=OS0U/44soszsEoN6ZmzngssCU3s70+unAvQR8ZQjwRFOQqDebU+Qcs4qg1+XJmxLsdPwLvzC085ajmtG8NXnmsa2ILqJuOhgaKnByzPKRLCUOo70okRR3AAFbJOCxzARGovYynruJnwYasdcsAbA/szjbbVxdYV2IvGTaUsZoK8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1781009057;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=CNKubhS0QonMf1muTkJvppOmUteXfapIj8XI4VEBLgw=; 
 b=WXniooboGt5XTrkRt+VZuv9nVZycLHmxVhDp6uyyuXdOL3NruK7gqI4qKZBr0AYY7ysFCEoTnjc6wi3Nhrq5DtXL7Hnd+cnqKBTUdGOXWeO9+41oMrVwQk0Yo3S9+lsXT9eSZH3cZXMAsOiAtBEWEnVVegT6DwBFO/cMIptOhuc=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
 dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1781009057; 
 s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
 h=From:From:Subject:Subject:Date:Date:Message-Id:Message-Id:MIME-Version:Content-Type:Content-Transfer-Encoding:To:To:Cc:Cc:Reply-To;
 bh=CNKubhS0QonMf1muTkJvppOmUteXfapIj8XI4VEBLgw=;
 b=CMrfh2ujKjzdligL7bMnVC0oGztFgf0Vv1FJBxGosSRCBEqHd2+bOWITvwoPzL9n
 MqgV0fePK7UDIAnmDyf5fctn51Ebs3++cigSPqZN0obOC1v26Fa6xVvW/UdDBVU7Nhq
 n+fZYNJDCAWdbKgFpQtn/t4z1j8dfz3MrosgnKyM=
Received: by mx.zohomail.com with SMTPS id 1781009054810600.3173341087239;
 Tue, 9 Jun 2026 05:44:14 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Subject: [PATCH v17 00/28] Add new general DRM property "color format"
Date: Tue, 09 Jun 2026 14:43:47 +0200
Message-Id: <20260609-color-format-v17-0-35739b5782cc@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/33SS27bMBAG4KsYWpcuZ/jOqvcIsuCzJmBZKaUIK
 QLfvZTb1CpNdCeK4Mf5h/MxzLHkOA9Ph4+hxDXPebrUBagvh8Gf7OV7JDnUHwNSFEBREz+dp0L
 SVEa7EG5SqDtOgWZDPfJaYsrvN+/5pa5TmUaynEq0fxFqAIBRxcyRGyYJkNGW/DYf17MN36p+t
 m4q9uin8Y9Y4o+3Wtjymx2cnWOtYhzz8nQIZSRjnv3Xzw9yie/LsN19yvMylZ+3aCu/Hb2FAFD
 /hlg5oYSGGBS6AI7SpooNW8UOaLuwigpIFjUmCA4i9AD5CUgKCA0gK6CcBqsU+EBdD1D/A1QFY
 lKGBhuVpr4H6DuAIBtAV0AoRB9BiRBEDzA7ANsmmq0HQnvmTHAqph4A9C4wKhoB6isQWwmpLYC
 WukvAjkDeErBVQYUQxiaeHO8SeCc4NS2BlfBR8wgalEXVJdiOANYSbAvimAo8JGd5PwjfEfhAb
 DPJubEcjPcu9IOIOyEQW2KbSoTkgElvQsIuIffEQxXbXCJnnHoRuWIPxPV6/QVXDDo9QwQAAA=
 =
X-Change-ID: 20251028-color-format-49fd202b7183
To: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, 
 Rodrigo Siqueira <siqueira@igalia.com>, 
 Alex Deucher <alexander.deucher@amd.com>, 
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, Dmitry Baryshkov <lumag@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, 
 Daniel Stone <daniel@fooishbar.org>
Cc: kernel@collabora.com, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
 Werner Sembach <wse@tuxedocomputers.com>, 
 Andri Yngvason <andri@yngvason.is>, 
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, 
 Marius Vlad <marius.vlad@collabora.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Andy Yan <andyshrk@163.com>
X-Mailer: b4 0.15.2
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[zohomail.com:s=zohoarc:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=zohomail];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[amd.com,igalia.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,rock-chips.com,sntech.de,ursulin.net,pengutronix.de,lwn.net,linuxfoundation.org,fooishbar.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[46];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nicolas.frattaroli@collabora.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[collabora.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,tuxedocomputers.com,yngvason.is,oss.qualcomm.com,163.com];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,msgid.link:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 488CD660226

Hello,

this is a follow-up to
https://lore.kernel.org/all/20250911130739.4936-1-marius.vlad@collabora.com/
which in of itself is a follow-up to
https://lore.kernel.org/dri-devel/20240115160554.720247-1-andri@yngvason.is/ where
a new DRM connector property has been added allowing users to
force a particular color format.

That in turn was actually also a follow-up from Werner Sembach's posted at
https://lore.kernel.org/dri-devel/20210630151018.330354-1-wse@tuxedocomputers.com/

As the number of cooks have reached critical mass, I'm hoping I'll be
the last person to touch this particular series.

We have an implementation in Weston at
https://gitlab.freedesktop.org/wayland/weston/-/merge_requests/1825 that
adds support for this property. This patch series has been tested
against that MR on i915 (HDMI, DP), amdgpu (HDMI, DP) and on rockchip
(HDMI).

You can also manually test this with modetest like so, but beware that
this is a non-atomic invocation, so testing YUV420 like this will result
in weird outcomes if only some of the modes support YUV420:

  $ modetest -s 115:1920x1080-60@NV12 -w 115:'color format':4

where 115 is the connector ID and '4' is the enum value for a particular
color format.

General notes on the approach taken by me: instead of silently switching
to a different format than was explicitly requested, or even worse,
outputting something to the sink the sink doesn't support, bubble up an
error to userspace instead. "color format" is a "I want this" type
property, not a "force this" type property, i.e. the kernel will respect
the limits imposed by the hardware.

Things I've tested:
- HDMI (YCbCr 4:4:4 + YCbCr 4:2:2 (8-bit) + RGB + Auto) on RK3588
- HDMI (YCbCr 4:4:4 + YCbCr 4:2:2 (8-bit) + RGB + Auto) on RK3576
- HDMI (YCbCr 4:4:4, YCbCr 4:2:0, RGB, Auto) + DP (YCbCr 4:4:4, RGB,
  Auto) on Intel N97 (i915).
- HDMI (YCbCr 4:4:4, YCbCr 4:2:2, YCbCr 4:2:0, RGB, Auto) + DP (YCbCr
  4:4:4, RGB, Auto) on an AMD Radeon RX 550 (amdgpu).

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
Changes in v17:
- Rebase onto drm-misc-next
- Reorder i915 patches to end of series
- Link to v16: https://patch.msgid.link/20260523-color-format-v16-0-24340c5e4732@collabora.com

Changes in v16:
- drm/i915/dp: Don't check for dfp conversion to determine ycbcr444
  output capability
- drm/i915/dp: Replicate intel_dp_has_hdmi_sink check for YCBCR444 as well
- drm/i915/dp: Reorder formats and checks in sink_format_valid
- drm/i915/hdmi: Fix inverted HAS_GMCH check for YCBCR444 capability
- drm/i915/hdmi: Add has_hdmi_sink check to YCBCR444 sink_format_valid
- drm/i915/hdmi: Reorder formats in sink_format_valid
- drm/i915/hdmi: Drop documentation for internal function
- Link to v15: https://patch.msgid.link/20260522-color-format-v15-0-21fb136c9df2@collabora.com

Changes in v15:
- Drop redundant drm_connector_color_format_valid() function
- dw-hdmi-qp-rockchip: make dw_hdmi_qp_rockchip_get_vop_format()'s
  return type int, check bstate for IS_ERR rather than NULL, and pass up
  error codes to caller
- rebase onto recent drm-tip, necessitating
  s/drm_atomic_state/drm_atomic_commit/ in the KUnit tests
- Link to v14: https://patch.msgid.link/20260423-color-format-v14-0-449a419ccbd4@collabora.com

Changes in v14:
- i915: Check for source support of YCbCr444 in both the sink format
  validation and when registering the properites on the connectors.
- i915: Split HDMI and DP implementations into separate patches, with
  their own supported color formats masks.
- Link to v13: https://patch.msgid.link/20260413-color-format-v13-0-ab37d4dfba48@collabora.com

Changes in v13:
- Introduce a new drm_connector_funcs member that returns the
  connector state's color format with additional bells and whistles.
- Implement this new func in drm_bridge_connector to return whatever the
  HDMI implementation did if an HDMI bridge is present.
- Call into the drm_connector.h function wrapping this new func in the
  recursive bridge chain bus format selection code.
- Link to v12: https://patch.msgid.link/20260409-color-format-v12-0-ce84e1817a27@collabora.com

Changes in v12:
- Rebase on top of Ville's i915 format selection cleanup series
- i915: Reimplement based on new format selection code. Drop the DP-MST
  implementation, as sinks with different sets of supported formats
  complicate the matter.
- Adjust documentation on drm_connector_color_format enum values to
  mention quantization ranges.
- Add documentation to drm-kms page to document the string values for
  the property. Mostly the same documentation as the enum values, but
  from a more userspace-centric perspective. This is done in the patch
  that introduces the property, but I didn't drop the existing R-b as
  it isn't a functional change.
- Update documentation of "colorspace" property to mention that "color
  format" property controls the output format.
- amdgpu: Remove property from DP-MST, as it's unclear whether it'd work
  properly with sinks that have different sets of supported formats
- Link to v11: https://patch.msgid.link/20260324-color-format-v11-0-605559af4fb4@collabora.com

Changes in v11:
- amdgpu: fix property registration on DP-MST
- i915: fix property registration on DP-MST
- rebase on drm-tip, which includes Maxime's refactor series that was
  previously declared a dependency of this series
- Link to v10: https://lore.kernel.org/r/20260305-color-format-v10-0-a58c68a11868@collabora.com

Changes in v10:
- Make DRM_OUTPUT_COLOR_FORMAT_COUNT and
  DRM_CONNECTOR_COLOR_FORMAT_COUNT part of the enum definition (thanks
  to Maxime)
- Preemptively avoid the warning that would be generated by the
  enumification of DRM_OUTPUT_COLOR_FORMAT_COUNT by modifying the
  problematic switch statement in drm_hdmi_state_helper's
  sink_supports_format_bpc.
- drm/bridge: Change HDMI check from checking for the last bridge having
  a DRM_BRIDGE_OP_HDMI in ops to checking if last_bridge->type is HDMIA.
  This is not quite the suggestion Dmitry had, but according to the
  documentation of the drm_bridge.type member, and the
  display-connector.c code, it should be correct.
- Combine drm_mode_create_color_format_property and
  drm_connector_attach_color_format_property into one function named the
  latter. (thanks to Dmitry Baryshkov)
- Change author of 'drm: Add new general DRM property "color format"'
  to myself as it has by now changed quite a bit, and add Andri and
  Werner as Co-developed-by, as per Andri's suggestion.
- hdmi-state-helper: Rework hdmi_compute_config to make code flow more
  obvious, and drop Dmitry's R-b as a consequence (thanks to Maxime)
- Move dw-hdmi-qp's atomic_get_output_bus_fmts into
  drm_bridge_helper.c, along with kernel doc string (thanks to Dmitry)
- Future-proof the aforementioned get_output_bus_fmts use of hweight8 on
  the supported_formats bitmask with a BUILD_BUG_ON.
- Add a KUnit test for the HDMI output bus formats helper
- Link to v9: https://lore.kernel.org/r/20260227-color-format-v9-0-658c3b9db7ef@collabora.com

Changes in v9:
- Document what the "AUTO" behaviour is in the color format enum (thanks
  to Maxime)
- drm/bridge: dw-hdmi-qp: Fix a rebase oopsie that reintroduced some
  functions that were dropped. (thanks to Cristian)
- drm/bridge: Shuffle "1:1" in the bridge fmt selection docs to earlier
  in the sentence. (thanks to Randy Dunlap)
- i915: Check chosen output format against requested format for dp-mst
- All color format driver implementations: rebase and rework on top of
  Maxime's series
- As part of this rework, rename drm_color_format_enum to
  drm_connector_color_format
- drm kunit tests: rework for the new enums. Changes were trivial, so
  trailers were kept
- Link to v8: https://lore.kernel.org/r/20260216-color-format-v8-0-5722ce175dd5@collabora.com

Changes in v8:
- Drop "drm/rockchip: vop2: Fix YUV444 output", as the original problem
  could not be reproduced anymore, and the justification did not make
  sense.
- Remove the 12-bit format from "drm/rockchip: vop2: Recognise 10/12-bit
  YUV422 as YUV formats".
- Refactor to keep the original DRM_COLOR_FORMAT bitshifted defines
  as-is, but introduce a new drm_color_format_enum enum.
- Adjust conversion functions for the newly refactored enum, ensuring
  they only return valid enum values, and only convert in directions
  that open up no error value cans of worms.
- Rework the property uapi code for the newly refactored enum, since
  it no longer needs to do any bitshifting or ffs().
- Rework all the device drivers for the new enum.
- Rework all the tests for the refactored enum.
- Rework the hdmi state helper for the new enum, and also make it more
  explicit about the auto behaviour by not relying on a conversion
  function to map AUTO to RGB, but do this in the framework itself.
- rockchip dw_hdmi_qp: Fix the GRF value to check for color >= 0 instead
  of color > 0, as the latter broke switching back to RGB.
- Rebase onto a recent drm-tip. This necessitated blindly reworking some
  of the i915 dp-mst code.
- Drop the __maybe_unused edid test patch, as I could no longer
  reproduce the build warnings I added it for. I blame ghosts.
- drm_bridge tests: remove "destroyed" member from struct
  drm_bridge_chain_priv and all associated code, as it was not used in
  any test.
- Link to v7: https://lore.kernel.org/r/20260121-color-format-v7-0-ef790dae780c@collabora.com

Changes in v7:
- Fix drm_bridge kunit test build failure caused by rebasing across an
  API change.
- Make compilers shut up about unused EDID definitions in the test
  suites.
- Empty line checkpatch fixes that b4 prep --check didn't catch.
- Link to v6: https://lore.kernel.org/r/20260121-color-format-v6-0-7b81a771cd0b@collabora.com

Changes in v6:
- Checkpatch fixes
- Add drm_bridge.c kerneldoc fix patch to b4 deps so the kernel docs
  required for every contribution to the subsystem can be built
- dw-hdmi-qp core has gained the atomic_get_output_bus_fmts bridge func,
  which allows it to participate in the drm_bridge chain recursive format
  selection code properly.
- The Rockchip dw-hdmi-qp integration now no longer reimplements the
  color format logic (improperly), but reads the bus format of the first
  bridge as set by the recursive bridge format selection. If the input
  format is FIXED, it'll use the output format. Otherwise, the input
  format is used.
- In the synopsys drivers, YUV422 uses the same bus format as the non-qp
  hdmi encoder driver. Probably correcter this way. The Rockchip vop2
  is_yuv function has been extended to recognise this format as well.
- KUnit tests for drm_bridge chains are now included, which exercise the
  chain's recursive bus format selection.
- On HDMI connectors, the drm_bridge bus format selection will try to target
  the color format that the HDMI layer came up with. This means the AUTO
  logic is not duplicated for HDMI connectors.
- The enum conversion function commit gained a function for converting
  from hdmi_colorspace to drm_color_format, and its author changed as no
  original code remains anyway. Marius is still included as a
  Co-developer.
- Some tests for the HDMI state helper's mode_valid have been written.
  They are incomplete as we lack a test EDID for a 420-also mode that
  would violate the clock constraints on RGB. I hacked one together with
  a hex editor, but it reports a too high of a clock rate, and there's
  no EDID editor I could find which supports these extension blocks.
- The color_format KUnit tests have been more heavily parameterised, the
  auto case absorbed into other tests, and the comments around them
  rewritten.
- Add a few paragraphs of documentation that explain the bridge format
  selection, and how to make use of it in a display driver.
- Link to v5: https://lore.kernel.org/r/20251128-color-format-v5-0-63e82f1db1e1@collabora.com

Changes in v5:
- Rebase onto drm-tip
- Drop DRM_MODE_COLOR_FORMAT_* as an enum
- Unify DRM_COLOR_FORMAT_NONE and DRM_COLOR_FORMAT_AUTO, with AUTO being
  0. This makes conversion and general logic much easier.
- Adjust the drm_color_format enum to not needlessly renumber the
  existing defines, as it doesn't need to correspond to how HDMI numbers
  them.
- Make the DRM-to-HDMI conversion function static inline __pure, because
  the assembly it generates is tiny, and the function is pure.
- Don't accept nothing as the list of supported color formats for
  registration of the property.
- Drop the per-connector variants of the color format registration
  function, as it's not needed.
- drm_hdmi_state_helper: Fix mode_valid rejecting 420-only modes.
- drm_hdmi_state_helper: Only fall back to YUV420 with
  DRM_COLOR_FORMAT_AUTO.
- drm_hdmi_state_helper: Remove redundant AUTO->RGB condition, as the
  conversion already does this.
- Add KUnit tests for hdmi_compute_config.
- drm/bridge: Refactor bus_format_is_color_fmt and add a few more YUV422
  formats.
- Register the color format property in drmm_connector_hdmi_init based
  on the supported HDMI formats passed to it. This means rockchip
  dw_hdmi_qp no longer needs to register it.
- amdgpu: Simplify YUV420 logic
- amdgpu: Don't try to pick YUV444 on YUV420-only modes
- i915: Try to make behaviour more or less the same as that of the drm
  hdmi state helper.
- rockchip dw_hdmi_qp: Set supported HDMI formats
- rockchip dw_hdmi_qp: Set the right VO GRF values depending on color
  format.
- rockchip dw_hdmi_qp: Act on the color format property in this driver,
  rather than in VOP2, by setting the bus_format appropriately.
- rockchip VOP2: Can the BCSH-based implementation. BCSH isn't available
  on all video ports of the hardware, and the code was extremely
  suspect. Instead, plug into the existing YUV-to-RGB/RGB-to-YUV code,
  which can be done now that the HDMI driver sets the bus format.
- A whole bunch of Rockchip VOP2 fixes.
- Link to v4: https://lore.kernel.org/r/20251117-color-format-v4-0-0ded72bd1b00@collabora.com

Changes in v4:
- Rebase onto next-20251117
- Get rid of HDMI_COLORSPACE_AUTO
- Split hdmi_compute_config change into separate patch
- Add missing symbol export for color_format_to_hdmi_colorspace to fix
  builds in certain configurations
- Drop "drm: Pass supported color formats straight onto drm_bridge"
- Make dw-hdmi-qp set the platform data's supported color formats as
  the bridge's supported HDMI color formats
- drm_hdmi_state_helper: pass requested color format to
  hdmi_compute_format_bpc if set.
- drm_bridge: limit the bus formats to those explicitly requested with
  the color format property during the atomic bridge check call,
  specifically in drm_atomic_bridge_chain_select_bus_fmts.
- i915: Remove INTEL_OUTPUT_FORMAT_AUTO, as automatic format selection
  does not need to involve the hardware state
- i915: Deduplicate ntel_output_format_to_drm_color_format code by
  moving it as a static inline __pure function into a shared header
- i915: rework logic in HDMI, DP and DP-MST output config functions to
  remove redundant locals, simplify execution flow, and return an error
  to userspace if an explicit color_format request can't be satisfied.
- i915: assign myself as the author and make the others Co-developers,
  so that they don't get the blame for any of my bugs.
- amdgpu: refactor fill_stream_properties_from_drm_display_mode to
  improve readability and ensure that impossible color format requests
  get bubbled up to userspace as errors
- amdgpu: don't pick YUV444 over RGB.
- amdgpu: assign authorship to myself, with others as Co-developers, as
  logic was modified and the blame should fall on me
- dw_hdmi_qp-rockchip: set the supported color formats platform data
  member
- rockchip: remove drm property registration for rk3066_hdmi and
  inno_hdmi. None of the platforms that use these use vop2 as the
  video output processor.
- Link to v3: https://lore.kernel.org/all/20250911130739.4936-1-marius.vlad@collabora.com/

Changes in v3 by mvlad compared to Andri's v2 series:
- renamed the property to just 'color format'
- the property is added dynamically similar to the Colorspace property
- a key point from previous comments was that drivers should advertise
  the color formats they support and userspace would query EDID and
  perform an intersection from those color formats which users can
  further use. With this patch set each driver that adds this property
  has such list of hard-coded color formats, but fundamentally the idea
  is that driver can query the HW and do that on its own. The
  infrastructure is now in place to allow to do that
- by default the 'AUTO' color format is set. With this patch series that
  has been introduced as a fallback to RGB. Drivers could further
  customize this behavour and could perform additional checks on the sink
  to pick another suitable color format they'd like for AUTO
- drm_bridge bridge code has been improved to allow initialization with
  the same color formats list as the DRM connector property. Similarly, bpc
  pick-up now takes the color format into consideration when deciding
  which bpc to choose from
- The new DRM color format re-uses HDMI_COLORPSACE enum and provides an
  enum translations between the two to avoid touching all other drivers that
  use HDMI_COLORPSACE enum. I believe at this point that this allows the
  least amount of disruption and avoids a massive bike shedding around
  that part
- a rockchip implementation has been by my colleague Derek Foreman
- YUV444 color format has been added in i915
- address comment about "Remove unnecessary SIGNAL_TYPE_HDMI_TYPE_A
  check" where aconnector might be invalid
- Link to v2: https://lore.kernel.org/dri-devel/20240115160554.720247-1-andri@yngvason.is/

---
Nicolas Frattaroli (27):
      drm/display: hdmi-state-helper: Use default case for unsupported formats
      drm: Add new general DRM property "color format"
      drm/connector: Let connectors have a say in their color format
      drm/display: bridge_connector: Use HDMI color format for HDMI conns
      drm/bridge: Act on the DRM color format property
      drm/atomic-helper: Add HDMI bridge output bus formats helper
      drm/display: hdmi-state-helper: Act on color format DRM property
      drm/display: hdmi-state-helper: Try subsampling in mode_valid
      drm/amdgpu: Implement "color format" DRM property
      drm/rockchip: Add YUV422 output mode constants for VOP2
      drm/rockchip: vop2: Add RK3576 to the RG swap special case
      drm/rockchip: vop2: Recognise 10-bit YUV422 as YUV format
      drm/rockchip: vop2: Set correct output format for RK3576 YUV422
      drm/bridge: dw-hdmi-qp: Use common HDMI output bus fmts helper
      drm/rockchip: dw_hdmi_qp: Implement "color format" DRM property
      drm/rockchip: dw_hdmi_qp: Set supported_formats platdata
      drm/connector: Register color format property on HDMI connectors
      drm/tests: hdmi: Add tests for the color_format property
      drm/tests: hdmi: Add tests for HDMI helper's mode_valid
      drm/tests: bridge: Add KUnit tests for bridge chain format selection
      drm/tests: bridge: Add test for HDMI output bus formats helper
      drm/bridge: Document bridge chain format selection
      drm/connector: Update docs of "colorspace" for color format prop
      drm/i915/hdmi: Add YCBCR444 handling for sink formats
      drm/i915/dp: Add YCBCR444 handling for sink formats
      drm/i915/hdmi: Implement "color format" DRM property
      drm/i915/dp: Implement "color format" DRM property

Werner Sembach (1):
      drm/amd/display: Remove unnecessary SIGNAL_TYPE_HDMI_TYPE_A check

 Documentation/gpu/drm-kms-helpers.rst              |   6 +
 Documentation/gpu/drm-kms.rst                      |   6 +
 drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c  |  91 +-
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c       |   1 +
 drivers/gpu/drm/display/drm_bridge_connector.c     |  24 +
 drivers/gpu/drm/display/drm_hdmi_state_helper.c    |  53 +-
 drivers/gpu/drm/drm_atomic_helper.c                |  86 ++
 drivers/gpu/drm/drm_atomic_uapi.c                  |   4 +
 drivers/gpu/drm/drm_bridge.c                       | 104 ++-
 drivers/gpu/drm/drm_connector.c                    | 178 +++-
 drivers/gpu/drm/i915/display/intel_dp.c            |  81 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c          |  76 +-
 drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c     | 111 ++-
 drivers/gpu/drm/rockchip/rockchip_drm_drv.h        |   4 +
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c       |  21 +-
 drivers/gpu/drm/tests/drm_bridge_test.c            | 971 +++++++++++++++++++++
 drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c | 345 ++++++++
 include/drm/drm_atomic_helper.h                    |   7 +
 include/drm/drm_connector.h                        |  96 ++
 19 files changed, 2228 insertions(+), 37 deletions(-)
---
base-commit: f2f4e6d45fecc6ead92bf5ea06a04a00c245904e
change-id: 20251028-color-format-49fd202b7183

Best regards,
--  
Nicolas Frattaroli <nicolas.frattaroli@collabora.com>

