Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE8DD8AB717
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Apr 2024 00:09:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3318A10E1A0;
	Fri, 19 Apr 2024 22:09:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEBD510E0FC;
 Fri, 19 Apr 2024 22:09:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/gem=3A_Down?=
 =?utf-8?q?grade_stolen_lmem_setup_warning?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jonathan Cavitt" <jonathan.cavitt@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Apr 2024 22:09:13 -0000
Message-ID: <171356455391.1536851.3604137364793181308@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240419212643.3915745-1-jonathan.cavitt@intel.com>
In-Reply-To: <20240419212643.3915745-1-jonathan.cavitt@intel.com>
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

Series: drm/i915/gem: Downgrade stolen lmem setup warning
URL   : https://patchwork.freedesktop.org/series/132663/
State : warning

== Summary ==

Error: dim checkpatch failed
dc5960ccb539 drm/i915/gem: Downgrade stolen lmem setup warning
-:12: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#12: 
<6> [144.859887] pcieport 0000:4b:00.0: bridge window [mem 0xb1000000-0xb11fffff]

-:29: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'Fixes:', use 'Link:' or 'Closes:' instead
#29: 
Fixes: https://gitlab.freedesktop.org/drm/intel/-/issues/10833

total: 0 errors, 2 warnings, 0 checks, 13 lines checked


