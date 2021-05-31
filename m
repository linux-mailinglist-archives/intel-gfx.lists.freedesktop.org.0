Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E26739691C
	for <lists+intel-gfx@lfdr.de>; Mon, 31 May 2021 22:47:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEC536E083;
	Mon, 31 May 2021 20:47:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D82A06E077
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 May 2021 20:47:14 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 o2-20020a05600c4fc2b029019a0a8f959dso625160wmq.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 May 2021 13:47:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=astier-eu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZvdU+MzRE1GsrVSHT5IzTceKGFKS8AKre8L+QNPYHb8=;
 b=zAdaznLM8+I8iYeQVBuGZ8AX5m7AUPxnKcGjxroA+/JvMovBXFki0iGOP8MsnVEcNG
 2zbCEK0D4FRJLcLNuiqmLAXj5QXqmAWhEcCxjE2ehCQrJx6nqh3G1a/7BI+ORvVoIhZW
 MK+3VIYVBWb8GDkTJwtKda7W1uhd6bj0OwplW3gnDsvPkVNpQU0yiQGEq9KPFrai1Irl
 vkxwHqKXAmVoBFffqSBsxmCj+L09TN/MITo4WKJL0Mg6TgSz6jC8DpVU1etLLcSxBI0E
 zkSctYI3YEZ2xjkeAeFAdvx6TpRcwKEwjjIuKbD/iz7S7/6ULnN+03wlMvY7pHVnyh4X
 HVDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZvdU+MzRE1GsrVSHT5IzTceKGFKS8AKre8L+QNPYHb8=;
 b=aMZBcGgOB5J4q2OBlN9/xt7TgXnH2QXpO3i0mtvTPT5il6gJULbXVJJp7Dwg9NnCFE
 EF8smukN6HaBPc00Mnexuindg6/X0CoI03WPSWky4FBYdGT1EWRGouccky0jMLwFmBhO
 G3u+LLv/rYFcamFJI+X3h/bGbttO8Q+CNaTOmm/D2Ot/Gi03LTIongDFQiiNo6eE//pL
 yCk2GCgWQpaJ4gfH4PgWZy26ShtXeHOrX+wad6QTYRpTTTwtXfBQ+lR82+ROFScA+vTB
 T2YFu5k2+h3uE7oDW9W0nWmOEZpwrofGhBWTZKu3iwiyOXmiqXGbDXd5/VOu0bAFSJuE
 3GKA==
X-Gm-Message-State: AOAM530IgklHuCYIYL8E8Qj46SL24Nkf3FrHpSAwupXMoUlzzQnPTZeC
 Gi6ES6tmduWch0Iofh8MBw6zbCry650aSA==
X-Google-Smtp-Source: ABdhPJyhrmI4are9/P4uVX4Ay/kS4QEF4A6YXPz928Vbv+KHD9vsVucB9/DIEK7JNVLY1hH85lq0iw==
X-Received: by 2002:a1c:9a84:: with SMTP id
 c126mr22691630wme.160.1622494033224; 
 Mon, 31 May 2021 13:47:13 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:806:8950:61f0:1b3d:bc7a:1d60])
 by smtp.gmail.com with ESMTPSA id
 m7sm874240wrv.35.2021.05.31.13.47.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 May 2021 13:47:12 -0700 (PDT)
From: Anisse Astier <anisse@astier.eu>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 31 May 2021 22:46:40 +0200
Message-Id: <20210531204642.4907-1-anisse@astier.eu>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/2] GPD Win Max display fixes
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

The first patch is based on Jani's patch series [2] adding support for
the opregion, with changes. I've changed authorship, but I'd be glad to
revert it

The second patch is just to fix the orientation of the panel.

Changes since v1:
 - rebased on drm-tip
 - squashed patch 1 & 2
 - picked up Reviewed-by from Hans de Goede (thanks for the review)


[1]: https://gitlab.freedesktop.org/drm/intel/-/issues/3454
[2]: https://patchwork.kernel.org/project/intel-gfx/patch/20200828061941.17051-1-jani.nikula@intel.com/

Anisse Astier (2):
  drm/i915/opregion: add support for mailbox #5 EDID
  drm: Add orientation quirk for GPD Win Max

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
