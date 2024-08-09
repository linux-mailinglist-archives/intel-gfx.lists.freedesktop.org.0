Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E89AA94D3BF
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2024 17:39:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BBAF10E961;
	Fri,  9 Aug 2024 15:39:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 317DD10E95F;
 Fri,  9 Aug 2024 15:39:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_video/aperture=3A_ma?=
 =?utf-8?q?tch_the_pci_device_when_calling_sysfb=5Fdisable=28=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alex Deucher" <alexander.deucher@amd.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 09 Aug 2024 15:39:42 -0000
Message-ID: <172321798219.552689.2258782581087622769@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240809150327.2485848-1-alexander.deucher@amd.com>
In-Reply-To: <20240809150327.2485848-1-alexander.deucher@amd.com>
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

Series: video/aperture: match the pci device when calling sysfb_disable()
URL   : https://patchwork.freedesktop.org/series/137088/
State : warning

== Summary ==

Error: dim checkpatch failed
8ad209af2ad1 video/aperture: match the pci device when calling sysfb_disable()
-:12: WARNING:REPEATED_WORD: Possible repeated word: 'the'
#12: 
1. A PCI device with a non-VGA class is the the boot display

total: 0 errors, 1 warnings, 0 checks, 22 lines checked


