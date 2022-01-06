Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 853C248642B
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jan 2022 13:13:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C17A810E5FA;
	Thu,  6 Jan 2022 12:13:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 69D3910E604;
 Thu,  6 Jan 2022 12:13:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 21BB1A882E;
 Thu,  6 Jan 2022 12:13:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Thu, 06 Jan 2022 12:13:55 -0000
Message-ID: <164147123513.20692.16672635648204434452@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220106112026.247459-1-matthew.auld@intel.com>
In-Reply-To: <20220106112026.247459-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv2=2C1/4=5D_drm/i915=3A_don=27t_cal?=
 =?utf-8?q?l_free=5Fmmap=5Foffset_when_purging?=
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

Series: series starting with [v2,1/4] drm/i915: don't call free_mmap_offset when purging
URL   : https://patchwork.freedesktop.org/series/98548/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ce8969fa161a drm/i915: don't call free_mmap_offset when purging
-:22: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#22: 
<4> [749.062928] CPU: 0 PID: 1643 Comm: gem_madvise Tainted: G     U  W         5.16.0-rc8-CI-CI_DRM_11046+ #1

total: 0 errors, 1 warnings, 0 checks, 7 lines checked
c3ae17de8264 drm/i915/ttm: only fault WILLNEED objects
e0c70169a2fd drm/i915/ttm: add unmap_virtual callback
be0926fec2d6 drm/i915/ttm: ensure we unmap when purging


