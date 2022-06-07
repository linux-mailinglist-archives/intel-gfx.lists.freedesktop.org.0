Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4283653F75B
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jun 2022 09:37:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B8D112AC69;
	Tue,  7 Jun 2022 07:36:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 698CC12ADAE
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jun 2022 07:36:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654587417; x=1686123417;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=3SPQiLBXRn+5naMDWfMZ3gP4PXpsLnEe8sWvsX+cuhY=;
 b=mnS7bKBMIadw6pV5lJeHUHMmpRUZOzEl5zsYyWG4FmX3YKiaJ224AHaa
 RII/qmMRkpaiE9XNXBCfPH12v4t3XB86tMgwep5BgMTDQCTr/FFxNPeCx
 /TfiFaaSM7cE6qnC/ykGk7TUHLCsq+MEKuO6ii4Ehqm/6oSJ0tGUwK4hj
 GNOEeBuWc++xqOuL5mh8I1qslO5AIVWfc8JqCsJGEzFzFsrWefhUnQ2NP
 YPA8ox2QfGOJfZ3QCSZvbL5CT8TzeSVYtcbV3M7qN5vxYIuoC3Jelq12A
 Qc6vcedZi3gXoyX+je+E9gTf4BAFuWIjKXdPoJTgKpiTwzOt3tFMLjr7a g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10370"; a="257154704"
X-IronPort-AV: E=Sophos;i="5.91,283,1647327600"; d="scan'208";a="257154704"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 00:36:55 -0700
X-IronPort-AV: E=Sophos;i="5.91,283,1647327600"; d="scan'208";a="636001936"
Received: from gknielse-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.57.112])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 00:36:54 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Hogander,
 Jouni" <jouni.hogander@intel.com>
In-Reply-To: <8a83b4595e603df3ed8975a31425639b714b57bd.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220603101411.3087789-1-jouni.hogander@intel.com>
 <20220603101411.3087789-2-jouni.hogander@intel.com>
 <87k09xor2e.fsf@intel.com>
 <eeac0a25543a75cbeb39eaa61a1abbfdcfb94a6f.camel@intel.com>
 <0069e1028bfccf5f1c3f7b8d8a129c202f4cf764.camel@intel.com>
 <f69cf635fc2da871baee0bbbbf946addf9a35ddf.camel@intel.com>
 <875ylenr4t.fsf@intel.com>
 <8a83b4595e603df3ed8975a31425639b714b57bd.camel@intel.com>
Date: Tue, 07 Jun 2022 10:36:52 +0300
Message-ID: <874k0wrkkr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/opregion: add function to
 check if headless sku
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

On Mon, 06 Jun 2022, "Souza, Jose" <jose.souza@intel.com> wrote:
> On Mon, 2022-06-06 at 11:16 +0300, Jani Nikula wrote:
>> On Mon, 06 Jun 2022, "Hogander, Jouni" <jouni.hogander@intel.com> wrote:
>> > On Fri, 2022-06-03 at 16:32 +0000, Souza, Jose wrote:
>> > > On Fri, 2022-06-03 at 13:14 +0000, Hogander, Jouni wrote:
>> > > > On Fri, 2022-06-03 at 15:43 +0300, Jani Nikula wrote:
>> > > > > On Fri, 03 Jun 2022, Jouni H=C3=B6gander <jouni.hogander@intel.c=
om>
>> > > > > wrote:
>> > > > > > Export headless sku bit (bit 13) from opregion->header->pcon as
>> > > > > > an
>> > > > > > interface to check if our device is headless configuration.
>> > > > > >=20
>> > > > > > Bspec: 53441
>> > > > > > Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
>> > > > > > ---
>> > > > > >  drivers/gpu/drm/i915/display/intel_opregion.c | 12
>> > > > > > ++++++++++++
>> > > > > >  drivers/gpu/drm/i915/display/intel_opregion.h |  7 +++++++
>> > > > > >  2 files changed, 19 insertions(+)
>> > > > > >=20
>> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c
>> > > > > > b/drivers/gpu/drm/i915/display/intel_opregion.c
>> > > > > > index f31e8c3f8ce0..eab3f2e6b786 100644
>> > > > > > --- a/drivers/gpu/drm/i915/display/intel_opregion.c
>> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
>> > > > > > @@ -53,6 +53,8 @@
>> > > > > >  #define MBOX_ASLE_EXTBIT(4)/* Mailbox #5 */
>> > > > > >  #define MBOX_BACKLIGHTBIT(5)/* Mailbox #2
>> > > > > > (valid from v3.x) */
>> > > > > >=20
>> > > > > > +#define PCON_HEADLESS_SKUBIT(13)
>> > > > >=20
>> > > > > Here we go again.
>> > > > >=20
>> > > > > What does headless mean here? The spec does not say. Does it have
>> > > > > display hardware? Apparently yes, since otherwise we wouldn't be
>> > > > > here.
>> > > >=20
>> > > > This is for hybrid setup with several display hw and the panel wont
>> > > > be
>> > > > connected into device driven by i915 driver.
>> > > >=20
>> > > > > We have INTEL_DISPLAY_ENABLED() which should do the right thing
>> > > > > when
>> > > > > you
>> > > > > do have display hardware and have done output setup etc. but want
>> > > > > to
>> > > > > force them disconnected, i.e. you take the hardware over
>> > > > > properly,
>> > > > > but
>> > > > > put it to sleep for power savings.
>> > > > >=20
>> > > > > Maybe we should bolt this opregion check in that macro?
>> > > > >=20
>> > > > > Maybe we need to use INTEL_DISPLAY_ENABLED() also to prevent
>> > > > > polling.
>> > > >=20
>> > > > Thank you for pointing this out. HAS_DISPLAY I already notice and
>> > > > it's
>> > > > not suitable for what we want here. I think bolting this check into
>> > > > INTEL_DISPLAY_ENABLED as you suggested is enough. That will prevent
>> > > > waking up the hw into D0 state for polling.
>> > >=20
>> > > A headless sku should not have any DDI ports enabled, much easier
>> > > check for that.
>> >=20
>> > Could you please clarify this a bit? What exactly you are thinking
>> > should be checked? Aren't DDI port also disabled when non-headless
>> > setup is in runtime suspend?
>>=20
>> I also think "headless" and "DDI ports enabled" need clarification. They
>> are overloaded terms.
>
> In a properly setup headless sku, VBT should have all ports marked as dis=
abled.

This is what I mean with overloaded terms. Now we're at "properly setup
headless sku", and we're none the wiser. ;)

Is the hardware there?

If not, okay, but why aren't the pipes fused then? Why a different flag
in opregion?

If yes, has the GOP taken over the hardware and put it into power save?

BR,
Jani.


>
> intel_ddi_init() {
> 	...
>
> 	if (!init_dp && !init_hdmi) {
> 		drm_dbg_kms(&dev_priv->drm,
> 			    "VBT says port %c is not DVI/HDMI/DP compatible, respect it\n",
> 			    port_name(port));
> 		return;
> 	}
>
>
> All DDI should return earlier in the above.
> So you can use the number of enabled connectors to know if it is a headle=
ss sku or not.
>
> So you can skip the pooling in case there is no connectors.
>
>>=20
>> Seems to me the use case here could be the same as
>> INTEL_DISPLAY_ENABLED(), and that could benefit from polling disable.
>>=20
>> BR,
>> Jani.
>>=20
>>=20
>> >=20=20
>> > >=20
>> > > > > I certainly would not want to add another mode that's separate
>> > > > > from
>> > > > > HAS_DISPLAY() and INTEL_DISPLAY_ENABLED().
>> > > >=20
>> > > > No need for this. I think we can go with INTEL_DISPLAY_ENABLED.
>> > > > > > +
>> > > > > >  struct opregion_header {
>> > > > > >  u8 signature[16];
>> > > > > >  u32 size;
>> > > > > > @@ -1135,6 +1137,16 @@ struct edid
>> > > > > > *intel_opregion_get_edid(struct
>> > > > > > intel_connector *intel_connector)
>> > > > > >  return new_edid;
>> > > > > >  }
>> > > > > >=20
>> > > > > > +bool intel_opregion_headless_sku(struct drm_i915_private
>> > > > > > *i915)
>> > > > > > +{
>> > > > > > +struct intel_opregion *opregion =3D &i915->opregion;
>> > > > > > +
>> > > > > > +if (!opregion->header)
>> > > > > > +return false;
>> > > > > > +
>> > > > > > +return opregion->header->pcon & PCON_HEADLESS_SKU;
>> > > > >=20
>> > > > > We should probably start checking for opregion version for this
>> > > > > stuff
>> > > > > too.
>> > > > >=20
>> > > >=20
>> > > > Yes, I will do this change.
>> > > >=20
>> > > > > BR,
>> > > > > Jani.
>> > > > >=20
>> > > > > > +}
>> > > > > > +
>> > > > > >  void intel_opregion_register(struct drm_i915_private *i915)
>> > > > > >  {
>> > > > > >  struct intel_opregion *opregion =3D &i915->opregion;
>> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h
>> > > > > > b/drivers/gpu/drm/i915/display/intel_opregion.h
>> > > > > > index 82cc0ba34af7..5ad96e1d8278 100644
>> > > > > > --- a/drivers/gpu/drm/i915/display/intel_opregion.h
>> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_opregion.h
>> > > > > > @@ -76,6 +76,8 @@ int intel_opregion_notify_adapter(struct
>> > > > > > drm_i915_private *dev_priv,
>> > > > > >  int intel_opregion_get_panel_type(struct drm_i915_private
>> > > > > > *dev_priv);
>> > > > > >  struct edid *intel_opregion_get_edid(struct intel_connector
>> > > > > > *connector);
>> > > > > >=20
>> > > > > > +bool intel_opregion_headless_sku(struct drm_i915_private
>> > > > > > *i915);
>> > > > > > +
>> > > > > >  #else /* CONFIG_ACPI*/
>> > > > > >=20
>> > > > > >  static inline int intel_opregion_setup(struct drm_i915_private
>> > > > > > *dev_priv)
>> > > > > > @@ -127,6 +129,11 @@ intel_opregion_get_edid(struct
>> > > > > > intel_connector
>> > > > > > *connector)
>> > > > > >  return NULL;
>> > > > > >  }
>> > > > > >=20
>> > > > > > +bool intel_opregion_headless_sku(struct drm_i915_private
>> > > > > > *i915)
>> > > > > > +{
>> > > > > > +return false;
>> > > > > > +}
>> > > > > > +
>> > > > > >  #endif /* CONFIG_ACPI */
>> > > > > >=20
>> > > > > >  #endif
>> >=20
>>=20
>

--=20
Jani Nikula, Intel Open Source Graphics Center
