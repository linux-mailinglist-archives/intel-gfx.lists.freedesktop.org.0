Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF9A6D0554
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Mar 2023 14:53:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18A7110E2EB;
	Thu, 30 Mar 2023 12:53:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 616D810E2EB;
 Thu, 30 Mar 2023 12:53:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 575FEAADDD;
 Thu, 30 Mar 2023 12:53:01 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "David E. Box" <david.e.box@linux.intel.com>
Date: Thu, 30 Mar 2023 12:53:01 -0000
Message-ID: <168018078135.18826.13496256990505074795@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230330121135.15414-1-swati2.sharma@intel.com>
In-Reply-To: <20230330121135.15414-1-swati2.sharma@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_PCI/ASPM=3A_pci=5Fenable=5Flink=5Fstate=3A_Add_argument_to_?=
 =?utf-8?q?acquire_bus_lock_=28rev2=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: PCI/ASPM: pci_enable_link_state: Add argument to acquire bus lock (rev2)
URL   : https://patchwork.freedesktop.org/series/115466/
State : warning

== Summary ==

Error: dim checkpatch failed
d7993ebfc2b0 PCI/ASPM: pci_enable_link_state: Add argument to acquire bus lock
-:19: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'References:', use 'Link:' instead
#19: 
References: https://gitlab.freedesktop.org/drm/intel/-/issues/8316

-:20: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Link: with a URL to the report
#20: 
Reported-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Fixes: de82f60f9c86 ("PCI/ASPM: Add pci_enable_link_state()")

total: 0 errors, 2 warnings, 0 checks, 53 lines checked


