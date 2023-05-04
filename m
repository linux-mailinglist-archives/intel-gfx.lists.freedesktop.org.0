Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CB6A6F6F76
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 17:57:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5899410E494;
	Thu,  4 May 2023 15:57:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CC83910E170;
 Thu,  4 May 2023 15:57:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C4D24AADE3;
 Thu,  4 May 2023 15:57:40 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Thu, 04 May 2023 15:57:40 -0000
Message-ID: <168321586077.11434.11988898420242965980@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230504093959.12085-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20230504093959.12085-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display=3A_Communicate_display_power_demands_to_pc?=
 =?utf-8?q?ode_=28rev6=29?=
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

Series: drm/i915/display: Communicate display power demands to pcode (rev6)
URL   : https://patchwork.freedesktop.org/series/115371/
State : warning

== Summary ==

Error: dim checkpatch failed
3b2d5c3df035 drm/i915/display: Communicate display power demands to pcode
-:9: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#9: 
Adding new sequence with current cdclk associate with voltage value masking.

-:292: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#292: FILE: drivers/gpu/drm/i915/i915_reg.h:5357:
+#define   DISPLAY_TO_PCODE_PIPE_COUNT(x)	REG_FIELD_PREP(DISPLAY_TO_PCODE_PIPE_COUNT_MASK, (x))

total: 0 errors, 2 warnings, 0 checks, 252 lines checked


