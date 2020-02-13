Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C8DE15B5D4
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 01:27:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DCCA88810;
	Thu, 13 Feb 2020 00:27:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CB3BC6E13B;
 Thu, 13 Feb 2020 00:27:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C0C17A011A;
 Thu, 13 Feb 2020 00:27:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Date: Thu, 13 Feb 2020 00:27:52 -0000
Message-ID: <158155367276.17962.7691957854204173722@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200212102942.26568-1-ramalingam.c@intel.com>
In-Reply-To: <20200212102942.26568-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_HDCP_misc_=28rev2=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: HDCP misc (rev2)
URL   : https://patchwork.freedesktop.org/series/73345/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3498b51721f6 drm/hdcp: optimizing the srm handling
cf23cf2eff64 drm/hdcp: fix DRM_HDCP_2_KSV_COUNT_2_LSBITS
d18de5c49d15 drm/i915: terminate reauth at stream management failure
e8f4a3362d7d drm/i915: dont retry stream management at seq_num_m roll over
3e84cadbe86f drm/i915/hdcp: conversion to struct drm_device based logging macros.
-:175: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#175: FILE: drivers/gpu/drm/i915/display/intel_hdcp.c:754:
+			    intel_de_read(dev_priv, HDCP_STATUS(dev_priv,
+					  cpu_transcoder, port)));

total: 0 errors, 0 warnings, 1 checks, 325 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
