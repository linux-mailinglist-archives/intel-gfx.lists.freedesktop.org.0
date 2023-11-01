Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B527DDEA0
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Nov 2023 10:42:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30E0F10E690;
	Wed,  1 Nov 2023 09:42:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7E7CD89B78;
 Wed,  1 Nov 2023 09:42:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6F41FAADF2;
 Wed,  1 Nov 2023 09:42:24 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kahola" <mika.kahola@intel.com>
Date: Wed, 01 Nov 2023 09:42:24 -0000
Message-ID: <169883174445.29319.5060993554702382220@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231101085757.148899-1-mika.kahola@intel.com>
In-Reply-To: <20231101085757.148899-1-mika.kahola@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display=3A_Support_PSR_entry_VSC_packet_to_be_tran?=
 =?utf-8?q?smitted_one_frame_earlier_=28rev2=29?=
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

Series: drm/i915/display: Support PSR entry VSC packet to be transmitted one frame earlier (rev2)
URL   : https://patchwork.freedesktop.org/series/125558/
State : warning

== Summary ==

Error: dim checkpatch failed
0f3481222a42 drm/i915/display: Support PSR entry VSC packet to be transmitted one frame earlier
-:18: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#18: 
    Move frames before su entry calculation to it's own function (Ville, Jouni)

-:193: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#193: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:39:
+#define   LNL_EDP_PSR_ENTRY_SETUP_FRAMES(x)	REG_FIELD_PREP(LNL_EDP_PSR_ENTRY_SETUP_FRAMES_MASK, (x))

total: 0 errors, 2 warnings, 0 checks, 151 lines checked


