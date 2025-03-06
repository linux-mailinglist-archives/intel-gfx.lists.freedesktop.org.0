Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82350A54817
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 11:41:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D251B10E07A;
	Thu,  6 Mar 2025 10:41:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JWKh6Bf7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7529610E07A
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Mar 2025 10:41:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741257663; x=1772793663;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=uIteHsq/n6OjlAu5DZ5yP0AHi3tH0JvFdtMogY15ZzY=;
 b=JWKh6Bf7W6XQYCKRLwB9jMJ6xySl2jWlrS9BCBe3DuhmH1JWi5BgBKhY
 ZKiO4xmbYqmzgT7xYukWyrmSxQJO305TEW/qMnM6+temV3AkcTRy67nab
 8/yEtoeWYc4eFVnzANHxTFJ4S8BkG8UXbPrsMoMBvY8z8LthfNH2Kdurs
 UaJtQ/7IJLSdBnFVMu92rXG1wYEcpsKpdPxuZ5kwbIli/knPNylglQS/t
 gHrrq6F2Urd/qTcoDDkM6uHEqrW1liAkqoR5sZsnEgCaTPhWNHiGzWdkc
 hP7qH6Zm+vs6RL6OUFI1v/NWv8e1EXB3ZabcGEmMuossQV6JZSvWI6oDB g==;
X-CSE-ConnectionGUID: qOWmatE9R12Fn4ydXBzwRw==
X-CSE-MsgGUID: wpb0NGU0TWuS8/gQY81o+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="29844242"
X-IronPort-AV: E=Sophos;i="6.14,225,1736841600"; d="scan'208";a="29844242"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 02:41:02 -0800
X-CSE-ConnectionGUID: Ieh//RYpQ2y+8u/aeyVrig==
X-CSE-MsgGUID: ARWN+bhVRoW4uE6CSZy3Qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,225,1736841600"; d="scan'208";a="118797018"
Received: from dev-409.igk.intel.com (HELO localhost) ([10.211.128.109])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 02:41:01 -0800
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <3aa4a0a8-1668-40e4-a57d-5bd983af5ba5@ursulin.net>
References: <wlnlppj2mmqqv2rrsboy2uddzkxiuxcsevgfkqjvo3f7hdtkxs@arkfgtgqrqyx>
 <3aa4a0a8-1668-40e4-a57d-5bd983af5ba5@ursulin.net>
Subject: Re: [PATCH] i915/gt/selftest_lrc: Remove timestamp test
From: Chris Wilson <chris.p.wilson@linux.intel.com>
Cc: Andi Shyti <andi.shyti@intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>, chris.p.wilson@intel.com
To: Mikolaj Wasiak <mikolaj.wasiak@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, intel-gfx@lists.freedesktop.org
Date: Thu, 06 Mar 2025 11:37:17 +0100
Message-ID: <174125743728.766812.11198274438700228285@DEV-409>
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

Quoting Tvrtko Ursulin (2025-03-04 16:43:45)
>=20
> On 04/03/2025 13:09, Mikolaj Wasiak wrote:
> > This test exposes bug in tigerlake hardware which prevents it from
> > succeeding. Since the tested feature is only available on bugged hardwa=
re
> > and we won't support any new hardware, this test is obsolete and
> > should be removed.
>=20
> I randomly clicked on one TGL, one DG2, one MTL and one RKL in the CI=20
> and only saw test passes. Then I looked at the patch below to see if=20
> there is a skip condition but don't see one. So I end up confused since=20
> commit message is making it sound like this only exists on Tigerlake and =

> it's failing all the time. Is it perhaps a sporadic failure? On all=20
> platforms or just TGL? What am I missing?

The HW issue affects all gen12 platforms currently supported by i915. I
don't have any data for derivatives, so I cannot confirm if this bug was
fixed. The lrc_timestamp test was written to demonstrate this HW bug, to
isolate it from (and explain) the pphwsp runtime discrepancies, covered
by another selftest. The question is whether we want to keep a selftest
that is expected to sporadically fail, that exists purely to hunt for
those failures.

In the past, we have kept such selftests, but hidden them behind
!IS_ENABLED(CONFIG_DRM_I915_SELFTEST_BROKEN).

So,
- keep the selftest and expect sporadic failures in BAT, or
- remove the selftest and completely forget about the HW issue, or
- hide the selftest and stop it running on known bad platforms?
-Chris
