Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E28F40043E
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Sep 2021 19:42:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B69C6E8B9;
	Fri,  3 Sep 2021 17:42:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31C746E8B9
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Sep 2021 17:42:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10096"; a="280489383"
X-IronPort-AV: E=Sophos;i="5.85,265,1624345200"; d="scan'208";a="280489383"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 10:42:43 -0700
X-IronPort-AV: E=Sophos;i="5.85,265,1624345200"; d="scan'208";a="692383707"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 10:42:41 -0700
Date: Fri, 3 Sep 2021 20:42:38 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, intel-gfx@lists.freedesktop.org,
 Tomi P Sarvela <tomi.p.sarvela@intel.com>
Message-ID: <20210903174238.GB3650436@ideak-desk.fi.intel.com>
References: <20210319175720.5901-1-ville.syrjala@linux.intel.com>
 <161618092043.8631.320174419404607353@emeril.freedesktop.org>
 <YFi7kQldiwmEcc2Y@intel.com> <87r1e59ap2.fsf@intel.com>
 <YTI5QkVDRtddt8by@intel.com>
 <20210903153914.GA3650436@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210903153914.GA3650436@ideak-desk.fi.intel.com>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Enable_TPS3/4_on_all_platforms_that_support_them?=
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

On Fri, Sep 03, 2021 at 06:39:14PM +0300, Imre Deak wrote:
> On Fri, Sep 03, 2021 at 06:03:30PM +0300, Ville Syrjälä wrote:
> > On Fri, Sep 03, 2021 at 02:10:17PM +0300, Jani Nikula wrote:
> > > On Mon, 22 Mar 2021, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > > > On Fri, Mar 19, 2021 at 07:08:40PM -0000, Patchwork wrote:
> > > >> == Series Details ==
> > > >> 
> > > >> Series: drm/i915: Enable TPS3/4 on all platforms that support them
> > > >> URL   : https://patchwork.freedesktop.org/series/88186/
> > > >> State : success
> > > >> 
> > > >> == Summary ==
> > > >> 
> > > >> CI Bug Log - changes from CI_DRM_9877 -> Patchwork_19815
> > > >> ====================================================
> > > >> 
> > > >> Summary
> > > >> -------
> > > >> 
> > > >>   **SUCCESS**
> > > >
> > > > That's a bit odd considering the link training still fails with this.
> > > > Did we convert some erorrs to debugs perhaps, or maybe this never
> > > > got flagged as an error?
> > > >
> > > > <7>[    8.235008] i915 0000:00:02.0: [drm:intel_dp_start_link_train [i915]] Using LINK_RATE_SET value 03
> > > > <7>[    8.236203] i915 0000:00:02.0: [drm:intel_dp_set_signal_levels [i915]] Using vswing level 0, pre-emphasis level 0, at DPRX
> > > > <7>[    8.236341] i915 0000:00:02.0: [drm:intel_dp_program_link_training_pattern [i915]] [ENCODER:307:DDI A/PHY A] Using DP training pattern TPS1
> > > > <7>[    8.237373] i915 0000:00:02.0: [drm:intel_dp_link_train_phy [i915]] clock recovery OK
> > > > <7>[    8.237460] i915 0000:00:02.0: [drm:intel_dp_program_link_training_pattern [i915]] [ENCODER:307:DDI A/PHY A] Using DP training pattern TPS4
> > > > <7>[    8.239054] i915 0000:00:02.0: [drm:intel_dp_dump_link_status.isra.4 [i915]] ln0_1:0x0 ln2_3:0x0 align:0x80 sink:0x0 adj_req0_1:0x0 adj_req2_3:0x0
> > > > <7>[    8.239135] i915 0000:00:02.0: [drm:intel_dp_link_train_phy [i915]] Clock recovery check failed, cannot continue channel equalization
> > > > <7>[    8.239218] i915 0000:00:02.0: [drm:intel_dp_link_train_phy [i915]] [CONNECTOR:308:eDP-1] Link Training failed at link rate = 270000, lane count = 2, at DPRX
> > > >
> > > > So CR lock is lost as soon as we switch to TPS4. I really wonder if the sink
> > > > actually even implements TPS4, and maybe when we write TPS4 to the DPCD reg
> > > > it starts to expect some other pattern? Should be semi-easy to confirm
> > > > I guess...
> > > >
> > > > One thing I was pondering is whether we're detecting TPS4 vs. TPS3 differently
> > > > that eg. Windows. Based on some trawling it looks to me that for some reason
> > > > Windows uses the EDP_DPCD_REV>=0x4 check rather than DPCD_REV>=0x14 on eDP
> > > > panels when checking for TPS4 suppport. Unfortunately following that
> > > > convention here wouldn't help us:
> > > >
> > > > <7>[    6.835706] i915 0000:00:02.0: [drm:intel_dp_init_connector [i915]] eDP DPCD: 04 fb ff
> > > > <7>[    8.234921] [drm:drm_dp_read_dpcd_caps] AUX A/DDI A/PHY A: Base DPCD: 14 0a 82 41 00 00 01 c0 02 00 00 00 0f 09 80
> > > > <7>[    8.234943] [drm:drm_dp_read_dpcd_caps] AUX A/DDI A/PHY A: DPCD: 14 0a 82 c1 00 00 01 c0 02 00 00 00 0f 09 80
> > > 
> > > Should try this in combination with [1]?
> > > 
> > > BR,
> > > Jani.
> > > 
> > > 
> > > [1] https://patchwork.freedesktop.org/patch/msgid/20210719235927.283173-1-khaled.almahallawy@intel.com
> > 
> > Couldn't hurt I suppose. Although those bits should default to 0, unless
> > the BIOS/something mucks them up for whatever reason.
> 
> I tried the two patches (I assume the above failure was on shards-iclb2)
> and it still fails. The panel reports that it supports TPS4 while it
> doesn't support TPS3, which is a bit odd. I also tried if LT works with
> TPS3, but that also fails.
> 
> Still checking if this panel works on other hosts.

Tried it on the above and another ICL and TGL both on Linux and Windows,
link training fails. I assume this panel only supports TPS2, the DPCD/FW
(or the panel) is just buggy. I wonder if it's possible to reflash the
FW on it.

For now I replaced it on shards-iclb2 with another 4k panel with TPS4
support with that LT passes with the two patches applied.

--Imre

> This panel could be simply buggy (wrong FW on it?). I found two other panels in
> CI with TPS4:
> CI_DRM_10549/fi-icl-u2/0/boot.log:<7> i915 0000:00:02.0: [drm:drm_dp_read_dpcd_caps] AUX A/DDI A/PHY A: DPCD: 14 00 c4 c1 00 00 01 c0 02 00 00 00 00 0b 00
> CI_DRM_10549/fi-tgl-y/0/boot.log:<7> i915 0000:00:02.0: [drm:drm_dp_read_dpcd_caps] AUX A/DDI A/PHY A: DPCD: 14 00 c4 c1 00 00 01 c0 02 00 00 00 00 0b 00
> 
> On fi-icl-u2 LT passes with TPS4, on fi-tgl-y only TPS3 is used (no HBR3
> support there).
> 
> We could either quirk this panel, or fall back to TPS2/3 if LT failed
> with TPS4.
> 
> The EDP_DPCD_REV>=0x4 check as a dependency for TPS4, seems to match the
> eDP spec:
> 
> """
> Use of DPCD Rev. 1.4 extends the new DP v1.3 capabilities to eDP v1.4a
> (and higher) devices, including features as HBR3 and TPS4.
> Identification of an eDP v1.4a (and higher) Sink device is indicated by
> a value of 04h (and higher) in the EDP_DPCD_REV register (DPCD Address
> 00700h).
> """
