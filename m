Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61CBF14C75B
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 09:24:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6B006F48A;
	Wed, 29 Jan 2020 08:24:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 460A26E27C
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2020 08:24:17 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id c9so19085877wrw.8
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2020 00:24:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iTJtgVy6LTqArF7NKDeugLKfpnz0aWBmf+fmNqkbCAg=;
 b=LXhjoK0MrthlTSJ1hvTfNeLYDMLEmtrMuOSssT81UXACobo4U/Fa+vfpi8iq4JAncT
 vYnhFkVUyv8vK4bkVnJS7D1arXebmuCjMNW0+MHP3mvtZJv/HEvgtqsiREVRK5a8EW4R
 +GKFBn9yCzw1rywrXRoy62DJ4JAQ6HW+tDuig=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iTJtgVy6LTqArF7NKDeugLKfpnz0aWBmf+fmNqkbCAg=;
 b=HUfLMC7ENnMepFoXN676mPs2VY0Ivm1ZwrbHr/OIA90fPVSgS99LsOfi95esV2Z68U
 s9CqmVLEgsZ2bT+o2Ne3tgSgIaH1r2m/o7M/lH5Kgvt94QMREXRdRtMsZlzqjJVDkURG
 M/tkVSPX/8+wcPEqcxbvNgvy8f5a8d6VELaNjQGeDhQMiOWTcIbzJXK17aBjDHox9RBn
 VKzbG5UwxmjguaVF3iWNlNHgc9Ad03CruYWLRrGAFFs5uXlZgRytnwEa28jb2p+JYcFr
 OyhgkOelZ3xYi4/zvyIBBzDd05YbxgfS69hJ6eIZ7PyfcghcoVTfe3BMQ6J+KfxUy7p9
 jhJw==
X-Gm-Message-State: APjAAAVWJTIX4myzYXDSr+zBZn0tGyqeKFvmx00C/4WbSu8F75kt/g60
 veJMEdOx0AFUP4oBB4Qb1vj6vBNvLewa4w==
X-Google-Smtp-Source: APXvYqzxe0hegIcz92JGlNZl3xfMykI1IKpxL8d7hYasv9UzkGknxjceAH8rMM5db44UgS6DaVfQGw==
X-Received: by 2002:adf:ee88:: with SMTP id b8mr35899489wro.249.1580286255913; 
 Wed, 29 Jan 2020 00:24:15 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id n14sm1351931wmi.26.2020.01.29.00.24.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jan 2020 00:24:15 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 29 Jan 2020 09:24:05 +0100
Message-Id: <20200129082410.1691996-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/5] disable drm_global_mutex for most drivers
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi all

New version without the deadlock in pan_display that Noralf spotted
(hopefully that appeases CI a bit, v1 was bad), plus now being co-tested
with the right igt series (hopefully).

Review (especially but not only on the igt side) very much appreciated.

Test-With: 20200128112549.172135-1-daniel.vetter@ffwll.ch

igt series link https://patchwork.freedesktop.org/series/72654/

Cheers, Daniel

Daniel Vetter (5):
  drm: Complain if drivers still use the ->load callback
  drm/fbdev-helper: don't force restores
  drm/client: Rename _force to _locked
  drm: Push drm_global_mutex locking in drm_open
  drm: Nerv drm_global_mutex BKL for good drivers

 drivers/gpu/drm/drm_client_modeset.c | 12 ++++----
 drivers/gpu/drm/drm_drv.c            | 26 +++++++++-------
 drivers/gpu/drm/drm_fb_helper.c      | 16 ++--------
 drivers/gpu/drm/drm_file.c           | 44 +++++++++++++++++++++++++++-
 drivers/gpu/drm/drm_internal.h       |  1 +
 include/drm/drm_client.h             |  7 ++++-
 include/drm/drm_drv.h                |  3 ++
 7 files changed, 78 insertions(+), 31 deletions(-)

-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
