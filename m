Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E28742126F
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Oct 2021 17:14:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20F0E6EA2C;
	Mon,  4 Oct 2021 15:14:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8874A6EA2C;
 Mon,  4 Oct 2021 15:14:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7F896A47EB;
 Mon,  4 Oct 2021 15:14:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 04 Oct 2021 15:14:25 -0000
Message-ID: <163336046549.1479.6953687078682515698@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211004115913.23889-1-manasi.d.navare@intel.com>
In-Reply-To: <20211004115913.23889-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/atomic=3A_Add_the_crtc_to_affected_crtc_only_if_uapi=2E?=
 =?utf-8?q?enable_=3D_true_=28rev3=29?=
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

Series: drm/atomic: Add the crtc to affected crtc only if uapi.enable = true (rev3)
URL   : https://patchwork.freedesktop.org/series/87555/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
658485c7066a drm/atomic: Add the crtc to affected crtc only if uapi.enable = true
-:10: WARNING:TYPO_SPELLING: 'mutiple' may be misspelled - perhaps 'multiple'?
#10: 
In case of a modeset where a mode gets split across mutiple CRTCs
                                                    ^^^^^^^

-:12: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#12: 
the affected CRTCs based on the drm_crtc_mask and indicate the stolen CRTC as

total: 0 errors, 2 warnings, 0 checks, 24 lines checked


