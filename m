Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BDA743C89F
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 13:31:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DD7C6E88B;
	Wed, 27 Oct 2021 11:31:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBA866E88B
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Oct 2021 11:31:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="230086571"
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="230086571"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 04:31:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="447178205"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 27 Oct 2021 04:31:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Oct 2021 14:31:21 +0300
Date: Wed, 27 Oct 2021 14:31:21 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Message-ID: <YXk4iarkYqJYPCNu@intel.com>
References: <20211022103304.24164-1-ville.syrjala@linux.intel.com>
 <20211022103304.24164-3-ville.syrjala@linux.intel.com>
 <2e2e91157104791c5c209b4123084f1a4c6608bd.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2e2e91157104791c5c209b4123084f1a4c6608bd.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 2/9] Revert "drm/i915/display: Disable
 audio, DRRS and PSR before planes"
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

On Tue, Oct 26, 2021 at 07:39:27PM +0000, Souza, Jose wrote:
> On Fri, 2021-10-22 at 13:32 +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Disabling planes in the middle of the modeset seuqnece does not make
> > sense since userspace can anyway disable planes before the modeset
> > even starts. So when the modeset seuqence starts the set of enabled
> > planes is entirely arbitrary. Trying to sprinkle the plane disabling
> > into the modeset sequence just means more randomness and potential
> > for hard to reproduce bugs.
> > 
> > So it makes most sense to just disable all planes first so that the
> > rest of the modeset sequence remains identical regardless of which
> > planes happen to be enabled by userspace at the time.
> > 
> > This reverts commit 84030adb9e27d202a66022488bf0349a8bd45213.
> 
> With the 'drm/i915/psr: Disable PSR before modesets turn off all planes' it is now okay to revert this.
> 
> Reviewed-by: José Roberto de Souza <jose.souza@intel.com>

Thanks for the reviews everyone. Series pushed to drm-intel-next.

-- 
Ville Syrjälä
Intel
