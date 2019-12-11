Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E313111BFBB
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 23:22:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 974896E857;
	Wed, 11 Dec 2019 22:22:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 687356E857
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 22:22:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 14:22:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,303,1571727600"; d="scan'208";a="388091416"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.252.9.125])
 by orsmga005.jf.intel.com with ESMTP; 11 Dec 2019 14:22:31 -0800
MIME-Version: 1.0
To: Lucas De Marchi <lucas.demarchi@intel.com>
From: Chris Wilson <chris.p.wilson@intel.com>
In-Reply-To: <20191211222013.7ih3g34qqxr35qcg@ldmartin-desk1>
References: <20191211160724.26467-1-venkata.s.dhanalakota@intel.com>
 <20191211160724.26467-2-venkata.s.dhanalakota@intel.com>
 <157608104352.27099.375715424760562558@skylake-alporthouse-com>
 <157608119873.27099.4590993229485525575@skylake-alporthouse-com>
 <20191211222013.7ih3g34qqxr35qcg@ldmartin-desk1>
Message-ID: <157610294963.27099.3258025461579867777@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 11 Dec 2019 22:22:29 +0000
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Make warned variable private
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Lucas De Marchi (2019-12-11 22:20:13)
> On Wed, Dec 11, 2019 at 04:19:58PM +0000, Chris Wilson wrote:
> >Quoting Chris Wilson (2019-12-11 16:17:23)
> >> Quoting Venkata Sandeep Dhanalakota (2019-12-11 16:07:24)
> >> > Make each instance to report the hang only once.
> >> >
> >> > Cc: Sudeep Dutt <sudeep.dutt@intel.com>
> >> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> >> > Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> >> > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> >> > Cc: Jani Nikula <jani.nikula@intel.com>
> >> > Signed-off-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
> >>
> >> I still don't think so, since the we only want to pester the _user_ once
> >> to file a bug, and that is irrespective of the device.
> >
> >Or to put it another way, the dmesg stream is global and this is a flag
> >around that stream.
> 
> maybe we could use WARN_ONCE()?

It's not a warning and doesn't justify being one.
-Chris
---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
