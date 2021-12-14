Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F2247495B
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Dec 2021 18:27:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 246C410E190;
	Tue, 14 Dec 2021 17:27:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DC8D10E190
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Dec 2021 17:27:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="225890210"
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="225890210"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 09:27:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="505440903"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 14 Dec 2021 09:27:26 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Dec 2021 19:27:25 +0200
Date: Tue, 14 Dec 2021 19:27:25 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YbjT/f9276cVmgDE@intel.com>
References: <20211213134450.3082-1-ville.syrjala@linux.intel.com>
 <20211213134450.3082-2-ville.syrjala@linux.intel.com>
 <871r2g702r.fsf@intel.com> <YbjFh6AnBtI729+V@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YbjFh6AnBtI729+V@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 1/4] drm/i915/fbc: Parametrize FBC
 register offsets
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
Cc: Tomi Sarvela <tomi.p.sarvela@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 14, 2021 at 06:25:43PM +0200, Ville Syrjälä wrote:
> On Mon, Dec 13, 2021 at 09:54:04PM +0200, Jani Nikula wrote:
> > On Mon, 13 Dec 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > 
> > This one is only used in gvt, anyway. And that actually makes me wonder
> > if this should be breaking the build. Does CI not have gvt enabled?
> 
> Hmm. I thought it was enabled in CI, but maybe not. I've often broken
> gvt with register define changes but I've always caught it before
> pushing. I think I have gvt enabled in my "make sure all commits build
> before I push" test config, so maybe that's where I caught most of them.
> 
> Tomi, can we enable gvt in ci builds to make sure it at least still
> builds?

Actually cc Tomi..

-- 
Ville Syrjälä
Intel
