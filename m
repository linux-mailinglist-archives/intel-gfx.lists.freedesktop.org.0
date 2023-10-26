Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DDAB7D804E
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 12:10:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1D5110E79E;
	Thu, 26 Oct 2023 10:10:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24C0610E79E
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 10:10:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698315048; x=1729851048;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=aTSPC1CGcszn6oOrxIixyWNnOsOLN/AoRwOMxkLM2SI=;
 b=I7bl+FZStP0sa0HA14em/G5Jwdjmtzlks11wpAaIMoCjFb+eAV5WU/PD
 6nipLLC6RzH8FSA8AF2+tObKHsKhjW011pIpr93l3Ac7tx882oXoEDX/B
 s1YyiNTg9RvEpxVHuNu2lOPOigkgdGZOf/d8IFf9RltOZGX+mhX3WY/6v
 mRJ00yyZY9D82y1FYHf90mvE47Gdo9YP+roKGHQRUtasK/7GGYId/a6MX
 Bxc2XQY/hmrv5NxN7XlmoJHHMZlO6wEGZkdmRS7ppLrzQyVY7Lrx8fWrE
 5L+bzevG6TDbBfMYdul/+8UHsVQh+LDFWPAmSF+kRd1VkNXZoOdz9XuaX Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="372556090"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="372556090"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 03:10:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; 
   d="scan'208";a="6879095"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 03:09:24 -0700
Date: Thu, 26 Oct 2023 13:11:14 +0300
From: Imre Deak <imre.deak@intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org,
 Mika Kahola <mika.kahola@intel.com>, Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZTo7Qv6eZbzrQYj9@ideak-desk.fi.intel.com>
References: <20231025170834.22691-1-nirmoy.das@intel.com>
 <ZTorwwfEiJm+n1pY@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZTorwwfEiJm+n1pY@ideak-desk.fi.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/tc: Fix -Wformat-truncation in
 intel_tc_port_init
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

On Thu, Oct 26, 2023 at 12:05:13PM +0300, Imre Deak wrote:
> On Wed, Oct 25, 2023 at 07:08:34PM +0200, Nirmoy Das wrote:
> > Fix below compiler warning:
> > 
> > intel_tc.c:1879:11: error: ‘%d’ directive output may be truncated
> > writing between 1 and 11 bytes into a region of size 3
> > [-Werror=format-truncation=]
> > "%c/TC#%d", port_name(port), tc_port + 1);
> >            ^~
> > intel_tc.c:1878:2: note: ‘snprintf’ output between 7 and 17 bytes
> > into a destination of size 8
> >   snprintf(tc->port_name, sizeof(tc->port_name),
> >   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >     "%c/TC#%d", port_name(port), tc_port + 1);
> >     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > 
> > v2: use kasprintf(Imre)
> > 
> > Fixes: 3eafcddf766b ("drm/i915/tc: Move TC port fields to a new intel_tc_port struct")
> > Cc: Mika Kahola <mika.kahola@intel.com>
> > Cc: Imre Deak <imre.deak@intel.com>
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> 
> Reviewed-by: Imre Deak <imre.deak@intel.com>
> 
> Nit: port_name could be const.
> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_tc.c | 9 ++++++---
> >  1 file changed, 6 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> > index 37b0f8529b4f..0fa54450d51b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_tc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> > @@ -58,7 +58,7 @@ struct intel_tc_port {
> >  	struct delayed_work link_reset_work;
> >  	int link_refcount;
> >  	bool legacy_port:1;
> > -	char port_name[8];
> > +	char *port_name;
> >  	enum tc_port_mode mode;
> >  	enum tc_port_mode init_mode;
> >  	enum phy_fia phy_fia;
> > @@ -1875,8 +1875,10 @@ int intel_tc_port_init(struct intel_digital_port *dig_port, bool is_legacy)
> >  	else
> >  		tc->phy_ops = &icl_tc_phy_ops;
> >  
> > -	snprintf(tc->port_name, sizeof(tc->port_name),
> > -		 "%c/TC#%d", port_name(port), tc_port + 1);
> > +	tc->port_name = kasprintf(GFP_KERNEL, "%c/TC#%d", port_name(port),
> > +				  tc_port + 1);
> > +	if (!tc->port_name)
> > +		return -ENOMEM;

Missed it, but this needs to free tc;

> >  
> >  	mutex_init(&tc->lock);
> >  	/* TODO: Combine the two works */
> > @@ -1897,6 +1899,7 @@ void intel_tc_port_cleanup(struct intel_digital_port *dig_port)
> >  {
> >  	intel_tc_port_suspend(dig_port);
> >  
> > +	kfree(dig_port->tc->port_name);
> >  	kfree(dig_port->tc);
> >  	dig_port->tc = NULL;
> >  }
> > -- 
> > 2.41.0
> > 
