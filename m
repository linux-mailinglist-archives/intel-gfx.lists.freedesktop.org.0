Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81EA575B59D
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jul 2023 19:29:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0608210E5F0;
	Thu, 20 Jul 2023 17:29:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5F2B810E5F2;
 Thu, 20 Jul 2023 17:29:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 58BE8AADE0;
 Thu, 20 Jul 2023 17:29:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Thu, 20 Jul 2023 17:29:38 -0000
Message-ID: <168987417832.20751.18085827293165953919@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230720125418.236140-1-imre.deak@intel.com>
In-Reply-To: <20230720125418.236140-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Fix_connector_HPD_polling?=
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

Series: drm/i915: Fix connector HPD polling
URL   : https://patchwork.freedesktop.org/series/121050/
State : warning

== Summary ==

Error: dim checkpatch failed
c3343063ec23 drm/i915: Avoid endless HPD poll detect loop via runtime suspend/resume
-:9: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#9: 
commit a8ddac7c9f06 ("drm/i915: Avoid HPD poll detect triggering a new detect cycle")

-:44: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'References:', use 'Link:' or 'Closes:' instead
#44: 
References: https://gitlab.freedesktop.org/drm/intel/-/issues/7940#note_1997403

total: 0 errors, 2 warnings, 0 checks, 82 lines checked
87c4cc16c75e drm: Add an HPD poll helper to reschedule the poll work
3573005acea3 drm/i915: Fix HPD polling, reenabling the output poll work as needed
32d8d0db4836 drm/i915: Don't change the status of forced connectors during hotplug detect
6aadfef5ec03 drm/i915: Don't change the status of forced connectors during HPD poll detect


