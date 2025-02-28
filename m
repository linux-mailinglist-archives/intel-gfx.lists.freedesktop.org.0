Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B489CA4A520
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 22:36:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CECA10E04F;
	Fri, 28 Feb 2025 21:36:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48A6A10E04F;
 Fri, 28 Feb 2025 21:35:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/client=3A_Stop_u?=
 =?utf-8?q?sing_legacy_crtc-=3Emode_and_a_bunch_of_cleanups_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Feb 2025 21:35:59 -0000
Message-ID: <174077855929.3295116.12536518669538122663@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250228211454.8138-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20250228211454.8138-1-ville.syrjala@linux.intel.com>
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

Series: drm/client: Stop using legacy crtc->mode and a bunch of cleanups (rev5)
URL   : https://patchwork.freedesktop.org/series/139493/
State : warning

== Summary ==

Error: dim checkpatch failed
c9317d69de4f drm/client: Constify modes
3d8b274336b8 drm/client: Use array notation for function arguments
b9442c12c801 drm/client: Streamline mode selection debugs
7a0b613f2127 drm/client: Make copies of modes
-:18: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 3eadd887dbac ("drm/client: Fully protect modes[] with dev->mode_config.mutex")'
#18: 
And with this we can undo also commit 3eadd887dbac
("drm/client:Fully protect modes[] with dev->mode_config.mutex")

total: 1 errors, 0 warnings, 0 checks, 154 lines checked
3e3b25adc500 drm/client: Stop using the legacy crtc->mode
1d3187be8bc2 drm/client: s/new_crtc/crtc/
2a4fe787ce95 drm/client: Move variables to tighter scope
17bb72a5df7c drm/client: s/unsigned int i/int i/


