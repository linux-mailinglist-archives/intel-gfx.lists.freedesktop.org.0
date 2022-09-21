Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 934FD5BF85C
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 09:56:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 704E610E8BF;
	Wed, 21 Sep 2022 07:56:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B6F710E8BF
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 07:56:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663747002; x=1695283002;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DbtePaJbx3jlW8yJQbjuq1YEkmp6etXRfc3V/VE4PsU=;
 b=WkQNEPbECWj+fApKjvPcDY8sK6DppX7EOFbB6hwD+BBfMCliu1W5pK+y
 SOaBkBIf5f5k86aJ/99eASBi480z3X1NxWYwaarsQALwbiqYIjCi0abx/
 8v2TwXEM98TEgEFjN89II1M/9rq/xqPSbBlbnX2BYWB9i27n9HDKcMW1z
 CIxoKGcov5HcbWXOCVvcvSLzjd2nmaRfFeWeG4iRV/EoNUUkmj5x/8EzH
 t3VDJtFRIAD/6yP31y/K9mqUXjg7HSr6g7ZPjGQlBAE/XfBcPMlMlU75r
 CKEJhP2ocRmtaHgFx4lPUTZBjBxudMRjzFB8Lnw7mNmpa/G98xUBmDvhW A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="280307085"
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="280307085"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 00:56:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="596868249"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 21 Sep 2022 00:56:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 Sep 2022 10:56:38 +0300
Date: Wed, 21 Sep 2022 10:56:38 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
Message-ID: <YyrDtvelxyo2MEGe@intel.com>
References: <20220906174609.23494-1-ville.syrjala@linux.intel.com>
 <6e71f8d2-fd50-4550-5168-240c6f703c7f@linux.intel.com>
 <YxoGJrriiWt1r5uT@intel.com>
 <7280ab53-dfed-4b37-2bfc-b731010c5cd2@linux.intel.com>
 <Yxrrc33z38fvf22h@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Yxrrc33z38fvf22h@intel.com>
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

On Fri, Sep 09, 2022 at 10:29:55AM +0300, Ville Syrjälä wrote:
> On Thu, Sep 08, 2022 at 09:34:04PM +0200, Das, Nirmoy wrote:
> > 
> > On 9/8/2022 5:11 PM, Ville Syrjälä wrote:
> > > On Thu, Sep 08, 2022 at 04:32:56PM +0200, Das, Nirmoy wrote:
> > >> Hi Ville,
> > >>
> > >>
> > >> I fixed a similar issue in DII but I couldn't reproduce it in drm
> > >>
> > >> http://intel-gfx-pw.fi.intel.com/patch/228850/?series=15910&rev=2.
> > >>
> > >> I wonder if that fixes the problem you are facing then I can send that
> > >> to drm.
> > > CI can tell you. It has been complaining about this for ages
> > 
> > 
> > Could you please share a url/failed test name. I must be searching the 
> > wrong hw/test(https://intel-gfx-ci.01.org/tree/drm-tip/fi-ivb-3770.html).
> 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12102/fi-pnv-d510/igt@i915_selftest@live@requests.html
> 
> gen3 hits it nearly 100% of the time in the live selftests.
> IIRC it also looked like shard-snb has also hit it more
> sporadically in some tests.
> 
> There's also at least one bug about it
> https://gitlab.freedesktop.org/drm/intel/-/issues/4528
> which I guess is why ci is able to ignore this, and that
> then has enabled all the humans to ignore it as well.

Did we get anywhere with this? I'm getting tired of 
seeing the red in CI.

-- 
Ville Syrjälä
Intel
