Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id eot0AAN4KWpHXQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 16:43:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB4566A537
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 16:43:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=tOOR196l;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=gmail.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE51B10E9F3;
	Wed, 10 Jun 2026 14:43:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com
 [209.85.216.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F4BF10E6E0
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jun 2026 03:54:32 +0000 (UTC)
Received: by mail-pj1-f44.google.com with SMTP id
 98e67ed59e1d1-36da151a152so4382813a91.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 09 Jun 2026 20:54:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1781063672; x=1781668472; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=kizIObzKL4IBfyjyeIAkjO2Eens7kW7Bizncq6rSEY4=;
 b=tOOR196lfiqnUv7ESnPcGM6P+NUzPo0W0NLX84B83CXJtX5HqB0Cm8bgqs0XLLKqhu
 mUriQ3PVOc3azqpsXB1L24BsFjiO+JiL7PzYSjXKxBkl5wSybA6LOeacyLINLM7L8tsI
 Tptike8Ilm4srE1RV1sr0JlwZb1Mi4tqKPnstuQuPIQemMFNokom+N2XdLKOh7VKXwqj
 NWdirt4pFmyXcClKwUU5ZqWjxoq8XrWhU+TsvnWpEr372Z8Um0sdcHvgHjvB2QPiUW13
 CdKiQtC/rSYDOcH0hbG5v4tjKdb9VtG4JrlHkosEngD3V6Nlj/bxkZp7afVETTk/ActJ
 UaaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1781063672; x=1781668472;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=kizIObzKL4IBfyjyeIAkjO2Eens7kW7Bizncq6rSEY4=;
 b=lh5e1gwdVzeJOLNT8tfUEqzubhlnp4n9+tDPd2OxXNOpmZMcDnRJKJaAxAd7vAl6Nz
 mKSDkM5nKZ2BkLUlaUGcdycn99Yc/1v/+NmH5ln/4FCqcoGLRe+W6/O0eB25GfC06rAP
 x/VMBjQYFsbKh7NvXJL9TDcZGMKq7mub8DolFNheDJ9qx8teJJ7xQ0dyZQ6Kh/1S73F4
 rl/RCC5ip9LlzVwxXMiuBG9q6rgMQ2IT11tw4g3BHu58n7yhNwgF7bWVq3lNWghASfbm
 utY38/fQSVw9SYFBS2IPMj3bto00lh/X8W3P7T2cAS2QE+5dOKQ0aeMvJDjIykJM02r0
 mP1Q==
X-Forwarded-Encrypted: i=1;
 AFNElJ+2ft6ZbqbuEDnvxGxZetYanm/cTZq2SN8y6XtElbxQ2VGSWIRdYLLM+3AS6G64rI/DSNSKYL3FI2M=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwsYeadfSsncYLXGek/t2ydKm7Gp4ga4rUfZVfsrVjdZOlZX73Y
 SOZljywpwM+LTMqrajUsopnacGpVChYu2aczvowyltzQHVVNs6773Bse
X-Gm-Gg: Acq92OFzSrH6bISpRm2pR5V137Q68UE+6mvL8p8rlAZ0DC1cd8kdA2SjlREI1TY0cdc
 4NBdIzR7osh6iBv5KwxZqlrlCvMmckqrMekRSEQWF1V5jmrQB9lDq1JbRyKl4gz3DdJwE/vTE/Q
 RfO3rVbnnTEUPBRbSIYi4ixYKt1ugENXSRuGtRZsPlvpvXs++2M3+0TO3vlZELymIWtSGHbbhR/
 OlV/guMbaTg38LC7Zyb1DY5xISb4jruFeT0s83P1hWQW+W8WQm0g9OF9XAsTO4MDFFrChCGr1nA
 oR8at2m3hZe8WYMZigTp3mXVcMI3cEQi7cljGEpAf/o1n9CZ9az7t0Car0AjS1RXj+dTi801Ckl
 9tKVJuxWgIPdS/Mw9pVMHqfEvvyq6s/vx0+4Jf5WITcf7mrgTZChWKg2QiOJQ5rSBMYBCg3Swed
 tUI0cu81ReYJwUqTBhgJ6+39A=
X-Received: by 2002:a17:90b:4cc9:b0:36d:8e49:d8 with SMTP id
 98e67ed59e1d1-370f04818e9mr25545873a91.15.1781063671578; 
 Tue, 09 Jun 2026 20:54:31 -0700 (PDT)
Received: from lgs.. ([101.36.111.22]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-3762128130asm1180510a91.1.2026.06.09.20.54.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2026 20:54:31 -0700 (PDT)
From: Guangshuo Li <lgs201920130244@gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Uma Shankar <uma.shankar@intel.com>,
 Imre Deak <imre.deak@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Cc: Guangshuo Li <lgs201920130244@gmail.com>
Subject: [PATCH v2] drm/i915: clear CRTC color blob pointers after dropping
 refs
Date: Wed, 10 Jun 2026 11:54:19 +0800
Message-ID: <20260610035419.1596963-1-lgs201920130244@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 10 Jun 2026 14:43:11 +0000
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:uma.shankar@intel.com,m:imre.deak@intel.com,m:michal.grzelak@intel.com,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:lgs201920130244@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,lists.freedesktop.org,vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[lgs201920130244@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lgs201920130244@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4BB4566A537

intel_crtc_free_hw_state() drops the CRTC color blob references, but
leaves the corresponding pointers unchanged.

This can matter in intel_crtc_prepare_cleared_state(), which frees the
old CRTC hw state before calling intel_dp_tunnel_atomic_clear_stream_bw().
The latter can fail while looking up the DP tunnel group state, for
example with -EDEADLK.

If that happens, the function returns without completing the cleared
state preparation. The failed atomic state will then be cleared by the
atomic core and intel_crtc_free_hw_state() can be called again for the
same state, dropping the same blob references again.

Clear the blob pointers after dropping the references so repeated cleanup
of the same CRTC hw state is safe.

Fixes: fb69d0076e68 ("drm/i915/dp_tunnel: Fix error handling when clearing stream BW in atomic state")
Suggested-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Guangshuo Li <lgs201920130244@gmail.com>
---
v2:
  - Keep the original ordering in intel_crtc_prepare_cleared_state().
  - Clear the blob reference pointers in intel_crtc_free_hw_state(), as
    suggested by Imre.

 drivers/gpu/drm/i915/display/intel_atomic.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index 71b7325917b6..0cdae87e4bfc 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -294,6 +294,12 @@ static void intel_crtc_put_color_blobs(struct intel_crtc_state *crtc_state)
 void intel_crtc_free_hw_state(struct intel_crtc_state *crtc_state)
 {
 	intel_crtc_put_color_blobs(crtc_state);
+
+	crtc_state->hw.degamma_lut = NULL;
+	crtc_state->hw.gamma_lut = NULL;
+	crtc_state->hw.ctm = NULL;
+	crtc_state->pre_csc_lut = NULL;
+	crtc_state->post_csc_lut = NULL;
 }
 
 /**
-- 
2.43.0

