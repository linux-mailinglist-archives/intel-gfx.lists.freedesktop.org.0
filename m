Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6FE9813D07
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Dec 2023 23:03:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34AAE10E236;
	Thu, 14 Dec 2023 22:03:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0AA5510E236;
 Thu, 14 Dec 2023 22:03:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E446DAADD6;
 Thu, 14 Dec 2023 22:03:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/display/dp=3A_Up?=
 =?utf-8?q?date_the_name_of_bit=234_of_DPCD_TEST=5FREQUEST?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Khaled Almahallawy" <khaled.almahallawy@intel.com>
Date: Thu, 14 Dec 2023 22:03:34 -0000
Message-ID: <170259141491.19959.3552777658344797132@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231214213555.3643327-1-khaled.almahallawy@intel.com>
In-Reply-To: <20231214213555.3643327-1-khaled.almahallawy@intel.com>
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

Series: drm/display/dp: Update the name of bit#4 of DPCD TEST_REQUEST
URL   : https://patchwork.freedesktop.org/series/127844/
State : warning

== Summary ==

Error: dim checkpatch failed
684264b085bd drm/display/dp: Update the name of bit#4 of DPCD TEST_REQUEST
-:25: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'data == DP_TEST_PHY_TEST_CHANNEL_CODING_TYPE'
#25: FILE: drivers/gpu/drm/msm/dp/dp_link.c:667:
+	if (!data || (data == DP_TEST_PHY_TEST_CHANNEL_CODING_TYPE)) {

total: 0 errors, 0 warnings, 1 checks, 16 lines checked


