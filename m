Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15AAA9ADF19
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 10:30:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A010510E8D1;
	Thu, 24 Oct 2024 08:30:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4E8010E8D1;
 Thu, 24 Oct 2024 08:30:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_series_starting_with?=
 =?utf-8?q?_=5Btopic/core-for-CI=2C1/2=5D_Revert_=22HAX_suspend=3A_Disable_S?=
 =?utf-8?q?3/S4_for_fi-bdw-samus=22?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Oct 2024 08:30:00 -0000
Message-ID: <172975860086.1325996.11239555445621952761@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241023211834.3370346-1-lucas.demarchi@intel.com>
In-Reply-To: <20241023211834.3370346-1-lucas.demarchi@intel.com>
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

Series: series starting with [topic/core-for-CI,1/2] Revert "HAX suspend: Disable S3/S4 for fi-bdw-samus"
URL   : https://patchwork.freedesktop.org/series/140396/
State : warning

== Summary ==

Error: dim checkpatch failed
1fdee4eff8f7 Revert "HAX suspend: Disable S3/S4 for fi-bdw-samus"
0bd4276ec72a Revert "HAX sound: Disable probing snd_hda with DG1"
-:65: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#65: FILE: sound/pci/hda/hda_intel.c:2147:
+				dev_err_probe(card->dev, err,
+					     "HSW/BDW HD-audio HDMI/DP requires binding with gfx driver\n");

total: 0 errors, 0 warnings, 1 checks, 44 lines checked


