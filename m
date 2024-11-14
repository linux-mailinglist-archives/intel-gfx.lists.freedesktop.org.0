Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A409C90F1
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2024 18:39:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA18A10E2CE;
	Thu, 14 Nov 2024 17:39:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3511710E2CE;
 Thu, 14 Nov 2024 17:39:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?handle_hdmi_connector_init_failures?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Nov 2024 17:39:55 -0000
Message-ID: <173160599521.4146016.8357736964631538923@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <cover.1731599468.git.jani.nikula@intel.com>
In-Reply-To: <cover.1731599468.git.jani.nikula@intel.com>
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

== Series Details ==

Series: drm/i915/display: handle hdmi connector init failures
URL   : https://patchwork.freedesktop.org/series/141365/
State : warning

== Summary ==

Error: dim checkpatch failed
322c808de7bf drm/i915/hdmi: propagate errors from intel_hdmi_init_connector()
-:68: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#68: FILE: drivers/gpu/drm/i915/display/intel_hdmi.h:26:
+bool intel_hdmi_init_connector(struct intel_digital_port *dig_port,
+			      struct intel_connector *intel_connector);

total: 0 errors, 0 warnings, 1 checks, 46 lines checked
2ff34f5d5836 drm/i915/hdmi: add error handling in g4x_hdmi_init()
508b70af4c76 drm/i915/ddi: propagate errors from intel_ddi_init_hdmi_connector()


