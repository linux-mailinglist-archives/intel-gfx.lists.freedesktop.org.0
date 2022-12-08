Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB696647389
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 16:51:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE0ED10E4BB;
	Thu,  8 Dec 2022 15:51:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2984910E4B8
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 15:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670514674; x=1702050674;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uv/9/H9hYX4+Lgkof9YNJwbr5MqA4DxvIunAf0naRY4=;
 b=YdpX+FlsdWPZN6ynoHyM46+cbeoOvPTwIYEGQBeVo+Po67/CG/l3XngM
 RbohvvjyyqsgM7BJeP7eAjI84rIDFDKQTPje95Z88ApwqVXzg3Vulo0GB
 Kl/owl/dRMLb66GAxgT8+QB5kZKZDLyRbaqBrt17NvitAbwOBjno4cFq0
 SAC4DHDHAYMJG+BjdILjhPAU3kacV/jAescBitQyz2Xhqux/U0hGipoCb
 OMWMJTtPMXT+7VeBKMHumlmpHI3Bg5OiAIp5XVlf0EJf87wUg7sf4uKYu
 qkl/ur1JOr5Rlw651McZEm+Tsf553+Q9Nyb0qWGeEzon7LJ96ojxSJ6gH g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="304856955"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="304856955"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 07:44:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="710514702"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="710514702"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by fmsmga008.fm.intel.com with ESMTP; 08 Dec 2022 07:44:27 -0800
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
To: alsa-devel@alsa-project.org,
	tiwai@suse.de
Date: Thu,  8 Dec 2022 17:43:57 +0200
Message-Id: <20221208154358.3848764-3-kai.vehmanen@linux.intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221208154358.3848764-1-kai.vehmanen@linux.intel.com>
References: <20221208154358.3848764-1-kai.vehmanen@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] ALSA: hda/hdmi: set default audio
 parameters for KAE silent-stream
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
Cc: intel-gfx@lists.freedesktop.org,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If the stream-id is zero, the keep-alive (KAE) will only ensure clock is
generated, but no audio samples are sent over display link. This happens
before first real audio stream is played out to a newly connected
receiver.

Reuse the code in silent_stream_enable() to set up stream parameters
to sane defaults values, also when using the newer keep-alive flow.

Fixes: 15175a4f2bbb ("ALSA: hda/hdmi: add keep-alive support for ADL-P and DG2")
Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Reviewed-by: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Tested-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 sound/pci/hda/patch_hdmi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/sound/pci/hda/patch_hdmi.c b/sound/pci/hda/patch_hdmi.c
index a0ba24165ae2..1618419647aa 100644
--- a/sound/pci/hda/patch_hdmi.c
+++ b/sound/pci/hda/patch_hdmi.c
@@ -1738,6 +1738,7 @@ static void silent_stream_enable(struct hda_codec *codec,
 
 	switch (spec->silent_stream_type) {
 	case SILENT_STREAM_KAE:
+		silent_stream_enable_i915(codec, per_pin);
 		silent_stream_set_kae(codec, per_pin, true);
 		break;
 	case SILENT_STREAM_I915:
-- 
2.38.1

