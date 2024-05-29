Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E36A28D3F5A
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 22:05:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A09E10E153;
	Wed, 29 May 2024 20:05:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EE9710E153;
 Wed, 29 May 2024 20:05:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Lockdep_annotation_i?=
 =?utf-8?q?ntroduced_warn_in_VMD_driver?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dan Williams" <dan.j.williams@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 29 May 2024 20:05:25 -0000
Message-ID: <171701312512.2235474.8205498074864186840@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <ZlXP5oTnSApiDbD1@ideak-desk.fi.intel.com>
In-Reply-To: <ZlXP5oTnSApiDbD1@ideak-desk.fi.intel.com>
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

Series: Lockdep annotation introduced warn in VMD driver
URL   : https://patchwork.freedesktop.org/series/134203/
State : warning

== Summary ==

Error: dim checkpatch failed
ed509deafc40 Lockdep annotation introduced warn in VMD driver
-:8: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#8: 
> > > Also Imre tried with 2 PCI patches together https://patchwork.freedesktop.org/series/134193/

-:76: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 1 warnings, 0 checks, 28 lines checked


