Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 670C1175D8B
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 15:50:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 849E56E2E3;
	Mon,  2 Mar 2020 14:50:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4712A6E2E3
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 14:50:41 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Mar 2020 06:50:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,507,1574150400"; d="scan'208";a="233177949"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 02 Mar 2020 06:50:38 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 02 Mar 2020 16:50:37 +0200
Date: Mon, 2 Mar 2020 16:50:37 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <20200302145037.GK13686@intel.com>
References: <20200225171125.28885-1-ville.syrjala@linux.intel.com>
 <20200225171125.28885-6-ville.syrjala@linux.intel.com>
 <587c8ad3b5fc69b2ec0d4fcae302d4e8c959ba82.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <587c8ad3b5fc69b2ec0d4fcae302d4e8c959ba82.camel@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
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

On Tue, Feb 25, 2020 at 05:30:57PM +0000, Lisovskiy, Stanislav wrote:
> On Tue, 2020-02-25 at 19:11 +0200, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > Currently skl_compute_dbuf_slices() returns 0 for any inactive pipe
> > on
> > icl+, but returns BIT(S1) on pre-icl for any pipe (whether it's
> > active or
> > not). Let's make the behaviour consistent and always return 0 for any
> > inactive pipe.
> > =

> > Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/intel_pm.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/intel_pm.c
> > b/drivers/gpu/drm/i915/intel_pm.c
> > index a2e78969c0df..640f4c4fd508 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -4408,7 +4408,7 @@ static u8 skl_compute_dbuf_slices(const struct
> > intel_crtc_state *crtc_state,
> >  	 * For anything else just return one slice yet.
> >  	 * Should be extended for other platforms.
> >  	 */
> > -	return BIT(DBUF_S1);
> > +	return active_pipes & BIT(pipe) ? BIT(DBUF_S1) : 0;
> =

> I think the initial idea was this won't be even called if there =

> are no active pipes at all - skl_ddb_get_pipe_allocation_limits would
> bail out immediately. If there were some active pipes - then we will
> have to use slice S1 anyway - because there were simply no other slices
> available. If some pipes were inactive - they are currently skipped by
> !crtc_state->hw.active check - so I would just keep it simple and don't
> call this function for non-active pipes at all.

That's just going to make the caller more messy by forcing it to
check for active_pipes 0 vs. not. Ie. we'd be splitting the
responsibility of computing the dbuf slices for this pipe between
skl_compute_dbuf_slices() and its caller. Not a good idea IMO.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
