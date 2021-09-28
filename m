Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A75541B66C
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Sep 2021 20:34:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A13756E103;
	Tue, 28 Sep 2021 18:34:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4337B6E103;
 Tue, 28 Sep 2021 18:34:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 39FD0A66C8;
 Tue, 28 Sep 2021 18:34:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Harry Wentland" <harry.wentland@amd.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Sep 2021 18:34:44 -0000
Message-ID: <163285408420.3948.6377469827328108559@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210928170828.26452-1-harry.wentland@amd.com>
In-Reply-To: <20210928170828.26452-1-harry.wentland@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/amd/display=3A_Only_define_DP_2=2E0_symbols_if_not_alre?=
 =?utf-8?q?ady_defined?=
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

Series: drm/amd/display: Only define DP 2.0 symbols if not already defined
URL   : https://patchwork.freedesktop.org/series/95164/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b1d56d1bac26 drm/amd/display: Only define DP 2.0 symbols if not already defined
-:14: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#14: 
In file included from ./drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_mode.h:36:

total: 0 errors, 1 warnings, 0 checks, 77 lines checked


