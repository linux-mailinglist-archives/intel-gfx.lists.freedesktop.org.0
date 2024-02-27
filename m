Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B9486A173
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 22:18:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 107CB10E352;
	Tue, 27 Feb 2024 21:18:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EDBA10E352;
 Tue, 27 Feb 2024 21:18:47 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/ttm=3A_Fix_?=
 =?utf-8?q?TTM=5FPL=5FFLAG=5FDESIRED?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Feb 2024 21:18:47 -0000
Message-ID: <170906872739.351698.828513133933459527@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240227202645.20111-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240227202645.20111-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915/ttm: Fix TTM_PL_FLAG_DESIRED
URL   : https://patchwork.freedesktop.org/series/130457/
State : warning

== Summary ==

Error: dim checkpatch failed
23d3c3b71c2f drm/i915/ttm: Fix TTM_PL_FLAG_DESIRED
-:9: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#9: 
inlined from ‘i915_ttm_get_pages’ at ../drivers/gpu/drm/i915/gem/i915_gem_ttm.c:847:2:

total: 0 errors, 1 warnings, 0 checks, 11 lines checked


