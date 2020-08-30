Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37923256F90
	for <lists+intel-gfx@lfdr.de>; Sun, 30 Aug 2020 19:44:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5780B6E09A;
	Sun, 30 Aug 2020 17:44:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com
 [IPv6:2607:f8b0:4864:20::841])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DD7D6E095;
 Sun, 30 Aug 2020 17:44:36 +0000 (UTC)
Received: by mail-qt1-x841.google.com with SMTP id p65so3274131qtd.2;
 Sun, 30 Aug 2020 10:44:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Zox2tQSKuyF7Uhc7ts+tys6J0QOKpBXFcUR5IKsFYv4=;
 b=U7b67p7yowQ/MIKTDr21nUsZiykqO9kq0WR2H4mTDMQAECfuEEfyD9jvLHNkHG85Wf
 coTsuRJoGLXK30HL1dqZSLhcnWi1vAN4mqqEGK+s+uiDOxEP6dHaCm8tpHI+Ya5Ehf3e
 jCVvui5MT8ZZEZEr42+cXwNAe397QygSMPIGisVU9+F3MtGNgJWTfsBrYSWs3OPUh7KY
 19RwiAAe8xdAgKvQOzoAuKbrLTgFczMpm+TEUAHhdEjmos0oww40BWWi2D2mZ76zbgbh
 Z8ZVigtzw+4mDCFpSOJKurlwBNGDm1f/OJ3xH+HSaVWr3WyRDtrSJW/8qcEwTpHxnbPY
 Hreg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Zox2tQSKuyF7Uhc7ts+tys6J0QOKpBXFcUR5IKsFYv4=;
 b=k9y7yJb8myZP9o76nJD7vybzxX/cUD5qYNkhVvIlmolMxlM/ZAg3ntRO8NJ7Za+rq8
 yqeyJtOmhWvMGaNOnTT1f6auOCP63EcE2W7Mukm5ZJ4aaSni7/E6oEW2By7mTuCmNgNJ
 pvkf/FiTZIZITmi2uRAEe+NoHmhYAVTw/l8bwU7ykjXXuWOFTkGEbQRZkSIo6C3nf+9n
 gIRtKuyUgqGRdJkZ0HbXpdvvfWdXRkjJTIvF75fEX2Mp5/RwGW7u15SRugkRimJ8pRGt
 5TZbXquYC7RC4FQeze6cyGipJownf8aEubKycrY0p7DpJ0Ka+4rvP4fLRRz7wXBxANJ0
 0JiA==
X-Gm-Message-State: AOAM532U/MqtDq85eGjDWJ1UC2iwu+i0tEzU8F51F92LMQpkufVG3KSR
 4XuDh97Hdym9frcUq+rgvZSuBMUcweuWJw==
X-Google-Smtp-Source: ABdhPJwOLyMgWC2Ujg0TVLLBKC7G5skYDdiPP/A9vfE+Srs2IRL0eyXxx4YQ9KZY+8xtXpM28OUqzQ==
X-Received: by 2002:aed:2171:: with SMTP id 104mr1102010qtc.152.1598809475116; 
 Sun, 30 Aug 2020 10:44:35 -0700 (PDT)
Received: from atma2.hitronhub.home ([2607:fea8:56e0:6d60::2db6])
 by smtp.gmail.com with ESMTPSA id l1sm6797662qtp.96.2020.08.30.10.44.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 30 Aug 2020 10:44:34 -0700 (PDT)
From: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
To: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 nd <nd@arm.com>
Date: Sun, 30 Aug 2020 13:44:06 -0400
Message-Id: <20200830174410.256533-1-rodrigosiqueiramelo@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v9 0/4] Add support for testing writeback
 connectors
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
Cc: Simon Ser <contact@emersion.fr>, melissa.srw@gmail.com,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

A couple of months ago I updated and re-submitted a patchset made by
Brian Starkey and Liviu Dudau for adding a writeback connectors test to
IGT. It is important to highlight that DRM already have writeback
connectors support, which is a way to expose in DRM the hardware
functionality from display engines that allows writing back into memory
the result of DE's composition of supported planes.

After I resubmitted the patchset, Simon Ser provides a long and detailed
review for all of the patches (thanks Simon). Additionally, Maxime
Ripard tested the previous series in an ARM32 architecture and provided
his feedback for making this patchset portable (thanks Maxime). I
finally had time to go through all the details and prepare this new
version. Follows some notes:

1. Patchset author

Brian Starkey is the original author of this patchset, and I'm just
trying to upstream his changes. Note that during this patch submission,
the mail server from google going to overwrite Brian's mail by mine;
this happens on the mail server side for avoiding malicious users to
send emails as someone else. Note that I could spend time figuring out
how to fix it, but I think this is not worth it since I can fix it during
the merge process (if it got accepted).

2. Drop the clone commits from the series

After Simon's review, we decided to drop the last two patches of the
original series since it was related to cloning output and VKMS does
not support it yet. However, after we finish this series, I can try
to take a look at this feature or maybe propose it as a GSoC/Outreachy
project.

Most of the changes happened in the second patch.

3. Cross-platform improvements

4. Add test description and remove some unnecessary code

Thanks

Brian Starkey (4):
  lib/igt_kms: Add writeback support
  kms_writeback: Add initial writeback tests
  lib: Add function to hash a framebuffer
  kms_writeback: Add writeback-check-output

 lib/igt_fb.c           |  63 ++++++
 lib/igt_fb.h           |   2 +
 lib/igt_kms.c          |  52 +++++
 lib/igt_kms.h          |   6 +
 tests/Makefile.sources |   1 +
 tests/kms_writeback.c  | 450 +++++++++++++++++++++++++++++++++++++++++
 tests/meson.build      |   1 +
 7 files changed, 575 insertions(+)
 create mode 100644 tests/kms_writeback.c

-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
