Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94FCD4EE0E2
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 20:45:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDF3E10F468;
	Thu, 31 Mar 2022 18:45:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E6DF10F45B;
 Thu, 31 Mar 2022 18:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648752333; x=1680288333;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GebMayjwkdtr4PRMBndAXt1ZeE1dWyA4VLwilapgQZk=;
 b=jYPVk8TE/3nk4NPF1b3g38PAPFm4bEk4srTbWl8rHke9WZb/Mc66HNEY
 jtl2gpCUXom1xfaVOvd2e41zXBuXSYjfP7MDbEX+g8tXOrXo6Mtwi2ApP
 aXuGzHkcL1RHSJTQIPyQTDkUh3THZkkxP5B2Bkxh1xuUISUwbIUcIs3EY
 HRcRTFlpsqsEWOFwcvC76zgoNmHA9CfPaXj9JFKPf8T7ZKUGHnf4qnuzd
 qF30WDU9X9G5kiEzauBTOhgfsKqP4m6An53x5xiF4z5moYX1RNgGrJv42
 eO498abodVo2awNo7F/5gmetS0NyG5feEZ7P/RWbW2FxS0lQWQGxCD3p6 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="320615327"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="320615327"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 11:45:32 -0700
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="547458049"
Received: from gluca-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.194])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 11:45:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Thu, 31 Mar 2022 21:45:01 +0300
Message-Id: <33fbe1615a3bd82112eaf4077bbb521793cbb91a.1648752228.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1648752228.git.jani.nikula@intel.com>
References: <cover.1648752228.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 04/12] drm/edid: make
 drm_edid_header_is_valid() accept void pointer
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It will be useful to accept a struct edid *, but for compatibility with
existing usage accept void *.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/drm_edid.c | 8 +++++---
 include/drm/drm_edid.h     | 2 +-
 2 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 7c9ce5b0bd5b..92e51f502fde 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -1580,13 +1580,15 @@ static const u8 edid_header[] = {
  *
  * Return: 8 if the header is perfect, down to 0 if it's totally wrong.
  */
-int drm_edid_header_is_valid(const u8 *raw_edid)
+int drm_edid_header_is_valid(const void *_edid)
 {
+	const struct edid *edid = _edid;
 	int i, score = 0;
 
-	for (i = 0; i < sizeof(edid_header); i++)
-		if (raw_edid[i] == edid_header[i])
+	for (i = 0; i < sizeof(edid_header); i++) {
+		if (edid->header[i] == edid_header[i])
 			score++;
+	}
 
 	return score;
 }
diff --git a/include/drm/drm_edid.h b/include/drm/drm_edid.h
index 48b1bf9c315a..b7e170584000 100644
--- a/include/drm/drm_edid.h
+++ b/include/drm/drm_edid.h
@@ -578,7 +578,7 @@ int drm_add_modes_noedid(struct drm_connector *connector,
 void drm_set_preferred_mode(struct drm_connector *connector,
 			    int hpref, int vpref);
 
-int drm_edid_header_is_valid(const u8 *raw_edid);
+int drm_edid_header_is_valid(const void *edid);
 bool drm_edid_block_valid(u8 *raw_edid, int block, bool print_bad_edid,
 			  bool *edid_corrupt);
 bool drm_edid_is_valid(struct edid *edid);
-- 
2.30.2

