Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB9614915E
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 23:53:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D929A6E463;
	Fri, 24 Jan 2020 22:53:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0F3BF6E463;
 Fri, 24 Jan 2020 22:53:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 07457A0118;
 Fri, 24 Jan 2020 22:53:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 24 Jan 2020 22:53:29 -0000
Message-ID: <157990640900.15090.13171828855294544365@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200124200231.10517-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200124200231.10517-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/8=5D_drm/edid=3A_Check_the_number?=
 =?utf-8?q?_of_detailed_timing_descriptors_in_the_CEA_ext_block?=
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

Series: series starting with [1/8] drm/edid: Check the number of detailed timing descriptors in the CEA ext block
URL   : https://patchwork.freedesktop.org/series/72550/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3a501fdd02f1 drm/edid: Check the number of detailed timing descriptors in the CEA ext block
0e3a8bb18994 drm/edid: Don't accept any old garbage as a display descriptor
4a7295a41e0f drm/edid: Introduce is_detailed_timing_descritor()
a60ef24fcf54 drm/i915: Clear out spurious whitespace
9618198833a0 drm/edid: Document why we don't bounds check the DispID CEA block start/end
cf141fb33648 drm/edid: Add a FIXME about DispID CEA data block revision
e49f5a0e43ea drm/edid: Constify lots of things
-:757: WARNING:LONG_LINE: line over 100 characters
#757: FILE: drivers/gpu/drm/drm_edid.c:5080:
+							    const struct displayid_detailed_timings_1 *timings)

total: 0 errors, 1 warnings, 0 checks, 783 lines checked
120d72ced4d7 drm/edid: Dump bogus 18 byte descriptors

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
