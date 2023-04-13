Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11DED6E1424
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 20:28:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4428210EBD0;
	Thu, 13 Apr 2023 18:28:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 74CA310EBC9;
 Thu, 13 Apr 2023 18:28:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 62A80A73C7;
 Thu, 13 Apr 2023 18:28:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 13 Apr 2023 18:28:38 -0000
Message-ID: <168141051836.3697.4267880492549319360@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230413164916.4221-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230413164916.4221-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_CTM_stuff_mostly_=28rev3=29?=
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

Series: drm/i915: CTM stuff mostly (rev3)
URL   : https://patchwork.freedesktop.org/series/116345/
State : warning

== Summary ==

Error: dim checkpatch failed
78b5c06e6a08 drm/uapi: Document CTM matrix better
040d34333d15 drm/i915: Expose crtc CTM property on ilk/snb
025b0a294b12 drm/i915: Fix CHV CGM CSC coefficient sign handling
4c183dda16bc drm/i915: Always enable CGM CSC on CHV
9b4ab15ce12b drm/i915: Implement CTM property support for VLV
-:10: WARNING:REPEATED_WORD: Possible repeated word: 'is'
#10: 
What it is is a 3x3 matrix similar to the later CHV CGM

total: 0 errors, 1 warnings, 0 checks, 310 lines checked
28846b2d788c drm/i915: No 10bit gamma on desktop gen3 parts
deec600a1da5 drm/i915: Do state check for color management changes


