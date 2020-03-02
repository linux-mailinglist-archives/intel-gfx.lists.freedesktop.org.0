Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 979EB175D81
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 15:47:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 956196E2AF;
	Mon,  2 Mar 2020 14:47:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D70576E2AF;
 Mon,  2 Mar 2020 14:47:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CEF27A011B;
 Mon,  2 Mar 2020 14:47:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pankaj Bharadiya" <pankaj.laxminarayan.bharadiya@intel.com>
Date: Mon, 02 Mar 2020 14:47:55 -0000
Message-ID: <158316047582.30643.4883696934143736791@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200302125649.61443-1-pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20200302125649.61443-1-pankaj.laxminarayan.bharadiya@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIGRy?=
 =?utf-8?q?m=3A_drm=5Ffb=5Fhelper_cleanup=2E?=
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

Series: drm: drm_fb_helper cleanup.
URL   : https://patchwork.freedesktop.org/series/74140/
State : warning

== Summary ==

$ make htmldocs 2>&1 > /dev/null | grep i915
Error: Cannot open file ./drivers/gpu/drm/i915/intel_csr.c
Error: Cannot open file ./drivers/gpu/drm/i915/intel_csr.c
Error: Cannot open file ./drivers/gpu/drm/i915/intel_csr.c
./drivers/gpu/drm/i915/i915_vma.h:1: warning: 'Virtual Memory Address' not found
./drivers/gpu/drm/i915/i915_gem_gtt.c:1: warning: 'Global GTT views' not found
WARNING: kernel-doc './scripts/kernel-doc -rst -enable-lineno -function csr support for dmc ./drivers/gpu/drm/i915/intel_csr.c' failed with return code 1
WARNING: kernel-doc './scripts/kernel-doc -rst -enable-lineno -internal ./drivers/gpu/drm/i915/intel_csr.c' failed with return code 2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
