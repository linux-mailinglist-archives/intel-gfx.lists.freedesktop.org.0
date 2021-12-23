Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE7E447E0B5
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Dec 2021 10:07:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E45F310E2AA;
	Thu, 23 Dec 2021 09:07:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 66A8E10E2AA;
 Thu, 23 Dec 2021 09:07:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 61A6DA00A0;
 Thu, 23 Dec 2021 09:07:24 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Thu, 23 Dec 2021 09:07:24 -0000
Message-ID: <164025044439.20443.18092518006117562611@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211221202902.1395588-1-John.C.Harrison@Intel.com>
In-Reply-To: <20211221202902.1395588-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Update_to_GuC_version_69=2E0=2E3_=28rev3=29?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Update to GuC version 69.0.3 (rev3)
URL   : https://patchwork.freedesktop.org/series/98249/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7c6acdb75fd4 drm/i915/guc: Temporarily bump the GuC load timeout
4c7171575588 drm/i915/guc: Update to GuC version 69.0.3
-:136: CHECK:CAMELCASE: Avoid CamelCase: <GUC_HXG_REQUEST_MSG_n_DATAn>
#136: FILE: drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h:55:
+#define HOST2GUC_SELF_CFG_REQUEST_MSG_2_VALUE32		GUC_HXG_REQUEST_MSG_n_DATAn

-:213: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#213: 
new file mode 100644

total: 0 errors, 1 warnings, 1 checks, 1010 lines checked
56e3ad6fdb09 drm/i915/guc: Improve GuC loading status check/error reports


