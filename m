Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F33501BF0
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 21:29:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AA2B10E230;
	Thu, 14 Apr 2022 19:29:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48EE910E230
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Apr 2022 19:29:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649964568; x=1681500568;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4Yc3j8TTrebNqnJHMCOUQBG9mIJdRI6rk0AtH0PSkBI=;
 b=UzO9emyPyoVF3+Fw1eQ9kHsnZE3SijjATv9h+mesv0O+cIG6vduBTQh/
 nkCTXIr2LfEIR2ybaAIwitd2ENxELbGLPDZyED33F93CnkIcqZM8OSJTx
 wxtQQ4bXSRT3ZlAoXcAdfADpPOtNFRu6aEsrPembzuD8eOOXd964qr5Ap
 4VFh6WncUQvrp4/1aK+WvkJb0mHQG3fCQIurYNzVwqt7OmFskT4obZiS8
 Ug7nvqG/gWSF+l0vkE/fsXEIzL7JZPZd07xfNHvz1Wo5hN2AXmGwFwHrf
 NZ7TOf5aiBKXcwUXTG+yKE9iyKf9zVwvb7RPbL1nQ1fxGIS3wFAAKgisP Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="263191993"
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="263191993"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 12:29:27 -0700
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="573960177"
Received: from nirmoyda-desk.igk.intel.com ([10.102.13.19])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 12:29:26 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Apr 2022 20:31:45 +0200
Message-Id: <20220414183148.15884-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 0/2] Fix UAF in snd_hda_intel
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

Run CI for these two patches for: 
https://gitlab.freedesktop.org/drm/intel/-/issues/5701

Nirmoy Das (1):
  ALSA: hda: handle UAF at probe error

Takashi Iwai (1):
  ALSA: core: Add snd_card_free_on_error() helper

 include/sound/core.h      |  1 +
 sound/core/init.c         | 28 ++++++++++++++++++++++++++++
 sound/pci/hda/hda_intel.c |  7 ++++---
 3 files changed, 33 insertions(+), 3 deletions(-)

-- 
2.35.1

