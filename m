Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3944256BBF0
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jul 2022 16:55:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C06010E4CC;
	Fri,  8 Jul 2022 14:55:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C062410E49E;
 Fri,  8 Jul 2022 14:55:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B544CA66C8;
 Fri,  8 Jul 2022 14:55:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Karolina Drobnik" <karolina.drobnik@intel.com>
Date: Fri, 08 Jul 2022 14:55:22 -0000
Message-ID: <165729212273.4506.9607116977312554430@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1657289332.git.karolina.drobnik@intel.com>
In-Reply-To: <cover.1657289332.git.karolina.drobnik@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Apply_waitboosting_before_fence_wait_=28rev2=29?=
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

Series: drm/i915: Apply waitboosting before fence wait (rev2)
URL   : https://patchwork.freedesktop.org/series/105925/
State : warning

== Summary ==

Error: dim checkpatch failed
e35c61e9e46c drm/i915/gem: Look for waitboosting across the whole object prior to individual waits
85a4558b5d11 drm/i915: Bump GT idling delay to 2 jiffies
0ec610488c77 drm/i915/gt: Only kick the signal worker if there's been an update
-:23: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#23: 
References: 047a1b877ed4 ("dma-buf & drm/amdgpu: remove dma_resv workaround")

-:23: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 047a1b877ed4 ("dma-buf & drm/amdgpu: remove dma_resv workaround")'
#23: 
References: 047a1b877ed4 ("dma-buf & drm/amdgpu: remove dma_resv workaround")

total: 1 errors, 1 warnings, 0 checks, 9 lines checked


