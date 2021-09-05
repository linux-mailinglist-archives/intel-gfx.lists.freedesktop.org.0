Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBC7D4011B2
	for <lists+intel-gfx@lfdr.de>; Sun,  5 Sep 2021 23:12:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82AA589A0F;
	Sun,  5 Sep 2021 21:12:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EE3889A14
 for <intel-gfx@lists.freedesktop.org>; Sun,  5 Sep 2021 21:12:31 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id
 z9-20020a7bc149000000b002e8861aff59so3583894wmi.0
 for <intel-gfx@lists.freedesktop.org>; Sun, 05 Sep 2021 14:12:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=astier-eu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FF+skFtA1xrcG7OJvwrLeQElay/ih9xMB4sa/bVfEI4=;
 b=bxuLl/fNR/0RkDvy8EYAV3oyKeegmRQZqQ6Fsp8g7gQMSFy6l2adS0pE6Ud5gbEGv3
 nv7Pe/ZDRZglgBPR6NQvc9cGiSFUAiUehl5xmTnk57N549lSKohLgKFSJSklZ0epPdhi
 0+51KZF2JxhGyNKCEWoja9dxG/8QUCiQwzaLjvh0BkjiNpXwV1qO3/u9NEDIeBlISjsF
 0FG/miOSJ+sDOXFO7qEn/5/FBlExjvNCVWTbbJyxmM+evFjpzy9UVMFaM73RtDLp6arR
 ijrP+l39ntg5AXfb2g1RvXvZnP/O1fPoE8HZYe5fOuFN2sgJBcQ6abJRCX+YLJQvR2K5
 Fsow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FF+skFtA1xrcG7OJvwrLeQElay/ih9xMB4sa/bVfEI4=;
 b=EBTtd/y+v5LIlrRdZBIhu32KghgNSp9iS7LU4spRXoNcAktRjgdMxzuSOJrTGgBKqe
 vib56UHk76JCUllg/UmsmauilLbbHk7DybqMEPkzQCc+JS7bBEqgpot2dLZqtQNi1RvR
 jS+nZ5PXEzsHp8AQNUO4pRAUZ96TJ/jdYXwKwGWyhufOND7q09SiJ2lmniFUi5bK0JXr
 LUsYB58LdmlQ2ICDiqly66VITXOlAm/mP/a795/82VYlWWk6oRz1fdml/yFX1absF7D9
 asVbjsCebNBTcT41zqwp9oycqpFNh8ppZrZyi1oxglVW5itu+BjpPt53b5j6v4vXzmcK
 zsVA==
X-Gm-Message-State: AOAM531jnctxya1Xgq4oTJqgLdW9FmioLTZxa4elRPaCsqnappWeiC86
 0StdZPuhZehzYZSImC7EhvqpcxMbW9rqbQ==
X-Google-Smtp-Source: ABdhPJwWJREmar9Qcbvl51DiQtS7R1gked7NxtDYPVhaD+A0jbXqJcZqyh47RF71IMk9zBZADlVVfw==
X-Received: by 2002:a1c:3954:: with SMTP id g81mr8381524wma.125.1630876349353; 
 Sun, 05 Sep 2021 14:12:29 -0700 (PDT)
Received: from gpdmax.. ([2a01:e0a:28f:75b0:2488:d453:b017:99a])
 by smtp.gmail.com with ESMTPSA id m3sm7210512wrg.45.2021.09.05.14.12.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Sep 2021 14:12:28 -0700 (PDT)
From: Anisse Astier <anisse@astier.eu>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>, Uma Shankar <uma.shankar@intel.com>,
 Jani Nikula <jani.nikula@intel.com>, Daniel Dadap <ddadap@nvidia.com>,
 Anisse Astier <anisse@astier.eu>
Date: Sun,  5 Sep 2021 23:12:24 +0200
Message-Id: <20210905211226.3525-1-anisse@astier.eu>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/2] GPD Win Max display fixes
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

This patch series is for making the GPD Win Max display usable with
Linux.

The GPD Win Max is a small laptop, and its eDP panel does not send an
EDID over DPCD; the EDID is instead available in the intel opregion, in
mailbox #5 [1]

The second patch is just to fix the orientation of the panel.

Changes since v1:
 - rebased on drm-tip
 - squashed patch 1 & 2
 - picked up Reviewed-by from Hans de Goede (thanks for the review)

Changes since v2:
 - rebased on drm-tip
 - updated commit message

When v2 was initially sent [3] Ville Syrjälä suggested that it might be
a good idea to use the ACPI _DDC method instead to get the EDID, to
cover a wider range of hardware. Unfortunately, it doesn't seem
available on GPD Win Max, so I think this work should be done
independently, and this patch series considered separately.

Change since v3:
 - edits following Jani's review:
    - The EDID from the opregion is now only used as a fallback: if we
      cannot get any edid from the edp connector, then we attempt to get
      it from the opregion. This works for the GPD Win Max.
    - all other remarks should have been taken into account
 - rebased on drm-tip
 - added Co-developed-by
 - reordered signed-off-by and reviewed-by in second patch (thanks
   Maarten!)

[1]: https://gitlab.freedesktop.org/drm/intel/-/issues/3454
[2]: https://patchwork.kernel.org/project/intel-gfx/patch/20200828061941.17051-1-jani.nikula@intel.com/
[3]: https://patchwork.kernel.org/project/intel-gfx/patch/20210531204642.4907-2-anisse@astier.eu/


Anisse Astier (2):
  drm/i915/opregion: add support for mailbox #5 EDID
  drm: Add orientation quirk for GPD Win Max

 .../gpu/drm/drm_panel_orientation_quirks.c    |  6 ++
 drivers/gpu/drm/i915/display/intel_dp.c       |  7 +++
 drivers/gpu/drm/i915/display/intel_opregion.c | 55 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_opregion.h | 10 ++++
 4 files changed, 77 insertions(+), 1 deletion(-)

-- 
2.31.1

