Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54BD88408E8
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jan 2024 15:49:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62081112973;
	Mon, 29 Jan 2024 14:49:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C40C8112971;
 Mon, 29 Jan 2024 14:49:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_use_READ?=
 =?utf-8?q?=5FONCE=28=29_to_read_vma-=3Eiomap_in_concurrent_environment?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "linke li" <lilinke99@qq.com>
Date: Mon, 29 Jan 2024 14:49:27 -0000
Message-ID: <170653976780.806401.2181139039686780293@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <tencent_1A51A82501181FD23618C68685EBC405990A@qq.com>
In-Reply-To: <tencent_1A51A82501181FD23618C68685EBC405990A@qq.com>
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

Series: drm/i915: use READ_ONCE() to read vma->iomap in concurrent environment
URL   : https://patchwork.freedesktop.org/series/129271/
State : warning

== Summary ==

Error: dim checkpatch failed
ba938f823490 drm/i915: use READ_ONCE() to read vma->iomap in concurrent environment
-:21: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#21: 
There is patch similar to this. https://github.com/torvalds/linux/commit/c1c0ce31b2420d5c173228a2132a492ede03d81f

total: 0 errors, 1 warnings, 0 checks, 8 lines checked


