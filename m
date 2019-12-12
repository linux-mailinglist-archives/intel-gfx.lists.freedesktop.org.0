Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD7E11CF26
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 15:04:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C22836ED67;
	Thu, 12 Dec 2019 14:04:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-xc43.google.com (mail-yw1-xc43.google.com
 [IPv6:2607:f8b0:4864:20::c43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A7F66ED69
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 14:04:39 +0000 (UTC)
Received: by mail-yw1-xc43.google.com with SMTP id 192so801208ywy.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 06:04:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=QhoTimPNvUHtF4G/YQIFrnbKGTtI6y52ps3VPMiqmho=;
 b=FTmINJcFP3tdJJXAr+PyHF7DFztgt6kLHEPm5o6v7jp62QXM8lrykdX9t8JNdBppiC
 h2VbjhHDaig6vwV7L9tGAEvtVjGe8nC3A2xyo5eWGI3VpqmyiR7QgFO40XHFvevZKsCv
 Eeo50Cie7p4JftaBx2YzNbplLxB0q+992SJYcWj4lgo0hNtf8bwBWbJxQSmg+2e4PMmi
 j0hLiXLOhPgcRrCufZrAWuQKYHDJ/sX7Q7JdA86FzaRaKQ8kfkBCy0dlelat8eidVWlj
 NkkCMV2lCE/AX0Sa345IqKDTPTieb8Udcto+vuAAgY5Hm0pQaRxcwZx6+KsQ7K3I4NeR
 HG7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=QhoTimPNvUHtF4G/YQIFrnbKGTtI6y52ps3VPMiqmho=;
 b=JayKGJoDj60gcyxkMXydGZTLVgh3UAX9LVoWzUYgLXsY//BNkxRba++9JLP5ENwW+8
 LdTkqZWO8ApSVZ6rAd9SP7csiP73wba4G+8AVmpFQFhARtWUhfG/dtU4fbWPOeYXpp9q
 uzETAt2h83rUBExLZM4qdus8SQbUY1/UQVFKalR9wIHchssf9/pY537GiHVVIz9Gbxip
 PD0iLThqzFnL/uj2xOCxmuEjRlZR5DD0b43WuSJ5hWW447k2i/5OKz7hrf4Kyheh24S1
 ByU6ubastMp7rHmpdzbaHAqy5KhZ8qU3wH3s8vo3kaz1+HE8K0HEaFPQOm3mj9BrLyEw
 v28A==
X-Gm-Message-State: APjAAAW1rIvjE9Pzen9xMY/wZMzqNT2JIGaC718mX46dp9TQH6ySGhng
 YsaqtaPEu7d4gdLpVkh2sjeFUw==
X-Google-Smtp-Source: APXvYqyBRrIAwhRyJ81WNxMSHIIBpTOYhjbJDuPCFoDjQYTQ6gT7GEk+U/en3HKEeGINuhEuhWnn0g==
X-Received: by 2002:a0d:d44c:: with SMTP id w73mr4155687ywd.492.1576159478688; 
 Thu, 12 Dec 2019 06:04:38 -0800 (PST)
Received: from localhost ([2620:0:1013:11:1e1:4760:6ce4:fc64])
 by smtp.gmail.com with ESMTPSA id d9sm2689910ywh.55.2019.12.12.06.04.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 06:04:37 -0800 (PST)
Date: Thu, 12 Dec 2019 09:04:37 -0500
From: Sean Paul <sean@poorly.run>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20191212140145.GA145200@art_vandelay>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Intel-gfx] [PULL] drm-misc-next-fixes
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
Cc: dim-tools@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, Steven Price <steven.price@arm.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Hi Dave and Daniel,
I realized there were a few leftovers from -next-fixes which should find
their way to drm-fixes.

Sean


drm-misc-next-fixes-2019-12-12:
-mgag200: more startadd mitigation (Thomas)
-panfrost: devfreq fix + several memory fixes (Steven, Boris)

Cc: Boris Brezillon <boris.brezillon@collabora.com>
Cc: Steven Price <steven.price@arm.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>

Cheers, Sean


The following changes since commit e5a6ca27eb72c67533ddfc11c06df84beaa167fa:

  drm/dp_mst: Correct the bug in drm_dp_update_payload_part1() (2019-12-04 15:31:16 -0500)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-next-fixes-2019-12-12

for you to fetch changes up to 0a5239985a3bc084738851afdf3fceb7d5651b0c:

  drm/panfrost: Open/close the perfcnt BO (2019-12-06 11:06:20 -0600)

----------------------------------------------------------------
-mgag200: more startadd mitigation (Thomas)
-panfrost: devfreq fix + several memory fixes (Steven, Boris)

Cc: Boris Brezillon <boris.brezillon@collabora.com>
Cc: Steven Price <steven.price@arm.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>

----------------------------------------------------------------
Boris Brezillon (4):
      drm/panfrost: Fix a race in panfrost_ioctl_madvise()
      drm/panfrost: Fix a BO leak in panfrost_ioctl_mmap_bo()
      drm/panfrost: Fix a race in panfrost_gem_free_object()
      drm/panfrost: Open/close the perfcnt BO

Steven Price (1):
      drm/panfrost: devfreq: Round frequencies to OPPs

Thomas Zimmermann (1):
      drm/mgag200: Flag all G200 SE A machines as broken wrt <startadd>

 drivers/gpu/drm/mgag200/mgag200_drv.c       |  3 +--
 drivers/gpu/drm/panfrost/panfrost_devfreq.c | 19 ++++++-------------
 drivers/gpu/drm/panfrost/panfrost_drv.c     | 20 +++++++++++---------
 drivers/gpu/drm/panfrost/panfrost_gem.c     | 19 ++++++++++++-------
 drivers/gpu/drm/panfrost/panfrost_gem.h     |  4 ++++
 drivers/gpu/drm/panfrost/panfrost_perfcnt.c | 23 ++++++++++++++---------
 drivers/gpu/drm/panfrost/panfrost_perfcnt.h |  2 +-
 7 files changed, 49 insertions(+), 41 deletions(-)

-- 
Sean Paul, Software Engineer, Google / Chromium OS
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
