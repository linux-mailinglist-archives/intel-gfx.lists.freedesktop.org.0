Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E03E1349C94
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 23:59:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8DC66EE52;
	Thu, 25 Mar 2021 22:59:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 856636E0E9
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 22:59:07 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 u5-20020a7bcb050000b029010e9316b9d5so2049792wmj.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 15:59:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EYLAWqcsMKDolKIh91LZ+I8bx1uPc3WQVcxAOCVSz0Y=;
 b=KFqy/DGLzDjuFj0f1M+Y/xrOiDMrkKVyMmO5QcV9vKb+rEY33Gl+Y+y5RB4uZ0W3jx
 IyHptOPH+h8owlKH6lv3aLQhMvev7/ugdMHvARscdxriDVSmbEFhm2WPdn6eqybHjTwX
 c6tF/3dvRN66vjwWTmnbde59D/+Kb8AeWMLBc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EYLAWqcsMKDolKIh91LZ+I8bx1uPc3WQVcxAOCVSz0Y=;
 b=ioVjTYfNBPWiOtj/i/cNcaGOAvY2HqwyLGSAGmAF3Bxuwl6hOygv4YfWNEIao+rZGQ
 f64mWP+vRi6MQx6ZTdYmNSVWfCck9eSyf0GTiM4jc5HMieaHBZx2m8tu8rHANezRFQHS
 hldF5IM8gVugsPT2j5j1SpFB3dkbih7fVtcHWWuNDWOuEEXgQaUNRk7YrU7E+yRaki2X
 zrwS5Y1ykZCHXTIWDstScRqApBNXzJiejPmKEfG045HKqq69Dp+AnqqeGUgYSVXprjpH
 pudB48wUYIlDcrHcFBA4hT48+kmepiK9AmkxzXVBN8sJ4NgbfeELgf5mzcJhlYx+7hh8
 W0LQ==
X-Gm-Message-State: AOAM532V91MD6/26sEaYsHPwq2a8RDD0ogoxkqPdTKumkot65MnmDGS7
 7JfRTPwK/jFeYjEjY8pPz8/kGQ==
X-Google-Smtp-Source: ABdhPJyyicXQnz93qvCTMUfXLPa6Gl52zpEX47MiJTDo36jyJysWZj3OvJmmxloStIQmm4TBYvCZNA==
X-Received: by 2002:a1c:c20a:: with SMTP id s10mr10080667wmf.144.1616713146219; 
 Thu, 25 Mar 2021 15:59:06 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q4sm7814842wma.20.2021.03.25.15.59.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Mar 2021 15:59:05 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu, 25 Mar 2021 23:58:59 +0100
Message-Id: <20210325225859.1684116-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210324211041.1354941-2-daniel.vetter@ffwll.ch>
References: <20210324211041.1354941-2-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/doc: Add RFC section
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
Cc: Simon Ser <contact@emersion.fr>, Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Motivated by the pre-review process for i915 gem/gt features, but
probably useful in general for complex stuff.

v2: Add reminder to not forget userspace projects in the discussion
(Simon, Jason)

v3: Actually put this into a folder, so we have it all (.rst files and
headers for kerneldoc) contained somewhere separate (Jason)

Cc: Simon Ser <contact@emersion.fr>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Jason Ekstrand <jason@jlekstrand.net>
Cc: Dave Airlie <airlied@redhat.com>
Acked-by: Jason Ekstrand <jason@jlekstrand.net>
Acked-by: Simon Ser <contact@emersion.fr>
Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Acked-by: Dave Airlie <airlied@redhat.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 Documentation/gpu/index.rst     |  1 +
 Documentation/gpu/rfc/index.rst | 17 +++++++++++++++++
 2 files changed, 18 insertions(+)
 create mode 100644 Documentation/gpu/rfc/index.rst

diff --git a/Documentation/gpu/index.rst b/Documentation/gpu/index.rst
index c9a51e3bfb5a..ec4bc72438e4 100644
--- a/Documentation/gpu/index.rst
+++ b/Documentation/gpu/index.rst
@@ -16,6 +16,7 @@ Linux GPU Driver Developer's Guide
    vga-switcheroo
    vgaarbiter
    todo
+   rfc/index
 
 .. only::  subproject and html
 
diff --git a/Documentation/gpu/rfc/index.rst b/Documentation/gpu/rfc/index.rst
new file mode 100644
index 000000000000..a8621f7dab8b
--- /dev/null
+++ b/Documentation/gpu/rfc/index.rst
@@ -0,0 +1,17 @@
+===============
+GPU RFC Section
+===============
+
+For complex work, especially new uapi, it is often good to nail the high level
+design issues before getting lost in the code details. This section is meant to
+host such documentation:
+
+* Each RFC should be a section in this file, explaining the goal and main design
+  considerations. Especially for uapi make sure you Cc: all relevant project
+  mailing lists and involved people outside of dri-devel.
+
+* For uapi structures add a file to this directory with and then pull the
+  kerneldoc in like with real uapi headers.
+
+* Once the code has landed move all the documentation to the right places in
+  the main core, helper or driver sections.
-- 
2.31.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
