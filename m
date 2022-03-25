Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F2A04E7A37
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 19:22:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C462A10E22B;
	Fri, 25 Mar 2022 18:22:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD26710E22B
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Mar 2022 18:22:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648232567; x=1679768567;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=UA842vhMGPiwv47DZgHVv3HZwc2XUkKWtTiA0E7HpMg=;
 b=Khmer7Tg7rgpwLW2/5myxIZohfp95V2VDlMLbPSU+YeKU2cTAyPHzJNL
 06O1tUiLhMVZCI+uc1Ai5QdCMlCzZaZqsSAvbs+FRaNuJ23sXin7bw59+
 SiRhEWUlQ8j0rbw0qjy8pEnzgGNYODE10a5aMfztzzO0hd2X8ukgXGalD
 XJWfsxrHq5Hyk8lcfQRB7RhEydKbc5QAcfijSFhQbRrAzpjVU0hM+TnsU
 bAJxIiC6vThLEx3VA+OQOn9g9WHddDX1FrKVDKfsKtONSma61HMMo8OSk
 6wTeuGrJ0KzZJJuS+lPIvV1KxBhumsEkcgmYdjEklRnymUjec/vvn2X3z Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10297"; a="258661621"
X-IronPort-AV: E=Sophos;i="5.90,211,1643702400"; d="scan'208";a="258661621"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 11:22:47 -0700
X-IronPort-AV: E=Sophos;i="5.90,211,1643702400"; d="scan'208";a="561928867"
Received: from bhshelto-mobl1.amr.corp.intel.com (HELO intel.com)
 ([10.255.38.218])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 11:22:46 -0700
Date: Fri, 25 Mar 2022 14:22:43 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <Yj4Iczu4/QreAp4h@intel.com>
References: <20220325153436.95045-1-jose.souza@intel.com>
 <Yj4Fs+aPJnaD77nI@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Yj4Fs+aPJnaD77nI@intel.com>
Subject: Re: [Intel-gfx] [PATCH] docs: gpu: i915.rst: Update DRRS functions
 names
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

On Fri, Mar 25, 2022 at 08:10:59PM +0200, Ville Syrjälä wrote:
> On Fri, Mar 25, 2022 at 08:34:36AM -0700, José Roberto de Souza wrote:
> > intel_drrs_enable and intel_drrs_disable where renamed to
> > intel_drrs_activate and intel_drrs_deactivate in commit
> > 54903c7a6b40 ("drm/i915: s/enable/active/ for DRRS").
> >
> > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> > ---
> >  Documentation/gpu/i915.rst | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
> > index bcaefc952764e..ab596b0a9f259 100644
> > --- a/Documentation/gpu/i915.rst
> > +++ b/Documentation/gpu/i915.rst
>
> Oh that's whete it's coming from.
>
> > @@ -187,10 +187,10 @@ Display Refresh Rate Switching (DRRS)
> >     :doc: Display Refresh Rate Switching (DRRS)
> >
> >  .. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
> > -   :functions: intel_drrs_enable
> > +   :functions: intel_drrs_activate
>
> Hmm. Can't we just nuke all these explicit references and let the
> tooling pull in all of it automagically since there's nothing
> else in that file?

Indeed.

.. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
   :doc: Display Refresh Rate Switching (DRRS)

.. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
   :internal:

looks the right thing to do here.

And if the other matters, than sort the functions in intel_drrs.c

>
> >
> >  .. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
> > -   :functions: intel_drrs_disable
> > +   :functions: intel_drrs_deactivate
> >
> >  .. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
> >     :functions: intel_drrs_invalidate
> > --
> > 2.35.1
>
> --
> Ville Syrjälä
> Intel
