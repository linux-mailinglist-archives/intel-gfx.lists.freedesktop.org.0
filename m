Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C1FB0A1CC
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jul 2025 13:18:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4B0E10E964;
	Fri, 18 Jul 2025 11:18:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BEHGj07Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF62F10E964
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jul 2025 11:18:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752837484; x=1784373484;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=HV8gRb/SDxSGc+S/iUYFD+IoC/JYFrx74z3CtoKHS4E=;
 b=BEHGj07YxFhp/hCWTt2kRd5ahCdvAmbfHTVMaVgjPTwdQkMgDQOfSPh2
 12+ZvmKtolqX3ge10ko7ASJKfomgYFGjmgXn2oTaNbnwe26gj2yQHZTg2
 V+j/ZJG0B+DbsNuH9b1u9lL0lOE8sashl/coqjjI/rgj8eLxe7rEFvkY7
 O1y/STi8e/DMV57U74CYe0BXCEnQbIoUZoYZWNmtrfYqjTAwV+/9pRXQp
 iusgTNtWq7F6FjSwQHPL3QEvLzlRdNDJttuC3fQ7aXU6DKnWlaDcmHH+k
 u2zqPPJhayVf69gcHsbEEJM480+0RnV2GdXYGlXilkpiEu6L3lXDubr2a g==;
X-CSE-ConnectionGUID: YI945wjtSF6QcH2RIyKOcw==
X-CSE-MsgGUID: i8SEtWU4QWaRy4b/wT15Og==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="54986854"
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="54986854"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 04:18:03 -0700
X-CSE-ConnectionGUID: BRU/KiXPRLqGrzPqQyaaEw==
X-CSE-MsgGUID: 5GrE3WSUSCGhh3f8V7Vf7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="157706991"
Received: from dev-409.igk.intel.com (HELO localhost) ([10.211.128.26])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 04:18:01 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250718102752.684975-3-sebastian.brzezinka@intel.com>
References: <20250718102752.684975-1-sebastian.brzezinka@intel.com>
 <20250718102752.684975-3-sebastian.brzezinka@intel.com>
Subject: Re: [PATCH v3 2/4] drm/i915: Replaced hardcoded value 4095 with
 PAGE_SIZE - 1
From: Chris Wilson <chris.p.wilson@linux.intel.com>
Cc: andi.shyti@linux.intel.com, krzysztof.karas@intel.com,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: andi.shyti@linux.intel.com, intel-gfx@lists.freedesktop.org,
 krzysztof.karas@intel.com, sebastian.brzezinka@intel.com
Date: Fri, 18 Jul 2025 13:16:58 +0200
Message-ID: <175283741896.466116.14256026238996065595@DEV-409>
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

Quoting Sebastian Brzezinka (2025-07-18 12:28:11)
> The value 4095 is intended to represent PAGE_SIZE - 1, as stated
> in the commit that introduced this change:
> commit 5f22cc0b134a ("drm/i915: Fix mismatch between misplaced
>                       vma check and vma insert")

No, that is exactly the misconception I wanted to avoid.

The core kernel's system PAGE_SIZE is not necessarily the same as the
paging boundary used by the GTT.
-Chris
