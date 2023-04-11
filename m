Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A06416DE294
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Apr 2023 19:34:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D170D10E5E2;
	Tue, 11 Apr 2023 17:34:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com
 [IPv6:2607:f8b0:4864:20::62c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19B1810E5E2
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Apr 2023 17:34:15 +0000 (UTC)
Received: by mail-pl1-x62c.google.com with SMTP id p8so8623747plk.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Apr 2023 10:34:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1681234454; x=1683826454;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=+Znl1ex6C5n/1hV0DkFqqqKyQcRGE4Qtb36YX+MmRTk=;
 b=QD86dPRRUd0ltV5jUoQsxebWAz0Ec6XnXj/Ooat8PYPyuLzQEdbKc13CLUEGR3pNRK
 7/pkkU4ZeJ1W/ZQimbfdQta5KCfSLOmFdCYqOPn2qPBS2wWMyvkU9wlgwpiT9G22HjQN
 IPIo9SubmZTBFClGo3DHSmas1ryND2Tq/BTsY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1681234454; x=1683826454;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=+Znl1ex6C5n/1hV0DkFqqqKyQcRGE4Qtb36YX+MmRTk=;
 b=2B7aZYtakfZvwNmTJb3g2YZrjdUDMU3ifZZlKzKwSZra4bk1yiwKIU8m9YthTIO71A
 jMOeBdks1x4XtQ34XFStJBAVO8qV4mPEV1yaRR7trfx4axPCN2j2+2rsu882o+kp9fzs
 PaboB4f15wqRpCAdqUa8lL3WgAVP6bHvCgD8cbDcI7vBwbWSxnuZupC/7wwryquGTHdE
 cmVZUKyig0DYce5cG/xlwePJ7/Z2zhqIOSCcWOoMujwm8Nd6YhfSJENHKcNdhFNQlV6i
 BaTqAzS8EP67LbonFGYmMgs/6O6nhXkrYMBqiBZW9UcSDIzkHfPQzYZwnVGLql+L4TRm
 5Tmw==
X-Gm-Message-State: AAQBX9eFY12TBQ5XHljRrlR/hIdUl4Lta7TECPLYchdH5nL6H7bCpVnq
 W/jdaVniWPE070QQxQe4c9NliJEl4UhBKVJmY5M=
X-Google-Smtp-Source: AKy350b4WfjdUUJYihb+LsQTka2an+GsSohRNQzFuaC5BtZSWQBAbeVrdty8fnnNEdXpygSnVrGIng==
X-Received: by 2002:a05:6a20:bb2f:b0:c2:fb92:3029 with SMTP id
 fc47-20020a056a20bb2f00b000c2fb923029mr14884869pzb.33.1681234453871; 
 Tue, 11 Apr 2023 10:34:13 -0700 (PDT)
Received: from localhost (144.44.83.34.bc.googleusercontent.com.
 [34.83.44.144]) by smtp.gmail.com with UTF8SMTPSA id
 d22-20020a631d56000000b00513468106d8sm8856018pgm.1.2023.04.11.10.34.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 11 Apr 2023 10:34:13 -0700 (PDT)
From: Manasi Navare <navaremanasi@chromium.org>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Apr 2023 17:34:08 +0000
Message-Id: <20230411173408.1945921-1-navaremanasi@chromium.org>
X-Mailer: git-send-email 2.40.0.577.gac1e443424-goog
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Return correct err code for
 bpc < 0
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

In the function intel_dp_max_bpp(), currently if bpc < 0 in case of error,
we return 0 instead of returning an err code of -EINVAL.
This throws off the logic in the calling function. Fix this by returning
-EINVAL in case bpc < 0 which would be an error.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Sean Paul <sean@poorly.run>
Signed-off-by: Manasi Navare <navaremanasi@chromium.org>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f0bace9d98a1..f6546292e7c6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1280,7 +1280,7 @@ static int intel_dp_max_bpp(struct intel_dp *intel_dp,
 		max_hdmi_bpc = intel_dp_hdmi_compute_bpc(intel_dp, crtc_state, bpc,
 							 respect_downstream_limits);
 		if (max_hdmi_bpc < 0)
-			return 0;
+			return -EINVAL;
 
 		bpc = min(bpc, max_hdmi_bpc);
 	}
-- 
2.40.0.577.gac1e443424-goog

