Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA801B4AFA
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 18:55:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89DCB6E11C;
	Wed, 22 Apr 2020 16:55:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from Galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B0806E9F5
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Apr 2020 12:34:11 +0000 (UTC)
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tip-bot2@linutronix.de>)
 id 1jREK1-0008Bc-Ng; Wed, 22 Apr 2020 14:17:45 +0200
Received: from [127.0.1.1] (localhost [IPv6:::1])
 by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id ECFC61C0822;
 Wed, 22 Apr 2020 14:17:37 +0200 (CEST)
Date: Wed, 22 Apr 2020 12:17:37 -0000
From: "tip-bot2 for Alexey Budankov" <tip-bot2@linutronix.de>
To: linux-tip-commits@vger.kernel.org
In-Reply-To: <5590d543-82c6-490a-6544-08e6a5517db0@linux.intel.com>
References: <5590d543-82c6-490a-6544-08e6a5517db0@linux.intel.com>
MIME-Version: 1.0
Message-ID: <158755785749.28353.12235832076654598507.tip-bot2@tip-bot2>
X-Mailer: tip-git-log-daemon
Robot-ID: <tip-bot2.linutronix.de>
Robot-Unsubscribe: Contact <mailto:tglx@linutronix.de> to get blacklisted from
 these emails
Precedence: bulk
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-Mailman-Approved-At: Wed, 22 Apr 2020 16:53:58 +0000
Subject: [Intel-gfx] [tip: perf/core] capabilities: Introduce CAP_PERFMON to
 kernel and user space
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Reply-To: linux-kernel@vger.kernel.org
Cc: linux-man@vger.kernel.org, Song Liu <songliubraving@fb.com>,
 Andi Kleen <ak@linux.intel.com>, linux-doc@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Jiri Olsa <jolsa@redhat.com>,
 Igor Lubashev <ilubashe@akamai.com>, Alexei Starovoitov <ast@kernel.org>,
 James Morris <jamorris@linux.microsoft.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Arnaldo Carvalho de Melo <acme@redhat.com>, selinux@vger.kernel.org,
 linux-security-module@vger.kernel.org, Stephane Eranian <eranian@google.com>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Stephen Smalley <sds@tycho.nsa.gov>, intel-gfx@lists.freedesktop.org,
 x86 <x86@kernel.org>, "Serge E. Hallyn" <serge@hallyn.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The following commit has been merged into the perf/core branch of tip:

Commit-ID:     980737282232b752bb14dab96d77665c15889c36
Gitweb:        https://git.kernel.org/tip/980737282232b752bb14dab96d77665c15889c36
Author:        Alexey Budankov <alexey.budankov@linux.intel.com>
AuthorDate:    Thu, 02 Apr 2020 11:45:31 +03:00
Committer:     Arnaldo Carvalho de Melo <acme@redhat.com>
CommitterDate: Thu, 16 Apr 2020 12:19:06 -03:00

capabilities: Introduce CAP_PERFMON to kernel and user space

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
index ecce0f4..027d7e4 100644
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
index 272dc69..e58c963 100644
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
index 986f3ac..d233ab3 100644
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
 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
