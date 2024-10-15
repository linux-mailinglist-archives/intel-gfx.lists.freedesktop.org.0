Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D4F99F37E
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2024 18:56:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00ADA10E5C7;
	Tue, 15 Oct 2024 16:56:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 952B610E5CE;
 Tue, 15 Oct 2024 16:56:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_i915=3A_fix_DRM=5FI9?=
 =?utf-8?q?15=5FGVT=5FKVMGT_dependencies?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arnd Bergmann" <arnd@kernel.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2024 16:56:43 -0000
Message-ID: <172901140360.1269983.13197017263187659779@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241015152157.2955229-1-arnd@kernel.org>
In-Reply-To: <20241015152157.2955229-1-arnd@kernel.org>
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

Series: i915: fix DRM_I915_GVT_KVMGT dependencies
URL   : https://patchwork.freedesktop.org/series/140004/
State : warning

== Summary ==

Error: dim checkpatch failed
151e62507dae i915: fix DRM_I915_GVT_KVMGT dependencies
-:10: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#10: 
ERROR: modpost: "kvm_write_track_remove_gfn" [drivers/gpu/drm/i915/kvmgt.ko] undefined!

total: 0 errors, 1 warnings, 0 checks, 10 lines checked


