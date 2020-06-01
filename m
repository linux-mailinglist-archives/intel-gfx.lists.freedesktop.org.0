Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC1B21E9FBB
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 10:03:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55C3589DF7;
	Mon,  1 Jun 2020 08:03:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40CE789DB8
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2020 08:03:21 +0000 (UTC)
IronPort-SDR: VRFckdT/g+pLX8cp2RCYbqFcFp9heZ9blVs0roBqkIn4neYXkR4ACreD5jSM91F2VjtWvXwOtM
 tXapCMEwyQOA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2020 01:03:20 -0700
IronPort-SDR: UmFfCgAF/xC5DDgLIHLk9bP56+MyWmJoavgIHFC1KKRg1/ceD2ETv9VjNbJqjPBnlC1XVqbRGF
 3YpMYvFz/jwg==
X-IronPort-AV: E=Sophos;i="5.73,460,1583222400"; d="scan'208";a="257903453"
Received: from unknown (HELO intel.com) ([10.237.72.89])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2020 01:03:19 -0700
Date: Mon, 1 Jun 2020 10:59:29 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200601075929.GA2431@intel.com>
References: <20200527200245.13184-1-ville.syrjala@linux.intel.com>
 <20200528193852.GA24971@intel.com>
 <20200528195852.GA25073@intel.com>
 <20200529051143.GD6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200529051143.GD6112@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
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

On Fri, May 29, 2020 at 08:11:43AM +0300, Ville Syrj=E4l=E4 wrote:
> On Thu, May 28, 2020 at 10:58:52PM +0300, Lisovskiy, Stanislav wrote:
> > On Thu, May 28, 2020 at 10:38:52PM +0300, Lisovskiy, Stanislav wrote:
> > > On Wed, May 27, 2020 at 11:02:45PM +0300, Ville Syrjala wrote:
> > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > =

> > > > While the current locking/serialization of the global state
> > > > suffices for protecting the obj->state access and the actual
> > > > hardware reprogramming, we do have a problem with accessing
> > > > the old/new states during nonblocking commits.
> > > > =

> > > > The state computation and swap will be protected by the crtc
> > > > locks, but the commit_tails can finish out of order, thus also
> > > > causing the atomic states to be cleaned up out of order. This
> > > > would mean the commit that started first but finished last has
> > > > had its new state freed as the no-longer-needed old state by the
> > > > other commit.
> > > > =

> > > > To fix this let's just refcount the states. obj->state amounts
> > > > to one reference, and the intel_atomic_state holds extra references
> > > > to both its new and old global obj states.
> > > > =

> > > > Fixes: 0ef1905ecf2e ("drm/i915: Introduce better global state handl=
ing")
> > > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > ---
> > > >  .../gpu/drm/i915/display/intel_global_state.c | 45 +++++++++++++++=
+---
> > > >  .../gpu/drm/i915/display/intel_global_state.h |  3 ++
> > > >  2 files changed, 42 insertions(+), 6 deletions(-)
> > > > =

> > > > diff --git a/drivers/gpu/drm/i915/display/intel_global_state.c b/dr=
ivers/gpu/drm/i915/display/intel_global_state.c
> > > > index 212d4ee68205..7a19215ad844 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_global_state.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_global_state.c
> > > > @@ -10,6 +10,28 @@
> > > >  #include "intel_display_types.h"
> > > >  #include "intel_global_state.h"
> > > >  =

> > > > +static void __intel_atomic_global_state_free(struct kref *kref)
> > > > +{
> > > > +	struct intel_global_state *obj_state =3D
> > > > +		container_of(kref, struct intel_global_state, ref);
> > > > +	struct intel_global_obj *obj =3D obj_state->obj;
> > > > +
> > > > +	obj->funcs->atomic_destroy_state(obj, obj_state);
> > > > +}
> > > > +
> > > > +static void intel_atomic_global_state_put(struct intel_global_stat=
e *obj_state)
> > > > +{
> > > > +	kref_put(&obj_state->ref, __intel_atomic_global_state_free);
> > > > +}
> > > > +
> > > > +static struct intel_global_state *
> > > > +intel_atomic_global_state_get(struct intel_global_state *obj_state)
> > > > +{
> > > > +	kref_get(&obj_state->ref);
> > > > +
> > > > +	return obj_state;
> > > > +}
> > > > +
> > > >  void intel_atomic_global_obj_init(struct drm_i915_private *dev_pri=
v,
> > > >  				  struct intel_global_obj *obj,
> > > >  				  struct intel_global_state *state,
> > > > @@ -17,6 +39,10 @@ void intel_atomic_global_obj_init(struct drm_i91=
5_private *dev_priv,
> > > >  {
> > > >  	memset(obj, 0, sizeof(*obj));
> > > >  =

> > > > +	state->obj =3D obj;
> > > > +
> > > > +	kref_init(&state->ref);
> > > > +
> > > >  	obj->state =3D state;
> > > >  	obj->funcs =3D funcs;
> > > >  	list_add_tail(&obj->head, &dev_priv->global_obj_list);
> > > > @@ -28,7 +54,9 @@ void intel_atomic_global_obj_cleanup(struct drm_i=
915_private *dev_priv)
> > > >  =

> > > >  	list_for_each_entry_safe(obj, next, &dev_priv->global_obj_list, h=
ead) {
> > > >  		list_del(&obj->head);
> > > > -		obj->funcs->atomic_destroy_state(obj, obj->state);
> > > > +
> > > > +		drm_WARN_ON(&dev_priv->drm, kref_read(&obj->state->ref) !=3D 1);
> > > > +		intel_atomic_global_state_put(obj->state);
> > > >  	}
> > > >  }
> > > >  =

> > > > @@ -97,10 +125,14 @@ intel_atomic_get_global_obj_state(struct intel=
_atomic_state *state,
> > > >  	if (!obj_state)
> > > >  		return ERR_PTR(-ENOMEM);
> > > >  =

> > > > +	obj_state->obj =3D obj;
> > > >  	obj_state->changed =3D false;
> > > >  =

> > > > +	kref_init(&obj_state->ref);
> > > > +
> > > >  	state->global_objs[index].state =3D obj_state;
> > > > -	state->global_objs[index].old_state =3D obj->state;
> > > > +	state->global_objs[index].old_state =3D
> > > > +		intel_atomic_global_state_get(obj->state);
> > > >  	state->global_objs[index].new_state =3D obj_state;
> > > >  	state->global_objs[index].ptr =3D obj;
> > > >  	obj_state->state =3D state;
> > > > @@ -163,7 +195,9 @@ void intel_atomic_swap_global_state(struct inte=
l_atomic_state *state)
> > > >  		new_obj_state->state =3D NULL;
> > > >  =

> > > >  		state->global_objs[i].state =3D old_obj_state;
> > > > -		obj->state =3D new_obj_state;
> > > > +
> > > > +		intel_atomic_global_state_put(obj->state);
> > > > +		obj->state =3D intel_atomic_global_state_get(new_obj_state);
> > > >  	}
> > > >  }
> > > >  =

> > > > @@ -172,10 +206,9 @@ void intel_atomic_clear_global_state(struct in=
tel_atomic_state *state)
> > > >  	int i;
> > > >  =

> > > >  	for (i =3D 0; i < state->num_global_objs; i++) {
> > > > -		struct intel_global_obj *obj =3D state->global_objs[i].ptr;
> > > > +		intel_atomic_global_state_put(state->global_objs[i].old_state);
> > > > +		intel_atomic_global_state_put(state->global_objs[i].new_state);
> > > =

> > > Shouldn't we clean old_state only? =

> > > =

> > > As I understand in absence of any transaction you now have a pool of
> > > global_obj each has a state with single kref taken.
> > > =

> > > So when we are going to get a new state, we do +1 kref to old_state(w=
hich is current global obj->state)
> > > in order to prevent it being cleared by competing commit.
> > > However the new state doesn't have any kref taken by that moment.
> > > Then you swap do -1 kref for the old state and do +1 kref for new sta=
te, =

> > > which means that when you -1 kref again for old state in atomic_clear=
 also, =

> > > it will be destroyed, however regarding the new state, as I understand
> > > it still has only single kref grabbed when it was swapped, =

> > > so isn't it going to be now removed? unless we are lucky and somebody
> > > haven't grabbed it already as an old_state in the next commit?
> > > =

> > > Stan
> > =

> > Ah actually I got it - forgot that kref is init as 1. =

> > But then you probably don't even need to increment kref for new state =

> > when swapping.
> > Before assigning new obj->state you release one kref in swap(which make=
s sense)
> > Then you just do only intel_atomic_global_state_put(old_state) in atomi=
c_clear
> > and then no need in doing intel_atomic_global_state_get(new_state) duri=
ng
> > swap. =

> > I.e we always call intel_atomic_global_state_get/put only regarding "ol=
d" =

> > obj->state and each new_state will be disposed when it becomes old_stat=
e.
> =

> =

> IMO the approach of handing off references is just hard to follow. =

> Better to just get/put explicitly whenever you assign a pointer.
> I already dislike handing off the original kref_init() reference,
> and almost added a get+put there too. Maybe I really should do that...

Agree, tbh I don't like the idea that kref_init already implicitly holds
a reference - it even confused me initially. =

Typical smartpointer usually increments the ref only when assignment
is done.


Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> =

> > =

> > Stan
> > =

> > > >  =

> > > > -		obj->funcs->atomic_destroy_state(obj,
> > > > -						 state->global_objs[i].state);
> > > >  		state->global_objs[i].ptr =3D NULL;
> > > >  		state->global_objs[i].state =3D NULL;
> > > >  		state->global_objs[i].old_state =3D NULL;
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_global_state.h b/dr=
ivers/gpu/drm/i915/display/intel_global_state.h
> > > > index e6163a469029..1f16fa3073c9 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_global_state.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_global_state.h
> > > > @@ -6,6 +6,7 @@
> > > >  #ifndef __INTEL_GLOBAL_STATE_H__
> > > >  #define __INTEL_GLOBAL_STATE_H__
> > > >  =

> > > > +#include <linux/kref.h>
> > > >  #include <linux/list.h>
> > > >  =

> > > >  struct drm_i915_private;
> > > > @@ -54,7 +55,9 @@ struct intel_global_obj {
> > > >  		for_each_if(obj)
> > > >  =

> > > >  struct intel_global_state {
> > > > +	struct intel_global_obj *obj;
> > > >  	struct intel_atomic_state *state;
> > > > +	struct kref ref;
> > > >  	bool changed;
> > > >  };
> > > >  =

> > > > -- =

> > > > 2.26.2
> > > > =

> > > > _______________________________________________
> > > > Intel-gfx mailing list
> > > > Intel-gfx@lists.freedesktop.org
> > > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
