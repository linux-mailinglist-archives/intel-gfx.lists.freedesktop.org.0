Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4729E534322
	for <lists+intel-gfx@lfdr.de>; Wed, 25 May 2022 20:38:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7F5010EC62;
	Wed, 25 May 2022 18:38:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2578A10EC45;
 Wed, 25 May 2022 18:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653503885; x=1685039885;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yJM9nzlYxTejvq/uPJduRWwilokFuNZJBBLArZ+iooE=;
 b=f44RG6CcStrcxDyxKDOAWXY3X+BoX2fIDChcHya/TH0xVwiL5YfEmYAg
 sLio8fScYOWRvHPTcG5M/EvjFP0Kp+EwtSSgBOTT+4mxKKLpLoTOb+i48
 1Vpz3GKnmdIjZu1KTzAlpR6Va3EbGYxo72rFaF5q9bk66LEl5hZWe7swc
 0JFzg2jqsCKOHdvawYgZJhGa/rQNkfhpUNiGf1sESlVgxSr4qw1yTc4F2
 LbDlP4Elx2w6JK6DF7No+r8MJ8lhCCrRF9kF2HMlUCNMPy9IjU6iMQRq0
 i56Y+pLJrzdPjVmtxY3knhzT4yoel4sRpBZuVJht+yepCwHd6jrRPDz2E Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10358"; a="336954755"
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="336954755"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 11:37:45 -0700
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="526989497"
Received: from daithiby-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.5.16])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 11:37:44 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 25 May 2022 19:36:53 +0100
Message-Id: <20220525183702.490989-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 0/9] small BAR uapi bits
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

-- 
2.34.3

