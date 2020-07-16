Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C214222F05
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 01:33:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5274E6ED22;
	Thu, 16 Jul 2020 23:33:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6BA4E6ED22;
 Thu, 16 Jul 2020 23:33:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 655B6A66C9;
 Thu, 16 Jul 2020 23:33:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Thu, 16 Jul 2020 23:33:42 -0000
Message-ID: <159494242239.25375.11169261857266188949@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200716232900.28414-1-manasi.d.navare@intel.com>
In-Reply-To: <20200716232900.28414-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/dp=3A_HAX_Try_the_b?=
 =?utf-8?q?spec_value_for_CLKTOP2=5FCORECLKCTL?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [1/2] drm/i915/dp: HAX Try the bspec value for CLKTOP2_CORECLKCTL
URL   : https://patchwork.freedesktop.org/series/79569/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7e44cd55cc41 drm/i915/dp: HAX Try the bspec value for CLKTOP2_CORECLKCTL
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 17 lines checked
745bd4981bd6 drm/i915/display/dp: Hacks for testing link training fail errors
-:47: ERROR:SPACING: space required after that close brace '}'
#47: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:418:
+	}/* else if (intel_dp_get_link_train_fallback_values(intel_dp,

-:52: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#52: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:422:
+		}*/

total: 1 errors, 1 warnings, 0 checks, 34 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
