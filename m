Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D80ACE204
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jun 2025 18:14:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AC7510E7AD;
	Wed,  4 Jun 2025 16:14:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bUM3lZi0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C62C889D99;
 Wed,  4 Jun 2025 16:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749053687; x=1780589687;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Dlom29BhmQ5YQ+3qyAdeLL3JJr1ujIh34XDEYgcKbHQ=;
 b=bUM3lZi0SodcKc2hf1pwCDmcOZSEKPXLKqTH4Kc7BVnIftXS4gg7YNgH
 YNyaTgUCawzPWeVvs55UBfvmWoVO/nOuGU/nlR1XZ+7zm0KgIA2+r1AvW
 hZ9BcYPzqmWMocZ7iSBxqrdNo7TS+WqfXmrUbHYFfNsfA7oSNG4NiQaPr
 DP9c3IZR5wqwZMMAMymO/zT2B6GMX4YDMi59rkGoQzA7C++C6FVoNkOVu
 Lm2Hf1zvZc/M01FpisgtbHV9n+uL5Y2z1sqPE0MUvFlRZq6S3eFY5eUBk
 AsrEHM5dg1Cw+duslvp72+Kn7wW4CLnVEkymir+ZoErz0NZ0ukwMHp01s g==;
X-CSE-ConnectionGUID: 4Z86Lzl6RISR31KZEljn4Q==
X-CSE-MsgGUID: xQCFMCgrQ/CY7wEEmZG0sA==
X-IronPort-AV: E=McAfee;i="6800,10657,11454"; a="51149194"
X-IronPort-AV: E=Sophos;i="6.16,209,1744095600"; d="scan'208";a="51149194"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 09:14:43 -0700
X-CSE-ConnectionGUID: MDFfzIa+QsW14csK2qhQXw==
X-CSE-MsgGUID: MsnuFqaHR5eYceLaBDzhog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,209,1744095600"; d="scan'208";a="150270150"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.101])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 09:14:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [RESEND 1/6] drm/i915/bw: pass struct dram_info pointer around
In-Reply-To: <38816ee29422d032499465ec7cb6d4ec2a8d40ca.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1748337870.git.jani.nikula@intel.com>
 <1752b4987ff39a685c28cebae1be4ce326b67c7b.1748337870.git.jani.nikula@intel.com>
 <38816ee29422d032499465ec7cb6d4ec2a8d40ca.camel@intel.com>
Date: Wed, 04 Jun 2025 19:14:39 +0300
Message-ID: <2644b108d9bb1f50d7960559702d28d170a32f17@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Wed, 04 Jun 2025, "Govindapillai, Vinod" <vinod.govindapillai@intel.com>=
 wrote:
> On Tue, 2025-05-27 at 12:25 +0300, Jani Nikula wrote:
>> Have just one place to figure out the pointer to struct dram_info, and
>> pass that around. This simplifies future changes.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>> =C2=A0drivers/gpu/drm/i915/display/intel_bw.c | 44 ++++++++++++---------=
----
>> =C2=A01 file changed, 22 insertions(+), 22 deletions(-)
>>=20
>
> Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>

Many thanks for the reviews, pushed the series to drm-intel-next.

BR,
Jani.


--=20
Jani Nikula, Intel
