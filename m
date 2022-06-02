Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C166753BD7B
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jun 2022 19:44:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D78E11131B7;
	Thu,  2 Jun 2022 17:44:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E29D11131B7;
 Thu,  2 Jun 2022 17:44:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DA4D6A66C9;
 Thu,  2 Jun 2022 17:44:19 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zhanjun Dong" <zhanjun.dong@intel.com>
Date: Thu, 02 Jun 2022 17:44:19 -0000
Message-ID: <165419185986.17949.14028771230458331570@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220602172119.96324-1-zhanjun.dong@intel.com>
In-Reply-To: <20220602172119.96324-1-zhanjun.dong@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/guc=3A_Check_ctx_while_waiting_for_response?=
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

Series: drm/i915/guc: Check ctx while waiting for response
URL   : https://patchwork.freedesktop.org/series/104672/
State : warning

== Summary ==

Error: dim checkpatch failed
b5d975cdaf5a drm/i915/guc: Check ctx while waiting for response
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
We are seeing error message of "No response for request". Some cases happened

-:56: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#56: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c:713:
+			CT_DEBUG(ct, "Request %#x (fence %u) cancelled as CTB is disabled\n",
+				action[0], request.fence);

-:59: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#59: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c:716:
+			CT_ERROR(ct, "No response for request %#x (fence %u)\n",
+				action[0], request.fence);

-:71: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#71: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c:782:
+			CT_ERROR(ct, "Sending action %#x failed (%pe) status=%#X\n",
+				action[0], ERR_PTR(ret), status);

total: 0 errors, 1 warnings, 3 checks, 52 lines checked


