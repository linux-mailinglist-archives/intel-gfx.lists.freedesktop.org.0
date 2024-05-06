Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 494DD8BD661
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 22:41:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 589CA10E378;
	Mon,  6 May 2024 20:41:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E613810E378;
 Mon,  6 May 2024 20:41:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Introducing_I915=5FF?=
 =?utf-8?q?ORMAT=5FMOD=5F4=5FTILED=5FXE2=5FCCS_Modifier_for_Xe2?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Juha-Pekka Heikkila" <juhapekka.heikkila@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 06 May 2024 20:41:25 -0000
Message-ID: <171502808593.1941770.12814541713479128802@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240506185238.364539-1-juhapekka.heikkila@gmail.com>
In-Reply-To: <20240506185238.364539-1-juhapekka.heikkila@gmail.com>
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

Series: Introducing I915_FORMAT_MOD_4_TILED_XE2_CCS Modifier for Xe2
URL   : https://patchwork.freedesktop.org/series/133253/
State : warning

== Summary ==

Error: dim checkpatch failed
e953532ce0c8 drm/fourcc: define Intel Xe2 related tile4 ccs modifier
4ef786f4f7f8 drm/xe/display: allow creation of case I915_FORMAT_MOD_4_TILED_XE2_CCS type framebuffer
-:7: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#7: 
Add I915_FORMAT_MOD_4_TILED_XE2_CCS to possible created tiling for new framebuffer

total: 0 errors, 1 warnings, 0 checks, 7 lines checked
76d92001b0e9 drm/i915/display: allow creation of case I915_FORMAT_MOD_4_TILED_XE2_CCS type framebuffer
-:7: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#7: 
Add I915_FORMAT_MOD_4_TILED_XE2_CCS to possible created tiling for new framebuffer

total: 0 errors, 1 warnings, 0 checks, 57 lines checked


