Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A12233FBE9
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Mar 2021 00:40:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 304276E06B;
	Wed, 17 Mar 2021 23:40:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com
 [IPv6:2607:f8b0:4864:20::1034])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45B6A6E06B
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Mar 2021 23:40:21 +0000 (UTC)
Received: by mail-pj1-x1034.google.com with SMTP id t18so1949573pjs.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Mar 2021 16:40:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xDyAHEByarYKIun4iSQ4/PjsOvLjQactWDGcEb1bHKA=;
 b=Me0VfIs15Nb9ujkqoUbb6irk5JPisjTZY6Y4cmDw6sHwx1ICJ2jX6oSC2That5HoJR
 ws7NIadYOsAxHUPDZWImZacdssNS2K51PDa9LqdacuVmCgF9jt3nB3HMH9dGvx0lwPk2
 DZM4pZW21Vszoo6PtPXiVurrA66YUCtgGfYrxXIJJ8B2EEqqfO/UWBsVl47ZIv2KG9n8
 IFQF6BDW6ZJQ8efTmHgObREzqz3un18AttvIyhVt7CY5tH8Z4wnZEJqtXEIEy4pa93uI
 f54PI+PNEYEtx9CYPWlRECI84mJvcEk3T6OjlApPCniqyEcl0Ukk7DeQ82tu120pgYzc
 /gWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xDyAHEByarYKIun4iSQ4/PjsOvLjQactWDGcEb1bHKA=;
 b=BZ/uoMR3mOwugv83qhKaRmilGyGoAcc/FoANqiCIAtmzskRP8plZ0/ys51hZGn5x4E
 +Z3gT55eBiAdPIxYUTHI+hQ7+rJNw4GxmUxt70FpVB/i5foMUraTSBhXpTeSCDnGGm7w
 dSsEiISHq8uQBUkuwiMRsfRl4bup0Pg0A770dusQwv73/gARr5Kk8SxdptPJYNr9Cw85
 Baq+NvtZSinF0xkmdFGX+97yVIaG0RSweHq91b7UpeBmENDDGW+9PhrsCrIIXHyI2J1C
 0A8NtUZOqr0mza2RxfsRSpbfjzjcoWbScWOjqFICK1wvnV6bDKPcNAmWCE8qn1Z3VuEO
 9fKA==
X-Gm-Message-State: AOAM530DpgPtlDTaZTeEpXsicVePk476QoeFnciG4S2DCWhk8jXaFmhQ
 aWvO0lHS2TkF+2+m0I4FmJ0oHsP0xrX/gQ==
X-Google-Smtp-Source: ABdhPJz/+Vo9dE663Qy8FDlcXNEAcnQ0p957j1P+bRikVLAUW7HM9Yg6Ls8Xzb7qRV4dKQXeW39wsg==
X-Received: by 2002:a17:902:f68a:b029:e5:b17f:9154 with SMTP id
 l10-20020a170902f68ab02900e5b17f9154mr6667853plg.28.1616024420722; 
 Wed, 17 Mar 2021 16:40:20 -0700 (PDT)
Received: from omlet.lan (jfdmzpr05-ext.jf.intel.com. [134.134.139.74])
 by smtp.gmail.com with ESMTPSA id p3sm148399pgi.24.2021.03.17.16.40.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 16:40:20 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 17 Mar 2021 18:40:09 -0500
Message-Id: <20210317234014.2271006-1-jason@jlekstrand.net>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210315143428.1471489-1-jason@jlekstrand.net>
References: <20210315143428.1471489-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/5] drm/i915: Clean up some of the i915 uAPI
 (v6)
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
Cc: Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

These patches clean up some of our uAPI mess in i915.  The first patch
drops legacy execbuffer support which hasn't been used in 10 years.  The
next two drop some legacy ioctls on new platforms.  The last two drop APIs
which have never been used by userspace and shouldn't have landed in i915
in the first place.

Test-with: 20210121083742.46592-1-ashutosh.dixit@intel.com

Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Dave Airlie <airlied@redhat.com>

Ashutosh Dixit (1):
  drm/i915: Disable pread/pwrite ioctl's for future platforms (v3)

Jason Ekstrand (4):
  drm/i915/gem: Drop legacy execbuffer support (v2)
  drm/i915/gem: Drop relocation support on all new hardware (v6)
  drm/i915: Drop the CONTEXT_CLONE API
  drm/i915: Drop I915_CONTEXT_PARAM_RINGSIZE

 drivers/gpu/drm/i915/Makefile                 |   1 -
 drivers/gpu/drm/i915/gem/i915_gem_context.c   | 311 +-----------------
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 107 +-----
 drivers/gpu/drm/i915/gem/i915_gem_ioctls.h    |   2 -
 drivers/gpu/drm/i915/gt/intel_context_param.c |  63 ----
 drivers/gpu/drm/i915/gt/intel_context_param.h |  14 -
 drivers/gpu/drm/i915/gt/intel_lrc.c           |   1 -
 drivers/gpu/drm/i915/i915_drv.c               |   2 +-
 drivers/gpu/drm/i915/i915_gem.c               |  14 +
 include/uapi/drm/i915_drm.h                   |  37 +--
 10 files changed, 41 insertions(+), 511 deletions(-)
 delete mode 100644 drivers/gpu/drm/i915/gt/intel_context_param.c
 delete mode 100644 drivers/gpu/drm/i915/gt/intel_context_param.h

-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
