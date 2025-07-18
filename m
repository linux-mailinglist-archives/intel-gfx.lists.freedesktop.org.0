Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F0BB0A1DB
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jul 2025 13:23:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D12D10E097;
	Fri, 18 Jul 2025 11:22:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MAyA3bTD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB2AF10E972
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jul 2025 11:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752837778; x=1784373778;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=wJ0ndxqo0F9qQv029cuoUxYEzTHN8F+tKDaHTPnGZqs=;
 b=MAyA3bTDuveIi2Wj0CBW0m8tXNupVtYHIpgfnDy5cuc642xmc2Y7SGj6
 fD9fQGTShmAxtNLahAym2XfFpkK60iT3vL42D21MMn598TUcUtmlhyyr7
 FgHsKNl14EsrcPzRo5ISyWZEKb9lqc9FibOmTE94Z9UGzkTJvk76jGfUn
 svesA17qqI1n/qwiyflrzQDVTd2bdG2roYeUTIRNW9DogpQUeiqV6lCIl
 LGudNMLRdBrZJJ/7N5YpDEOFfkHmlncovRQZObgVsafa0A9HHCTqsKPOF
 JdQqPHB3JHzUOCC3t4Dv5PGY5eqI5BXg/LD8w7AEw83jzl0LA2+ZgPXCB g==;
X-CSE-ConnectionGUID: QSwGMQaKQvOcl8VKARY1EA==
X-CSE-MsgGUID: fPs/29VgTAKGOU0n+TU5bQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="65703879"
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="65703879"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 04:22:58 -0700
X-CSE-ConnectionGUID: LNwGYgpPQXWayJVOJNkriw==
X-CSE-MsgGUID: RrjTj6YiRX+R7QFg4Jt4Gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="157851997"
Received: from dev-409.igk.intel.com (HELO localhost) ([10.211.128.26])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 04:22:56 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250718102752.684975-5-sebastian.brzezinka@intel.com>
References: <20250718102752.684975-1-sebastian.brzezinka@intel.com>
 <20250718102752.684975-5-sebastian.brzezinka@intel.com>
Subject: Re: [PATCH v3 4/4] drm/i915: Use dedicated return variable in
 eb_relocate_vma()
From: Chris Wilson <chris.p.wilson@linux.intel.com>
Cc: andi.shyti@linux.intel.com, krzysztof.karas@intel.com,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: andi.shyti@linux.intel.com, intel-gfx@lists.freedesktop.org,
 krzysztof.karas@intel.com, sebastian.brzezinka@intel.com
Date: Fri, 18 Jul 2025 13:21:53 +0200
Message-ID: <175283771369.466219.1061047598105119253@DEV-409>
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

Quoting Sebastian Brzezinka (2025-07-18 12:28:26)
> Introduce a separate `ret` variable to hold the return value in
> `eb_relocate_vma()`, instead of overloading `remain` for both loop
> control and error reporting.

No need.
-Chris
