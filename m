Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 871DE893030
	for <lists+intel-gfx@lfdr.de>; Sun, 31 Mar 2024 10:52:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00B0210E207;
	Sun, 31 Mar 2024 08:52:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 869C310E207;
 Sun, 31 Mar 2024 08:52:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Make_I2C_terminology_more?=
 =?utf-8?q?_inclusive_for_I2C_Algobit_and_consumers?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Easwar Hariharan" <eahariha@linux.microsoft.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sun, 31 Mar 2024 08:52:51 -0000
Message-ID: <171187517155.1097566.4290865115068295803@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240329170038.3863998-1-eahariha@linux.microsoft.com>
In-Reply-To: <20240329170038.3863998-1-eahariha@linux.microsoft.com>
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

Series: Make I2C terminology more inclusive for I2C Algobit and consumers
URL   : https://patchwork.freedesktop.org/series/131867/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/amd/amdgpu/amdgpu_i2c.o
drivers/gpu/drm/amd/amdgpu/amdgpu_i2c.c:157:3: error: ‘const struct i2c_algorithm’ has no member named ‘xfer’
  157 |  .xfer          = amdgpu_atombios_i2c_xfer,
      |   ^~~~
make[6]: *** [scripts/Makefile.build:244: drivers/gpu/drm/amd/amdgpu/amdgpu_i2c.o] Error 1
make[5]: *** [scripts/Makefile.build:485: drivers/gpu/drm/amd/amdgpu] Error 2
make[4]: *** [scripts/Makefile.build:485: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:485: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:485: drivers] Error 2
make[1]: *** [/home/kbuild/kernel/Makefile:1919: .] Error 2
make: *** [Makefile:240: __sub-make] Error 2
Build failed, no error log produced


