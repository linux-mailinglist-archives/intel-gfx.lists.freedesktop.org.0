Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC3919A6B2
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 09:56:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C68F689DB2;
	Wed,  1 Apr 2020 07:56:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD7AA89D66
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2020 07:56:19 +0000 (UTC)
IronPort-SDR: 7yoVF28XxDX6c5jUlOAPyWt9cf7X7uSOcGMUDSb0Q19zgoWQvfqbtl7iNLQLPlzYoUQ3Aez9Wy
 kaxvQvVIijbA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 00:56:19 -0700
IronPort-SDR: MrVr/4n3qeGWAHHKUo1N/4FlWvowq1gkooC2g5ghCfLeVMcTpw53MwEUjnditKKN7MB1+w6hqv
 NX+WjqO9XVgw==
X-IronPort-AV: E=Sophos;i="5.72,330,1580803200"; d="scan'208";a="395864331"
Received: from unknown (HELO intel.com) ([10.237.72.89])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 00:56:18 -0700
Date: Wed, 1 Apr 2020 10:52:32 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200401075232.GA1131@intel.com>
References: <20200225171125.28885-1-ville.syrjala@linux.intel.com>
 <20200225171125.28885-6-ville.syrjala@linux.intel.com>
 <587c8ad3b5fc69b2ec0d4fcae302d4e8c959ba82.camel@intel.com>
 <20200302145037.GK13686@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302145037.GK13686@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 05/20] drm/i915: Make
 skl_compute_dbuf_slices() behave consistently for all platforms
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 02, 2020 at 04:50:37PM +0200, Ville Syrj=E4l=E4 wrote:
> On Tue, Feb 25, 2020 at 05:30:57PM +0000, Lisovskiy, Stanislav wrote:
> > On Tue, 2020-02-25 at 19:11 +0200, Ville Syrjala wrote:
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > =

> > > Currently skl_compute_dbuf_slices() returns 0 for any inactive pipe
> > > on
> > > icl+, but returns BIT(S1) on pre-icl for any pipe (whether it's
> > > active or
> > > not). Let's make the behaviour consistent and always return 0 for any
> > > inactive pipe.
> > > =

> > > Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/intel_pm.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/intel_pm.c
> > > b/drivers/gpu/drm/i915/intel_pm.c
> > > index a2e78969c0df..640f4c4fd508 100644
> > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > @@ -4408,7 +4408,7 @@ static u8 skl_compute_dbuf_slices(const struct
> > > intel_crtc_state *crtc_state,
> > >  	 * For anything else just return one slice yet.
> > >  	 * Should be extended for other platforms.
> > >  	 */
> > > -	return BIT(DBUF_S1);
> > > +	return active_pipes & BIT(pipe) ? BIT(DBUF_S1) : 0;
> > =

> > I think the initial idea was this won't be even called if there =

> > are no active pipes at all - skl_ddb_get_pipe_allocation_limits would
> > bail out immediately. If there were some active pipes - then we will
> > have to use slice S1 anyway - because there were simply no other slices
> > available. If some pipes were inactive - they are currently skipped by
> > !crtc_state->hw.active check - so I would just keep it simple and don't
> > call this function for non-active pipes at all.
> =

> That's just going to make the caller more messy by forcing it to
> check for active_pipes 0 vs. not. Ie. we'd be splitting the
> responsibility of computing the dbuf slices for this pipe between
> skl_compute_dbuf_slices() and its caller. Not a good idea IMO.

Let's ramp it up. As I understood from your comments we still need dbuf_sta=
te.
I would anyway add another table for handling this in some unified manner a=
t least,
however don't want to spend another couple of month discussing that :)

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>


> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
