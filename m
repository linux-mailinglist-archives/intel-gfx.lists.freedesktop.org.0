Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65ABF4B03A6
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 03:59:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93A1E10E251;
	Thu, 10 Feb 2022 02:59:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B52C10E29A
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 02:59:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644461966; x=1675997966;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=v70c+4EbaJOLJ0L21EERabnI/9JKrdj35xE59n9AZ8w=;
 b=fijzQZGz+sRn8MuBYrqrLUkk4LEDYqrKC6WWuboMtLhR8JBlgKVlc/HX
 1lXPi+Yl4tkX1QIi1igYy0y5n/GyRAJbd3LWyh1VMHDGoa+2tIWTNbRSZ
 wFNcyLUV/KIzb03E32JouCSKlDrKidUTs8KybOi9f7Mm1TYni1ZYS3ZCy
 /hq3cvCMlYrAqGCSZeJhX32SGxWWmsavbt5paMxEeuj/1qxeX7HMl1O6Z
 +dZn02atRD8WGgYzv7CAU/FaJMzjYI3OlgXsA42tuPi3mse8LebytqJfG
 z9T1PrWbbjlJyNYIlAJ5+x87SZEwXH1GMV7I9P3tiDMWOyxN89dAQybBB Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="310138693"
X-IronPort-AV: E=Sophos;i="5.88,357,1635231600"; d="scan'208";a="310138693"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 18:59:25 -0800
X-IronPort-AV: E=Sophos;i="5.88,357,1635231600"; d="scan'208";a="541421923"
Received: from ticede-or-168.amr.corp.intel.com (HELO
 mtolakan-mobl1.hsd1.or.comcast.net) ([10.212.209.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 18:59:25 -0800
From: Madhumitha Tolakanahalli Pradeep
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Feb 2022 18:59:01 -0800
Message-Id: <20220210025902.618426-1-madhumitha.tolakanahalli.pradeep@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] Bump DMC Version on ADL-P to v2.16
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

The following changes since commit
eb8ea1b46893c42edbd516f971a93b4d097730ab:

  Merge branch 'v1.1.7' of https://github.com/irui-
wang/linux_fw_vpu_v1.1.7 into main (2022-01-24 06:49:52 -0500)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware adlp_dmc_v2.16

for you to fetch changes up to
847c6de09299b59bb6f8e641cfd500aa8d1c0a9a:

  i915: Add DMC firmware v2.16 for ADL-P (2022-01-25 16:05:54 -0800)

 WHENCE                    |   3 +++
 i915/adlp_dmc_ver2_16.bin | Bin 0 -> 77084 bytes
 2 files changed, 3 insertions(+)
 create mode 100644 i915/adlp_dmc_ver2_16.bin

-- 
2.34.1

