Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C021A337EFA
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 21:20:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 335156E530;
	Thu, 11 Mar 2021 20:20:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com
 [IPv6:2607:f8b0:4864:20::431])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE9BF6E530
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 20:20:24 +0000 (UTC)
Received: by mail-pf1-x431.google.com with SMTP id b23so308700pfo.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 12:20:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wIBg2TmFtTDfZ2+nNDQBSKuSR2y4FVXLy8VSgkAHfuQ=;
 b=lH3zoHj5SBaoZwTkl6fqCpLF2p/equaVwvt1PQ3DATuEZOSakxt1ST5tBSaZpe5bBF
 Am+EAzMUOZRxWS4yV7/XyA75FogXMmvaFaHHCtpKs1D20rKz7zEfjN3mWr5hIl7tbcE8
 7AEIlXxhDnUMV/ziU4BvEVbjO7/WU6sTfFxVkPXL+Ga5B6FcSqCHAblXApv6Zdf77j14
 o18zDtmq8wmcCt5kTswItGlayVft9/wduOIUZtT3BqLtsg47+bNULDTb81c2sDItApOi
 cPQMaiahWBgfTXmE1IuiclOF0rQAOpEDmsowEL3tv/A4ZXvebFFaC311hWL5uz5xG9Ez
 mofw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wIBg2TmFtTDfZ2+nNDQBSKuSR2y4FVXLy8VSgkAHfuQ=;
 b=gK23geXb2+o1Sisg3O4H3Q6UUpFaZTIjxf0c9Tb2xDgOa0fZgAsDfUEzdhTll2lFcN
 pXf6ZMpXmWHSjGGW++hYYIa1UN1/bbeb49PCvbJiE8pfX+ikdlRQbEB/ZOYy0JwnRQtI
 fIsmCer5kKNM/mIz9WMlA6TJ/hHoSbzYTRXU6VtIwwUan0qZaSQGFhCLJnVSssHS9NTB
 MGL0+Qt7PO4nNeD8PHZKEkHLRlycHCw6h070DYru0ugMPZnUxsM6+JXYhwJIPhPb9XF4
 eRrzSmKqRXAfNm22wrKfAVYWGtSlVuxspVWz/cH26Y6G/yXUeVeSL1rHGPco/F/yxctA
 8Gdw==
X-Gm-Message-State: AOAM533wNQszw+sOmpyFYkaB4H1kSEmQZIT2LkgWAP/BMK9bnWieKvu/
 EZnj/y1njqCMNUxcBGLpl4kNuSLL0C/4ag==
X-Google-Smtp-Source: ABdhPJyFuF39SEqmnldG/VCaNwz4OjdFUVvEQoWx4tidgZFafn1ADIemh0fTLAIsC+dJkMJX2pdzTQ==
X-Received: by 2002:aa7:881a:0:b029:1f1:6148:15c3 with SMTP id
 c26-20020aa7881a0000b02901f1614815c3mr9410854pfo.30.1615494023824; 
 Thu, 11 Mar 2021 12:20:23 -0800 (PST)
Received: from omlet.lan (jfdmzpr05-ext.jf.intel.com. [134.134.139.74])
 by smtp.gmail.com with ESMTPSA id i62sm3122636pgc.11.2021.03.11.12.20.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Mar 2021 12:20:23 -0800 (PST)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 14:20:16 -0600
Message-Id: <20210311202017.1133327-1-jason@jlekstrand.net>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1611354210.git.ashutosh.dixit@intel.com>
References: <cover.1611354210.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/1]drm/i915: Disable pread/pwrite ioctl's for
 future platforms (v2)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The rationale for this change is roughly as follows:

 1. The functionality can be done entirely in userspace with a
    combination of mmap + memcpy

 2. The only reason anyone in userspace is still using it is because
    someone implemented bo_subdata that way in libdrm ages ago and
    they're all too lazy to write the 5 lines of code to do a map.

 3. This falls cleanly into the category of things which will only get
    more painful with local memory support.

These ioctls aren't used much anymore by "real" userspace drivers.
Vulkan has never used them and neither has the iris GL driver.  The old
i965 GL driver does use PWRITE for glBufferSubData but it only supports
up through Gen11; Gen12 was never enabled in i965.  The compute driver
has never used PREAD/PWRITE.  The only remaining user is the media
driver which uses it exactly twice and they're easily removed [1] so
expecting them to drop it going forward is reasonable.

IGT changes which handle this kernel change have also been submitted [2].

[1] https://github.com/intel/media-driver/pull/1160
[2] https://patchwork.freedesktop.org/series/81384/

v2 (Jason Ekstrand):
 - Improved commit message with the status of all usermode drivers
 - A more future-proof platform check

Test-with: 20210121083742.46592-1-ashutosh.dixit@intel.com

Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>

Ashutosh Dixit (1):
  drm/i915: Disable pread/pwrite ioctl's for future platforms (v2)

 drivers/gpu/drm/i915/i915_drv.h |  1 +
 drivers/gpu/drm/i915/i915_gem.c | 18 ++++++++++++++++++
 2 files changed, 19 insertions(+)

-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
