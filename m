Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A7A84AF37
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Feb 2024 08:51:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8F3E10E4F2;
	Tue,  6 Feb 2024 07:51:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D048E10E4E0;
 Tue,  6 Feb 2024 07:51:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?Force_full_modeset_for_eDP?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kahola" <mika.kahola@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 06 Feb 2024 07:51:42 -0000
Message-ID: <170720590285.1040826.4507815128699940845@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240206070937.197986-1-mika.kahola@intel.com>
In-Reply-To: <20240206070937.197986-1-mika.kahola@intel.com>
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

Series: drm/i915/display: Force full modeset for eDP
URL   : https://patchwork.freedesktop.org/series/129566/
State : warning

== Summary ==

Error: dim checkpatch failed
d687461f727e Revert "drm/i915/display: Skip C10 state verification in case of fastset"
8ef79285b9d3 drm/i915/display: Force full modeset for eDP
-:45: CHECK:LINE_SPACING: Please don't use multiple blank lines
#45: FILE: drivers/gpu/drm/i915/display/intel_dp.c:3341:
+
+

total: 0 errors, 0 warnings, 1 checks, 25 lines checked


