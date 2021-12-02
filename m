Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38FC8466221
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Dec 2021 12:13:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7157B6EEAB;
	Thu,  2 Dec 2021 11:13:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 600416EEA8
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Dec 2021 11:13:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="300076270"
X-IronPort-AV: E=Sophos;i="5.87,281,1631602800"; d="scan'208";a="300076270"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2021 03:13:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,281,1631602800"; d="scan'208";a="655354072"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 02 Dec 2021 03:13:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 Dec 2021 13:13:28 +0200
Date: Thu, 2 Dec 2021 13:13:28 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Srinivas, Vidya" <vidya.srinivas@intel.com>
Message-ID: <YaiqWO2RBU3h5L3k@intel.com>
References: <20211130171220.8622-1-vidya.srinivas@intel.com>
 <20211201034727.1666-1-vidya.srinivas@intel.com>
 <YaeOkxURq25NfLhy@intel.com>
 <DM6PR11MB420430F778CF34CC8C18A9BA89699@DM6PR11MB4204.namprd11.prod.outlook.com>
 <YaimMOeNzuSBgVHf@intel.com>
 <DM6PR11MB4204191747EEC6D75ECF7D7989699@DM6PR11MB4204.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM6PR11MB4204191747EEC6D75ECF7D7989699@DM6PR11MB4204.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add PLANE_CUS_CTL restriction in
 max_width
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
Cc: "Yashashvi, Shantam" <shantam.yashashvi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 02, 2021 at 11:10:37AM +0000, Srinivas, Vidya wrote:
> 
> 
> > -----Original Message-----
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Sent: Thursday, December 2, 2021 4:26 PM
> > To: Srinivas, Vidya <vidya.srinivas@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Yashashvi, Shantam
> > <shantam.yashashvi@intel.com>
> > Subject: Re: [PATCH] drm/i915: Add PLANE_CUS_CTL restriction in max_width
> > 
> > On Thu, Dec 02, 2021 at 03:25:34AM +0000, Srinivas, Vidya wrote:
> > >
> > >
> > > > -----Original Message-----
> > > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > Sent: Wednesday, December 1, 2021 8:33 PM
> > > > To: Srinivas, Vidya <vidya.srinivas@intel.com>
> > > > Cc: intel-gfx@lists.freedesktop.org; Yashashvi, Shantam
> > > > <shantam.yashashvi@intel.com>
> > > > Subject: Re: [PATCH] drm/i915: Add PLANE_CUS_CTL restriction in
> > > > max_width
> > > >
> > > > On Wed, Dec 01, 2021 at 09:17:27AM +0530, Vidya Srinivas wrote:
> > > > > PLANE_CUS_CTL has a restriction of 4096 width even though
> > > > > PLANE_SIZE and scaler size registers supports max 5120.
> > > > > Take care of this restriction in max_width.
> > > > >
> > > > > Without this patch, when 5k content is sent on HDR plane with NV12
> > > > > content, FIFO underrun is seen and screen blanks out.
> > > > >
> > > > > v2: Addressed review comments from Ville. Added separate functions
> > > > > for max_width - for HDR and SDR
> > > > >
> > > > > v3: Addressed review comments from Ville. Changed names of HDR and
> > > > SDR
> > > > > max_width functions to icl_hdr_plane_max_width and
> > > > > icl_sdr_plane_max_width
> > > > >
> > > > > v4: Fixed paranthesis alignment. No code change
> > > > >
> > > > > Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > > Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> > > > > Signed-off-by: Yashashvi Shantam <shantam.yashashvi@intel.com>
> > > >
> > > > Hmm. What's this extra sob doing here?
> > >
> > > Hello Ville, sincere apologies. When I run checkpatch.pl I see no warnings
> > on my host.
> > > However patchwork keeps reporting paranthesis alignment warning.
> > > I tried to push it multiple times after running checkpatch.pl on my host.
> > Really sorry about that.
> > 
> > I was asking about the extra "signed-off-by" (sob).
> 
> Hello Ville, I am really sorry about that. Should I keep single signed-off-by and push the patch
> again? Kindly let me know. Thank you.

Yeah, please resend with proper signed-off-by.

-- 
Ville Syrjälä
Intel
