Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C2324BDA20
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Feb 2022 15:16:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B421A10E4B2;
	Mon, 21 Feb 2022 14:16:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8925D10E32A;
 Mon, 21 Feb 2022 14:16:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645452996; x=1676988996;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=P9C+s6K71DFns+Q+uRDn+IOqu/5pJ5iGN07JH/PtpFE=;
 b=LGIn5gZWpuhptE97kPVg30cED1h7HMOOcrqpUyufxMD4tm+4Ws+T0PJ2
 Ho3KZXuD8lEnt95pUqs5KktIloiK7rdP05Tun4/AuCcwWFQkW4j/YvUxk
 h0N2hV6alrtTTtOP6OcfgH7I44domxdyvsb3rliI4SJT9i9IVe3zxwrhY
 nW8EaGP07rV0Fslg3N8foOjzEKIAvdAHe9D/J4fYZ7vXFyWmbRkrbrJMb
 ieA2byRWb4AaUUObuMBC2Bf8WjXgvO4+skY6NkZmxrk3M8EQ9PbXo/HDH
 0iBNTpXA0dEcTD+OidHbWsoJi2sdOTTzoGgINQQ1Cc17z5Sg5dykcKRRp A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10264"; a="251467124"
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="251467124"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 06:16:35 -0800
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="606400528"
Received: from joeyegax-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.23.97])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 06:16:34 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 21 Feb 2022 14:16:14 +0000
Message-Id: <20220221141620.2490914-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 0/6] Exercise NEEDS_CPU_ACCESS
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

Add some initial tests for the new I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS
flag.

v2: Add missing cover letter. Likely also needed when using 'Test-with:'

-- 
2.34.1

