Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0844134E3A
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 21:59:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D9A66E33A;
	Wed,  8 Jan 2020 20:59:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com
 [IPv6:2607:f8b0:4864:20::b43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A8AA6E33F
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2020 20:59:52 +0000 (UTC)
Received: by mail-yb1-xb43.google.com with SMTP id a124so2092415ybg.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Jan 2020 12:59:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=TTfZUrzIdG4GvVpuC632RtnPmfajz27XSxslKwleBjY=;
 b=CInWDQ3nAhldk00jzRf46RCaaROwR9WsNPfBO1T7EKVcPfUhWFGdDoMisumbgGTagx
 FF59tnAPPhznz6Ak+JC3Q56KG4zrStl9qdJE7ij2BDHBG/CiyiyJyCnHETAhzm/YlW5D
 t4iJiCjP3y2/xMNXDqA4tz5DTDdEuxXF05UkJaW0jrgiWPABXSvAtaDV5hOT4ZHUGvfr
 EN9yhMva4uXO0A5plNcLSDl9vpkVRVWRkuMhXkQGME350aQFzCZuWVDu+/JC3C+Tmzoi
 +BtQbGrQLR88q7DmnkAdWA3aQrbTRRem7GsoTcd5oOGYZXeC0lm3FdDtbNu35wrTdjtG
 YDIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=TTfZUrzIdG4GvVpuC632RtnPmfajz27XSxslKwleBjY=;
 b=Q4bJJrnaYf5suCH0/G8lGp3ydgwq7Knr42+UtbX1oHz1jqyuqXvgzYzWruTfkId9Yv
 f06rE5/JlALwDuDkiMvJ1/LFp2uRN6zNY4XVuSpq5MB8/MwumjUCqf3RqZSS1cYkhMer
 UMoNIAu9ZQjAfT9cp4Gnt6Yoh0V4Oss06QBZRW3rvmvjfl8FWFwBbFjwdRVUk9RIUf6g
 8BAOQd8EVoaZy21S4j3xTFFCTRvkw2POXLy7TzRRUU0IwWPzvP4CJrtP5d1n6ioVAXWs
 9o2DMJP8CiB3W/Z6BBpsWGuIfh+iibKIBKrIeSfT0nBj9UFuhICXcZ4utj++ga8YLP/n
 N8ng==
X-Gm-Message-State: APjAAAU8Td+CD5DHLqLJPuEDUZXcx+2guUYMUQkpkb/FHT9kxSnDUmjY
 TmUNHaGDYMFe1v1pmEvPFYWQZQ==
X-Google-Smtp-Source: APXvYqzCiedz7CcDCagQM8plp5DxnY666Ge/Ka0Upu4v9X+7lN0GyggQ9ToQExrDTlP8olPEGCdPAw==
X-Received: by 2002:a25:401:: with SMTP id 1mr5322847ybe.273.1578517191257;
 Wed, 08 Jan 2020 12:59:51 -0800 (PST)
Received: from localhost ([2620:0:1013:11:1e1:4760:6ce4:fc64])
 by smtp.gmail.com with ESMTPSA id 124sm2114167ywn.76.2020.01.08.12.59.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 12:59:50 -0800 (PST)
Date: Wed, 8 Jan 2020 15:59:49 -0500
From: Sean Paul <sean@poorly.run>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20200108205949.GA233273@art_vandelay>
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
Cc: dim-tools@lists.freedesktop.org,
 Geert Uytterhoeven <geert+renesas@glider.be>, Wayne Lin <Wayne.Lin@amd.com>,
 dri-devel@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Hi Dave and Daniel,
Either our code is nearly perfect, or things are still slow due to holidays.
I'll choose to believe the former.

Please pull!

drm-misc-fixes-2020-01-08:
-mst: Fix NO_STOP_BIT bit offset (Wayne)
-sun4i: Fix RGB_DIV clock min divider on old hardware (Chen-Yu)
-fb_helper: Fix bits_per_pixel param set behavior to round up (Geert)

Cc: Wayne Lin <Wayne.Lin@amd.com>
Cc: Chen-Yu Tsai <wens@csie.org>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>

Cheers, Sean


The following changes since commit ac2917b01992c098b8d4e6837115e3ca347fdd90:

  drm/arm/mali: make malidp_mw_connector_helper_funcs static (2019-12-20 15:23:51 +0000)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-fixes-2020-01-08

for you to fetch changes up to f30e27779d3031a092c2a177b7fb76adccc45241:

  drm/fb-helper: Round up bits_per_pixel if possible (2020-01-07 16:54:03 +0100)

----------------------------------------------------------------
-mst: Fix NO_STOP_BIT bit offset (Wayne)
-sun4i: Fix RGB_DIV clock min divider on old hardware (Chen-Yu)
-fb_helper: Fix bits_per_pixel param set behavior to round up (Geert)

Cc: Wayne Lin <Wayne.Lin@amd.com>
Cc: Chen-Yu Tsai <wens@csie.org>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>

----------------------------------------------------------------
Chen-Yu Tsai (1):
      drm/sun4i: tcon: Set RGB DCLK min. divider based on hardware model

Geert Uytterhoeven (1):
      drm/fb-helper: Round up bits_per_pixel if possible

Wayne Lin (1):
      drm/dp_mst: correct the shifting in DP_REMOTE_I2C_READ

 drivers/gpu/drm/drm_dp_mst_topology.c |  2 +-
 drivers/gpu/drm/drm_fb_helper.c       |  7 ++++++-
 drivers/gpu/drm/sun4i/sun4i_tcon.c    | 15 ++++++++++++---
 drivers/gpu/drm/sun4i/sun4i_tcon.h    |  1 +
 4 files changed, 20 insertions(+), 5 deletions(-)

-- 
Sean Paul, Software Engineer, Google / Chromium OS
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
