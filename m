Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A5455FF54
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jun 2022 14:14:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1783B10FF48;
	Wed, 29 Jun 2022 12:14:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86A8610F76D;
 Wed, 29 Jun 2022 12:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656504886; x=1688040886;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uuXls3Y48Wfo82AJXzQLj9otrqiJ4bvt+16uKNOZ1Zc=;
 b=guclOwi3Y+rltmMToJQ0/e3UA3N2MWztId27R8tq4682NvCgumwXOHoW
 c0bCoCgDnog/70QvP8iD7QkuZSyVTBN/wu8KYhAqVIiHoQqNBZIozmXOq
 YjxtpVaaloAMGCKmzBe+CE54YGLVtYK5QGskUBpLowGGYKwVqF+Q2ZtU3
 DDWL0Ba3kpzT6jnEdJ80++I5FwNd9CWBaXMZBL+xNvNswdJiMZngewRJr
 4+x6JnPheCCZwO3KoEkHmRDkj+mXdRYQNsRLkucuI/QT8Nx/TDMAkrwc2
 K9exOOxXFn3VmuxyDA8HPvIz5Z77LRy6yLMKf2LjBa1PpotqKEosGoE5F A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10392"; a="262421342"
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="262421342"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 05:14:46 -0700
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="595214983"
Received: from nwalsh-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.202.136])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 05:14:45 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Jun 2022 13:14:14 +0100
Message-Id: <20220629121427.353800-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 00/13] small BAR uapi bits
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

IGT: https://patchwork.freedesktop.org/series/104368/#rev2
Mesa: https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/16739


-- 
2.36.1

