Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oF8VHc83qWlk3AAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Mar 2026 08:59:11 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6E020D0B1
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Mar 2026 08:59:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BE1910E220;
	Thu,  5 Mar 2026 07:59:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="inGPyAKP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D077710E21E
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Mar 2026 07:59:07 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id
 ffacd0b85a97d-439a89b6fd0so4596702f8f.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 04 Mar 2026 23:59:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1772697546; x=1773302346; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:to
 :from:sender:from:to:cc:subject:date:message-id:reply-to;
 bh=up1Dq1xg6gmNuKxcZqGmFJ9w/LNCPKzJ4m3SQCOPg0U=;
 b=inGPyAKP5xxRdV1I9NHGRIr9zbgxx1ooUmYHx9Bl+wEWG2BmMvMEJmnTKwJ1yjJKI0
 Gi4bsOP5gLxjmZ2gvFcAHL/nTEcBo4NUyJgJ/6CLPsSFTJdZoGIJXM0z8pTMegRO/1zO
 QP4y+rpO7W/gdfu2q+SsSnH48wBKkDHIFcBjWQlruiYlotV200Y6HhSh38dgCuE614xO
 95i4bFlzRXQEwVaYUqcezy4bsr4mIu4tqwQdHDuMKqxH3Y+nB0puDC/VU/A2X4pRFkum
 zk9e7Ff0COm34b6ZBQZjdNE8PJD4Hy+Cx89ObyvVb1zMbQ4pJlUEZgD56z3Qq6Qkf86q
 OhUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772697546; x=1773302346;
 h=content-transfer-encoding:mime-version:message-id:date:subject:to
 :from:sender:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=up1Dq1xg6gmNuKxcZqGmFJ9w/LNCPKzJ4m3SQCOPg0U=;
 b=bJdqIG5koG+fdOJLbetwDzBQ56rKOVekQ1d51wj+G3lIuRl8XnPN75jlt95QwJoPDD
 HLZ/dZ8VO5SQ1JiPLU+0jDTl9FJcSsQVReeayxJnR7XNLPHVnask9W9zol7JKhfQhWbO
 sOcQ0K82tTjEDNH6HlvzwshZhbgRKdWIl3Zz9kJJUVN8evmKKu/WBnY7TsTUTnzJf64B
 UZt3TUtUHYduCX2bNR3ECj0rfGI0uRXksin4eJ0TAurxUFipXQWw+t8lERLb1kCYyEBo
 FKyMIglvcFIiv+1Wb1kY81QS3XLDSdPHqBqxzH5vFNMaAGEqfyHGvWTWP1uBXPWctUKn
 e2BQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCU8XEy2iUIKAqA8tha/7eh8pdHKUrHzb4dPHeu1gmtcv7owhgTI6tC/L+j/Owr0f3u1i81R5c6nfzk=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy7ATkOK4AI2aGCGyz7B8dh7A/HfbBim1uJ9nEZFMpuE56yPLzm
 YThChhKKKVNH8sCM2SgQ9NMfn0wXCXCkraqrWT/j2wHz6Kgr0OXt/sIk
X-Gm-Gg: ATEYQzzkJVFM5l1w6zKmiIjFVxz7sK6GD2aajZuI8Sm00Fo+TVUFoCgedxAGfmfa1zW
 FE4qq3ZKJMtdQyULjPIL1IUrMKXrdccfUj+3f6TILRgTQGRWpPhVC+YIksinDP7ey3svGY4lEY/
 ccMY734V9bJSPx8fL/q23AptCrD6C/YxvNHD/sD+wAahGyafoYkQNo90QMw1vgh41rPr6Cp5R+A
 xJcR8stQeaprqyTtt/VCkV1hbMzBLRSETORpCd+MvlY2bOqZOzMGvfL4NbRpDLdYjUufHKQUI2N
 q7F8oUW0lYUG1ujFW7FoQGwhH554CaGihnbM1MyCEaThajLuzcf4fahOlBJ5PdO2HSI/6kJ55em
 utUIGjYLbewN3mzpKinN8zL5hoPTMl35vgcdYPpzqqr8iWBn5yDKj0q6h6I+owbRuVXRkNKZj4o
 0xaa6i1g==
X-Received: by 2002:a05:6000:2c0c:b0:439:905e:1236 with SMTP id
 ffacd0b85a97d-439c7f99afamr9065426f8f.2.1772697546064; 
 Wed, 04 Mar 2026 23:59:06 -0800 (PST)
Received: from localhost ([2001:67c:1562:8007::aac:4468])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-439b0549600sm34180087f8f.35.2026.03.04.23.59.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2026 23:59:05 -0800 (PST)
From: "Chia-Lin Kao (AceLan)" <acelan.kao@canonical.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] drm/i915/lnl+/tc: Fix false disconnect of active DP-alt TC
 port during long HPD pulse
Date: Thu,  5 Mar 2026 15:58:57 +0800
Message-ID: <20260305075857.40077-1-acelan.kao@canonical.com>
X-Mailer: git-send-email 2.51.0
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
X-Rspamd-Queue-Id: DA6E020D0B1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.89 / 15.00];
	DMARC_POLICY_REJECT(2.00)[canonical.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[gmail.com:s=20230601];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,lists.freedesktop.org,vger.kernel.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,canonical.com:mid,canonical.com:email];
	FORGED_SENDER(0.00)[acelan.kao@canonical.com,intel-gfx-bounces@lists.freedesktop.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[acelan.kao@canonical.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-0.969];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[]
X-Rspamd-Action: no action

On platforms using XELPDP+ (Lunar Lake and later), tc_phy_hpd_live_status()
reads the PICAINTERRUPT_ISR register to determine DP-alt live status. The
XELPDP_DP_ALT_HOTPLUG_MASK bit in this register reflects the live HPD signal,
which deasserts (goes low) during a long HPD pulse from the sink.

When an LTTPR dongle (e.g. HP Type-C to HDMI, 03f0:8a4a) fires a long HPD
pulse after link training, intel_tc_port_connected() reads PICAINTERRUPT_ISR
and returns false even though the PHY is still owned and the link is active.
Since intel_tc_port_handles_hpd_glitches() returns true for TC dp-alt ports,
the 4ms glitch-filter retry loop in intel_digital_port_connected_locked() is
bypassed immediately, giving no protection against this transient deassertion.

The AUX abort logic then fires (-ENXIO), the hotplug handler marks DP-1 as
disconnected, and the compositor responds by disabling eDP-1, causing the
internal display to disappear.

Fix this by trusting the PHY ownership register
(XELPDP_PORT_BUF_CTL1 & XELPDP_TC_PHY_OWNERSHIP) over the transient HPD
live status in intel_tc_port_connected() when the port has an active link
(link_refcount > 0). The ownership register is stable and does not toggle
during HPD pulses.

The TC cold power domain is guaranteed to be held when link_refcount > 0,
as __intel_tc_port_lock() already asserts and verifies this via tc_phy_is_owned()
before we reach intel_tc_port_connected().

Without this fix, triggering mirror mode via hotkey on HP ZBook with HP Type-C
to HDMI dongle (03f0:8a4a) causes:

  [drm:intel_dp_hpd_pulse] got hpd irq on [ENCODER:270:DDI TC1/PHY TC1] - long
  [drm:intel_tc_port_update_mode] Port D/TC#1: TC port mode reset (disconnected -> tbt-alt)
  [drm:intel_dp_hpd_pulse] got hpd irq on [ENCODER:270:DDI TC1/PHY TC1] - long
  [drm:intel_hotplug_detect_connector] [CONNECTOR:271:DP-1] status updated from connected to disconnected

With this fix, the port correctly stays in DP-alt mode:

  [drm:intel_tc_port_update_mode] Port D/TC#1: TC port mode reset (dp-alt -> disconnected)
  [drm:intel_tc_port_update_mode] Port D/TC#1: TC port mode reset (disconnected -> dp-alt)

Signed-off-by: Chia-Lin Kao (AceLan) <acelan.kao@canonical.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index bd12148e42f70..0967cfc75f522 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -1732,6 +1732,11 @@ bool intel_tc_port_connected(struct intel_encoder *encoder)
 	if (tc->mode != TC_PORT_DISCONNECTED)
 		mask = BIT(tc->mode);
 
+	if (tc->link_refcount > 0 &&
+	    tc->mode == TC_PORT_DP_ALT &&
+	    tc_phy_is_owned(tc))
+		return true;
+
 	return tc_phy_hpd_live_status(tc) & mask;
 }
 
-- 
2.51.0

