Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D96779E027
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Sep 2023 08:42:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 824FD10E0A9;
	Wed, 13 Sep 2023 06:42:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 078FC10E0A9;
 Wed, 13 Sep 2023 06:42:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0049CAADE3;
 Wed, 13 Sep 2023 06:42:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Wed, 13 Sep 2023 06:42:00 -0000
Message-ID: <169458732096.31251.6705951365915794165@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230913060606.1105349-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20230913060606.1105349-1-mitulkumar.ajitkumar.golani@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_DSC_fractional_bpp_support_=28rev7=29?=
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

Series: Add DSC fractional bpp support (rev7)
URL   : https://patchwork.freedesktop.org/series/111391/
State : warning

== Summary ==

Error: dim checkpatch failed
335c97448415 drm/display/dp: Add helper function to get DSC bpp prescision
1e1010fd7a35 drm/i915/display: Store compressed bpp in U6.4 format
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:339: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#339: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 311 lines checked
346395c16c9e drm/i915/display: Consider fractional vdsc bpp while computing m_n values
931e5062e6b6 drm/i915/audio : Consider fractional vdsc bpp while computing tu_data
df96870bfa53 drm/i915/dsc/mtl: Add support for fractional bpp
dcce55cc2a23 drm/i915/dp: Iterate over output bpp with fractional step size
3ae03ebc7a51 drm/i915/dsc: Add debugfs entry to validate DSC fractional bpp
5e2c4525feef drm/i915/dsc: Allow DSC only with fractional bpp when forced from debugfs


