Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 814823DF826
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Aug 2021 00:57:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E282B6E977;
	Tue,  3 Aug 2021 22:57:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BD9246E976;
 Tue,  3 Aug 2021 22:57:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9B6FDAA0EA;
 Tue,  3 Aug 2021 22:57:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 03 Aug 2021 22:57:12 -0000
Message-ID: <162803143260.9816.2422325925082224993@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210803222943.27686-1-matthew.brost@intel.com>
In-Reply-To: <20210803222943.27686-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIFBh?=
 =?utf-8?q?rallel_submission_aka_multi-bb_execbuf_=28rev2=29?=
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

Series: Parallel submission aka multi-bb execbuf (rev2)
URL   : https://patchwork.freedesktop.org/series/92789/
State : warning

== Summary ==

$ make htmldocs 2>&1 > /dev/null | grep i915
/home/cidrm/kernel/Documentation/gpu/i915:525: ./drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:75: WARNING: Unexpected indentation.
/home/cidrm/kernel/Documentation/gpu/i915:525: ./drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:76: WARNING: Block quote ends without a blank line; unexpected unindent.
/home/cidrm/kernel/Documentation/gpu/i915:525: ./drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:78: WARNING: Unexpected indentation.
/home/cidrm/kernel/Documentation/gpu/i915:525: ./drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:79: WARNING: Block quote ends without a blank line; unexpected unindent.
/home/cidrm/kernel/Documentation/gpu/i915:525: ./drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:81: WARNING: Unexpected indentation.


