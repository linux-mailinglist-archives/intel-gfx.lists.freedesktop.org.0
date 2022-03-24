Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 683914E650D
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Mar 2022 15:26:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AC8110E8BA;
	Thu, 24 Mar 2022 14:26:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D15710E8B9;
 Thu, 24 Mar 2022 14:26:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648132000; x=1679668000;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/L+fS9RiU2uqZjIwAmp4Ji86mSujNZuF4sXrhbvzVYs=;
 b=aBHhzMVGnEUFFxrnCSyOr0Dsgb1+hwk5T53s37tiEaQTjK6vd9Pxo8Gy
 +//m46VCU3t1cRDQPOO+AuoF8qLfY0ICrUrFEICLUYyq60BdaQhe0J4qG
 A1emqeMfwoyfR+CW9uIIC96LTv4kyq3VKiOMpTG+Yu5TCdvrECIGGoPKH
 CrZNtqDD8dV+kafYM7ELMyLPTmiSGLIjhCLgKWrBV2zkIcxfD43nzvTK8
 K6D6vBxSK9nUSVSZWlVk2WyD3seJBIMpLQ9K/JXrFWYXcQJcpv3i1EfkF
 w5651pUaFJCTxZg4fd1FzO6iaFOlI0IxPEyjKBmWmLWlNXnzHKeXI9DVh A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="283249716"
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="283249716"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 07:26:40 -0700
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="501409752"
Received: from smurkank-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.19.102])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 07:26:39 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu, 24 Mar 2022 14:26:17 +0000
Message-Id: <20220324142621.347452-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 0/4] Some gem_lmem_swapping tweaks
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
2.34.1

