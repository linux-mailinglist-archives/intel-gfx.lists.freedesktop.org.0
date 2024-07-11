Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 220A992ED68
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2024 19:04:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE8A610EB01;
	Thu, 11 Jul 2024 17:04:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FCA110EB0B;
 Thu, 11 Jul 2024 17:04:19 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/gt=3A_Do_no?=
 =?utf-8?q?t_consider_preemption_during_execlists=5Fdequeue_for_gen8_=28rev4?=
 =?utf-8?q?=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nitin Gote" <nitin.r.gote@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jul 2024 17:04:19 -0000
Message-ID: <172071745945.136068.2752346046534607348@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240711163208.1355736-1-nitin.r.gote@intel.com>
In-Reply-To: <20240711163208.1355736-1-nitin.r.gote@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/gt: Do not consider preemption during execlists_dequeue for gen8 (rev4)
URL   : https://patchwork.freedesktop.org/series/135901/
State : warning

== Summary ==

Error: dim checkpatch failed
ecd6858702b8 drm/i915/gt: Do not consider preemption during execlists_dequeue for gen8
-:8: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#8: 
bac24f59f454 ("drm/i915/execlists: Enable coarse preemption boundaries for gen8").

-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit bac24f59f454 ("drm/i915/execlists: Enable coarse preemption boundaries for gen8")'
#8: 
bac24f59f454 ("drm/i915/execlists: Enable coarse preemption boundaries for gen8").

total: 1 errors, 1 warnings, 0 checks, 12 lines checked


