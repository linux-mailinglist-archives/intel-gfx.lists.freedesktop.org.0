Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D01EA99DF79
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2024 09:44:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 734A410E1C0;
	Tue, 15 Oct 2024 07:44:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4186D10E0DB;
 Tue, 15 Oct 2024 07:44:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Remove_u?=
 =?utf-8?q?nused_underrun_irq/reporting_bits_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sai Teja Pottumuttu" <sai.teja.pottumuttu@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2024 07:44:26 -0000
Message-ID: <172897826626.1268153.18056191847040886029@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241015065903.3469512-1-sai.teja.pottumuttu@intel.com>
In-Reply-To: <20241015065903.3469512-1-sai.teja.pottumuttu@intel.com>
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

Series: drm/i915: Remove unused underrun irq/reporting bits (rev2)
URL   : https://patchwork.freedesktop.org/series/139955/
State : warning

== Summary ==

Error: dim checkpatch failed
dbfd0c3c25db drm/i915: Remove unused underrun irq/reporting bits
-:11: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 8bcc0840cf7c ("drm/i915/xelpd: Enhanced pipe underrun reporting")'
#11: 
Essentially this is a revert of the commit 8bcc0840cf7c
(drm/i915/xelpd: Enhanced pipe underrun reporting) which originally

total: 1 errors, 0 warnings, 0 checks, 156 lines checked


