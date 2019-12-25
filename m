Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2AF12A6A6
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Dec 2019 09:05:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A561489A75;
	Wed, 25 Dec 2019 08:05:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from eggs.gnu.org (eggs.gnu.org [IPv6:2001:470:142:3::10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5DD889A75
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Dec 2019 08:05:10 +0000 (UTC)
Received: from fencepost.gnu.org ([2001:470:142:3::e]:56973)
 by eggs.gnu.org with esmtp (Exim 4.71)
 (envelope-from <ebrahim@gnu.org>) id 1ik1fJ-0000GS-US
 for intel-gfx@lists.freedesktop.org; Wed, 25 Dec 2019 03:05:09 -0500
Received: from ip124.ip-151-80-200.eu ([151.80.200.124]:34292
 helo=[10.8.0.219])
 by fencepost.gnu.org with esmtpsa (TLS1.2:DHE_RSA_AES_128_CBC_SHA1:128)
 (Exim 4.82) (envelope-from <ebrahim@gnu.org>) id 1ik1fH-0005LF-SK
 for intel-gfx@lists.freedesktop.org; Wed, 25 Dec 2019 03:05:09 -0500
To: intel-gfx@lists.freedesktop.org
From: Ebrahim Byagowi <ebrahim@gnu.org>
Message-ID: <5cf1d94b-d076-9d99-13ef-cf26dec10430@gnu.org>
Date: Wed, 25 Dec 2019 11:34:47 +0330
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
Content-Language: en-US
X-detected-operating-system: by eggs.gnu.org: GNU/Linux 2.2.x-3.x [generic]
Subject: [Intel-gfx] [PATCH] drm/i915: Fix enable OA report logic
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Clang raises

  drivers/gpu/drm/i915/i915_perf.c:2474:50: warning: operator '?:' has lower precedence than '|'; '|' will be evaluated first [-Wbitwise-conditional-parentheses]
                             !(stream->sample_flags & SAMPLE_OA_REPORT) ?
                             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^
  drivers/gpu/drm/i915/i915_perf.c:2474:50: note: place parentheses around the '|' expression to silence this warning
                             !(stream->sample_flags & SAMPLE_OA_REPORT) ?
                             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^
  drivers/gpu/drm/i915/i915_perf.c:2474:50: note: place parentheses around the '?:' expression to evaluate it first
                             !(stream->sample_flags & SAMPLE_OA_REPORT) ?
                             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^

with -Wbitwise-conditional-parentheses and apparently is right
as '|' is evaluated before '?:' which doesn't seem to be the intention
here so let's put parentheses in the right place to fix it.

Signed-off-by: Ebrahim Byagowi <ebrahim@gnu.org>
---
 drivers/gpu/drm/i915/i915_perf.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 2ae14bc14931..db963f7c2e2e 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -2471,9 +2471,9 @@ static int gen12_enable_metric_set(struct i915_perf_stream *stream)
 			    * If the user didn't require OA reports, instruct the
 			    * hardware not to emit ctx switch reports.
 			    */
-			   !(stream->sample_flags & SAMPLE_OA_REPORT) ?
-			   _MASKED_BIT_ENABLE(GEN12_OAG_OA_DEBUG_DISABLE_CTX_SWITCH_REPORTS) :
-			   _MASKED_BIT_DISABLE(GEN12_OAG_OA_DEBUG_DISABLE_CTX_SWITCH_REPORTS));
+			   (!(stream->sample_flags & SAMPLE_OA_REPORT) ?
+			    _MASKED_BIT_ENABLE(GEN12_OAG_OA_DEBUG_DISABLE_CTX_SWITCH_REPORTS) :
+			    _MASKED_BIT_DISABLE(GEN12_OAG_OA_DEBUG_DISABLE_CTX_SWITCH_REPORTS)));
 
 	intel_uncore_write(uncore, GEN12_OAG_OAGLBCTXCTRL, periodic ?
 			   (GEN12_OAG_OAGLBCTXCTRL_COUNTER_RESUME |
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
