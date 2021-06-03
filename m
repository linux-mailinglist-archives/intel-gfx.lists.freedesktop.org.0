Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D610B39A5D6
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 18:37:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95CD66E237;
	Thu,  3 Jun 2021 16:37:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 85CA76E237;
 Thu,  3 Jun 2021 16:37:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7D997A47E9;
 Thu,  3 Jun 2021 16:37:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Ekstrand" <jason@jlekstrand.net>
Date: Thu, 03 Jun 2021 16:37:26 -0000
Message-ID: <162273824648.8032.6798693805442913942@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210603154027.594906-1-jason@jlekstrand.net>
In-Reply-To: <20210603154027.594906-1-jason@jlekstrand.net>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIGRy?=
 =?utf-8?q?m/i915=3A_Get_rid_of_fence_error_propagation_=28rev2=29?=
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

Series: drm/i915: Get rid of fence error propagation (rev2)
URL   : https://patchwork.freedesktop.org/series/90891/
State : warning

== Summary ==

$ make htmldocs 2>&1 > /dev/null | grep i915
./drivers/gpu/drm/i915/i915_cmd_parser.c:1436: warning: Excess function parameter 'jump_whitelist' description in 'intel_engine_cmd_parser'
./drivers/gpu/drm/i915/i915_cmd_parser.c:1436: warning: Excess function parameter 'shadow_map' description in 'intel_engine_cmd_parser'
./drivers/gpu/drm/i915/i915_cmd_parser.c:1436: warning: Excess function parameter 'batch_map' description in 'intel_engine_cmd_parser'
./drivers/gpu/drm/i915/i915_cmd_parser.c:1436: warning: Function parameter or member 'trampoline' not described in 'intel_engine_cmd_parser'
./drivers/gpu/drm/i915/i915_cmd_parser.c:1436: warning: Excess function parameter 'jump_whitelist' description in 'intel_engine_cmd_parser'
./drivers/gpu/drm/i915/i915_cmd_parser.c:1436: warning: Excess function parameter 'shadow_map' description in 'intel_engine_cmd_parser'
./drivers/gpu/drm/i915/i915_cmd_parser.c:1436: warning: Excess function parameter 'batch_map' description in 'intel_engine_cmd_parser'


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
