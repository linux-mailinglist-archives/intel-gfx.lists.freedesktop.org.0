Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF9D4DCF1E
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 21:05:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24CC110E0EC;
	Thu, 17 Mar 2022 20:05:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91FC210E0EC
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 20:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647547505; x=1679083505;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=c1fgC+s3eKrDLaG/r8M6/dfAUvqTV857Kr/Spq/0l9Y=;
 b=BhP6G4hlFpM5Ui6fP9mKnFc7jnNl/KhfdlisFZCjoBgogVIMkOpRYlOu
 M/ugxm4QtJO56l/SrkIDWv4gWVED2O+08W58MWZJYktWgfSvUqYdriRLr
 Z2PdmeS/YXnpnlgmu4yT6Ffs1rzYfTMrkWVC+75fQ+JTDim/aKxfW+Ipr
 e8z76b7ZSXcwSGZtwUkz3qqxggWcX/HlboR5q25lqkANZxiyOdp5kOU+H
 T51KfrmSfITTPY9EVg1+JjQfhqY8ZtkJWnbS4ikGZDQ/C5fE2xG1ERQgU
 ITKfWr9eZIaCKK1Tw1oebBb7MswGOGRpgLo1Lu1xq3WvsgTCHwtwsKdBv w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="244425609"
X-IronPort-AV: E=Sophos;i="5.90,190,1643702400"; d="scan'208";a="244425609"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 13:04:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,190,1643702400"; d="scan'208";a="691065225"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga001.fm.intel.com with SMTP; 17 Mar 2022 13:04:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Mar 2022 22:04:13 +0200
Date: Thu, 17 Mar 2022 22:04:13 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YjOUPRwkitfDYkxh@intel.com>
References: <20220317171948.10400-1-ville.syrjala@linux.intel.com>
 <20220317171948.10400-4-ville.syrjala@linux.intel.com>
 <87ee30mm36.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87ee30mm36.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 03/11] drm/i915/bios: Use the copy of the
 LFP data table always
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

On Thu, Mar 17, 2022 at 09:10:37PM +0200, Jani Nikula wrote:
> On Thu, 17 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Currently get_lvds_fp_timing() still returns a pointer to the original
> > data block rather than our copy. Let's convert the data pointer offsets
> > to be relative to the data block rather than the whole BDB. With that
> > we can make get_lvds_fp_timing() return a pointer to the copy.
> 
> Ugh, so just as I R-b'd the previous patch... I realize it's all broken
> without this, right? It does pointer arithmetics between bdb header and
> the allocated bdb for ptrs?
> 
> Do we want a broken step?

Probably not. Somehow I convinced myself that the artihmetic was being
done between the original block and bdb header. So now I need to figure
out how to get out of this mess, I guess ideally without having to just
squash the two patches together...

-- 
Ville Syrjälä
Intel
