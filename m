Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B0642D631
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Oct 2021 11:36:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 045976EC4E;
	Thu, 14 Oct 2021 09:36:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 936EC6E14C;
 Thu, 14 Oct 2021 09:36:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="226411705"
X-IronPort-AV: E=Sophos;i="5.85,372,1624345200"; d="scan'208";a="226411705"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 02:36:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,372,1624345200"; d="scan'208";a="491877385"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 14 Oct 2021 02:36:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 14 Oct 2021 12:36:47 +0300
Date: Thu, 14 Oct 2021 12:36:47 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Dave Airlie <airlied@redhat.com>
Message-ID: <YWf6L+XJ0B9BZtCX@intel.com>
References: <20211014090941.12159-1-ville.syrjala@linux.intel.com>
 <20211014090941.12159-5-ville.syrjala@linux.intel.com>
 <87o87svuao.fsf@intel.com> <YWf4ll+Qr4frshuk@intel.com>
 <CO6PR11MB5636B8A4C7A5E0E632C55A3BDEB89@CO6PR11MB5636.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CO6PR11MB5636B8A4C7A5E0E632C55A3BDEB89@CO6PR11MB5636.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Fix oops on platforms w/o hpd
 support
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

On Thu, Oct 14, 2021 at 09:31:40AM +0000, Sarvela, Tomi P wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > On Thu, Oct 14, 2021 at 12:18:23PM +0300, Jani Nikula wrote:
> > > On Thu, 14 Oct 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > >
> > > > We don't have hpd support on i8xx/i915 which means
> > hotplug_funcs==NULL.
> > > > Let's not oops when loading the driver on one those machines.
> > >
> > > D'oh!
> > >
> > > Lemme guess, CI just casually dropped the machines from the results
> > > because they didn't boot?
> > 
> > Dunno where the gdg has gone actually. Tomi?
> 
> Both GDGs are dead to old age (PSU / power delivery).

We don't have spare PSUs to throw at them? Or are the boards also
semi-dead due to rotted caps etc.?

-- 
Ville Syrjälä
Intel
