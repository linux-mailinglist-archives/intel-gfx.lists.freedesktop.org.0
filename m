Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E6A8937ED
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Apr 2024 06:00:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCBDB10EE32;
	Mon,  1 Apr 2024 04:00:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EED7010E863;
 Mon,  1 Apr 2024 04:00:47 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/ttm=3A_remove_un?=
 =?utf-8?q?used_paramter_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: jesse.zhang@amd.com
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 01 Apr 2024 04:00:47 -0000
Message-ID: <171194404797.1116781.12060575484281192801@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240401030443.3384494-1-jesse.zhang@amd.com>
In-Reply-To: <20240401030443.3384494-1-jesse.zhang@amd.com>
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

Series: drm/ttm: remove unused paramter (rev2)
URL   : https://patchwork.freedesktop.org/series/131576/
State : warning

== Summary ==

Error: dim checkpatch failed
372ac4183a0f drm/ttm: remove unused paramter
-:4: WARNING:TYPO_SPELLING: 'paramter' may be misspelled - perhaps 'parameter'?
#4: 
Subject: [PATCH] drm/ttm: remove unused paramter
                                        ^^^^^^^^

-:9: WARNING:TYPO_SPELLING: 'paramter' may be misspelled - perhaps 'parameter'?
#9: 
remove the unsed the paramter in the function
                     ^^^^^^^^

-:62: CHECK:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email comments mismatch: 'From: Jesse Zhang <jesse.zhang@amd.com>' != 'Signed-off-by: Jesse Zhang <Jesse.Zhang@amd.com>'

total: 0 errors, 2 warnings, 1 checks, 38 lines checked


