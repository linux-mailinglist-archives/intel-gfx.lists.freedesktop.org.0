Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA08493008
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 22:37:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6943D89E69;
	Tue, 18 Jan 2022 21:37:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFB4D89E69
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jan 2022 21:37:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642541839; x=1674077839;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=i7fahNjHuMeld7ex970vhDXfjAHjtJRdcm2iUTfH3M4=;
 b=XwsSsho1iUOPPqMEoZXlt2raY4ycRbNcT2Yw7wBA5l9E7vE7mqBTVjn1
 559ajAsYUVN/is3nV18RJXtVU24iYe0XVRkjIEpcFIbtrSfHzuuIOq0tj
 9iMExo563kv4tzapBCZ88Y9C6K+YzRDiiZ9FMgftStf9IbeZOxH+ZpilD
 bgQQZ/Dbjb4jXwojGdoZaLxLYLZY07LVS4SImoSSi5aXG/3ThhpjehZCE
 tGtVjPQlgjLYuj7M9f+3bvdBe7bR6XkMmQHqwZMHEYh75NmjgmaGa60Ts
 Vrnc/SyitNLAOFvx3CizVX0wS7Lukc7dS8ZMy7LNyc5pbL8RWtApL+Tme A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10231"; a="225594964"
X-IronPort-AV: E=Sophos;i="5.88,298,1635231600"; d="scan'208";a="225594964"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 13:37:19 -0800
X-IronPort-AV: E=Sophos;i="5.88,298,1635231600"; d="scan'208";a="671972002"
Received: from ftaylor1-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.190.69])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 13:37:19 -0800
Date: Tue, 18 Jan 2022 13:37:18 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Tolakanahalli Pradeep,
 Madhumitha" <madhumitha.tolakanahalli.pradeep@intel.com>
Message-ID: <20220118213718.kfn557xmupo2y4fr@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20211217034141.198033-1-madhumitha.tolakanahalli.pradeep@intel.com>
 <4c02824ccbb7d40c15fc20ea272013c41e9aa54a.camel@intel.com>
 <2a4cc866a3c24ccfb55dab8bdfc18547957332f1.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <2a4cc866a3c24ccfb55dab8bdfc18547957332f1.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Eliminate remnant GEN<n>
 references
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 23, 2021 at 03:18:57AM +0000, Tolakanahalli Pradeep, Madhumitha wrote:
>On Fri, 2021-12-17 at 21:37 +0000, Yokoyama, Caz wrote:
>> On Thu, 2021-12-16 at 19:41 -0800, Madhumitha Tolakanahalli Pradeep
>> wrote:
>> > Replace GEN<n> with DISPLAY_VER<n>, in line with the naming
>> > convention
>> > followed in the i915 driver code.
>> >
>> > Signed-off-by: Madhumitha Tolakanahalli Pradeep <
>> > madhumitha.tolakanahalli.pradeep@intel.com>

I was checking to apply this today, but BAT is failing on CI and it
didn't trigger the full run. Error seems unrelated and I don't think
this would trigger any error in the machines in CI, but I'd prefer to
merge this with a clean run.

Can you re-submit or trigger it again via patchwork if the patch still
applies?

thanks
Lucas De Marchi
