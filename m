Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D077C4EC98D
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 18:19:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 308B010E73D;
	Wed, 30 Mar 2022 16:19:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A705210E73D;
 Wed, 30 Mar 2022 16:19:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A2D59A66C9;
 Wed, 30 Mar 2022 16:19:03 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Wed, 30 Mar 2022 16:19:03 -0000
Message-ID: <164865714363.8657.12231402887771797984@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220330155724.255226-1-jose.souza@intel.com>
In-Reply-To: <20220330155724.255226-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2Cv3=2C1/3=5D_drm/i915/display/t?=
 =?utf-8?q?gl+=3A_Set_default_values_for_all_registers_in_PIPE=5FMBUS=5FDB?=
 =?utf-8?q?OX=5FCTL?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [CI,v3,1/3] drm/i915/display/tgl+: Set default values for all registers in PIPE_MBUS_DBOX_CTL
URL   : https://patchwork.freedesktop.org/series/101965/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a389720ee911 drm/i915/display/tgl+: Set default values for all registers in PIPE_MBUS_DBOX_CTL
-:75: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#75: FILE: drivers/gpu/drm/i915/i915_reg.h:1111:
+#define MBUS_DBOX_B2B_TRANSACTIONS_MAX(x)	REG_FIELD_PREP(MBUS_DBOX_B2B_TRANSACTIONS_MAX_MASK, x)

-:77: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#77: FILE: drivers/gpu/drm/i915/i915_reg.h:1113:
+#define MBUS_DBOX_B2B_TRANSACTIONS_DELAY(x)	REG_FIELD_PREP(MBUS_DBOX_B2B_TRANSACTIONS_DELAY_MASK, x)

total: 0 errors, 2 warnings, 0 checks, 54 lines checked
e4e4875b4baa drm/i915/display/adlp: Adjust MBUS DBOX BW and B credits
e8e1a9e4d521 drm/i915/display/adlp: Fix programing of PIPE_MBUS_DBOX_CTL


