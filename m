Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 152F861FBBA
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 18:43:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 402DD10E831;
	Mon,  7 Nov 2022 17:43:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6585610E835;
 Mon,  7 Nov 2022 17:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667842978; x=1699378978;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KODMlnwV/QFHCCKxEIsZ/8aNUnTgN8JpQxZph3w8T2E=;
 b=iyVx7njUeLfM2PRZlaDkewyq6HpTR0eDCwW0F+vnbuT4Ri+U1+0tOeed
 HC0ebUZ2OS7nB14gmCwf9Ud4n2whikqkP76/ZjY8lK/2I45pByXJZj8yz
 1aVZ7QpSACuNuhGQnwztc4u5UjQMvHfkA0RBMK6VCtEkBpcR6eeeMmIuj
 UORpGP3j73W/PNfK5jS6cIFKwwgRpaIq2hhb++8UnItR4JAsyFXMfM6zN
 Utjdwhk1DKr9AzVEs9bZjnlWkwunTo9OES7Ex9Y1WEhHKuXV/sCznEvpy
 c8rEGle4SlL3Z31ABP6tLakCEHj1z/WXdef2sPS6OyvIMa+M7lfVc+LJU A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="374744379"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="374744379"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 09:32:58 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="630568325"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="630568325"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.143])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 09:32:58 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linux-doc@vger.kernel.org
Date: Mon,  7 Nov 2022 09:32:09 -0800
Message-Id: <20221107173209.2219571-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221107173209.2219571-1-lucas.demarchi@intel.com>
References: <20221107173209.2219571-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] Documentation/gpu: Limit drivers index to
 maxdepth=2
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
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Just like the main index, the page generated is very verbose if all the
internal details of each driver is included.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 Documentation/gpu/drivers.rst | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/gpu/drivers.rst b/Documentation/gpu/drivers.rst
index 3a52f48215a3..a36ec133b123 100644
--- a/Documentation/gpu/drivers.rst
+++ b/Documentation/gpu/drivers.rst
@@ -3,6 +3,7 @@ GPU Driver Documentation
 ========================
 
 .. toctree::
+   :maxdepth: 2
 
    amdgpu/index
    i915
-- 
2.38.1

