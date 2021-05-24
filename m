Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40EE138F1BE
	for <lists+intel-gfx@lfdr.de>; Mon, 24 May 2021 18:47:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D9096E8CF;
	Mon, 24 May 2021 16:47:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 808B56E8D2
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 May 2021 16:47:50 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id z17so29220146wrq.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 May 2021 09:47:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=astier-eu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=di505kkRqDSik9WYJX+bh+gzE7K7u5Z12HF0qqOqyv4=;
 b=f5LwgmU9uBz5xIBg2EmWqUfyu8LTeLGDrXaf1Srkf/XVZ8hqbaFF5KazU6lNy6Vb0M
 ueO3d9fSwojEQAOAULyb3RquXh6TqWpTo31Hzsu+Ch/bmAgsfo5L2YzbRihDmOfYfzxF
 OBqu9RHKFvxWFyidrVrx5MD6FkSGcgIVumn4KSLLsrIiaKMQ95fWRWTOyfB27TCvXgJE
 1opq1nB8noa6SXdI9Qls2vyVacH1cqOLk0zAzMH0AJkJtlgdfMSFX1kXdK4UeBCwrFLf
 V7RkVHxlZL7n1bWmSaQemUfO9TZm83CwLjNrfwwjgSCsW9vMvakCeiss/A9Ap/t7hGZR
 UvFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=di505kkRqDSik9WYJX+bh+gzE7K7u5Z12HF0qqOqyv4=;
 b=VAC2zPkkl7/4hxp2RiuB0XaSaHUjzeWyHT6dM9c0E3ie8S3qg2Buj1HZMyk+Z45m+e
 9Vqy+/azwJ8+BOBzYHkU/ozvAvkk9H5PWmfTY2uVgloWICn8lffRnFbA8YPgKEKT1Bsa
 gfl0mLo1pp6ewjo9E/Fpz1MxwpFf27WwYJrffOoRni48fCpiIlbGgH1jFqmtlvvbf+Xx
 BXAwmgRLOaqQ9W/rhIvVmFyD8Ry3zDDj3Irg9IelG+4durLrxJQwJp1BAnzExKsAAA+/
 5IDy0H3NSXfsyTW0jVdia9zq00MBLmys5I4CQFqHiWaLXS4yaU1dGdR1CodF1LgMSq5t
 kzHA==
X-Gm-Message-State: AOAM533U4HnOoGiWXAQZb0N9SgMaEQv2K75ssSIpkyqky+r57ylB1Bqh
 ysXYsezfabQ28FSri3R5tGHyUQReKP1SQw==
X-Google-Smtp-Source: ABdhPJxDLcvlzd9XfyituJ0FHQibKJpPthdqryNaGFsrkmN9pI2/+OCMphq2zYUscS53yiYJXAnmcA==
X-Received: by 2002:a05:6000:c2:: with SMTP id
 q2mr23575392wrx.288.1621874868769; 
 Mon, 24 May 2021 09:47:48 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:806:8950:61f0:1b3d:bc7a:1d60])
 by smtp.gmail.com with ESMTPSA id
 b10sm15226358wrr.27.2021.05.24.09.47.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 May 2021 09:47:48 -0700 (PDT)
From: Anisse Astier <anisse@astier.eu>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 24 May 2021 18:47:16 +0200
Message-Id: <20210524164719.6588-1-anisse@astier.eu>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/3] GPD Win Max display fixes
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch series is for making the GPD Win Max display usable with
Linux.

The GPD Win Max is a small laptop, and its eDP panel does not send an
EDID over DPCD; the EDID is instead available in the intel opregion, in
mailbox #5 [1]

The first two patches are based on Jani's patch series [2] adding
support for the opregion, with minimal changes. I've change authorship
for the first, but we can revert it.

The third patch is just to fix the orientation of the panel. For some
reason it does not work at boot when an external display is plugged, but
I doubt this is specific to this hardware.


[1]: https://gitlab.freedesktop.org/drm/intel/-/issues/3454
[2]: https://patchwork.kernel.org/project/intel-gfx/patch/20200828061941.17051-1-jani.nikula@intel.com/

Anisse Astier (2):
  drm/i915/opregion: add support for mailbox #5 EDID
  drm: Add orientation quirk for GPD Win Max

Jani Nikula (1):
  drm/i915/dp: use opregion mailbox #5 EDID for eDP, if available

 .../gpu/drm/drm_panel_orientation_quirks.c    |  6 ++
 drivers/gpu/drm/i915/display/intel_dp.c       |  3 +
 drivers/gpu/drm/i915/display/intel_opregion.c | 69 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_opregion.h |  8 +++
 4 files changed, 85 insertions(+), 1 deletion(-)

-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
