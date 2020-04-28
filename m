Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A731BB49F
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 05:28:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B3F76E241;
	Tue, 28 Apr 2020 03:28:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 956DA6E063
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 03:27:50 +0000 (UTC)
Received: from bell.riseup.net (unknown [10.0.1.178])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "*.riseup.net",
 Issuer "Sectigo RSA Domain Validation Secure Server CA" (not verified))
 by mx1.riseup.net (Postfix) with ESMTPS id 49B6Xk1vc0zFf49;
 Mon, 27 Apr 2020 20:27:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
 t=1588044470; bh=RH/do796eTTMLDlA2dnmG9KJk6dqyU8XVTS8Lbe7CB0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aiggrXmOuRpLzWcZ5mP0n0TEFSQsJerdG7iU8VMTMNRN1jLTcSu4TUglYAxWdF1mv
 vbxPu3/8HyHm1jNYgHXLRKKQZTfDysRgUG+el0p57s+6jCQWq735n8zoC7dw/OqCNX
 SIVYLJ0KMBotn35EgtswQm8Se4+kd7ecHfjmkbR0=
X-Riseup-User-ID: 13948F55CEB1BFCE690BCE75988A15BA6F25D031DD07FB06A6ED62E8AE82C5FB
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by bell.riseup.net (Postfix) with ESMTPSA id 49B6Xj6zK4zJqbv;
 Mon, 27 Apr 2020 20:27:49 -0700 (PDT)
From: Francisco Jerez <currojerez@riseup.net>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "Pandruvada\, Srinivas" <srinivas.pandruvada@intel.com>
Date: Mon, 27 Apr 2020 20:22:48 -0700
Message-Id: <20200428032258.2518-2-currojerez@riseup.net>
In-Reply-To: <20200428032258.2518-1-currojerez@riseup.net>
References: <20200428032258.2518-1-currojerez@riseup.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCHv2.99 01/11] PM: QoS: Add CPU_SCALING_RESPONSE
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
Cc: Peter Zijlstra <peterz@infradead.org>, intel-gfx@lists.freedesktop.org,
 chris.p.wilson@intel.com, linux-pm@vger.kernel.org
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

v2: Drop wake_up_all_idle_cpus() call from
    cpu_response_frequency_qos_apply() (Peter).
v3: Rename CPU_RESPONSE_FREQUENCY to CPU_SCALING_RESPONSE (Rafael).

Signed-off-by: Francisco Jerez <currojerez@riseup.net>
---
 include/linux/pm_qos.h       |   9 +++
 include/trace/events/power.h |  33 +++++----
 kernel/power/qos.c           | 131 ++++++++++++++++++++++++++++++++++-
 3 files changed, 155 insertions(+), 18 deletions(-)

diff --git a/include/linux/pm_qos.h b/include/linux/pm_qos.h
index 4a69d4af3ff8..9c1561ebbdc7 100644
--- a/include/linux/pm_qos.h
+++ b/include/linux/pm_qos.h
@@ -28,6 +28,7 @@ enum pm_qos_flags_status {
 #define PM_QOS_LATENCY_ANY_NS	((s64)PM_QOS_LATENCY_ANY * NSEC_PER_USEC)
 
 #define PM_QOS_CPU_LATENCY_DEFAULT_VALUE	(2000 * USEC_PER_SEC)
+#define PM_QOS_CPU_SCALING_RESPONSE_DEFAULT_VALUE 0
 #define PM_QOS_RESUME_LATENCY_DEFAULT_VALUE	PM_QOS_LATENCY_ANY
 #define PM_QOS_RESUME_LATENCY_NO_CONSTRAINT	PM_QOS_LATENCY_ANY
 #define PM_QOS_RESUME_LATENCY_NO_CONSTRAINT_NS	PM_QOS_LATENCY_ANY_NS
@@ -162,6 +163,14 @@ static inline void cpu_latency_qos_update_request(struct pm_qos_request *req,
 static inline void cpu_latency_qos_remove_request(struct pm_qos_request *req) {}
 #endif
 
+s32 cpu_scaling_response_qos_limit(void);
+bool cpu_scaling_response_qos_request_active(struct pm_qos_request *req);
+void cpu_scaling_response_qos_add_request(struct pm_qos_request *req,
+					  s32 value);
+void cpu_scaling_response_qos_update_request(struct pm_qos_request *req,
+					     s32 new_value);
+void cpu_scaling_response_qos_remove_request(struct pm_qos_request *req);
+
 #ifdef CONFIG_PM
 enum pm_qos_flags_status __dev_pm_qos_flags(struct device *dev, s32 mask);
 enum pm_qos_flags_status dev_pm_qos_flags(struct device *dev, s32 mask);
diff --git a/include/trace/events/power.h b/include/trace/events/power.h
index af5018aa9517..9065a3b084c4 100644
--- a/include/trace/events/power.h
+++ b/include/trace/events/power.h
@@ -359,45 +359,48 @@ DEFINE_EVENT(power_domain, power_domain_target,
 );
 
 /*
- * CPU latency QoS events used for global CPU latency QoS list updates
+ * CPU latency/scaling response frequency QoS events used for global
+ * CPU PM QoS list updates.
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
index db0bed2cae26..d080e71f4cd6 100644
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
@@ -424,6 +424,131 @@ static int __init cpu_latency_qos_init(void)
 late_initcall(cpu_latency_qos_init);
 #endif /* CONFIG_CPU_IDLE */
 
+/* Definitions related to the CPU scaling response frequency QoS. */
+
+static struct pm_qos_constraints cpu_scaling_response_constraints = {
+	.list = PLIST_HEAD_INIT(cpu_scaling_response_constraints.list),
+	.target_value = PM_QOS_CPU_SCALING_RESPONSE_DEFAULT_VALUE,
+	.default_value = PM_QOS_CPU_SCALING_RESPONSE_DEFAULT_VALUE,
+	.no_constraint_value = PM_QOS_CPU_SCALING_RESPONSE_DEFAULT_VALUE,
+	.type = PM_QOS_MAX,
+};
+
+/**
+ * cpu_scaling_response_qos_limit - Return current system-wide CPU
+ *				    scaling response frequency QoS limit.
+ */
+s32 cpu_scaling_response_qos_limit(void)
+{
+	return pm_qos_read_value(&cpu_scaling_response_constraints);
+}
+EXPORT_SYMBOL_GPL(cpu_scaling_response_qos_limit);
+
+/**
+ * cpu_scaling_response_qos_request_active - Check the given PM QoS request.
+ * @req: PM QoS request to check.
+ *
+ * Return: 'true' if @req has been added to the CPU response frequency
+ * QoS list, 'false' otherwise.
+ */
+bool cpu_scaling_response_qos_request_active(struct pm_qos_request *req)
+{
+	return req->qos == &cpu_scaling_response_constraints;
+}
+EXPORT_SYMBOL_GPL(cpu_scaling_response_qos_request_active);
+
+/**
+ * cpu_scaling_response_qos_add_request - Add new CPU scaling response
+ *					  frequency QoS request.
+ * @req: Pointer to a preallocated handle.
+ * @value: Requested constraint value.
+ *
+ * Use @value to initialize the request handle pointed to by @req,
+ * insert it as a new entry to the CPU scaling response frequency QoS
+ * list and recompute the effective QoS constraint for that list.
+ *
+ * Callers need to save the handle for later use in updates and removal of the
+ * QoS request represented by it.
+ */
+void cpu_scaling_response_qos_add_request(struct pm_qos_request *req,
+					  s32 value)
+{
+	if (!req)
+		return;
+
+	if (cpu_scaling_response_qos_request_active(req)) {
+		WARN(1, KERN_ERR "%s called for already added request\n",
+		     __func__);
+		return;
+	}
+
+	trace_pm_qos_add_request("CPU_SCALING_RESPONSE", value);
+
+	req->qos = &cpu_scaling_response_constraints;
+	pm_qos_update_target(req->qos, &req->node, PM_QOS_ADD_REQ, value);
+}
+EXPORT_SYMBOL_GPL(cpu_scaling_response_qos_add_request);
+
+/**
+ * cpu_scaling_response_qos_update_request - Modify existing CPU scaling
+ *					     response frequency QoS request.
+ * @req : QoS request to update.
+ * @new_value: New requested constraint value.
+ *
+ * Use @new_value to update the QoS request represented by @req in the
+ * CPU scaling response frequency QoS list along with updating the
+ * effective constraint value for that list.
+ */
+void cpu_scaling_response_qos_update_request(struct pm_qos_request *req,
+					     s32 new_value)
+{
+	if (!req)
+		return;
+
+	if (!cpu_scaling_response_qos_request_active(req)) {
+		WARN(1, KERN_ERR "%s called for unknown object\n", __func__);
+		return;
+	}
+
+	trace_pm_qos_update_request("CPU_SCALING_RESPONSE", new_value);
+
+	if (new_value == req->node.prio)
+		return;
+
+	pm_qos_update_target(req->qos, &req->node, PM_QOS_UPDATE_REQ,
+			     new_value);
+}
+EXPORT_SYMBOL_GPL(cpu_scaling_response_qos_update_request);
+
+/**
+ * cpu_scaling_response_qos_remove_request - Remove existing CPU
+ *					     scaling response
+ *					     frequency QoS request.
+ * @req: QoS request to remove.
+ *
+ * Remove the CPU scaling response frequency QoS request represented
+ * by @req from the CPU scaling response frequency QoS list along with
+ * updating the effective constraint value for that list.
+ */
+void cpu_scaling_response_qos_remove_request(struct pm_qos_request *req)
+{
+	if (!req)
+		return;
+
+	if (!cpu_scaling_response_qos_request_active(req)) {
+		WARN(1, KERN_ERR "%s called for unknown object\n", __func__);
+		return;
+	}
+
+	trace_pm_qos_remove_request("CPU_SCALING_RESPONSE",
+				    PM_QOS_DEFAULT_VALUE);
+
+	pm_qos_update_target(req->qos, &req->node, PM_QOS_REMOVE_REQ,
+			     PM_QOS_DEFAULT_VALUE);
+	memset(req, 0, sizeof(*req));
+}
+EXPORT_SYMBOL_GPL(cpu_scaling_response_qos_remove_request);
+
 /* Definitions related to the frequency QoS below. */
 
 /**
-- 
2.22.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
