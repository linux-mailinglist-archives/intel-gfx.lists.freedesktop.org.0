Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07DD8B2CBA1
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Aug 2025 20:06:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D654B10E1F4;
	Tue, 19 Aug 2025 18:06:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 311DF10E104;
 Tue, 19 Aug 2025 18:06:35 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_perf=3A_Rework_event=5Fin?=
 =?utf-8?q?it_checks_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Robin Murphy" <robin.murphy@arm.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Aug 2025 18:06:35 -0000
Message-ID: <175562679519.248501.11084133127555768372@1538d3639d33>
X-Patchwork-Hint: ignore
References: <cover.1755096883.git.robin.murphy@arm.com>
In-Reply-To: <cover.1755096883.git.robin.murphy@arm.com>
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

Series: perf: Rework event_init checks (rev2)
URL   : https://patchwork.freedesktop.org/series/152907/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/152907/revisions/2/mbox/ not applied
Applying: perf/arm-cmn: Fix event validation
Applying: perf/hisilicon: Fix group validation
Applying: perf/imx8_ddr: Fix group validation
Applying: perf/starfive: Fix group validation
Applying: iommu/vt-d: Fix perfmon group validation
Applying: ARM: l2x0: Fix group validation
Applying: ARM: imx: Fix MMDC PMU group validation
Applying: perf/arm_smmu_v3: Improve group validation
Applying: perf/qcom: Improve group validation
Applying: perf/arm-ni: Improve event validation
Applying: perf/arm-cci: Tidy up event validation
Applying: perf: Ignore event state for group validation
Applying: perf: Add helper for checking grouped events
Applying: perf: Clean up redundant group validation
Applying: perf: Simplify group validation
Applying: perf: Introduce positive capability for sampling
Applying: perf: Retire PERF_PMU_CAP_NO_INTERRUPT
Applying: perf: Introduce positive capability for raw events
Applying: perf: Garbage-collect event_init checks
error: sha1 information is lacking or useless (kernel/events/core.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0019 perf: Garbage-collect event_init checks
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


