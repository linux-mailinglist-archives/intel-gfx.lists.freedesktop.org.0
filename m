Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3799B71309C
	for <lists+intel-gfx@lfdr.de>; Sat, 27 May 2023 01:48:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8482010E175;
	Fri, 26 May 2023 23:48:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2655F10E175
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 23:48:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685144898; x=1716680898;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hBtKTIItALTlUn9oOFgBk7FqwDWjS7q+9G1YQ+bbo/w=;
 b=gF4dIcQWdam0JESgAkJR3MCs3HkzXK3owaqVos8CwlNhkAI0QutFlN6R
 iLciMKZ0hDQjAkbMP3gT1FHFurjMkLVkaHptZbeWJY3D4p5xqJpxkDwdk
 qrOz7sdXlGzrtAJ17RaDQzAIQAOgXr6YSJIMJdpp44JU8Yt+XX5W+pUbv
 aFgvqo9cuSyn4oNIYjld8lX+KSsTIaZ5Oi0NdJK0h/9o02+XVsNkOxkU6
 n8OVAKNgNyro1T5tVsL6PAuK0A8rKAmDzHEZOfk4Wfny+8wEnBybtffFN
 HoksY+JzJHDaHZ8+e8uw/WZc79yUQoeiCSI6fT+FQpz9j/2TGhw4lC1lF w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="356715206"
X-IronPort-AV: E=Sophos;i="6.00,195,1681196400"; d="scan'208";a="356715206"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 16:48:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="829665196"
X-IronPort-AV: E=Sophos;i="6.00,195,1681196400"; d="scan'208";a="829665196"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 16:48:16 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 May 2023 16:48:06 -0700
Message-Id: <20230526234806.1333661-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] PR for MTL HuC v8.5.0
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

The following changes since commit d11ae98478d52548172918511f949aa92193f2c6:

  brcm: Add symlinks from Pine64 devices to AW-CM256SM.txt (2023-05-25 08:26:29 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware mtl_huc_8.5.0

for you to fetch changes up to eb86681057e248375ec91f6c340c671cfbf75501:

  i915: Add HuC v8.5.0 for MTL (2023-05-26 16:44:50 -0700)

----------------------------------------------------------------
Daniele Ceraolo Spurio (1):
      i915: Add HuC v8.5.0 for MTL

 WHENCE               |   3 +++
 i915/mtl_huc_gsc.bin | Bin 0 -> 565248 bytes
 2 files changed, 3 insertions(+)
 create mode 100755 i915/mtl_huc_gsc.bin
