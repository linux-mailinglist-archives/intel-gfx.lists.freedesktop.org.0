Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 383F598B30C
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2024 06:31:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A221C10E5CE;
	Tue,  1 Oct 2024 04:31:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 668FF10E5CC;
 Tue,  1 Oct 2024 04:31:41 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm=3A_Add_check_for_enco?=
 =?utf-8?q?der_in_intel=5Fget=5Fcrtc=5Fnew=5Fencoder=28=29_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "George Rurikov" <g.ryurikov@securitycode.ru>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 01 Oct 2024 04:31:41 -0000
Message-ID: <172775710141.1140252.9951007732540782739@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240924104722.1049588-1-g.ryurikov@securitycode.ru>
In-Reply-To: <20240924104722.1049588-1-g.ryurikov@securitycode.ru>
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

Series: drm: Add check for encoder in intel_get_crtc_new_encoder() (rev3)
URL   : https://patchwork.freedesktop.org/series/139314/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/139314/revisions/3/mbox/ not applied
Applying: drm: Add check for encoder in intel_get_crtc_new_encoder()
error: patch failed: drivers/gpu/drm/i915/display/intel_display.c:819
error: drivers/gpu/drm/i915/display/intel_display.c: patch does not apply
error: Did you hand edit your patch?
It does not apply to blobs recorded in its index.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_display.c
Patch failed at 0001 drm: Add check for encoder in intel_get_crtc_new_encoder()
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


