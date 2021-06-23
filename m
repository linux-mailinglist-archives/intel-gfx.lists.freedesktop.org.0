Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F8E93B1AAF
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jun 2021 15:03:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B2836E8DB;
	Wed, 23 Jun 2021 13:03:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F2AE6E0E9;
 Wed, 23 Jun 2021 13:03:46 +0000 (UTC)
IronPort-SDR: 3Isif6/xULmbnWRhHQTp2ZARiMMazbCkP5lqUnUIcTzgsN7qaiG77IxdkXBvdcZvMFHL7VYIpl
 4uuDWuIBGhjw==
X-IronPort-AV: E=McAfee;i="6200,9189,10023"; a="194396048"
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="194396048"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 06:03:45 -0700
IronPort-SDR: h7T5GybQ79I0XwNNWAsS1NwO/1M3FqNbUIr9vQE1h+LwePnCpRI4CKZwPwsUnNsR7NBlAOiTYM
 Ls1BwZhYa1fg==
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="423688114"
Received: from huynhn-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.249.35.176])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 06:03:43 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Daniel Vetter <daniel@ffwll.ch>,
 Matthew Auld <matthew.william.auld@gmail.com>
In-Reply-To: <YMuEYsMqbOUW7A2T@phenom.ffwll.local>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210614092227.97421-1-matthew.auld@intel.com>
 <CAM0jSHPacC6S6u1eCgaDUd6UNNJV5UgqQSBzRbtNXSzw3mdLyg@mail.gmail.com>
 <YMuEYsMqbOUW7A2T@phenom.ffwll.local>
Date: Wed, 23 Jun 2021 16:03:39 +0300
Message-ID: <87zgvgu40k.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: allow DG1 autoprobe for
 CONFIG_BROKEN
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
Cc: Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 17 Jun 2021, Daniel Vetter <daniel@ffwll.ch> wrote:
> I think stuffing this into topic/core-for-CI is fine, lets wait a bit more
> until mesa and everything is ready with adding the pciids to an official
> tree.

On a related note, I think we'll need rationale documented for each
commit in topic/core-for-CI going forward. Why is the commit in
topic/core-for-CI?  What's the plan for moving it out? Etc.

topic/core-for-CI has become a dumping ground for odd patches without
proper rationale why they exist. The ideal is zero commits in the
branch.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
