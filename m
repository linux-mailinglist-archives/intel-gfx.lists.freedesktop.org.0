Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C4DD13E014
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 17:29:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FCCF6EDD5;
	Thu, 16 Jan 2020 16:28:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-xc44.google.com (mail-yw1-xc44.google.com
 [IPv6:2607:f8b0:4864:20::c44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 491B46EDD6
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 16:28:58 +0000 (UTC)
Received: by mail-yw1-xc44.google.com with SMTP id u139so12963361ywf.13
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 08:28:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=lS8F+CwbTI610S/KA97UmC4Nj3AKvTLOMWBRVZYZmxw=;
 b=VunRtgaCFl7cOe3E6LHVeuqzjicSp+mp6ZDHO5vO3qnqUZ2vv4YcKdxCKTO+NFZmGj
 YVL4c6Ms9AqHHn+Knx3DWNtY67ZWGyL1bmtu0uo8nsJATV+JoKfQNWryR+00Mm67OlPY
 eI7IoyCfnmFMqcwhRyJGZ81hVrCcYZUq+b2wWuF1Tvon3EgLxkfrrozFmlEFH6chTsLJ
 1vuGAyexOSeDPUqP3l0HKxQXjzMpORn5PTEOHM9ntM1UChPyROBeKBuwkZkk0WhmKU4q
 X0gVqig0vEAS5d49ga4jbZgAaFE7KSQzJeAHjdFmH/6SM2I76q6rhREloRpo/BH2zotF
 eiZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=lS8F+CwbTI610S/KA97UmC4Nj3AKvTLOMWBRVZYZmxw=;
 b=o+5hjKUMbGeLCNUL96iKV6cSptjuavb0kOqXr/Tei6YjfRwjAE9l/ZSVpq/+UiCyk/
 WYYu7jTd8uMZiIdm752H5+3NpjEClWqf+SSik/8P4K0Tnj8KtPk1O4RgZ32Jln2F+GIO
 01Ev6ZYiObgPlzyVQC9i6gKs7gkfeahHBgVQE+TH0N86hxLIoGcU1urICSKoEojmC+XF
 lXFptLeJQAdFZM9UYvYF/FCc6lu4Pw+290OEltAl+kP2RxAIkMXFXsldA6AFZcW0lRf3
 JCOjBv2TuCzb0t6ns3WOkZj8gq9z4Ch3ADKUfkCervPOb7sltbcHYs8rD0LGyHjhIXnR
 nupw==
X-Gm-Message-State: APjAAAWYJ7On2fs9iEbu4ay62luPEid0x3Ly//r9sv9hV1sXV6DXQHte
 FZplNFc1DnAMn7mgbWd4TQVkoQ==
X-Google-Smtp-Source: APXvYqxjIOnk8/6JogOo+wwv5UAgK9I+vtUbC7Kidl7Cvv4IG3whWnt0uyS9VvKPdGg/8MY4V41TdA==
X-Received: by 2002:a0d:dd47:: with SMTP id g68mr25558542ywe.299.1579192137472; 
 Thu, 16 Jan 2020 08:28:57 -0800 (PST)
Received: from localhost ([2620:0:1013:11:1e1:4760:6ce4:fc64])
 by smtp.gmail.com with ESMTPSA id r10sm10298215ywr.97.2020.01.16.08.28.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 08:28:57 -0800 (PST)
Date: Thu, 16 Jan 2020 11:28:56 -0500
From: Sean Paul <sean@poorly.run>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20200116162856.GA11524@art_vandelay>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Intel-gfx] [PULL] drm-misc-fixes
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
Cc: dim-tools@lists.freedesktop.org, Tobias Schramm <t.schramm@manjaro.org>,
 Wayne Lin <Wayne.Lin@amd.com>, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, intel-gfx@lists.freedesktop.org,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Hi Dave and Daniel,
I'm delighted to present another -misc-fixes pull. Dock users rejoice, MST
keeps getting better!

Please pull!

drm-misc-fixes-2020-01-16:
virtio: maintain obj reservation lock when submitting cmds (Gerd)
rockchip: increase link rate var size to accommodate rates (Tobias)
mst: serialize down messages and clear timeslots are on unplug (Wayne)

Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Tobias Schramm <t.schramm@manjaro.org>
Cc: Wayne Lin <Wayne.Lin@amd.com>

Cheers, Sean


The following changes since commit 023b3b0e139f54a680202790ba801f61aa43a5c8:

  Merge tag 'drm-intel-fixes-2020-01-09-1' of git://anongit.freedesktop.org/drm/drm-intel into drm-fixes (2020-01-10 11:43:02 +1000)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-fixes-2020-01-16

for you to fetch changes up to 5a64967a2f3bbc01cc708ee43c7b0893089c61c4:

  drm/dp_mst: Have DP_Tx send one msg at a time (2020-01-15 17:01:21 -0500)

----------------------------------------------------------------
virtio: maintain obj reservation lock when submitting cmds (Gerd)
rockchip: increase link rate var size to accommodate rates (Tobias)
mst: serialize down messages and clear timeslots are on unplug (Wayne)

Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Tobias Schramm <t.schramm@manjaro.org>
Cc: Wayne Lin <Wayne.Lin@amd.com>

----------------------------------------------------------------
Gerd Hoffmann (1):
      drm/virtio: add missing virtio_gpu_array_lock_resv call

Tobias Schramm (1):
      drm/rockchip: fix integer type used for storing dp data rate

Wayne Lin (2):
      drm/dp_mst: clear time slots for ports invalid
      drm/dp_mst: Have DP_Tx send one msg at a time

 drivers/gpu/drm/drm_dp_mst_topology.c  | 39 +++++++++++++++++++++++++++++++---
 drivers/gpu/drm/rockchip/cdn-dp-core.h |  2 +-
 drivers/gpu/drm/virtio/virtgpu_plane.c |  1 +
 include/drm/drm_dp_mst_helper.h        |  6 ++++++
 4 files changed, 44 insertions(+), 4 deletions(-)

-- 
Sean Paul, Software Engineer, Google / Chromium OS
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
