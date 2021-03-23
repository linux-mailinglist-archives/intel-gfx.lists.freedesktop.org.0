Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 614073459FF
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Mar 2021 09:45:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 065C26E84D;
	Tue, 23 Mar 2021 08:45:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64E966E84D
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Mar 2021 08:45:03 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id j18so19861532wra.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Mar 2021 01:45:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EVmj/JgXHiOknipjFzQEKiQ+vNpvGhie2Jf7GtdWuRA=;
 b=RHmqlDskazU4hnG1lgqVnlGvOcZOMpDn/IKsdvG6La5G1DZXFzNVKfzyYy1rOq7wxg
 +tUYom2c/yVs3rHXoT/1jDGPI680NetGWbkcpgC7cYy2UBZa76jAjQhHtSYPaW5G1UsS
 +l6QIecnq12Irl/uvoVRFvJuOs2Ug/UTk6R28=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EVmj/JgXHiOknipjFzQEKiQ+vNpvGhie2Jf7GtdWuRA=;
 b=oImCZWbDZDtmBSFrLCgFO8LJzhjdwF6R0I1WJcfvn89YUlLWOxUL2yTPDP6jsjs2++
 AfsO89kECMNnZtzV1QKSjqxHSW0MjSucB0RiImDWcGPyk34FMumhN2EVuis0xZZRlkB5
 uWUGRWngERbyr76/RN33rZhaRwjyPDfxaqmjhrClaHGww8/4ygDNwzQRhj/NQUeqJvyO
 x/wSztMhNd8vfv9uLDaOS8KqZ5PzRznYu08iupPZ8HB7MQiRXGHsMFLwpJOn5vrWrFnT
 EacFxdw8fbYxYD8dJ+ZbIUfprvsBMw+2o5LBxy5VjULZqFKUNSU+TE6NaND2idCw7Om1
 cIFA==
X-Gm-Message-State: AOAM5301MUJ2m2EiQ0KQ2CGDcjnNYiVYfyuCMTCNmm2GrGYCsAZOuDXI
 ksXYnBn73GD0anQ+LXk8NsAzKA==
X-Google-Smtp-Source: ABdhPJzaRTtncl3Um+eFvF0cNs1yuH1tPrvlYSdvrYKJptlvFpjSEOk9fZQm+CwM8xOIJ4BqcJmJAg==
X-Received: by 2002:a5d:4b06:: with SMTP id v6mr2827113wrq.41.1616489101966;
 Tue, 23 Mar 2021 01:45:01 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id g202sm1772835wme.20.2021.03.23.01.44.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Mar 2021 01:44:59 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Tue, 23 Mar 2021 09:44:53 +0100
Message-Id: <20210323084453.366863-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210323084453.366863-1-daniel.vetter@ffwll.ch>
References: <20210323084453.366863-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/doc: Add RFC section
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Motivated by the pre-review process for i915 gem/gt features, but
probably useful in general for complex stuff.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Jason Ekstrand <jason@jlekstrand.net>
Cc: Dave Airlie <airlied@redhat.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 Documentation/gpu/index.rst |  1 +
 Documentation/gpu/rfc.rst   | 16 ++++++++++++++++
 2 files changed, 17 insertions(+)
 create mode 100644 Documentation/gpu/rfc.rst

diff --git a/Documentation/gpu/index.rst b/Documentation/gpu/index.rst
index c9a51e3bfb5a..df58cb826d68 100644
--- a/Documentation/gpu/index.rst
+++ b/Documentation/gpu/index.rst
@@ -16,6 +16,7 @@ Linux GPU Driver Developer's Guide
    vga-switcheroo
    vgaarbiter
    todo
+   rfc
 
 .. only::  subproject and html
 
diff --git a/Documentation/gpu/rfc.rst b/Documentation/gpu/rfc.rst
new file mode 100644
index 000000000000..9d0ff2921af8
--- /dev/null
+++ b/Documentation/gpu/rfc.rst
@@ -0,0 +1,16 @@
+===============
+GPU RFC Section
+===============
+
+For complex work, especially new uapi, it is often good to nail the high level
+design issues before getting lost in the code details. This section is meant to
+host such documentation:
+
+* Each RFC should be a section in this file, explaining the goal and main design
+  considerations.
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
