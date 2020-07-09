Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C60321A52E
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 18:52:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 380B86EAC0;
	Thu,  9 Jul 2020 16:52:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3560A6E0C5;
 Thu,  9 Jul 2020 15:49:35 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C1FD331B;
 Thu,  9 Jul 2020 08:49:34 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 5691F3F792;
 Thu,  9 Jul 2020 08:49:33 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu,  9 Jul 2020 16:49:31 +0100
Message-Id: <20200709154931.23310-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Thu, 09 Jul 2020 16:52:00 +0000
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Fix compare functions
 provided for sorting
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
Cc: Sudeep Holla <sudeep.holla@arm.com>, David Airlie <airlied@linux.ie>,
 Chris Wilson <chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Both cmp_u32 and cmp_u64 are comparing the pointers instead of the value
at those pointers. This will result in incorrect/unsorted list. Fix it
by deferencing the pointers before comparison.

Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/gpu/drm/i915/gt/selftest_rps.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

Hi,

I am not sure if I can put 2 fixes tags, but these are the ones affected.

Fixes: 4ba74e53ada3 ("drm/i915/selftests: Verify frequency scaling with RPS")
Fixes: 8757797ff9c9 ("drm/i915/selftests: Repeat the rps clock frequency measurement")

I made similar mistake and after I fixed it, just looked if there are any
similar bugs and found this.

Regards,
Sudeep

diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index 5049c3dd08a6..c91981e75ebf 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -44,9 +44,9 @@ static int cmp_u64(const void *A, const void *B)
 {
 	const u64 *a = A, *b = B;
 
-	if (a < b)
+	if (*a < *b)
 		return -1;
-	else if (a > b)
+	else if (*a > *b)
 		return 1;
 	else
 		return 0;
@@ -56,9 +56,9 @@ static int cmp_u32(const void *A, const void *B)
 {
 	const u32 *a = A, *b = B;
 
-	if (a < b)
+	if (*a < *b)
 		return -1;
-	else if (a > b)
+	else if (*a > *b)
 		return 1;
 	else
 		return 0;
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
