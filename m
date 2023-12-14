Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04694813A78
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Dec 2023 20:06:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D1E710E1E6;
	Thu, 14 Dec 2023 19:06:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9FBFC10E97A;
 Thu, 14 Dec 2023 19:05:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 88C75A0169;
 Thu, 14 Dec 2023 19:04:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_drm/i915=3A_Replace_kmap?=
 =?utf-8?q?=5Fatomic=28=29_with_kmap=5Flocal=5Fpage=28=29_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zhao Liu" <zhao1.liu@linux.intel.com>
Date: Thu, 14 Dec 2023 19:04:59 -0000
Message-ID: <170258069955.19958.10703843619618986133@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231203132947.2328805-1-zhao1.liu@linux.intel.com>
In-Reply-To: <20231203132947.2328805-1-zhao1.liu@linux.intel.com>
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

Series: drm/i915: Replace kmap_atomic() with kmap_local_page() (rev3)
URL   : https://patchwork.freedesktop.org/series/115769/
State : warning

== Summary ==

Error: dim sparse failed
Sparse version: v0.6.2
Fast mode used, each commit won't be checked separately.


