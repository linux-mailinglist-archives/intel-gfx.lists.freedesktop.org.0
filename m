Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B39A55058
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 17:17:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7780E10E826;
	Thu,  6 Mar 2025 16:16:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nt1iwpcR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 630FF10E826
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Mar 2025 16:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741277818; x=1772813818;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=jOXB0RnOs3mW/+Co3atiUxX/Egxg8sRfoiKA4mahYXI=;
 b=Nt1iwpcRuuXHOsG9PiaFCcJjQ0ROrNwCo4jmcNlnigWt5HxWlytZiub9
 2pk2Y6u3jKGKcR2wUoHQtGHS1DPfuBejZuS9I/pQAgku6gV82sDHk2dFJ
 bGE0TMiPm4BmGX9bp3NKT4GSFOOXWMAbxd1ZE8ey3DVp9wcEpGCSuIXSc
 WbG1ZzQWcex69olYiqIuCAwYNtAXvGMrrYCgxP8YpRFMjZIG6g9bRRb94
 jcw/08DFvQukj60B9uCn1GmK9Vvj/t8j9SB4xKtbUBN5qqPkttaLLdWJC
 OldDI8qsEw2du1ppei5YiqTBj7xmwBUQs2I7MICymtRSCr9Qi8/WUH+7E Q==;
X-CSE-ConnectionGUID: XHiUMN+QQXKD0RO0Rzb9ZQ==
X-CSE-MsgGUID: +g9ZNHGeQfKp8EhOD/UY3Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="42496980"
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="42496980"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 08:16:58 -0800
X-CSE-ConnectionGUID: Dw8C0kGMQre8S1IC0NNvBA==
X-CSE-MsgGUID: ZuTZSXrsT16i9QLAVzbgmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118986002"
Received: from dev-409.igk.intel.com (HELO localhost) ([10.211.128.109])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 08:16:56 -0800
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <vabwqm5bo2jvcvdz2oicooaqmef4qeej5ffzcyzfnjlna6dsha@fdtdyy3afn3d>
References: <wlnlppj2mmqqv2rrsboy2uddzkxiuxcsevgfkqjvo3f7hdtkxs@arkfgtgqrqyx>
 <3aa4a0a8-1668-40e4-a57d-5bd983af5ba5@ursulin.net>
 <174125743728.766812.11198274438700228285@DEV-409>
 <vabwqm5bo2jvcvdz2oicooaqmef4qeej5ffzcyzfnjlna6dsha@fdtdyy3afn3d>
Subject: Re: [PATCH] i915/gt/selftest_lrc: Remove timestamp test
From: Chris Wilson <chris.p.wilson@linux.intel.com>
Cc: Mikolaj Wasiak <mikolaj.wasiak@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, intel-gfx@lists.freedesktop.org,
 Andi Shyti <andi.shyti@intel.com>, chris.p.wilson@intel.com
To: Krzysztof Karas <krzysztof.karas@intel.com>
Date: Thu, 06 Mar 2025 17:13:12 +0100
Message-ID: <174127759210.770527.7256665414313074739@DEV-409>
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

Quoting Krzysztof Karas (2025-03-06 16:07:02)
> > - remove the selftest and completely forget about the HW issue, or
> Can we do anything about that HW issue? :)

The root cause was found.

> > - hide the selftest and stop it running on known bad platforms?
> This seems like it could be a solution here. I have a question
> though: would that render the test hidden behind that setting
> unused in CI? Or is it a similar situation to "FIXME" notes that
> tell us that somebody is aware of the issue, but could not
> address it at the time?

We don't enable CONFIG_DRM_I915_SELFTEST_BROKEN for CI builds.
-Chris
