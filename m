Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id fPl1CQyNeGlprAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 11:01:48 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B0192556
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 11:01:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0238A10E511;
	Tue, 27 Jan 2026 10:01:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MV6VUfWK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3B7F10E50F;
 Tue, 27 Jan 2026 10:01:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769508102; x=1801044102;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IRXkFMtiKGyTthEWl9T6gKkE7CSjUV2a/O97fUMJO+U=;
 b=MV6VUfWK0wvFkmvHKZhDSSC94lj+LJJ8Cfkv4p8ni/Mv+xORwRNNgtBp
 f8mxPgqT/Xf8UIONcOCicbL9mHPGONrMGsnrI8hLwGXpWYTr9NT8JYyOS
 eRpJ4l9aEEDCtxx1pFMKZDpn3y+JgUFbInML4mso+NtH1C+ncnm5RWu1m
 /CBejn3II6z3K9g4IM14jxJ+iMSsJEoh8zHBiujDidlYymeUvpd7HRh8B
 LoZFLa7FsYhklAx9aozHRr7eELi4EqoM/085c8w14ehgWx9n1Nkpevdtv
 syJ56bcPsfIIsS7C2kAk6jS+f7KD/lvKgTdNz2WAMjNX1gXWRuIRsDIEo w==;
X-CSE-ConnectionGUID: s6HyKnkITdSKAc1025rXuQ==
X-CSE-MsgGUID: MfK8+OZkRgun93/ggzO8XQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="70602213"
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="70602213"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 02:01:42 -0800
X-CSE-ConnectionGUID: ijPFAQXLR3y7gwJ7yED0ig==
X-CSE-MsgGUID: KhhmLFphQNajVOdQdZLuSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="207732502"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.153])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 02:01:38 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t v2 1/6] lib/igt_device_scan: Don't print fake link
 bandwidth attributes
Date: Tue, 27 Jan 2026 10:54:18 +0100
Message-ID: <20260127100123.114516-9-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260127100123.114516-8-janusz.krzysztofik@linux.intel.com>
References: <20260127100123.114516-8-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[janusz.krzysztofik@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim]
X-Rspamd-Queue-Id: C9B0192556
X-Rspamd-Action: no action

Users of Intel discrete graphics adapters are confused with fake
information on PCIe link bandwidth (speed and size) of their GPU devices
reported by tools like lspci or lsgpu.  That fake information is
unfortunately provided by hardware, Linux PCI subsystem just exposes it
untouched to upper layers, including userspace via sysfs, and userspace
tools just report those fake values.

While we can't do much about the kernel side or general purpose userspace
tools like lspci, we can try to address the issue with our lsgpu utility.

Correct link bandwidth attributes of a discrete GPU card can be obtained
from the kernel by looking not at the PCI device of the GPU itself, only
at a PCIe upstream port of the card's PCI bridge.  For integrity with
content of the sysfs and with output from the other tools, we are not
going to replace the fake information with that from the bridge upstream
port, only show that port and its attributes themselves while listing
devices.

Since the tool uses our udev based igt_device_scan library for identifying
GPU devices and printing their properties and attributes, modifications
that we need apply to that library.

As a first step, exclude the fake data from being printed.

v2: Keep dump_props_and_attrs() generic: hand over decision on omitting
    link attributes to the caller, and implementation of the check to a
    helper (Sebastian).

Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10753
Cc: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/igt_device_scan.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/lib/igt_device_scan.c b/lib/igt_device_scan.c
index abd8ca209e..7ae64375b5 100644
--- a/lib/igt_device_scan.c
+++ b/lib/igt_device_scan.c
@@ -602,7 +602,15 @@ static inline void _print_key_value(const char *k, const char *v)
 	printf("%-32s: %s\n", k, v);
 }
 
-static void dump_props_and_attrs(const struct igt_device *dev)
+static bool is_link_attr(const char *name)
+{
+	return !strcmp(name, "max_link_speed") ||
+	       !strcmp(name, "max_link_width") ||
+	       !strcmp(name, "current_link_speed") ||
+	       !strcmp(name, "current_link_width");
+}
+
+static void dump_props_and_attrs(const struct igt_device *dev, bool omit_link)
 {
 	struct igt_map_entry *entry;
 
@@ -613,6 +621,10 @@ static void dump_props_and_attrs(const struct igt_device *dev)
 
 	printf("\n[attributes]\n");
 	igt_map_foreach(dev->attrs_map, entry) {
+		/* omit link bandwidth attributes if requested */
+		if (omit_link && is_link_attr(entry->key))
+			continue;
+
 		_print_key_value((char *)entry->key, (char *)entry->data);
 	}
 	printf("\n");
@@ -1366,7 +1378,8 @@ igt_devs_print_detail(struct igt_list_head *view,
 			_print_key_value("codename", dev->codename);
 		}
 
-		dump_props_and_attrs(dev);
+		/* omit fake link bandwidth attributes if a discrete card */
+		dump_props_and_attrs(dev, dev->dev_type == DEVTYPE_DISCRETE);
 	}
 }
 
-- 
2.52.0

