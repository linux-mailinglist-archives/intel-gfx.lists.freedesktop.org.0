Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B1C9E890E
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2024 02:50:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B87E910E28B;
	Mon,  9 Dec 2024 01:50:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25E9A10E27D;
 Mon,  9 Dec 2024 01:50:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_linux-next=3A_build_failu?=
 =?utf-8?q?re_after_merge_of_the_drm-misc_tree?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stephen Rothwell" <sfr@canb.auug.org.au>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 09 Dec 2024 01:50:05 -0000
Message-ID: <173370900514.273805.9537684534481084549@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241209121717.2abe8026@canb.auug.org.au>
In-Reply-To: <20241209121717.2abe8026@canb.auug.org.au>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: linux-next: build failure after merge of the drm-misc tree
URL   : https://patchwork.freedesktop.org/series/142270/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CHK     kernel/kheaders_data.tar.xz
  HDRTEST drivers/gpu/drm/xe/generated/xe_wa_oob.h
  MODPOST Module.symvers
ERROR: modpost: module virtio-gpu uses symbol dma_buf_unpin from namespace DMA_BUF, but does not import it.
ERROR: modpost: module virtio-gpu uses symbol dma_buf_dynamic_attach from namespace DMA_BUF, but does not import it.
ERROR: modpost: module virtio-gpu uses symbol dma_buf_map_attachment from namespace DMA_BUF, but does not import it.
ERROR: modpost: module virtio-gpu uses symbol dma_buf_unmap_attachment from namespace DMA_BUF, but does not import it.
ERROR: modpost: module virtio-gpu uses symbol dma_buf_put from namespace DMA_BUF, but does not import it.
ERROR: modpost: module virtio-gpu uses symbol dma_buf_pin from namespace DMA_BUF, but does not import it.
ERROR: modpost: module virtio-gpu uses symbol dma_buf_detach from namespace DMA_BUF, but does not import it.
make[2]: *** [scripts/Makefile.modpost:145: Module.symvers] Error 1
make[1]: *** [/home/kbuild/kernel/Makefile:1939: modpost] Error 2
make: *** [Makefile:251: __sub-make] Error 2
Build failed, no error log produced


