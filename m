Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03DD81B6AC6
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 03:26:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9ED46EA65;
	Fri, 24 Apr 2020 01:26:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com
 [IPv6:2607:f8b0:4864:20::841])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 154C96E063;
 Fri, 24 Apr 2020 01:26:29 +0000 (UTC)
Received: by mail-qt1-x841.google.com with SMTP id b1so3040550qtt.1;
 Thu, 23 Apr 2020 18:26:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lW1HHtGyrF1jHOnouQC8GNmOEUkOaR/Oqi39gFe7KlA=;
 b=h98F68rD4ZwWDxIq0AG1iAGIInAHhwU7ykJeFDeJotdCftqoBg42S6GHiw8SPWoNR7
 8ieKJO6hQjKs7AY5oUh/WEkQ5cbgLO/SOERqgGfIWAjDaplmwSwEpzzv83WnseJ5P4MD
 a7YdtrIyUsTLLsJLN5lGzrX5+UR4nvyqduIv26lHcusmkLPzUs5+LMdcGp0ZRpyudwMe
 Dl458EPz+PU4itJ0tUkA0T2uJ8sdIKZLp9GKfQ4q1zJT/dD/LQAFSMDYrd8h1bHwZfZQ
 PI77w5abz9b9Sht2TDDawu/Vm2ZXnLeX83yVPr8c2kQBfx2B/miaBHYJzTHuE1A//COT
 ErhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lW1HHtGyrF1jHOnouQC8GNmOEUkOaR/Oqi39gFe7KlA=;
 b=BkumrF4G28ggTO97hyghZIhdgmJi98Zsc1oehGTirZO08/wlhgYny5nPjcWmNdpFzx
 AV+Nv/D2ZQfObqHePm0bnLs4AfT+jYprnIR1v4pQ8mHfDbhlskK6gHN99QRLVIaZ2TFz
 YTyadKzM4ZJKP9nZpY0PcWflu61zDfAK2yY+8EG9JPjBaYFDWd0hLKc7Vs55+Q8vDX1Y
 /zvcpdm9tyoMloDUVZJC/8JF6vYCY02XdySBOLZjdK4jnUKG60m8Ec8xG3udyxINlmco
 NliivP2KAzzuCIKe69OW++lbaGRDrs+KC9pLKMwVKfLlKTkQI+MEYMdc59fb5n+VBPzf
 IC5g==
X-Gm-Message-State: AGi0PuZt23LY4J07sF5EIZn1hhLS/hTtAse19Y2h8nicTI4pxexNUbGK
 HM8NTmNhsYq2JgRFotUAmpXRgMpm
X-Google-Smtp-Source: APiQypKBTYD/c96iKsXl6PpVgV0OjPAg+xRdWxDuJjoZzbHFHqZ6ss8i8tq+gf4bTeHHT512QvTWvA==
X-Received: by 2002:aed:233d:: with SMTP id h58mr2628761qtc.4.1587691587983;
 Thu, 23 Apr 2020 18:26:27 -0700 (PDT)
Received: from atma2.hitronhub.home ([2607:fea8:56a0:11a1::2])
 by smtp.gmail.com with ESMTPSA id c41sm2997184qta.96.2020.04.23.18.26.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Apr 2020 18:26:27 -0700 (PDT)
From: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
To: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 nd <nd@arm.com>
Date: Thu, 23 Apr 2020 21:26:01 -0400
Message-Id: <20200424012605.2279679-1-rodrigosiqueiramelo@gmail.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v8 0/4] Add support for testing writeback
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
Cc: Simon Ser <contact@emersion.fr>, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

A couple of months ago, I updated and re-submitted a patchset made by
Brian Starkey and Liviu Dudau for adding a writeback connectors test to
IGT. It is important to highlight that DRM already have writeback
connectors support, which is a way to expose in DRM the hardware
functionality from display engines that allows writing back into memory
the result of the DE's composition of supported planes.

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
how to fix it, but I think this is not worth since I can fix it during
the merge process (if it got accepted).

2. Drop the clone commits from the series

After Simon's review, we decided to drop the last two patches of the
original series since it was related to cloning output, and VKMS does
not support it yet. However, after we finish with this series, I can try
to take a look at this feature or maybe propose it as a GSoC/Outreachy
project.

Most of the changes happened in the second patch.

3. Cross-platform improvements

Thanks

Brian Starkey (4):
  lib/igt_kms: Add writeback support
  kms_writeback: Add initial writeback tests
  lib: Add function to hash a framebuffer
  kms_writeback: Add writeback-check-output

 lib/igt_fb.c           |  63 ++++++
 lib/igt_fb.h           |   2 +
 lib/igt_kms.c          |  57 ++++++
 lib/igt_kms.h          |   6 +
 tests/Makefile.sources |   1 +
 tests/kms_writeback.c  | 443 +++++++++++++++++++++++++++++++++++++++++
 tests/meson.build      |   1 +
 7 files changed, 573 insertions(+)
 create mode 100644 tests/kms_writeback.c

-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
