Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5CDF8B7B6B
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 17:26:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE678112074;
	Tue, 30 Apr 2024 15:26:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63836112075;
 Tue, 30 Apr 2024 15:26:56 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_fix_miss?=
 =?utf-8?q?ing_linux/debugfs=2Eh_includes?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Danilo Krummrich" <dakr@redhat.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Apr 2024 15:26:56 -0000
Message-ID: <171449081640.1793102.11618161362788502949@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240430142622.217616-1-dakr@redhat.com>
In-Reply-To: <20240430142622.217616-1-dakr@redhat.com>
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

Series: drm/i915: fix missing linux/debugfs.h includes
URL   : https://patchwork.freedesktop.org/series/133075/
State : warning

== Summary ==

Error: dim checkpatch failed
20b2bfeb6ee9 drm/i915: fix missing linux/debugfs.h includes
-:12: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Closes: with a URL to the report
#12: 
Reported-by: kernel test robot <lkp@intel.com>
Fixes: 33d5ae6cacf4 ("drm/print: drop include debugfs.h and include where needed")

total: 0 errors, 1 warnings, 0 checks, 14 lines checked


