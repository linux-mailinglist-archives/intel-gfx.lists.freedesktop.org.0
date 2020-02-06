Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9CE154A55
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 18:36:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E2056FAD5;
	Thu,  6 Feb 2020 17:36:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBD806FAD5
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 17:36:48 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 09:36:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,410,1574150400"; d="scan'208";a="236045980"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by orsmga006.jf.intel.com with ESMTP; 06 Feb 2020 09:36:46 -0800
Date: Thu, 6 Feb 2020 23:06:57 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20200206173657.GD26821@intel.com>
References: <20200206150442.32353-1-anshuman.gupta@intel.com>
 <20200206150442.32353-2-anshuman.gupta@intel.com>
 <20200206170026.GA26821@intel.com>
 <20200206170928.GM24118@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200206170928.GM24118@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/hdcp: Fix 1B-06 HDCP2.2 Comp
 test
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-02-06 at 22:39:28 +0530, Anshuman Gupta wrote:
> On 2020-02-06 at 22:30:27 +0530, Ramalingam C wrote:
> > On 2020-02-06 at 20:34:41 +0530, Anshuman Gupta wrote:
> > > HDCP Repeater initializes seq_num_V to 0 at the beginning of
> > > hdcp Session i.e. after AKE_init received.
> > > 
> > > HDCP 2.2 Comp specs 1B-06 test verifies that whether DUT
> > > considers failures of authentication if the repeater provides a
> > > non-zero value in seq_num_V in the first,
> > > RepeaterAuth_Send_ReceiverID_List message after first AKE_Init.
> > > Fixing this broken test.
> > Instead of "Fixing the broken test" could we say, we mandate the first
> > seq_num_v to be zero? in fact i would keep this as commit subject also. 
> > > 
> > > Cc: Ramalingam C <ramalingam.c@intel.com>
> > > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display_types.h |  3 +++
> > >  drivers/gpu/drm/i915/display/intel_hdcp.c          | 13 +++++++++++++
> > >  2 files changed, 16 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > index 7ae0bc8b80d1..2ae540e986ba 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -360,6 +360,9 @@ struct intel_hdcp {
> > >  	/* HDCP2.2 Encryption status */
> > >  	bool hdcp2_encrypted;
> > >  
> > > +	/* Flag indicate if it is a first ReceiverID_List msg after AKE_Init */
> > > +	bool first_recvid_msg;
> > This extra flag is not needed, see below comment
> > > +
> > >  	/*
> > >  	 * Content Stream Type defined by content owner. TYPE0(0x0) content can
> > >  	 * flow in the link protected by HDCP2.2 or HDCP1.4, where as TYPE1(0x1)
> > > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > index 4d1a33d13105..3e24a6df503a 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > @@ -1251,6 +1251,8 @@ static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
> > >  	size_t size;
> > >  	int ret;
> > >  
> > > +	hdcp->first_recvid_msg = true;
> > > +
> > >  	/* Init for seq_num */
> > >  	hdcp->seq_num_v = 0;
> > >  	hdcp->seq_num_m = 0;
> > > @@ -1462,6 +1464,16 @@ int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
> > >  	seq_num_v =
> > >  		drm_hdcp_be24_to_cpu((const u8 *)msgs.recvid_list.seq_num_v);
> > >  
> > > +	/*
> > > +	 * HDCP 2.2 Spec HDMI PAGE 19, DP PAGE 20
> > > +	 * HDCP 2.2 Comp 1B-06 test requires to disable encryption if there is
> > > +	 * non zero seq_num_V from recevier.
> > IMHO In commit message this kind of reasoning make sense, but here this is
> > not needed. As every line in the file will be as per the spec so we dont
> > need to call them out.
> > > +	 */
> > > +	if (hdcp->first_recvid_msg && seq_num_v) {
> > if (!hdcp->seq_num_v && seq_num_v) {
> > 
> > IMO This is all we need it.
> I had tried this as my first solution, eventually this fill the link integrity check, see below.
> > 
> > -Ram
> > > +		drm_dbg_kms(&dev_priv->drm, "Non zero Seq_num_v at beginning of HDCP Session\n");
> > > +		return -EINVAL;
> > > +	}
> > > +
> > >  	if (seq_num_v < hdcp->seq_num_v) {
> > >  		/* Roll over of the seq_num_v from repeater. Reauthenticate. */
> > >  		DRM_DEBUG_KMS("Seq_num_v roll over.\n");
> > > @@ -1484,6 +1496,7 @@ int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
> > >  		return ret;
> > >  
> > >  	hdcp->seq_num_v = seq_num_v;
> 	seq_num_v will be zero for first session, which left hdcp->seq_num_v to zero and that will
> 	fail the link intergrity check as at during link intergrity check seq_num_v will be non-zero,
>         this happens during 1B-09, when repeater topolgy changes due to Roll over of seq_num_v.

topology update should increment the seq_num_v which will make it > than
hdcp->seq_num_v. How roll over happens? And at every AKE start we init
hdcp->seq_num_v to 0.

So please elaborate the failure scenario.

Ram.
> Thanks ,
> Anshuman Gupta.
> 
> > > +	hdcp->first_recvid_msg = false;
> > >  	ret = shim->write_2_2_msg(intel_dig_port, &msgs.rep_ack,
> > >  				  sizeof(msgs.rep_ack));
> > >  	if (ret < 0)
> > > -- 
> > > 2.24.0
> > > 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
