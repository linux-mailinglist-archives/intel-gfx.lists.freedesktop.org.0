Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2504853E185
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jun 2022 10:16:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E29010F47C;
	Mon,  6 Jun 2022 08:16:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39F6310EC47
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jun 2022 08:16:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654503399; x=1686039399;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=GNR3+iuDANRAOPooE6AXrXP7XdAfOvdBdfRqWBvO44Q=;
 b=XrZoAZuNH4G3R8Z8i9rZi+sXJzwdHwIzPX2ua8lOblxVpX0baV5Pt1eT
 IbvHpYoq//TJn+/8I1XsEgsZBV+ay/vWkZxpV65HbfGEtyRlFfvStBuAu
 GaVMV58HChW741562WtGoWIpAOulFczu5LQU8oj4napVE9xxm+RX1Vboe
 Agmqs62ZLphDHM2cJxFWN9mRXhnYYWLrel8fHy+QCeP+6cD19uO+sG/aV
 v4L927rr+g61b/5LxWWk5oecszLoVuRvIYtZaLjQ1UDUH1qJ8YMOz//OL
 91441WgqgG+9HI3FZ2d/ApnB54P/VRtke770W8nzXfMSX0mFAKpzO3qIu A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10369"; a="257079143"
X-IronPort-AV: E=Sophos;i="5.91,280,1647327600"; d="scan'208";a="257079143"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2022 01:16:38 -0700
X-IronPort-AV: E=Sophos;i="5.91,280,1647327600"; d="scan'208";a="583511957"
Received: from pplank-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.56.15])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2022 01:16:37 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
In-Reply-To: <f69cf635fc2da871baee0bbbbf946addf9a35ddf.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220603101411.3087789-1-jouni.hogander@intel.com>
 <20220603101411.3087789-2-jouni.hogander@intel.com>
 <87k09xor2e.fsf@intel.com>
 <eeac0a25543a75cbeb39eaa61a1abbfdcfb94a6f.camel@intel.com>
 <0069e1028bfccf5f1c3f7b8d8a129c202f4cf764.camel@intel.com>
 <f69cf635fc2da871baee0bbbbf946addf9a35ddf.camel@intel.com>
Date: Mon, 06 Jun 2022 11:16:34 +0300
Message-ID: <875ylenr4t.fsf@intel.com>
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

On Mon, 06 Jun 2022, "Hogander, Jouni" <jouni.hogander@intel.com> wrote:
> On Fri, 2022-06-03 at 16:32 +0000, Souza, Jose wrote:
>> On Fri, 2022-06-03 at 13:14 +0000, Hogander, Jouni wrote:
>> > On Fri, 2022-06-03 at 15:43 +0300, Jani Nikula wrote:
>> > > On Fri, 03 Jun 2022, Jouni H=C3=B6gander <jouni.hogander@intel.com>
>> > > wrote:
>> > > > Export headless sku bit (bit 13) from opregion->header->pcon as
>> > > > an
>> > > > interface to check if our device is headless configuration.
>> > > >=20
>> > > > Bspec: 53441
>> > > > Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
>> > > > ---
>> > > >  drivers/gpu/drm/i915/display/intel_opregion.c | 12
>> > > > ++++++++++++
>> > > >  drivers/gpu/drm/i915/display/intel_opregion.h |  7 +++++++
>> > > >  2 files changed, 19 insertions(+)
>> > > >=20
>> > > > diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c
>> > > > b/drivers/gpu/drm/i915/display/intel_opregion.c
>> > > > index f31e8c3f8ce0..eab3f2e6b786 100644
>> > > > --- a/drivers/gpu/drm/i915/display/intel_opregion.c
>> > > > +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
>> > > > @@ -53,6 +53,8 @@
>> > > >  #define MBOX_ASLE_EXTBIT(4)/* Mailbox #5 */
>> > > >  #define MBOX_BACKLIGHTBIT(5)/* Mailbox #2
>> > > > (valid from v3.x) */
>> > > >=20
>> > > > +#define PCON_HEADLESS_SKUBIT(13)
>> > >=20
>> > > Here we go again.
>> > >=20
>> > > What does headless mean here? The spec does not say. Does it have
>> > > display hardware? Apparently yes, since otherwise we wouldn't be
>> > > here.
>> >=20
>> > This is for hybrid setup with several display hw and the panel wont
>> > be
>> > connected into device driven by i915 driver.
>> >=20
>> > > We have INTEL_DISPLAY_ENABLED() which should do the right thing
>> > > when
>> > > you
>> > > do have display hardware and have done output setup etc. but want
>> > > to
>> > > force them disconnected, i.e. you take the hardware over
>> > > properly,
>> > > but
>> > > put it to sleep for power savings.
>> > >=20
>> > > Maybe we should bolt this opregion check in that macro?
>> > >=20
>> > > Maybe we need to use INTEL_DISPLAY_ENABLED() also to prevent
>> > > polling.
>> >=20
>> > Thank you for pointing this out. HAS_DISPLAY I already notice and
>> > it's
>> > not suitable for what we want here. I think bolting this check into
>> > INTEL_DISPLAY_ENABLED as you suggested is enough. That will prevent
>> > waking up the hw into D0 state for polling.
>>=20
>> A headless sku should not have any DDI ports enabled, much easier
>> check for that.
>
> Could you please clarify this a bit? What exactly you are thinking
> should be checked? Aren't DDI port also disabled when non-headless
> setup is in runtime suspend?

I also think "headless" and "DDI ports enabled" need clarification. They
are overloaded terms.

Seems to me the use case here could be the same as
INTEL_DISPLAY_ENABLED(), and that could benefit from polling disable.

BR,
Jani.


>=20=20
>>=20
>> > > I certainly would not want to add another mode that's separate
>> > > from
>> > > HAS_DISPLAY() and INTEL_DISPLAY_ENABLED().
>> >=20
>> > No need for this. I think we can go with INTEL_DISPLAY_ENABLED.
>> > > > +
>> > > >  struct opregion_header {
>> > > >  u8 signature[16];
>> > > >  u32 size;
>> > > > @@ -1135,6 +1137,16 @@ struct edid
>> > > > *intel_opregion_get_edid(struct
>> > > > intel_connector *intel_connector)
>> > > >  return new_edid;
>> > > >  }
>> > > >=20
>> > > > +bool intel_opregion_headless_sku(struct drm_i915_private
>> > > > *i915)
>> > > > +{
>> > > > +struct intel_opregion *opregion =3D &i915->opregion;
>> > > > +
>> > > > +if (!opregion->header)
>> > > > +return false;
>> > > > +
>> > > > +return opregion->header->pcon & PCON_HEADLESS_SKU;
>> > >=20
>> > > We should probably start checking for opregion version for this
>> > > stuff
>> > > too.
>> > >=20
>> >=20
>> > Yes, I will do this change.
>> >=20
>> > > BR,
>> > > Jani.
>> > >=20
>> > > > +}
>> > > > +
>> > > >  void intel_opregion_register(struct drm_i915_private *i915)
>> > > >  {
>> > > >  struct intel_opregion *opregion =3D &i915->opregion;
>> > > > diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h
>> > > > b/drivers/gpu/drm/i915/display/intel_opregion.h
>> > > > index 82cc0ba34af7..5ad96e1d8278 100644
>> > > > --- a/drivers/gpu/drm/i915/display/intel_opregion.h
>> > > > +++ b/drivers/gpu/drm/i915/display/intel_opregion.h
>> > > > @@ -76,6 +76,8 @@ int intel_opregion_notify_adapter(struct
>> > > > drm_i915_private *dev_priv,
>> > > >  int intel_opregion_get_panel_type(struct drm_i915_private
>> > > > *dev_priv);
>> > > >  struct edid *intel_opregion_get_edid(struct intel_connector
>> > > > *connector);
>> > > >=20
>> > > > +bool intel_opregion_headless_sku(struct drm_i915_private
>> > > > *i915);
>> > > > +
>> > > >  #else /* CONFIG_ACPI*/
>> > > >=20
>> > > >  static inline int intel_opregion_setup(struct drm_i915_private
>> > > > *dev_priv)
>> > > > @@ -127,6 +129,11 @@ intel_opregion_get_edid(struct
>> > > > intel_connector
>> > > > *connector)
>> > > >  return NULL;
>> > > >  }
>> > > >=20
>> > > > +bool intel_opregion_headless_sku(struct drm_i915_private
>> > > > *i915)
>> > > > +{
>> > > > +return false;
>> > > > +}
>> > > > +
>> > > >  #endif /* CONFIG_ACPI */
>> > > >=20
>> > > >  #endif
>

--=20
Jani Nikula, Intel Open Source Graphics Center
