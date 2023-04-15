Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C79D6E3171
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Apr 2023 14:56:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8BDA10E07F;
	Sat, 15 Apr 2023 12:56:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 60D7210E07F;
 Sat, 15 Apr 2023 12:56:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 563FAA73C7;
 Sat, 15 Apr 2023 12:56:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Sat, 15 Apr 2023 12:56:07 -0000
Message-ID: <168156336731.19227.17319481304578152726@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230413164916.4221-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230413164916.4221-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_CTM_stuff_mostly_=28rev4=29?=
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

Series: drm/i915: CTM stuff mostly (rev4)
URL   : https://patchwork.freedesktop.org/series/116345/
State : warning

== Summary ==

Error: dim checkpatch failed
047d4bfb8f8a drm/uapi: Document CTM matrix better
6bb0580031e8 drm/i915: Expose crtc CTM property on ilk/snb
e8cf7eed080a drm/i915: Fix CHV CGM CSC coefficient sign handling
fa548815165c drm/i915: Always enable CGM CSC on CHV
38fe12b5723d drm/i915: Implement CTM property support for VLV
-:10: WARNING:REPEATED_WORD: Possible repeated word: 'is'
#10: 
What it is is a 3x3 matrix similar to the later CHV CGM

total: 0 errors, 1 warnings, 0 checks, 310 lines checked
5bc9c17fdde8 drm/i915: No 10bit gamma on desktop gen3 parts
660763193ca8 drm/i915: Do state check for color management changes


