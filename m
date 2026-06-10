Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pFkpJF+jKWpzbAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:48:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B55266C0B9
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:48:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sms-medipool.de header.s=mail header.b=pRMYIsz+;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=reject) header.from=sms-medipool.de
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5EC710EB56;
	Wed, 10 Jun 2026 17:48:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.sms-medipool.de (mail.sms-medipool.de [178.63.14.108])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30F5A10EB4D;
 Wed, 10 Jun 2026 17:48:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sms-medipool.de;
 s=mail; t=1781113690;
 bh=aG5mD1+nlsKXiZZjZ1Id268083faWF77k5f+YUeTy/o=;
 h=From:To:Cc:Subject:Date:From;
 b=pRMYIsz+TScJHbASykALpbKSUFbzH+lzRy7JBHE+pbhp9mTvo7vByPuDTzaChGrJS
 kQIv/oeRFZPw7tT2pgSkU+vnWjMfYsimXeImTX/H75oT6fsHsLv2mdO11JuBfxek01
 6e0rpsuZpJOAOqve1j9/6jZSCNrD05v5pCzKivlDsldytwFThJqa006C3u4+8GmiMM
 mCLIv06KRgr6qJxJxHuzy8fAd8OmMHia+ZP+Rswnx1eo4Su1kFro3iWYsfBioiqW2Y
 UYROrfwmw9tCl9AFE+PC41HtnvZhBYYXVWUq4eZJYjBBJXPTq7sxiUaGmymIYfUMxu
 eNzCzTsCbalXQ==
Received: from mail.stoss-medica.de (mail.stoss-medica.de [213.147.17.40])
 by mail.sms-medipool.de (Postfix) with ESMTPS id D2F5711B5D;
 Wed, 10 Jun 2026 19:48:09 +0200 (CEST)
Received: from NUC16-Linux.sb.golima.de ([95.88.98.111])
 by mail.stoss-medica.de (Kerio Connect 10.0.8 patch 2) with ESMTP;
 Wed, 10 Jun 2026 19:48:08 +0200
From: Alexander Kaplan <alexander.kaplan@sms-medipool.de>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, alexander.kaplan@sms-medipool.de
Subject: [PATCH 0/2] drm/dp: Avoid RBR on Synaptics VMM7100 PCONs failing
 channel EQ
Date: Wed, 10 Jun 2026 19:48:05 +0200
Message-ID: <20260610174807.6231-1-alexander.kaplan@sms-medipool.de>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sms-medipool.de,reject];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[sms-medipool.de:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.kaplan@sms-medipool.de,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[sms-medipool.de:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,sms-medipool.de:dkim,sms-medipool.de:mid,sms-medipool.de:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0B55266C0B9

Synaptics VMM7100 based DP-to-HDMI 2.1 protocol converters with branch
firmware 7.1 (branch dev-ID "SYNAq") deterministically fail 8b/10b
channel equalization at the 4-lane RBR link configuration.
i915's link config optimization picks exactly that configuration for
low resolution modes (e.g. a 1080p boot greeter), and the resulting
training fallback permanently degrades the link to 2 lanes, since
these PCONs never raise a long HPD that would re-sync the link
parameters.
On the affected system this capped a 4k60 desktop mode at 6 bpc
dithered output.

The failure was isolated to the converter firmware by training the
full rate x lane matrix via debugfs and by comparing two dongles
based on the same VMM7100 chip (HW-rev 1.0): branch firmware 7.1
fails 4-lane RBR, firmware 7.2 trains it fine.
Only 4-lane RBR fails.
Clock recovery passes, channel equalization never converges with the
device toggling its requested vswing/pre-emphasis levels until the
attempt limit.
The Intel source PHY and the board's non-transparent LTTPR grant all
requests during the failing sequence.
Windows and macOS are unaffected as they don't train low resolution
modes at RBR.

Patch 1 adds a DPCD quirk entry for these devices.
The matching can't distinguish firmware revisions, so devices with
fixed firmware are matched as well, which is free since any mode
that fits RBR also fits HBR.
Patch 2 makes i915 skip RBR for quirked devices when computing the
sink rates, unless RBR is the only available rate, so a hypothetical
RBR-only device keeps its current behavior.
The quirk itself lives in the shared DPCD quirk table, so other
drivers can handle it as well if needed.
Link rate selection is driver specific, hence the handling is
implemented in i915 (the only current consumer of the table's link
rate quirks, cf. DP_DPCD_QUIRK_CAN_DO_MAX_LINK_RATE_3_24_GBPS).

Tested on PTL (xe) with the affected PCON: the boot greeter now
trains 2x270000, no training failure or fallback occurs, and the
4k60 desktop mode trains 4x810000 from boot.

This series is part of a set of independent fixes for the USB-C to
DP to HDMI 2.1 protocol converter (PCON) path on the same system,
see the first part [1] for an overview.
Each series/patch stands on its own and can be merged independently.

[1] https://lore.kernel.org/r/20260610174413.5881-1-alexander.kaplan@sms-medipool.de

Alexander Kaplan (2):
  drm/dp: Add quirk for Synaptics PCONs failing channel EQ at RBR
  drm/i915/dp: Skip RBR for sinks with the NO_LINK_RATE_RBR quirk

 drivers/gpu/drm/display/drm_dp_helper.c |  3 +++
 drivers/gpu/drm/i915/display/intel_dp.c | 23 +++++++++++++++++------
 include/drm/display/drm_dp_helper.h     |  8 ++++++++
 3 files changed, 28 insertions(+), 6 deletions(-)

-- 
2.54.0


