Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E31C73DB4F
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 11:24:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E8A710E090;
	Mon, 26 Jun 2023 09:24:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C8F2010E052;
 Mon, 26 Jun 2023 09:24:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C578FAADE8;
 Mon, 26 Jun 2023 09:24:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 26 Jun 2023 09:24:07 -0000
Message-ID: <168777144780.5705.4478802600274254974@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230621123156.14907-1-jani.nikula@intel.com>
In-Reply-To: <20230621123156.14907-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/doc=3A_fix_duplicate_dec?=
 =?utf-8?q?laration_warning_=28rev2=29?=
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

Series: series starting with [1/2] drm/doc: fix duplicate declaration warning (rev2)
URL   : https://patchwork.freedesktop.org/series/119677/
State : warning

== Summary ==

Error: dim checkpatch failed
bd9fe8dca640 drm/doc: fix duplicate declaration warning
-:8: WARNING:USE_RELATIVE_PATH: use relative pathname instead of absolute in changelog text
#8: 
/home/jani/src/linux/Documentation/gpu/driver-uapi.rst:2279: WARNING: Duplicate C declaration, also defined at rfc/i915_scheduler:3.

total: 0 errors, 1 warnings, 0 checks, 13 lines checked
2d0d0e77bf90 drm/i915: fix Sphinx indentation warning


