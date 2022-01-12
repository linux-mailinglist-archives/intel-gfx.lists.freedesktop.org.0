Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9781548C4CB
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 14:28:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93A8A112992;
	Wed, 12 Jan 2022 13:28:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CAAA51129DB;
 Wed, 12 Jan 2022 13:28:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C7699A8836;
 Wed, 12 Jan 2022 13:28:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 12 Jan 2022 13:28:10 -0000
Message-ID: <164199409081.21762.10616813527105216948@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220112111438.1197944-1-jani.nikula@intel.com>
In-Reply-To: <20220112111438.1197944-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv3=2C1/2=5D_drm/i915=3A_split_out_i?=
 =?utf-8?b?bnRlbF92dGQuW2NoXSBmcm9tIGk5MTVfZHJ2Lmg=?=
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

Series: series starting with [v3,1/2] drm/i915: split out intel_vtd.[ch] from i915_drv.h
URL   : https://patchwork.freedesktop.org/series/98789/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a511b4fe2f78 drm/i915: split out intel_vtd.[ch] from i915_drv.h
-:316: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#316: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 272 lines checked
5c3cc9f0f246 drm/i915/vtd: rename functions to have the usual prefix


