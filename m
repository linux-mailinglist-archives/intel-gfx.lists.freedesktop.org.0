Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB25A1B128E
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 19:06:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E3416E81D;
	Mon, 20 Apr 2020 17:06:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A14F96E532
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2020 11:53:48 +0000 (UTC)
Received: from quaco.ghostprotocols.net (unknown [179.97.37.151])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 310DA2223D;
 Mon, 20 Apr 2020 11:53:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587383628;
 bh=bsha3xY0b0htxjAC74+rhyzPRn3pa6BRck29iTQylnQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=phe5YIfAUSL+rC4oWdSjzR1wUGQeb+JO0mjIAlFKvoq2kzj3RlwuD1fKv8mQogW4y
 +doqKnCO6GGPJakj9XBL13XfK7Gyfr1ef+W5b7V0D7a4ywOc3bMGUSYNMd7doIuJas
 KZSMookixBtF0laYrWAn6GknQWOCTrtIHGPG1pl0=
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Date: Mon, 20 Apr 2020 08:52:21 -0300
Message-Id: <20200420115316.18781-6-acme@kernel.org>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200420115316.18781-1-acme@kernel.org>
References: <20200420115316.18781-1-acme@kernel.org>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 20 Apr 2020 17:06:14 +0000
Subject: [Intel-gfx] [PATCH 05/60] capabilities: Introduce CAP_PERFMON to
 kernel and user space
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
Cc: linux-man@vger.kernel.org, Song Liu <songliubraving@fb.com>,
 linux-doc@vger.kernel.org, Clark Williams <williams@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>, Stephane Eranian <eranian@google.com>,
 Jiri Olsa <jolsa@redhat.com>, Andi Kleen <ak@linux.intel.com>,
 Igor Lubashev <ilubashe@akamai.com>,
 James Morris <jamorris@linux.microsoft.com>,
 Peter Zijlstra <peterz@infradead.org>, Stephen Smalley <sds@tycho.nsa.gov>,
 "Serge E . Hallyn" <serge@hallyn.com>, selinux@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Arnaldo Carvalho de Melo <acme@redhat.com>,
 Namhyung Kim <namhyung@kernel.org>, linux-kernel@vger.kernel.org,
 linux-perf-users@vger.kernel.org, linux-security-module@vger.kernel.org,
 Jiri Olsa <jolsa@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Alexey Budankov <alexey.budankov@linux.intel.com>

Introduce the CAP_PERFMON capability designed to secure system
performance monitoring and observability operations so that CAP_PERFMON
can assist CAP_SYS_ADMIN capability in its governing role for
performance monitoring and observability subsystems.

CAP_PERFMON hardens system security and integrity during performance
monitoring and observability operations by decreasing attack surface that
is available to a CAP_SYS_ADMIN privileged process [2]. Providing the access
to system performance monitoring and observability operations under CAP_PERFMON
capability singly, without the rest of CAP_SYS_ADMIN credentials, excludes
chances to misuse the credentials and makes the operation more secure.

Thus, CAP_PERFMON implements the principle of least privilege for
performance monitoring and observability operations (POSIX IEEE 1003.1e:
2.2.2.39 principle of least privilege: A security design principle that
  states that a process or program be granted only those privileges
(e.g., capabilities) necessary to accomplish its legitimate function,
and only for the time that such privileges are actually required)

CAP_PERFMON meets the demand to secure system performance monitoring and
observability operations for adoption in security sensitive, restricted,
multiuser production environments (e.g. HPC clusters, cloud and virtual compute
environments), where root or CAP_SYS_ADMIN credentials are not available to
mass users of a system, and securely unblocks applicability and scalability
of system performance monitoring and observability operations beyond root
and CAP_SYS_ADMIN use cases.

CAP_PERFMON takes over CAP_SYS_ADMIN credentials related to system performance
monitoring and observability operations and balances amount of CAP_SYS_ADMIN
credentials following the recommendations in the capabilities man page [1]
for CAP_SYS_ADMIN: "Note: this capability is overloaded; see Notes to kernel
developers, below." For backward compatibility reasons access to system
performance monitoring and observability subsystems of the kernel remains
open for CAP_SYS_ADMIN privileged processes but CAP_SYS_ADMIN capability
usage for secure system performance monitoring and observability operations
is discouraged with respect to the designed CAP_PERFMON capability.

Although the software running under CAP_PERFMON can not ensure avoidance
of related hardware issues, the software can still mitigate these issues
following the official hardware issues mitigation procedure [2]. The bugs
in the software itself can be fixed following the standard kernel development
process [3] to maintain and harden security of system performance monitoring
and observability operations.

[1] http://man7.org/linux/man-pages/man7/capabilities.7.html
[2] https://www.kernel.org/doc/html/latest/process/embargoed-hardware-issues.html
[3] https://www.kernel.org/doc/html/latest/admin-guide/security-bugs.html

Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
Acked-by: James Morris <jamorris@linux.microsoft.com>
Acked-by: Serge E. Hallyn <serge@hallyn.com>
Acked-by: Song Liu <songliubraving@fb.com>
Acked-by: Stephen Smalley <sds@tycho.nsa.gov>
Tested-by: Arnaldo Carvalho de Melo <acme@redhat.com>
Cc: Alexei Starovoitov <ast@kernel.org>
Cc: Andi Kleen <ak@linux.intel.com>
Cc: Igor Lubashev <ilubashe@akamai.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Stephane Eranian <eranian@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: intel-gfx@lists.freedesktop.org
Cc: linux-doc@vger.kernel.org
Cc: linux-man@vger.kernel.org
Cc: linux-security-module@vger.kernel.org
Cc: selinux@vger.kernel.org
Link: http://lore.kernel.org/lkml/5590d543-82c6-490a-6544-08e6a5517db0@linux.intel.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 include/linux/capability.h          | 4 ++++
 include/uapi/linux/capability.h     | 8 +++++++-
 security/selinux/include/classmap.h | 4 ++--
 3 files changed, 13 insertions(+), 3 deletions(-)

diff --git a/include/linux/capability.h b/include/linux/capability.h
index ecce0f43c73a..027d7e4a853b 100644
--- a/include/linux/capability.h
+++ b/include/linux/capability.h
@@ -251,6 +251,10 @@ extern bool privileged_wrt_inode_uidgid(struct user_namespace *ns, const struct
 extern bool capable_wrt_inode_uidgid(const struct inode *inode, int cap);
 extern bool file_ns_capable(const struct file *file, struct user_namespace *ns, int cap);
 extern bool ptracer_capable(struct task_struct *tsk, struct user_namespace *ns);
+static inline bool perfmon_capable(void)
+{
+	return capable(CAP_PERFMON) || capable(CAP_SYS_ADMIN);
+}
 
 /* audit system wants to get cap info from files as well */
 extern int get_vfs_caps_from_disk(const struct dentry *dentry, struct cpu_vfs_cap_data *cpu_caps);
diff --git a/include/uapi/linux/capability.h b/include/uapi/linux/capability.h
index 272dc69fa080..e58c9636741b 100644
--- a/include/uapi/linux/capability.h
+++ b/include/uapi/linux/capability.h
@@ -367,8 +367,14 @@ struct vfs_ns_cap_data {
 
 #define CAP_AUDIT_READ		37
 
+/*
+ * Allow system performance and observability privileged operations
+ * using perf_events, i915_perf and other kernel subsystems
+ */
+
+#define CAP_PERFMON		38
 
-#define CAP_LAST_CAP         CAP_AUDIT_READ
+#define CAP_LAST_CAP         CAP_PERFMON
 
 #define cap_valid(x) ((x) >= 0 && (x) <= CAP_LAST_CAP)
 
diff --git a/security/selinux/include/classmap.h b/security/selinux/include/classmap.h
index 986f3ac14282..d233ab3f1533 100644
--- a/security/selinux/include/classmap.h
+++ b/security/selinux/include/classmap.h
@@ -27,9 +27,9 @@
 	    "audit_control", "setfcap"
 
 #define COMMON_CAP2_PERMS  "mac_override", "mac_admin", "syslog", \
-		"wake_alarm", "block_suspend", "audit_read"
+		"wake_alarm", "block_suspend", "audit_read", "perfmon"
 
-#if CAP_LAST_CAP > CAP_AUDIT_READ
+#if CAP_LAST_CAP > CAP_PERFMON
 #error New capability defined, please update COMMON_CAP2_PERMS.
 #endif
 
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
