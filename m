Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C0A42C93E
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 21:00:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBE0E6E064;
	Wed, 13 Oct 2021 19:00:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 57EDF6E064;
 Wed, 13 Oct 2021 19:00:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 54A21A73C9;
 Wed, 13 Oct 2021 19:00:41 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Das, Nirmoy" <nirmoy.das@amd.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Oct 2021 19:00:41 -0000
Message-ID: <163415164134.10252.8252068723649558737@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211013183601.16514-1-nirmoy.das@amd.com>
In-Reply-To: <20211013183601.16514-1-nirmoy.das@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv2=2C1/4=5D_dri=3A_do_not_check_for?=
 =?utf-8?q?_NULL_debugfs_dentry?=
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

Series: series starting with [v2,1/4] dri: do not check for NULL debugfs dentry
URL   : https://patchwork.freedesktop.org/series/95794/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
bb1c720488a1 dri: do not check for NULL debugfs dentry
-:93: CHECK:LINE_SPACING: Please don't use multiple blank lines
#93: FILE: include/drm/drm_file.h:84:
 
+

total: 0 errors, 0 warnings, 1 checks, 73 lines checked
5a230733e5b5 drm/ttm: do not set NULL to debugfs dentry
9a2340e7beba drm/i915/gt: do not check for NULL debugfs dentry
3e3b63e04133 vgaswitcheroo: do not check for NULL debugfs dentry


