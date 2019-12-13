Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD39011EA9F
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 19:46:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6EE86E0CE;
	Fri, 13 Dec 2019 18:46:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 492 seconds by postgrey-1.36 at gabe;
 Fri, 13 Dec 2019 18:46:43 UTC
Received: from 2.mo5.mail-out.ovh.net (2.mo5.mail-out.ovh.net [178.33.109.111])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4174D6E0CE
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 18:46:43 +0000 (UTC)
Received: from player693.ha.ovh.net (unknown [10.108.35.124])
 by mo5.mail-out.ovh.net (Postfix) with ESMTP id 7BEF12627C5
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 19:38:28 +0100 (CET)
Received: from etezian.org (net-37-116-49-191.cust.vodafonedsl.it
 [37.116.49.191]) (Authenticated sender: andi@etezian.org)
 by player693.ha.ovh.net (Postfix) with ESMTPSA id 7F978D3FF3E0;
 Fri, 13 Dec 2019 18:38:24 +0000 (UTC)
From: Andi Shyti <andi@etezian.org>
To: Intel GFX <intel-gfx@lists.freedesktop.org>
Date: Fri, 13 Dec 2019 20:37:35 +0200
Message-Id: <20191213183736.31992-2-andi@etezian.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191213183736.31992-1-andi@etezian.org>
References: <20191213183736.31992-1-andi@etezian.org>
MIME-Version: 1.0
X-Ovh-Tracer-Id: 15754717400221991517
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrudelledguddugecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucfkpheptddrtddrtddrtddpfeejrdduudeirdegledrudeludenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrieelfedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
Subject: [Intel-gfx] [PATCH v4 1/2] drm/i915/rps: Add frequency translation
 helpers
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

From: Andi Shyti <andi.shyti@intel.com>

Add two helpers that for reading the actual GT's frequency. The
two helpers are:

 - intel_rps_read_cagf: reads the frequency and returns it not
   normalized

 - intel_rps_read_actual_frequency: provides the frequency in Hz.

Use the above helpers in sysfs and debugfs.

Signed-off-by: Andi Shyti <andi.shyti@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 30 +++++++++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_rps.h |  2 ++
 drivers/gpu/drm/i915/i915_debugfs.c | 21 +++++---------------
 drivers/gpu/drm/i915/i915_sysfs.c   | 14 ++------------
 4 files changed, 39 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 106c9fce9d6c..370a11819d6f 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -1682,6 +1682,36 @@ u32 intel_get_cagf(struct intel_rps *rps, u32 rpstat)
 	return  cagf;
 }
 
+u32 intel_rps_read_cagf(struct intel_rps *rps)
+{
+	struct drm_i915_private *i915 = rps_to_i915(rps);
+	u32 freq;
+
+	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
+		vlv_punit_get(i915);
+		freq = vlv_punit_read(i915, PUNIT_REG_GPU_FREQ_STS);
+		vlv_punit_put(i915);
+
+		return (freq >> 8) & 0xff;
+	}
+
+	return intel_get_cagf(rps, intel_uncore_read(rps_to_gt(rps)->uncore,
+						     GEN6_RPSTAT1));
+}
+
+u32 intel_rps_read_actual_frequency(struct intel_rps *rps)
+{
+	struct intel_runtime_pm *rpm = rps_to_gt(rps)->uncore->rpm;
+	intel_wakeref_t wakeref;
+	int freq;
+
+	wakeref = intel_runtime_pm_get(rpm);
+	freq = intel_gpu_freq(rps, intel_rps_read_cagf(rps));
+	intel_runtime_pm_put(rpm, wakeref);
+
+	return freq;
+}
+
 /* External interface for intel_ips.ko */
 
 static struct drm_i915_private __rcu *ips_mchdev;
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.h b/drivers/gpu/drm/i915/gt/intel_rps.h
index 9518c66c9792..bd12a63ecd4a 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.h
+++ b/drivers/gpu/drm/i915/gt/intel_rps.h
@@ -30,6 +30,8 @@ void intel_rps_mark_interactive(struct intel_rps *rps, bool interactive);
 int intel_gpu_freq(struct intel_rps *rps, int val);
 int intel_freq_opcode(struct intel_rps *rps, int val);
 u32 intel_get_cagf(struct intel_rps *rps, u32 rpstat1);
+u32 intel_rps_read_cagf(struct intel_rps *rps);
+u32 intel_rps_read_actual_frequency(struct intel_rps *rps);
 
 void gen5_rps_irq_handler(struct intel_rps *rps);
 void gen6_rps_irq_handler(struct intel_rps *rps, u32 pm_iir);
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 9cd5ce5bc93b..3ec26b6a48c1 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -881,7 +881,7 @@ static int i915_frequency_info(struct seq_file *m, void *unused)
 		rpdownei = I915_READ(GEN6_RP_CUR_DOWN_EI) & GEN6_CURIAVG_MASK;
 		rpcurdown = I915_READ(GEN6_RP_CUR_DOWN) & GEN6_CURBSYTAVG_MASK;
 		rpprevdown = I915_READ(GEN6_RP_PREV_DOWN) & GEN6_CURBSYTAVG_MASK;
-		cagf = intel_gpu_freq(rps, intel_get_cagf(rps, rpstat));
+		cagf = intel_rps_read_actual_frequency(rps);
 
 		intel_uncore_forcewake_put(&dev_priv->uncore, FORCEWAKE_ALL);
 
@@ -1623,21 +1623,11 @@ static int i915_rps_boost_info(struct seq_file *m, void *data)
 {
 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
 	struct intel_rps *rps = &dev_priv->gt.rps;
-	u32 act_freq = rps->cur_freq;
+	u32 act_freq;
 	intel_wakeref_t wakeref;
 
-	with_intel_runtime_pm_if_in_use(&dev_priv->runtime_pm, wakeref) {
-		if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
-			vlv_punit_get(dev_priv);
-			act_freq = vlv_punit_read(dev_priv,
-						  PUNIT_REG_GPU_FREQ_STS);
-			vlv_punit_put(dev_priv);
-			act_freq = (act_freq >> 8) & 0xff;
-		} else {
-			act_freq = intel_get_cagf(rps,
-						  I915_READ(GEN6_RPSTAT1));
-		}
-	}
+	with_intel_runtime_pm_if_in_use(&dev_priv->runtime_pm, wakeref)
+		act_freq = intel_rps_read_actual_frequency(rps);
 
 	seq_printf(m, "RPS enabled? %d\n", rps->enabled);
 	seq_printf(m, "GPU busy? %s\n", yesno(dev_priv->gt.awake));
@@ -1645,8 +1635,7 @@ static int i915_rps_boost_info(struct seq_file *m, void *data)
 		   atomic_read(&rps->num_waiters));
 	seq_printf(m, "Interactive? %d\n", READ_ONCE(rps->power.interactive));
 	seq_printf(m, "Frequency requested %d, actual %d\n",
-		   intel_gpu_freq(rps, rps->cur_freq),
-		   intel_gpu_freq(rps, act_freq));
+		   intel_gpu_freq(rps, rps->cur_freq), act_freq);
 	seq_printf(m, "  min hard:%d, soft:%d; max soft:%d, hard:%d\n",
 		   intel_gpu_freq(rps, rps->min_freq),
 		   intel_gpu_freq(rps, rps->min_freq_softlimit),
diff --git a/drivers/gpu/drm/i915/i915_sysfs.c b/drivers/gpu/drm/i915/i915_sysfs.c
index 65476909d1bf..5e0f9f217a5d 100644
--- a/drivers/gpu/drm/i915/i915_sysfs.c
+++ b/drivers/gpu/drm/i915/i915_sysfs.c
@@ -265,20 +265,10 @@ static ssize_t gt_act_freq_mhz_show(struct device *kdev,
 	u32 freq;
 
 	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
-
-	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
-		vlv_punit_get(dev_priv);
-		freq = vlv_punit_read(dev_priv, PUNIT_REG_GPU_FREQ_STS);
-		vlv_punit_put(dev_priv);
-
-		freq = (freq >> 8) & 0xff;
-	} else {
-		freq = intel_get_cagf(rps, I915_READ(GEN6_RPSTAT1));
-	}
-
+	freq = intel_rps_read_actual_frequency(rps);
 	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
 
-	return snprintf(buf, PAGE_SIZE, "%d\n", intel_gpu_freq(rps, freq));
+	return snprintf(buf, PAGE_SIZE, "%d\n", freq);
 }
 
 static ssize_t gt_cur_freq_mhz_show(struct device *kdev,
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
