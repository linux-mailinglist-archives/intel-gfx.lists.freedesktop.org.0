Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id O8aWF2yaIWr3JgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 17:31:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F14CE641758
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 17:31:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=UtgqUF5J;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DAFD10E357;
	Thu,  4 Jun 2026 15:31:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3E2310E357;
 Thu,  4 Jun 2026 15:31:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780587113; x=1812123113;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=9bIzOcVs8aJNMGupdF4803/aN3bnVTOvu4w+sQwJinQ=;
 b=UtgqUF5J9UoE8Nev2vQshbUmbQVYBYW3hwgnVHpBohaeeoI9Jh7z+6SP
 jvQH9mK4DHYWwR3uhSMbEB/jjGDO7qJQKlYUTTHVwlopDt1OYXI6iAurr
 ST8y+wtSPpFWm1hvmxnn+9gbXzRD5frHokiTLST8MG40WaGXzuvNnfauG
 08xX5az5qsgsxQpH9azwNmAg5VIMtsZsYma10XYW8sWAZZ/CQAPSLS/zC
 /v0eoIwtihzlDJNLPiTeteTlO4A5r+c5Fu7FSu8ezuya1x43eP/mhwM0g
 Ormsj+XJ5iTBaixittF7j17FSyXMizbeE3hUF5Vfqehyi0AVMBH7nk+BH g==;
X-CSE-ConnectionGUID: GeatzTaMRNuXPWDQ4XjnmQ==
X-CSE-MsgGUID: khb5MCQwQqSBVnlS2ScH6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="80555985"
X-IronPort-AV: E=Sophos;i="6.24,187,1774335600"; d="scan'208";a="80555985"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2026 08:31:52 -0700
X-CSE-ConnectionGUID: U+74Pa/VRQGGB3/jiveeRQ==
X-CSE-MsgGUID: BIvrnh5CSIiW7tuIEpEGDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,187,1774335600"; d="scan'208";a="244430896"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.98])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2026 08:31:51 -0700
Date: Thu, 4 Jun 2026 18:31:47 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 10/11] drm/i915/bw: Use icl_qgv_bw()
Message-ID: <aiGaYxgQED_fS6uV@intel.com>
References: <20260528103458.18069-1-ville.syrjala@linux.intel.com>
 <20260528103458.18069-11-ville.syrjala@linux.intel.com>
 <8c3c70565faba998122b8092b3f3d3783328e53f.camel@intel.com>
 <aiGV4NpQtyhCN4ct@intel.com>
 <e8a8f7d3773212fea0af63c878d856c08eb2ad51.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e8a8f7d3773212fea0af63c878d856c08eb2ad51.camel@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.52 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.83)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:from_mime,intel.com:mid,intel.com:dkim,intel.com:email,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F14CE641758

On Thu, Jun 04, 2026 at 03:22:57PM +0000, Govindapillai, Vinod wrote:
> On Thu, 2026-06-04 at 18:12 +0300, Ville Syrjälä wrote:
> > On Thu, Jun 04, 2026 at 02:59:09PM +0000, Govindapillai, Vinod wrote:
> > > On Thu, 2026-05-28 at 13:34 +0300, Ville Syrjala wrote:
> > > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > 
> > > > Replace a hand rolled copy of icl_qgv_bw() with the real thing.
> > > > 
> > > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_bw.c | 10 ++--------
> > > >  1 file changed, 2 insertions(+), 8 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c
> > > > b/drivers/gpu/drm/i915/display/intel_bw.c
> > > > index f4121223a58b..423cae2ff208 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_bw.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> > > > @@ -1106,14 +1106,8 @@ static int mtl_find_qgv_points(struct
> > > > intel_display *display,
> > > >  	 * offered per plane group
> > > >  	 */
> > > >  	for (i = 0; i < num_qgv_points; i++) {
> > > > -		unsigned int bw_index =
> > > > -			tgl_max_bw_index(display,
> > > > num_active_planes,
> > > > i);
> > > > -		unsigned int max_data_rate;
> > > > -
> > > > -		if (bw_index >= ARRAY_SIZE(display->bw.max))
> > > > -			continue;
> > > > -
> > > > -		max_data_rate = display-
> > > > > bw.max[bw_index].deratedbw[i];
> > > > +		unsigned int max_data_rate =
> > > > +			icl_qgv_bw(display, num_active_planes,
> > > > i);
> > > >  
> > > >  		if (max_data_rate < data_rate)
> > > >  			continue;
> > > 
> > > Wonder if this could be squashed to patch 3 in the series for
> > > completeness.
> > 
> > This has nothing to do with that other patch.
> 
> Between patch 3 and Patch 10, because tgl_max_bw_index() returns
> UINT_MAX in patch 3, mtl_find_qgv_points() will never find a qgv point
> (in recent platforms num_planes is 0 for all the plane groups..). The
> functionality breaks between patch 3 and patch 10. Thats what I meant.

tgl_max_bw_index() will never return UINT_MAX. The loop will always
terminate at i==0 (if not before) because max[0].num_planes=<big number>.

-- 
Ville Syrjälä
Intel
