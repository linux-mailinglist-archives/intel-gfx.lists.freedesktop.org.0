Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5DF733A01
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jun 2023 21:36:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52A2610E682;
	Fri, 16 Jun 2023 19:36:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8448110E0C1;
 Fri, 16 Jun 2023 19:35:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AE1A1AADEA;
 Fri, 16 Jun 2023 19:35:57 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Fri, 16 Jun 2023 19:35:57 -0000
Message-ID: <168694415768.9827.17406229086488767621@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230616185104.2502003-1-imre.deak@intel.com>
In-Reply-To: <20230616185104.2502003-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/4=5D_drm/i915=3A_Add_missing_forw?=
 =?utf-8?q?ard_declarations/includes_to_display_power_headers?=
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

Series: series starting with [1/4] drm/i915: Add missing forward declarations/includes to display power headers
URL   : https://patchwork.freedesktop.org/series/119480/
State : warning

== Summary ==

Error: dim checkpatch failed
0fa1731f78bd drm/i915: Add missing forward declarations/includes to display power headers
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
declared inside parameter list will not be visible outside of this definition or declaration [-Werror]

total: 0 errors, 1 warnings, 0 checks, 24 lines checked
bb70c02d041a drm/i915: Remove redundant forward declarations from display power headers
30b20e115fd7 drm/i915: Add way to specify the power-off delay of a display power domain
f69fb91dbeb7 drm/i915: Prevent needless toggling of DC states during modesets


