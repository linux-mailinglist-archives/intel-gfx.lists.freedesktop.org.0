Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4637768E122
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 20:28:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEEFA10E047;
	Tue,  7 Feb 2023 19:28:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4CEB10E5AC
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 19:28:35 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id ba1so10574395wrb.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Feb 2023 11:28:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=0x3pP/JmMcW0RFO92bcsz2hmFqLKZ9eDavIYzjFn2mQ=;
 b=Zwp0lP9I8UXb/WB+xDnzPC8TxqZE93tjMiSFwy38jFk+4y3eePpWzZ/KmGnIVqcBQX
 iSN351FT6pQ8znWbWaq770dlj00kx7a3JnAMsq7kDRVRbd93e+40yPIxXTtZOJ1VDoHD
 TyuMFpZyaxeiuQQ1XRxHC6O/tF6J5LdR1BJqWh+70p5T2k96H+vhvr1m6+i/QWlPcUrq
 0NuXYaFDHkHFqkwTLWN8GEVQbIlcem28Oeo8TXFzOdLfvhINJe0bCoZP87XMTcBS97Hd
 WFQ0fjFKzwPyaesH4gz4SuhF7ufwJocgS9+Hn7wvfRcjHqO70zUEkbEQ9sOc5reByokv
 NlvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=0x3pP/JmMcW0RFO92bcsz2hmFqLKZ9eDavIYzjFn2mQ=;
 b=DhC7GHDhAOVrHSNukvA3JBggu4x7i8DH1CocjLtLw/pLY0EhkB5LJ4LExGJV9kqo4V
 93hs9cw6O9HZNR8fZR5l3S1JO4ONB/B9a0i6sX7xtmR+gby984f7EUFBm3Vkc53xXuB7
 GOs9khQ3urNgAbo7tPMDVWr94jd6DHVtGrhCI11GTYayLuVG6yqFINk4JBFyLVQnIdIn
 5gw+wLs4ws/Zj3EqE1qgeTFGIHqaK/UwqLdwfWHA1BmL1FfNpojGr9xIYqJQ4Uhu/Vj1
 p2Xh/bRKxrfem48h8iNeYZklUSBRBxE5zH1rqGD/jTJwp1IZHgFXG2WPC161JFPS9b8O
 kTrQ==
X-Gm-Message-State: AO0yUKWKXGtAU1ojUsQxjsB0MYIqYdBAsy2oZQEkIvnzICXcqEg2BNq3
 G3l1b6d9ES+SoQ44XpocWADKnH6HJ9ARyCpK71PRBncNDvE=
X-Google-Smtp-Source: AK7set/pRm0ypjNq8S3wLpjHC5ImFWxqHEwN3ep8c6Fc8aBepWju2SuRCSnCc5UfSsm2XLIxPqjN4N/IZNiSqMVFv9k=
X-Received: by 2002:adf:db46:0:b0:2bf:d149:1089 with SMTP id
 f6-20020adfdb46000000b002bfd1491089mr162690wrj.299.1675798114119; Tue, 07 Feb
 2023 11:28:34 -0800 (PST)
MIME-Version: 1.0
From: Nathan Schulte <nmschulte@gmail.com>
Date: Tue, 7 Feb 2023 13:28:22 -0600
Message-ID: <CALjcMPWVDr8uUmO62VKSur5xNcR-JW69E6ra2-m2ja_iqPH=gQ@mail.gmail.com>
To: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [RFC] drm/i915/dp: Remove i915.enable_dp_mst module
 parameter
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I wanted to add a note about why I initially proposed the modparam
enable_dp_mst: --

The problem I was facing is that an external DisplayPort adapter
(Sunix DPD2001: https://sunix.com/en/product_detail.php?pid=1720),
supporting both MST and SST, had no means of choosing SST
("splitting", single display) vs MST ("normal", additional display)
mode -- the MST mode is automatically selected if the graphics
advertised support, and SST otherwise.  This presented and issue when
using two of these devices with e.g. Intel HD 4600, which supports a
maximum of three displays.  At the time, disabling MST support was the
only mechanism [not yet] available to enable this setup.  A
per-port/channel disable is great, as likely are the debugfs
improvements since.

Finally, Sunix actually provided me with a customized firmware that
disabled MST support in the device, enabling the quad-monitor setup in
this situation, though the ability of the user to control the
driver/mode is preferred.  I'm happy to share this firmware if anyone
requests it.

I'm surprised and happy this modparam proved useful to others, and
glad it was accepted as a change.

Kudos,

--
Nathan
