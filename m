Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A905B2FCB
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 09:30:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60C3510EBEA;
	Fri,  9 Sep 2022 07:30:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F41CF10EBEA
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Sep 2022 07:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662708599; x=1694244599;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=SXKWGBV6c6DpbHruM2BWNyNtgq+5dEbEokm/LSmaFjQ=;
 b=RZkikPgHbegmV2vzU2Ly5hXzo46yYlKeTKXGbaUS/HyBYWT91WeEJ0e8
 QdOy6PLpbMPg27m0lmRQWLGzdgy8aOyeGtys133yCMqHtadv1C2+sO9/d
 GzfIqsipAjNNbNMiwH9VbFo7y8DMdY3fAdQjg4cKms5ziZe3oaTmZT4Kn
 0K8YPv/AgDHn+WEWL7ta8FqY5YGGWBNDE2CN4EhIPKtYM9PxvlYbB3+Oc
 xBSCe4f+yTe+qfvzehu+s5OQktY4IwD1ur8q3dLiym7CirNUINqHuh17/
 THJQL/cCXawJ8aE4YB3jFOUwAePsWFX2w/NREePaD2Ekoq14xnqd1u3+L g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="298756455"
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; d="scan'208";a="298756455"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 00:29:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; d="scan'208";a="704315275"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by FMSMGA003.fm.intel.com with SMTP; 09 Sep 2022 00:29:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 09 Sep 2022 10:29:55 +0300
Date: Fri, 9 Sep 2022 10:29:55 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
Message-ID: <Yxrrc33z38fvf22h@intel.com>
References: <20220906174609.23494-1-ville.syrjala@linux.intel.com>
 <6e71f8d2-fd50-4550-5168-240c6f703c7f@linux.intel.com>
 <YxoGJrriiWt1r5uT@intel.com>
 <7280ab53-dfed-4b37-2bfc-b731010c5cd2@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7280ab53-dfed-4b37-2bfc-b731010c5cd2@linux.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Kick rcu harder to free objects
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 08, 2022 at 09:34:04PM +0200, Das, Nirmoy wrote:
> 
> On 9/8/2022 5:11 PM, Ville Syrjälä wrote:
> > On Thu, Sep 08, 2022 at 04:32:56PM +0200, Das, Nirmoy wrote:
> >> Hi Ville,
> >>
> >>
> >> I fixed a similar issue in DII but I couldn't reproduce it in drm
> >>
> >> http://intel-gfx-pw.fi.intel.com/patch/228850/?series=15910&rev=2.
> >>
> >> I wonder if that fixes the problem you are facing then I can send that
> >> to drm.
> > CI can tell you. It has been complaining about this for ages
> 
> 
> Could you please share a url/failed test name. I must be searching the 
> wrong hw/test(https://intel-gfx-ci.01.org/tree/drm-tip/fi-ivb-3770.html).

https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12102/fi-pnv-d510/igt@i915_selftest@live@requests.html

gen3 hits it nearly 100% of the time in the live selftests.
IIRC it also looked like shard-snb has also hit it more
sporadically in some tests.

There's also at least one bug about it
https://gitlab.freedesktop.org/drm/intel/-/issues/4528
which I guess is why ci is able to ignore this, and that
then has enabled all the humans to ignore it as well.

-- 
Ville Syrjälä
Intel
