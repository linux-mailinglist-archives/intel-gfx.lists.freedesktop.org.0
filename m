Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8AB3A7392
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 04:09:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1BD76E1BE;
	Tue, 15 Jun 2021 02:09:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A605F6E1CF;
 Tue, 15 Jun 2021 02:09:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9F890AA3D8;
 Tue, 15 Jun 2021 02:09:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Tue, 15 Jun 2021 02:09:07 -0000
Message-ID: <162372294765.8818.15713093276826275762@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210614194253.16192-1-matthew.brost@intel.com>
In-Reply-To: <20210614194253.16192-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIFVw?=
 =?utf-8?q?date_firmware_to_v62=2E0=2E0_=28rev3=29?=
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

Series: Update firmware to v62.0.0 (rev3)
URL   : https://patchwork.freedesktop.org/series/91106/
State : warning

== Summary ==

$ make htmldocs 2>&1 > /dev/null | grep i915
/home/cidrm/kernel/Documentation/gpu/i915:526: ./drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h:19: WARNING: Unknown target name: "ct buffer".
/home/cidrm/kernel/Documentation/gpu/i915:526: ./drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h:23: WARNING: Unknown target name: "ct buffer".
/home/cidrm/kernel/Documentation/gpu/i915:527: ./drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h:28: WARNING: Unknown target name: "ct buffer".
/home/cidrm/kernel/Documentation/gpu/i915:527: ./drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h:33: WARNING: Unknown target name: "ct buffer".
/home/cidrm/kernel/Documentation/gpu/i915:527: ./drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h:37: WARNING: Unknown target name: "ct buffer".
/home/cidrm/kernel/Documentation/gpu/i915:527: ./drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h:85: WARNING: Unknown target name: "ct buffer".


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
