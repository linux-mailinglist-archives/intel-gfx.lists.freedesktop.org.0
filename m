Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C4C9412E4D
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Sep 2021 07:47:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1F0B6E8FD;
	Tue, 21 Sep 2021 05:47:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9BCB6E8F9;
 Tue, 21 Sep 2021 05:47:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10113"; a="202784213"
X-IronPort-AV: E=Sophos;i="5.85,310,1624345200"; d="scan'208";a="202784213"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 22:47:09 -0700
X-IronPort-AV: E=Sophos;i="5.85,310,1624345200"; d="scan'208";a="584920749"
Received: from twallyn-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.83.37])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 22:47:09 -0700
Date: Mon, 20 Sep 2021 22:47:08 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: John Harrison <john.c.harrison@intel.com>
Cc: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Matthew Brost <matthew.brost@intel.com>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <20210921054708.p63rjkxux742op72@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210914195151.560793-1-lucas.demarchi@intel.com>
 <27c071ae-13b8-d71d-d869-e9cbd7431afd@intel.com>
 <b6b996be-b60c-41f1-e531-77c2bcdda920@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <b6b996be-b60c-41f1-e531-77c2bcdda920@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc/slpc: remove unneeded clflush
 calls
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

On Wed, Sep 15, 2021 at 12:29:12PM -0700, John Harrison wrote:
>On 9/15/2021 12:24, Belgaumkar, Vinay wrote:
>>On 9/14/2021 12:51 PM, Lucas De Marchi wrote:
>>>The clflush calls here aren't doing anything since we are not writting
>>>something and flushing the cache lines to be visible to GuC. Here the
>>>intention seems to be to make sure whatever GuC has written is visible
>>>to the CPU before we read them. However a clflush from the CPU side is
>>>the wrong instruction to use.
>Is there a right instruction to use? Either we need to verify that no 

how can there be a right instruction? If the GuC needs to flush, then
the GuC needs to do it, nothing to be done by the CPU.

Flushing the CPU cache line here is doing nothing to guarantee that what
was written by GuC hit the memory and we are reading it. Not sure why it
was actually added, but since it was added by Vinay and he reviewed this
patch, I'm assuming he also agrees

Lucas De Marchi
