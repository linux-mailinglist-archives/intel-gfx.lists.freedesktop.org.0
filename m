Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 099A44CDA3A
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Mar 2022 18:24:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4006F10F850;
	Fri,  4 Mar 2022 17:24:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B37610F850;
 Fri,  4 Mar 2022 17:24:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646414654; x=1677950654;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gIEtnpexOXEekjKhBmC0uYUsuJ/lemC8lLKyCqWZaNI=;
 b=iTOJYK8CvLOIzhUJtheU+s3LFUEUKW8EL68efWnMHrunXk6PZ+PU1c0o
 IAMMPHKTIXyjlRgWxUjbiLmchIAJLs1tOmOYBofvWGhuLYDljM8w37TXl
 RCkv775eCqqBIRycOrgiMH2i8OzD+T16oC83CS9bdGHe4Sl9rS4943ySw
 EdoBYMjh/TuXLDhjEEQu3XvojBjRwIP42AFkC5k9Cwr06Z+HpQBw5qk7z
 J6qelwHGQiQiQ32u8dvX/XAXbffCFTzzod7Zq4+chcm+rp14LXN3p3HMY
 ghK/p4+8D5kHJcwHiw8T+ePrOeIxpANR54qFnT4y2zQbtfFIs9MxHgTfR Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10276"; a="252848959"
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="252848959"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 09:24:13 -0800
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="631216578"
Received: from vkats-mobl1.ccr.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.28.8])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 09:24:13 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Mar 2022 17:23:25 +0000
Message-Id: <20220304172333.991778-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/8] Some more bits for small BAR enabling
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

-- 
2.34.1

