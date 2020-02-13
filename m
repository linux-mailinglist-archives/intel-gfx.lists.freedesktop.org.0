Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF88015B719
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 03:16:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF8D46E151;
	Thu, 13 Feb 2020 02:16:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 56F3D6E151;
 Thu, 13 Feb 2020 02:16:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 49F03A66C7;
 Thu, 13 Feb 2020 02:16:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 13 Feb 2020 02:16:49 -0000
Message-ID: <158156020927.17961.16980785337560394830@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200212144058.5686-1-jani.nikula@intel.com>
In-Reply-To: <20200212144058.5686-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915=3A_split_out_vlv/ch?=
 =?utf-8?q?v_specific_suspend/resume_code?=
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

Series: series starting with [1/2] drm/i915: split out vlv/chv specific suspend/resume code
URL   : https://patchwork.freedesktop.org/series/73365/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ae72e53c4c88 drm/i915: split out vlv/chv specific suspend/resume code
-:642: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#642: 
new file mode 100644

-:883: ERROR:SPACING: space required after that ',' (ctx:VxV)
#883: FILE: drivers/gpu/drm/i915/vlv_suspend.c:237:
+	I915_WRITE(GEN6_RP_DOWN_TIMEOUT,s->rp_down_timeout);
 	                               ^

total: 1 errors, 1 warnings, 0 checks, 1104 lines checked
c756ef3fa3ce drm/i915: switch vlv_suspend to use intel uncore register accessors
-:232: ERROR:SPACING: space required after that ',' (ctx:VxV)
#232: FILE: drivers/gpu/drm/i915/vlv_suspend.c:239:
+	intel_uncore_write(uncore, GEN6_RP_DOWN_TIMEOUT,s->rp_down_timeout);
 	                                               ^

total: 1 errors, 0 warnings, 0 checks, 367 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
