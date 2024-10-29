Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6703C9B4A62
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 14:00:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3477010E1B4;
	Tue, 29 Oct 2024 13:00:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AAA110E1B4;
 Tue, 29 Oct 2024 13:00:16 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_ensure_s?=
 =?utf-8?q?egment_offset_never_exceeds_allowed_max_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Karas, Krzysztof" <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Oct 2024 13:00:16 -0000
Message-ID: <173020681643.1359138.16416435191343317418@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <kjsmgowrerhkk2d7qxsbccosjb55usqhfmxse6lesxfqwxtvhu@twuaxfazvq2a>
In-Reply-To: <kjsmgowrerhkk2d7qxsbccosjb55usqhfmxse6lesxfqwxtvhu@twuaxfazvq2a>
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

Series: drm/i915: ensure segment offset never exceeds allowed max (rev5)
URL   : https://patchwork.freedesktop.org/series/140374/
State : warning

== Summary ==

Error: dim checkpatch failed
ee10652b82f8 drm/i915: ensure segment offset never exceeds allowed max
-:45: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email name mismatch: 'From: "Karas, Krzysztof" <krzysztof.karas@intel.com>' != 'Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 10 lines checked


