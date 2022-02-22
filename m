Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE954BF687
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 11:49:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B25E10E47D;
	Tue, 22 Feb 2022 10:49:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B8E610E539
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Feb 2022 10:49:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645526961; x=1677062961;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YpzkHInk1JdMvGDlbPDx+MfCePhgDZ7p6g/YywoiwfQ=;
 b=m7/l5UK6uq5/AqS9JRDnHzhVj0aTGgD05aIBBzSJVJb7DwsNgQEaXneI
 en/Nj7/TPif1Y2CWcbZthLyFX0M3Iu144DreceyE7XnhSIekzy7C+3DlA
 xFXRFRjhYkB0Jmq6hUF7M7lvho+s8kg+KZd1yILYjL/ue9TYrhIkCky1V
 CH1eyTuf+tEaq77UE8s8JuyZchFwr7tQIl0npR/1ZQ3v7bKN7Oc2wQQ4d
 WJ7SxkctqBGL4wf10EBgTrM4wy/7vQ6U7OS3qD4KJib8CbfAMX0T8kZjN
 OtglZZHMNlhsEeR5rC4Td3GZTwmVp4aUP9Ca1zFn4rJekkR+TktGXwJfw g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10265"; a="250489561"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="250489561"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 02:49:19 -0800
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="706569520"
Received: from sannilnx.jer.intel.com ([10.12.231.79])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 02:49:13 -0800
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Tue, 22 Feb 2022 12:48:47 +0200
Message-Id: <20220222104854.3188643-1-alexander.usyskin@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/7] add support for GSC in XeHP SDV platform
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
Cc: linux-kernel@vger.kernel.org, Tomas Winkler <tomas.winkler@intel.com>,
 Alexander Usyskin <alexander.usyskin@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add support for GSC in XeHP SDV (Intel(R) dGPU without display).
 
XeHP SDV GSC controller uses the same hardware settings as DG1, but uses
polling instead of interrupts and runs the firmware in slow pace due to
hardware limitations.

This series should be applied over "Add driver for GSC controller"
patch series.

Greg KH, please review and ACK the MEI patches.
We are pushing all through gfx tree as the device belongs there.

Alexander Usyskin (5):
  drm/i915/gsc: add slow_fw flag to the mei auxiliary device
  drm/i915/gsc: add slow_fw flag to the gsc device definition
  drm/i915/gsc: add GSC XeHP SDV platform definition
  mei: gsc: wait for reset thread on stop
  mei: extend timeouts on slow devices.

Tomas Winkler (1):
  mei: gsc: use polling instead of interrupts

Vitaly Lubart (1):
  drm/i915/gsc: skip irq initialization if using polling

 drivers/gpu/drm/i915/gt/intel_gsc.c | 34 +++++++++--
 drivers/misc/mei/bus-fixup.c        |  3 +-
 drivers/misc/mei/client.c           | 14 ++---
 drivers/misc/mei/gsc-me.c           | 44 ++++++++++++---
 drivers/misc/mei/hbm.c              | 12 ++--
 drivers/misc/mei/hw-me.c            | 88 +++++++++++++++++++++++------
 drivers/misc/mei/hw-me.h            | 14 ++++-
 drivers/misc/mei/hw-txe.c           |  2 +-
 drivers/misc/mei/hw.h               |  5 ++
 drivers/misc/mei/init.c             | 21 ++++++-
 drivers/misc/mei/main.c             |  2 +-
 drivers/misc/mei/mei_dev.h          | 16 ++++++
 drivers/misc/mei/pci-me.c           |  2 +-
 include/linux/mei_aux.h             |  1 +
 14 files changed, 208 insertions(+), 50 deletions(-)

-- 
2.32.0

