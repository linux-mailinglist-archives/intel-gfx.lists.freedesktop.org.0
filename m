Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 800F09E33C0
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 07:59:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B13A110EC16;
	Wed,  4 Dec 2024 06:59:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D121E10EC0C;
 Wed,  4 Dec 2024 06:59:40 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_nvme-pci=3A_don=27t_?=
 =?utf-8?q?use_dma=5Falloc=5Fnoncontiguous_with_0_merge_boundary?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chaitanya Kumar Borah" <chaitanya.kumar.borah@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 04 Dec 2024 06:59:40 -0000
Message-ID: <173329558085.2333631.15185626224573235534@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241204060601.1813514-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20241204060601.1813514-1-chaitanya.kumar.borah@intel.com>
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

Series: nvme-pci: don't use dma_alloc_noncontiguous with 0 merge boundary
URL   : https://patchwork.freedesktop.org/series/142083/
State : warning

== Summary ==

Error: dim checkpatch failed
423a0fbddb5e nvme-pci: don't use dma_alloc_noncontiguous with 0 merge boundary
-:15: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Closes: with a URL to the report
#15: 
Reported-by: Leon Romanovsky <leon@kernel.org>
Reported-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

-:16: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Closes: with a URL to the report
#16: 
Reported-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Signed-off-by: Christoph Hellwig <hch@lst.de>

total: 0 errors, 2 warnings, 0 checks, 15 lines checked


