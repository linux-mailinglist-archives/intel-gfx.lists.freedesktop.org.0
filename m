Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6750A81C62
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 07:50:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 356BA10E7D6;
	Wed,  9 Apr 2025 05:50:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from e6b6f09ec485 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEC4F10E7D6;
 Wed,  9 Apr 2025 05:50:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Revert_=22libata=3A_?=
 =?utf-8?q?Downgrade_unsupported_feature_warnings_to_notifications=22_=28rev?=
 =?utf-8?q?2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 09 Apr 2025 05:50:42 -0000
Message-ID: <174417784270.50883.11103148112136399109@e6b6f09ec485>
X-Patchwork-Hint: ignore
References: <20250408194331.11046-1-lucas.demarchi@intel.com>
In-Reply-To: <20250408194331.11046-1-lucas.demarchi@intel.com>
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

Series: Revert "libata: Downgrade unsupported feature warnings to notifications" (rev2)
URL   : https://patchwork.freedesktop.org/series/147429/
State : warning

== Summary ==

Error: dim checkpatch failed
e453541810f2 Revert "libata: Downgrade unsupported feature warnings to notifications"
-:23: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#23: FILE: drivers/ata/libata-core.c:2182:
+			ata_dev_warn(dev,
 				"ATA Identify Device Log not supported\n");

-:52: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#52: FILE: drivers/ata/libata-core.c:2941:
+				ata_dev_warn(dev,
 	"supports DRM functions and may not be fully accessible\n");

-:60: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#60: FILE: drivers/ata/libata-core.c:2948:
+				ata_dev_warn(dev,
 	"supports DRM functions and may not be fully accessible\n");

total: 0 errors, 0 warnings, 3 checks, 52 lines checked


