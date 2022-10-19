Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D20603A9F
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 09:27:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21B7910F165;
	Wed, 19 Oct 2022 07:27:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F09EA10EA7F
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 07:27:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666164437; x=1697700437;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KTgIuEHErWGZJwmIpj+JyyYFn6G9lBGMZiYEYj6rPUs=;
 b=HNN/gCIa2jrpLf1Oj7HNrW3d4+cvZ9wnZ5n2C0ERtLTVCQ06mupbU6Ab
 YC+cPLs7h+Yqt7eC4fssaVJdZIwLCsICLuSBHjUIRUvyPHQznhsxgDsWE
 VKkXYkXbTO2XIJhe4ROvmLC8HyLPY2gWtUAy0MKE78PzmK82ONuk7zHqC
 f9CEnJ84+DQCOeintwZpJstd1qsOEmMIiXymYPbEeZZKclGSM+EKv9Ae+
 mNIs97nVqs6bkXimrfrj1OsWTM1FsoX+fd4wz8MivE6l+7RS9eIv6jz17
 QaeA1JGz5J41zqYsH1aZNkgri8I8RiZvjlic1KwP9E3g8z54Am7yr9s8c Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="305065292"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="305065292"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 00:27:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="580204154"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="580204154"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga003.jf.intel.com with ESMTP; 19 Oct 2022 00:27:16 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Oct 2022 00:29:28 -0700
Message-Id: <20221019072930.17755-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/2] drm/i915/guc: Add GuC-Error-Capture-Init
 coverage of new engine types
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

After initial upstream merge of GuC error-capture feature, we eventually
decided to remove a lot of unnecessary warning messages when we couldn't
retrieve register lists for ADS-error-state-capture initialization. It was
a justified decision because the majority of that noise was being repeated
three times per GT reset and included list-types that are not supported
upstream. However after that change, we are not able to catch cases of
missing register lists for new engines that hadn't been added.

This series introduces new selective checks and warnings (such as skipping
if its a VF or if its an empty register list). This series also adds register
list for compute engine which is merely a duplicate of render class list.

Changes from prior revs:

   v2 : - Fix build error.
   v1 : - Fix the drm_warn string split (Tvrtko Ursulin / John Harrison)
        - Minor cosmetics around the drm_warn message checks (Tvrtko Ursulin /
          John Harrison)
        - Dont use empy string in stringify functions (Tvrtko Ursulin)
        - Ensure guc_capture_output_min_size_est doesn't trigger
          the drm_warn when calculating estimation size for worst case
          engine counts that may not exist (Alan Previn).

Alan Previn (2):
  drm/i915/guc: Add error-capture init warnings when needed
  drm/i915/guc: Add compute reglist for guc err capture

 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 82 +++++++++++++++++--
 1 file changed, 73 insertions(+), 9 deletions(-)


base-commit: b249abef9f86f788e6bacc657ae8eb7743948200
-- 
2.34.1

