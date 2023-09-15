Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BAD47A1EB7
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 14:29:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D70510E185;
	Fri, 15 Sep 2023 12:29:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55A1710E180;
 Fri, 15 Sep 2023 12:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694780945; x=1726316945;
 h=date:from:to:cc:subject:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zrwsz5aEGgHZ4CZb0X2SXkVAMcFPB9DIHuHCs6DmJj0=;
 b=EY4aGFydFTicf9D5m5YPfdmyK1I5esFZFkSLKpTpD94nKQr6amvc9jOB
 TUL2q6zJbGxJcV0Ux958GcxGv8BMFlF/jDKmmBBnzWaxruAMPnQvZx/Yu
 u/36croWp1d5ehDQJn5h0pOwLilcaic2CmxUcWQvj5pAGJ4NuxM+Xr+xl
 scJRPkw+CTuhjBJGo/33HucLgWhprYH4AOco+HVaguNXdS/WH5Z8KCkkb
 36+IddQisadZ2choNfaM1d9XECw4mOUbTyNenPFKr5q2G7sG9GyGycIAI
 42pKbuj5GgfQOMJjB6N0dM7jCdIEsJzqEcVGX0gbvG10coKOQEkgzk6fY w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="359493420"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="359493420"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 05:28:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="780078938"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="780078938"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 05:28:54 -0700
Received: from maurocar-mobl2 (unknown [10.252.9.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 6ADBD580DC7;
 Fri, 15 Sep 2023 05:28:52 -0700 (PDT)
Date: Fri, 15 Sep 2023 14:28:49 +0200
From: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20230915142849.5c620a00@maurocar-mobl2>
In-Reply-To: <20230908123233.137134-32-janusz.krzysztofik@linux.intel.com>
References: <20230908123233.137134-19-janusz.krzysztofik@linux.intel.com>
 <20230908123233.137134-32-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t v2 13/17] lib/ktap: Reimplement KTAP
 parser
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
Cc: intel-gfx@lists.freedesktop.org, Dominik Karol =?UTF-8?B?UGnEhXRrb3dza2k=?=
 <dominik.karol.piatkowski@intel.com>, igt-dev@lists.freedesktop.org,
 Isabella Basso <isabbasso@riseup.net>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri,  8 Sep 2023 14:32:47 +0200
Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:

Forgot to mention on my past review:

> +				       &n, &len) == 1 && len == strlen(buf))) {
> +		/*
> +		 * TODO: drop the following workaround as soon as
> +		 * kernel side issue of missing lines with top level
> +		 * KTAP version and test suite plan is fixed.
> +		 */

Please add a link to lore with the thread discussing the issue upstream,
as it can be helpful while this workaround is here.

Also, I would place the workaround on a separate patch, to make
easier to revert it when upstream fixes it.
