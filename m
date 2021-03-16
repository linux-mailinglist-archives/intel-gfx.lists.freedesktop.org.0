Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B24A33CDDF
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Mar 2021 07:16:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D201B6E20E;
	Tue, 16 Mar 2021 06:16:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6637D6E20E;
 Tue, 16 Mar 2021 06:16:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 55B94A41FB;
 Tue, 16 Mar 2021 06:16:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Ekstrand" <jason@jlekstrand.net>
Date: Tue, 16 Mar 2021 06:16:19 -0000
Message-ID: <161587537932.23907.4513746853838428022@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1615872114.git.ashutosh.dixit@intel.com>
In-Reply-To: <cover.1615872114.git.ashutosh.dixit@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Drop_legacy_IOCTLs_on_new_HW_=28rev2=29?=
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

Series: drm/i915: Drop legacy IOCTLs on new HW (rev2)
URL   : https://patchwork.freedesktop.org/series/87980/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
5957224f8490 drm/i915/gem: Drop legacy execbuffer support (v2)
-:7: WARNING:UNKNOWN_COMMIT_ID: Unknown commit id 'b50964027bef', maybe rebased or not pulled?
#7: 
when it exists since libdrm commit b50964027bef which landed Mar 2, 2010.

total: 0 errors, 1 warnings, 0 checks, 129 lines checked
e8045cfd1158 drm/i915/gem: Drop relocation support on all new hardware (v5)
-:21: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit e22fa6f0a976 ("drm/i915/rkl: Remove require_force_probe protection")'
#21: 
enabled by e22fa6f0a976 which has not yet landed in drm-next so this

total: 1 errors, 0 warnings, 0 checks, 37 lines checked
7e363e493cb8 drm/i915: Disable pread/pwrite ioctl's for future platforms (v3)


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
