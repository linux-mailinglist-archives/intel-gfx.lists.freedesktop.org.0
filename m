Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6481D3CBF85
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Jul 2021 00:56:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CDC26E9EC;
	Fri, 16 Jul 2021 22:56:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D176F6E8C8;
 Fri, 16 Jul 2021 22:56:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C3B64A47DB;
 Fri, 16 Jul 2021 22:56:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Christoph Hellwig" <hch@lst.de>
Date: Fri, 16 Jul 2021 22:56:23 -0000
Message-ID: <162647618377.12779.6718204371044282287@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210716061634.2446357-1-hch@lst.de>
In-Reply-To: <20210716061634.2446357-1-hch@lst.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/7=5D_vgaarb=3A_remove_VGA=5FDEFAU?=
 =?utf-8?q?LT=5FDEVICE?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [1/7] vgaarb: remove VGA_DEFAULT_DEVICE
URL   : https://patchwork.freedesktop.org/series/92632/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
1354bf88b4ee vgaarb: remove VGA_DEFAULT_DEVICE
ddb8e5b71998 vgaarb: remove vga_conflicts
769ccfba8a01 vgaarb: move the kerneldoc for vga_set_legacy_decoding to vgaarb.c
b76ffe6766cb vgaarb: cleanup vgaarb.h
-:6: WARNING:TYPO_SPELLING: 'superflous' may be misspelled - perhaps 'superfluous'?
#6: 
Merge the different CONFIG_VGA_ARB ifdef blocks, remove superflous
                                                        ^^^^^^^^^^

-:59: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#59: FILE: include/linux/vgaarb.h:62:
+};
+static inline int vga_get(struct pci_dev *pdev, unsigned int rsrc,

-:60: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#60: FILE: include/linux/vgaarb.h:63:
+static inline int vga_get(struct pci_dev *pdev, unsigned int rsrc,
+		int interruptible)

-:64: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#64: FILE: include/linux/vgaarb.h:67:
+}
+static inline void vga_put(struct pci_dev *pdev, unsigned int rsrc)

-:67: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#67: FILE: include/linux/vgaarb.h:70:
+}
+static inline struct pci_dev *vga_default_device(void)

-:71: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#71: FILE: include/linux/vgaarb.h:74:
+}
+static inline void vga_set_default_device(struct pci_dev *pdev)

-:74: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#74: FILE: include/linux/vgaarb.h:77:
+}
+static inline int vga_remove_vgacon(struct pci_dev *pdev)

-:78: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#78: FILE: include/linux/vgaarb.h:81:
+}
+static inline int vga_client_register(struct pci_dev *pdev, void *cookie,

total: 0 errors, 1 warnings, 7 checks, 107 lines checked
6a95053499ae vgaarb: provide a vga_client_unregister wrapper
261e516ffd06 vgaarb: remove the unused irq_set_state argument to vga_client_register
c464965b3922 vgaarb: don't pass a cookie to vga_client_register
-:28: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#28: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1276:
+static unsigned int amdgpu_device_vga_set_decode(struct pci_dev *pdev,
+		bool state)

-:64: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#64: FILE: drivers/gpu/drm/i915/display/intel_vga.c:142:
 {
+

-:181: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#181: FILE: drivers/gpu/vga/vgaarb.c:864:
+int vga_client_register(struct pci_dev *pdev,
+		unsigned int (*set_decode)(struct pci_dev *pdev, bool decode))

-:249: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#249: FILE: include/linux/vgaarb.h:55:
+int vga_client_register(struct pci_dev *pdev,
+		unsigned int (*set_decode)(struct pci_dev *pdev, bool state));

-:259: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#259: FILE: include/linux/vgaarb.h:80:
 }
+static inline int vga_client_register(struct pci_dev *pdev,

-:260: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#260: FILE: include/linux/vgaarb.h:81:
+static inline int vga_client_register(struct pci_dev *pdev,
+		unsigned int (*set_decode)(struct pci_dev *pdev, bool state))

total: 0 errors, 0 warnings, 6 checks, 214 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
