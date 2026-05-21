Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wN2tLKtfD2qXJgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 21:40:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B88D5AB846
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 21:40:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEF1E10E48D;
	Thu, 21 May 2026 19:40:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=poorly.run header.i=@poorly.run header.b="OsaLrwbN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com
 [209.85.128.173])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC07010E560
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2026 19:40:24 +0000 (UTC)
Received: by mail-yw1-f173.google.com with SMTP id
 00721157ae682-7cd35604a95so57706047b3.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2026 12:40:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=poorly.run; s=google; t=1779392424; x=1779997224; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=HmIdxc0lOd0CxowYMAnyi/yzRzGd3DC7R3Y/lI6Dr6Y=;
 b=OsaLrwbNb+gapRHXe1AJ56dMeHVP8ygv5bSoUUo4tAiFozWo543BAzEBHcGMzh2NTl
 B6Nb1/fWCrBmau9rcDpmZFm68btR/T8eT5wSwKR369F5v4qwF/xyVc6rUuP8+exqo+XO
 G34p6Icl+ssTKk/hAt9JnqB9Zf42DgpkBMr/AoCrk1ybUqQUYsRm8MG/kriLeVyRFQZa
 NUGWMT4+d+BGDIFhZb3xdnCe7zWJUX59gPqvw9AWa2RO9Hi3beSucFpn3cAo9tKWurHa
 y6OTkRUWqNwnGkL0Xn3EdtDFj+3PHCFGipVKV/1NhW0GeLk+JuCd2p4ZMbEzwui6PCPj
 1CUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1779392424; x=1779997224;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=HmIdxc0lOd0CxowYMAnyi/yzRzGd3DC7R3Y/lI6Dr6Y=;
 b=DPHsMT5LI7RazSOnpJREH3yEJPF8OiEG12TDpN4WFJwpzkxUfNEyPj+B5/T2fUhRPN
 fm2ZVQcyb/IycaFqCUOEGhis84h7D3YR2XONrNWzcNscMsQWeOGRPLLdmd4BZTe3tONW
 kykjQfmfnDh9V+7DyPutQycLvdsDsEInvycBAbGJceH0ZXFIRhjhpwY7fzd/0G56aIbi
 FgKB26VeeoGyFKgtX91lNoVP3N3AMTX+8omwKu8PqpcbJTHZghLsewCOWAQ/xSx4yLSd
 GJHcp7D/Gnl8MToNe0Mqlr87TcWV5i/T2zleOSftZqaoOni5FOFc3hsCfwK/IBK7aioE
 Pn5Q==
X-Gm-Message-State: AOJu0YwwJh26d7dkQQ9kg35mPNTgJJCdHrj95T77pY925G4NSFXoAj/i
 wxkmOZDSwdIDvaenuJghSuvrxM8tIoOk8fxJzEO3Oi27cF8LANXyyIam9Q1FzeuCs8lF7nJZA1p
 iEXZTYMA=
X-Gm-Gg: Acq92OG85yRktlBsoyD4opXmM0ytdWdNP7b0VahwjI1aciw5kazv/mOO6mocvu39P1u
 C1WLBrIN4FpdQZJV9HkiEdom5i8yViekk6i6mqgZmfv/qbOuu+VOHpeuFWgN5Jy3DlzjjgFSzcl
 NIWSTkE+7PBELL3oGRGKz0i8naSU3wkv6aif4eFI+aXBiMd15vMNkJ0eTwrsKYfGJAoPMF72iZ5
 VIeaOqrEsWEYB7eEzH7UzJwYaFVdeTr51c4cbr7Xnduby6i9qtijhGuCr4qwVBLwfK469LwT3E9
 o0TO3bG10/BwtStopQzyY/cOyvDF1pAAcR7tnYY9lLLeQmI0UUg7u8YGps4MT7KRqQ0l4BEjNnP
 uqAvoYnzyXsAT0teRqo/Ru8usjtzygSRSIzHUZy8t4eztTt+AkTXy4XibbosxnBHb99ki0Zxoh0
 9BxX8xQ0HYTqd/wduRbDcbZ+ZJxwFgtXzgAWXhwOGYhuvvGN5dcP5hSJc=
X-Received: by 2002:a05:690c:7446:b0:7b6:783f:2122 with SMTP id
 00721157ae682-7d356236f08mr2231767b3.9.1779392423699; 
 Thu, 21 May 2026 12:40:23 -0700 (PDT)
Received: from localhost (182.221.85.34.bc.googleusercontent.com.
 [34.85.221.182]) by smtp.gmail.com with ESMTPSA id
 00721157ae682-7d35f7d8684sm323507b3.25.2026.05.21.12.40.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2026 12:40:23 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, Sean Paul <seanpaul@google.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Subject: [PATCH v2 2/2] drm/i915/color: Fix Pre-CSC degamma LUT bounds
Date: Thu, 21 May 2026 15:39:45 -0400
Message-ID: <20260521194018.2445206-2-sean@poorly.run>
X-Mailer: git-send-email 2.54.0.794.g4f17f83d09-goog
In-Reply-To: <20260521194018.2445206-1-sean@poorly.run>
References: <6d8e36e2aea806f9973b3c501aad4523f7316d6a@intel.com>
 <20260521194018.2445206-1-sean@poorly.run>
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
X-Spamd-Result: default: False [0.69 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[poorly.run:s=google];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[poorly.run];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,google.com,intel.com,ursulin.net,gmail.com,ffwll.ch,lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[sean@poorly.run,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[poorly.run:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,poorly.run:mid,poorly.run:dkim]
X-Rspamd-Queue-Id: 5B88D5AB846
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Sean Paul <seanpaul@google.com>

Fix a typo in the loop condition in xelpd_program_plane_pre_csc_lut
for Segment 2 degamma programming, changing 'while (i++ > 130)' to
'while (i++ < 130)'. Also clamp Segment 2 to the last user-provided
LUT entry value instead of hardcoding it to 1.0 (1 << 24) to fix
a step discontinuity.

Link: https://lore.kernel.org/intel-gfx/20260521180143.2143262-1-sean@poorly.run/ #v1
Signed-off-by: Sean Paul <seanpaul@google.com>

Changes in v2:
- Split out into separate patches for pre/post csc fixes
- Dropped loop bounds fix in favor of [1]

[1]- https://lore.kernel.org/r/20260519075245.383864-1-pranay.samala@intel.com
---
 drivers/gpu/drm/i915/display/intel_color.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 90d5dc2ef3e4..469011c83f9b 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -3953,6 +3953,7 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb *dsb,
 	enum plane_id plane = to_intel_plane(state->plane)->id;
 	const struct drm_color_lut32 *pre_csc_lut = plane_state->hw.degamma_lut->data;
 	u32 i, lut_size;
+	u32 lut_val = 1 << 24;
 
 	if (icl_is_hdr_plane(display, plane)) {
 		lut_size = 128;
@@ -3963,7 +3964,7 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb *dsb,
 
 		if (pre_csc_lut) {
 			for (i = 0; i < lut_size; i++) {
-				u32 lut_val = drm_color_lut32_extract(pre_csc_lut[i].green, 24);
+				lut_val = drm_color_lut32_extract(pre_csc_lut[i].green, 24);
 
 				intel_de_write_dsb(display, dsb,
 						   PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),
@@ -3975,7 +3976,7 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb *dsb,
 			do {
 				intel_de_write_dsb(display, dsb,
 						   PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),
-						   (1 << 24));
+						   lut_val);
 			} while (i++ > 130);
 		} else {
 			for (i = 0; i < lut_size; i++) {
-- 
Sean Paul, Software Engineer, Google / Chromium OS

