Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D1473100B
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jun 2023 09:02:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE00210E48A;
	Thu, 15 Jun 2023 07:02:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 214AF10E488;
 Thu, 15 Jun 2023 07:02:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 18629AADEB;
 Thu, 15 Jun 2023 07:02:03 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
Date: Thu, 15 Jun 2023 07:02:03 -0000
Message-ID: <168681252307.10724.13418835345014712173@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230615063137.2219870-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20230615063137.2219870-1-mitulkumar.ajitkumar.golani@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Get_optimal_audio_frequency_and_channels_=28rev3=29?=
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

Series: Get optimal audio frequency and channels (rev3)
URL   : https://patchwork.freedesktop.org/series/119121/
State : warning

== Summary ==

Error: dim checkpatch failed
845b3a689a0d drm/i915/hdmi: Optimize source audio parameter handling
772de8265f74 drm/i915/display: Configure and initialize HDMI audio capabilities
8f06bef99aa6 drm/i915/display: Add wrapper to Compute SAD
-:55: ERROR:SPACING: space required before the open parenthesis '('
#55: FILE: drivers/gpu/drm/i915/display/intel_audio.c:822:
+	if(crtc_state->audio.max_frequency < 32000)

total: 1 errors, 0 warnings, 0 checks, 90 lines checked


