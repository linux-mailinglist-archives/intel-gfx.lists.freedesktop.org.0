Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7F6603998
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 08:10:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EC3A10E415;
	Wed, 19 Oct 2022 06:10:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F1C3210E415;
 Wed, 19 Oct 2022 06:10:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E9E8AA7DFB;
 Wed, 19 Oct 2022 06:10:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Wed, 19 Oct 2022 06:10:37 -0000
Message-ID: <166615983792.29708.17254974836360425969@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221019060043.3749258-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20221019060043.3749258-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/guc=3A_Add_GuC-Error-Capture-Init_coverage_of_new_engin?=
 =?utf-8?q?e_types_=28rev2=29?=
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

Series: drm/i915/guc: Add GuC-Error-Capture-Init coverage of new engine types (rev2)
URL   : https://patchwork.freedesktop.org/series/109737/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  CC [M]  drivers/gpu/drm/i915/gt/uc/intel_guc_capture.o
drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c: In function ‘__stringify_type’:
drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:436:2: error: label at end of compound statement
  default:
  ^~~~~~~
drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c: In function ‘__stringify_engclass’:
drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:456:2: error: label at end of compound statement
  default:
  ^~~~~~~
scripts/Makefile.build:250: recipe for target 'drivers/gpu/drm/i915/gt/uc/intel_guc_capture.o' failed
make[5]: *** [drivers/gpu/drm/i915/gt/uc/intel_guc_capture.o] Error 1
scripts/Makefile.build:500: recipe for target 'drivers/gpu/drm/i915' failed
make[4]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:500: recipe for target 'drivers/gpu/drm' failed
make[3]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:500: recipe for target 'drivers/gpu' failed
make[2]: *** [drivers/gpu] Error 2
scripts/Makefile.build:500: recipe for target 'drivers' failed
make[1]: *** [drivers] Error 2
Makefile:1992: recipe for target '.' failed
make: *** [.] Error 2


