Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 663EA19BDC1
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 10:45:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C035A6EA0C;
	Thu,  2 Apr 2020 08:45:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB02F6EA0C
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 08:45:38 +0000 (UTC)
IronPort-SDR: lV6/5A368dCrwzcwOnIx1P1BuC1CYc9cQrLK1JjOKqmF4sLnHJw8FluhCQck5AWmP5QcNpd3yV
 cgqdXY1AsJAA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 01:45:37 -0700
IronPort-SDR: MymKeAEXMtI4cGrvDtyJS3oy7l5fgtIwtPVceurrcTJQfIe14IJglDtbi1hu9SdYJ8Ydhw1Oq7
 mxOEqdNgJ4Fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,335,1580803200"; d="scan'208";a="242464844"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga008.fm.intel.com with ESMTP; 02 Apr 2020 01:45:37 -0700
Received: from [10.249.226.252] (abudanko-mobl.ccr.corp.intel.com
 [10.249.226.252])
 by linux.intel.com (Postfix) with ESMTP id 4C361580781;
 Thu,  2 Apr 2020 01:45:32 -0700 (PDT)
From: Alexey Budankov <alexey.budankov@linux.intel.com>
To: Peter Zijlstra <peterz@infradead.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 James Morris <jmorris@namei.org>, Namhyung Kim <namhyung@kernel.org>
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
Organization: Intel Corp.
Message-ID: <5590d543-82c6-490a-6544-08e6a5517db0@linux.intel.com>
Date: Thu, 2 Apr 2020 11:45:31 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
Content-Language: en-US
Subject: [Intel-gfx] [PATCH v8 01/12] capabilities: introduce CAP_PERFMON to
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
 Andi Kleen <ak@linux.intel.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Igor Lubashev <ilubashe@akamai.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Stephane Eranian <eranian@google.com>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Jiri Olsa <jolsa@redhat.com>, Serge Hallyn <serge@hallyn.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Introduce CAP_PERFMON capability designed to secure system performance
monitoring and observability operations so that CAP_PERFMON would assist
CAP_SYS_ADMIN capability in its governing role for performance monitoring
and observability subsystems.

CAP_PERFMON hardens system security and integrity during performance
monitoring and observability operations by decreasing attack surface that
is available to a CAP_SYS_ADMIN privileged process [2]. Providing the access
to system performance monitoring and observability operations under CAP_PERFMON
capability singly, without the rest of CAP_SYS_ADMIN credentials, excludes
chances to misuse the credentials and makes the operation more secure.
Thus, CAP_PERFMON implements the principal of least privilege for performance
monitoring and observability operations (POSIX IEEE 1003.1e: 2.2.2.39 principle
of least privilege: A security design principle that states that a process
or program be granted only those privileges (e.g., capabilities) necessary
to accomplish its legitimate function, and only for the time that such
privileges are actually required)

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
Acked-by: Song Liu <songliubraving@fb.com>
Acked-by: Stephen Smalley <sds@tycho.nsa.gov>
Acked-by: James Morris <jamorris@linux.microsoft.com>
Acked-by: Serge E. Hallyn <serge@hallyn.com>
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
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
