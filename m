Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7731A107C6
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2025 14:27:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24A3210E230;
	Tue, 14 Jan 2025 13:27:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95C9910E2C4;
 Tue, 14 Jan 2025 13:27:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/gt=3A_Ensur?=
 =?utf-8?q?e_irqs=27_status_does_not_change_with_spin=5Funlock_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Krzysztof Karas" <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jan 2025 13:27:45 -0000
Message-ID: <173686126560.3598920.11582283322996010181@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <5fnb3l7s5hr3yfehkpvf4jgcunm6qclxagvssdobvfxbwtjiyc@jzko7kb7svud>
In-Reply-To: <5fnb3l7s5hr3yfehkpvf4jgcunm6qclxagvssdobvfxbwtjiyc@jzko7kb7svud>
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

Series: drm/i915/gt: Ensure irqs' status does not change with spin_unlock (rev2)
URL   : https://patchwork.freedesktop.org/series/143393/
State : warning

== Summary ==

Error: dim checkpatch failed
97d0de85cb78 drm/i915/gt: Ensure irqs' status does not change with spin_unlock
-:19: WARNING:BAD_FIXES_TAG: Please use correct Fixes: style 'Fixes: <12 chars of sha1> ("<title line>")' - ie: 'Fixes: 2f2cc53b5fe7 ("drm/i915/guc: Close deregister-context race against CT-loss")'
#19: 
Fixes: 2f2cc53b5fe7 ("drm/i915/guc: Close deregister-context race

total: 0 errors, 1 warnings, 0 checks, 76 lines checked


