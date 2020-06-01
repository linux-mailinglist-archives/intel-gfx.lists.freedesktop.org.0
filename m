Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3451EA63C
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 16:48:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E744889D67;
	Mon,  1 Jun 2020 14:47:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A781489D67
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2020 14:47:58 +0000 (UTC)
IronPort-SDR: roJhkp9Lo9Ga095MVlnkgVxmZ6jUhlTx/4wOT5lm1729ttgTpmFLbkDJ1JpwzI6XHp/nHFnaKx
 kGZ9+rBU/iJQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2020 07:47:58 -0700
IronPort-SDR: YKDRpdb4i+wXd+yyPLbrxVWvyXHJRa7TZVjOYT5kZvZso54KiTBkaGi39hfG1FO+AFM4SYZfpe
 aaiT9llu0FwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,461,1583222400"; d="scan'208";a="311971509"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 01 Jun 2020 07:47:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 01 Jun 2020 17:47:55 +0300
Date: Mon, 1 Jun 2020 17:47:55 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <20200601144755.GL6112@intel.com>
References: <20200527200245.13184-1-ville.syrjala@linux.intel.com>
 <20200528193852.GA24971@intel.com>
 <20200528195852.GA25073@intel.com>
 <20200529051143.GD6112@intel.com> <20200601075929.GA2431@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200601075929.GA2431@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix global state use-after-frees
 with a refcount
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jun 01, 2020 at 10:59:29AM +0300, Lisovskiy, Stanislav wrote:
> On Fri, May 29, 2020 at 08:11:43AM +0300, Ville Syrj=E4l=E4 wrote:
> > On Thu, May 28, 2020 at 10:58:52PM +0300, Lisovskiy, Stanislav wrote:
> > > On Thu, May 28, 2020 at 10:38:52PM +0300, Lisovskiy, Stanislav wrote:
> > > > On Wed, May 27, 2020 at 11:02:45PM +0300, Ville Syrjala wrote:
> > > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > =

> > > > > While the current locking/serialization of the global state
> > > > > suffices for protecting the obj->state access and the actual
> > > > > hardware reprogramming, we do have a problem with accessing
> > > > > the old/new states during nonblocking commits.
> > > > > =

> > > > > The state computation and swap will be protected by the crtc
> > > > > locks, but the commit_tails can finish out of order, thus also
> > > > > causing the atomic states to be cleaned up out of order. This
> > > > > would mean the commit that started first but finished last has
> > > > > had its new state freed as the no-longer-needed old state by the
> > > > > other commit.
> > > > > =

> > > > > To fix this let's just refcount the states. obj->state amounts
> > > > > to one reference, and the intel_atomic_state holds extra referenc=
es
> > > > > to both its new and old global obj states.
> > > > > =

> > > > > Fixes: 0ef1905ecf2e ("drm/i915: Introduce better global state han=
dling")
> > > > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > ---
> > > > >  .../gpu/drm/i915/display/intel_global_state.c | 45 +++++++++++++=
+++---
> > > > >  .../gpu/drm/i915/display/intel_global_state.h |  3 ++
> > > > >  2 files changed, 42 insertions(+), 6 deletions(-)
> > > > > =

> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_global_state.c b/=
drivers/gpu/drm/i915/display/intel_global_state.c
> > > > > index 212d4ee68205..7a19215ad844 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_global_state.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_global_state.c
> > > > > @@ -10,6 +10,28 @@
> > > > >  #include "intel_display_types.h"
> > > > >  #include "intel_global_state.h"
> > > > >  =

> > > > > +static void __intel_atomic_global_state_free(struct kref *kref)
> > > > > +{
> > > > > +	struct intel_global_state *obj_state =3D
> > > > > +		container_of(kref, struct intel_global_state, ref);
> > > > > +	struct intel_global_obj *obj =3D obj_state->obj;
> > > > > +
> > > > > +	obj->funcs->atomic_destroy_state(obj, obj_state);
> > > > > +}
> > > > > +
> > > > > +static void intel_atomic_global_state_put(struct intel_global_st=
ate *obj_state)
> > > > > +{
> > > > > +	kref_put(&obj_state->ref, __intel_atomic_global_state_free);
> > > > > +}
> > > > > +
> > > > > +static struct intel_global_state *
> > > > > +intel_atomic_global_state_get(struct intel_global_state *obj_sta=
te)
> > > > > +{
> > > > > +	kref_get(&obj_state->ref);
> > > > > +
> > > > > +	return obj_state;
> > > > > +}
> > > > > +
> > > > >  void intel_atomic_global_obj_init(struct drm_i915_private *dev_p=
riv,
> > > > >  				  struct intel_global_obj *obj,
> > > > >  				  struct intel_global_state *state,
> > > > > @@ -17,6 +39,10 @@ void intel_atomic_global_obj_init(struct drm_i=
915_private *dev_priv,
> > > > >  {
> > > > >  	memset(obj, 0, sizeof(*obj));
> > > > >  =

> > > > > +	state->obj =3D obj;
> > > > > +
> > > > > +	kref_init(&state->ref);
> > > > > +
> > > > >  	obj->state =3D state;
> > > > >  	obj->funcs =3D funcs;
> > > > >  	list_add_tail(&obj->head, &dev_priv->global_obj_list);
> > > > > @@ -28,7 +54,9 @@ void intel_atomic_global_obj_cleanup(struct drm=
_i915_private *dev_priv)
> > > > >  =

> > > > >  	list_for_each_entry_safe(obj, next, &dev_priv->global_obj_list,=
 head) {
> > > > >  		list_del(&obj->head);
> > > > > -		obj->funcs->atomic_destroy_state(obj, obj->state);
> > > > > +
> > > > > +		drm_WARN_ON(&dev_priv->drm, kref_read(&obj->state->ref) !=3D 1=
);
> > > > > +		intel_atomic_global_state_put(obj->state);
> > > > >  	}
> > > > >  }
> > > > >  =

> > > > > @@ -97,10 +125,14 @@ intel_atomic_get_global_obj_state(struct int=
el_atomic_state *state,
> > > > >  	if (!obj_state)
> > > > >  		return ERR_PTR(-ENOMEM);
> > > > >  =

> > > > > +	obj_state->obj =3D obj;
> > > > >  	obj_state->changed =3D false;
> > > > >  =

> > > > > +	kref_init(&obj_state->ref);
> > > > > +
> > > > >  	state->global_objs[index].state =3D obj_state;
> > > > > -	state->global_objs[index].old_state =3D obj->state;
> > > > > +	state->global_objs[index].old_state =3D
> > > > > +		intel_atomic_global_state_get(obj->state);
> > > > >  	state->global_objs[index].new_state =3D obj_state;
> > > > >  	state->global_objs[index].ptr =3D obj;
> > > > >  	obj_state->state =3D state;
> > > > > @@ -163,7 +195,9 @@ void intel_atomic_swap_global_state(struct in=
tel_atomic_state *state)
> > > > >  		new_obj_state->state =3D NULL;
> > > > >  =

> > > > >  		state->global_objs[i].state =3D old_obj_state;
> > > > > -		obj->state =3D new_obj_state;
> > > > > +
> > > > > +		intel_atomic_global_state_put(obj->state);
> > > > > +		obj->state =3D intel_atomic_global_state_get(new_obj_state);
> > > > >  	}
> > > > >  }
> > > > >  =

> > > > > @@ -172,10 +206,9 @@ void intel_atomic_clear_global_state(struct =
intel_atomic_state *state)
> > > > >  	int i;
> > > > >  =

> > > > >  	for (i =3D 0; i < state->num_global_objs; i++) {
> > > > > -		struct intel_global_obj *obj =3D state->global_objs[i].ptr;
> > > > > +		intel_atomic_global_state_put(state->global_objs[i].old_state);
> > > > > +		intel_atomic_global_state_put(state->global_objs[i].new_state);
> > > > =

> > > > Shouldn't we clean old_state only? =

> > > > =

> > > > As I understand in absence of any transaction you now have a pool of
> > > > global_obj each has a state with single kref taken.
> > > > =

> > > > So when we are going to get a new state, we do +1 kref to old_state=
(which is current global obj->state)
> > > > in order to prevent it being cleared by competing commit.
> > > > However the new state doesn't have any kref taken by that moment.
> > > > Then you swap do -1 kref for the old state and do +1 kref for new s=
tate, =

> > > > which means that when you -1 kref again for old state in atomic_cle=
ar also, =

> > > > it will be destroyed, however regarding the new state, as I underst=
and
> > > > it still has only single kref grabbed when it was swapped, =

> > > > so isn't it going to be now removed? unless we are lucky and somebo=
dy
> > > > haven't grabbed it already as an old_state in the next commit?
> > > > =

> > > > Stan
> > > =

> > > Ah actually I got it - forgot that kref is init as 1. =

> > > But then you probably don't even need to increment kref for new state =

> > > when swapping.
> > > Before assigning new obj->state you release one kref in swap(which ma=
kes sense)
> > > Then you just do only intel_atomic_global_state_put(old_state) in ato=
mic_clear
> > > and then no need in doing intel_atomic_global_state_get(new_state) du=
ring
> > > swap. =

> > > I.e we always call intel_atomic_global_state_get/put only regarding "=
old" =

> > > obj->state and each new_state will be disposed when it becomes old_st=
ate.
> > =

> > =

> > IMO the approach of handing off references is just hard to follow. =

> > Better to just get/put explicitly whenever you assign a pointer.
> > I already dislike handing off the original kref_init() reference,
> > and almost added a get+put there too. Maybe I really should do that...
> =

> Agree, tbh I don't like the idea that kref_init already implicitly holds
> a reference - it even confused me initially. =

> Typical smartpointer usually increments the ref only when assignment
> is done.
> =

> =

> Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Ta. Pushed. Hopefully few rounds of ci will show whether this fixes
things. Though I've also seen some vma related use-after-frees in
the logs as well, so there may be further problems elsewhere...

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
