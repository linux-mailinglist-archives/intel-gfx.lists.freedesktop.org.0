Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C945C33BC17
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Mar 2021 15:34:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6354A8901E;
	Mon, 15 Mar 2021 14:34:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com
 [IPv6:2607:f8b0:4864:20::62a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7A348901E
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Mar 2021 14:34:35 +0000 (UTC)
Received: by mail-pl1-x62a.google.com with SMTP id f8so1889926plg.10
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Mar 2021 07:34:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=soZF5v7lT9Dyi1mOKGPLcZ6n6wXgVSldyvSnnFs1msA=;
 b=mxdzBBReuuFHC4MBfgFZq+288jOa+pAqaf8TYbYpC5jNdsJMtEIkVeO0fV+0d8bqf6
 hnHF0TbmcoHPtllat+n6bWBFwMiJnySOSqzdG8ONBl5s5Bsu07zD80+J17s/l5/xjMVW
 4/gaLzuvtdVH3hmz1aWnptLfRv8VTIdXKv1IB45SA/MDTWTSH43pdfljdqMnwpeQcPX/
 +DtBRUMFAGV8/GHuKQp1GlW9cGUnREpA3UFLO5w/9GTulzVEOKhF79Nb8zp6iGI6IEIU
 Zn5UMSAmchcY2DJA/Ykuc0XdH02rmwjOnggT9gD4Cy9i7/beIOiuCORqGBtowxoJCrRs
 LURA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=soZF5v7lT9Dyi1mOKGPLcZ6n6wXgVSldyvSnnFs1msA=;
 b=khaAnJQICD1+IjtlmN93aNBX7n5hnyCKmUrbD76iqWBwlJcK0Sa0Q2KDQoj42URiDt
 oYtLZm60BKlRWtir5fc/TxLFHSzSbygezSMuMkkgPpyAD88r8adMhkHU64ORMy83rl7B
 vtkxk6ByYvmYPCpQsppHF8QvbXKhWB12VjLmQRxUDSjRNdM1EgJMW2FDLWaN0G9g5n7J
 87Gk9WRDE9TPtLhgi2T4fAHSbr2n1pml28HkREEbAydV7KMmEiM/0fLENzjZ6PYbB9p3
 EuE7nR/PcmYIwPRUClVp+JUsDvbCxSIGisY57bJ6M6IHEox+mu39Omd76jk8Rw+zzt+K
 Fqqw==
X-Gm-Message-State: AOAM531XW/eN6IFMInDps8h3AYVxw0mjh8gAUou7KVkWX7nj3QLLD6rk
 cOcCF2ToyPlVT/bML7TLxv95uA==
X-Google-Smtp-Source: ABdhPJykoZRYEM/BE5xaZCQbNoY6MNE9uJVHNVZ2bqlNCuGgE05upIUDvP3oBtbjDUxTyAmZDmVNgA==
X-Received: by 2002:a17:90b:108f:: with SMTP id
 gj15mr13488187pjb.177.1615818875236; 
 Mon, 15 Mar 2021 07:34:35 -0700 (PDT)
Received: from omlet.com (jfdmzpr06-ext.jf.intel.com. [134.134.137.75])
 by smtp.gmail.com with ESMTPSA id x190sm13520383pfx.166.2021.03.15.07.34.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 07:34:34 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Mon, 15 Mar 2021 09:34:25 -0500
Message-Id: <20210315143428.1471489-1-jason@jlekstrand.net>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/3] drm/i915: Drop legacy IOCTLs on new HW
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

These three patches exist to clean up some of our IOCTL mess in i915.
We've got more clean-up we should do eventually, but these are some of the
easiest to drop and most egregious cases.

Test-with: 20210121083742.46592-1-ashutosh.dixit@intel.com

Ashutosh Dixit (1):
  drm/i915: Disable pread/pwrite ioctl's for future platforms (v3)

Jason Ekstrand (2):
  drm/i915/gem: Drop legacy execbuffer support (v2)
  drm/i915/gem: Drop relocation support on all new hardware (v5)

 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 113 ++----------------
 drivers/gpu/drm/i915/gem/i915_gem_ioctls.h    |   2 -
 drivers/gpu/drm/i915/i915_drv.c               |   2 +-
 drivers/gpu/drm/i915/i915_gem.c               |  14 +++
 include/uapi/drm/i915_drm.h                   |   1 +
 5 files changed, 26 insertions(+), 106 deletions(-)

-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
