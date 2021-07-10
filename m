Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4698F3C36E8
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Jul 2021 23:26:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 666C86EB60;
	Sat, 10 Jul 2021 21:26:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com
 [IPv6:2607:f8b0:4864:20::22c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71E2E6EB60
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Jul 2021 21:26:37 +0000 (UTC)
Received: by mail-oi1-x22c.google.com with SMTP id j65so11574868oih.5
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Jul 2021 14:26:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Gannu8WJb6nC/UgaL+0EdhA+dFthcJHL1PrBS/XOjBk=;
 b=of6gxxPw85DyP5oXbx+ONiPHfFHKliT0Z2IkKz8q4UDPmsd4kkRD/LwIgUv+2BX2oF
 XTBGqd+oxsTL4NCbyPjw9YJSfQBXK5xP7aLEEwuf0JhmkB4rOA0LFe2mAYJUBi4YzOij
 RpWRCYIK5GVP99poR/oKczJn5ejd2u0ZMp/pWWfWgswoz/QE+vgru2ZzeZ8HZQQguCL1
 6TzqMy+lhi0QEYq/YzjOqVSqh6MDVK1HrFaI3Ll/4pDawIoYGFzjiW2fyAkzDCs8S97B
 O6CQP2yr3qAwMyl3dwRtKTii3vq0iTXFuzRtjvvtEhnswMizdrlrdn4M10l0LTa8tDBu
 mdkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Gannu8WJb6nC/UgaL+0EdhA+dFthcJHL1PrBS/XOjBk=;
 b=XupnY4slzjl/7949TDANyYoIoFUMEJOa4z82ssLU9WK+WO+P12p816JxRcYjkYy+Gs
 spTef96JSz2Ty8K10336e9vmiauzv1BAi7Wowbe598PAsPVgh7ZcWEDP8vC7PKhbDOxr
 Wods6IkQG6YAD7aQV5CUU+q2kP6TGJs981v72gh9dzvZTEs/t6GjmnP5onulmwp35wJA
 iG4DNxinj7ED84PbCf7dYr5APewVyCXgAsYzngDgSTnztaopYx2F7lwwK5zFvs+M9FPp
 8yfXQK7H2PtG9WfDDMIIw+xLPiGj5Wne8o8mBQM7FHz4WxIkIlzOOa3n8NGX54OSEddr
 er2Q==
X-Gm-Message-State: AOAM530qaJqJltoUoSjTS3eeOXnfwQcqrwq0gdcPJO5gI4H+4pQ+8pzv
 D7m8MSWcgPzkRRDofVfUG4RmKfLS7lGpQQ==
X-Google-Smtp-Source: ABdhPJwlIgIbjDIiPmyJbw1cfD3lTc/+yJd7q2JR9N6RVoW3g9Cd11yG2zMpsRHbpSZIiWOHdg/eyQ==
X-Received: by 2002:aca:6142:: with SMTP id v63mr4610723oib.56.1625952396501; 
 Sat, 10 Jul 2021 14:26:36 -0700 (PDT)
Received: from omlet.lan ([68.203.99.148])
 by smtp.gmail.com with ESMTPSA id u18sm972797ooq.36.2021.07.10.14.26.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Jul 2021 14:26:36 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Sat, 10 Jul 2021 16:24:45 -0500
Message-Id: <20210710212447.785288-1-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] drm/i915: Better document VM and engine set
 APIs
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As per Daniel's request, this better documents the VM and engine set APIs
including some discussion of the deprecation plan.

Test-with: 20210710211923.784638-1-jason@jlekstrand.net
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>

Jason Ekstrand (2):
  drm/i915: Don't allow setting I915_CONTEXT_PARAM_VM twice
  drm/i915/uapi: Add docs about immutability of engine sets and VMs

 drivers/gpu/drm/i915/gem/i915_gem_context.c | 12 +++----
 include/uapi/drm/i915_drm.h                 | 39 +++++++++++++++------
 2 files changed, 33 insertions(+), 18 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
