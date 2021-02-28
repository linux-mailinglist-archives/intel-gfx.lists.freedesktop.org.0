Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9EB32815E
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Mar 2021 15:52:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C150E89D83;
	Mon,  1 Mar 2021 14:52:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3C286E214
 for <intel-gfx@lists.freedesktop.org>; Sun, 28 Feb 2021 14:29:10 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id i9so10933246wml.0
 for <intel-gfx@lists.freedesktop.org>; Sun, 28 Feb 2021 06:29:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qCy+l4W0SN+Qr0q0h1Kr4cn7PGq4wjNf/wKoSbiwHDE=;
 b=l+7csCuZQGg74lRO/aOwfa+azvIzyT13bs+7tEu51cqSR2+YvGM30NAa+8yIwlOIhg
 WRBongyXfTw3qdsbNBhUq8mLclr7VH5G0Krt/dNhPCb0PKFPLEIUMzXsjzXo92DS3/At
 Kx16EKbTlFiD2fWYYMpoTsoBFaKg9C76RRTN6/DIEiXSNi0MBAULu/q0E9PDYL4mp6sR
 uZr3ai/kDpbNMOxVwB03GOvglhpyYY8BfCJugOR5+cap3cdNSv8EHNaVprlDXE3k7lcO
 y1+MP3dlCtntLCrwOZfdzFWcYjLPS5Q9NAjL2XsPAqFA/LhTcnkAW+J2f+RQX2R5rVhk
 WKlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qCy+l4W0SN+Qr0q0h1Kr4cn7PGq4wjNf/wKoSbiwHDE=;
 b=bZf420UH21KDtvGIxJEztIy21GIX3DikYtrxix0/f6pC/bZW7pD9FEryoKP/F0MzLE
 WfjyXU33Ab4U9wRVXgslKIIUAXmJ2fOlyYl8dJUiLPurqMO7JgnVvLxDOWVtzVjX4ERo
 1X1Ruxh4lCHITNA5x9XejxhMm/Z6ne+21neKU48+lhzyF7tHIiEqOA6ZynMw+wSjJPoi
 7YZh1/DSAEoO6+m81QJvNbeFnDaynAfglD7+gI+KIGnx1WrFi+9qX6I7ERRUm8mjrXJW
 091P3WxlMr8jdoAhHVmKz9qqG05QFJFRM6f/NRbLirfHQPc+iGJdNSLXjU2rmQqALdSo
 gx7w==
X-Gm-Message-State: AOAM5334g0gzezGLgD6KuiFQDCyoAzsyja8bmOTJZ3TergPctXic/LCM
 HgD1YqhfOudmrXqrvzDWD/tkXCQDyPk=
X-Google-Smtp-Source: ABdhPJyL5GhlUaJX6hs8PLE0HB6OEqb+oGhN+EkR5+6gYZBYI2Eqeg667g8cA3rHPnT/OjlOG4OfKQ==
X-Received: by 2002:a1c:730a:: with SMTP id d10mr11276577wmb.53.1614522549407; 
 Sun, 28 Feb 2021 06:29:09 -0800 (PST)
Received: from archlinux.localnet (80.142.94.90.dynamic.jazztel.es.
 [90.94.142.80])
 by smtp.gmail.com with ESMTPSA id f126sm7245178wmf.17.2021.02.28.06.29.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 28 Feb 2021 06:29:08 -0800 (PST)
From: Diego Calleja <diegocg@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 28 Feb 2021 15:29:07 +0100
Message-ID: <3423617.kz1aARBMGD@archlinux>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 01 Mar 2021 14:52:13 +0000
Subject: [Intel-gfx] -stable regression in Intel graphics,
 introduced in Linux 5.10.9
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

There is a regression in Linux 5.10.9 that does not happen in 5.10.8. It is still there as
of 5.11.1

This regression consists in graphics artifacts that will *only* start appearing after resuming
from suspend. They don't happen immediately after resuming from suspend either, but
after some minutes.

My system has integrated intel graphics
00:02.0 VGA compatible controller: Intel Corporation 4th Generation Core Processor Family Integrated Graphics Controller (rev 06) (prog-if 00 [VGA controller])                                            
CPU: Intel(R) Core(TM) i3-4170T CPU @ 3.20GHz

For reference, this is the list of i915 commits that went into 5.10.9.


commit ecca0c675bdecebdeb2f2eb76fb33520c441dacf
Author: Chris Wilson <chris@chris-wilson.co.uk>
Date:   Mon Jan 11 22:52:19 2021 +0000

    drm/i915/gt: Restore clear-residual mitigations for Ivybridge, Baytrail
    
    commit 09aa9e45863e9e25dfbf350bae89fc3c2964482c upstream.


commit de3f572607c29f7fdd1bfd754646d08e32db0249
Author: Imre Deak <imre.deak@intel.com>
Date:   Wed Dec 9 17:39:52 2020 +0200

    drm/i915/icl: Fix initing the DSI DSC power refcount during HW readout
    
    commit 2af5268180410b874fc06be91a1b2fbb22b1be0c upstream.


commit 54c9246a47fa8559c3ec6da2048e976a4b8750f6
Author: Hans de Goede <hdegoede@redhat.com>
Date:   Wed Nov 18 13:40:58 2020 +0100

    drm/i915/dsi: Use unconditional msleep for the panel_on_delay when there is no reset-deassert MIPI-sequence
    
    commit 00cb645fd7e29bdd20967cd20fa8f77bcdf422f9 upstream.


commit 0a34addcdbd9e03e3f3d09bcd5a1719d90b2d637
Author: Jani Nikula <jani.nikula@intel.com>
Date:   Fri Jan 8 17:28:41 2021 +0200

    drm/i915/backlight: fix CPU mode backlight takeover on LPT
    
    commit bb83d5fb550bb7db75b29e6342417fda2bbb691c upstream.


commit 48b8c6689efa7cd65a72f620940a4f234b944b73
Author: Chris Wilson <chris@chris-wilson.co.uk>
Date:   Mon Jan 11 22:52:18 2021 +0000

    drm/i915/gt: Limit VFE threads based on GT
    
    commit ffaf97899c4a58b9fefb11534f730785443611a8 upstream.


commit 481e27f050732b8c680f26287dd44967fddf9a79
Author: Chris Wilson <chris@chris-wilson.co.uk>
Date:   Mon Jan 11 22:52:20 2021 +0000

    drm/i915: Allow the sysadmin to override security mitigations
    
    commit 984cadea032b103c5824a5f29d0a36b3e9df6333 upstream.


Regards


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
