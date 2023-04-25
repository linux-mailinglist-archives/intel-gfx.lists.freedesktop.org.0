Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 114136EE8E9
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 22:19:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9564E10E5A5;
	Tue, 25 Apr 2023 20:19:35 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E39CF10E59F;
 Tue, 25 Apr 2023 20:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682453973; x=1713989973;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2gUmJyAakZKpXhzxt5oodo3cyAPvHxjtyVj8KJQPkPU=;
 b=ncMZOnBwSjwCseo7zimDutu8CxZ56Lfel8jUe+CBz15ZgVjhCZaDh4Xa
 QOz2FOVKxE2Ta99f6GWm/Pyi0Wdr1dxk2CAjei/uNBIz/XkDFKVDQ/0EH
 9rmZU84HI4gMdh1c0+Y8YdFEhTj8wpcPA1Ju7dT5zA7VcU1ssHdSALZ1e
 s2wmzLfyQO8J7qUFL6XqviNUqIojob5eNlaLNKXjINKj1/KsD17fev7tQ
 Y/p/gjn4CAbekqzcimMt+fQck5YdPxWlvj2SDNxpLR8dmbiDxDcbx/lg8
 GN0hRZstSCuK5a/UrV5PnLAWNp4kP1gGMF7oLd3CfaageXWj/h7MSqQEV A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="348820554"
X-IronPort-AV: E=Sophos;i="5.99,226,1677571200"; d="scan'208";a="348820554"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 13:19:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="726251118"
X-IronPort-AV: E=Sophos;i="5.99,226,1677571200"; d="scan'208";a="726251118"
Received: from relo-linux-5.jf.intel.com ([10.165.21.152])
 by orsmga001.jf.intel.com with ESMTP; 25 Apr 2023 13:19:25 -0700
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Tue, 25 Apr 2023 13:19:26 -0700
Message-Id: <20230425201926.99086-3-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230425201926.99086-1-John.C.Harrison@Intel.com>
References: <20230425201926.99086-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 2/2] tools/intel_error_decode: Correctly
 name the GuC CT buffer
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
Cc: Intel-GFX@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

The buffer decoding code doesn't cope well with unknown buffers. So
add an entry for the GuC CTB so that it gets decoded correctly.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 tools/intel_error_decode.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/tools/intel_error_decode.c b/tools/intel_error_decode.c
index 99680bedc785..451608826be3 100644
--- a/tools/intel_error_decode.c
+++ b/tools/intel_error_decode.c
@@ -617,6 +617,7 @@ read_data_file(FILE *file)
 				{ "user", "user", 0 },
 				{ "semaphores", "semaphores", 0 },
 				{ "guc log buffer", "GuC log", 0 },
+				{ "guc ct buffer", "GuC CTB", 0 },
 				{ },
 			}, *b;
 			char *new_ring_name;
-- 
2.39.1

