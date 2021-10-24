Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD1B438AA7
	for <lists+intel-gfx@lfdr.de>; Sun, 24 Oct 2021 18:34:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F13C36E15C;
	Sun, 24 Oct 2021 16:34:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 051896E159;
 Sun, 24 Oct 2021 16:34:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DA2DDAA917;
 Sun, 24 Oct 2021 16:34:41 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sun, 24 Oct 2021 16:34:41 -0000
Message-ID: <163509328186.27629.13536165686169451862@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211024155020.126328-1-hdegoede@redhat.com>
In-Reply-To: <20211024155020.126328-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/vlv=5Fdsi=3A_Double_pixelclock_on_read-back_for_du?=
 =?utf-8?q?al-link_panels?=
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

Series: drm/i915/vlv_dsi: Double pixelclock on read-back for dual-link panels
URL   : https://patchwork.freedesktop.org/series/96221/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
5fcb12aea780 drm/i915/vlv_dsi: Double pixelclock on read-back for dual-link panels
-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
 i915 0000:00:02.0: [drm] *ERROR* [CRTC:51:pipe A] mismatch in pixel_rate (expected 235710, found 118056)

total: 0 errors, 1 warnings, 0 checks, 18 lines checked


