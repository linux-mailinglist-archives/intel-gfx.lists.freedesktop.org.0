Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21006A566D6
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 12:35:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27A6B10E119;
	Fri,  7 Mar 2025 11:35:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XgREb5Fi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8246D10E119
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Mar 2025 11:35:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741347312; x=1772883312;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:to:date:message-id;
 bh=2B5Yt/mce4iZ5w1yz1JsvZ5gz6RkYRnG8xdBclDe/2o=;
 b=XgREb5FiWMsLHxMZFKg54gaAwdC++NSSaAeLCnuVNU0Z8oife8w4++dY
 SB9DvGO8ptUBwXt/Jo5C040cEW35cXCsyJcgpzt0uix+MYs93A5xRAkhM
 i1XL3iKVuv84QgIwP4e2aQSy9EVEMgc4QE0koPK+z2lcjVLovM2dTTSZZ
 rEUYaiPF8ran+p3J+mh4vYfxEvx4MpAC0ZAAxCAAMnVUou2lYII8QuKPW
 XnRjt2hJ3TRryOVFiY4W9DcnhnLbWS0xBIJ+OJL/6bwlEYRU5+j8nXrJC
 LMuyl+KtJaMKAzDz947DHNnk2+FYFVXabfzUtmNoIim4rBgs512H+xYmF w==;
X-CSE-ConnectionGUID: sQ3Mt7ERTa62OiNU5hIghQ==
X-CSE-MsgGUID: e7V1mxHJTlWDwOJRl3EBjQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="42591287"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="42591287"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 03:35:12 -0800
X-CSE-ConnectionGUID: FnZ//4/8Ri+B6mSuXlD0ug==
X-CSE-MsgGUID: vjtQYs6rQxSZAoPtO1caFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="142531361"
Received: from dev-409.igk.intel.com (HELO localhost) ([10.211.128.109])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 03:35:10 -0800
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <2l2xubl54w5lppc55lvksasp7ged4tactvumqoxvuocbaqnb36@as6ekkdh57zy>
References: <2w6pt2hnemndwmanwhyn3keexa6vtha7rmo6rqoerkmyxhbrh2@ls7lndjpia6z>
 <p7p3dfiuyss4fyu33ll7dl2lovhiga4nrmqtzvmq22nz6qorxb@3cnervmi5h6q>
 <2l2xubl54w5lppc55lvksasp7ged4tactvumqoxvuocbaqnb36@as6ekkdh57zy>
Subject: Re: [PATCH v2] i915/selftest/igt_mmap: let mmap tests run in kthread
From: Chris Wilson <chris.p.wilson@linux.intel.com>
To: Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Mikolaj Wasiak <mikolaj.wasiak@intel.com>, intel-gfx@lists.freedesktop.org
Date: Fri, 07 Mar 2025 12:31:25 +0100
Message-ID: <174134708564.785137.4586842576093518384@DEV-409>
User-Agent: alot/0.10
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Mikolaj Wasiak (2025-03-07 08:44:29)
> Hi Krzysztof,
>=20
> On 2025-03-05 at 17:31:49 +0100, Krzysztof Niemiec wrote:
> > Don't we run into the same issue as in V1, meaning we use an unknown
> > current->active_mm (since we run in a kthread, and cannot control it) to
> > use as the current->mm? Maybe a better approach would be to create a new
> > mm for the duration of the test, similarly to how the patch Janusz
> > mentioned does it? (51104c19d857)
>=20
> As per discussion with Chris, using active_mm is the correct way of
> enabling current->mm in kthread. On the other hand it may also expose
> issues with underlying tests because they didn't previously run on such
> hardware. I think potential fixes to those tests should be addressed in
> separate patch.

We've looked at the tests, and they should all be finding unused space
in the mm and cleaning up after themselves...

If we put on our paranoia hats, the biggest problem with borrowing
userspace's mm is that it gives them temporary insight into whatever
we place into that mm. We don't expose any data, unless by error...
Not sure how much effort we want to put on making the selftests paranoia
proof, but that (and the surety of cleaning up afterwards) would be a
good argument for creating a temporary mm for our use.
-Chris
