Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03CF3314C11
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Feb 2021 10:50:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5012F6EAB5;
	Tue,  9 Feb 2021 09:50:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6854F6EAB5
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Feb 2021 09:50:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23819563-1500050 for multiple; Tue, 09 Feb 2021 09:50:27 +0000
MIME-Version: 1.0
In-Reply-To: <161286252973.7943.3574089157194446990@build.alporthouse.com>
References: <20210209021918.16234-1-ville.syrjala@linux.intel.com>
 <161286252973.7943.3574089157194446990@build.alporthouse.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 09 Feb 2021 09:50:28 +0000
Message-ID: <161286422853.7943.29461918361584777@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Disallow plane x+w>stride on
 ilk+ with X-tiling
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2021-02-09 09:22:09)
> Quoting Ville Syrjala (2021-02-09 02:19:16)
> > +               while ((src_x + src_w) * cpp > plane_state->color_plane[0].stride) {
> > +                       if (offset == 0) {
> > +                               drm_dbg_kms(&dev_priv->drm,
> > +                                           "Unable to find suitable display surface offset due to X-tiling\n");
> > +                               return -EINVAL;
> > +                       }
> > +
> > +                       offset = intel_plane_adjust_aligned_offset(&src_x, &src_y, plane_state, 0,
> > +                                                                  offset, offset - alignment);

> The reason for choosing a nearby tile offset was to reduce src_x/src_y
> to fit within the crtc limits. While remapping could be used to solve
> that, the aligned_offset computation allows reuse of a single view.

Should there not be a second constraint on the loop to make sure src_x +
src_w is less than 4095/8191/etc?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
