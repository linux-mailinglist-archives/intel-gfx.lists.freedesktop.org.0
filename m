Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 623CB4F01FD
	for <lists+intel-gfx@lfdr.de>; Sat,  2 Apr 2022 15:12:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD10210E15F;
	Sat,  2 Apr 2022 13:12:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B41310E15F
 for <intel-gfx@lists.freedesktop.org>; Sat,  2 Apr 2022 13:12:40 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 69C53B808C9;
 Sat,  2 Apr 2022 13:12:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7787C340F0;
 Sat,  2 Apr 2022 13:12:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1648905157;
 bh=6aiBFm44j18mOw7D2nvpFAdEVUsY5CbZiWF9+mmYsgA=;
 h=Subject:To:Cc:From:Date:From;
 b=1dN9ciyMTllC0R+r/rew+QUFhfLNE4HzuSNusQtsGmXk2hq0ykKiZgw/NWogYnR99
 4fM9JprPZ0AEFtq2pL8VBDtcQONg6GvIfncQ54owRzy/AVfmnB+67+EukG3lM5dMI9
 hQWYatHwfBxE3ScrRnNmbttCIbS0YzBVGX9jwErM=
To: cooper.chiou@intel.com, gregkh@linuxfoundation.org,
 intel-gfx@lists.freedesktop.org, jani.nikula@intel.com, shawn.c.lee@intel.com
From: <gregkh@linuxfoundation.org>
Date: Sat, 02 Apr 2022 15:10:37 +0200
Message-ID: <1648905037248255@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ANSI_X3.4-1968
Content-Transfer-Encoding: 8bit
X-stable: commit
X-Patchwork-Hint: ignore 
Subject: [Intel-gfx] Patch "drm/edid: check basic audio support on CEA
 extension block" has been added to the 5.4-stable tree
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
Cc: stable-commits@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


This is a note to let you know that I've just added the patch titled

    drm/edid: check basic audio support on CEA extension block

to the 5.4-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     drm-edid-check-basic-audio-support-on-cea-extension-block.patch
and it can be found in the queue-5.4 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From 5662abf6e21338be6d085d6375d3732ac6147fd2 Mon Sep 17 00:00:00 2001
From: Cooper Chiou <cooper.chiou@intel.com>
Date: Thu, 24 Mar 2022 14:12:18 +0800
Subject: drm/edid: check basic audio support on CEA extension block

From: Cooper Chiou <cooper.chiou@intel.com>

commit 5662abf6e21338be6d085d6375d3732ac6147fd2 upstream.

Tag code stored in bit7:5 for CTA block byte[3] is not the same as
CEA extension block definition. Only check CEA block has
basic audio support.

v3: update commit message.

Cc: stable@vger.kernel.org
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Shawn C Lee <shawn.c.lee@intel.com>
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Signed-off-by: Cooper Chiou <cooper.chiou@intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
Fixes: e28ad544f462 ("drm/edid: parse CEA blocks embedded in DisplayID")
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20220324061218.32739-1-shawn.c.lee@intel.com
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/gpu/drm/drm_edid.c |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -4380,7 +4380,8 @@ bool drm_detect_monitor_audio(struct edi
 	if (!edid_ext)
 		goto end;
 
-	has_audio = ((edid_ext[3] & EDID_BASIC_AUDIO) != 0);
+	has_audio = (edid_ext[0] == CEA_EXT &&
+		    (edid_ext[3] & EDID_BASIC_AUDIO) != 0);
 
 	if (has_audio) {
 		DRM_DEBUG_KMS("Monitor has basic audio support\n");


Patches currently in stable-queue which might be from cooper.chiou@intel.com are

queue-5.4/drm-edid-check-basic-audio-support-on-cea-extension-block.patch
