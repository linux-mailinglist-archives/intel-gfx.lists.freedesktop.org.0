Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 092D92A6DBC
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Nov 2020 20:21:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 763A16E245;
	Wed,  4 Nov 2020 19:21:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBF696E245
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Nov 2020 19:21:42 +0000 (UTC)
IronPort-SDR: GO6jSt0Bmp1a2W2J797E1WLM+7rpaWeUIHmi2srSA3NmLDvICdCJBo8WSGqsqhWfQAv9q97qEB
 /yvuljqPJ8Vw==
X-IronPort-AV: E=McAfee;i="6000,8403,9795"; a="168491308"
X-IronPort-AV: E=Sophos;i="5.77,451,1596524400"; d="scan'208";a="168491308"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2020 11:21:40 -0800
IronPort-SDR: DBE3VxuaVL7Wam01itUr6YPn+ODqxmC7hpcD0lpqFSy4i5hCVZHfV8g4a6Xphe3WyJM0M4Zqo8
 e40lLKYo8q1Q==
X-IronPort-AV: E=Sophos;i="5.77,451,1596524400"; d="scan'208";a="529045115"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2020 11:21:38 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Nov 2020 01:26:02 +0530
Message-Id: <20201104195604.3334-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] Re-enable FBC on TGL
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

FBC was disabled on TGL due to random underruns. It has
been determined that FBC will not work reliably with PSR2.
This series re-enables fbc along with taking care of the
PSR2 limitations for TGL.

Test-with: 20201104195142.3223-1-uma.shankar@intel.com

Uma Shankar (2):
  drm/i915/display/tgl: Disable FBC with PSR2
  Revert "drm/i915/display/fbc: Disable fbc by default on TGL"

 drivers/gpu/drm/i915/display/intel_fbc.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
