Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7CF9ED0E8
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2024 17:11:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1DCF10EB9B;
	Wed, 11 Dec 2024 16:11:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ECD510EBA0;
 Wed, 11 Dec 2024 16:11:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/display=3A_use_E?=
 =?utf-8?q?RR=5FPTR_on_DP_tunnel_manager_creation_fail?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Krzysztof Karas" <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Dec 2024 16:11:21 -0000
Message-ID: <173393348157.1237659.6903797542711906251@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <x46u4zhhpnxgohyguhqsc4d73sbjwipebxp5uiwkopejsy6dpz@v3eysonfbmk2>
In-Reply-To: <x46u4zhhpnxgohyguhqsc4d73sbjwipebxp5uiwkopejsy6dpz@v3eysonfbmk2>
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

Series: drm/display: use ERR_PTR on DP tunnel manager creation fail
URL   : https://patchwork.freedesktop.org/series/142423/
State : warning

== Summary ==

Error: dim checkpatch failed
aa96e1997901 drm/display: use ERR_PTR on DP tunnel manager creation fail
-:6: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#6: 
Instead of returning a generic NULL on error from drm_dp_tunnel_mgr_create(),

total: 0 errors, 1 warnings, 0 checks, 34 lines checked


