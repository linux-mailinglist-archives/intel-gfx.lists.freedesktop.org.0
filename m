Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4482D970CCA
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 06:50:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 368A110E2A8;
	Mon,  9 Sep 2024 04:50:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CADF310E152;
 Mon,  9 Sep 2024 04:50:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm=3A_Ensure_Proper?=
 =?utf-8?q?_Unload/Reload_Order_of_MEI_Modules_for_i915/Xe_Driver?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bommu Krishnaiah" <krishnaiah.bommu@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 09 Sep 2024 04:50:25 -0000
Message-ID: <172585742580.972554.12887669874577016620@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240909040317.17108-1-krishnaiah.bommu@intel.com>
In-Reply-To: <20240909040317.17108-1-krishnaiah.bommu@intel.com>
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

Series: drm: Ensure Proper Unload/Reload Order of MEI Modules for i915/Xe Driver
URL   : https://patchwork.freedesktop.org/series/138379/
State : warning

== Summary ==

Error: dim checkpatch failed
01263a09e993 drm: Ensure Proper Unload/Reload Order of MEI Modules for i915/Xe Driver
-:7: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#7: 
This update addresses the unload/reload sequence of MEI modules in relation to

total: 0 errors, 1 warnings, 0 checks, 16 lines checked


