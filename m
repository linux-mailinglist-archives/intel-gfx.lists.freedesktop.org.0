Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C8E2706721
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 13:51:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A36910E409;
	Wed, 17 May 2023 11:51:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1948D10E409;
 Wed, 17 May 2023 11:51:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 12169A47E9;
 Wed, 17 May 2023 11:51:50 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dmitry Baryshkov" <dmitry.baryshkov@linaro.org>
Date: Wed, 17 May 2023 11:51:50 -0000
Message-ID: <168432431004.6588.6877902116982836643@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230517102807.2181589-1-dmitry.baryshkov@linaro.org>
In-Reply-To: <20230517102807.2181589-1-dmitry.baryshkov@linaro.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_move_DSC_RC_tables_to_drm=5Fdsc=5Fhelper=2Ec_?=
 =?utf-8?b?KHJldjgp?=
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

Series: drm/i915: move DSC RC tables to drm_dsc_helper.c (rev8)
URL   : https://patchwork.freedesktop.org/series/114473/
State : warning

== Summary ==

Error: dim checkpatch failed
eb2b41f3d443 drm/i915/dsc: change DSC param tables to follow the DSC model
8da238066157 drm/i915/dsc: move rc_buf_thresh values to common helper
eb367fd34b35 drm/i915/dsc: move DSC tables to DRM DSC helper
5e7eff11296f drm/i915/dsc: stop using interim structure for calculated params
3868256f67f5 drm/display/dsc: use flat array for rc_parameters lookup
313685b15740 drm/display/dsc: split DSC 1.2 and DSC 1.1 (pre-SCR) parameters
-:12: ERROR:BAD_SIGN_OFF: Unrecognized email address: 'Suraj Kandpal'
#12: 
Reviewed-by: Suraj Kandpal

total: 1 errors, 0 warnings, 0 checks, 239 lines checked
a55bad9d938e drm/display/dsc: include the rest of pre-SCR parameters
62ba19a47aec drm/display/dsc: add YCbCr 4:2:2 and 4:2:0 RC parameters


