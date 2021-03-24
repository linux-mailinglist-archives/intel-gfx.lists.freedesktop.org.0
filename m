Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B51348371
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Mar 2021 22:11:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51BBC6EA92;
	Wed, 24 Mar 2021 21:10:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F2196E364
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Mar 2021 21:10:49 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id
 y124-20020a1c32820000b029010c93864955so1964834wmy.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Mar 2021 14:10:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xGStlxqAvQR3fuObhoTNL58Dwx4zHJZi3lJkR5FRsGk=;
 b=Jj/jpTUzcmmqM7AkESib7LsQgXkV3puJ7LxSBMaHQAeDW0uf26jqzXo8At5nAI97p+
 WRld2EUYLUXsuTfv5FH9LDbG0iZZ+bs6VwoyZiOxwUpOrY/Mr4CLHVXjLYqAvCDAi538
 eG9dVvTQYaBgoOUnMktWPOdgw57V0/lpeyvmY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xGStlxqAvQR3fuObhoTNL58Dwx4zHJZi3lJkR5FRsGk=;
 b=WMBl3m2UE89wQbG2e0KhGcbkvn4ZPfPe2mPDkhubJ+acx/lnCuiZkUJlx8Qvsf7qlV
 ic8/e31P5EPBIjWMEvoXSj9W6VUd6VByBwP3rWlAZSjF1Cy2J9f5dmcH93lr04e5ffNs
 HQHBXNYeYXL6Vk60E8CsFaBDmMr/TfLjgtTTOtdjFnUPc+w4Ov8Y2so1JkX3wy9fGw6K
 Omc9leS3g9yWxtE46fRbeS9zCYEJ0LB6XLrNAAbZVXSZ5U6Z5DK7pZPye6+JW80gaYqx
 WX7p8u2XKldN7lKDWna6BO9WvCoDPJFTdxBf/4Uq6HcfvOm8/jTahGyRrdriqHhx2+l3
 GdHA==
X-Gm-Message-State: AOAM533eKHf++2ctCA3ErrPSnSGTMCS6BMyCOoi6tZKUybY0xj7PELDL
 LMJFn7U/tiuONvVWBg9YwrGorQ==
X-Google-Smtp-Source: ABdhPJw9zQ9FHiIrOF4l1DSunVZ4O1l6WEd8btHlGjCMzAi/Xrn0LjUd6tarLCDJ0dcb4B1DIplhng==
X-Received: by 2002:a05:600c:1550:: with SMTP id
 f16mr4715522wmg.97.1616620247888; 
 Wed, 24 Mar 2021 14:10:47 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id k4sm5343736wrd.9.2021.03.24.14.10.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Mar 2021 14:10:47 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 24 Mar 2021 22:10:41 +0100
Message-Id: <20210324211041.1354941-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210324211041.1354941-1-daniel.vetter@ffwll.ch>
References: <20210324211041.1354941-1-daniel.vetter@ffwll.ch>
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

Cc: Simon Ser <contact@emersion.fr>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Jason Ekstrand <jason@jlekstrand.net>
Cc: Dave Airlie <airlied@redhat.com>
Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Acked-by: Dave Airlie <airlied@redhat.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 Documentation/gpu/index.rst |  1 +
 Documentation/gpu/rfc.rst   | 17 +++++++++++++++++
 2 files changed, 18 insertions(+)
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
index 000000000000..a8621f7dab8b
--- /dev/null
+++ b/Documentation/gpu/rfc.rst
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
