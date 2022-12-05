Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BD5A6428C4
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Dec 2022 13:50:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4781D10E22A;
	Mon,  5 Dec 2022 12:50:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2EEF110E23A;
 Mon,  5 Dec 2022 12:50:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 293F8AADDA;
 Mon,  5 Dec 2022 12:50:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 05 Dec 2022 12:50:26 -0000
Message-ID: <167024462613.24404.17487626946931415043@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221205122918.3092092-1-jani.nikula@intel.com>
In-Reply-To: <20221205122918.3092092-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/fbc=3A_drop_uncore_locking_around_i8xx/i965_fbc_nu?=
 =?utf-8?q?ke?=
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

Series: drm/i915/fbc: drop uncore locking around i8xx/i965 fbc nuke
URL   : https://patchwork.freedesktop.org/series/111626/
State : warning

== Summary ==

Error: dim checkpatch failed
28945d7a6b0b drm/i915/fbc: drop uncore locking around i8xx/i965 fbc nuke
-:9: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit de5bd083d247 ("drm/i915/fbc: Skip nuke when flip is pending")'
#9: 
The locking should not be needed after commits de5bd083d247

-:10: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 7cfd1a18c5f9 ("drm/i915: Remove remaining locks from i9xx plane udpates")'
#10: 
("drm/i915/fbc: Skip nuke when flip is pending") and 7cfd1a18c5f9

total: 2 errors, 0 warnings, 0 checks, 20 lines checked


