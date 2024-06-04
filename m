Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D328FB89F
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 18:16:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADFBF10E541;
	Tue,  4 Jun 2024 16:16:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OqfKOnhY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BFC710E541
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 16:16:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717517772; x=1749053772;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mbZp8Uy821v3zSkUn5ZtePcTev1Q0aJRhku/89XoznU=;
 b=OqfKOnhYHnH5jVVpXYxiILNhqE6yox9FUeU26Ym6ZP/F1uvyNUacqlXz
 eZZPG7W8vAp8WN3eC2nVDIISaRFyh5M6j9efy5Y7VN+INl3rM1SCIBQk9
 XDLISw6sH3rRYc3TbP71qWKvduSY3PHZXsshgL8XkHL8jjEL9WS7BBCfM
 lC9ndf3xM35/rr8Bc+wcuW1PKeyCjVEQmkbRQ/G1rB/QLJu0YRJt7madF
 AHTfOCJ2qjRQsqsXULvypl/ILO2pEvquoMxFFBOTHndaIQRg1+LeyLv3Y
 06MZ7Kp+XnpeNOiwBRkgia4n+Lx1uucoELjavkycBUd6tgY9LEILjq0Ok w==;
X-CSE-ConnectionGUID: 8Sncc1b0Q+6VAg9InYrrWw==
X-CSE-MsgGUID: T0GJd8E/SKqabMKQlYFBYw==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="17015869"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="17015869"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 09:16:12 -0700
X-CSE-ConnectionGUID: Etf0KJCuQ7exUiA9KcaBnw==
X-CSE-MsgGUID: Zyt32kNERI29Cq/oPReR0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="68438328"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 09:16:11 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [core-for-CI PATCH] thunderbolt: Add Kconfig option to disable PCIe
 tunneling
Date: Tue,  4 Jun 2024 19:16:18 +0300
Message-ID: <20240604161618.1958674-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
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

From: Mika Westerberg <mika.westerberg@linux.intel.com>

In typical cases PCIe tunneling is needed to make the devices fully
usable for the host system. However, it poses a security issue because
they can also use DMA to access the host memory. We already have two
ways of preventing this, one an IOMMU that is enabled on recent systems
by default and the second is the "authorized" attribute under each
connected device that needs to be written by userspace before a PCIe
tunnel is created. This option adds one more by adding a Kconfig option,
which is enabled by default, that can be used to make kernel binaries
where PCIe tunneling is completely disabled.

Signed-off-by: Mika Westerberg <mika.westerberg@linux.intel.com>
References: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_134314v1/bat-mtlp-9/boot0.txt
References: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11261
Signed-off-by: Imre Deak <imre.deak@intel.com>
---

The issue at the first References: link is a known false-positive lockdep issue
in the TBT/PCIe subsystem. After discussion with the TBT maintainer (Mika
Westerberg), the easiest solution for the iGFX CI is to disable the PCIe TBT
tunneling functionality which leads to the issue, as

- It's not an important feature iGFX CI needs to test.
- There is no available solution (patch) yet to solve the lockdep issue.

The feature could be re-enabled if needed once the lockdep issue is
solved upstream. This patch will be merged upstream, until that sending it
for core-for-CI.

 drivers/thunderbolt/Kconfig  | 18 ++++++++++++++++++
 drivers/thunderbolt/tb.c     |  2 +-
 drivers/thunderbolt/tb.h     |  9 +++++++++
 drivers/thunderbolt/tunnel.c |  8 ++++----
 drivers/thunderbolt/usb4.c   |  2 +-
 5 files changed, 33 insertions(+), 6 deletions(-)

diff --git a/drivers/thunderbolt/Kconfig b/drivers/thunderbolt/Kconfig
index 448fd2ec8f6e2..facf2e684c022 100644
--- a/drivers/thunderbolt/Kconfig
+++ b/drivers/thunderbolt/Kconfig
@@ -18,6 +18,24 @@ menuconfig USB4
 
 if USB4
 
+config USB4_PCIE_TUNNELING
+	bool "Allow PCI Express tunneling over USB4 fabric"
+	depends on PCI
+	default y
+	help
+	  USB4 and Thunderbolt devices typically include PCIe switch
+	  with a number of PCIe endpoints such as USB host controllers,
+	  GPUs and network adapters. These are made available to the
+	  host system through PCIe tunneling. These can use DMA and
+	  therefore have access to the host memory which is typically
+	  guarded by an IOMMU. This option allows disabling PCIe
+	  tunneling completely.
+
+	  For devices to be usable it is recommended to say Y here.
+
+	  Note this only works with systems that use Software Based
+	  Connection Manager (this is most USB4 hosts).
+
 config USB4_DEBUGFS_WRITE
 	bool "Enable write by debugfs to configuration spaces (DANGEROUS)"
 	help
diff --git a/drivers/thunderbolt/tb.c b/drivers/thunderbolt/tb.c
index 10e719dd837ce..7d71ff3f82c13 100644
--- a/drivers/thunderbolt/tb.c
+++ b/drivers/thunderbolt/tb.c
@@ -3181,7 +3181,7 @@ struct tb *tb_probe(struct tb_nhi *nhi)
 	if (!tb)
 		return NULL;
 
-	if (tb_acpi_may_tunnel_pcie())
+	if (tb_may_tunnel_pcie())
 		tb->security_level = TB_SECURITY_USER;
 	else
 		tb->security_level = TB_SECURITY_NOPCIE;
diff --git a/drivers/thunderbolt/tb.h b/drivers/thunderbolt/tb.h
index 18aae4ccaed59..22fad8a9679ae 100644
--- a/drivers/thunderbolt/tb.h
+++ b/drivers/thunderbolt/tb.h
@@ -1436,6 +1436,15 @@ static inline int tb_acpi_power_on_retimers(struct tb_port *port) { return 0; }
 static inline int tb_acpi_power_off_retimers(struct tb_port *port) { return 0; }
 #endif
 
+static inline bool tb_may_tunnel_pcie(void)
+{
+#ifdef CONFIG_USB4_PCIE_TUNNELING
+	return tb_acpi_may_tunnel_pcie();
+#else
+	return false;
+#endif
+}
+
 #ifdef CONFIG_DEBUG_FS
 void tb_debugfs_init(void);
 void tb_debugfs_exit(void);
diff --git a/drivers/thunderbolt/tunnel.c b/drivers/thunderbolt/tunnel.c
index 41cf6378ad251..7c8397c135ba9 100644
--- a/drivers/thunderbolt/tunnel.c
+++ b/drivers/thunderbolt/tunnel.c
@@ -101,7 +101,7 @@ static unsigned int tb_available_credits(const struct tb_port *port,
 	size_t ndp;
 
 	usb3 = tb_acpi_may_tunnel_usb3() ? sw->max_usb3_credits : 0;
-	pcie = tb_acpi_may_tunnel_pcie() ? sw->max_pcie_credits : 0;
+	pcie = tb_may_tunnel_pcie() ? sw->max_pcie_credits : 0;
 
 	if (tb_acpi_is_xdomain_allowed()) {
 		spare = min_not_zero(sw->max_dma_credits, dma_credits);
@@ -426,7 +426,7 @@ bool tb_tunnel_reserved_pci(struct tb_port *port, int *reserved_up,
 	if (WARN_ON_ONCE(!port->remote))
 		return false;
 
-	if (!tb_acpi_may_tunnel_pcie())
+	if (!tb_may_tunnel_pcie())
 		return false;
 
 	if (tb_port_get_link_generation(port) < 4)
@@ -1510,7 +1510,7 @@ static unsigned int tb_dma_available_credits(const struct tb_port *port)
 	int credits;
 
 	credits = tb_available_credits(port, NULL);
-	if (tb_acpi_may_tunnel_pcie())
+	if (tb_may_tunnel_pcie())
 		credits -= sw->max_pcie_credits;
 	credits -= port->dma_credits;
 
@@ -1821,7 +1821,7 @@ static int tb_usb3_consumed_bandwidth(struct tb_tunnel *tunnel,
 		int *consumed_up, int *consumed_down)
 {
 	struct tb_port *port = tb_upstream_port(tunnel->dst_port->sw);
-	int pcie_weight = tb_acpi_may_tunnel_pcie() ? TB_PCI_WEIGHT : 0;
+	int pcie_weight = tb_may_tunnel_pcie() ? TB_PCI_WEIGHT : 0;
 
 	/*
 	 * PCIe tunneling, if enabled, affects the USB3 bandwidth so
diff --git a/drivers/thunderbolt/usb4.c b/drivers/thunderbolt/usb4.c
index de480bf2a53de..cacc7bec19eb4 100644
--- a/drivers/thunderbolt/usb4.c
+++ b/drivers/thunderbolt/usb4.c
@@ -282,7 +282,7 @@ int usb4_switch_setup(struct tb_switch *sw)
 	 * Only enable PCIe tunneling if the parent router supports it
 	 * and it is not disabled.
 	 */
-	if (tb_acpi_may_tunnel_pcie() &&
+	if (tb_may_tunnel_pcie() &&
 	    tb_switch_find_port(parent, TB_TYPE_PCIE_DOWN)) {
 		val |= ROUTER_CS_5_PTO;
 		/*
-- 
2.43.3

