Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2334944876
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2024 11:32:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E91910E8CD;
	Thu,  1 Aug 2024 09:32:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC0A910E8CC;
 Thu,  1 Aug 2024 09:32:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_scsi=3A_sd=3A_Move_s?=
 =?utf-8?q?d=5Fread=5Fcpr=28=29_out_of_the_q-=3Elimits=5Flock_region?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Luca Coelho" <luciano.coelho@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 01 Aug 2024 09:32:52 -0000
Message-ID: <172250477283.486911.11793370774455554285@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240801082257.506006-1-luciano.coelho@intel.com>
In-Reply-To: <20240801082257.506006-1-luciano.coelho@intel.com>
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

Series: scsi: sd: Move sd_read_cpr() out of the q->limits_lock region
URL   : https://patchwork.freedesktop.org/series/136784/
State : warning

== Summary ==

Error: dim checkpatch failed
6fb10d7ea676 scsi: sd: Move sd_read_cpr() out of the q->limits_lock region
-:36: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#36: 
[1] https://lore.kernel.org/linux-scsi/vlmv53ni3ltwxplig5qnw4xsl2h6ccxijfbqzekx76vxoim5a5@dekv7q3es3tx/

total: 0 errors, 1 warnings, 0 checks, 21 lines checked


