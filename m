Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F3C8FB976
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 18:47:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F34C510E56D;
	Tue,  4 Jun 2024 16:47:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59B4410E56D;
 Tue,  4 Jun 2024 16:47:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_series_starting_with?=
 =?utf-8?q?_=5Bv1=2C1/1=5D_treewide=3A_Align_match=5Fstring=28=29_with_sysfs?=
 =?utf-8?q?=5Fmatch=5Fstring=28=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andy Shevchenko" <andriy.shevchenko@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 04 Jun 2024 16:47:37 -0000
Message-ID: <171751965736.2264328.4918422820008212076@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240603211538.289765-1-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20240603211538.289765-1-andriy.shevchenko@linux.intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [v1,1/1] treewide: Align match_string() with sysfs_match_string()
URL   : https://patchwork.freedesktop.org/series/134452/
State : warning

== Summary ==

Error: dim checkpatch failed
0fb53c53e046 treewide: Align match_string() with sysfs_match_string()
-:23: WARNING:STATIC_CONST_CHAR_ARRAY: static const char * array should probably be static const char * const
#23: FILE: arch/powerpc/xmon/xmon.c:3481:
+static const char *regnames[] = {

-:1165: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_a' - possible side-effects?
#1165: FILE: include/linux/string.h:315:
+#define match_string(_a, _s) __match_string(_a, ARRAY_SIZE(_a), _s)

total: 0 errors, 1 warnings, 1 checks, 1075 lines checked


