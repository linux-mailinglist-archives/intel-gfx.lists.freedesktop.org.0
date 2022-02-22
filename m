Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35E674BF73E
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 12:28:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAE2410EB92;
	Tue, 22 Feb 2022 11:28:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 15F3F10EB8B;
 Tue, 22 Feb 2022 11:28:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 16853A9932;
 Tue, 22 Feb 2022 11:28:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jordan Justen" <jordan.l.justen@intel.com>
Date: Tue, 22 Feb 2022 11:28:26 -0000
Message-ID: <164552930608.23041.12768005565700594576@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220222103640.1006006-1-jordan.l.justen@intel.com>
In-Reply-To: <20220222103640.1006006-1-jordan.l.justen@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_GuC_HWCONFIG_with_documentation_=28rev5=29?=
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

Series: GuC HWCONFIG with documentation (rev5)
URL   : https://patchwork.freedesktop.org/series/99787/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c3d64e01c80f drm/i915/guc: Add fetch of hwconfig table
-:92: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#92: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 236 lines checked
d5c4e6d3f58b drm/i915/uapi: Add query for hwconfig blob
2f033c0ee9f5 drm/i915/uapi: Add struct drm_i915_query_hwconfig_blob_item
5eee553b638e drm/i915/guc: Verify hwconfig blob matches supported format


