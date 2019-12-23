Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2E8A129AA5
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 20:59:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FEDA6E0CE;
	Mon, 23 Dec 2019 19:59:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6D086E0CB
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2019 19:59:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 11:59:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,348,1571727600"; d="scan'208";a="219598186"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga003.jf.intel.com with ESMTP; 23 Dec 2019 11:59:08 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Dec 2019 11:58:41 -0800
Message-Id: <20191223195850.25997-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/9] RFC: display/ddi: keep register indexes in
 a table
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

First 3 commits are more or less independent from this RFC and pretty
harmless "drive-by changes".

For the others: my intention is to get rid of the never ending checks
for platform to decide what to depending on the port and phy,
conversions from port to phy, port to tc_port, etc.

For that I decided to create a table-based initialization approach in
which I keep the useful indexes for each platform: these indexes work
similarly to what we have on the pll part. "enum port" is mostly a
"driver thing" and when all the conversions take place, it would allow
us to stop using the port as indexes to register or register bits. "enum
tc_port", "enum phy", etc are not meaningful numbers from the spec POV
and change with every other platform.

I'm doing the conversion to use the new indexes, but the effort is
paramount as the port <-> tc_port <-> phy, paired with the checks
intel_phy_is_combo(), are everywhere, hence this RFC on the idea before
I continue the conversions.

Right now I'm keeping a intel_ddi_port_info inside intel_digital_port
(see last commit). I first imagined I could ignore the dsi part and let
it leave on its own world, but upon converting
icl_dpclka_cfgcr0_clk_off() and  icl_sanitize_encoder_pll_mapping() I
noticed this is probably not true, since it re-uses the phy mapping.
So, I would probably have to move the port_info to intel_encoder and
make let the dsi init also fill it up or let the dsi init() call be part
of the ddi init. IMO the latter is better, but pulls another great
amount of work to complete.

RFC: do you see other shortcomings? I think this provides a nice cleanup
but others may disagree.


Lucas De Marchi (9):
  drm/i915/display: nuke skl workaround for pre-production hw
  drm/i915/display: remove alias to dig_port
  drm/i915/display: prefer the more common dig_port name
  drm/i915/display: start description-based ddi initialization
  drm/i915/display: move icl to description-based ddi init
  drm/i915/display: description-based initialization for remaining ddi
    platforms
  drm/i915/display: add phy, vbt and ddi indexes
  drm/i915/display: refer to vbt info as vbt_port_info
  drm/i915/display: use port_info on intel_ddi_init

 drivers/gpu/drm/i915/display/intel_ddi.c      |  93 +++----
 drivers/gpu/drm/i915/display/intel_ddi.h      |   8 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 232 ++++++++++++------
 drivers/gpu/drm/i915/display/intel_display.h  |   9 +-
 .../drm/i915/display/intel_display_power.c    |   4 +-
 .../drm/i915/display/intel_display_types.h    |  20 +-
 drivers/gpu/drm/i915/display/intel_dpio_phy.c |  38 +--
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  20 +-
 8 files changed, 269 insertions(+), 155 deletions(-)

-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
