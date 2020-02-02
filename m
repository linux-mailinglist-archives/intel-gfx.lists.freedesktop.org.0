Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E30414FE9D
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Feb 2020 18:25:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B64566EB17;
	Sun,  2 Feb 2020 17:25:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8C01A6E0CC;
 Sun,  2 Feb 2020 17:25:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 84084A0096;
 Sun,  2 Feb 2020 17:25:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 02 Feb 2020 17:25:21 -0000
Message-ID: <158066432151.17037.1223362855543114764@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200202171635.4039044-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200202171635.4039044-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/5=5D_drm=3A_Remove_PageReserved_m?=
 =?utf-8?q?anipulation_from_drm=5Fpci=5Falloc?=
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

Series: series starting with [1/5] drm: Remove PageReserved manipulation from drm_pci_alloc
URL   : https://patchwork.freedesktop.org/series/72883/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
0aa4536eb0f4 drm: Remove PageReserved manipulation from drm_pci_alloc
-:10: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit de09d31dd38a ("page-flags: define PG_reserved behavior on compound pages")'
#10: 
commit de09d31dd38a50fdce106c15abd68432eebbd014

-:22: ERROR:BAD_SIGN_OFF: Unrecognized email address: 'Taketo Kabe'
#22: 
Reported-by: Taketo Kabe

total: 2 errors, 0 warnings, 0 checks, 49 lines checked
5daedabb367b drm: Remove the dma_alloc_coherent wrapper for internal usage
35048571697e drm/r128: Wean off drm_pci_alloc
-:11: WARNING:OBSOLETE: drivers/gpu/drm/r128/ati_pcigart.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:14: WARNING:OBSOLETE: drivers/gpu/drm/r128/ati_pcigart.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:24: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#24: FILE: drivers/gpu/drm/r128/ati_pcigart.c:49:
+		dma_alloc_coherent(&dev->pdev->dev,
+				  gart_info->table_size,

-:25: CHECK:SPACING: spaces preferred around that '^' (ctx:ExV)
#25: FILE: drivers/gpu/drm/r128/ati_pcigart.c:50:
+				  ^gart_info->bus_addr,
 				  ^

-:102: WARNING:OBSOLETE: drivers/gpu/drm/r128/ati_pcigart.h is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:105: WARNING:OBSOLETE: drivers/gpu/drm/r128/ati_pcigart.h is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

total: 0 errors, 4 warnings, 2 checks, 88 lines checked
4a38cc58ae16 drm/i915: Wean off drm_pci_alloc/drm_pci_free
-:10: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit de09d31dd38a ("page-flags: define PG_reserved behavior on compound pages")'
#10: 
commit de09d31dd38a50fdce106c15abd68432eebbd014

-:23: ERROR:BAD_SIGN_OFF: Unrecognized email address: 'Taketo Kabe'
#23: 
Reported-by: Taketo Kabe

total: 2 errors, 0 warnings, 0 checks, 198 lines checked
c2cfb483f90b drm: Remove exports for drm_pci_alloc/drm_pci_free
-:51: CHECK:LINE_SPACING: Please don't use multiple blank lines
#51: FILE: drivers/gpu/drm/drm_legacy.h:215:
 
+

-:56: ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
#56: FILE: drivers/gpu/drm/drm_legacy.h:220:
+void drm_legacy_pci_free(struct drm_device *dev, struct drm_dma_handle * dmah);

-:98: ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
#98: FILE: drivers/gpu/drm/drm_pci.c:42:
+drm_legacy_pci_alloc(struct drm_device * dev, size_t size, size_t align)

-:117: ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
#117: FILE: drivers/gpu/drm/drm_pci.c:70:
+void drm_legacy_pci_free(struct drm_device * dev, drm_dma_handle_t * dmah)

-:117: ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
#117: FILE: drivers/gpu/drm/drm_pci.c:70:
+void drm_legacy_pci_free(struct drm_device * dev, drm_dma_handle_t * dmah)

total: 4 errors, 0 warnings, 1 checks, 133 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
