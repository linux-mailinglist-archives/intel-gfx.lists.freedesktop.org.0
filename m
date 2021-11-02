Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E4C44285E
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Nov 2021 08:28:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 141716FBEA;
	Tue,  2 Nov 2021 07:28:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 02AFA6FBE9;
 Tue,  2 Nov 2021 07:28:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EE667A7525;
 Tue,  2 Nov 2021 07:28:32 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Christoph Hellwig" <hch@lst.de>
Date: Tue, 02 Nov 2021 07:28:32 -0000
Message-ID: <163583811297.15505.7042145942916466780@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211102070601.155501-1-hch@lst.de>
In-Reply-To: <20211102070601.155501-1-hch@lst.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B01/29=5D_drm/i915/gvt=3A_undef_TRACE=5FI?=
 =?utf-8?q?NCLUDE=5FFILE_in_i915=5Ftrace=2Eh?=
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

Series: series starting with [01/29] drm/i915/gvt: undef TRACE_INCLUDE_FILE in i915_trace.h
URL   : https://patchwork.freedesktop.org/series/96484/
State : failure

== Summary ==

Applying: drm/i915/gvt: undef TRACE_INCLUDE_FILE in i915_trace.h
Applying: drm/i915/gvt: integrate into the main Makefile
Applying: drm/i915/gvt: remove module refcounting in intel_gvt_{, un}register_hypervisor
Applying: drm/i915/gvt: remove enum hypervisor_type
Applying: drm/i915/gvt: rename intel_vgpu_ops to intel_vgpu_mdev_ops
Applying: drm/i915/gvt: move the gvt code into kvmgt.ko
error: sha1 information is lacking or useless (drivers/gpu/drm/i915/Makefile).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0006 drm/i915/gvt: move the gvt code into kvmgt.ko
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


