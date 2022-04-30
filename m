Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46CE1515F88
	for <lists+intel-gfx@lfdr.de>; Sat, 30 Apr 2022 19:24:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93F6910E67B;
	Sat, 30 Apr 2022 17:24:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A800210E1E6;
 Sat, 30 Apr 2022 17:24:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A54DCAA0EA;
 Sat, 30 Apr 2022 17:24:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mauro Carvalho Chehab" <mchehab@kernel.org>
Date: Sat, 30 Apr 2022 17:24:20 -0000
Message-ID: <165133946064.13024.541903640728511464@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1651338466.git.mchehab@kernel.org>
In-Reply-To: <cover.1651338466.git.mchehab@kernel.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Let_userspace_know_when_snd-hda-intel_needs_i915?=
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

Series: Let userspace know when snd-hda-intel needs i915
URL   : https://patchwork.freedesktop.org/series/103400/
State : warning

== Summary ==

Error: dim checkpatch failed
61a1e180c395 module: update dependencies at try_module_get()
-:25: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#25: FILE: include/linux/module.h:615:
+extern bool __try_module_get(struct module *module, struct module *this);

total: 0 errors, 0 warnings, 1 checks, 83 lines checked
401c0ab5d354 ALSA: hda - identify when audio is provided by a video driver


