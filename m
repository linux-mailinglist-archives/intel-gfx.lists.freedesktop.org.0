Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FCC9B7991
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 12:20:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB9A410E0C3;
	Thu, 31 Oct 2024 11:20:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5820F10E0A1;
 Thu, 31 Oct 2024 11:20:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm=3A_i915=3A_do_no?=
 =?utf-8?q?t_NULL_deref_hdmi_attached=5Fconnector?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sergey Senozhatsky" <senozhatsky@chromium.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Oct 2024 11:20:52 -0000
Message-ID: <173037365235.1365305.14012865186407783492@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241031105145.2140590-1-senozhatsky@chromium.org>
In-Reply-To: <20241031105145.2140590-1-senozhatsky@chromium.org>
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

Series: drm: i915: do not NULL deref hdmi attached_connector
URL   : https://patchwork.freedesktop.org/series/140761/
State : warning

== Summary ==

Error: dim checkpatch failed
e22e68343ed1 drm: i915: do not NULL deref hdmi attached_connector
-:110: WARNING:MISSING_FIXES_TAG: The commit message has 'Call Trace:', perhaps it also needs a 'Fixes:' tag?

total: 0 errors, 1 warnings, 0 checks, 67 lines checked


