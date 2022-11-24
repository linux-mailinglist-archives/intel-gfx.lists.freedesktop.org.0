Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7FB9636F0F
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Nov 2022 01:46:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CFC910E235;
	Thu, 24 Nov 2022 00:46:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8A75C10E235;
 Thu, 24 Nov 2022 00:46:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 76F6CA010C;
 Thu, 24 Nov 2022 00:46:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Thu, 24 Nov 2022 00:46:22 -0000
Message-ID: <166925078245.28650.10890766330623999853@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221123235417.1475709-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20221123235417.1475709-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIGRy?=
 =?utf-8?q?m/i915/huc=3A_always_init_the_delayed_load_fence?=
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

Series: drm/i915/huc: always init the delayed load fence
URL   : https://patchwork.freedesktop.org/series/111288/
State : warning

== Summary ==

Error: make htmldocs had i915 warnings
./drivers/gpu/drm/i915/gt/intel_gt_mcr.c:739: warning: expecting prototype for intel_gt_mcr_wait_for_reg_fw(). Prototype was for intel_gt_mcr_wait_for_reg() instead
./drivers/gpu/drm/i915/gt/intel_gt_mcr.c:739: warning: expecting prototype for intel_gt_mcr_wait_for_reg_fw(). Prototype was for intel_gt_mcr_wait_for_reg() instead


