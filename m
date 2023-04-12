Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05BAE6DE931
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Apr 2023 03:58:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28DA510E6DB;
	Wed, 12 Apr 2023 01:58:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3251C10E6DB;
 Wed, 12 Apr 2023 01:58:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 04C69A0BA8;
 Wed, 12 Apr 2023 01:58:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 12 Apr 2023 01:58:22 -0000
Message-ID: <168126470298.10846.3933213046035390974@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230411222931.15127-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230411222931.15127-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_CTM_stuff_mostly?=
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

Series: drm/i915: CTM stuff mostly
URL   : https://patchwork.freedesktop.org/series/116345/
State : warning

== Summary ==

Error: dim checkpatch failed
1df4dcef2824 drm/uapi: Document CTM matrix better
34492a0f013b drm/i915: Expose crtc CTM property on ilk/snb
b387b1e950f3 drm/i915: Fix CHV CGM CSC coefficient sign handling
a5728bb215dc drm/i915: Implement CTM property support for VLV
-:10: WARNING:REPEATED_WORD: Possible repeated word: 'is'
#10: 
What it is is a 3x3 matrix similar to the later CHV CGM

total: 0 errors, 1 warnings, 0 checks, 310 lines checked
145936b48aee drm/i915: No 10bit gamma on desktop gen3 parts
a692e7c252b6 drm/i915: Do state check for color management changes


