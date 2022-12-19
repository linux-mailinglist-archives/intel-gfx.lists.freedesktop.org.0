Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B91E3651135
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Dec 2022 18:30:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC93210E2DE;
	Mon, 19 Dec 2022 17:30:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EF1610E2EF
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Dec 2022 17:29:53 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id co23so9421102wrb.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Dec 2022 09:29:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=ogsAwbaUWO+M6t9gf/sX/LdCCLr65p0PXfVPVyBkEPM=;
 b=d3dHWGobhSoxVE+jTYt6nhUyYF/5zOsbpLRwVaUodSiZeNkwwAgH9IG7kxZD+wrUym
 SmldAMoxaaGcCb0LOvqhXFDIcCYLiew2+8TXZALmZ3FNe2PNdKdkMjSdBu+fkWg0oyef
 XsGJVFlg4fsOVlzSHBiJge9X1NvFnh3mkujxnZPj8L1b42TxBwBUAQf/Kac65zhENiKK
 9ZHmSLpjHm+vN8CBmMVI5zWOWJro5Ce1tDDzfH65RnwZtwmy/6yDL69IYSZzlir2kpvQ
 nSoWPGEPZo3fgqvTELWFQHWsjNnjGNF9tCty9svZ9B32FSaH+3KbeuvHZwIdNYdLCQHZ
 Rojw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ogsAwbaUWO+M6t9gf/sX/LdCCLr65p0PXfVPVyBkEPM=;
 b=mi6ipFVLQMMMakre1DXftsysWUxm5yJdRnjjEz2tHEYdCyQ1diJX+ybgkrJsPpROz9
 5owpdtfWh0N9RY5LJdVfah2Bq+h2xUoKFG1C58xrAqjWGsFcfSaDooRltRExZ2qc2yep
 RaZL8cYXzmS1nc0HXy+C8a5rOJuyPdWIMu2L0IfOAOfQew3lRIOatlkLeZ7aAjt3qH7z
 jfimy2pcQOgiNvw60dGsQsisv/96XZK5T0uE5GM+KrqrIE9DJvaEEW2s9avL1BY91l4k
 5/JdQqh/JLqMi6P8ZNIxcDbUYqRVJsInfeDUsvFIq9CoOGJWJdippKQIVJZHZd5Hl5jc
 h+GQ==
X-Gm-Message-State: ANoB5pnnYR4gAFUq07nI+gPgn/maUpWvqfqeZW7DEBUvIg7kfhHzPqat
 h45+lfYYzeIkmXdXCzLwyFaAyHsNz2c=
X-Google-Smtp-Source: AA0mqf6pVHoaII89RIwzatGeKwCh6XKllLDIzES2x2qnmdgFwt4yHuj1Dy294Pmt7Z5oSSwCrPVznQ==
X-Received: by 2002:a5d:4ed0:0:b0:242:4a6f:5f18 with SMTP id
 s16-20020a5d4ed0000000b002424a6f5f18mr26159950wrv.38.1671470991948; 
 Mon, 19 Dec 2022 09:29:51 -0800 (PST)
Received: from localhost.localdomain (89-172-43-12.adsl.net.t-com.hr.
 [89.172.43.12]) by smtp.googlemail.com with ESMTPSA id
 x18-20020adfec12000000b00236488f62d6sm10532978wrn.79.2022.12.19.09.29.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Dec 2022 09:29:51 -0800 (PST)
From: Sasa Dragic <sasa.dragic@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Dec 2022 18:29:26 +0100
Message-Id: <20221219172927.9603-1-sasa.dragic@gmail.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] fix RC6p related regression on Sandy Bridge
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

Hi all,

RC6p got re-enabled on Sandy Bridge over time, seemingly by accident
over time, causing graphical glitches and occasional GPU hangs on my
old ThinkPad T420, severity depending on kernel version.

It is a known issue, e.g.:
https://wiki.ubuntu.com/Kernel/PowerManagementRC6
https://www.yoctoproject.org/pipermail/yocto/2012-June/007164.html

It was originally disabled in commit 1c8ecf80fdee ("drm/i915: do not
enable RC6p on Sandy Bridge"), and subsequently re-enabled by
13c5a577b342 ("drm/i915/gt: Select the deepest available parking mode
for rc6"), which seems to focus only on Ivy Bridge.

This patch re-disables RC6p on Sandy Bridge.

I don't know if this issue is fixed otherwise, and I just have a faulty
hardware, but there are few unresolved Sandy Bridge issues floating on
the net, which could be related to this. When disabling RC6p graphics
works flawlessly, as it also works on 4.15 kernel without modifications.

I didn't want to clutter this mail with too much info, so feel free to
ask for details, links or to file bug report if necessary.

Thanks,
Sasa

Sasa Dragic (1):
  drm/i915: re-disable RC6p on Sandy Bridge

 drivers/gpu/drm/i915/i915_pci.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

-- 
2.37.2

