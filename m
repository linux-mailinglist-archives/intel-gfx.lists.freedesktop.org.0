Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A713F7848
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Aug 2021 17:28:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5438B6E32F;
	Wed, 25 Aug 2021 15:28:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AE826E32F
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 15:28:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10087"; a="303124503"
X-IronPort-AV: E=Sophos;i="5.84,351,1620716400"; d="scan'208";a="303124503"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 08:28:48 -0700
X-IronPort-AV: E=Sophos;i="5.84,351,1620716400"; d="scan'208";a="494308456"
Received: from vcheppax-mobl1.gar.corp.intel.com (HELO intel.com)
 ([10.255.37.222])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 08:28:46 -0700
Date: Wed, 25 Aug 2021 11:28:45 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>,
 "Tangudu, Tilak" <tilak.tangudu@intel.com>
Message-ID: <YSZhrTW3nVqVaOOf@intel.com>
References: <20210824154452.2066678-1-rodrigo.vivi@intel.com>
 <20210824154452.2066678-2-rodrigo.vivi@intel.com>
 <d245d1add9d14f199a4e8db2c252abfa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d245d1add9d14f199a4e8db2c252abfa@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/runtime_pm: Let's avoid the
 undocumented D1 opregion notification.
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

On Wed, Aug 25, 2021 at 09:04:02AM +0000, Gupta, Anshuman wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Rodrigo
> > Vivi
> > Sent: Tuesday, August 24, 2021 9:15 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>; Deak, Imre <imre.deak@intel.com>;
> > Tangudu, Tilak <tilak.tangudu@intel.com>
> > Subject: [Intel-gfx] [PATCH 2/2] drm/i915/runtime_pm: Let's avoid the
> > undocumented D1 opregion notification.
> > 
> > At least for newer generations, let's try to do the right thing that is to notify the
> > opregion that we are going into D3hot.
> > 
> > But to avoid breaking the world let's keep the older undocumented behavior in
> > place.
> > 
> > Cc: Imre Deak <imre.deak@intel.com>
> > Cc: Tilak Tangudu <tilak.tangudu@intel.com>
> > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > ---
> >  drivers/gpu/drm/i915/intel_runtime_pm.c | 24 ++++++++----------------
> >  1 file changed, 8 insertions(+), 16 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c
> > b/drivers/gpu/drm/i915/intel_runtime_pm.c
> > index 43cdc2f3ff9e..371bbc58db92 100644
> > --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> > @@ -706,27 +706,19 @@ int intel_runtime_pm_suspend(struct
> > intel_runtime_pm *rpm)
> > 
> >  	rpm->suspended = true;
> > 
> > -	/*
> > -	 * FIXME: We really should find a document that references the
> > arguments
> > -	 * used below!
> > -	 */
> > -	if (IS_BROADWELL(i915)) {
> > -		/*
> > -		 * On Broadwell, if we use PCI_D1 the PCH DDI ports will stop
> > -		 * being detected, and the call we do at intel_runtime_resume()
> > -		 * won't be able to restore them. Since PCI_D3hot matches the
> > -		 * actual specification and appears to be working, use it.
> > -		 */
> > -		intel_opregion_notify_adapter(i915, PCI_D3hot);
> > -	} else {
> > +	if (GRAPHICS_VER(i915) < 8) {
> >  		/*
> > -		 * current versions of firmware which depend on this opregion
> > -		 * notification have repurposed the D1 definition to mean
> > +		 * Some older versions of firmware which depend on this
> > opregion
> > +		 * notification had repurposed the D1 definition to mean
> >  		 * "runtime suspended" vs. what you would normally expect
> > (D3)
> >  		 * to distinguish it from notifications that might be sent via
> > -		 * the suspend path.
> > +		 * the suspend path. Unfortunately there's no documentation
> > +		 * available right now to justify this flow. However let's
> > +		 * keep for historical reasons.
> >  		 */
> >  		intel_opregion_notify_adapter(i915, PCI_D1);
> 
> > +	} else {
> > +		intel_opregion_notify_adapter(i915, PCI_D3hot);
> This is going to call the opregion ACPI SBCB method with function SWSCI_SBCB_ADAPTER_POWER_STATE i.e. value =7 and with input PARAM value as input power state (PCI_D0, PCI_D1, ...).
> Below is the TGL  SBCB method code block for command SWSCI_SBCB_ADAPTER_POWER_STATE (this method can be retrieve from one of SSDT table in /sys/firmware/acpi/tables/SSDT*)
> 
> If ((GESF == 0x07))
>                 {
>                     If (((S0ID == One) && (OSYS < 0x07DF)))
>                     {
>                         If (((PARM & 0xFF) == One))
>                         {
>                             ADBG ("IgSbcb:GUAM(1)")
>                             \GUAM (One)
>                         }
> 
>                         If (((PARM & 0xFF) == Zero))
>                         {
>                             ADBG ("IgSbcb:GUAM(0)")
>                             \GUAM (Zero)
>                         }
>                     }
> 
>                     If ((PARM == Zero))
>                     {
>                         Local0 = CLID /* \_SB_.PC00.GFX0.CLID */
>                         If ((0x80000000 & Local0))
>                         {
>                             CLID &= 0x0F
>                             GLID (CLID)
>                         }
>                     }
> 
>                     GESF = Zero
>                     PARM = Zero
>                     Return (SUCC) /* \_SB_.PC00.GFX0.SUCC */
>              }
> 
> With above code block, it either checks for input PARAM value either 0 or 1.
> I am not sure but passing PCI_D3hot as input parameter may affect the SBCB functionality. here 

Thanks for sharing this info.
I left this out of my new series while we investigate internally why this doesn't match
the spec and looks more like the command 8 where 0 is "on" and 1 is "standby"

Thanks,
Rodrigo.

> Thanks,
> Anshuman  Gupta
> >  	}
> > 
> >  	assert_forcewakes_inactive(&i915->uncore);
> > --
> > 2.31.1
> 
