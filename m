Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IEVoI/HdcGnCaQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 15:08:49 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C572A58297
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 15:08:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EB4610E7EB;
	Wed, 21 Jan 2026 14:08:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA56B10E7C2;
 Wed, 21 Jan 2026 14:08:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Add_new_general_DRM_prope?=
 =?utf-8?q?rty_=22color_format=22_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nicolas Frattaroli" <nicolas.frattaroli@collabora.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Jan 2026 14:08:45 -0000
Message-ID: <176900452596.178097.8840631758463456173@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260121-color-format-v6-0-7b81a771cd0b@collabora.com>
In-Reply-To: <20260121-color-format-v6-0-7b81a771cd0b@collabora.com>
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
Reply-To: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Spamd-Result: default: False [-0.11 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[emeril.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[intel-gfx@lists.freedesktop.org];
	R_DKIM_NA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: C572A58297
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

== Series Details ==

Series: Add new general DRM property "color format" (rev3)
URL   : https://patchwork.freedesktop.org/series/157910/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC      drivers/gpu/drm/clients/drm_client_setup.o
  CC      drivers/gpu/drm/clients/drm_fbdev_client.o
  AR      drivers/gpu/drm/clients/built-in.a
  AR      drivers/gpu/drm/display/built-in.a
  CC [M]  drivers/gpu/drm/display/drm_display_helper_mod.o
  CC [M]  drivers/gpu/drm/display/drm_bridge_connector.o
  CC [M]  drivers/gpu/drm/display/drm_dp_dual_mode_helper.o
  CC [M]  drivers/gpu/drm/display/drm_dp_helper.o
  CC [M]  drivers/gpu/drm/display/drm_dp_mst_topology.o
  CC [M]  drivers/gpu/drm/display/drm_dp_tunnel.o
  CC [M]  drivers/gpu/drm/display/drm_dsc_helper.o
  CC [M]  drivers/gpu/drm/display/drm_hdcp_helper.o
  CC [M]  drivers/gpu/drm/display/drm_hdmi_audio_helper.o
  CC [M]  drivers/gpu/drm/display/drm_hdmi_cec_helper.o
  CC [M]  drivers/gpu/drm/display/drm_hdmi_cec_notifier_helper.o
  CC [M]  drivers/gpu/drm/display/drm_hdmi_helper.o
  CC [M]  drivers/gpu/drm/display/drm_scdc_helper.o
  CC [M]  drivers/gpu/drm/display/drm_hdmi_state_helper.o
  CC [M]  drivers/gpu/drm/display/drm_dp_aux_dev.o
  CC [M]  drivers/gpu/drm/display/drm_dp_cec.o
  LD [M]  drivers/gpu/drm/display/drm_display_helper.o
  AR      drivers/gpu/drm/renesas/rcar-du/built-in.a
  AR      drivers/gpu/drm/renesas/rz-du/built-in.a
  AR      drivers/gpu/drm/renesas/built-in.a
  AR      drivers/gpu/drm/omapdrm/built-in.a
  AR      drivers/gpu/drm/tilcdc/built-in.a
  AR      drivers/gpu/drm/imx/built-in.a
  AR      drivers/gpu/drm/panel/built-in.a
  CC [M]  drivers/gpu/drm/panel/panel-auo-a030jtn01.o
  CC [M]  drivers/gpu/drm/panel/panel-ilitek-ili9341.o
  CC [M]  drivers/gpu/drm/panel/panel-orisetech-ota5601a.o
  CC [M]  drivers/gpu/drm/panel/panel-raspberrypi-touchscreen.o
  CC [M]  drivers/gpu/drm/panel/panel-widechips-ws2401.o
  AR      drivers/gpu/drm/bridge/analogix/built-in.a
  AR      drivers/gpu/drm/bridge/cadence/built-in.a
  AR      drivers/gpu/drm/bridge/imx/built-in.a
  AR      drivers/gpu/drm/bridge/synopsys/built-in.a
  AR      drivers/gpu/drm/bridge/built-in.a
  CC [M]  drivers/gpu/drm/bridge/tda998x_drv.o
  LD [M]  drivers/gpu/drm/bridge/tda998x.o
  AR      drivers/gpu/drm/hisilicon/built-in.a
  AR      drivers/gpu/drm/mxsfb/built-in.a
  CC      drivers/gpu/drm/sysfb/drm_sysfb.o
  CC      drivers/gpu/drm/sysfb/drm_sysfb_modeset.o
  CC      drivers/gpu/drm/sysfb/drm_sysfb_screen_info.o
  CC      drivers/gpu/drm/sysfb/simpledrm.o
  AR      drivers/gpu/drm/sysfb/built-in.a
  AR      drivers/gpu/drm/tiny/built-in.a
  CC [M]  drivers/gpu/drm/tiny/bochs.o
  CC [M]  drivers/gpu/drm/tiny/cirrus-qemu.o
  CC [M]  drivers/gpu/drm/tiny/gm12u320.o
  CC [M]  drivers/gpu/drm/tiny/panel-mipi-dbi.o
  CC [M]  drivers/gpu/drm/tiny/hx8357d.o
  CC [M]  drivers/gpu/drm/tiny/ili9163.o
  CC [M]  drivers/gpu/drm/tiny/ili9225.o
  CC [M]  drivers/gpu/drm/tiny/ili9341.o
  CC [M]  drivers/gpu/drm/tiny/ili9486.o
  CC [M]  drivers/gpu/drm/tiny/mi0283qt.o
  CC [M]  drivers/gpu/drm/tiny/repaper.o
  AR      drivers/gpu/drm/xen/built-in.a
  CC [M]  drivers/gpu/drm/xen/xen_drm_front.o
  CC [M]  drivers/gpu/drm/xen/xen_drm_front_kms.o
  CC [M]  drivers/gpu/drm/xen/xen_drm_front_conn.o
  CC [M]  drivers/gpu/drm/xen/xen_drm_front_evtchnl.o
  CC [M]  drivers/gpu/drm/xen/xen_drm_front_cfg.o
  CC [M]  drivers/gpu/drm/xen/xen_drm_front_gem.o
  LD [M]  drivers/gpu/drm/xen/drm_xen_front.o
  AR      drivers/gpu/drm/xlnx/built-in.a
  AR      drivers/gpu/drm/gud/built-in.a
  CC [M]  drivers/gpu/drm/gud/gud_drv.o
  CC [M]  drivers/gpu/drm/gud/gud_pipe.o
  CC [M]  drivers/gpu/drm/gud/gud_connector.o
  LD [M]  drivers/gpu/drm/gud/gud.o
  AR      drivers/gpu/drm/sitronix/built-in.a
  AR      drivers/gpu/drm/solomon/built-in.a
  CC [M]  drivers/gpu/drm/solomon/ssd130x.o
  CC [M]  drivers/gpu/drm/solomon/ssd130x-i2c.o
  CC [M]  drivers/gpu/drm/solomon/ssd130x-spi.o
  CC [M]  drivers/gpu/drm/tests/drm_bridge_test.o
drivers/gpu/drm/tests/drm_bridge_test.c:306:10: error: ‘const struct drm_bridge_funcs’ has no member named ‘hdmi_write_infoframe’; did you mean ‘hdmi_write_avi_infoframe’?
  306 |         .hdmi_write_infoframe           = (hdmi_write_infoframe_func),                          \
      |          ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:311:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  311 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(ident, input_fmts_func, output_fmts_func,      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:315:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC’
  315 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC(_name ## _funcs,                            \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:340:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT’
  340 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT(rgb8_passthrough);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:306:43: warning: initialized field overwritten [-Woverride-init]
  306 |         .hdmi_write_infoframe           = (hdmi_write_infoframe_func),                          \
      |                                           ^
drivers/gpu/drm/tests/drm_bridge_test.c:311:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  311 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(ident, input_fmts_func, output_fmts_func,      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:315:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC’
  315 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC(_name ## _funcs,                            \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:340:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT’
  340 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT(rgb8_passthrough);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:306:43: note: (near initialization for ‘rgb8_passthrough_funcs.atomic_get_input_bus_fmts’)
  306 |         .hdmi_write_infoframe           = (hdmi_write_infoframe_func),                          \
      |                                           ^
drivers/gpu/drm/tests/drm_bridge_test.c:311:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  311 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(ident, input_fmts_func, output_fmts_func,      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:315:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC’
  315 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC(_name ## _funcs,                            \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:340:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT’
  340 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT(rgb8_passthrough);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:307:10: error: ‘const struct drm_bridge_funcs’ has no member named ‘hdmi_clear_infoframe’; did you mean ‘hdmi_clear_avi_infoframe’?
  307 |         .hdmi_clear_infoframe           = (hdmi_clear_infoframe_func),                          \
      |          ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:311:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  311 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(ident, input_fmts_func, output_fmts_func,      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:315:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC’
  315 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC(_name ## _funcs,                            \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:340:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT’
  340 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT(rgb8_passthrough);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:306:10: error: ‘const struct drm_bridge_funcs’ has no member named ‘hdmi_write_infoframe’; did you mean ‘hdmi_write_avi_infoframe’?
  306 |         .hdmi_write_infoframe           = (hdmi_write_infoframe_func),                          \
      |          ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:311:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  311 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(ident, input_fmts_func, output_fmts_func,      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:315:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC’
  315 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC(_name ## _funcs,                            \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:343:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT’
  343 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT(yuv8_passthrough);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:306:43: warning: initialized field overwritten [-Woverride-init]
  306 |         .hdmi_write_infoframe           = (hdmi_write_infoframe_func),                          \
      |                                           ^
drivers/gpu/drm/tests/drm_bridge_test.c:311:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  311 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(ident, input_fmts_func, output_fmts_func,      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:315:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC’
  315 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC(_name ## _funcs,                            \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:343:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT’
  343 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT(yuv8_passthrough);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:306:43: note: (near initialization for ‘yuv8_passthrough_funcs.atomic_get_input_bus_fmts’)
  306 |         .hdmi_write_infoframe           = (hdmi_write_infoframe_func),                          \
      |                                           ^
drivers/gpu/drm/tests/drm_bridge_test.c:311:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  311 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(ident, input_fmts_func, output_fmts_func,      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:315:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC’
  315 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC(_name ## _funcs,                            \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:343:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT’
  343 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT(yuv8_passthrough);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:307:10: error: ‘const struct drm_bridge_funcs’ has no member named ‘hdmi_clear_infoframe’; did you mean ‘hdmi_clear_avi_infoframe’?
  307 |         .hdmi_clear_infoframe           = (hdmi_clear_infoframe_func),                          \
      |          ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:311:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  311 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(ident, input_fmts_func, output_fmts_func,      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:315:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC’
  315 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC(_name ## _funcs,                            \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:343:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT’
  343 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT(yuv8_passthrough);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:306:10: error: ‘const struct drm_bridge_funcs’ has no member named ‘hdmi_write_infoframe’; did you mean ‘hdmi_write_avi_infoframe’?
  306 |         .hdmi_write_infoframe           = (hdmi_write_infoframe_func),                          \
      |          ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:311:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  311 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(ident, input_fmts_func, output_fmts_func,      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:315:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC’
  315 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC(_name ## _funcs,                            \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:346:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT’
  346 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT(rgb8_to_yuv8_or_id);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:306:43: warning: initialized field overwritten [-Woverride-init]
  306 |         .hdmi_write_infoframe           = (hdmi_write_infoframe_func),                          \
      |                                           ^
drivers/gpu/drm/tests/drm_bridge_test.c:311:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  311 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(ident, input_fmts_func, output_fmts_func,      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:315:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC’
  315 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC(_name ## _funcs,                            \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:346:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT’
  346 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT(rgb8_to_yuv8_or_id);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:306:43: note: (near initialization for ‘rgb8_to_yuv8_or_id_funcs.atomic_get_input_bus_fmts’)
  306 |         .hdmi_write_infoframe           = (hdmi_write_infoframe_func),                          \
      |                                           ^
drivers/gpu/drm/tests/drm_bridge_test.c:311:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  311 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(ident, input_fmts_func, output_fmts_func,      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:315:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC’
  315 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC(_name ## _funcs,                            \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:346:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT’
  346 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT(rgb8_to_yuv8_or_id);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:307:10: error: ‘const struct drm_bridge_funcs’ has no member named ‘hdmi_clear_infoframe’; did you mean ‘hdmi_clear_avi_infoframe’?
  307 |         .hdmi_clear_infoframe           = (hdmi_clear_infoframe_func),                          \
      |          ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:311:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  311 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(ident, input_fmts_func, output_fmts_func,      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:315:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC’
  315 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC(_name ## _funcs,                            \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:346:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT’
  346 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT(rgb8_to_yuv8_or_id);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:306:10: error: ‘const struct drm_bridge_funcs’ has no member named ‘hdmi_write_infoframe’; did you mean ‘hdmi_write_avi_infoframe’?
  306 |         .hdmi_write_infoframe           = (hdmi_write_infoframe_func),                          \
      |          ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:311:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  311 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(ident, input_fmts_func, output_fmts_func,      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:315:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC’
  315 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC(_name ## _funcs,                            \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:349:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT’
  349 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT(yuv8_to_rgb8_or_id);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:306:43: warning: initialized field overwritten [-Woverride-init]
  306 |         .hdmi_write_infoframe           = (hdmi_write_infoframe_func),                          \
      |                                           ^
drivers/gpu/drm/tests/drm_bridge_test.c:311:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  311 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(ident, input_fmts_func, output_fmts_func,      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:315:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC’
  315 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC(_name ## _funcs,                            \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:349:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT’
  349 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT(yuv8_to_rgb8_or_id);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:306:43: note: (near initialization for ‘yuv8_to_rgb8_or_id_funcs.atomic_get_input_bus_fmts’)
  306 |         .hdmi_write_infoframe           = (hdmi_write_infoframe_func),                          \
      |                                           ^
drivers/gpu/drm/tests/drm_bridge_test.c:311:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  311 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(ident, input_fmts_func, output_fmts_func,      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:315:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC’
  315 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC(_name ## _funcs,                            \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:349:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT’
  349 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT(yuv8_to_rgb8_or_id);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:307:10: error: ‘const struct drm_bridge_funcs’ has no member named ‘hdmi_clear_infoframe’; did you mean ‘hdmi_clear_avi_infoframe’?
  307 |         .hdmi_clear_infoframe           = (hdmi_clear_infoframe_func),                          \
      |          ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:311:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  311 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(ident, input_fmts_func, output_fmts_func,      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:315:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC’
  315 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC(_name ## _funcs,                            \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:349:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT’
  349 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT(yuv8_to_rgb8_or_id);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:306:10: error: ‘const struct drm_bridge_funcs’ has no member named ‘hdmi_write_infoframe’; did you mean ‘hdmi_write_avi_infoframe’?
  306 |         .hdmi_write_infoframe           = (hdmi_write_infoframe_func),                          \
      |          ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:311:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  311 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(ident, input_fmts_func, output_fmts_func,      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:315:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC’
  315 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC(_name ## _funcs,                            \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:352:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT’
  352 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT(rgb_producer);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:306:43: warning: initialized field overwritten [-Woverride-init]
  306 |         .hdmi_write_infoframe           = (hdmi_write_infoframe_func),                          \
      |                                           ^
drivers/gpu/drm/tests/drm_bridge_test.c:311:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  311 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(ident, input_fmts_func, output_fmts_func,      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:315:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC’
  315 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC(_name ## _funcs,                            \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:352:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT’
  352 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT(rgb_producer);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:306:43: note: (near initialization for ‘rgb_producer_funcs.atomic_get_input_bus_fmts’)
  306 |         .hdmi_write_infoframe           = (hdmi_write_infoframe_func),                          \
      |                                           ^
drivers/gpu/drm/tests/drm_bridge_test.c:311:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  311 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(ident, input_fmts_func, output_fmts_func,      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:315:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC’
  315 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC(_name ## _funcs,                            \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:352:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT’
  352 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT(rgb_producer);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:307:10: error: ‘const struct drm_bridge_funcs’ has no member named ‘hdmi_clear_infoframe’; did you mean ‘hdmi_clear_avi_infoframe’?
  307 |         .hdmi_clear_infoframe           = (hdmi_clear_infoframe_func),                          \
      |          ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:311:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  311 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(ident, input_fmts_func, output_fmts_func,      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:315:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC’
  315 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC(_name ## _funcs,                            \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:352:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT’
  352 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT(rgb_producer);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:306:10: error: ‘const struct drm_bridge_funcs’ has no member named ‘hdmi_write_infoframe’; did you mean ‘hdmi_write_avi_infoframe’?
  306 |         .hdmi_write_infoframe           = (hdmi_write_infoframe_func),                          \
      |          ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:311:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  311 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(ident, input_fmts_func, output_fmts_func,      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:315:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC’
  315 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC(_name ## _funcs,                            \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:355:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT’
  355 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT(rgb_yuv444_yuv420_producer);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:306:43: warning: initialized field overwritten [-Woverride-init]
  306 |         .hdmi_write_infoframe           = (hdmi_write_infoframe_func),                          \
      |                                           ^
drivers/gpu/drm/tests/drm_bridge_test.c:311:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  311 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(ident, input_fmts_func, output_fmts_func,      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:315:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC’
  315 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC(_name ## _funcs,                            \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:355:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT’
  355 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT(rgb_yuv444_yuv420_producer);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:306:43: note: (near initialization for ‘rgb_yuv444_yuv420_producer_funcs.atomic_get_input_bus_fmts’)
  306 |         .hdmi_write_infoframe           = (hdmi_write_infoframe_func),                          \
      |                                           ^
drivers/gpu/drm/tests/drm_bridge_test.c:311:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  311 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(ident, input_fmts_func, output_fmts_func,      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:315:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC’
  315 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC(_name ## _funcs,                            \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:355:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT’
  355 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT(rgb_yuv444_yuv420_producer);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:307:10: error: ‘const struct drm_bridge_funcs’ has no member named ‘hdmi_clear_infoframe’; did you mean ‘hdmi_clear_avi_infoframe’?
  307 |         .hdmi_clear_infoframe           = (hdmi_clear_infoframe_func),                          \
      |          ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:311:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  311 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(ident, input_fmts_func, output_fmts_func,      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:315:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC’
  315 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC(_name ## _funcs,                            \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:355:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT’
  355 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT(rgb_yuv444_yuv420_producer);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:306:10: error: ‘const struct drm_bridge_funcs’ has no member named ‘hdmi_write_infoframe’; did you mean ‘hdmi_write_avi_infoframe’?
  306 |         .hdmi_write_infoframe           = (hdmi_write_infoframe_func),                          \
      |          ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:311:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  311 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(ident, input_fmts_func, output_fmts_func,      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:315:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC’
  315 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC(_name ## _funcs,                            \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:358:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT’
  358 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT(rgb8_to_id_yuv8_or_yuv8_to_yuv422_yuv420);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:306:43: warning: initialized field overwritten [-Woverride-init]
  306 |         .hdmi_write_infoframe           = (hdmi_write_infoframe_func),                          \
      |                                           ^
drivers/gpu/drm/tests/drm_bridge_test.c:311:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  311 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(ident, input_fmts_func, output_fmts_func,      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:315:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC’
  315 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC(_name ## _funcs,                            \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:358:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT’
  358 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT(rgb8_to_id_yuv8_or_yuv8_to_yuv422_yuv420);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:306:43: note: (near initialization for ‘rgb8_to_id_yuv8_or_yuv8_to_yuv422_yuv420_funcs.atomic_get_input_bus_fmts’)
  306 |         .hdmi_write_infoframe           = (hdmi_write_infoframe_func),                          \
      |                                           ^
drivers/gpu/drm/tests/drm_bridge_test.c:311:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  311 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(ident, input_fmts_func, output_fmts_func,      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:315:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC’
  315 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC(_name ## _funcs,                            \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:358:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT’
  358 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT(rgb8_to_id_yuv8_or_yuv8_to_yuv422_yuv420);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:307:10: error: ‘const struct drm_bridge_funcs’ has no member named ‘hdmi_clear_infoframe’; did you mean ‘hdmi_clear_avi_infoframe’?
  307 |         .hdmi_clear_infoframe           = (hdmi_clear_infoframe_func),                          \
      |          ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:311:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  311 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(ident, input_fmts_func, output_fmts_func,      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:315:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC’
  315 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC(_name ## _funcs,                            \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:358:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT’
  358 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT(rgb8_to_id_yuv8_or_yuv8_to_yuv422_yuv420);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:306:10: error: ‘const struct drm_bridge_funcs’ has no member named ‘hdmi_write_infoframe’; did you mean ‘hdmi_write_avi_infoframe’?
  306 |         .hdmi_write_infoframe           = (hdmi_write_infoframe_func),                          \
      |          ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:311:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  311 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(ident, input_fmts_func, output_fmts_func,      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:315:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC’
  315 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC(_name ## _funcs,                            \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:361:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT’
  361 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT(rgb8_yuv444_yuv422_passthrough);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:306:43: warning: initialized field overwritten [-Woverride-init]
  306 |         .hdmi_write_infoframe           = (hdmi_write_infoframe_func),                          \
      |                                           ^
drivers/gpu/drm/tests/drm_bridge_test.c:311:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  311 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(ident, input_fmts_func, output_fmts_func,      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:315:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC’
  315 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC(_name ## _funcs,                            \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:361:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT’
  361 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT(rgb8_yuv444_yuv422_passthrough);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:306:43: note: (near initialization for ‘rgb8_yuv444_yuv422_passthrough_funcs.atomic_get_input_bus_fmts’)
  306 |         .hdmi_write_infoframe           = (hdmi_write_infoframe_func),                          \
      |                                           ^
drivers/gpu/drm/tests/drm_bridge_test.c:311:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  311 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(ident, input_fmts_func, output_fmts_func,      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:315:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC’
  315 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC(_name ## _funcs,                            \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:361:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT’
  361 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT(rgb8_yuv444_yuv422_passthrough);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:307:10: error: ‘const struct drm_bridge_funcs’ has no member named ‘hdmi_clear_infoframe’; did you mean ‘hdmi_clear_avi_infoframe’?
  307 |         .hdmi_clear_infoframe           = (hdmi_clear_infoframe_func),                          \
      |          ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:311:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  311 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(ident, input_fmts_func, output_fmts_func,      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:315:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC’
  315 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC(_name ## _funcs,                            \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:361:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT’
  361 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT(rgb8_yuv444_yuv422_passthrough);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:306:10: error: ‘const struct drm_bridge_funcs’ has no member named ‘hdmi_write_infoframe’; did you mean ‘hdmi_write_avi_infoframe’?
  306 |         .hdmi_write_infoframe           = (hdmi_write_infoframe_func),                          \
      |          ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:311:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  311 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(ident, input_fmts_func, output_fmts_func,      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:315:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC’
  315 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC(_name ## _funcs,                            \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:364:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT’
  364 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT(yuv444_yuv422_rgb8_passthrough);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:306:43: warning: initialized field overwritten [-Woverride-init]
  306 |         .hdmi_write_infoframe           = (hdmi_write_infoframe_func),                          \
      |                                           ^
drivers/gpu/drm/tests/drm_bridge_test.c:311:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  311 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(ident, input_fmts_func, output_fmts_func,      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:315:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC’
  315 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC(_name ## _funcs,                            \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:364:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT’
  364 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT(yuv444_yuv422_rgb8_passthrough);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:306:43: note: (near initialization for ‘yuv444_yuv422_rgb8_passthrough_funcs.atomic_get_input_bus_fmts’)
  306 |         .hdmi_write_infoframe           = (hdmi_write_infoframe_func),                          \
      |                                           ^
drivers/gpu/drm/tests/drm_bridge_test.c:311:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  311 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(ident, input_fmts_func, output_fmts_func,      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:315:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC’
  315 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC(_name ## _funcs,                            \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:364:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT’
  364 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT(yuv444_yuv422_rgb8_passthrough);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:307:10: error: ‘const struct drm_bridge_funcs’ has no member named ‘hdmi_clear_infoframe’; did you mean ‘hdmi_clear_avi_infoframe’?
  307 |         .hdmi_clear_infoframe           = (hdmi_clear_infoframe_func),                          \
      |          ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:311:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  311 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(ident, input_fmts_func, output_fmts_func,      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:315:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC’
  315 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_FUNC(_name ## _funcs,                            \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:364:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT’
  364 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT(yuv444_yuv422_rgb8_passthrough);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:306:10: error: ‘const struct drm_bridge_funcs’ has no member named ‘hdmi_write_infoframe’; did you mean ‘hdmi_write_avi_infoframe’?
  306 |         .hdmi_write_infoframe           = (hdmi_write_infoframe_func),                          \
      |          ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:334:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  334 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(_name ## _hdmi ## _funcs,                      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:365:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI’
  365 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI(yuv444_yuv422_rgb8_passthrough);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:306:43: error: initialization of ‘u32 * (*)(struct drm_bridge *, struct drm_bridge_state *, struct drm_crtc_state *, struct drm_connector_state *, u32,  unsigned int *)’ {aka ‘unsigned int * (*)(struct drm_bridge *, struct drm_bridge_state *, struct drm_crtc_state *, struct drm_connector_state *, unsigned int,  unsigned int *)’} from incompatible pointer type ‘int (*)(struct drm_bridge *, enum hdmi_infoframe_type,  const u8 *, size_t)’ {aka ‘int (*)(struct drm_bridge *, enum hdmi_infoframe_type,  const unsigned char *, long unsigned int)’} [-Werror=incompatible-pointer-types]
  306 |         .hdmi_write_infoframe           = (hdmi_write_infoframe_func),                          \
      |                                           ^
drivers/gpu/drm/tests/drm_bridge_test.c:334:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  334 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(_name ## _hdmi ## _funcs,                      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:365:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI’
  365 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI(yuv444_yuv422_rgb8_passthrough);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:306:43: note: (near initialization for ‘yuv444_yuv422_rgb8_passthrough_hdmi_funcs.atomic_get_input_bus_fmts’)
  306 |         .hdmi_write_infoframe           = (hdmi_write_infoframe_func),                          \
      |                                           ^
drivers/gpu/drm/tests/drm_bridge_test.c:334:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  334 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(_name ## _hdmi ## _funcs,                      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:365:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI’
  365 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI(yuv444_yuv422_rgb8_passthrough);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:306:43: warning: initialized field overwritten [-Woverride-init]
  306 |         .hdmi_write_infoframe           = (hdmi_write_infoframe_func),                          \
      |                                           ^
drivers/gpu/drm/tests/drm_bridge_test.c:334:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  334 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(_name ## _hdmi ## _funcs,                      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:365:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI’
  365 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI(yuv444_yuv422_rgb8_passthrough);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:306:43: note: (near initialization for ‘yuv444_yuv422_rgb8_passthrough_hdmi_funcs.atomic_get_input_bus_fmts’)
  306 |         .hdmi_write_infoframe           = (hdmi_write_infoframe_func),                          \
      |                                           ^
drivers/gpu/drm/tests/drm_bridge_test.c:334:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  334 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(_name ## _hdmi ## _funcs,                      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:365:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI’
  365 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI(yuv444_yuv422_rgb8_passthrough);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:307:10: error: ‘const struct drm_bridge_funcs’ has no member named ‘hdmi_clear_infoframe’; did you mean ‘hdmi_clear_avi_infoframe’?
  307 |         .hdmi_clear_infoframe           = (hdmi_clear_infoframe_func),                          \
      |          ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:334:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  334 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(_name ## _hdmi ## _funcs,                      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:365:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI’
  365 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI(yuv444_yuv422_rgb8_passthrough);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:307:43: error: initialization of ‘int (*)(struct drm_bridge *, struct drm_bridge_state *, struct drm_crtc_state *, struct drm_connector_state *)’ from incompatible pointer type ‘int (*)(struct drm_bridge *, enum hdmi_infoframe_type)’ [-Werror=incompatible-pointer-types]
  307 |         .hdmi_clear_infoframe           = (hdmi_clear_infoframe_func),                          \
      |                                           ^
drivers/gpu/drm/tests/drm_bridge_test.c:334:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  334 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(_name ## _hdmi ## _funcs,                      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:365:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI’
  365 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI(yuv444_yuv422_rgb8_passthrough);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:307:43: note: (near initialization for ‘yuv444_yuv422_rgb8_passthrough_hdmi_funcs.atomic_check’)
  307 |         .hdmi_clear_infoframe           = (hdmi_clear_infoframe_func),                          \
      |                                           ^
drivers/gpu/drm/tests/drm_bridge_test.c:334:9: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC’
  334 |         DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI_FUNC(_name ## _hdmi ## _funcs,                      \
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c:365:1: note: in expansion of macro ‘DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI’
  365 | DRM_BRIDGE_ATOMIC_WITH_BUS_FMT_HDMI(yuv444_yuv422_rgb8_passthrough);
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_bridge_test.c: In function ‘drm_test_bridge_chain_init’:
drivers/gpu/drm/tests/drm_bridge_test.c:520:36: error: ‘const struct drm_bridge_funcs’ has no member named ‘hdmi_clear_infoframe’; did you mean ‘hdmi_clear_avi_infoframe’?
  520 |                 if (bridge->funcs->hdmi_clear_infoframe &&
      |                                    ^~~~~~~~~~~~~~~~~~~~
      |                                    hdmi_clear_avi_infoframe
drivers/gpu/drm/tests/drm_bridge_test.c:521:36: error: ‘const struct drm_bridge_funcs’ has no member named ‘hdmi_write_infoframe’; did you mean ‘hdmi_write_avi_infoframe’?
  521 |                     bridge->funcs->hdmi_write_infoframe) {
      |                                    ^~~~~~~~~~~~~~~~~~~~
      |                                    hdmi_write_avi_infoframe
In file included from drivers/gpu/drm/tests/drm_bridge_test.c:20:
drivers/gpu/drm/tests/drm_kunit_edid.h: At top level:
drivers/gpu/drm/tests/drm_kunit_edid.h:958:28: warning: ‘test_edid_hdmi_4k_rgb_yuv420_dc_max_340mhz’ defined but not used [-Wunused-const-variable=]
  958 | static const unsigned char test_edid_hdmi_4k_rgb_yuv420_dc_max_340mhz[] = {
      |                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_kunit_edid.h:726:28: warning: ‘test_edid_hdmi_1080p_rgb_yuv_dc_max_340mhz’ defined but not used [-Wunused-const-variable=]
  726 | static const unsigned char test_edid_hdmi_1080p_rgb_yuv_dc_max_340mhz[] = {
      |                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_kunit_edid.h:612:28: warning: ‘test_edid_hdmi_1080p_rgb_yuv_dc_max_200mhz’ defined but not used [-Wunused-const-variable=]
  612 | static const unsigned char test_edid_hdmi_1080p_rgb_yuv_dc_max_200mhz[] = {
      |                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_kunit_edid.h:498:28: warning: ‘test_edid_hdmi_1080p_rgb_max_340mhz’ defined but not used [-Wunused-const-variable=]
  498 | static const unsigned char test_edid_hdmi_1080p_rgb_max_340mhz[] = {
      |                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_kunit_edid.h:390:28: warning: ‘test_edid_hdmi_1080p_rgb_max_200mhz_hdr’ defined but not used [-Wunused-const-variable=]
  390 | static const unsigned char test_edid_hdmi_1080p_rgb_max_200mhz_hdr[] = {
      |                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_kunit_edid.h:271:28: warning: ‘test_edid_hdmi_1080p_rgb_max_200mhz’ defined but not used [-Wunused-const-variable=]
  271 | static const unsigned char test_edid_hdmi_1080p_rgb_max_200mhz[] = {
      |                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_kunit_edid.h:163:28: warning: ‘test_edid_hdmi_1080p_rgb_max_100mhz’ defined but not used [-Wunused-const-variable=]
  163 | static const unsigned char test_edid_hdmi_1080p_rgb_max_100mhz[] = {
      |                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/tests/drm_kunit_edid.h:57:28: warning: ‘test_edid_dvi_1080p’ defined but not used [-Wunused-const-variable=]
   57 | static const unsigned char test_edid_dvi_1080p[] = {
      |                            ^~~~~~~~~~~~~~~~~~~
cc1: some warnings being treated as errors
make[6]: *** [scripts/Makefile.build:287: drivers/gpu/drm/tests/drm_bridge_test.o] Error 1
make[5]: *** [scripts/Makefile.build:544: drivers/gpu/drm/tests] Error 2
make[4]: *** [scripts/Makefile.build:544: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:544: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:544: drivers] Error 2
make[1]: *** [/home/kbuild/kernel/Makefile:2054: .] Error 2
make: *** [Makefile:248: __sub-make] Error 2
Build failed, no error log produced


