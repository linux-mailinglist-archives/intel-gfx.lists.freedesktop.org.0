Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0BD5695422
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 23:53:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C5D110E763;
	Mon, 13 Feb 2023 22:53:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E022210E76C
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Feb 2023 22:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676328797; x=1707864797;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=SGNIm2/cd/8sKEsQDhYqaaurHz5sR66Sp3mYgcaJRsg=;
 b=RIGsJFJ/0nqjgugxyDYrsqVy4jTo/GFZt1mwWRZYc3G3bSzF8jFbBTw1
 olpWJ78Ti0GQl2wb92WGcBan4pKfX8FXqUjr2SJ9sS05k+JFqbM8sy02H
 i2wXy22Zc/J7ttNu9fFGDqExeyU9i32UbxIJeYiVOskp20l0OeYSxyJ/z
 JoTXFj/mQPO1Nf/bmWYtfrX65OCmdu47ZCk8TvjkTVlPWSZgP13jIgJvz
 DckIvxWKEnf8rchP9D9vvE0nRdLwI1d81F/ts4X9+d6ID6dIqEn6F1ONQ
 nHDUAUI6SsRHZ7H65Ha7CO1knwqK+XIVRYQSsX4lWj1BdsBeEHYtdKC5P Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="417237400"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="417237400"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 14:53:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="757766432"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="757766432"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by FMSMGA003.fm.intel.com with SMTP; 13 Feb 2023 14:53:15 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Feb 2023 00:53:15 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Feb 2023 00:52:52 +0200
Message-Id: <20230213225258.2127-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230213225258.2127-1-ville.syrjala@linux.intel.com>
References: <20230213225258.2127-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/12] drm/i915: Define the "unmodified vblank"
 interrupt bit
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

On TGL+ the normal "start of vblank" interrupt is the pipe's
(potentially delayed) version. Add the new bit for the
transcoder's "unmodified" vblank so I don't have to dig it
out from bspec every time.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 04de4d0671b7..23886356af35 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5384,6 +5384,7 @@
 #define  GEN8_PIPE_CDCLK_CRC_DONE	(1 << 28)
 #define  XELPD_PIPE_SOFT_UNDERRUN	(1 << 22)
 #define  XELPD_PIPE_HARD_UNDERRUN	(1 << 21)
+#define  GEN12_PIPE_VBLANK_UNMOD	(1 << 19)
 #define  GEN8_PIPE_CURSOR_FAULT		(1 << 10)
 #define  GEN8_PIPE_SPRITE_FAULT		(1 << 9)
 #define  GEN8_PIPE_PRIMARY_FAULT	(1 << 8)
-- 
2.39.1

