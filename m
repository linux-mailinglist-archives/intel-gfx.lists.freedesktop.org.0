Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6386AF8C17
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jul 2025 10:40:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53E4B10E16F;
	Fri,  4 Jul 2025 08:40:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rq4tNqpu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DFB610E98A;
 Fri,  4 Jul 2025 08:40:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751618428; x=1783154428;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=4MhLLZVxmgDwM/Tau4HiEsocpevlaGtLp4cPRiYCAg4=;
 b=Rq4tNqpuRBbz/rgbf0BT7WnuZg8nK8C0ZuEdYqvXAX8XkPPn6ju58/h5
 7WbN4DFFDQYnJbt+HLYVeR713acDHODci87poWbRlHjv20lkPZm519CZd
 id4i+qoVwufRfUQxfP7CzbNwtOm1AkgqyqgNN7+M1VYxfaPEaWiA6KQM9
 g+n1uslCYvO3jei7/7nJitorzDmgU2d29fMt/Pb4KrlTFOG3MkYAxfxgu
 4HlwnXEhj2UgHpAjn/4KJAp1Hgi0pK/cmMJC9qauhGEJiUbUiFRK5QAoP
 Xo8u44JfvuESj0xV3AzdwcanhCn16JVlU1LhVUD/PNxOri6HpWqVHTdJU w==;
X-CSE-ConnectionGUID: wXUs9LwiTcGvSX4Zt4b5Lg==
X-CSE-MsgGUID: 96z20f7GSRWw3zA2s0F5yA==
X-IronPort-AV: E=McAfee;i="6800,10657,11483"; a="54049611"
X-IronPort-AV: E=Sophos;i="6.16,286,1744095600"; d="scan'208";a="54049611"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2025 01:40:27 -0700
X-CSE-ConnectionGUID: JgE13aYOTnCKuRgR/xXS4A==
X-CSE-MsgGUID: 8mE3MhZaRNaExJppMipy4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,286,1744095600"; d="scan'208";a="185547052"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.102])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2025 01:40:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, Ville Syrjala
 <ville.syrjala@linux.intel.com>
Cc: linux-kernel@vger.kernel.org, Dibin
 Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>, Imre
 Deak <imre.deak@intel.com>, David Laight <david.laight.linux@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Matt Wagantall
 <mattw@codeaurora.org>, Dejin Zheng <zhengdejin5@gmail.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/4] iopoll: Generalize read_poll_timeout() into
 poll_timeout_us()
In-Reply-To: <l2dmr55iucsg55e2qtsf46fn3huy5znd4tctzqcr7vq4durr3c@4xgp5ch3vrfl>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250702223439.19752-1-ville.syrjala@linux.intel.com>
 <l2dmr55iucsg55e2qtsf46fn3huy5znd4tctzqcr7vq4durr3c@4xgp5ch3vrfl>
Date: Fri, 04 Jul 2025 11:40:20 +0300
Message-ID: <edb1261d2cb3addea74d07e8be4d8eb54613ab54@intel.com>
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

On Thu, 03 Jul 2025, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Thu, Jul 03, 2025 at 01:34:36AM +0300, Ville Syrj=C3=A4l=C3=A4 wrote:
>>-#define read_poll_timeout(op, val, cond, sleep_us, timeout_us, \
>>-				sleep_before_read, args...) \
>>+#define poll_timeout_us(op, cond, sleep_us, timeout_us, sleep_before_op)=
 \
>
> nit: could use use usec/msec etc that pairs nicely with USEC_PER_SEC
> and friends, also used by tools like perf and are a little bit more
> greppable than ms/us?

This horrendous quick and dirty git grep popularity contest says _us/_ms
suffixes are much more popular than _usec/_msec in kernel:

$ git grep -aoh "_[mu]s\(ec\)\?[^a-zA-Z0-9_]" | sed 's/[^a-zA-Z0-9_]$//' | =
sort | uniq -c | sort -rn
   8603 _us
   5901 _ms
   1214 _usec
    736 _msec

BR,
Jani.

--=20
Jani Nikula, Intel
