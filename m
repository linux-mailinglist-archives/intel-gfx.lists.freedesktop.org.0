Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D341471AD
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 20:22:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C24FC6FE3E;
	Thu, 23 Jan 2020 19:22:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B733E6FE3D;
 Thu, 23 Jan 2020 19:22:12 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 11:21:47 -0800
X-IronPort-AV: E=Sophos;i="5.70,354,1574150400"; d="scan'208";a="216356356"
Received: from dbstims-dev.fm.intel.com ([10.1.27.172])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 11:21:46 -0800
Date: Thu, 23 Jan 2020 11:21:45 -0800
From: Dale B Stimson <dale.b.stimson@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20200123192143.GA1284@dbstims-dev.fm.intel.com>
References: <cover.1579731227.git.dale.b.stimson@intel.com>
 <76818a8047c4b9da76d0619c7b8f58c89449b4ed.1579731227.git.dale.b.stimson@intel.com>
 <225f88d1044053674cbd632998c69c0c677a530e.1579731227.git.dale.b.stimson@intel.com>
 <157977054018.18920.9879323586181021015@skylake-alporthouse-com>
 <c192e00d-1997-c714-50be-91fc64f9cc29@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c192e00d-1997-c714-50be-91fc64f9cc29@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 2/2] DBS:
 tests/i915/gem_ctx_isolation: use the gem_engine_topology library, part 2
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
Cc: intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org,
 Bommu Krishnaiah <krishnaiah.bommu@intel.com>, "Melkaveri,
 Arjun" <arjun.melkaveri@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-01-23 15:59:33, Tvrtko Ursulin wrote:
> gem_context_clone_with_engines was agreed upon in principle some time ago
> but never implemented. I have now posted this as
> https://patchwork.freedesktop.org/series/72464/ and plan to merge it once it
> passes CI.
> 
> Dale, Arjun, Krishnaiah and Sreedhar - you have in progress patches which
> use gem_context_set_all_engines which will be gone and you will need to
> adjust your work accordingly.
> 
> Sreedhar specifically for your change in gem_exec_parallel we will need to
> add a new helper which transfers the engine map from one fd/context to
> another. I will copy you on a patch which will add it.

I have a new iteration of the gem_ctx_isolation patches (on top of your
patch and using gem_context_clone_with_engines) which I will submit to the
ML as soon as your patch merges.

Thanks,
Dale
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
