Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45DF74BFA2F
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 15:05:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B14EC10E7D1;
	Tue, 22 Feb 2022 14:05:07 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2EAC10E62F
 for <Intel-gfx@lists.freedesktop.org>; Tue, 22 Feb 2022 14:05:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645538705; x=1677074705;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oSnVd92M3+raXhcQIPQaihIQq3lxwapnni7+ZYzlDGM=;
 b=TM429IGiaJxY7lk85yoNX73LCm219cz0kyG+M8zpNqx0elpLqnC2rhx2
 6BAqrbR7P+OBeyQhnwppi5j/xZahgQKd/GcrgACsN7CeIcEu/7j0xJF3g
 O9FpP8CBEiXs9f77wuR2dq6Q8xj4hLB/di7IjDGDdG+QNbSIm7phZRS1B
 Lvvq/wEmZ6pTRcvHBa8cD3qZO3SWqsxTC/HCWkCUPXgTWUF1QB9bMMLH7
 7jUVtvLK5elo8FTaWJrjAa9CAc/JLJVbB86e97yKjXCA7KlV8p4t5M/pS
 scQtRl5VQpVjgvQe0uPVpNFjOYGLAYnbC8KRsFGQmMqtQtDkWGs7JyEW3 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10265"; a="338142769"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="338142769"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 06:04:42 -0800
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="532237377"
Received: from sjgillin-mobl.ger.corp.intel.com (HELO tursulin-mobl2.home)
 ([10.213.218.63])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 06:04:40 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue, 22 Feb 2022 14:04:20 +0000
Message-Id: <20220222140422.1121163-7-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220222140422.1121163-1-tvrtko.ursulin@linux.intel.com>
References: <20220222140422.1121163-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/8] drm: Document fdinfo format specification
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
Cc: Rob Clark <robdclark@chromium.org>, Daniel Stone <daniel@fooishbar.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Chris Healy <cphealy@gmail.com>, David M Nieto <David.Nieto@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Proposal to standardise the fdinfo text format as optionally output by DRM
drivers.

Idea is that a simple but, well defined, spec will enable generic
userspace tools to be written while at the same time avoiding a more heavy
handed approach of adding a mid-layer to DRM.

i915 implements a subset of the spec, everything apart from the memory
stats currently, and a matching intel_gpu_top tool exists.

Open is to see if AMD can migrate to using the proposed GPU utilisation
key-value pairs, or if they are not workable to see whether to go
vendor specific, or if a standardised  alternative can be found which is
workable for both drivers.

Same for the memory utilisation key-value pairs proposal.

v2:
 * Update for removal of name and pid.

v3:
 * 'Drm-driver' tag will be obtained from struct drm_driver.name. (Daniel)

v4:
 * Added drm-engine-capacity- tag.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: David M Nieto <David.Nieto@amd.com>
Cc: Christian König <christian.koenig@amd.com>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Daniel Stone <daniel@fooishbar.org>
Cc: Chris Healy <cphealy@gmail.com>
Acked-by: Christian König <christian.koenig@amd.com>
Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com> # v3
---
 Documentation/gpu/drm-usage-stats.rst | 106 ++++++++++++++++++++++++++
 Documentation/gpu/index.rst           |   1 +
 2 files changed, 107 insertions(+)
 create mode 100644 Documentation/gpu/drm-usage-stats.rst

diff --git a/Documentation/gpu/drm-usage-stats.rst b/Documentation/gpu/drm-usage-stats.rst
new file mode 100644
index 000000000000..b8cc28f4da6f
--- /dev/null
+++ b/Documentation/gpu/drm-usage-stats.rst
@@ -0,0 +1,106 @@
+.. _drm-client-usage-stats:
+
+======================
+DRM client usage stats
+======================
+
+DRM drivers can choose to export partly standardised text output via the
+`fops->show_fdinfo()` as part of the driver specific file operations registered
+in the `struct drm_driver` object registered with the DRM core.
+
+One purpose of this output is to enable writing as generic as practicaly
+feasible `top(1)` like userspace monitoring tools.
+
+Given the differences between various DRM drivers the specification of the
+output is split between common and driver specific parts. Having said that,
+wherever possible effort should still be made to standardise as much as
+possible.
+
+File format specification
+=========================
+
+- File shall contain one key value pair per one line of text.
+- Colon character (`:`) must be used to delimit keys and values.
+- All keys shall be prefixed with `drm-`.
+- Whitespace between the delimiter and first non-whitespace character shall be
+  ignored when parsing.
+- Neither keys or values are allowed to contain whitespace characters.
+- Numerical key value pairs can end with optional unit string.
+- Data type of the value is fixed as defined in the specification.
+
+Key types
+---------
+
+1. Mandatory, fully standardised.
+2. Optional, fully standardised.
+3. Driver specific.
+
+Data types
+----------
+
+- <uint> - Unsigned integer without defining the maximum value.
+- <str> - String excluding any above defined reserved characters or whitespace.
+
+Mandatory fully standardised keys
+---------------------------------
+
+- drm-driver: <str>
+
+String shall contain the name this driver registered as via the respective
+`struct drm_driver` data structure.
+
+Optional fully standardised keys
+--------------------------------
+
+- drm-pdev: <aaaa:bb.cc.d>
+
+For PCI devices this should contain the PCI slot address of the device in
+question.
+
+- drm-client-id: <uint>
+
+Unique value relating to the open DRM file descriptor used to distinguish
+duplicated and shared file descriptors. Conceptually the value should map 1:1
+to the in kernel representation of `struct drm_file` instances.
+
+Uniqueness of the value shall be either globally unique, or unique within the
+scope of each device, in which case `drm-pdev` shall be present as well.
+
+Userspace should make sure to not double account any usage statistics by using
+the above described criteria in order to associate data to individual clients.
+
+- drm-engine-<str>: <uint> ns
+
+GPUs usually contain multiple execution engines. Each shall be given a stable
+and unique name (str), with possible values documented in the driver specific
+documentation.
+
+Value shall be in specified time units which the respective GPU engine spent
+busy executing workloads belonging to this client.
+
+Values are not required to be constantly monotonic if it makes the driver
+implementation easier, but are required to catch up with the previously reported
+larger value within a reasonable period. Upon observing a value lower than what
+was previously read, userspace is expected to stay with that larger previous
+value until a monotonic update is seen.
+
+- drm-engine-capacity-<str>: <uint>
+
+Engine identifier string must be the same as the one specified in the
+drm-engine-<str> tag and shall contain a greater than zero number in case the
+exported engine corresponds to a group of identical hardware engines.
+
+In the absence of this tag parser shall assume capacity of one. Zero capacity
+is not allowed.
+
+- drm-memory-<str>: <uint> [KiB|MiB]
+
+Each possible memory type which can be used to store buffer objects by the
+GPU in question shall be given a stable and unique name to be returned as the
+string here.
+
+Value shall reflect the amount of storage currently consumed by the buffer
+object belong to this client, in the respective memory region.
+
+Default unit shall be bytes with optional unit specifiers of 'KiB' or 'MiB'
+indicating kibi- or mebi-bytes.
diff --git a/Documentation/gpu/index.rst b/Documentation/gpu/index.rst
index b9c1214d8f23..b99dede9a5b1 100644
--- a/Documentation/gpu/index.rst
+++ b/Documentation/gpu/index.rst
@@ -10,6 +10,7 @@ Linux GPU Driver Developer's Guide
    drm-kms
    drm-kms-helpers
    drm-uapi
+   drm-usage-stats
    driver-uapi
    drm-client
    drivers
-- 
2.32.0

