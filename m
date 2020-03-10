Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C269180AE6
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 22:52:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 637516E4F1;
	Tue, 10 Mar 2020 21:52:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94D576E41D
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 21:52:17 +0000 (UTC)
Received: from bell.riseup.net (unknown [10.0.1.178])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "*.riseup.net",
 Issuer "Sectigo RSA Domain Validation Secure Server CA" (not verified))
 by mx1.riseup.net (Postfix) with ESMTPS id 48cTDt53WnzFf56;
 Tue, 10 Mar 2020 14:46:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
 t=1583876782; bh=x6cAIXPzlQJJ1FEmSzTDuMyrZ/621gTCGn5sj7HNE1s=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QwxoGYVERuVlEo8SG/MbDnITXtREUzWy7I2n5RXmF7UIfMHf7SD+dvdH2ykAPxEY3
 DLEFB/5TCMruFongfqkFR5feO66QK5fJyR7tyI8+0R6m9jH52AsK3BvSDaQKKQ3qhQ
 Vk7TIOdu42D0cWoJf2oQbkxnseSePq89bI+b39rI=
X-Riseup-User-ID: 04B7BD3E2701800EA3348DB9A10F00A0673674E61C3EC69C9978ABF3E94FEBB4
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by bell.riseup.net (Postfix) with ESMTPSA id 48cTDt36kwzJsFM;
 Tue, 10 Mar 2020 14:46:22 -0700 (PDT)
From: Francisco Jerez <currojerez@riseup.net>
To: linux-pm@vger.kernel.org,
	intel-gfx@lists.freedesktop.org
Date: Tue, 10 Mar 2020 14:41:54 -0700
Message-Id: <20200310214203.26459-2-currojerez@riseup.net>
In-Reply-To: <20200310214203.26459-1-currojerez@riseup.net>
References: <20200310214203.26459-1-currojerez@riseup.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/10] PM: QoS: Add CPU_RESPONSE_FREQUENCY
 global PM QoS limit.
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, "Pandruvada,
 Srinivas" <srinivas.pandruvada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The purpose of this PM QoS limit is to give device drivers additional
control over the latency/energy efficiency trade-off made by the PM
subsystem (particularly the CPUFREQ governor).  It allows device
drivers to set a lower bound on the response latency of PM (defined as
the time it takes from wake-up to the CPU reaching a certain
steady-state level of performance [e.g. the nominal frequency] in
response to a step-function load).  It reports to PM the minimum
ramp-up latency considered of use to the application, and explicitly
requests PM to filter out oscillations faster than the specified
frequency.  It is somewhat complementary to the current
CPU_DMA_LATENCY PM QoS class which can be understood as specifying an
upper latency bound on the CPU wake-up time, instead of a lower bound
on the CPU frequency ramp-up time.

Note that even though this provides a latency constraint it's
represented as its reciprocal in Hz units for computational efficiency
(since it would take a 64-bit division to compute the number of cycles
elapsed from a time increment in nanoseconds and a time bound, while a
frequency can simply be multiplied with the time increment).

This implements a MAX constraint so that the strictest (highest
response frequency) request is honored.  This means that PM won't
provide any guarantee that frequencies greater than the specified
bound will be filtered, since that might be incompatible with the
constraints specified by another more latency-sensitive application (A
more fine-grained result could be achieved with a scheduling-based
interface).  The default value needs to be equal to zero (best effort)
for it to behave as identity of the MAX operation.

Signed-off-by: Francisco Jerez <currojerez@riseup.net>
---
 include/linux/pm_qos.h       |   9 +++
 include/trace/events/power.h |  33 ++++----
 kernel/power/qos.c           | 141 ++++++++++++++++++++++++++++++++++-
 3 files changed, 165 insertions(+), 18 deletions(-)

diff --git a/include/linux/pm_qos.h b/include/linux/pm_qos.h
index 4a69d4af3ff8..b522e2194c05 100644
--- a/include/linux/pm_qos.h
+++ b/include/linux/pm_qos.h
@@ -28,6 +28,7 @@ enum pm_qos_flags_status {
 #define PM_QOS_LATENCY_ANY_NS	((s64)PM_QOS_LATENCY_ANY * NSEC_PER_USEC)
 
 #define PM_QOS_CPU_LATENCY_DEFAULT_VALUE	(2000 * USEC_PER_SEC)
+#define PM_QOS_CPU_RESPONSE_FREQUENCY_DEFAULT_VALUE 0
 #define PM_QOS_RESUME_LATENCY_DEFAULT_VALUE	PM_QOS_LATENCY_ANY
 #define PM_QOS_RESUME_LATENCY_NO_CONSTRAINT	PM_QOS_LATENCY_ANY
 #define PM_QOS_RESUME_LATENCY_NO_CONSTRAINT_NS	PM_QOS_LATENCY_ANY_NS
@@ -162,6 +163,14 @@ static inline void cpu_latency_qos_update_request(struct pm_qos_request *req,
 static inline void cpu_latency_qos_remove_request(struct pm_qos_request *req) {}
 #endif
 
+s32 cpu_response_frequency_qos_limit(void);
+bool cpu_response_frequency_qos_request_active(struct pm_qos_request *req);
+void cpu_response_frequency_qos_add_request(struct pm_qos_request *req,
+					    s32 value);
+void cpu_response_frequency_qos_update_request(struct pm_qos_request *req,
+					       s32 new_value);
+void cpu_response_frequency_qos_remove_request(struct pm_qos_request *req);
+
 #ifdef CONFIG_PM
 enum pm_qos_flags_status __dev_pm_qos_flags(struct device *dev, s32 mask);
 enum pm_qos_flags_status dev_pm_qos_flags(struct device *dev, s32 mask);
diff --git a/include/trace/events/power.h b/include/trace/events/power.h
index af5018aa9517..7e4b52e8ca3a 100644
--- a/include/trace/events/power.h
+++ b/include/trace/events/power.h
@@ -359,45 +359,48 @@ DEFINE_EVENT(power_domain, power_domain_target,
 );
 
 /*
- * CPU latency QoS events used for global CPU latency QoS list updates
+ * CPU latency/response frequency QoS events used for global CPU PM
+ * QoS list updates.
  */
-DECLARE_EVENT_CLASS(cpu_latency_qos_request,
+DECLARE_EVENT_CLASS(pm_qos_request,
 
-	TP_PROTO(s32 value),
+	TP_PROTO(const char *name, s32 value),
 
-	TP_ARGS(value),
+	TP_ARGS(name, value),
 
 	TP_STRUCT__entry(
+		__string(name,			 name		)
 		__field( s32,                    value          )
 	),
 
 	TP_fast_assign(
+		__assign_str(name, name);
 		__entry->value = value;
 	),
 
-	TP_printk("CPU_DMA_LATENCY value=%d",
-		  __entry->value)
+	TP_printk("pm_qos_class=%s value=%d",
+		  __get_str(name), __entry->value)
 );
 
-DEFINE_EVENT(cpu_latency_qos_request, pm_qos_add_request,
+DEFINE_EVENT(pm_qos_request, pm_qos_add_request,
 
-	TP_PROTO(s32 value),
+	TP_PROTO(const char *name, s32 value),
 
-	TP_ARGS(value)
+	TP_ARGS(name, value)
 );
 
-DEFINE_EVENT(cpu_latency_qos_request, pm_qos_update_request,
+DEFINE_EVENT(pm_qos_request, pm_qos_update_request,
 
-	TP_PROTO(s32 value),
+	TP_PROTO(const char *name, s32 value),
 
-	TP_ARGS(value)
+	TP_ARGS(name, value)
 );
 
-DEFINE_EVENT(cpu_latency_qos_request, pm_qos_remove_request,
+DEFINE_EVENT(pm_qos_request, pm_qos_remove_request,
 
-	TP_PROTO(s32 value),
+	TP_PROTO(const char *name, s32 value),
 
-	TP_ARGS(value)
+	TP_ARGS(name, value)
 );
 
 /*
diff --git a/kernel/power/qos.c b/kernel/power/qos.c
index 32927682bcc4..018491fecaac 100644
--- a/kernel/power/qos.c
+++ b/kernel/power/qos.c
@@ -271,7 +271,7 @@ void cpu_latency_qos_add_request(struct pm_qos_request *req, s32 value)
 		return;
 	}
 
-	trace_pm_qos_add_request(value);
+	trace_pm_qos_add_request("CPU_DMA_LATENCY", value);
 
 	req->qos = &cpu_latency_constraints;
 	cpu_latency_qos_apply(req, PM_QOS_ADD_REQ, value);
@@ -297,7 +297,7 @@ void cpu_latency_qos_update_request(struct pm_qos_request *req, s32 new_value)
 		return;
 	}
 
-	trace_pm_qos_update_request(new_value);
+	trace_pm_qos_update_request("CPU_DMA_LATENCY", new_value);
 
 	if (new_value == req->node.prio)
 		return;
@@ -323,7 +323,7 @@ void cpu_latency_qos_remove_request(struct pm_qos_request *req)
 		return;
 	}
 
-	trace_pm_qos_remove_request(PM_QOS_DEFAULT_VALUE);
+	trace_pm_qos_remove_request("CPU_DMA_LATENCY", PM_QOS_DEFAULT_VALUE);
 
 	cpu_latency_qos_apply(req, PM_QOS_REMOVE_REQ, PM_QOS_DEFAULT_VALUE);
 	memset(req, 0, sizeof(*req));
@@ -424,6 +424,141 @@ static int __init cpu_latency_qos_init(void)
 late_initcall(cpu_latency_qos_init);
 #endif /* CONFIG_CPU_IDLE */
 
+/* Definitions related to the CPU response frequency QoS. */
+
+static struct pm_qos_constraints cpu_response_frequency_constraints = {
+	.list = PLIST_HEAD_INIT(cpu_response_frequency_constraints.list),
+	.target_value = PM_QOS_CPU_RESPONSE_FREQUENCY_DEFAULT_VALUE,
+	.default_value = PM_QOS_CPU_RESPONSE_FREQUENCY_DEFAULT_VALUE,
+	.no_constraint_value = PM_QOS_CPU_RESPONSE_FREQUENCY_DEFAULT_VALUE,
+	.type = PM_QOS_MAX,
+};
+
+/**
+ * cpu_response_frequency_qos_limit - Return current system-wide CPU
+ *				      response frequency QoS limit.
+ */
+s32 cpu_response_frequency_qos_limit(void)
+{
+	return pm_qos_read_value(&cpu_response_frequency_constraints);
+}
+EXPORT_SYMBOL_GPL(cpu_response_frequency_qos_limit);
+
+/**
+ * cpu_response_frequency_qos_request_active - Check the given PM QoS request.
+ * @req: PM QoS request to check.
+ *
+ * Return: 'true' if @req has been added to the CPU response frequency
+ * QoS list, 'false' otherwise.
+ */
+bool cpu_response_frequency_qos_request_active(struct pm_qos_request *req)
+{
+	return req->qos == &cpu_response_frequency_constraints;
+}
+EXPORT_SYMBOL_GPL(cpu_response_frequency_qos_request_active);
+
+static void cpu_response_frequency_qos_apply(struct pm_qos_request *req,
+					     enum pm_qos_req_action action,
+					     s32 value)
+{
+	int ret = pm_qos_update_target(req->qos, &req->node, action, value);
+
+	if (ret > 0)
+		wake_up_all_idle_cpus();
+}
+
+/**
+ * cpu_response_frequency_qos_add_request - Add new CPU response
+ *					    frequency QoS request.
+ * @req: Pointer to a preallocated handle.
+ * @value: Requested constraint value.
+ *
+ * Use @value to initialize the request handle pointed to by @req,
+ * insert it as a new entry to the CPU response frequency QoS list and
+ * recompute the effective QoS constraint for that list.
+ *
+ * Callers need to save the handle for later use in updates and removal of the
+ * QoS request represented by it.
+ */
+void cpu_response_frequency_qos_add_request(struct pm_qos_request *req,
+					    s32 value)
+{
+	if (!req)
+		return;
+
+	if (cpu_response_frequency_qos_request_active(req)) {
+		WARN(1, KERN_ERR "%s called for already added request\n",
+		     __func__);
+		return;
+	}
+
+	trace_pm_qos_add_request("CPU_RESPONSE_FREQUENCY", value);
+
+	req->qos = &cpu_response_frequency_constraints;
+	cpu_response_frequency_qos_apply(req, PM_QOS_ADD_REQ, value);
+}
+EXPORT_SYMBOL_GPL(cpu_response_frequency_qos_add_request);
+
+/**
+ * cpu_response_frequency_qos_update_request - Modify existing CPU
+ *					       response frequency QoS
+ *					       request.
+ * @req : QoS request to update.
+ * @new_value: New requested constraint value.
+ *
+ * Use @new_value to update the QoS request represented by @req in the
+ * CPU response frequency QoS list along with updating the effective
+ * constraint value for that list.
+ */
+void cpu_response_frequency_qos_update_request(struct pm_qos_request *req,
+					       s32 new_value)
+{
+	if (!req)
+		return;
+
+	if (!cpu_response_frequency_qos_request_active(req)) {
+		WARN(1, KERN_ERR "%s called for unknown object\n", __func__);
+		return;
+	}
+
+	trace_pm_qos_update_request("CPU_RESPONSE_FREQUENCY", new_value);
+
+	if (new_value == req->node.prio)
+		return;
+
+	cpu_response_frequency_qos_apply(req, PM_QOS_UPDATE_REQ, new_value);
+}
+EXPORT_SYMBOL_GPL(cpu_response_frequency_qos_update_request);
+
+/**
+ * cpu_response_frequency_qos_remove_request - Remove existing CPU
+ *					       response frequency QoS
+ *					       request.
+ * @req: QoS request to remove.
+ *
+ * Remove the CPU response frequency QoS request represented by @req
+ * from the CPU response frequency QoS list along with updating the
+ * effective constraint value for that list.
+ */
+void cpu_response_frequency_qos_remove_request(struct pm_qos_request *req)
+{
+	if (!req)
+		return;
+
+	if (!cpu_response_frequency_qos_request_active(req)) {
+		WARN(1, KERN_ERR "%s called for unknown object\n", __func__);
+		return;
+	}
+
+	trace_pm_qos_remove_request("CPU_RESPONSE_FREQUENCY",
+				    PM_QOS_DEFAULT_VALUE);
+
+	cpu_response_frequency_qos_apply(req, PM_QOS_REMOVE_REQ,
+					 PM_QOS_DEFAULT_VALUE);
+	memset(req, 0, sizeof(*req));
+}
+EXPORT_SYMBOL_GPL(cpu_response_frequency_qos_remove_request);
+
 /* Definitions related to the frequency QoS below. */
 
 /**
-- 
2.22.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
