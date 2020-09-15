Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C38F426A254
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Sep 2020 11:34:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7412589DA7;
	Tue, 15 Sep 2020 09:34:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EFEB189D44;
 Tue, 15 Sep 2020 09:34:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E70DEA7DFB;
 Tue, 15 Sep 2020 09:34:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 15 Sep 2020 09:34:21 -0000
Message-ID: <160016246191.30600.11808593316647926575@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200915091417.4086-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200915091417.4086-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/3=5D_drm/i915/gem=3A_Avoid_i?=
 =?utf-8?q?mplicit_vmap_for_highmem_on_x86-32?=
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

Series: series starting with [CI,1/3] drm/i915/gem: Avoid implicit vmap for highmem on x86-32
URL   : https://patchwork.freedesktop.org/series/81682/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
19c64629256b drm/i915/gem: Avoid implicit vmap for highmem on x86-32
-:18: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#18: 
References: e87666b52f00 ("drm/i915/shrinker: Hook up vmap allocation failure notifier")

-:18: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit e87666b52f00 ("drm/i915/shrinker: Hook up vmap allocation failure notifier")'
#18: 
References: e87666b52f00 ("drm/i915/shrinker: Hook up vmap allocation failure notifier")

total: 1 errors, 1 warnings, 0 checks, 32 lines checked
957070151f2f drm/i915/gem: Prevent using pgprot_writecombine() if PAT is not supported
b1bfb2b6d79a drm/i915/gt: Clear the buffer pool age before use


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
