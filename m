Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FyQgOHaiKWorbAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:44:22 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5A666C06D
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:44:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sms-medipool.de header.s=mail header.b=y+FFoEgm;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=reject) header.from=sms-medipool.de
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38E6410E528;
	Wed, 10 Jun 2026 17:44:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.sms-medipool.de (mail.sms-medipool.de [178.63.14.108])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB56F10E6B6;
 Wed, 10 Jun 2026 17:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sms-medipool.de;
 s=mail; t=1781113456;
 bh=bZFGpJySzKQnohFV+X73wcgkGlrAGFLBt7SXWrqmRUE=;
 h=From:To:Cc:Subject:Date:From;
 b=y+FFoEgmCKs2UtqTZ+eQF6SDY4ClnQ25/B8GOGBrrgn9GsgGWKb4nkvGmZx7WK/AT
 h457pi8JFimLGRnhNE5sFlTaj9257qS9giPdkSCMkgBOr6wHqf4M7OqWaS74Xm+ezV
 gJDxAn+eDxQkn/FsRH+JEg978hF/0DwQlh3xed/j/hfNptUPkWWAXvOIKkO1J3IWhW
 V5fpv/4wgoHD58rX/rm2i0oKRnnHHDcxpE6hU2l1M7rscpdR7VDUNusnc13czTkKqs
 NaG25aKWr+w4BOYnUiG9XqCgDeVGIdtEdVVBz82UgCSp2praSJoi3LK5AlX39I33Vf
 CH42WS/94gncA==
Received: from mail.stoss-medica.de (mail.stoss-medica.de [213.147.17.40])
 by mail.sms-medipool.de (Postfix) with ESMTPS id D569311B52;
 Wed, 10 Jun 2026 19:44:15 +0200 (CEST)
Received: from NUC16-Linux.sb.golima.de ([95.88.98.111])
 by mail.stoss-medica.de (Kerio Connect 10.0.8 patch 2) with ESMTP;
 Wed, 10 Jun 2026 19:44:13 +0200
From: Alexander Kaplan <alexander.kaplan@sms-medipool.de>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Imre Deak <imre.deak@intel.com>,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, alexander.kaplan@sms-medipool.de
Subject: [PATCH 0/3] drm/i915/dp: Fix FRL rate selection and deep color for
 HDMI sinks behind FRL PCONs
Date: Wed, 10 Jun 2026 19:44:10 +0200
Message-ID: <20260610174413.5881-1-alexander.kaplan@sms-medipool.de>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[sms-medipool.de,reject];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[sms-medipool.de:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[10];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.kaplan@sms-medipool.de,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,sms-medipool.de:dkim,sms-medipool.de:mid,sms-medipool.de:from_mime];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[sms-medipool.de:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8E5A666C06D

HDMI 2.1 sinks behind a DP to HDMI 2.1 PCON are currently limited to
8bpc, and the FRL link often trains below what the hardware supports,
because

 1) the sink's DSC max FRL rate caps the trained FRL rate even when
    the PCON has no DSC encoder and thus never produces compressed
    transport, and

 2) the bpc computation validates HDMI sinks behind a branch device
    against the sink's TMDS character rate limits even when the video
    is transmitted over FRL.

On a Panther Lake NUC (xe) with a Synaptics VMM7100 PCON and an LG
OLED G4 (Max_FRL_Rate 48 Gbps, DSC_Max_FRL_Rate 24 Gbps, max TMDS
character rate 600 MHz) this means: FRL trains at 24 instead of
48 Gbps and 4k60 is limited to RGB 8bpc, while Windows (RGB 10bpc,
FRL 40G) and macOS (RGB 12bpc, FRL 48G) drive the same hardware with
deep color.

Patch 2 applies the sink's DSC max FRL rate only when the PCON
actually has a DSC 1.2 encoder (the gate intel_dp_pcon_dsc_configure()
already uses).
Patch 3 makes intel_dp_hdmi_compute_bpc() validate the required
bandwidth against the FRL bandwidth the link will be trained with,
instead of the TMDS limits, for FRL-capable PCON+sink combos.

Patch 1 makes the link config prefer DSC over a dithered 6 bpc
uncompressed output.
This is a quality improvement on its own, but it is also ordered
first for bisectability.
Patches 2 and 3 open up RGB configurations on FRL links for which
previously only the YCbCr 4:2:0 fallback existed, and modes which fit
such a link uncompressed only with 6 bpc (e.g. 4k120 on a 4 lane HBR3
link) would then select an RGB 6 bpc output.
The tested Synaptics PCONs (two device families) cannot display a
6 bpc stream at such pixel clocks, so without patch 1 this would
trade the previous 4:2:0 picture for a black screen.

With the full series the setup above runs 4k60 at RGB 12bpc with HDR
at FRL 48G, and 4k120 at RGB 12bpc (DSC, both SDR and HDR), stable
across modesets, hotplugs and suspend/resume.
This was also verified on a second Synaptics PCON device family (a
TBT4 dock, SYNAa) and against a VMM7100 with a DP branch ID (where
the HDMI paths stay inert).

A related observation, left for a separate change:
intel_dp_mode_valid_downstream() checks the FRL bandwidth only
against the PCON's limit (not the sink's max FRL rate from the EDID)
and skips the TMDS/dotclock checks even for non-FRL sinks behind an
FRL capable PCON.
Aligning it with the limit used in patch 3 would make .mode_valid()
pruning consistent with the compute path.

This series is the first part of a set of independent fixes for the
USB-C to DP to HDMI 2.1 protocol converter (PCON) path, found and
verified on an ASUS NUC 16 Pro (Panther Lake, xe driver) driving an
LG OLED TV through Synaptics VMM7100 based adapters.
Two dongle firmware lines and a TB4 dock were tested.
Each series/patch stands on its own and can be merged independently.
This series targets drm-intel, the DP helper patches of the set
target drm-misc.

The other parts, to follow shortly:
  drm/dp: Avoid RBR on Synaptics VMM7100 PCONs failing channel EQ
  drm/dp: Read the PCON max FRL bandwidth only for HDMI DFPs
  drm/dp: Service the CEC tunneling IRQ flags without CEC_IRQ in ESI1

Alexander Kaplan (3):
  drm/i915/dp: Prefer DSC over a 6 bpc uncompressed output
  drm/i915/dp: Ignore the sink's DSC max FRL rate without a PCON DSC
    encoder
  drm/i915/dp: Check FRL bandwidth limits in the HDMI bpc computation

 drivers/gpu/drm/i915/display/intel_dp.c | 58 ++++++++++++++++++++++++-
 1 file changed, 56 insertions(+), 2 deletions(-)

-- 
2.54.0


