Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5349462D0DF
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Nov 2022 02:55:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5343810E51B;
	Thu, 17 Nov 2022 01:55:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 83A1D10E51B;
 Thu, 17 Nov 2022 01:55:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7C614A00CC;
 Thu, 17 Nov 2022 01:55:15 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "James Xiong" <james.xiong@intel.com>
Date: Thu, 17 Nov 2022 01:55:15 -0000
Message-ID: <166865011547.12185.14431109007390743046@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221117012136.2126916-1-james.xiong@intel.com>
In-Reply-To: <20221117012136.2126916-1-james.xiong@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/1=5D_drm/i915=3A_use_the_original?=
 =?utf-8?q?_Wa=5F14010685332_for_PCH=5FADP?=
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

Series: series starting with [1/1] drm/i915: use the original Wa_14010685332 for PCH_ADP
URL   : https://patchwork.freedesktop.org/series/110988/
State : warning

== Summary ==

Error: dim checkpatch failed
8187aa163d26 drm/i915: use the original Wa_14010685332 for PCH_ADP
-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit b896898c7369 ("drm/i915: Tweaked Wa_14010685332 for PCHs used on gen11 platforms")'
#8: 
commit b896898c7369 implemented the tweaked verson for ICP, JSP and MCC

-:8: WARNING:TYPO_SPELLING: 'verson' may be misspelled - perhaps 'version'?
#8: 
commit b896898c7369 implemented the tweaked verson for ICP, JSP and MCC
                                            ^^^^^^

-:9: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit b8441b288d60 ("drm/i915: Tweaked Wa_14010685332 for all PCHs")'
#9: 
commit b8441b288d60 removed the orignal and applied the tweaked one to

-:9: WARNING:TYPO_SPELLING: 'orignal' may be misspelled - perhaps 'original'?
#9: 
commit b8441b288d60 removed the orignal and applied the tweaked one to
                                ^^^^^^^

total: 2 errors, 2 warnings, 0 checks, 27 lines checked


