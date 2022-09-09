Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA965B4301
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Sep 2022 01:19:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8E9510E135;
	Fri,  9 Sep 2022 23:18:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A28F10E0A1;
 Fri,  9 Sep 2022 23:18:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662765520; x=1694301520;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ChXoCPjm1Lbjd+6d1phqe31lPOrrkRrCYKArCxU4BYA=;
 b=CWzzyp6MWofrUw2HyzOuBf56X+UqpSSQ4TtjYkfapPIj+G4rIVS6ALv8
 be5kp0tQbbOqrGnJdDMF0/EgjWJMOFpnxkvMJMilRj7/49X1DMYrikjI5
 9YTRyAVQBF4621V9l0NU+vGeRjTLw+cqdLJEpzaqqQdleF4j5RE5RJZp4
 E4UGCyjhMH7rdpJ01Fw2DwaS6prAzAWg+o8lNpa+hVW8gkVXimCyHcXo1
 suaotHTEsGRf7xsi/wgfPAQwjdOQTnexSfMqsVUTk2Y2naP4my8lJuACP
 r9P5EYhbeoVNdJnGbfiKOXz5zAk3rxyYQAxmD9hug/S+WDKCZIk6lDrpZ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10465"; a="295171541"
X-IronPort-AV: E=Sophos;i="5.93,304,1654585200"; d="scan'208";a="295171541"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 16:18:39 -0700
X-IronPort-AV: E=Sophos;i="5.93,304,1654585200"; d="scan'208";a="741210078"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.143])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 16:18:39 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Sep 2022 16:18:14 -0700
Message-Id: <20220909-media-v2-0-6f20f322b4ef@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.10.0-dev-df873
Content-Transfer-Encoding: quoted-printable
Subject: [Intel-gfx] [PATCH v2 0/2] drm/i915: Media fuses future-proofing
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Update fuse handling for media to future-proof it.=0D
=0D
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>=0D
---=0D
Lucas De Marchi (2):=0D
      drm/i915/gt: Use MEDIA_VER() when handling media fuses=0D
      drm/i915/gt: Extract function to apply media fuses=0D
=0D
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 142 ++++++++++++++++----------=
----=0D
 1 file changed, 74 insertions(+), 68 deletions(-)=0D
---=0D
base-commit: ff8b32fbe64a79b380b1cca4232d30c0b29df069=0D
change-id: 20220909-media-87cd0701e0d8=0D
=0D
Best regards,=0D
-- =0D
Lucas De Marchi <lucas.demarchi@intel.com>=0D
