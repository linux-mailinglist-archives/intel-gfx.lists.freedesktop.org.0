Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC7C87488E
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Mar 2024 08:20:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CC8310F65E;
	Thu,  7 Mar 2024 07:20:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6288010F14C;
 Thu,  7 Mar 2024 07:20:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/mst=3A_Fix_NULL_?=
 =?utf-8?q?pointer_dereference_at_drm=5Fdp=5Fadd=5Fpayload=5Fpart2?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Wayne Lin" <wayne.lin@amd.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 07 Mar 2024 07:20:20 -0000
Message-ID: <170979602040.580595.2365620815888707390@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240307062957.2323620-1-Wayne.Lin@amd.com>
In-Reply-To: <20240307062957.2323620-1-Wayne.Lin@amd.com>
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

Series: drm/mst: Fix NULL pointer dereference at drm_dp_add_payload_part2
URL   : https://patchwork.freedesktop.org/series/130851/
State : warning

== Summary ==

Error: dim checkpatch failed
54fc3a878567 drm/mst: Fix NULL pointer dereference at drm_dp_add_payload_part2
-:12: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#12: 
- commit 5aa1dfcdf0a4 ("drm/mst: Refactor the flow for payload allocation/removement")

-:22: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Closes: with a URL to the report
#22: 
Reported-by: Leon Weiß <leon.weiss@ruhr-uni-bochum.de>
Link: https://lore.kernel.org/r/38c253ea42072cc825dc969ac4e6b9b600371cc8.camel@ruhr-uni-bochum.de/

total: 0 errors, 2 warnings, 0 checks, 53 lines checked


