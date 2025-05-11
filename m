Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 961D5AB2C5E
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 01:33:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B124610E17C;
	Sun, 11 May 2025 23:33:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from c664b1dc75d1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5367E10E177;
 Sun, 11 May 2025 23:33:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm=3A_Create_an_app?=
 =?utf-8?q?_info_option_for_wedge_events_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Andr=C3=A9_Almeida?= <andrealmeid@igalia.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sun, 11 May 2025 23:33:22 -0000
Message-ID: <174700640233.67150.17001819674990610733@c664b1dc75d1>
X-Patchwork-Hint: ignore
References: <20250511224745.834446-1-andrealmeid@igalia.com>
In-Reply-To: <20250511224745.834446-1-andrealmeid@igalia.com>
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

Series: drm: Create an app info option for wedge events (rev2)
URL   : https://patchwork.freedesktop.org/series/145638/
State : warning

== Summary ==

Error: dim checkpatch failed
7568e73c23ba drm: Create an app info option for wedge events
-:75: WARNING:STATIC_CONST_CHAR_ARRAY: char * array declaration might be better as static const
#75: FILE: drivers/gpu/drm/drm_drv.c:565:
+	char *envp[] = { event_string, pid_string, comm_string, NULL };

total: 0 errors, 1 warnings, 0 checks, 95 lines checked
4272f0db678a drm/doc: Add a section about "App information" for the wedge API
82b797c0be75 drm/amdgpu: Make use of drm_wedge_app_info


