Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A7F9F87CC
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 23:23:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85B7610E482;
	Thu, 19 Dec 2024 22:23:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58A0810E482;
 Thu, 19 Dec 2024 22:23:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?Reduce_global_state_funcs_boilerplate?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo Sousa" <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Dec 2024 22:23:52 -0000
Message-ID: <173464703235.559165.12293089363820759970@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241219214909.104869-1-gustavo.sousa@intel.com>
In-Reply-To: <20241219214909.104869-1-gustavo.sousa@intel.com>
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

Series: drm/i915/display: Reduce global state funcs boilerplate
URL   : https://patchwork.freedesktop.org/series/142853/
State : warning

== Summary ==

Error: dim checkpatch failed
ec99e692f6f4 drm/i915/display: Do not assume zero offset when duplicating global state
b3d1feeb2763 drm/i915/display: Add infra to reduce global state funcs boilerplate
-:18: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#18: 
           INTEL_GLOBAL_STATE_DEFAULTS(struct <prefix>_state, <base_member_name>),

total: 0 errors, 1 warnings, 0 checks, 93 lines checked
488bdf44e0b9 drm/i915/display: Use INTEL_GLOBAL_STATE_DEFAULTS


