Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E18B9349C78
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 23:45:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79CA06EE52;
	Thu, 25 Mar 2021 22:45:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1BFF76EE52;
 Thu, 25 Mar 2021 22:45:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 15747A00CC;
 Thu, 25 Mar 2021 22:45:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Thu, 25 Mar 2021 22:45:20 -0000
Message-ID: <161671232006.15545.116762956745949177@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210325180720.401410-1-matthew.d.roper@intel.com>
In-Reply-To: <20210325180720.401410-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?Introduce_Alder_Lake-P_=28rev2=29?=
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

Series: Introduce Alder Lake-P (rev2)
URL   : https://patchwork.freedesktop.org/series/87897/
State : warning

== Summary ==

$ dim sparse --fast origin/drm-tip
Sparse version: v0.6.2
Fast mode used, each commit won't be checked separately.
+drivers/gpu/drm/i915/display/intel_qp_tables.h:27:10: warning: symbol 'rc_range_minqp444_8bpc' was not declared. Should it be static?
+drivers/gpu/drm/i915/display/intel_qp_tables.h:28:10: warning: symbol 'rc_range_maxqp444_8bpc' was not declared. Should it be static?
+drivers/gpu/drm/i915/display/intel_qp_tables.h:29:10: warning: symbol 'rc_range_minqp444_10bpc' was not declared. Should it be static?
+drivers/gpu/drm/i915/display/intel_qp_tables.h:30:10: warning: symbol 'rc_range_maxqp444_10bpc' was not declared. Should it be static?
+drivers/gpu/drm/i915/display/intel_qp_tables.h:31:10: warning: symbol 'rc_range_minqp444_12bpc' was not declared. Should it be static?
+drivers/gpu/drm/i915/display/intel_qp_tables.h:32:10: warning: symbol 'rc_range_maxqp444_12bpc' was not declared. Should it be static?
+drivers/gpu/drm/i915/intel_wakeref.c:137:19: warning: context imbalance in 'wakeref_auto_timeout' - unexpected unlock


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
