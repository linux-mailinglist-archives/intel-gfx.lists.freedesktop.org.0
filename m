Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB01C4C9DE8
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Mar 2022 07:43:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B11010ECE7;
	Wed,  2 Mar 2022 06:43:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9F5D410ECCF;
 Wed,  2 Mar 2022 06:43:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9A5BCA47DF;
 Wed,  2 Mar 2022 06:43:31 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mastan Katragadda" <mastanx.katragadda@intel.com>
Date: Wed, 02 Mar 2022 06:43:31 -0000
Message-ID: <164620341159.11316.17506851090085054120@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220302060812.1504143-1-mastanx.katragadda@intel.com>
In-Reply-To: <20220302060812.1504143-1-mastanx.katragadda@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gem=3A_missing_boundary_check_in_vm=5Faccess_leads?=
 =?utf-8?q?_to_OOB_read/write?=
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

Series: drm/i915/gem: missing boundary check in vm_access leads to OOB read/write
URL   : https://patchwork.freedesktop.org/series/100932/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e4e38dbb19da drm/i915/gem: missing boundary check in vm_access leads to OOB read/write
-:9: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#9: 
A missing bounds check in vm_access() in drivers/gpu/drm/i915/gem/i915_gem_mman.c

total: 0 errors, 1 warnings, 0 checks, 10 lines checked


