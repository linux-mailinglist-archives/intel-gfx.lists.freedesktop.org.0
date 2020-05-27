Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7961E4548
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 16:11:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC4F26E0B6;
	Wed, 27 May 2020 14:11:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 314 seconds by postgrey-1.36 at gabe;
 Wed, 27 May 2020 14:10:59 UTC
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D5466E0A8
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 14:10:59 +0000 (UTC)
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1Myevl-1ioaSD1TtV-00z0dt; Wed, 27 May 2020 16:05:28 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Date: Wed, 27 May 2020 16:05:08 +0200
Message-Id: <20200527140526.1458215-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Provags-ID: V03:K1:iA/oVTFZbT0EcafqZRx1usz2+oWll8ShFOXyKlbH3L+E47gvF24
 rqK1c0Xjr6CQW/9Sy+2v5OER+rRGSk92oqcKN3TTYYe1sGIBdezAIm9CdYAHoiZtdDxhMQI
 s6KkiyxtAAfHu/e/ASnv9FV7L+EgSb4wsnxyLn0niqe6JnEiNM7wwJk2MjrmrOK2vTbuPmB
 ObhVD+c+lb9Xai3ZpB3eA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:HW0+l7O5ycs=:GlMbVvC7dDS8gvsRlbDAzq
 z3nIuWMnppQqwI3lnogMt8WTdNwZzVwTbmTNy8z/w6c9XEfWNY+HhNYfUt6lt2alxBgGw+gWO
 oQecD0qUlVG9szcXtHoDEBQ0PtPxKLLCtJp3aNi1Zx5nX8iBA1yQPMA/lNGOjuJI2MLgpRW/a
 yjh3Ima26i4KMhJXLEOTrVawKRa5mBevD3h0GKU4KC0d5vvxLa87AeW+vcSnvTGBQPgs3i8sX
 EiJCXQKHr7DQn6otas4/+RVNF0lkzOhr66vIpURs7bUBS2+1V6nXuXGbqkv7sShiMCcwIWfut
 EJKu8QRxSdPzXBidbCREGeY2oM0ioLsW9UaOcSKXTM9inNi7u4fQ7dotNXM7uE7PT5NWerdVr
 K0yLLpKZY61JCkLyMyZdF5SsT6xPO/Fek9yOO7MM3/PIPxiiqNJboXHrElSq/HMhAkWuhNbae
 IKtU3HjsYdZTqgw3QunOOkus3UJthLZkenAuqvJogThxi3j4fiwuWaJx0sLCKb4zmeEy9kROW
 e226omihlQlgCc3CYJSgM5sSwayNvFOolROXhOlrF/icQqXrqBl+TGOQywfXAf+O8DKRuP8sS
 Q5X3UprYZ0y+fs7Qekz1Bn+6w9cD5/9XPe12TfV//AdUAew/cboY6uKqOHfR+DX5Lh1Hvet4X
 D5DT/NV0ypNAriWA6ghhWOf8R6ke9k8bK/TwphEgKkgrMAPcn0wu6HaXvjWKf83MeNKfbGiOA
 LCOTdffOv2axhWSNrtD7uigfqSGFeF16TVnbKXLN7dAAbyw5rJ1kKqSqc6kaqVTUCJVYbSciI
 PZ21tITJpFvE3WomKMh9ZR2XEw8gP/EtN3LmHSOY3mNi9I+lXI=
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/pmu: avoid an maybe-uninitialized
 warning
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
Cc: Arnd Bergmann <arnd@arndb.de>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Conditional spinlocks make it hard for gcc and for lockdep to
follow the code flow. This one causes a warning with at least
gcc-9 and higher:

In file included from include/linux/irq.h:14,
                 from drivers/gpu/drm/i915/i915_pmu.c:7:
drivers/gpu/drm/i915/i915_pmu.c: In function 'i915_sample':
include/linux/spinlock.h:289:3: error: 'flags' may be used uninitialized in this function [-Werror=maybe-uninitialized]
  289 |   _raw_spin_unlock_irqrestore(lock, flags); \
      |   ^~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/i915_pmu.c:288:17: note: 'flags' was declared here
  288 |   unsigned long flags;
      |                 ^~~~~

Split out the part between the locks into a separate function
for readability and to let the compiler figure out what the
logic actually is.

Fixes: d79e1bd676f0 ("drm/i915/pmu: Only use exclusive mmio access for gen7")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
I have no idea why I see three separate issues like this pop up in i915,
there are not a lot of them elsewhere.

 drivers/gpu/drm/i915/i915_pmu.c | 84 ++++++++++++++++-----------------
 1 file changed, 42 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index e991a707bdb7..962ded9ce73f 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -269,12 +269,48 @@ static bool exclusive_mmio_access(const struct drm_i915_private *i915)
 	return IS_GEN(i915, 7);
 }
 
+static void engine_sample(struct intel_engine_cs *engine, unsigned int period_ns)
+{
+	struct intel_engine_pmu *pmu = &engine->pmu;
+	bool busy;
+	u32 val;
+
+	val = ENGINE_READ_FW(engine, RING_CTL);
+	if (val == 0) /* powerwell off => engine idle */
+		return;
+
+	if (val & RING_WAIT)
+		add_sample(&pmu->sample[I915_SAMPLE_WAIT], period_ns);
+	if (val & RING_WAIT_SEMAPHORE)
+		add_sample(&pmu->sample[I915_SAMPLE_SEMA], period_ns);
+
+	/* No need to sample when busy stats are supported. */
+	if (intel_engine_supports_stats(engine))
+		return;
+
+	/*
+	 * While waiting on a semaphore or event, MI_MODE reports the
+	 * ring as idle. However, previously using the seqno, and with
+	 * execlists sampling, we account for the ring waiting as the
+	 * engine being busy. Therefore, we record the sample as being
+	 * busy if either waiting or !idle.
+	 */
+	busy = val & (RING_WAIT_SEMAPHORE | RING_WAIT);
+	if (!busy) {
+		val = ENGINE_READ_FW(engine, RING_MI_MODE);
+		busy = !(val & MODE_IDLE);
+	}
+	if (busy)
+		add_sample(&pmu->sample[I915_SAMPLE_BUSY], period_ns);
+}
+
 static void
 engines_sample(struct intel_gt *gt, unsigned int period_ns)
 {
 	struct drm_i915_private *i915 = gt->i915;
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
+	unsigned long flags;
 
 	if ((i915->pmu.enable & ENGINE_SAMPLE_MASK) == 0)
 		return;
@@ -283,53 +319,17 @@ engines_sample(struct intel_gt *gt, unsigned int period_ns)
 		return;
 
 	for_each_engine(engine, gt, id) {
-		struct intel_engine_pmu *pmu = &engine->pmu;
-		spinlock_t *mmio_lock;
-		unsigned long flags;
-		bool busy;
-		u32 val;
-
 		if (!intel_engine_pm_get_if_awake(engine))
 			continue;
 
-		mmio_lock = NULL;
-		if (exclusive_mmio_access(i915))
-			mmio_lock = &engine->uncore->lock;
-
-		if (unlikely(mmio_lock))
-			spin_lock_irqsave(mmio_lock, flags);
-
-		val = ENGINE_READ_FW(engine, RING_CTL);
-		if (val == 0) /* powerwell off => engine idle */
-			goto skip;
-
-		if (val & RING_WAIT)
-			add_sample(&pmu->sample[I915_SAMPLE_WAIT], period_ns);
-		if (val & RING_WAIT_SEMAPHORE)
-			add_sample(&pmu->sample[I915_SAMPLE_SEMA], period_ns);
-
-		/* No need to sample when busy stats are supported. */
-		if (intel_engine_supports_stats(engine))
-			goto skip;
-
-		/*
-		 * While waiting on a semaphore or event, MI_MODE reports the
-		 * ring as idle. However, previously using the seqno, and with
-		 * execlists sampling, we account for the ring waiting as the
-		 * engine being busy. Therefore, we record the sample as being
-		 * busy if either waiting or !idle.
-		 */
-		busy = val & (RING_WAIT_SEMAPHORE | RING_WAIT);
-		if (!busy) {
-			val = ENGINE_READ_FW(engine, RING_MI_MODE);
-			busy = !(val & MODE_IDLE);
+		if (exclusive_mmio_access(i915)) {
+			spin_lock_irqsave(&engine->uncore->lock, flags);
+			engine_sample(engine, period_ns);
+			spin_unlock_irqrestore(&engine->uncore->lock, flags);
+		} else {
+			engine_sample(engine, period_ns);
 		}
-		if (busy)
-			add_sample(&pmu->sample[I915_SAMPLE_BUSY], period_ns);
 
-skip:
-		if (unlikely(mmio_lock))
-			spin_unlock_irqrestore(mmio_lock, flags);
 		intel_engine_pm_put_async(engine);
 	}
 }
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
