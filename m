Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C62A61FB635
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 17:33:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20C436E7F1;
	Tue, 16 Jun 2020 15:33:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94BFB6E83C;
 Tue, 16 Jun 2020 14:49:33 +0000 (UTC)
Received: from embeddedor (unknown [189.207.59.248])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 82ED0208B3;
 Tue, 16 Jun 2020 14:49:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592318973;
 bh=ovSysk6kOqKTv082hockt1TpSKGLzWO2f3kVdMiM78o=;
 h=Date:From:To:Cc:Subject:From;
 b=loYJF9f7xfeyaBWVBmiXz3O8oEAEuwPE8LD1LEc01/05HTs9EHi54G2MNShbF+4x6
 GzSFw2VZCxY5rpp+mqH0wnwRznSKF8IqqQP5JC2g7fzuum4louloudFhn08jJevpDG
 Vel8U2AphFpDC2kHy71bI/PtRONOMefkJYCBStKs=
Date: Tue, 16 Jun 2020 09:54:52 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200616145452.GA25291@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Mailman-Approved-At: Tue, 16 Jun 2020 15:33:37 +0000
Subject: [Intel-gfx] [PATCH][next] drm/i915/selftests: Fix inconsistent
 IS_ERR and PTR_ERR
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix inconsistent IS_ERR and PTR_ERR in live_timeslice_nopreempt().

The proper pointer to be passed as argument to PTR_ERR() is ce.

This bug was detected with the help of Coccinelle.

Fixes: b72f02d78e4f ("drm/i915/gt: Prevent timeslicing into unpreemptable requests")
Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 91543494f595..393339de0910 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -1337,7 +1337,7 @@ static int live_timeslice_nopreempt(void *arg)
 
 		ce = intel_context_create(engine);
 		if (IS_ERR(ce)) {
-			err = PTR_ERR(rq);
+			err = PTR_ERR(ce);
 			goto out_spin;
 		}
 
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
