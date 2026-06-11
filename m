Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2A3oBUUELGqyJgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2026 15:06:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E32A6799F3
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2026 15:06:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=TQvUZiLt;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=gmail.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECB0610EA2E;
	Fri, 12 Jun 2026 13:06:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
 [209.85.222.179])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FAE910EF03
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jun 2026 12:54:12 +0000 (UTC)
Received: by mail-qk1-f179.google.com with SMTP id
 af79cd13be357-91583dc3a8bso104549285a.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jun 2026 05:54:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1781182451; x=1781787251; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=pApUitxnpFLRw4B63hSdHQtKPDI/sltH6G53COwClfE=;
 b=TQvUZiLt93n3vxBfF/J+7PdBQoPZWevztBgcDIgUsm1Hu0gc7l8jUsOTAAKNQ89O7c
 jtGBdwnaz7kGnKYRJ+Vkpszwh6PqqneWtmF8QMIiwBtjT3l8zIZN8cvZwsNZDLigLrYj
 XFs21Drp1BoIkctyPn0JyldGSo9hadUcF3AVIpj3hibH04/jB6Q05yGNUCeMgAckUvQe
 RoEqz4vWH9PatWETIWitqRagWhTxSjUWwTp5udrzKjUjMMVPSF+HXCkO8J36L9N0tnWr
 isU+rPAu9YDQPDD7hJ9m1miwd5f6LC99UZxEyqJop4B5tS1XuVmzrt3SrsrJYc368P8q
 j+Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1781182451; x=1781787251;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=pApUitxnpFLRw4B63hSdHQtKPDI/sltH6G53COwClfE=;
 b=ZsNJsipCAuc601RY0TjkPNanuUngWFhecg3JIDR2kMzRJxrDDsmXQqiwnJOD+0u1dV
 Z3QG8lWW90lIPT/nCtMuxpVjDLS/7NsgNvkyHJ7tuFU5ZQjFUKt0TBaQWBHQMkSUg5I7
 Ktt0gjFKDyzyHvLe0AQxMTDS3vXHJAbsoIh7kQTy5RByC8Ux8wiXhISUh4V7YeuLuml7
 9IH44phLIhwDA4/I4C2iZtQ2xhUKRMsCL0Jz65P3Yaec1RYaOboAm1JS8latqyXVgcAE
 tFkv3vf7VxjgLm9P2M5OrQogb+NI/FO5OGbLYBNmMZl1s7S1E06j0RAvS6bd8XQ5H2gI
 4DQg==
X-Gm-Message-State: AOJu0YwEBIGhKEJ7QVpDJ5oeUreBiUAn16uwko3JEyrfrBCNR79iJMVf
 5sCrhRekn35EkPqtd+g2efbxVW4KnNStPimZ5RwKtTQAVUPJosjTFQhGcp0X8zaG
X-Gm-Gg: Acq92OGus4FLnAq5AXb1UqBWQX1xVkMCnabE4pa/iznDvm09AZdpVkxLsDcM4HEbmP2
 NxbdBmp7vbdCqjjC1/Ob1WTMadWhmkkS4KRH54PEC09ypCmWJPS3MYrLVLh1ScG0/9eKwYcy6l0
 u5FfZAOZG0rla0TB9EaDB91QoQCrFg3AaONTBXobbcBjdS37cYimGe5PCBpkaDfX8Rfa6hZ2AGH
 JtlypmYJ4d4pmyOGnQV31HbP+tAllWW2eIjP70QVp5FeCBWq/tzEwmOCLXBbfVn4HgznssFqMzF
 LCzaanlHNpvbWh3DMRpBmO/91GeasCPWPbdZcYXiSQfAS+p7FOH0rl8lij6Z/sTJlnU05EI710W
 sGzRq5ubUnd64bUsbjSGN5vRjBab+u/o4FhftGxLRjYUN2ikvJrZt7iufMXC6MyzM/sO0BVLCaq
 6ssJ2nWCixHwgLV6JUL9HPc58SzOa95fxByw3tb97k0lB9FmVXFHGMfbSdMUCQLQy8TbTm/N68p
 mb2ZhwojFuuEH7MwccaNzkwoCchIOS7ao5SdycY+s5wVc0i7JBFSA8Ucs9QxjUdMGYvqqaR4xmE
 Dw==
X-Received: by 2002:a05:620a:6486:b0:914:ea37:6f14 with SMTP id
 af79cd13be357-9160ab058bdmr226309185a.1.1781182451197; 
 Thu, 11 Jun 2026 05:54:11 -0700 (PDT)
Received: from debian-t14-gen1-fuhrysteve.fuhry.app
 (6.sub-75-230-138.myvzw.com. [75.230.138.6])
 by smtp.gmail.com with ESMTPSA id
 af79cd13be357-9160accaf7asm176311485a.19.2026.06.11.05.54.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Jun 2026 05:54:10 -0700 (PDT)
From: "Stephen J. Fuhry" <fuhrysteve@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Animesh Manna <animesh.manna@intel.com>, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, "Stephen J . Fuhry" <fuhrysteve@gmail.com>
Subject: [PATCH] drm/i915/display: guard intel_alpm_get_error() against
 non-ALPM sinks
Date: Thu, 11 Jun 2026 08:54:08 -0400
Message-ID: <20260611125408.676626-1-fuhrysteve@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 12 Jun 2026 13:06:10 +0000
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
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[24];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,intel.com,lists.freedesktop.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[fuhrysteve@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6E32A6799F3

intel_alpm_get_error() unconditionally reads DP_RECEIVER_ALPM_STATUS via
AUX from any DP connection that receives a short-pulse interrupt.  However,
alpm_dpcd is only populated by intel_edp_init_dpcd(), so it is zero for
all external (non-eDP) DP and DP-MST connections.  On such connections the
AUX read fails, producing a spurious

  [drm] *ERROR* Error reading ALPM status

and setting sink_alpm_error = true, which is then visible in the ALPM
debug output even on hardware that never enabled ALPM.

intel_alpm_disable() already has the same guard (DISPLAY_VER check plus
!intel_dp->alpm_dpcd); extend the same logic to intel_alpm_get_error() so
it returns early without attempting the AUX transaction when ALPM is not
supported by the sink.

Reproducer: ThinkPad T14 Gen1 (Alder Lake-P / i915 DISPLAY_VER 12) docked
via Lenovo ThinkPad USB-C Dock Gen2 with external DP-MST monitors.  On
every DPMS wake the error fires once on the dock's upstream DP port.

Fixes: 2063174c22da ("drm/i915/lobf: Check for sink error and disable LOBF")
Signed-off-by: Stephen J. Fuhry <fuhrysteve@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index a7350ce8e716..4bb0c00741c4 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -611,6 +611,9 @@ bool intel_alpm_get_error(struct intel_dp *intel_dp)
 	u8 val;
 	int r;

+	if (!intel_dp->alpm_dpcd)
+		return false;
+
 	r = drm_dp_dpcd_readb(aux, DP_RECEIVER_ALPM_STATUS, &val);
 	if (r != 1) {
 		drm_err(display->drm, "Error reading ALPM status\n");
--
2.39.5
