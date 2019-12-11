Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8765D11BF03
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 22:21:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5BD16EBEC;
	Wed, 11 Dec 2019 21:21:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb44.google.com (mail-yb1-xb44.google.com
 [IPv6:2607:f8b0:4864:20::b44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1169E6EBDE
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 21:21:09 +0000 (UTC)
Received: by mail-yb1-xb44.google.com with SMTP id v15so9601543ybp.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 13:21:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=zkJseZ127djdD2ipg54eZF16OUkDS7sXQRI3tcKMT7Q=;
 b=YVifUQQRJkLFcO+9zIGtLBR92KTfEqR6SSyuHzi8qxnsBupzZdIEVE1e7eUawxGik/
 NqiyNRWtj5/m9KVkZbvAnpblvpuBkhxdSnbgDt1LWsGY8W27Qq2APT3aza04ksJR05Ir
 8HkzBeM207RVY3bysKQ/nv+u7xG8Yj+AyOMlkRo1lxk0snUgvC6dcXQBEhg45QXmQqoX
 8ZZScaqQFMs53/zU3jPyUHofOzN3p9/45FRGRiWMCmjcT8gDfADK2CB25tHIf4ymjY+d
 Obnklj5nw3OHg3cN7IHejQoR3ht3ddWnO8BbpKJBk6hF5CHaZjNzekukTNBYFm5Ame8D
 4NjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=zkJseZ127djdD2ipg54eZF16OUkDS7sXQRI3tcKMT7Q=;
 b=S53ZWCuQhwf0wWs0fTy5aJY+c7+H/BxGFdqPYSI+25KgWDMfZa6pGpRcvBpMv8GGQB
 su+TzeTPDYaZE44aoQMYMAM8oQxcSjCZmhFeyx/5H7XFQQIp1+VLToLIUtEXNBUmk/tA
 84GPWAc8CtHvmoztxgc062BqUkr9xC+6kLtg/oyPZSPaLNQcnXlQA1qJjhMdGxbhnP2M
 wKpYpT/VYHeixbfi19k0MyT4UU2a18EnLNiBoxBkeX2ARYIc8wT6PSYogPR/fN34jABt
 8C3tbavSHM/yeSJgviwj7w43jLUADW35DVtH3RRh8kSrSNFIoEM0MQpkqvs+xQWVfPk4
 fnqA==
X-Gm-Message-State: APjAAAU9jz/EwtYS9UWGfVZxafRuNepIDbYjOEAEbaB1/jb3XbWZ6xu2
 j7eDZF59/Xih86BHrXVqMF/i1A==
X-Google-Smtp-Source: APXvYqykAkQee2DPqnggB3EW8sblYuE1DY3dbgN9gqvOWuv7keW3cqF9aM6XVfTLNaYKMMT0dxnNOg==
X-Received: by 2002:a25:5008:: with SMTP id e8mr1632641ybb.277.1576099268210; 
 Wed, 11 Dec 2019 13:21:08 -0800 (PST)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id i127sm1491956ywe.65.2019.12.11.13.21.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 13:21:07 -0800 (PST)
Date: Wed, 11 Dec 2019 16:21:07 -0500
From: Sean Paul <sean@poorly.run>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20191211212107.GA257983@art_vandelay>
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
Cc: dim-tools@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Hi Dave and Daniel,
A couple patches from -misc-fixes.


drm-misc-fixes-2019-12-11:
- Expand dma-buf MAINTAINER scope
- Fix mode matching for drivers not using picture_aspect_ratio

Cheers, Sean


The following changes since commit 6645d42d79d33e8a9fe262660a75d5f4556bbea9:

  dma-buf: Fix memory leak in sync_file_merge() (2019-11-25 10:21:33 +0100)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-fixes-2019-12-11

for you to fetch changes up to 78baee8d3b976a6a6a2c208e3a36d3f1e6297e6c:

  MAINTAINERS: Match on dma_buf|fence|resv anywhere (2019-12-10 11:26:19 +0100)

----------------------------------------------------------------
- Expand dma-buf MAINTAINER scope
- Fix mode matching for drivers not using picture_aspect_ratio

----------------------------------------------------------------
Daniel Vetter (1):
      MAINTAINERS: Match on dma_buf|fence|resv anywhere

Martin Blumenstingl (1):
      drm: meson: venc: cvbs: fix CVBS mode matching

 MAINTAINERS                             |  1 +
 drivers/gpu/drm/meson/meson_venc_cvbs.c | 48 ++++++++++++++++++---------------
 2 files changed, 28 insertions(+), 21 deletions(-)

-- 
Sean Paul, Software Engineer, Google / Chromium OS
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
