Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D71C78C0835
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2024 02:05:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B44CA10E2F9;
	Thu,  9 May 2024 00:05:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4023710E2F9;
 Thu,  9 May 2024 00:05:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Make_I2C_terminology_more?=
 =?utf-8?q?_inclusive_for_I2C_Algobit_and_consumers_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Easwar Hariharan" <eahariha@linux.microsoft.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 09 May 2024 00:05:10 -0000
Message-ID: <171521311026.2023278.9211733273386462780@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240508234342.2927398-1-eahariha@linux.microsoft.com>
In-Reply-To: <20240508234342.2927398-1-eahariha@linux.microsoft.com>
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

Series: Make I2C terminology more inclusive for I2C Algobit and consumers (rev4)
URL   : https://patchwork.freedesktop.org/series/131867/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/131867/revisions/4/mbox/ not applied
Applying: drm/amdgpu, drm/radeon: Make I2C terminology more inclusive
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c
M	drivers/gpu/drm/amd/amdgpu/amdgpu_i2c.c
M	drivers/gpu/drm/amd/display/dc/bios/bios_parser.c
M	drivers/gpu/drm/amd/display/dc/bios/bios_parser2.c
M	drivers/gpu/drm/amd/display/dc/dc.h
M	drivers/gpu/drm/amd/pm/swsmu/smu11/arcturus_ppt.c
M	drivers/gpu/drm/amd/pm/swsmu/smu11/sienna_cichlid_ppt.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/amd/pm/swsmu/smu11/sienna_cichlid_ppt.c
Auto-merging drivers/gpu/drm/amd/pm/swsmu/smu11/arcturus_ppt.c
Auto-merging drivers/gpu/drm/amd/display/dc/dc.h
Auto-merging drivers/gpu/drm/amd/display/dc/bios/bios_parser2.c
Auto-merging drivers/gpu/drm/amd/display/dc/bios/bios_parser.c
Auto-merging drivers/gpu/drm/amd/amdgpu/amdgpu_i2c.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/amd/amdgpu/amdgpu_i2c.c
Auto-merging drivers/gpu/drm/amd/amdgpu/amdgpu_atomfirmware.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/amdgpu, drm/radeon: Make I2C terminology more inclusive
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


