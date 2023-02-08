Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B4EC68F0A2
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 15:24:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 557C510E780;
	Wed,  8 Feb 2023 14:24:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1528410E780
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 14:24:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675866268; x=1707402268;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=l8OzFhxngZYX4NnqjOn64PeQL+wu2czbjPojmTNtOfQ=;
 b=n0dsZ119b9qni+nDACw8McT6XVip/hemfEyx2I2KLu+7l4ul3ESdrih5
 ibDdxJ8HiLP3FHCAzvOIRkDgoJ+EgtunppgCAW5BHik6rmMYFWSLdVg9t
 Op95Nc47JRxhAvf7il9KMa5nHknVNLmvWI49J9FuQVlHDNTFF1Vx2OiD6
 hl6IKZC6R08Q0fH8M0DzPlO1EVuSf2YOlTvGyzc7LvlBdRjGFi+v5hSSf
 EeJnwsFtrQJH7KW5N6PQ79P7uoEOtBO1k+rVOnDI3O3IFOI+sNlGqAMnp
 oCLQEFM5gYXYfiP/dd02ORko2/Cpy+XUmn2u/NYYLXEMIOsx/QPFo11JP g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="392201354"
X-IronPort-AV: E=Sophos;i="5.97,281,1669104000"; d="scan'208";a="392201354"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 06:24:15 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="791214071"
X-IronPort-AV: E=Sophos;i="5.97,281,1669104000"; d="scan'208";a="791214071"
Received: from twinkler-lnx.jer.intel.com ([10.12.87.42])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 06:24:13 -0800
From: Tomas Winkler <tomas.winkler@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Wed,  8 Feb 2023 16:23:56 +0200
Message-Id: <20230208142358.1401618-1-tomas.winkler@intel.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [char-misc-next v3 0/2] mei: gsc proxy component
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>,
 intel-gfx@lists.freedesktop.org,
 Alexander Usyskin <alexander.usyskin@intel.com>, linux-kernel@vger.kernel.org,
 Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

GSC Proxy component is used for communication between the
Intel graphics driver and MEI driver.

Daniele, please ack so that drm part can be merged via Greg's tree.

V2:
1. Add missing patch from the series
2. Use device information instead of driver name
   to identify the aggregate device.
V3:
1. Drop MAINTAINERS update
2. Add gfx mailing list and maintanier


Alexander Usyskin (2):
  drm/i915/mtl: Define GSC Proxy component interface
  mei: gsc_proxy: add gsc proxy driver

 drivers/misc/mei/Kconfig                   |   2 +-
 drivers/misc/mei/Makefile                  |   1 +
 drivers/misc/mei/gsc_proxy/Kconfig         |  14 ++
 drivers/misc/mei/gsc_proxy/Makefile        |   7 +
 drivers/misc/mei/gsc_proxy/mei_gsc_proxy.c | 208 +++++++++++++++++++++
 include/drm/i915_component.h               |   3 +-
 include/drm/i915_gsc_proxy_mei_interface.h |  36 ++++
 7 files changed, 269 insertions(+), 2 deletions(-)
 create mode 100644 drivers/misc/mei/gsc_proxy/Kconfig
 create mode 100644 drivers/misc/mei/gsc_proxy/Makefile
 create mode 100644 drivers/misc/mei/gsc_proxy/mei_gsc_proxy.c
 create mode 100644 include/drm/i915_gsc_proxy_mei_interface.h

-- 
2.39.1

