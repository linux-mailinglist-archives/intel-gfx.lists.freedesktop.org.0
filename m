Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3205235F9C6
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 19:29:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 272466E4C9;
	Wed, 14 Apr 2021 17:29:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com
 [IPv6:2607:f8b0:4864:20::1032])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E8536E4C9
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 17:29:22 +0000 (UTC)
Received: by mail-pj1-x1032.google.com with SMTP id cu16so8621952pjb.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 10:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1Mc9V/D86U6BEgIVG5fSvnzsnM5e5tTTmQuVaPnzWOE=;
 b=I+jfFQqNi9/cilXzuSk6QG3M59Lt49okHGRHlubvLVjAI91piLtl8VNAc4/BfaPVFk
 XaU5JTTJewUdvBdO5DRSzYJoTrk334pEPmYXthPFZKGaXM0GbIQxibJe7BK1zsGNZEZp
 iaoZlNOa/SIbvvmTcc/kGpzVFB49NHkAluesQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1Mc9V/D86U6BEgIVG5fSvnzsnM5e5tTTmQuVaPnzWOE=;
 b=kHZ+MzRrrICQCxFVTSRcUJxk2QylhAJ6PE86PbqchQEzNbXdznDx+o9grUherP4j28
 0wOgzVKpIGDzaSqlcgbu4oNGHb9FZN/8RKInDQBBv9mm9i0WeHN2Z7cdiYeHlp6ovPsA
 5hPwXoGl93DD6ThL5IJVTRkyl+I8JXdnekmUqiBI+D8o5AmrSQzM8SjMEPqZIhDZZ0zq
 u//ZdaOBjDlTCobKwxZF1mHPkjhoWQCHvEf7K2OKJfAPJyUGs+/O6s/sHaA31KQzZ9yi
 gVEh97YeYKfZLnJ2ihyYDVJb8a4O6gcEIIDhlwyHLCJAjnUoO0SD7Q+Rj9IoWi14hudV
 c3qg==
X-Gm-Message-State: AOAM533z+z/79JWhxKEd/ihRLZYjtDT5LHHgcLcDG3K6rkP4JFy4EgRO
 pq/xJXE7OP5vjxmDGeol6zC2Hw==
X-Google-Smtp-Source: ABdhPJx59RC39LfClSHgnlQasDDu7sVxpdQzTbo5+kAxp9cQhaHMPuG2TyZuMZw0VJ7OVAVgHWGybw==
X-Received: by 2002:a17:902:7589:b029:e8:c011:1f28 with SMTP id
 j9-20020a1709027589b02900e8c0111f28mr38384074pll.35.1618421361888; 
 Wed, 14 Apr 2021 10:29:21 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:bae3:4af0:9792:1539])
 by smtp.gmail.com with ESMTPSA id e31sm63460pjk.4.2021.04.14.10.29.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Apr 2021 10:29:21 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: Wolfram Sang <wsa@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Thu, 15 Apr 2021 01:29:10 +0800
Message-Id: <20210414172916.2689361-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v19 0/6] add power control in i2c
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
Cc: devicetree@vger.kernel.org, Qii Wang <qii.wang@mediatek.com>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 linux-i2c@vger.kernel.org, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Although in the most platforms, the power of eeprom
and i2c are alway on, some platforms disable the
eeprom and i2c power in order to meet low power request.

This patch add the pm_runtime ops to control power to
support all platforms.

Changes since v18:
 - Fix a function name conflict with drivers/gpu/drm/i915/selftests/i915_gem.c

Changes since v17:
 - Add a patch to fix unbalanced regulator disabling.
 - Add dts patch.

Changes since v16:
 - request regulator in device instead of in the core.
 - control regulator only if it's provided.

Changes since v15:
 - Squash the fix[1] for v15.
[1] https://patchwork.ozlabs.org/project/linux-i2c/patch/20200522101327.13456-1-m.szyprowski@samsung.com/

Changes since v14:
 - change the return value in normal condition
 - access the variable after NULL pointer checking
 - add ack tag

Changes since v13:
 - fixup some logic error

Changes since v12:
 - rebase onto v5.7-rc1
 - change the property description in binding

Changes since v11:
 - use suspend_late/resume_early instead of suspend/resume
 - rebase onto v5.6-rc1

Changes since v10:
 - fixup some worng codes

Changes since v9:
 - fixup build error
 - remove redundant code

Changes since v8:
 - fixup some wrong code
 - remove redundant message

        [... snip ...]

Bibby Hsieh (1):
  i2c: core: support bus regulator controlling in adapter

Hsin-Yi Wang (5):
  dt-binding: i2c: mt65xx: add vbus-supply property
  i2c: mediatek: mt65xx: add optional vbus-supply
  misc: eeprom: at24: check suspend status before disable regulator
  arm64: dts: mt8183: add supply name for eeprom
  drm/i915/selftests: Rename functions names

 .../devicetree/bindings/i2c/i2c-mt65xx.txt    |  1 +
 .../dts/mediatek/mt8183-kukui-kakadu.dtsi     |  4 +
 .../dts/mediatek/mt8183-kukui-kodama.dtsi     |  4 +
 .../boot/dts/mediatek/mt8183-kukui-krane.dtsi |  4 +
 drivers/gpu/drm/i915/selftests/i915_gem.c     | 10 +--
 drivers/i2c/busses/i2c-mt65xx.c               |  7 ++
 drivers/i2c/i2c-core-base.c                   | 88 +++++++++++++++++++
 drivers/misc/eeprom/at24.c                    |  6 +-
 include/linux/i2c.h                           |  2 +
 9 files changed, 119 insertions(+), 7 deletions(-)

-- 
2.31.1.295.g9ea45b61b8-goog

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
