Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5048796F7F6
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 17:14:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5AF710E0AB;
	Fri,  6 Sep 2024 15:14:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B050810E098;
 Fri,  6 Sep 2024 15:14:14 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3ARemove_un?=
 =?utf-8?q?used_parameter_in_marco=2E_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "He Lugang" <helugang@uniontech.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 06 Sep 2024 15:14:14 -0000
Message-ID: <172563565471.955123.4080762549515739063@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <6B8E60F863EF80E4+20240906113001.1595107-1-helugang@uniontech.com>
In-Reply-To: <6B8E60F863EF80E4+20240906113001.1595107-1-helugang@uniontech.com>
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

Series: drm/i915:Remove unused parameter in marco. (rev3)
URL   : https://patchwork.freedesktop.org/series/138076/
State : warning

== Summary ==

Error: dim checkpatch failed
55767623740c drm/i915:Remove unused parameter in marco.
-:65: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#65: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:309:
+#define PORT_ALPM_LFPS_CTL(port)			    _MMIO_PORT(port, _PORT_ALPM_LFPS_CTL_A, _PORT_ALPM_LFPS_CTL_B)

total: 0 errors, 1 warnings, 0 checks, 40 lines checked


