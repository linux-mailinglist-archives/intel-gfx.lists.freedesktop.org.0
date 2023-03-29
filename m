Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9466CEE37
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 17:59:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3076B10EB61;
	Wed, 29 Mar 2023 15:59:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EBE610EB6B
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 15:59:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680105549; x=1711641549;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=j7yfQLemQN0W3tmQD+opOa81/Kj0msfB6GvXPkDP0ck=;
 b=H6XWGdVEMjNMHd1WdadNMtktctIqTq4Z22s1i12t114TuOWgKtqb0T1q
 XtAbceKGUW09Y/m2dLT4JzaCV8blGEP79reblNXGJCWPXu7PFLMaQwnqZ
 Gh/DWjifB0A6vkyhHqK84opgQPpxym+vf/1b0rzWZ8aHv0cmDNCJ80l2l
 2VYZKiMClMI1jFbhqPvzhgAnNI5FLHaFeMWDyb9WG/I+ie3d8PTal0ZFz
 6IU7hUfoakfjF3T7JQ89DMUoVhlmEkH41UWkfTVEBiCMwtV9ICQBaDVho
 LUd3g5+Azx3FC8353J0rVV9LjVq2QKRE1BHMv/XCLiMeVcBgUmj0Jyzk3 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="405864038"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="405864038"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 08:59:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="661650371"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="661650371"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 08:59:07 -0700
Date: Wed, 29 Mar 2023 18:59:03 +0300
From: Imre Deak <imre.deak@intel.com>
To: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <ZCRgRyMK7gSEAa3B@ideak-desk.fi.intel.com>
References: <20230327123433.896216-1-mika.kahola@intel.com>
 <20230327123433.896216-5-mika.kahola@intel.com>
 <ZCRb90HL81lTTIms@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZCRb90HL81lTTIms@ideak-desk.fi.intel.com>
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/mtl: Add Support for C10 PHY
 message bus and pll programming
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 29, 2023 at 06:40:39PM +0300, Imre Deak wrote:
> On Mon, Mar 27, 2023 at 03:34:30PM +0300, Mika Kahola wrote:
> [...] 
> > +}
> > +
> > +static int intel_cx0_wait_for_ack(struct drm_i915_private *i915, enum port port, int lane, u32 *val)
> > +{
> > +	enum phy phy = intel_port_to_phy(i915, port);
> > +
> > +	if (__intel_de_wait_for_register(i915,
> > +					 XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane - 1),
> 
> As above this function should take the 0-based lane value.

Err, I meant here as earlier the function param should be
'u8 lane_mask' and use a helper to convert this mask to a lane.

--Imre
