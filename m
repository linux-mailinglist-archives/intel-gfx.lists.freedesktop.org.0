Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5F48C58FF
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2024 17:44:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFC2C10EACE;
	Tue, 14 May 2024 15:44:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BF6010E401;
 Tue, 14 May 2024 15:44:56 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_series_starting_with?=
 =?utf-8?q?_=5BCI=2C1/2=5D_drm/i915=3A_Shadow_default_engine_context_image_i?=
 =?utf-8?q?n_the_context?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tursulin@igalia.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 14 May 2024 15:44:56 -0000
Message-ID: <171570149656.2115148.5756931902908019994@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240514145939.87427-1-tursulin@igalia.com>
In-Reply-To: <20240514145939.87427-1-tursulin@igalia.com>
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

Series: series starting with [CI,1/2] drm/i915: Shadow default engine context image in the context
URL   : https://patchwork.freedesktop.org/series/133616/
State : warning

== Summary ==

Error: dim checkpatch failed
2d1ba3494c3f drm/i915: Shadow default engine context image in the context
317913603034 drm/i915: Support replaying GPU hangs with captured context image
-:348: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#348: FILE: drivers/gpu/drm/i915/i915_params.h:67:
+	param(bool, enable_debug_only_api, false, IS_ENABLED(CONFIG_DRM_I915_REPLAY_GPU_HANGS_API) ? 0400 : 0)

total: 0 errors, 1 warnings, 0 checks, 291 lines checked


