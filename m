Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B553AABFBFF
	for <lists+intel-gfx@lfdr.de>; Wed, 21 May 2025 19:07:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A56E610E725;
	Wed, 21 May 2025 17:07:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0D7510E6F7;
 Wed, 21 May 2025 17:07:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm=3A_Create_a_task?=
 =?utf-8?q?_info_option_for_wedge_events?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Andr=C3=A9_Almeida?= <andrealmeid@igalia.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 21 May 2025 17:07:22 -0000
Message-ID: <174784724278.10286.14055722585938080984@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250521153323.935974-1-andrealmeid@igalia.com>
In-Reply-To: <20250521153323.935974-1-andrealmeid@igalia.com>
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

Series: drm: Create a task info option for wedge events
URL   : https://patchwork.freedesktop.org/series/149333/
State : warning

== Summary ==

Error: dim checkpatch failed
516f5c6ca277 drm: Create a task info option for wedge events
-:84: WARNING:STATIC_CONST_CHAR_ARRAY: char * array declaration might be better as static const
#84: FILE: drivers/gpu/drm/drm_drv.c:567:
+	char *envp[] = { event_string, NULL, NULL, NULL };

-:92: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'info->pid >= 0'
#92: FILE: drivers/gpu/drm/drm_drv.c:589:
+	if (info && ((info->comm && info->comm[0] != '\0')) && (info->pid >= 0)) {

total: 0 errors, 1 warnings, 1 checks, 101 lines checked
ad7858ac693b drm/doc: Add a section about "Task information" for the wedge API
a978bb34d00a drm/amdgpu: Make use of drm_wedge_task_info


