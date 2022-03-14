Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F794D80A6
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Mar 2022 12:29:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E2DB10E62A;
	Mon, 14 Mar 2022 11:29:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EC1F10E605;
 Mon, 14 Mar 2022 11:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647257350; x=1678793350;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Hw9rrVBRBy2MGrDy3eWdrktZfbCGzYIjyUmZnEFd9Cw=;
 b=De7wnd9hKGRwEV7BV1EGH3HFrg1Zlqkq/KdEJtCCKnHpx/qDNo+i9PSP
 TBX1wPVUPhUSS9SU5s95thtNZwW8JXg3tkVm9FtxFv28pDePxUcP0Gy58
 cXb4OLdIJG5tpl4VV1OuXHUtdTIS0+lLAKRSDAlZZJ96cxe21hKmcTmrj
 dbGuo5qdwgsHksCqhGB0ML0J1s2BfsIf2rcDqPYpKrcH9NYZ/IyQTlFTg
 2vQDeWFeLBQFjZ+geMr9FiEvF20dMDUDEeSCE1eWJEkGKurfk3gAszezu
 7R5KdAFoa+qQcXVVQ/tWBBaC1Ai6Nf1ir9fRwoOQd7sPKxFWWny+voNmS g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10285"; a="254830965"
X-IronPort-AV: E=Sophos;i="5.90,180,1643702400"; d="scan'208";a="254830965"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 04:28:56 -0700
X-IronPort-AV: E=Sophos;i="5.90,180,1643702400"; d="scan'208";a="556374301"
Received: from znagyx-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.7.43])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 04:28:55 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Mar 2022 11:28:30 +0000
Message-Id: <20220314112837.352931-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/7] Some more bits for small BAR enabling
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

The leftover bits around dealing with stolen-local memory + small BAR, plus
some related fixes.

v2: some tweaks based on feedback from Ville
v3: directly probe the PTE to derive the physical offset within lmem

-- 
2.34.1

