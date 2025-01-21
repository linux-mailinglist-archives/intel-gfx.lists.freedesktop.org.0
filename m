Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D78E6A185DA
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2025 20:54:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4024E10E63B;
	Tue, 21 Jan 2025 19:54:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B55810E22F;
 Tue, 21 Jan 2025 19:54:39 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Check_Scaler_and_DSC?=
 =?utf-8?q?_Prefill_Latency_Against_Vblank_=28rev8=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Jan 2025 19:54:39 -0000
Message-ID: <173748927943.2713586.1712030735402199562@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250120172209.188488-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20250120172209.188488-1-mitulkumar.ajitkumar.golani@intel.com>
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

Series: Check Scaler and DSC Prefill Latency Against Vblank (rev8)
URL   : https://patchwork.freedesktop.org/series/143160/
State : warning

== Summary ==

Error: dim checkpatch failed
53b3e6d5e22c drm/i915/scaler: Add and compute scaling factors
078da48f861c drm/i915/scaler: Use crtc_state to setup plane or pipe scaler
01aba90d45ee drm/i915/scaler: Refactor max_scale computation
bdb2a4d12036 drm/i915/scaler: Compute scaling factors for pipe scaler
-:24: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Closes: with a URL to the report
#24: 
Reported-by: kernel test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@linaro.org>

total: 0 errors, 1 warnings, 0 checks, 64 lines checked
fa12234a00a9 drm/i915/scaler: Limit pipe scaler downscaling factors for YUV420
6c0d1b53ad83 drm/i915/scaler: Check if vblank is sufficient for scaler
bfb38677cd2f drm/i915/dsc: Check if vblank is sufficient for dsc prefill


