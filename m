Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC65474F378
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jul 2023 17:31:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3173810E3C2;
	Tue, 11 Jul 2023 15:31:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BE01110E3D5;
 Tue, 11 Jul 2023 15:31:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B4007AADED;
 Tue, 11 Jul 2023 15:31:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 11 Jul 2023 15:31:25 -0000
Message-ID: <168908948573.18665.229100221148398726@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230711110214.25093-1-jani.nikula@intel.com>
In-Reply-To: <20230711110214.25093-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Revert_=22drm/i915=3A_use_localized_=5F=5Fdiag=5Fignore=5Fa?=
 =?utf-8?q?ll=28=29_instead_of_per_file=22?=
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

Series: Revert "drm/i915: use localized __diag_ignore_all() instead of per file"
URL   : https://patchwork.freedesktop.org/series/120541/
State : warning

== Summary ==

Error: dim checkpatch failed
1b351f5b2ed0 Revert "drm/i915: use localized __diag_ignore_all() instead of per file"
-:21: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Closes: with a URL to the report
#21: 
Reported-by: John Garry <john.g.garry@oracle.com>
References: https://lore.kernel.org/r/ad2601c0-84bb-c574-3702-a83ff8faf98c@oracle.com

-:22: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#22: 
References: https://lore.kernel.org/r/ad2601c0-84bb-c574-3702-a83ff8faf98c@oracle.com

-:22: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'References:', use 'Link:' or 'Closes:' instead
#22: 
References: https://lore.kernel.org/r/ad2601c0-84bb-c574-3702-a83ff8faf98c@oracle.com

-:23: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'References:', use 'Link:' or 'Closes:' instead
#23: 
References: https://lore.kernel.org/r/87wmzezns4.fsf@intel.com

total: 0 errors, 4 warnings, 0 checks, 62 lines checked


